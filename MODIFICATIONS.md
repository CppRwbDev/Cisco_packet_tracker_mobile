# Cisco Packet Tracer Mobile — qilingan o'zgarishlar (modifikatsiyalar)

- **Paket:** `com.netacad.PacketTracerM` (Packet Tracer Mobile 3.0)
- **Baza:** o'zgartirilmagan original APK `Packet Tracer Mobile_signed.apk` (AOSP **testkey** bilan imzolangan)
- **Oxirgi build:** `PacketTracer_v11.apk` (imzo: AOSP testkey, SHA-256 `a40da80a…71bf5dc`)
- **Sana:** 2026-10-29

Ushbu hujjat loyihada qilingan barcha o'zgarishlarni, ularning sabablarini, aniq fayl/patch nuqtalarini va build/imzolash tartibini tavsiflaydi.

---

## 0. Qisqa xulosa

| # | O'zgarish | Holat |
|---|---|---|
| 1 | Startup'dagi NetAcad "Log In / Guest Login" oynasini olib tashlash | ✅ |
| 2 | Guest rejimidagi 3 ta save limitini olib tashlash | ✅ |
| 3 | Brendli yuklash ekrani (`RWB RECREATED`, progress bar 0→100%) | ✅ |
| 4 | Radial (contextual) menyuni barmoq nuqtasida chiqarish + ekranga sig'dirish | ✅ |
| 5 | Radial menyu o'lchamini sozlash (60%–140%, jonli preview + slider) | ✅ |
| 6 | Diagnostika overlay (`DIAG` tugmasi, sukut bo'yicha yopiq) | ✅ |
| 7 | Physical view: pastki modul ro'yxati va tavsif bloki moslashuvi (v12) | ✅ |

---

## 1. Startup NetAcad login oynasini olib tashlash

### Sabab
Ilova ochilganda `LoginDialogNetspace` (WebView: `https://www.netacad.com/ptlogin/`, 15 s countdown) avtomatik ochilardi.

### Trigger (topilgan joy)
`PacketTracerFrontEndBridge$1.smali` → `onPageFinished` ichida:

```
prefs.getPreferences(0).getBoolean("login", false) == false
    && access$800(this$0) == true      // enableNetSpaceLogin
    => LoginDialogNetspace.Login()
```

### Patch
`smali/org/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1.smali`:

```diff
- if-eqz v19, :cond_21a
+ goto :cond_21a
```

Ya'ni `Login()` chaqiruvi butunlay olib tashlandi (boshqa hech narsa o'zgarmadi).

### Qo'shimcha (JS himoya)
`assets/HtmlGui/scripts/Utils.js` oxiriga override qo'shildi — Cloud/Share oqimlaridagi `showLoginNetspaceMsg()` endi login oynasini ochmaydi, faqat callback'ni bajaradi:

```js
showLoginNetspaceMsg = function(a){ if(a){ try{ a(); }catch(e){} } };
```

> `LoginDialogNetspace` klassi va uning smali'si o'chirilmagan — faqat avtomatik chaqiruv olib tashlangan.

---

## 2. Guest save limitini olib tashlash

- Limit **umrbod 3 ta** (kunlik emas), faqat online + login qilinmagan holatda ishlaydi.
- Hisob: SharedPreferences `saveCount`, chegara `saveLimit = 3` (`FileOptionsMenu.js`).
- Limit oshganda "Guest Save" modali chiqardi.

### Patch — `assets/HtmlGui/app/view/fileHandling/FileOptionsMenu.js`

```js
onSaveAs:function(){ this.destroy(); this.showFileSaveAsDialog() },
onSaveNetwork:function(){ this.saveNetwork(); this.destroy() }
```

Limit tekshiruvi va "Guest Save" modali bu ikki yo'ldan olib tashlandi. `saveLimitMsg()` funksiyasi (matn) o'z holida qoldirilgan, lekin ishlatilmaydi.

---

## 3. Brendli yuklash ekrani (splash)

`assets/HtmlGui/app.html` ga qo'shildi:

- Qora fon (`#000`), yashil (`#39ff14`) uslub.
- Sarlavha: **`RWB RECREATED`**.
- Past-o'ng burchakda: **`by Saidjon`**.
- Progress bar + foiz (`0% → 100%`), `DUR = 10000` ms, `requestAnimationFrame`; ekranga bosib o'tkazib yuborish mumkin.
- `z-index: 2147483600`.

### Diagnostika overlay
- `#ptDiagToggle` — yuqori-o'ng burchakdagi `DIAG` tugmasi (`z-index: 2147483647`).
- `#ptDiagBox` / `#ptDiagErr` — ochiladigan ma'lumot paneli; **sukut bo'yicha yopiq** (`class="ptDiagHide"`).
- Ko'rsatadi: ekran/inner o'lchamlari, DPR, menyu radiusi/markazi/konteyner koordinatalari, oxirgi tap nuqtasi, JS xatolari.

> Olib tashlash uchun `app.html` dagi `RWB` va `PT DIAG` bloklarini o'chirish kifoya.

---

## 4. Radial menyuni barmoq nuqtasida chiqarish

Commit: `e0efee9 — Fix radial device menu: follow long-press point, clamp to screen, accept taps`

- `BaseButtonCircle.js`:
  - `storeMenuScreenPos()` orqali menyu markazi bosilgan nuqtaga bog'lanadi.
  - `getScreenCenter()` da `getMenuExtent()` yordamida markaz ekran chegaralariga clamp qilinadi.
  - `getMenuExtent()` = radius + tugma yarmi.
- `app.html`:
  - `#drawAreaContainerID` va uning bolalariga `pointer-events: none !important` — chizma qatlami tugmalar bosilishini to'smaydi.
  - Tugmalar `touchend`/`touchstart` trigger bilan ishlaydi.

---

## 5. Radial menyu o'lchamini sozlash (60%–140%)

### 5.1 Muammo va root-cause

Dastlabki urinishda faqat `getCenter()` masshtablandi — natija bo'lmadi. Sabab:

- Barcha amaliy menyu klasslari `BaseLayeredButtonCircle` dan meros oladi.
- Uning konstruktori `this.useSecondary()` chaqiradi → `m_createSecondaryLayer = true` va `m_createPrimaryLayer = true`.
- `createButtonContainer()` da `m_createPrimaryLayer` yo'li ishlaydi va radius **`m_defaultOuter`** dan olinadi:
  - layer1 radius = `m_defaultOuter * 0.3`
  - layer2 radius = `m_defaultOuter * 0.5`
  - `setOuterSize(500)` (Cable uchun `520`), ya'ni **qat'iy piksel**.
- Bundan tashqari tugma o'lchami faqat **CSS** bilan beriladi (`JS` `getButtonSize()` faqat geometriya uchun).

### 5.2 Kalit va sozlama
`AppSettings` faqat `boolean/string/object` saqlaydi → qiymat **string**:

```
key:   contextMenuScale
type:  string
def:   "1.00"        // 60% = "0.60" … 140% = "1.40"
```

`assets/HtmlGui/app/store/InitialSettings.js`:

```js
{key:"contextMenuScale", value:"1.00", dataType:"string"}
```

### 5.3 `BaseButtonCircle.js`

| Funksiya | O'zgarish |
|---|---|
| `userMenuScale()` | yangi; `AppSettings.getString("contextMenuScale","1.00")`, clamp `[0.4, 1.4]`, default `1` |
| `getOuterSize()` | yangi; `m_defaultOuter * userMenuScale()`, `cap = getSmallestDim()*1.96` |
| `getCenter(b)` | `r = getSmallestDim()*b*userMenuScale()`, `cap = getSmallestDim()*0.98` |
| `getMenuExtent()` | `userMenuScale()` qo'llanadi; primary layer uchun `max(r, getOuterSize()/2)` |
| `getButtonSize(a)` | `… * userMenuScale()` (geometriya tugma CSS bilan mos bo'lishi uchun) |
| `getRadNeededForButtonCount()` | `getCenter(1)` o'rniga **masshtabsiz** `getSmallestDim()` (ikki marta masshtablashning oldini olish) |
| `createButtonContainer()` | `f = getOuterSize()`, `d = f/5*3`; boshida `ptApplyMenuScale(...)` chaqiriladi |

Natija: layer1 = `getOuterSize()*0.3`, layer2 = `getOuterSize()*0.5`, layer0 = layer1/3.

### 5.4 CSS masshtablash (muhim)

Tugma CSS o'lchamlari `app.html` dagi dinamik `<style id="ptMenuScaleStyle">` orqali beriladi
(`window.ptApplyMenuScale(v)`):

| Klass | Baza | Telefonda (`max-width:17cm`) |
|---|---|---|
| `.basic_contextual_button` / `:active` | 70px | 42px |
| `.basic_contextual_button_text_under` | 55px | 55px |
| `.workspace_button_inner` | 60px | 36px |
| `.device_button_inner` | 55px | 33px |
| `.basic_contextual_button_panel` | 90px (width) | 90px |

Barchasi `baza × media(0.6/1) × scale` ko'rinishida `!important` bilan yoziladi.
`ptApplyMenuScale()` chaqiriladi:
1. startup'da (AppSettings tayyor bo'lishini poll qilib),
2. har bir `createButtonContainer()` boshida (CSS va geometriya doim mos bo'lishi uchun).

### 5.5 Options UI

- `ProjectOptionsDialog_UI.js`: `selectfield` → **button**:
  `Circle Menu Size: N%` (matn joriy qiymatdan hisoblanadi).
- `ProjectOptionsDialog.js`: tugma bosilganda Options yopiladi va
  `ptOpenCircleMenuSizeDialog(onDone)` ochiladi; `Done` dan keyin Options qayta ochiladi.

### 5.6 Alohida oyna + jonli preview (`app.html`)

- Pastda panel: slider (`Ext.field.Slider`, 60–140, step 5), foiz yozuvi, `Reset 100%`, `Done`.
- Ekran markazida **haqiqiy radial menyu preview**:
  - `HtmlGui.view.contextualMenus.PtPreviewCircle` (lazy `Ext.define`) — `BaseLayeredButtonCircle` dan meros;
  - `m_addToWorkspace:false`, `m_addToMenuManager:false`, `m_allowCreateDrawArea:false`;
  - unikal layer ID'lar (`ptPvLayer0/1/2`), tap-close handler'lari o'chirilgan;
  - `DeviceContextButtonStore` dan 6 ta ikonka (zaxira: qattiq yozilgan klasslar);
  - layer2 halqasi ham ko'rsatiladi (umumiy o'lchamni baholash uchun).
- Slider `drag` → foiz + CSS jonli; `change` (qo'yib yuborish) → `AppSettings.setString` + preview qayta qurish.
- Preview konteyneri `pointer-events:none` va past `z-index` — sozlash oynasi bosishlarini to'smaydi.
- Panel `z-index: 2147483000`; preview qayta qurilgach panel DOM'da qayta oldinga chiqariladi.

### 5.7 Yo'l-yo'lakay tuzatilgan xatolar

1. **Elementlar masshtablanmasligi** — tugma CSS'i masshtablanmagan edi, 60% da tugmalar ustma-ust tushardi → CSS override qo'shildi.
2. **`Done` ishlamasligi** — slider o'zgargach qayta qurilgan preview konteyneri panel ustiga chiqib bosishlarni yutardi → `pointer-events:none` + panelni oldinga chiqarish.
3. **Qiymat o'zgarmasligi** — Sencha Touch slider `change` eventi imzosi
   `(field, slider, thumb, newValue, oldValue)`; 2-argument slider obyekti edi → `NaN` → doim 100%.
   Endi qiymat `field.getValue()` dan olinadi (zaxira: argumentlar orasidan raqam qidirish).

---

## 6. Physical view: pastki modul paneli va tavsif bloki (v12)

### Muammo
PC0 kabi qurilmalarning **Physical** ko'rinishida pastki modul ro'yxati
(`Linksys-WMP300N`, `PT-HOST-NM-1CE`, ...) ekranning pastki chetidan chiqib ketardi
va tavsif (matn) bloki bilan ustma-ust tushardi. Sabab — `PhysicalView.loadModuleScroller()`
dagi qat'iy piksel hisoblari:

- `modulePanel` balandligi `80*(c-0.05)` → telefonda **36px**, ichidagi dataview esa
  qat'iy **85px** → ro'yxat panel ostidan 49px chiqib ketadi.
- `modulePanel.top = viewRect.bottom - 25 - actionBar` → panelning pastki qismi
  ekran/action bar ostida qoladi.
- `moduleInfo` balandligi **35px**, matn uzun bo'lsa kesiladi va panelga tegib turadi.
- Plitka (`itemTpl`) matni o'ralmasdi (`white-space` yo'q), uzun modul nomlari kesilardi.

### Yechim (`app/view/physical/PhysicalView.js`)

- **Ekran o'lchamiga bog'liq hisoblash:** `vh = this.element.getHeight()`,
  `vw = this.element.getWidth()`; `phone = max-width:17cm`.
- **Pastki zona (modullar):** panel pastdan `actionBar` balandligi ustiga mahkamlanadi
  (`panelTop = vh - barH - panelH`), `panelH = tileH + 8` (telefonda ~65px,
  kattaroq ekranda ~100px). Dataview `flex:1` va `height:panelH` — panel bilan bir xil,
  ortiqcha chiqish yo'q. Gorizontal skroll saqlanadi.
- **O'rta zona (tavsif):** `moduleInfo` panel ustida (`panelTop - infoH - 4`),
  balandligi `min(120, vh*0.24)` (kamida 0), vertikal skroll (`scrollable:true`),
  `font-size` 11/13px, `overflow-wrap` — matn kesilmaydi va panelga tushmaydi.
- **Plitkalar:** qat'iy `tileW` (96/120px) va `tileH`, `box-sizing:border-box`,
  nom 2 qatorgacha o'raladi (`word-break:break-word`), rasm balandligi ekranga
  qarab 25/50px.
- **Xavfsizlik:** `selectModuleInToolbar` / `deselectModuleSelection` null-guard va
  scroll xatolariga chidamli qilindi.

Natijada ekran 3 zonaga bo'linadi: yuqorida qurilma (scene), o'rtada tavsif,
pastda action bar ustida modullar paneli.



### 7.1 Dex patch (startup login)

Repo'dagi `smali/` daraxti to'liq emas (6474 klass; original dex'da 6864).
Shuning uchun **original `classes.dex` dan yangidan disassemble** qilinadi:

```bash
java -jar baksmali.jar disassemble classes.dex -o smali_orig
# patch: PacketTracerFrontEndBridge$1.smali
java -jar smali.jar assemble smali_orig -o classes_patched.dex
```

Tekshiruv (round-trip): `string_ids` 54480 vs 54482 (2 ta ishlatilmagan satr),
qolgan barcha sanoqlar mos; dex versiyasi `035`; hajm `7767108` bayt.

### 7.2 APK yig'ish

Baza APK nusxalanadi va quyidagi fayllar almashtiriladi
(`META-INF/*.SF|*.RSA|*.DSA|*.EC`, `MANIFEST.MF` olib tashlanadi):

```
assets/HtmlGui/app.html
assets/HtmlGui/scripts/Utils.js
assets/HtmlGui/app/view/fileHandling/FileOptionsMenu.js
assets/HtmlGui/app/view/contextualMenus/BaseButtonCircle.js
assets/HtmlGui/app/view/options/ProjectOptionsDialog_UI.js
assets/HtmlGui/app/view/options/ProjectOptionsDialog.js
assets/HtmlGui/app/store/InitialSettings.js
classes.dex                      ← classes_patched.dex
```

### 7.3 Imzolash

Original APK AOSP **testkey** bilan imzolangan (`SHA-256 a40da80a…`), shu sababli
yangilanish eski o'rnatilgan ilova ustiga muammosiz o'rnatiladi.

```bash
java -jar uber.jar --apks final_unsigned.apk \
  --ks ~/pt-testkey.jks --ksAlias pt \
  --ksPass pt123456 --ksKeyPass pt123456 \
  --out out --skipZipAlign
```

> `--skipZipAlign` shart: `zipalign` Android/Termux muhitida ishlamaydi.
> Imzo tekshiriladi: `v1, v2, v3` — `SHA-256 a40da80a…` (testkey).

---

## 8. Build tarixi (APK'lar)

APK'lar repoga qo'shilmaydi (`.gitignore`: `*.apk`, `*.apks`, `*.idsig`).
Ular `/storage/emulated/0/Download/` da saqlanadi.

| Versiya | Fayl | Tarkib |
|---|---|---|
| v3 | `PacketTracer_v3_NoSaveLimit.apk` | faqat save limit olib tashlangan |
| v4 | `PacketTracer_v4_RWB_Branded.apk` | brend (`RECRATED` xatosi bilan) |
| v5 | `PacketTracer_v5_NoLogin_Branded.apk` | brend + login override + dex patch (**FileOptionsMenu.js yo'q**) |
| v6 | `PacketTracer_v6_Full.apk` | to'liq 4 o'zgarish (app.html, Utils.js, FileOptionsMenu.js, classes.dex) |
| v7 | `PacketTracer_v7.apk` | + 10 s progress bar, DIAG yopiq |
| v8 | `PacketTracer_v8.apk` | + menyu o'lchami (radius) |
| v9 | `PacketTracer_v9.apk` | + tugma CSS masshtabi, slider oynasi + preview |
| v10 | `PacketTracer_v10.apk` | `Done` bosilishini to'sish tuzatildi |
| v11 | `PacketTracer_v11.apk` | slider qiymati tuzatildi (Circle Menu Size yakuniy) |
| **v12** | **`PacketTracer_v12.apk`** | **physical view: modul paneli + tavsif bloki moslashuvi** |

---

## 9. O'zgartirilgan fayllar ro'yxati

```
assets/HtmlGui/app.html
assets/HtmlGui/scripts/Utils.js
assets/HtmlGui/app/view/fileHandling/FileOptionsMenu.js
assets/HtmlGui/app/view/contextualMenus/BaseButtonCircle.js
assets/HtmlGui/app/view/options/ProjectOptionsDialog_UI.js
assets/HtmlGui/app/view/options/ProjectOptionsDialog.js
assets/HtmlGui/app/store/InitialSettings.js
assets/HtmlGui/app/view/physical/PhysicalView.js
smali/org/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1.smali
```

---

## 10. Ma'lum cheklovlar / eslatmalar

- `contextMenuScale` **yangi ochilgan** menyuga qo'llanadi; ochiq turgan menyu o'lchami keyingi ochilishda yangilanadi.
- Kichik ekranlarda radius `0.98 × min(ekran)/2` bilan avtomatik cheklanadi (140% ham ekrandan chiqmaydi).
- 60% juda kichik qurilmalarda tugmalar zichlashishi mumkin (foydalanuvchi tanlovi).
- NetAcad login dialogi klassi saqlanib qolgan; faqat avtomatik ochilish va JS chaqiruvlari o'chirilgan.
- `DIAG` overlay diagnostika uchun qoldirilgan; sukut bo'yicha yopiq, kerak bo'lsa `app.html` dan olib tashlanadi.
