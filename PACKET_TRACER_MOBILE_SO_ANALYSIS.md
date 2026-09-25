# Cisco Packet Tracer Mobile — To'liq Native Library (.so) Tahlili

- **Tahlil sanasi:** 2026-09-25
- **Paket:** `com.netacad.PacketTracerM`
- **Tahlil papkasi:** `/storage/emulated/0/ApkEditor/Cisco_packet_tracker_mobile`
- **Holat:** READ-ONLY. Hech qanday fayl o'zgartirilmadi, o'chirilmadi, yangi fayl qo'shilmadi (faqat shu hisobot fayli yaratildi).
- **Tahlil usullari:** `stat`, `file`, `readelf` (header/dynamic/sections/attributes), `nm`, `c++filt`, `strings`, `md5sum`, `numfmt`, hamda smali/res/assets explorer.

---

## 0. TL;DR (qisqa xulosa)

- Jami **47 ta `.so`** native kutubxona. Barchasi **bir xil arxitekturada**: `ELF32, ARMv7-A, EABI5, little-endian, Thumb-2`, papka `lib/armeabi-v7a/`.
- **Bitta asosiy Cisco/Packet Tracer native binary:** `libPacketTracer.so` — 25.98 MiB, **80,847 export**, monolith C++ (device modellari, IOS/ASA/CLI, simulator, PDU, klassik QWidget UI, mobile IPC, gesture/touch, DPI).
- **Qt versiyasi:** **5.5.1** (`arm-little_endian-ilp32-eabi ... release build; by GCC 4.9 20140827 (prerelease)`).
- **OpenSSL:** `libcrypto`/`libssl` = **1.0.2i (22 Sep 2016)**.
- **Build RUNPATH:** `/opt/ptmobile-resources/Qt551-android17-ndkr10e-bin-release/lib`.
- **Paketda yo'q, lekin `DT_NEEDED` da talab qilinadigan kutubxonalar:** `libQt5Svg.so`, `libQt5Quick.so`, `libQt5Qml.so`, `libQt5EglDeviceIntegration.so` → `libqsvg`, `libqtaccessiblequick`, `libqeglfs` **ishlamaydi (dead/orphan)**.
- **Audio/video kutubxonasi yo'q**, `unknown` kategoriyasi yo'q.
- **Muhim aniqlov:** PT Mobile 6.1 ning **asosiy telefon UI'i native Qt Widgets emas**, balki `assets/HtmlGui/**` (Sencha Touch/Ext JS) — Android `WebView` orqali chiziladi va native `libPacketTracer` bilan `ptMobileUtil` IPC orqali bog'lanadi.

---

## 1. APK Metadata (AndroidManifest.xml dan)

- **versionName:** `3.0` · **versionCode:** `3000130`
- **platformBuildVersionName/Code:** `4.4W.2-1537038` / `20`
- **minSdkVersion:** `21` · **targetSdkVersion:** `24`
- **application:** `org.qtproject.qt5.android.bindings.QtApplication` (`largeHeap=true`)
- **faol activity:** `org.qtproject.qt5.android.bindings.QtActivity`
  - `screenOrientation="sensorLandscape"` (landscape ga qattiq qisqartirilgan)
  - `configChanges="fontScale|keyboard|keyboardHidden|layoutDirection|locale|navigation|orientation|screenLayout|screenSize|smallestScreenSize|uiMode"` (rotatsiyada activity qayta ishlamaydi)
  - `hardwareAccelerated="true"`, `launchMode="singleTask"`, `clearTaskOnLaunch="true"`
  - `theme="@android:style/Theme.Black.NoTitleBar.Fullscreen"`
- **meta-data:**
  - `android.app.lib_name = PacketTracer` → `System.loadLibrary("PacketTracer")` (`lib/armeabi-v7a/libPacketTracer.so`)
  - `android.app.load_local_libs = plugins/platforms/android/libqtforandroid.so : plugins/bearer/libqandroidbearer.so` → faol platform plugin va Android bearer
  - `android.app.libs_prefix = /data/local/tmp/qt/`, `bundle_local_qt_libs=1`, `use_local_qt_libs=1`
  - `android.app.splash_screen_drawable = @drawable/splash`
- **Qo'shimcha activity'lar** (Box/Twitter/Facebook/DropBox/ACRA) — hammasi `lib_name=PacketTracer` yuklaydi.
- **supports-screens:** `anyDensity/largeScreens/normalScreens/smallScreens = true` (telefon/tablet farqi yo'q)
- **Bonus (RE/debug):** `AndroidManifest.xml:76-85` — **jshybugger JavaScript debugger** (`jsHybugger.org`, `debugPort 8888`, `proxy 192.168.0.1:8080`, `proxyEnabled=false`) mavjud → HTML/JS front-end'ni brauzer orqali jonli debug qilish mumkin.

### `res/values/arrays.xml` (Qt loader ro'yxati)
- `qt_sources` → `https://download.qt-project.org/ministro/android/qt5/5.3.0`
- `bundled_in_lib` → `libqoffscreen.so:plugins/platforms/libqoffscreen.so`, `libqtforandroid.so:plugins/platforms/android/libqtforandroid.so`, `libqgenericbearer.so:plugins/bearer/...`, `libqtaccessiblequick/widgets.so:plugins/accessible/...`, va imageformat'lar.
- `qt_libs` → `gnustl_shared, Qt5Core, Qt5Gui, Qt5Network, Qt5Script, Qt5Xml, Qt5Widgets, Qt5OpenGL, Qt5PrintSupport, Qt5ScriptTools, Qt5Svg` — lekin **`Qt5OpenGL/PrintSupport/ScriptTools/Svg` paketda yo'q** (mismatch).

---

## 2. Umumiy build / ABI xususiyatlari

- Barcha 47 ta `.so` uchun `file` natijasi bir xil oila:
  `ELF 32-bit LSB shared object, ARM, EABI5 version 1 (SYSV), dynamically linked, interpreter /system/bin/linker`
- `readelf -AW` barchasida: `Tag_CPU_name: "ARM v7"`, `Tag_CPU_arch: v7`, `Tag_CPU_arch_profile: Application`, `Tag_THUMB_ISA_use: Thumb-2`.
- **Stripped holat:**
  - **stripped:** `libPacketTracer`, `libQt5*`, `libgnustl_shared`, barcha `libplugins_*` (prefiksiylangan), `libssl` (yo'q, `not stripped`) — aniq bo'lishi uchun: `libPacketTracer, libQt5Core, libQt5Gui, libQt5Network, libQt5Script, libQt5Widgets, libQt5Xml, libgnustl_shared` va barcha `libplugins_*` — **stripped**.
  - **not stripped / debug_info bilan:** `libcrypto` (debug_info), `libqeglfs`, `libqgenericbearer` (debug_info), `libqgif`, `libqico`, `libqjpeg`, `libqminimal`, `libqminimalegl` (debug_info), `libqmng`, `libqoffscreen`, `libqsvg`, `libqtaccessiblequick`, `libqtaccessiblewidgets` (debug_info), `libqtforandroid` (debug_info), `libqtga`, `libqtiff`, `libqwbmp`, `libssl` (debug_info).
- **DT_SONAME faqat 10 ta** kutubxonada bor (qolgan 37 tasi Qt plugin, SONAME'siz):
  `libPacketTracer.so, libQt5Core.so, libQt5Gui.so, libQt5Network.so, libQt5Script.so, libQt5Widgets.so, libQt5Xml.so, libcrypto.so, libgnustl_shared.so, libssl.so`.

---

## 3. ASOSIY .SO ELF TAHLILI

`exported symbols` = `nm -D --defined-only` soni. Barchasi ARMv7A.

### 3.1 libPacketTracer.so — Cisco/Packet Tracer native engine + klassik UI
- **Arch:** ARMv7A / ELF32 / stripped / dynamically linked
- **SONAME:** `libPacketTracer.so`
- **NEEDED (16):** `libcrypto, libssl, libQt5Widgets, libQt5Gui, libQt5Network, libQt5Xml, libQt5Script, libQt5Core, libGLESv2, libgnustl_shared, liblog, libz, libdl, libstdc++, libm, libc`
- **Exports:** **80,847** (41,463 T / 14,987 W / 12,715 V / 4,816 D / 3,847 B / 3,016 R / 3 A) — monolith C++ binary
- **Qt dep:** ha (Core/Gui/Widgets/Network/Xml/Script) · **GL dep:** `libGLESv2` NEEDED lekin **`gl*`/`egl*` undefined import 0 ta** → OpenGL bevosita emas, `libQt5Gui` orqali (Qt5Gui'da **95** ta `gl*` import bor).
- **Interesting strings/symbols:**
  - `CWorkspace::resizeEvent`, `CWorkspace::updateCanvas`, `CWorkspace::setGridSizes`, `CWorkspace::moveDevice`
  - `CLogicalWorkspace::doResize`, `CLogicalResizeIndicatorItem`, `CLogicalCanvas`, `CWorkspaceMiniView`
  - `CPhysicalToolbar`, `CLogicalToolbar`, `CManageDialogsToolBar`, `viewport-toolbar`
  - `SHOW_MAIN_TOOLBAR`, `SHOW_BOTTOM_TOOLBAR`, `SHOW_RIGHT_TOOLBAR`
  - `AppDpiStyle`, `Util::CPTMobileUtil` + `Ipc::_PTMobileUtil_*` (JS orqali chaqiriladigan native IPC)
  - `CSoakTouchInput`, `SwipeGestureRecognizer`, `ScrollGestureRecognizer`, `CustomGestureRecognizer`
  - `QGraphicsItem`, `QGraphicsRectItem`, `setWorkspaceBG(QString&, bool, int, int)`
  - `hellloooo  resize event` (dizayn/debug qoldig'i)
  - `Cisco IOS/ASA/IOE` device/CLI matnlari

### 3.2 Qt 5.5.1 core kutubxonalari
| Kutubxona | SONAME | NEEDED (Qt + o'lchov) | Exports | Qt dep | GL/EGL dep |
|---|---|---|---|---|---|
| libQt5Core.so | `libQt5Core.so` | gnustl, log, z, dl, stdc++, m, libc | 5,644 | yo'q | yo'q |
| libQt5Gui.so | `libQt5Gui.so` | Qt5Core, gnustl, log, z, GLESv2, dl, stdc++, m, libc | 7,183 | Qt5Core | **libGLESv2 (95 gl* import)** |
| libQt5Network.so | `libQt5Network.so` | Qt5Core, gnustl, log, z, dl, stdc++, m, libc | 1,277 | Qt5Core | yo'q |
| libQt5Script.so | `libQt5Script.so` | Qt5Core, gnustl, log, z, dl, stdc++, m, libc | 462 | Qt5Core | yo'q |
| libQt5Widgets.so | `libQt5Widgets.so` | Qt5Gui, Qt5Core, gnustl, log, z, GLESv2, dl, stdc++, m, libc | 8,702 | Qt5Gui+Core | libGLESv2 |
| libQt5Xml.so | `libQt5Xml.so` | Qt5Core, gnustl, log, z, dl, stdc++, m, libc | 502 | Qt5Core | yo'q |

**Interesting strings:** Core → Qt banner `5.5.1`; Gui → `QImage::convertToFormat/mirrored`, 95 `gl*` (shader/buffer/FBO); Network → `QTcpSocket, QSslSocket, bearerType`; Script → `QScriptClass`; Widgets → `QWidget/QAction::showStatusText`; Xml → `QDomDocument`.

### 3.3 Android / rendering bridge
- **libqtforandroid.so** — SONAME yo'q · NEEDED: `libjnigraphics, libandroid, libgnustl_shared, liblog, libdl, libz, libEGL, libQt5Gui, libQt5Core, libGLESv2, libm, libc, libstdc++` · exports **110** · Qt+EGL+GLES2 ha · strings: `JNI_OnLoad, QtAndroidPrivate::javaVM/handleNewIntent/handleActivityResult, eglCreateWindowSurface/eglMakeCurrent/eglBindAPI, ANativeWindow_fromSurface, ExtractStyle` → **haqiqiy Android surface/EGL bridge**.
- **libqminimalegl.so** — NEEDED: `Qt5Gui, Qt5Core, libEGL, libGLESv2, gnustl, log, z, dl, m, libc, stdc++` · exports **90** · strings: `QMinimalEglIntegrationPlugin, QEGLPlatformContext, QMinimalEglWindow/Screen/Context` (desktop EGL backend, Android'da ehtimol ishlatilmaydi).
- **libqoffscreen.so** — NEEDED: `Qt5Gui, Qt5Core, libEGL, libGLESv2, + sys` · exports **75** · offscreen rendering.
- **libqsvg.so** — NEEDED: **`libQt5Svg.so` (paketda YO'Q)**, `Qt5Widgets, Qt5Gui, Qt5Core, GLESv2, ...` · exports **5** → **ishlamaydi** (SVG plugin).
- **libqeglfs.so** — NEEDED: **`libQt5EglDeviceIntegration.so` (YO'Q)**, `Qt5Gui/Core, EGL, GLESv2, ...` · exports **5** → **ishlamaydi**.
- **libqtaccessiblequick.so** — NEEDED: **`libQt5Quick.so` va `libQt5Qml.so` (ikkalasi ham YO'Q)**, `Qt5Network, Qt5Gui, Qt5Core, GLESv2, ...` · exports **8** → **ishlamaydi**.
- **libqtaccessiblewidgets.so** — NEEDED: `Qt5Widgets, Qt5Gui, Qt5Core, GLESv2, + sys` · exports **63** · RPATH `Qt5.3.0-api19-debug` (desktop build qoldig'i) — accessibility klassik UI uchun.

### 3.4 Runtime / TLS
- **libcrypto.so** — SONAME `libcrypto.so` · NEEDED: `dl, z, libc` · **4,010** exports · `OpenSSL 1.0.2i  22 Sep 2016`
- **libssl.so** — SONAME `libssl.so` · NEEDED: `crypto, dl, z, libc` · **595** exports · TLS/SSL (SSLv3/TLSv1)
- **libgnustl_shared.so** — SONAME o'z nomi · NEEDED: `m, libc, dl` · **4,126** exports · GNU C++ runtime

### 3.5 Missing (paketda yo'q) `DT_NEEDED` kutubxonalari
Jami 23 ta unique `DT_NEEDED` dan **4 tasi** paketda mavjud emas:
- `libQt5Svg.so` (→ `libqsvg.so`)
- `libQt5Quick.so` (→ `libqtaccessiblequick.so`)
- `libQt5Qml.so` (→ `libqtaccessiblequick.so`)
- `libQt5EglDeviceIntegration.so` (→ `libqeglfs.so`)

Xulosa: **QML/SVG/EGL-device rendererlar ishlatilmaydi**; mobil UI QML emas.

### 3.6 Duplicate pluginlar (nm -D symbol table'lar bir xil)
Quyidagi juftliklarda `nm -D` chiqishining md5 (12 belgi) **bir xil** → bitta plugin'ning unstripped + stripped ko'rinishi (apk'ga ikki yo'l bilan joylangan):

| Juftlik | `nm -D` md5 |
|---|---|
| libqminimalegl.so ↔ libplugins_platforms_libqminimalegl.so | 447b41c7e60e |
| libqoffscreen.so ↔ libplugins_platforms_libqoffscreen.so | ad83bbe23e91 |
| libqminimal.so ↔ libplugins_platforms_libqminimal.so | b4098902ca15 |
| libqtforandroid.so ↔ libplugins_platforms_android_libqtforandroid.so | 43ba3f05afb1 |
| libqgif.so ↔ libplugins_imageformats_libqgif.so | 746deaa8b740 |
| libqjpeg.so ↔ libplugins_imageformats_libqjpeg.so | 335cd3f3c3df |
| libqmng.so ↔ libplugins_imageformats_libqmng.so | 6ee618ba0738 |
| libqtiff.so ↔ libplugins_imageformats_libqtiff.so | 17dd1a617846 |
| libqtga.so ↔ libplugins_imageformats_libqtga.so | 6a505065b34e |
| libqico.so ↔ libplugins_imageformats_libqico.so | d9bccd41e3f3 |
| libqwbmp.so ↔ libplugins_imageformats_libqwbmp.so | 00c1f0bac6ba |

### 3.7 Developer build path "sizish" (RUNPATH/RPATH)
- Ko'pchilik release `.so`lar: `/opt/ptmobile-resources/Qt551-android17-ndkr10e-bin-release/lib`
- `libqgenericbearer.so`, `libqtaccessiblewidgets.so`: `/home/thi/Desktop/Qt5.3.0-api19-debug-armv7-commercial/5.3/android_armv7/lib`
- `libqtaccessiblequick.so`: `/work/build/______________________________PADDING______________________________/lib`
- (Android linker'da absolute RUNPATH mavjud bo'lmagan yo'l uchun e'tiborsiz qoldiriladi, lekin build-ma'lumoti oshkor bo'ladi.)

---

## 4. [ALL 47 SO FILES]

Barchasi `lib/armeabi-v7a/` ostida, ABI `ARMv7A` (ELF32 ARMv7-A EABI5 LE Thumb-2). `Exports` = `nm -D --defined-only` soni. `Status` = stripped / not stripped.

| # | Fayl (relative path) | Hajm | MiB/KiB | ABI | Kategoriya | Exports | Status |
|---|---|---|---|---|---|---|---|
| 1 | `libPacketTracer.so` | 27,240,548 B | 25.98 MiB | ARMv7A | Cisco/Packet Tracer native | 80,847 | stripped |
| 2 | `libQt5Core.so` | 3,988,068 B | 3.81 MiB | ARMv7A | Qt library | 5,644 | stripped |
| 3 | `libQt5Gui.so` | 3,146,724 B | 3.01 MiB | ARMv7A | Qt library | 7,183 | stripped |
| 4 | `libQt5Network.so` | 636,224 B | 621 KiB | ARMv7A | Qt library (networking) | 1,277 | stripped |
| 5 | `libQt5Script.so` | 734,688 B | 717 KiB | ARMv7A | Qt library | 462 | stripped |
| 6 | `libQt5Widgets.so` | 3,343,868 B | 3.19 MiB | ARMv7A | Qt library | 8,702 | stripped |
| 7 | `libQt5Xml.so` | 120,112 B | 117 KiB | ARMv7A | Qt library | 502 | stripped |
| 8 | `libcrypto.so` | 1,856,500 B | 1.78 MiB | ARMv7A | networking/TLS (OpenSSL) | 4,010 | not stripped (debug) |
| 9 | `libgnustl_shared.so` | 870,064 B | 850 KiB | ARMv7A | third-party (GNU STL) | 4,126 | stripped |
| 10 | `libplugins_bearer_libqandroidbearer.so` | 38,256 B | 37 KiB | ARMv7A | networking (Android bearer plugin) | 7 | stripped |
| 11 | `libplugins_generic_libqevdevkeyboardplugin.so` | 38,184 B | 37 KiB | ARMv7A | bridge (input) | 5 | stripped |
| 12 | `libplugins_generic_libqevdevmouseplugin.so` | 25,896 B | 25 KiB | ARMv7A | bridge (input) | 5 | stripped |
| 13 | `libplugins_generic_libqevdevtabletplugin.so` | 21,800 B | 21 KiB | ARMv7A | bridge (input) | 5 | stripped |
| 14 | `libplugins_generic_libqevdevtouchplugin.so` | 34,088 B | 33 KiB | ARMv7A | bridge (touch) | 5 | stripped |
| 15 | `libplugins_generic_libqtuiotouchplugin.so` | 29,992 B | 29 KiB | ARMv7A | bridge (touch) | 5 | stripped |
| 16 | `libplugins_imageformats_libqdds.so` | 30,052 B | 29 KiB | ARMv7A | graphics (DDS codec) | 9 | stripped |
| 17 | `libplugins_imageformats_libqgif.so` | 17,704 B | 17 KiB | ARMv7A | graphics (GIF codec) | 5 | stripped |
| 18 | `libplugins_imageformats_libqicns.so` | 25,896 B | 25 KiB | ARMv7A | graphics (ICNS codec) | 5 | stripped |
| 19 | `libplugins_imageformats_libqico.so` | 17,704 B | 17 KiB | ARMv7A | graphics (ICO codec) | 5 | stripped |
| 20 | `libplugins_imageformats_libqjp2.so` | 300,440 B | 293 KiB | ARMv7A | graphics (JP2 codec) | 5 | stripped |
| 21 | `libplugins_imageformats_libqjpeg.so` | 144,740 B | 141 KiB | ARMv7A | graphics (JPEG codec) | 5 | stripped |
| 22 | `libplugins_imageformats_libqmng.so` | 188,868 B | 184 KiB | ARMv7A | graphics (MNG codec) | 5 | stripped |
| 23 | `libplugins_imageformats_libqtga.so` | 13,668 B | 13 KiB | ARMv7A | graphics (TGA codec) | 5 | stripped |
| 24 | `libplugins_imageformats_libqtiff.so` | 291,736 B | 285 KiB | ARMv7A | graphics (TIFF codec) | 5 | stripped |
| 25 | `libplugins_imageformats_libqwbmp.so` | 13,608 B | 13 KiB | ARMv7A | graphics (WBMP codec) | 5 | stripped |
| 26 | `libplugins_imageformats_libqwebp.so` | 206,232 B | 201 KiB | ARMv7A | graphics (WebP codec) | 5 | stripped |
| 27 | `libplugins_platforms_android_libqtforandroid.so` | 546,920 B | 534 KiB | ARMv7A | Android/Qt bridge (platform plugin) | 110 | stripped |
| 28 | `libplugins_platforms_libqminimal.so` | 21,800 B | 21 KiB | ARMv7A | graphics/OpenGL (platform) | 5 | stripped |
| 29 | `libplugins_platforms_libqminimalegl.so` | 427,392 B | 417 KiB | ARMv7A | graphics/OpenGL (EGL platform) | 90 | stripped |
| 30 | `libplugins_platforms_libqoffscreen.so` | 415,076 B | 405 KiB | ARMv7A | graphics/OpenGL (offscreen) | 75 | stripped |
| 31 | `libqeglfs.so` | 13,256 B | 12 KiB | ARMv7A | graphics/OpenGL (broken, missing dep) | 5 | not stripped |
| 32 | `libqgenericbearer.so` | 1,177,872 B | 1.13 MiB | ARMv7A | networking (Qt bearer) | 13 | not stripped (debug) |
| 33 | `libqgif.so` | 25,728 B | 25 KiB | ARMv7A | graphics (GIF, stripped-dup) | 5 | not stripped |
| 34 | `libqico.so` | 27,804 B | 27 KiB | ARMv7A | graphics (ICO, stripped-dup) | 5 | not stripped |
| 35 | `libqjpeg.so` | 185,888 B | 181 KiB | ARMv7A | graphics (JPEG, stripped-dup) | 5 | not stripped |
| 36 | `libqminimal.so` | 38,172 B | 37 KiB | ARMv7A | graphics/OpenGL (platform, stripped-dup) | 5 | not stripped |
| 37 | `libqminimalegl.so` | 558,360 B | 545 KiB | ARMv7A | graphics/OpenGL (EGL, stripped-dup) | 90 | not stripped (debug) |
| 38 | `libqmng.so` | 269,276 B | 263 KiB | ARMv7A | graphics (MNG, stripped-dup) | 5 | not stripped |
| 39 | `libqoffscreen.so` | 539,700 B | 527 KiB | ARMv7A | graphics/OpenGL (offscreen, stripped-dup) | 75 | not stripped |
| 40 | `libqsvg.so` | 26,268 B | 25 KiB | ARMv7A | graphics/SVG (broken, missing dep) | 5 | not stripped |
| 41 | `libqtaccessiblequick.so` | 52,684 B | 51 KiB | ARMv7A | Qt library (accessibility, broken) | 8 | not stripped |
| 42 | `libqtaccessiblewidgets.so` | 2,835,944 B | 2.71 MiB | ARMv7A | Qt library (accessibility) | 63 | not stripped (debug) |
| 43 | `libqtforandroid.so` | 782,444 B | 764 KiB | ARMv7A | Android/Qt bridge (platform, stripped-dup) | 110 | not stripped (debug) |
| 44 | `libqtga.so` | 22,328 B | 21 KiB | ARMv7A | graphics (TGA, stripped-dup) | 5 | not stripped |
| 45 | `libqtiff.so` | 351,992 B | 344 KiB | ARMv7A | graphics (TIFF, stripped-dup) | 5 | not stripped |
| 46 | `libqwbmp.so` | 21,528 B | 21 KiB | ARMv7A | graphics (WBMP, stripped-dup) | 5 | not stripped |
| 47 | `libssl.so` | 396,768 B | 387 KiB | ARMv7A | networking/TLS (OpenSSL) | 595 | not stripped (debug) |

**Kategoriyalar bo'yicha xulosa:** audio/video kutubxonasi **yo'q**; `unknown` — **yo'q**. Low-export (5) image/platform pluginlar — normal (`qt_plugin_instance`/`qt_plugin_query_metadata` + `__bss_start/_edata/_end`).

---

## 5. [IMPORTANT PACKET TRACER LIBRARIES]

**libPacketTracer.so**
- **reason:** yagona Cisco/Packet Tracer native binary. 25.98 MiB, 80,847 export. Device modellari, IOS/ASA/CLI, simulator, PDU, `CWorkspace`/logical-physical workspace, toolbars, QGraphicsView klassik UI, mobile `CPTMobileUtil` IPC, gesture/touch va DPI stil kodlari shu yerdagina kompilyatsiya qilingan. `System.loadLibrary("PacketTracer")` orqali yuklanadi.

**libqtforandroid.so** (+ `libplugins_platforms_android_libqtforandroid.so`)
- **reason:** `AndroidManifest.xml:34` orqali `load_local_libs` da ko'rsatilgan **haqiqiy faol platform plugin**. JNI/EGL/GLES2, Android Surface, display metrics — telefon ekrani native tarafdan shu yerda bog'lanadi.

**libcrypto.so / libssl.so**
- **reason:** PT'ning multiuser/HTTP/Box/analytics TLS aloqalari; OpenSSL 1.0.2i.

**libgnustl_shared.so**
- **reason:** barcha PT/Qt `.so`lar `NEEDED` bilan bog'langan C++ runtime (SONAME `libgnustl_shared.so`).

---

## 6. [QT LIBRARIES]

- **libQt5Core / Gui / Network / Script / Widgets / Xml** — Qt 5.5.1, SONAME o'z nomi, stripped, RUNPATH `Qt551-android17-ndkr10e`. `Gui` va `Widgets` `libGLESv2` bog'laydi; `Gui` OpenGL ES backend'ni (95 `gl*`) import qiladi.
- **libqtforandroid + plugin** — faol Android platform plugin (110 exports, JNI/EGL/GLES2).
- **libqminimalegl / libqoffscreen / libqminimal** — desktop EGL/offscreen backend'lar; Android'da `qtforandroid` bilan almashtirilgan, ehtimol ishlatilmaydi.
- **imageformat pluginlar** (qdds, qgif, qicns, qico, qjp2, qjpeg, qmng, qtga, qtiff, qwbmp, qwebp) + `libq*.so` dubllari — device art, toolbar PNG, workspace rasmlarini decode qiladi.
- **libqtaccessiblewidgets** — klassik Qt UI uchun accessibility; **libqtaccessiblequick** — ishlamaydi (Qt5Quick/Qml yo'q).
- **libqsvg** — ishlamaydi (`libQt5Svg.so` yo'q); **libqeglfs** — ishlamaydi (`libQt5EglDeviceIntegration.so` yo'q).
- **Mismatch:** `res/values/arrays.xml:5,7` `Qt5OpenGL`, `Qt5PrintSupport`, `Qt5ScriptTools`, `Qt5Svg`, `Qt5.3.0` source URL'ni ko'rsatadi, lekin bu `.so`lar paketda yo'q.

---

## 7. [POSSIBLE UI/RENDERING LIBRARIES]

- **libPacketTracer.so** — klassik native UI: `CWorkspace`, `CLogicalWorkspace`, `CLogicalCanvas`, `CPhysicalToolbar`, `CLogicalResizeIndicatorItem`, `AppDpiStyle`.
- **libQt5Widgets.so** — QWidget/QAction/UI elementlari; **libQt5Gui.so** — QPainter/QImage + OpenGL ES backend.
- **libqtforandroid.so** + platform plugin — Android Surface/EGL, `setSurfaceGeometry`, display metrics.
- **libqminimalegl / libqoffscreen** — EGL/offscreen renderer (ikkalasi ham stripped/unstripped juftlik).
- **imageformat pluginlar** — barcha UI/device art rendering.
- **qtaccessiblewidgets** — native UI accessibility tree.
- **evdev/uio touch pluginlar** — touch/pen input.
- **Muhim aniqlov:** PT Mobile 6.1'ning **asosiy telefon UI'i native Qt emas** — u Sencha Touch/Ext JS: `assets/HtmlGui/app.html` + `assets/HtmlGui/**`, Android `WebView` orqali (`PacketTracerFrontEndBridge$1.smali:653-820`, `loadUrl("file:///android_asset/HtmlGui/app.html")`), native bilan `ptMobileUtil` IPC orqali bog'lanadi (`MainView.js`, `ipc.js`). Klassik `CWorkspace`/Qt UI esa desktop'dan qolgan kod.

---

## 8. SMALI / RES / ASSETS TOHLILI (batafsil)

### 8.1 Kirish nuqtasi va kutubxona yuklash
- `AndroidManifest.xml:24` (va `:43,46,55,58,67,70,73`) → `android.app.lib_name = "PacketTracer"`.
- `smali/org/qtproject/qt5/android/bindings/QtActivity.smali:1643-1665` — `lib_name` ni Bundle'ga `"main.library"` sifatida saqlaydi.
- `QtActivity.smali:1838-1844` — `if (libName != null) System.loadLibrary(libName)` → **`System.loadLibrary("PacketTracer")`** (`QtApplication.setQtActivityDelegate(qtLoader)` dan keyin, `:1835`).
- `QtActivity.smali:1845-1884` — refleksiv `startApplication()`; muvaffaqiyatsizlikda `Exception("")`, `:1899` da `"Fatal error, your application can't be started."`.
- `QtActivityDelegate.smali:1887` → `QtNative.loadQtLibraries`; `:1903` → `QtNative.loadBundledLibraries`.
- `AndroidManifest.xml:34-35` — yagona ko'rsatilgan native'lar: `plugins/platforms/android/libqtforandroid.so`, `plugins/bearer/libqandroidbearer.so`.
- `res/values/arrays.xml:5` (`bundled_in_lib`) → `libqtforandroid.so`; `:7` (`qt_libs`) → gnustl_shared, Qt5Core/Gui/Network/Script/Xml/Widgets/OpenGL/PrintSupport/ScriptTools/Svg. **PacketTracer hech qanday arrayda yo'q** — faqat nom orqali yuklanadi.

### 8.2 Ekran konfiguratsiyasi
- `AndroidManifest.xml:4` — `screenOrientation="sensorLandscape"`; `configChanges=...orientation|screenSize|smallestScreenSize|...`; `theme=Theme.Black.NoTitleBar.Fullscreen`; `hardwareAccelerated=true`; `largeHeap=true`.
- `res/values/styles.xml:7` — `splashScreenTheme` ham `windowFullscreen`.

### 8.3 Display metrics / density / orientation (Java → native)
- `smali/org/qtproject/qt5/android/bindings/QtActivity.smali:4478-4531` — `ENVIRONMENT_VARIABLES` ga `QT_ANDROID_THEME` va **`QT_ANDROID_THEME_DISPLAY_DPI = Resources.getDisplayMetrics().densityDpi`**.
- `smali/org/qtproject/qt5/android/QtLayout.smali:338-385` — `onSizeChanged()`: `DisplayMetrics.widthPixels/heightPixels/xdpi/ydpi/scaledDensity` (`:365-379`) o'zgartirilganda `QtNative.setApplicationDisplayMetrics(IIIIDDD)V` chaqiriladi (`:381-383`).
- `smali/org/qtproject/qt5/android/QtNative.smali:1564-1587` — `setApplicationDisplayMetrics` **DPI doubles ni 120.0 ga clamp** qiladi (native theme'ga minimal desktop-ish density).
- `QtNative.smali:1623-1633` — `m_displayMetrics*` ni birinchi chaqiruvda cache'laydi.
- `smali/org/qtproject/qt5/android/QtActivityDelegate.smali:2527-2580` — `onConfigurationChanged()` `Display.getRotation()` ni `m_currentRotation` bilan solishtiradi, o'zgarsa `QtNative.handleOrientationChanged(rotation, m_nativeOrientation)` (`:2573`). Yanada boy yo'l `:2735-2801` (`:2795` da chaqiradi).
- `QtActivityDelegate.smali:3618+` — `setFullScreen()`: `FLAG_FULLSCREEN (0x400)`, `FLAG_FORCE_NOT_FULLSCREEN (0x800)` tozalaydi, SDK>=19 da refleksiv `SYSTEM_UI_FLAG_IMMERSIVE_STICKY`; `updateFullScreen` `:5974-5996`.
- `QtActivityDelegate.smali:3985-4018` — `setSurfaceGeometry` → `QtLayout$LayoutParams`.
- **Cutout/inset compensation butun smali'da yo'q** (eski `WindowManager.getDefaultDisplay()`, `WindowMetrics` emas).

### 8.4 WebView bootstrap (haqiqiy mobil front-end)
- `smali/org/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge.init()` (`:2642-2817`): ACRA init, `copyAssetToCache("HtmlGui/resources/html")` (`:2682-2684`), `assets/HtmlGui/app.html` ni o'lchov sifatida o'qish (`:2699-2774`), `runOnUiThread(PacketTracerFrontEndBridge$1)` (`:2783-2789`).
- `PacketTracerFrontEndBridge$1.smali` — haqiqiy UI-thread bootstrap:
  - `findViewById(0x7f0a0038)` = **`@id/webview`** (`:68-82`)
  - pre-KitKat `setLayerType(1, null)` (`:106-110`)
  - **`setSystemUiVisibility(0x4)` = `SYSTEM_UI_FLAG_LAYOUT_STABLE`** (immersive emas) (`:124-126`)
  - `setVisibility(4)` boshlang'ich (`:139-141`)
  - JS bridges (`:160-373`): `PacketTracerFrontEndBridge, Analytics, DropBoxApiJsInterface, BoxApiJsInterface, LoginDialogCanvas, FacebookClient, JavaKeyboard, ..., Util, AppPreferences`
  - `setWebChromeClient` (`:394`), JS enabled (`:415`), DOM storage (`:458`), file/universal access (`:474-479`)
  - **Asosiy WebView'da `setUseWideViewPort` va `setLoadWithOverviewMode` YO'Q**
  - final URL: `file:///android_asset/HtmlGui/app.html` (`:653-657`), jshybugger fallback `sdcard/DCIM/HtmlGui/app.html` (`:682-704`), ZIP-OBB expansion (`:865-1003`), `loadUrl` (`:820`)
- `assets/HtmlGui/app.html` — faqat `<meta http-equiv="Content-Type">` (`:7`); **`<meta name="viewport">` yo'q**; Sencha Touch va ko'plab CSS `:15-50` da.

### 8.5 `res/layout/main.xml` va tip-of-the-day WebView
- `res/layout/main.xml` (8 qator, `fill_parent RelativeLayout`):
  - `:3` `@id/webviewlogin` (gone), `:4` `@id/webview` (gone — asosiy PT front-end), `:5` `My_btn` "Back" (gone), `:6` `KeyboardView` (gone), `:7` `guest` marquee TextView (gone).
  - ID map: `res/values/public.xml:141` `main`, `:344/345` `webviewlogin=0x7f0a0037`, `webview=0x7f0a0038`.
- `smali/org/qtproject/qt5/android/bindings/QtActivity$7.smali` — tip-of-the-day loader (PT UI emas):
  - `setContentView(main)` (`:51`), `setInitialScale(1)`, **`setLoadWithOverviewMode(true)` + `setUseWideViewPort(true)`** (`:77-106`) — **wide-viewport faqat shu yerda yoqilgan**
  - `AssetManager.list("tip")` (`:123-129`), `loadUrl("file:///android_asset/tip/...")` (`:197-217`)
- `QtActivity.smali:3372-3514` — `KeyEvent` → WebView JS `sendPhysicalKbInput('<key>',<code>)` (`:3484-3514`), DPAD/Backspace/Break/End mapping (`:3402-3466`).

### 8.6 PTMobileUtil — native IPC (smali emas)
- `smali/` da `PTMobileUtil` **yo'q**; bu native C++ IPC obyekti (`Util::CPTMobileUtil` + `Ipc::_PTMobileUtil_*`) bo'lib, JS orqali chaqiriladi:
  - `assets/HtmlGui/app/view/MainView.js:8` — `ipc.ipcCallAsync("ptMobileUtil", ...)`
  - `assets/HtmlGui/scripts/Utils.js:8` — `var ptMobileUtil = null`
  - ~36 JS fayl chaqiradi (`ConfigView.js`, `PhysicalView.js`, `WSInputModeCreatePDU.js`, `SimulationController.js`, inspector/applet'lar).

### 8.7 Haqiqiy telefon-ekrani moslashuv qatlami (Sencha Touch HTML)
- `assets/HtmlGui/scripts/Utils.js:8` — platform shim'lari: `isAndroid()`, `isIos()`, `isWindows()`, `getVisibleScreenPixelHeight()`, `getScreenPixelHeight()`, `getScreenPixelDensity()`, `getVisibleScreenTop()` (**`getVisibleScreenHeight()` nomiga xato murojaat — mavjud emas**), `getKbFlex(f,d)`, `getKbFlexiOS()`.
- **Device-size bucketing — CSS media query orqali (`cm`)**:
  - `assets/HtmlGui/app/view/workspace/items/WSSceneView.js:8` — `(max-width:17cm)→0.8`, `(max-width:20cm)→0.9`, else `1.3`; effective scale = `getScreenPixelDensity() / factor`; `sceneWidth/Height = 4000×4000`; `MIN_ZOOM=0.4`, `MAX_ZOOM=4`; `autoScaleForScreenSize:false`.
  - `assets/HtmlGui/app/view/physical/PhysicalSceneView.js:8` — `0.6 / 0.75 / 1.3`.
  - `assets/HtmlGui/app/view/physical/PhysicalView.js:8` — `setCurrentZoom(0.45 / 0.8 / 1)`.
  - `assets/HtmlGui/app/view/contextualMenus/BaseButtonCircle.js:8` — `scaleForMediaSize()=0.6`, tugma o'lchamlari `70*0.6/60*0.6`.
  - `assets/HtmlGui/app/view/connection/ConnectionView.js:8` — `font-size:.6em`; `ActionbarOverflowMenu.js:8` va `FileOptionsMenu.js:8` — dialog `width:"80%"`.
- `assets/HtmlGui/app/view/workspace/Workspace.js:8` — `autoScaleForScreenSize:true` (lekin bu flag faqat `WSSceneView.js` da bir marta uchraydi va **o'qilmaydi** — dead code).
- `assets/HtmlGui/app/view/MainView.js:8` — `Ext.Container` `layout:{type:"card"}`, item'lar: `actionBar → splash → workspace → configView → startupOptions → connectionView → physicalView`; `blocking_preventTouchscreenInput` va `ptMobileUtil`.
- `assets/HtmlGui/app/view/ConfigView.js:8` — soft-keyboard paytida `getKbFlex(5, 0.25)` bilan panel flex moslashuvi.

### 8.8 UI assetlari
- `assets/art/Toolbar/` (28 fayl): `gTBBackground.png`, `iTBNew/Open/Save/Print/Info/Help`, `iTBCopy/Paste/CustomDevice/Palette`, `iTBUndo/Redo/ZoomIn/Out/Reset`, `iTBActivityWizard.png`, `iTBChallengeMode.png` (+ `_disabled`).
- `assets/art/PhysicalView/`, `assets/art/ComponentBox/`, `assets/art/Background/`, `assets/art/Workspace/` (clock, GeoIcons, Logical ikonkalar), `assets/backgrounds/logical/` va `intercity/`.
- `assets/HtmlGui/resources/images/actionbar/Workspace-01.svg`, `resources/html/images/*`, `resources/images/deviceContextButtons/Physical-01.svg`.
- `assets/HtmlGui/resources/css/main.css:1-9` — faqat `overflow-x:hidden`, `-webkit-overflow-scrolling:touch`, `webBrowserMask` (fixed o'lcham yo'q).
- `assets/HtmlGui/touch/resources/css/base.css:18` — Sencha baseline `html,body{width:100%;height:100%}` + `.x-fullscreen`.

### 8.9 Resource o'lchamlari
- `res/values/dimens.xml` — faqat Facebook/Box; PT o'lchamlari yo'q.
- `res/values/styles.xml`, `styles-v11`, `colors`, `attrs`, `drawables` — PT-specific sizing yo'q.
- **`res/drawable/splash.png` — 1600×900 px**, density/orientation variant'siz (barcha telefonlarda chetlab suratga kengaytiriladi).
- `assets/art/splash.png` va `assets/art/app.png` — 10×10 px stub.
- `assets/PT.conf` — 2,341 B binary `data` blob (opaque/encrypted ko'rinishda).

---

## 9. [NEXT STEP] — Telefon ekraniga moslashtirish uchun aniq tahlil qilinadigan fayllar

1. **`assets/HtmlGui/app.html:1-60`** — `<meta viewport>` **yo'q**; `cm` media-query bucketing CSS px viewport'ga bog'liq. Birinchi tekshiriladigan nuqta.
2. **`assets/HtmlGui/app/view/workspace/items/WSSceneView.js:8`** — `calcViewZoomDeviceSizeFactor()` (`17cm→0.8, 20cm→0.9, else 1.3`, keyin `density/factor`), `MIN_ZOOM=0.4`, doimiy **4000×4000** scene.
3. **`assets/HtmlGui/app/view/physical/PhysicalSceneView.js:8`** va **`PhysicalView.js:8`** — `0.6/0.75/1.3` va `setCurrentZoom(0.45/0.8/1)`.
4. **`assets/HtmlGui/scripts/Utils.js:8`** — `getVisibleScreenTop()` → `getVisibleScreenHeight()` nomi mos kelmaydi (latent null/crash); `getKbFlex` DPI/klaviatura mantiqi.
5. **`assets/HtmlGui/app/view/ConfigView.js:8`** — `getKbFlex(5, 0.25)` bilan klaviatura paytida layout flex.
6. **`assets/HtmlGui/app/view/MainView.js:8`** + **`assets/HtmlGui/app/view/actionBar/*`** — card layout va action bar panel sig'imi.
7. **`assets/HtmlGui/resources/css/main.css:1-9`** — viewport/inset-safe padding yo'q.
8. **`smali/org/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1.smali`** — `:124-126` (immersive yo'q), `:415-474` (wide-viewport yo'q), `:653-820` (`loadUrl`), JS bridge'lar.
9. **`smali/org/qtproject/qt5/android/QtNative.smali:1564-1587`** — **DPI 120.0 clamp** (native va HTML o'lcham mosligini buzishi mumkin).
10. **`smali/org/qtproject/qt5/android/QtLayout.smali:338-385`** — `onSizeChanged` → `setApplicationDisplayMetrics` (geometriya shu yerdan uzatiladi).
11. **`smali/org/qtproject/qt5/android/QtActivityDelegate.smali`** — `:2527-2580`/`:2735-2801` `handleOrientationChanged`, `:3618+` `setFullScreen`, `:5974-5996` `updateFullScreen`.
12. **`AndroidManifest.xml:4,24,34-40`** — `sensorLandscape` lock, `configChanges`, `load_local_libs`, splash; cutout/inset compensation yo'q.
13. **`res/values/arrays.xml:5,7`** — `libq*.so:plugins/...` mapping va `qt_libs` ro'yxati; runtime'da shu mapping'ni tekshirish kerak.
14. **`res/values/styles.xml:7`**, **`res/drawable/splash.png`** (1600×900, variant yo'q), **`res/layout/main.xml:2-4`** (fullscreen `fill_parent`, cutout-safe emas).
15. **`libPacketTracer.so`** — faqat native qism kerak bo'lsa: `Util::CPTMobileUtil` IPC, `CWorkspace::resizeEvent`, `CLogicalResizeIndicatorItem`, `AppDpiStyle`. Lekin ekranni moslashtirishning asosiy nuqtasi — **native .so emas, HTML/JS + smali**.
16. **Bonus (debug):** `AndroidManifest.xml:76-85` — **jshybugger** (`debugPort 8888`, `proxy 192.168.0.1:8080`) → HTML/JS'ni brauzer orqali jonli debug qilish mumkin.

---

## 10. Appendix: ishlatilgan buyruqlar (faqat o'qish)

```bash
# Metadata
stat -c '%n|%s bytes' lib/armeabi-v7a/*.so
file lib/armeabi-v7a/*.so
numfmt --to=iec-i --format='%.2f' <bytes...>

# ELF header + dynamic
for f in lib/armeabi-v7a/*.so; do readelf -h "$f"; readelf -d "$f"; done
for f in lib/armeabi-v7a/*.so; do readelf -dW "$f" | rg 'NEEDED|SONAME|RUNPATH|RPATH'; done
for f in lib/armeabi-v7a/*.so; do readelf -AW "$f" | rg 'Tag_CPU_name|Tag_CPU_arch'; done
for f in lib/armeabi-v7a/*.so; do s=$(readelf -dW "$f" | rg -o 'Library soname: \[[^]]+\]'); printf '%s -> %s\n' "$f" "${s:-<no DT_SONAME>}"; done
for f in lib/armeabi-v7a/*.so; do readelf -dW "$f" | rg -oP 'Shared library: \[\K[^\]]+'; done | sort -u

# Symbols
for f in lib/armeabi-v7a/*.so; do n=$(nm -D --defined-only "$f" 2>/dev/null | wc -l); printf '%s|%s\n' "$f" "$n"; done
nm -D --defined-only --format=posix libPacketTracer.so | cut -d' ' -f2 | cut -c1 | sort | uniq -c
nm -D --undefined-only libQt5Gui.so | rg 'gl[A-Z]'
nm -D --defined-only libPacketTracer.so | c++filt | rg -m 45 ' (CWorkspace|...|AppDpiStyle|CPTMobileUtil|...)::'

# Strings
strings -a -n 5 libPacketTracer.so | rg -i 'packet tracer|cisco|workspace|toolbar|render|opengl|...|resize|touch'
strings -a -n 4 libQt5Core.so | rg '5.5.1'

# Duplicate detection
nm -D lib/armeabi-v7a/libqminimalegl.so | md5sum
nm -D lib/armeabi-v7a/libplugins_platforms_libqminimalegl.so | md5sum
```

**Hech biri faylni o'zgartirmadi yoki o'chirmadi.**

---

## 11. Yakuniy xulosa

Cisco Packet Tracer Mobile — bu **monolith native engine** (`libPacketTracer.so`, 25.98 MiB, 80k+ export) + **Qt 5.5.1 runtime** + **Android bridge** (`qtforandroid` platform plugin, JNI/EGL/GLES2) + **TLS** (OpenSSL 1.0.2i) + **Sencha Touch HTML front-end** (`assets/HtmlGui`, Android WebView) kompozitsiyasidan iborat.

- **Telefon ekraniga moslashtirishning asosiy joyi** — `assets/HtmlGui/**` (JS/CSS), `PacketTracerFrontEndBridge*.smali` (WebView + immersive + viewport) va DPI/display metrics (`QtNative/QtLayout/QtActivityDelegate.smali`).
- **Native `.so`larni patch qilish kerak emas** (ular stripped, monolith, va front-end ulanish nuqtasi `ptMobileUtil` IPC orqali); `libPacketTracer.so` faqat engine/IPC sifatida qoladi.
- **Metriklar** (viewport meta, 120 dpi clamp, `cm` media-query bucketing, 4000×4000 scene, `MIN_ZOOM=0.4`) — bular birgalikda telefon ekranidagi kichik/kesilgan workspace, noto'g'ri zoom va past touch target muammosini tushuntiradi.

---

## 12. LONG-PRESS → RADIAL (CONTEXTUAL) MENYU: EKRANDAN CHIQISH SABABI (TO'LIQ ROOT-CAUSE)

### 12.1 Nima topildi

Long-press boshqaruvi **native `.so` ichida emas**, balki **Sencha Touch WebView JS/CSS qatlamida**. Komponentlar:

| Fayl | Rol |
|---|---|
| `assets/HtmlGui/app/view/contextualMenus/BaseButtonCircle.js` | radial menyuning geometriya/joylashuv mantiqi (asosiy fayl) |
| `assets/HtmlGui/app/view/contextualMenus/ContextualMenuLayer.js` | layer BG joylashuvi (`offsetWithActionBar`) |
| `assets/HtmlGui/app/view/workspace/WSInputModeGeneric.js` | long-press → menyuni ochish triggeri |
| `assets/HtmlGui/resources/css/basic_contextual_button.css` | tugma o'lchamlari (media-query bucketing) |
| `assets/HtmlGui/resources/images/contextualMenuBGs/` | `circle_100x100.svg`, `layer1.png/.svg`, `layer2.svg` |

Trigger `WSInputModeGeneric.js` **ichida** (`onTapItem` / item bo'yicha `Ext.create(...)` → `loadCenterScreen(...)`):

- `HtmlGui.view.contextualMenus.ClusterButtonCircle`
- `HtmlGui.view.contextualMenus.DeviceButtonCircle`
- `HtmlGui.view.contextualMenus.ShapeButtonCircle`
- `HtmlGui.view.contextualMenus.WorkspaceShapeModeButtonCircle`
- `HtmlGui.view.contextualMenus.WorkspaceCircleMenu` (+ `storeTouchPos(c,b)`)
- `HtmlGui.view.contextualMenus.WorkspaceMultiselectCircleMenu`

Workspace orqali router: `Workspace.js` → `loadContextualMenu(a)` → `getContextualM().loadMenu(a)`, `clearStoredContextualMenus()`, `popContextualMenu()` (`WorkspaceMenuManager` stack).

### 12.2 Asosiy geometriya kodi (`BaseButtonCircle.js`, minified, funksiya nomlari saqlangan)

```js
scaleForMediaSize: function () {
    var a = 1;
    if (window.matchMedia("(min-width: 0cm) and (max-width: 17cm)").matches) { a = 0.6 }
    return a
}
buttonSizeTextOn:    function () { return 70 * this.scaleForMediaSize() }   // 70 yoki 42 px
buttonSizeTextUnder: function () { return 60 * this.scaleForMediaSize() }   // 60 yoki 36 px
minCircleRadPercent: function () { return 0.4 }
maxCircleRadPercent: function () { return 0.95 }
m_buttonOffsetFromEdge: 0.5
setOuterSize: function (a) { this.m_defaultOuter = a * this.scaleForMediaSize() }

getCenter: function (b) {
    var c = this.getScreenCenter();
    return { x: c.x, y: c.y, r: this.getSmallestDim() * b };     // r = min(w,h)/2 * radPercent
}
getSmallestDim: function () {
    if (screen.width < screen.innerWidth) {                        // <-- BUG: screen.innerWidth = undefined
        a.x = screen.innerHeight / 2; a.y = screen.innerWidth / 2;
    } else {
        a.y = window.innerHeight / 2; a.x = window.innerWidth / 2;
    }
    return min(a.x, a.y);
}
getScreenCenter: function () {
    var b = this.getActionBarOffset();                             // MainView actionBar
    ... a.y = (window.innerHeight - b.y) / 2; a.x = (window.innerWidth - b.x) / 2 ...
}
getLargestScreenDim: function () {
    var a = screen.width;                                          // <-- DEVICE px
    if (a < screen.height)   { a = screen.height }                 // <-- DEVICE px
    if (a < screen.innerWidth) { a = screen.innerWidth }           // undefined -> shart doim false
    if (a < screen.innerHeight){ a = screen.innerHeight }          // undefined -> shart doim false
    return a
}
createContainer: function () {
    // kvadrat konteyner: width = height = getLargestScreenDim(), centered:true, modal:true
}
createButtonTextCircleC: function (...) {
    var g = (2 * Math.PI) / d.length;                              // burchak = 360° / tugmalar soni
    var e = this.getButtonSize(k) / 2;
    ... rotatePoint(0, -(rad - e/3), g * button) ...
    // har tugma markaz + radius vektorida joylanadi
}
getRadiusButtonFit: function (b, a) { return b - (this.getButtonSize(a) * this.m_buttonOffsetFromEdge) }
getRadNeededForButtonCount: function (f, c) { /* min(0.4..0.95) ga siqish */ }
```

CSS (`basic_contextual_button.css:1-59`) — **CSS kommentarii dastur tabletaga mo'ljallanganini ochiq aytadi**:

```css
/* Nexus 7 2013 and everything else larger than the phone.  This is the base size. */
@media (max-width: 200cm) { .basic_contextual_button { width:70px; height:70px; } }

/* Phone. Scale .6 of base device size*/
@media (max-width: 17cm)  { .basic_contextual_button { width:42px; height:42px; } }
```

### 17cm necha px?

CSS spec: `1cm = 96/2.54 = 37.795px` → **17cm ≈ 642.5 CSS px**, `200cm ≈ 7559px` (doim mos).

### 12.3 Ekrandan chiqishning 4 ta aniq sababi

**1) "Telefon" bucketing chegarasi 642 px bilan cheklangan (eng asosiy sabab).**
`scaleForMediaSize()` faqat `max-width: 17cm` (≈642px) shartida `0.6` qaytaradi. Kichik telefon **landscape** rejimida CSS viewport kengligi odatda **667–932 dp** bo'ladi (misol uchun 667dp Galaxy, 736dp Pixel, 800dp+ planshet) → 642px dan katta → **`scale = 1`, ya'ni telefon ham "planshet" kabi 70px tugma + 500px konteyner oladi**. Aylananing vertikal chegarasi `min(w,h)/2 = h/2` ga teng, ya'ni 360dp balandlikda r ≤ 180px, lekin konteyner/tugma hisobi 500px/70px dan kelib chiqadi → **vertikal ravishda ekrandan tashqariga chiqadi**.

**2) `screen.*` (device px) va `window.inner*` (CSS px) aralashib ketgan.**
`getLargestScreenDim()` konteyner o'lchamini `screen.width/screen.height` (device px, masalan 1080/1920) dan oladi, `getScreenCenter()`/`getCenter()` esa `window.innerWidth/innerHeight` (CSS px, masalan 360/640) dan. Konsekvensiya: `centered:true` konteyner `1080×1080` px bo'ladi, ichidagi tugmalar esa 360px koordinatali tizimda hisoblanadi → markazlanish buziladi, tugmalar konteyner/chetdan tashqariga suriladi. Bu mos emaslik DPI 120 clamp bilan yanada kuchayadi (CSS px va device px oralig'ida ~1.5–2x koeffitsient).

**3) `screen.innerWidth` / `screen.innerHeight` — mavjud emas (undefined).**
`screen` obyektida `innerWidth` yo'q (u `window`'da). `getSmallestDim()` dagi `if (screen.width < screen.innerWidth)` → `n < undefined` → `NaN` solishtiruvi → **doim `false`** → else tarmoq ishlaydi (bu tasodifan "ishlaydi"). Lekin bu kod mantiqi buzilgan: `screen.innerWidth` qo'yilgan muhitda o'qlar o'zaro **almashtiriladi** (x/y swap), ya'ni geometriya butunlay noto'g'ri bo'ladi. Bu kodni `screen.width < screen.availWidth` yoki oddiy `window.innerWidth` bilan tuzatish kerak.

**4) ActionBar offset faqat vertikal hisobga olinadi + `m_addActionBarAdjustsScreen:false`.**
`getScreenCenter()` da `a.y = (window.innerHeight - b.y)/2` — actionBar balandligi markazni yuqoriga suradi, lekin konteyner `getLargestScreenDim()` kvadrati `centered:true` bo'lgani uchun pastki chekavada yana ham ko'proq chiqadi. `getActionBarOffset()` `Ext.ComponentMgr.get("MainView")` dan olinadi; MainView topilmasa `{0,0}` qaytadi (bezak xatosi).

**Qo'shimcha (5): `<meta name="viewport">` `app.html:1-60` da umuman yo'q.**
Bu holda Android WebView layout viewport'ni o'zi tanlaydi; CSS px va dp o'rtasidagi nisbat device DPR'ga bog'liq bo'ladi, ya'ni `matchMedia("...17cm")` natijasi qurilmadan qurilmaga o'zgaradi → boshqa telefonlarda boshqa o'chamlarda chiqadi (shu sababli muammat faqat ba'zi qurilamalarda ko'rinadi).

**Qo'shimcha (6): tugmalar soniga qarab radius siqiladi, lekin konteyner o'lchami qat'iy.**
`getRadNeededForButtonCount()` radiusni `0.4..0.95` oralig'ida siqadi, ammo `createContainer()` o'lchami (`getLargestScreenDim()`) hech qachon moslashmaydi → ko'p tugmali menyular (Device/Packet/Shape) eng ko'p chiqadi.

### 12.4 Aniq tuzatish nuqtalari (priority bo'yicha)

| # | Fayl | Tuzatish |
|---|---|---|
| 1 | `assets/HtmlGui/app.html:6-8` | `<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, viewport-fit=cover" />` qo'shish — CSS px/dp nisbati barqaror bo'ladi, `matchMedia` ishonchli bo'ladi |
| 2 | `BaseButtonCircle.js` `getSmallestDim()` | `screen.innerWidth/innerHeight` → `window.innerWidth/innerHeight`; `screen.width < screen.innerWidth` shartini olib tashlash; faqat `window` o'lchamlaridan foydalanish |
| 3 | `BaseButtonCircle.js` `getLargestScreenDim()` | `screen.*` (device px) → `Math.max(window.innerWidth, window.innerHeight)` (CSS px) — konteyner va ichki koordinata tizimi bir xil bo'ladi |
| 4 | `BaseButtonCircle.js` `scaleForMediaSize()` | `17cm` chegarasini **kichikroq qilib, ikki bosqichli qilish**, masalan `max-width: 30cm` (≈1134px) → `0.7`, `max-width: 20cm` (≈756px) → `0.6`, yoki CSS px'ga o'tish (`max-width: 640px`); eng to'g'ri variant — ekran **kichikligiga** (`min(innerWidth, innerHeight)`) qarab o'lchamlash, chunki aylana vertikal chegarasi `h/2` bilan bog'langan |
| 5 | `BaseButtonCircle.js` `getCenter()` + `maxCircleRadPercent()` | Radius'ni ekran o'lchamiga nisbatan cheklash: `r = min(getSmallestDim()*radPercent, (getSmallestDim() - getButtonSize()) )`, ya'ni `r + buttonSize/2 <= min(w,h)/2` sharti bajarilishi kafolatlanadi |
| 6 | `Basic_contextual_button.css` | `@media (max-width: 17cm)`/`200cm` ni CSS px'ga o'tkazish va telefon landscape (keng, past) uchun alohida qoida qo'shish (matn sig'ishi uchun `overflow`, `font-size`) |
| 7 | `BaseButtonCircle.js` `getScreenCenter()` | `m_addActionBarAdjustsScreen` ni radial menyular uchun `true` qilish yoki konteynerni markazlash o'rniga `top:0,left:0` + aniq `left/top` hisoblash; `getActionBarOffset()` `MainView` topilmasa `0` ga qaytargandan keyin `undefined` tekshirish |
| 8 | `BaseButtonCircle.js` `createButtonTextCircleC()` | Tugma matni `max-width`/`text-overflow` bilan cheklash; `rotatePoint` natijasida `x`/`y` ga konteyner chegarasidan kichik bo'ladigan `clamp` qo'shish |
| 9 | `smali/org/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1.smali:415-474` | `setUseWideViewPort(false)` + `setLoadWithOverviewMode(false)` (hozir `wide viewport` yo'q) — CSS px va native DP mosligini saqlash |
| 10 | `smali/org/qtproject/qt5/android/QtNative.smali:1564-1587` | DPI `120.0` clamp — HTML o'lchamlarini native'dan kichik qiladi; CSS px'ga o'tkazilgandan keyin bu clamp moslashni buzishi mumkin (tekshirish) |

### 12.5 Tekshirish/nazorat usuli

1. HTML/JS jonli debug **yoqiq** — `AndroidManifest.xml:76-85` da `jshybugger` (port 8888) va `proxy 192.168.0.1:8080` bor.
2. `adb forward tcp:8888 tcp:8888`, keyin desktop Chrome da `chrome://inspect` orqali `file:///.../assets/HtmlGui/app.html` ni ochish.
3. `window.matchMedia("(max-width: 17cm)").matches`, `window.innerWidth/innerHeight`, `screen.width/height`, `devicePixelRatio` ni konsolda chiqarish — 12.3-dagi 1/2/3-sabablar bir-biriga qanchaligi aniq ko'rinadi.
4. `BaseButtonCircle.js` ning `getSmallestDim()` va `getScreenCenter()` funksiyalariga `console.log` qo'yib, `getCenter(0.95)` natijasining `r + buttonSize/2 <= min(innerWidth,innerHeight)/2` shartini tekshirish.

### 12.6 Xulosa (qisqa)

Aylana ekrandan chiqishining sababi **bitta mantiqiy xato emas, balki `cm` media-query bilan "planshet/telefon" ajratishining 642px chegarasidan** (`17cm`) boshlanadi va `screen.*` (device px) ↔ `window.inner*` (CSS px) aralashuvi hamda `<meta viewport>` yo'qligi bilan kuchayadi. Tuzatish **native `.so`da emas**, balki `assets/HtmlGui/app.html` + `BaseButtonCircle.js` + `basic_contextual_button.css` (+ ixtiyoriy smali) da.

### 12.7 Diagnostika fayli va simulyatsiya natijalari (tekshirilgan)

`DIAG_viewport.html` — `BaseButtonCircle.js` dagi funksiyalar **so'zma-so'z** nusxalanib, o'z-o'zini hisoblaydigan sahifa. Telefondagi brauzerda ochilishi uchun mo'ljallangan (qayta APK yig'ish talab qilmaydi):

```
file:///storage/emulated/0/ApkEditor/Cisco_packet_tracker_mobile/DIAG_viewport.html
```

Sahifa 5 ta jadval beradi: ekran o'lchamlari · base kod funksiyalarining natijalari · media-query mosligi · vizual simulyatsiya · xulosa va tuzatish tartibi.

Node.js harness bilan 5 ta tipik ekranda tekshirildi (`node --check` + `eval`):

| Viewport (CSS px) | `scaleForMediaSize()` | `getLargestScreenDim()` | `getCenter(0.95).r + btn/2` | Chegara | Natija |
|---|---|---|---|---|---|
| 800×480 (Nexus 7 landscape) | **1** (telefon deb hisoblanmadi) | 1280 px (×1.6) | 263 px | 240 px | **+23 px chiqdi** |
| 736×360 (Pixel landscape) | **1** | 1440 px (×2) | 206 px | 180 px | **+26 px chiqdi** |
| 667×375 (compact landscape) | **1** | 1334 px (×2) | 213 px | 187.5 px | **+25.6 px chiqdi** |
| 640×360 (chevaraviy landscape) | 0.6 | 1280 px (×2) | 192 px | 180 px | **+12 px chiqdi** |
| 360×640 (portrait) | 0.6 | 1280 px (×2) | 192 px | 180 px | **+12 px chiqdi** |

**Muhim xulosa:** muammо **barcha** ekranlarda mavjud, `17cm` chegarasi bajarilgan holatda ham (640×360 → scale 0.6, lekin yana 12 px chiqadi). Demak:
- `17cm → 30cm` chegarasini ko'tarish **yolg'iz yetarli EMAS**;
- **Radius clamp** (`getCenter`) va **`screen.*` → `window.inner*`** tuzatishlari **shart**;
- `getLargestScreenDim()` natijasi har doim viewportdan **1.6–2× katta** (DPR ga teng) — bu markazlanish buzilishining asosiy sababi.

### 12.8 HAQIQIY QURILMA O'LCHOVLARI (foydalanuvchi brauzerda, portrait)

| O'lcham | Qiymat |
|---|---|
| `window.innerWidth × innerHeight` | **980 × 1908 CSS px** |
| `screen.width × screen.height` | **320 × 712** |
| `devicePixelRatio` | 3.375 (320 × 3.375 = 1080, 712 × 3.375 ≈ 2400 → real qurilma 1080×2400) |
| `visualViewport` | 979.85 × 1907.99, **scale 0.3266** |
| `CSS 17cm` | 642.52 px |
| `scaleForMediaSize()` | **1** (980 > 642.5 → telefon "planshet" deb hisoblandi, 70px tugma) |
| `getLargestScreenDim()` | **712** (viewport 980×1908 ga nisbatan ×0.7 / ×0.4) |
| `getSmallestDim()` | 490 |
| `getScreenCenter()` | x=490, y=954 |
| `getCenter(0.95).r` | 465.5 |
| `r + btn/2` | 500.5 vs chegara 490 → **+10.5 px** |

**Muhim xulosa — DPR muammosi emas.** `screen.width/height` bu yerda allaqachon **dp** (CSS px bilan bir xil birlik), lekin `window.innerWidth = 980` — bu **viewport meta yo'qligi tufayli Android WebView/Chrome'ning 980px li default layout viewport'i**, `initial-scale = 320/980 = 0.3266`. Ya'ni:

- brauzer/standalone WebView da: `window.inner*` (980) va `screen.*` (320) — **ikki xil koordinata tizimi**, konteyner 712px, bolalar esa 980px tizimida joylanadi → konteyner parent ichida markazlashganda tugmalar konteynerdan ham tashqariga chiqadi;
- haqiqiy ilova (Qt WebView) da bu qiymat **boshqacha bo'lishi mumkin** (`setUseWideViewPort` yo'qligi sabab `width=device-width` xulqi bo'lishi mumkin) — shuning uchun o'lchov **ilova ichida** qilingan.

### 12.9 Yana bitta topilgan muammo — JS va CSS o'lchamlari mos emas

`BaseButtonCircle.js:createButtonTextOnButton()` faqat `cls:[..., getButtonCss(h)]` va `setLeft/setTop` qo'yadi — **`setWidth`/`setHeight` yo'q**. Ya'ni tugma o'lchamini **faqat CSS** belgilaydi, JS `getButtonSize()` esa faqat geometriya hisobi uchun ishlatiladi.

`resources/css/basic_contextual_button.css` da:

| Klass | Baza (`max-width: 200cm`) | Telefon (`max-width: 17cm`) | JS hisobi |
|---|---|---|---|
| `.basic_contextual_button` | 70px | 42px | `70*scale` / `buttonSizeTextOn()` ✓ |
| `.basic_contextual_button_text_under` | 55px | **YO'Q** | JS `60*scale` (telefonda 36px) ✗ **mos emas** |
| `.workspace_button_inner` | 60px | 36px | alohida JS yo'q |
| `.basic_contextual_button_panel` | 90px | **YO'Q** | alohida JS yo'q |

Ya'ni `m_buttonTextOnButton = false` bo'lgan radial menyularda JS 36px ni hisoblaydi, foydalanuvchi esa 55px li tugmani ko'radi → geometriya bilan chizilgan radius va ko'rinadigan tugma mos kelmaydi.

### 12.10 Ilova ichidagi o'lchov (inline overlay — hozir qo'shildi)

`assets/HtmlGui/app.html` `<head>` ichiga **ko'rsatuvchi-only** overlay skripti qo'shildi: ekranning yuqori chap burchagida har 700 ms da yangilanadigan matn chiqadi (`#ptDiagOverlay`, `pointer-events: none` — long-press ishlashiga tegmaydi).

Ko'rsatiladigan ma'lumotlar: `inner*`, `documentElement.client*`, `screen.*` (jumladan mavjud bo'lmagan `screen.innerWidth/Height`), `devicePixelRatio`, `visualViewport` + `scale`, `orientation`, `viewportMeta` kontenti, `matchMedia` natijalari (17cm/20cm/30cm/640px/480px), `min(w,h)/2`, `max(w,h)` va — ilova yuklangan bo'lsa — **`BaseButtonCircle` ning jonli qiymatlari**: `scaleForMediaSize()`, `getLargestScreenDim()`, `getSmallestDim()`, `getScreenCenter()`, `getButtonSize()`, `m_defaultOuter`, `getCenter(0.95)` va `r + btn/2` vs chegara taqqoslash natijasi.

**O'chirish:** `assets/HtmlGui/app.html.orig` ni `app.html` ga qaytarish.
