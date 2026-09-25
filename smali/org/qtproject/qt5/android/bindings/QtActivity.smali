.class public Lorg/qtproject/qt5/android/bindings/QtActivity;
.super Landroid/app/Activity;
.source "QtActivity.java"


# static fields
.field private static boxSharedPreferences:Landroid/content/SharedPreferences;

.field private static mClient:Lcom/box/boxandroidlibv2/BoxAndroidClient;

.field private static mDBApi:Lcom/dropbox/client2/DropboxAPI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/client2/DropboxAPI",
            "<",
            "Lcom/dropbox/client2/android/AndroidAuthSession;",
            ">;"
        }
    .end annotation
.end field

.field private static m_qtActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/qtproject/qt5/android/bindings/QtActivity;",
            ">;"
        }
    .end annotation
.end field

.field private static twitterSharedPreferences:Landroid/content/SharedPreferences;

.field public static vContext:Landroid/content/Context;


# instance fields
.field public APPLICATION_PARAMETERS:Ljava/lang/String;

.field public ENVIRONMENT_VARIABLES:Ljava/lang/String;

.field public QT_ANDROID_DEFAULT_THEME:Ljava/lang/String;

.field public QT_ANDROID_THEMES:[Ljava/lang/String;

.field private keymap:Landroid/view/KeyCharacterMap;

.field private m_PTfrontEndBridge:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

.field private m_activityInfo:Landroid/content/pm/ActivityInfo;

.field private m_classLoader:Ldalvik/system/DexClassLoader;

.field m_configOptions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_ignoreFirst:Z

.field private m_ministroConnection:Landroid/content/ServiceConnection;

.field private m_qtLibs:[Ljava/lang/String;

.field private m_repository:Ljava/lang/String;

.field private m_sources:[Ljava/lang/String;

.field private m_webView:Landroid/webkit/WebView;

.field public webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 192
    sput-object v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_qtActivity:Ljava/lang/ref/WeakReference;

    .line 193
    sput-object v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->vContext:Landroid/content/Context;

    .line 199
    sput-object v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->mDBApi:Lcom/dropbox/client2/DropboxAPI;

    .line 202
    sput-object v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->mClient:Lcom/box/boxandroidlibv2/BoxAndroidClient;

    .line 203
    sput-object v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->boxSharedPreferences:Landroid/content/SharedPreferences;

    .line 206
    sput-object v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->twitterSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 274
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 144
    iput-object v2, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->webView:Landroid/webkit/WebView;

    .line 146
    iput-object v2, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->APPLICATION_PARAMETERS:Ljava/lang/String;

    .line 151
    const-string v0, "QT_USE_ANDROID_NATIVE_STYLE=0\tQT_USE_ANDROID_NATIVE_DIALOGS=1\t"

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    .line 159
    iput-object v2, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->QT_ANDROID_THEMES:[Ljava/lang/String;

    .line 171
    iput-object v2, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->QT_ANDROID_DEFAULT_THEME:Ljava/lang/String;

    .line 175
    iput-object v2, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    .line 176
    iput-object v2, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_classLoader:Ldalvik/system/DexClassLoader;

    .line 177
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "https://download.qt-project.org/ministro/android/qt5/qt-5.2"

    aput-object v1, v0, v3

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_sources:[Ljava/lang/String;

    .line 178
    const-string v0, "default"

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_repository:Ljava/lang/String;

    .line 189
    iput-object v2, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_qtLibs:[Ljava/lang/String;

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_configOptions:Ljava/util/HashMap;

    .line 196
    iput-object v2, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_PTfrontEndBridge:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    .line 197
    iput-boolean v4, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_ignoreFirst:Z

    .line 212
    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->keymap:Landroid/view/KeyCharacterMap;

    .line 436
    new-instance v0, Lorg/qtproject/qt5/android/bindings/QtActivity$3;

    invoke-direct {v0, p0}, Lorg/qtproject/qt5/android/bindings/QtActivity$3;-><init>(Lorg/qtproject/qt5/android/bindings/QtActivity;)V

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_ministroConnection:Landroid/content/ServiceConnection;

    .line 276
    const-string v0, "QPTA"

    const-string v1, "Activity construct"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_qtActivity:Ljava/lang/ref/WeakReference;

    .line 279
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_63

    .line 280
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Theme_Light"

    aput-object v1, v0, v3

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->QT_ANDROID_THEMES:[Ljava/lang/String;

    .line 281
    const-string v0, "Theme_Light"

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->QT_ANDROID_DEFAULT_THEME:Ljava/lang/String;

    .line 290
    :goto_62
    return-void

    .line 283
    :cond_63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_7c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-gt v0, v1, :cond_7c

    .line 284
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Theme_Holo_Light"

    aput-object v1, v0, v3

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->QT_ANDROID_THEMES:[Ljava/lang/String;

    .line 285
    const-string v0, "Theme_Holo_Light"

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->QT_ANDROID_DEFAULT_THEME:Ljava/lang/String;

    goto :goto_62

    .line 287
    :cond_7c
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Theme_DeviceDefault_Light"

    aput-object v1, v0, v3

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->QT_ANDROID_THEMES:[Ljava/lang/String;

    .line 288
    const-string v0, "Theme_DeviceDefault_Light"

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->QT_ANDROID_DEFAULT_THEME:Ljava/lang/String;

    goto :goto_62
.end method

.method static synthetic access$000(Lorg/qtproject/qt5/android/bindings/QtActivity;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/qtproject/qt5/android/bindings/QtActivity;

    .prologue
    .line 142
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_qtLibs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/qtproject/qt5/android/bindings/QtActivity;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/qtproject/qt5/android/bindings/QtActivity;

    .prologue
    .line 142
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_sources:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/qtproject/qt5/android/bindings/QtActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/qtproject/qt5/android/bindings/QtActivity;

    .prologue
    .line 142
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_repository:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/qtproject/qt5/android/bindings/QtActivity;)Landroid/content/ServiceConnection;
    .registers 2
    .param p0, "x0"    # Lorg/qtproject/qt5/android/bindings/QtActivity;

    .prologue
    .line 142
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_ministroConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$400(Lorg/qtproject/qt5/android/bindings/QtActivity;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lorg/qtproject/qt5/android/bindings/QtActivity;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->loadApplication(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$500(Lorg/qtproject/qt5/android/bindings/QtActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/qtproject/qt5/android/bindings/QtActivity;

    .prologue
    .line 142
    invoke-direct {p0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->ministroNotFound()V

    return-void
.end method

.method public static androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;
    .registers 1

    .prologue
    .line 265
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_qtActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/qtproject/qt5/android/bindings/QtActivity;

    return-object v0
.end method

.method private cleanCacheIfNecessary(Ljava/lang/String;J)Z
    .registers 12
    .param p1, "pluginsPrefix"    # Ljava/lang/String;
    .param p2, "packageVersion"    # J

    .prologue
    .line 586
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "cache.version"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 588
    .local v4, "versionFile":Ljava/io/File;
    const-wide/16 v0, 0x0

    .line 589
    .local v0, "cacheVersion":J
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 591
    :try_start_26
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 592
    .local v3, "inputStream":Ljava/io/DataInputStream;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    .line 593
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_37} :catch_45

    .line 599
    .end local v3    # "inputStream":Ljava/io/DataInputStream;
    :cond_37
    :goto_37
    cmp-long v5, v0, p2

    if-eqz v5, :cond_4a

    .line 600
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lorg/qtproject/qt5/android/bindings/QtActivity;->deleteRecursively(Ljava/io/File;)V

    .line 601
    const/4 v5, 0x1

    .line 603
    :goto_44
    return v5

    .line 594
    :catch_45
    move-exception v2

    .line 595
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_37

    .line 603
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4a
    const/4 v5, 0x0

    goto :goto_44
.end method

.method private cleanOldCacheIfNecessary(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "oldLocalPrefix"    # Ljava/lang/String;
    .param p2, "localPrefix"    # Ljava/lang/String;

    .prologue
    .line 687
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 688
    .local v0, "newCache":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_80

    .line 690
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "plugins/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 691
    .local v2, "oldPluginsCache":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 692
    invoke-direct {p0, v2}, Lorg/qtproject/qt5/android/bindings/QtActivity;->deleteRecursively(Ljava/io/File;)V

    .line 696
    :cond_32
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "imports/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 697
    .local v1, "oldImportsCache":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 698
    invoke-direct {p0, v1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->deleteRecursively(Ljava/io/File;)V

    .line 702
    :cond_59
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "qml/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 703
    .local v3, "oldQmlCache":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_80

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_80

    .line 704
    invoke-direct {p0, v3}, Lorg/qtproject/qt5/android/bindings/QtActivity;->deleteRecursively(Ljava/io/File;)V

    .line 707
    .end local v1    # "oldImportsCache":Ljava/io/File;
    .end local v2    # "oldPluginsCache":Ljava/io/File;
    .end local v3    # "oldQmlCache":Ljava/io/File;
    :cond_80
    return-void
.end method

.method private copyAsset(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 543
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 544
    .local v1, "destinationFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 560
    :goto_b
    return-void

    .line 547
    :cond_c
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 548
    .local v4, "parentDirectory":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_19

    .line 549
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 551
    :cond_19
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 553
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 554
    .local v0, "assetsManager":Landroid/content/res/AssetManager;
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 555
    .local v2, "inputStream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 556
    .local v3, "outputStream":Ljava/io/OutputStream;
    invoke-static {v2, v3}, Lorg/qtproject/qt5/android/bindings/QtActivity;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 558
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 559
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_b
.end method

.method private static copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 531
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 534
    .local v0, "buffer":[B
    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "count":I
    if-lez v1, :cond_f

    .line 535
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    .line 536
    :cond_f
    return-void
.end method

.method private static createBundledBinary(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "destination"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 566
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 567
    .local v0, "destinationFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 582
    :goto_b
    return-void

    .line 570
    :cond_c
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 571
    .local v3, "parentDirectory":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_19

    .line 572
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 574
    :cond_19
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 576
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 577
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 578
    .local v2, "outputStream":Ljava/io/OutputStream;
    invoke-static {v1, v2}, Lorg/qtproject/qt5/android/bindings/QtActivity;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 580
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 581
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_b
.end method

.method private deleteRecursively(Ljava/io/File;)V
    .registers 7
    .param p1, "directory"    # Ljava/io/File;

    .prologue
    .line 672
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 673
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_1f

    .line 674
    array-length v3, v1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v3, :cond_1c

    aget-object v0, v1, v2

    .line 675
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 676
    invoke-direct {p0, v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->deleteRecursively(Ljava/io/File;)V

    .line 674
    :goto_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 678
    :cond_18
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_15

    .line 681
    .end local v0    # "file":Ljava/io/File;
    :cond_1c
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 683
    :cond_1f
    return-void
.end method

.method private downloadUpgradeMinistro(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 485
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 486
    .local v0, "downloadDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 487
    const v1, 0x1040013

    new-instance v2, Lorg/qtproject/qt5/android/bindings/QtActivity$4;

    invoke-direct {v2, p0}, Lorg/qtproject/qt5/android/bindings/QtActivity$4;-><init>(Lorg/qtproject/qt5/android/bindings/QtActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 501
    const v1, 0x1040009

    new-instance v2, Lorg/qtproject/qt5/android/bindings/QtActivity$5;

    invoke-direct {v2, p0}, Lorg/qtproject/qt5/android/bindings/QtActivity$5;-><init>(Lorg/qtproject/qt5/android/bindings/QtActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 507
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 508
    return-void
.end method

.method private extractBundledPluginsAndImports(Ljava/lang/String;)V
    .registers 25
    .param p1, "pluginsPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 610
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .local v9, "libs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 614
    .local v3, "dataDir":Ljava/lang/String;
    const-wide/16 v14, -0x1

    .line 616
    .local v14, "packageVersion":J
    :try_start_24
    invoke-virtual/range {p0 .. p0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 617
    .local v12, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-wide v14, v12, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_34} :catch_3f

    .line 622
    .end local v12    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_34
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v15}, Lorg/qtproject/qt5/android/bindings/QtActivity;->cleanCacheIfNecessary(Ljava/lang/String;J)Z

    move-result v19

    if-nez v19, :cond_44

    .line 668
    :cond_3e
    return-void

    .line 618
    :catch_3f
    move-exception v5

    .line 619
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34

    .line 626
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_44
    new-instance v18, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "cache.version"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 628
    .local v18, "versionFile":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    .line 629
    .local v13, "parentDirectory":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_6d

    .line 630
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 632
    :cond_6d
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->createNewFile()Z

    .line 634
    new-instance v11, Ljava/io/DataOutputStream;

    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 635
    .local v11, "outputStream":Ljava/io/DataOutputStream;
    invoke-virtual {v11, v14, v15}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 636
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V

    .line 640
    const-string v7, "android.app.bundled_in_lib_resource_id"

    .line 641
    .local v7, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 642
    .local v8, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_119

    .line 643
    invoke-virtual/range {p0 .. p0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 645
    .local v10, "list":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v20, v0

    const/16 v19, 0x0

    :goto_cb
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_119

    aget-object v2, v10, v19

    .line 646
    .local v2, "bundledImportBinary":Ljava/lang/String;
    const-string v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 647
    .local v17, "split":[Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "lib/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    aget-object v22, v17, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 648
    .local v16, "sourceFileName":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v22, v17, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 649
    .local v4, "destinationFileName":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-static {v0, v4}, Lorg/qtproject/qt5/android/bindings/QtActivity;->createBundledBinary(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    add-int/lit8 v19, v19, 0x1

    goto :goto_cb

    .line 655
    .end local v2    # "bundledImportBinary":Ljava/lang/String;
    .end local v4    # "destinationFileName":Ljava/lang/String;
    .end local v10    # "list":[Ljava/lang/String;
    .end local v16    # "sourceFileName":Ljava/lang/String;
    .end local v17    # "split":[Ljava/lang/String;
    :cond_119
    const-string v7, "android.app.bundled_in_assets_resource_id"

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3e

    .line 657
    invoke-virtual/range {p0 .. p0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 659
    .restart local v10    # "list":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v20, v0

    const/16 v19, 0x0

    :goto_14e
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_3e

    aget-object v6, v10, v19

    .line 660
    .local v6, "fileName":Ljava/lang/String;
    const-string v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 661
    .restart local v17    # "split":[Ljava/lang/String;
    const/16 v21, 0x0

    aget-object v16, v17, v21

    .line 662
    .restart local v16    # "sourceFileName":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v22, v17, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 663
    .restart local v4    # "destinationFileName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v4}, Lorg/qtproject/qt5/android/bindings/QtActivity;->copyAsset(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    add-int/lit8 v19, v19, 0x1

    goto :goto_14e
.end method

.method public static getActivityContext()Landroid/content/Context;
    .registers 1

    .prologue
    .line 270
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->vContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getBoxClient()Lcom/box/boxandroidlibv2/BoxAndroidClient;
    .registers 1

    .prologue
    .line 249
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->mClient:Lcom/box/boxandroidlibv2/BoxAndroidClient;

    return-object v0
.end method

.method public static getBoxSharedPreferences()Landroid/content/SharedPreferences;
    .registers 1

    .prologue
    .line 233
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->boxSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static getDBApi()Lcom/dropbox/client2/DropboxAPI;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/client2/DropboxAPI",
            "<",
            "Lcom/dropbox/client2/android/AndroidAuthSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->mDBApi:Lcom/dropbox/client2/DropboxAPI;

    return-object v0
.end method

.method public static getTwitterSharedPreferences()Landroid/content/SharedPreferences;
    .registers 1

    .prologue
    .line 224
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->twitterSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private loadApplication(Landroid/os/Bundle;)V
    .registers 16
    .param p1, "loaderParams"    # Landroid/os/Bundle;

    .prologue
    .line 357
    :try_start_0
    const-string v9, "error.code"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 358
    .local v1, "errorCode":I
    if-eqz v1, :cond_7b

    .line 359
    const/4 v9, 0x1

    if-ne v1, v9, :cond_15

    .line 360
    const-string v9, "error.message"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/qtproject/qt5/android/bindings/QtActivity;->downloadUpgradeMinistro(Ljava/lang/String;)V

    .line 434
    .end local v1    # "errorCode":I
    :cond_14
    :goto_14
    return-void

    .line 365
    .restart local v1    # "errorCode":I
    :cond_15
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 366
    .local v2, "errorDialog":Landroid/app/AlertDialog;
    const-string v9, "error.message"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 367
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x104000a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lorg/qtproject/qt5/android/bindings/QtActivity$1;

    invoke-direct {v10, p0}, Lorg/qtproject/qt5/android/bindings/QtActivity$1;-><init>(Lorg/qtproject/qt5/android/bindings/QtActivity;)V

    invoke-virtual {v2, v9, v10}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 373
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_3e

    goto :goto_14

    .line 417
    .end local v1    # "errorCode":I
    .end local v2    # "errorDialog":Landroid/app/AlertDialog;
    :catch_3e
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 419
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 420
    .restart local v2    # "errorDialog":Landroid/app/AlertDialog;
    iget-object v9, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "android.app.fatal_error_msg"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_172

    .line 421
    iget-object v9, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "android.app.fatal_error_msg"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 425
    :goto_64
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x104000a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lorg/qtproject/qt5/android/bindings/QtActivity$2;

    invoke-direct {v10, p0}, Lorg/qtproject/qt5/android/bindings/QtActivity$2;-><init>(Lorg/qtproject/qt5/android/bindings/QtActivity;)V

    invoke-virtual {v2, v9, v10}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 431
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_14

    .line 378
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "errorDialog":Landroid/app/AlertDialog;
    .restart local v1    # "errorCode":I
    :cond_7b
    :try_start_7b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v4, "libs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "android.app.bundled_libs_resource_id"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a5

    .line 380
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v11, "android.app.bundled_libs_resource_id"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 382
    :cond_a5
    const/4 v3, 0x0

    .line 383
    .local v3, "libName":Ljava/lang/String;
    iget-object v9, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "android.app.lib_name"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c1

    .line 384
    iget-object v9, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "android.app.lib_name"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 385
    const-string v9, "main.library"

    invoke-virtual {p1, v9, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_c1
    const-string v9, "bundled.libraries"

    invoke-virtual {p1, v9, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 389
    const-string v9, "necessitas.api.level"

    const/4 v10, 0x2

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 392
    new-instance v10, Ldalvik/system/DexClassLoader;

    const-string v9, "dex.path"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v9, "outdex"

    const/4 v12, 0x0

    .line 393
    invoke-virtual {p0, v9, v12}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    const-string v9, "lib.path"

    .line 394
    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_144

    const-string v9, "lib.path"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 395
    :goto_ed
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    invoke-direct {v10, v11, v12, v9, v13}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v10, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_classLoader:Ldalvik/system/DexClassLoader;

    .line 398
    iget-object v9, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_classLoader:Ldalvik/system/DexClassLoader;

    const-string v10, "loader.class.name"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 399
    .local v5, "loaderClass":Ljava/lang/Class;
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    .line 400
    .local v7, "qtLoader":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "loadApplication"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Landroid/app/Activity;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-class v13, Ljava/lang/ClassLoader;

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-class v13, Landroid/os/Bundle;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 404
    .local v6, "perpareAppMethod":Ljava/lang/reflect/Method;
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_classLoader:Ldalvik/system/DexClassLoader;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object p1, v9, v10

    invoke-virtual {v6, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_146

    .line 405
    new-instance v9, Ljava/lang/Exception;

    const-string v10, ""

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v9

    .line 394
    .end local v5    # "loaderClass":Ljava/lang/Class;
    .end local v6    # "perpareAppMethod":Ljava/lang/reflect/Method;
    .end local v7    # "qtLoader":Ljava/lang/Object;
    :cond_144
    const/4 v9, 0x0

    goto :goto_ed

    .line 407
    .restart local v5    # "loaderClass":Ljava/lang/Class;
    .restart local v6    # "perpareAppMethod":Ljava/lang/reflect/Method;
    .restart local v7    # "qtLoader":Ljava/lang/Object;
    :cond_146
    invoke-static {v7}, Lorg/qtproject/qt5/android/bindings/QtApplication;->setQtActivityDelegate(Ljava/lang/Object;)V

    .line 410
    if-eqz v3, :cond_14e

    .line 411
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 413
    :cond_14e
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "startApplication"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 414
    .local v8, "startAppMethod":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_14

    .line 415
    new-instance v9, Ljava/lang/Exception;

    const-string v10, ""

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_172} :catch_3e

    .line 423
    .end local v1    # "errorCode":I
    .end local v3    # "libName":Ljava/lang/String;
    .end local v4    # "libs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "loaderClass":Ljava/lang/Class;
    .end local v6    # "perpareAppMethod":Ljava/lang/reflect/Method;
    .end local v7    # "qtLoader":Ljava/lang/Object;
    .end local v8    # "startAppMethod":Ljava/lang/reflect/Method;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "errorDialog":Landroid/app/AlertDialog;
    :cond_172
    const-string v9, "Fatal error, your application can\'t be started."

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_64
.end method

.method private loadConfigOptions()V
    .registers 1

    .prologue
    .line 300
    return-void
.end method

.method private ministroNotFound()V
    .registers 4

    .prologue
    .line 512
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 514
    .local v0, "errorDialog":Landroid/app/AlertDialog;
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "android.app.ministro_not_found_msg"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 515
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "android.app.ministro_not_found_msg"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 519
    :goto_22
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/qtproject/qt5/android/bindings/QtActivity$6;

    invoke-direct {v2, p0}, Lorg/qtproject/qt5/android/bindings/QtActivity$6;-><init>(Lorg/qtproject/qt5/android/bindings/QtActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 525
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 526
    return-void

    .line 517
    :cond_39
    const-string v1, "Can\'t find Ministro service.\nThe application can\'t start."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_22
.end method

.method public static setBoxClient(Lcom/box/boxandroidlibv2/BoxAndroidClient;)V
    .registers 1
    .param p0, "client"    # Lcom/box/boxandroidlibv2/BoxAndroidClient;

    .prologue
    .line 241
    sput-object p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->mClient:Lcom/box/boxandroidlibv2/BoxAndroidClient;

    .line 242
    return-void
.end method

.method public static setBoxSharedPreferences(Landroid/content/SharedPreferences;)V
    .registers 1
    .param p0, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 237
    sput-object p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->boxSharedPreferences:Landroid/content/SharedPreferences;

    .line 238
    return-void
.end method

.method public static setDBApi(Lcom/dropbox/client2/DropboxAPI;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/client2/DropboxAPI",
            "<",
            "Lcom/dropbox/client2/android/AndroidAuthSession;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "api":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<Lcom/dropbox/client2/android/AndroidAuthSession;>;"
    sput-object p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->mDBApi:Lcom/dropbox/client2/DropboxAPI;

    .line 220
    return-void
.end method

.method public static setTwitterSharedPreferences(Landroid/content/SharedPreferences;)V
    .registers 1
    .param p0, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 228
    sput-object p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->twitterSharedPreferences:Landroid/content/SharedPreferences;

    .line 229
    return-void
.end method

.method private startApp(Z)V
    .registers 26
    .param p1, "firstStart"    # Z

    .prologue
    .line 712
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "android.app.qt_sources_resource_id"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_38

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "android.app.qt_sources_resource_id"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 714
    .local v20, "resourceId":I
    invoke-virtual/range {p0 .. p0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_sources:[Ljava/lang/String;

    .line 717
    .end local v20    # "resourceId":I
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "android.app.repository"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_64

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "android.app.repository"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_repository:Ljava/lang/String;

    .line 720
    :cond_64
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "android.app.qt_libs_resource_id"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_9c

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "android.app.qt_libs_resource_id"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 722
    .restart local v20    # "resourceId":I
    invoke-virtual/range {p0 .. p0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_qtLibs:[Ljava/lang/String;

    .line 725
    .end local v20    # "resourceId":I
    :cond_9c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "android.app.use_local_qt_libs"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3b9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "android.app.use_local_qt_libs"

    .line 726
    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3b9

    .line 727
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 730
    .local v13, "libraryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v15, "/data/local/tmp/qt/"

    .line 731
    .local v15, "localPrefix":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "android.app.libs_prefix"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_f7

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "android.app.libs_prefix"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 734
    :cond_f7
    move-object/from16 v19, v15

    .line 736
    .local v19, "pluginsPrefix":Ljava/lang/String;
    const/4 v4, 0x0

    .line 737
    .local v4, "bundlingQtLibs":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "android.app.bundle_local_qt_libs"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_169

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "android.app.bundle_local_qt_libs"

    .line 738
    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_169

    .line 739
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 740
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "qt-reserved-files/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 741
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v15, v1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->cleanOldCacheIfNecessary(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->extractBundledPluginsAndImports(Ljava/lang/String;)V

    .line 743
    const/4 v4, 0x1

    .line 746
    :cond_169
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_qtLibs:[Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1b0

    .line 747
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_172
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_qtLibs:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_1b0

    .line 748
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "lib/lib"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_qtLibs:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v8

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".so"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    add-int/lit8 v8, v8, 0x1

    goto :goto_172

    .line 755
    .end local v8    # "i":I
    :cond_1b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "android.app.load_local_libs"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_240

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "android.app.load_local_libs"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 757
    .local v7, "extraLibs":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v22, v0

    const/16 v21, 0x0

    :goto_1e1
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_240

    aget-object v12, v7, v21

    .line 758
    .local v12, "lib":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_213

    .line 759
    const-string v23, "lib/"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_216

    .line 760
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    :cond_213
    :goto_213
    add-int/lit8 v21, v21, 0x1

    goto :goto_1e1

    .line 762
    :cond_216
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_232
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_232} :catch_233

    goto :goto_213

    .line 826
    .end local v4    # "bundlingQtLibs":Z
    .end local v7    # "extraLibs":[Ljava/lang/String;
    .end local v12    # "lib":Ljava/lang/String;
    .end local v13    # "libraryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "localPrefix":Ljava/lang/String;
    .end local v19    # "pluginsPrefix":Ljava/lang/String;
    :catch_233
    move-exception v6

    .line 827
    .local v6, "e":Ljava/lang/Exception;
    const-string v21, "QPTA"

    const-string v22, "Can\'t create main activity"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Lorg/qtproject/qt5/android/bindings/PTJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 829
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_23f
    :goto_23f
    return-void

    .line 768
    .restart local v4    # "bundlingQtLibs":Z
    .restart local v13    # "libraryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15    # "localPrefix":Ljava/lang/String;
    .restart local v19    # "pluginsPrefix":Ljava/lang/String;
    :cond_240
    :try_start_240
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 769
    .local v5, "dexPaths":Ljava/lang/String;
    const-string v21, "path.separator"

    const-string v22, ":"

    invoke-static/range {v21 .. v22}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 770
    .local v18, "pathSeparator":Ljava/lang/String;
    if-nez v4, :cond_2c9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "android.app.load_local_jars"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2c9

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "android.app.load_local_jars"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 772
    .local v11, "jarFiles":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v22, v0

    const/16 v21, 0x0

    :goto_280
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_2c9

    aget-object v10, v11, v21

    .line 773
    .local v10, "jar":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_2c6

    .line 774
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_2ab

    .line 775
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 776
    :cond_2ab
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 772
    :cond_2c6
    add-int/lit8 v21, v21, 0x1

    goto :goto_280

    .line 781
    .end local v10    # "jar":Ljava/lang/String;
    .end local v11    # "jarFiles":[Ljava/lang/String;
    :cond_2c9
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 782
    .local v14, "loaderParams":Landroid/os/Bundle;
    const-string v21, "error.code"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 783
    const-string v21, "dex.path"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const-string v21, "loader.class.name"

    const-string v22, "org.qtproject.qt5.android.QtActivityDelegate"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "android.app.static_init_classes"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_320

    .line 786
    const-string v21, "static.init.classes"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v22, v0

    const-string v23, "android.app.static_init_classes"

    .line 787
    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v23, ":"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 786
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 789
    :cond_320
    const-string v21, "native.libraries"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 790
    const-string v21, "environment.variables"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\tQML2_IMPORT_PATH="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/qml\tQML_IMPORT_PATH="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/imports\tQT_PLUGIN_PATH="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/plugins"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->APPLICATION_PARAMETERS:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_391

    .line 796
    const-string v21, "application.parameters"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->APPLICATION_PARAMETERS:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    :cond_38a
    :goto_38a
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/qtproject/qt5/android/bindings/QtActivity;->loadApplication(Landroid/os/Bundle;)V

    goto/16 :goto_23f

    .line 798
    :cond_391
    invoke-virtual/range {p0 .. p0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 799
    .local v9, "intent":Landroid/content/Intent;
    if-eqz v9, :cond_38a

    .line 800
    const-string v21, "applicationArguments"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 801
    .local v17, "parameters":Ljava/lang/String;
    if-eqz v17, :cond_38a

    .line 802
    const-string v21, "application.parameters"

    const/16 v22, 0x20

    const/16 v23, 0x9

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b8
    .catch Ljava/lang/Exception; {:try_start_240 .. :try_end_3b8} :catch_233

    goto :goto_38a

    .line 811
    .end local v4    # "bundlingQtLibs":Z
    .end local v5    # "dexPaths":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v13    # "libraryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "loaderParams":Landroid/os/Bundle;
    .end local v15    # "localPrefix":Ljava/lang/String;
    .end local v17    # "parameters":Ljava/lang/String;
    .end local v18    # "pathSeparator":Ljava/lang/String;
    .end local v19    # "pluginsPrefix":Ljava/lang/String;
    :cond_3b9
    :try_start_3b9
    new-instance v21, Landroid/content/Intent;

    const-class v22, Lorg/kde/necessitas/ministro/IMinistro;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_ministroConnection:Landroid/content/ServiceConnection;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lorg/qtproject/qt5/android/bindings/QtActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v21

    if-nez v21, :cond_23f

    .line 814
    new-instance v21, Ljava/lang/SecurityException;

    const-string v22, ""

    invoke-direct/range {v21 .. v22}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_3e2
    .catch Ljava/lang/Exception; {:try_start_3b9 .. :try_end_3e2} :catch_3e2

    .line 816
    :catch_3e2
    move-exception v6

    .line 817
    .restart local v6    # "e":Ljava/lang/Exception;
    if-eqz p1, :cond_416

    .line 818
    :try_start_3e5
    const-string v16, "This application requires Ministro service. Would you like to install it?"

    .line 819
    .local v16, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "android.app.ministro_needed_msg"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_40d

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "android.app.ministro_needed_msg"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 821
    :cond_40d
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->downloadUpgradeMinistro(Ljava/lang/String;)V

    goto/16 :goto_23f

    .line 823
    .end local v16    # "msg":Ljava/lang/String;
    :cond_416
    invoke-direct/range {p0 .. p0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->ministroNotFound()V
    :try_end_419
    .catch Ljava/lang/Exception; {:try_start_3e5 .. :try_end_419} :catch_233

    goto/16 :goto_23f
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1857
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_1b

    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->dispatchGenericMotionEvent:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1b

    .line 1858
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->dispatchGenericMotionEvent:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1860
    :goto_1a
    return v0

    :cond_1b
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1a
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    .line 842
    const-string v3, "QPTA"

    const-string v5, "KeyInput: dispatch key event"

    invoke-static {v3, v5}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_b6

    .line 845
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v4, :cond_b6

    .line 848
    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->keymap:Landroid/view/KeyCharacterMap;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v1

    .line 849
    .local v1, "keyCode":I
    const-string v0, ""

    .line 850
    .local v0, "key":Ljava/lang/String;
    const-string v3, "QPTA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KeyInput: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_webView:Landroid/webkit/WebView;

    if-nez v3, :cond_54

    .line 854
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v3

    const v5, 0x7f0a0038

    invoke-virtual {v3, v5}, Lorg/qtproject/qt5/android/bindings/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iput-object v3, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_webView:Landroid/webkit/WebView;

    .line 856
    :cond_54
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v5, 0x13

    if-ne v3, v5, :cond_5f

    .line 858
    const-string v0, "specialKeys_btnUp"

    .line 859
    const/4 v1, -0x1

    .line 861
    :cond_5f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v5, 0x14

    if-ne v3, v5, :cond_6a

    .line 863
    const-string v0, "specialKeys_btnDown"

    .line 864
    const/4 v1, -0x1

    .line 866
    :cond_6a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v5, 0x43

    if-ne v3, v5, :cond_75

    .line 868
    const-string v0, "specialKeys_btnBackspace"

    .line 869
    const/4 v1, -0x1

    .line 871
    :cond_75
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v5, 0x79

    if-ne v3, v5, :cond_80

    .line 873
    const-string v0, "specialKeys_btnBreak"

    .line 874
    const/4 v1, -0x1

    .line 876
    :cond_80
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v5, 0x6

    if-ne v3, v5, :cond_8a

    .line 878
    const-string v0, "specialKeys_btnEnd"

    .line 879
    const/4 v1, -0x1

    .line 881
    :cond_8a
    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_webView:Landroid/webkit/WebView;

    if-eqz v3, :cond_b6

    .line 883
    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_webView:Landroid/webkit/WebView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "javascript:sendPhysicalKbInput(\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\',"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ");"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 889
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "keyCode":I
    :cond_b6
    sget-object v3, Lorg/qtproject/qt5/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v3, :cond_ed

    sget-object v3, Lorg/qtproject/qt5/android/bindings/QtApplication;->dispatchKeyEvent:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_ed

    .line 890
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_db

    .line 891
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 892
    .local v2, "startMain":Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 893
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 894
    invoke-virtual {p0, v2}, Lorg/qtproject/qt5/android/bindings/QtActivity;->startActivity(Landroid/content/Intent;)V

    move v3, v4

    .line 901
    .end local v2    # "startMain":Landroid/content/Intent;
    :goto_da
    return v3

    .line 897
    :cond_db
    sget-object v3, Lorg/qtproject/qt5/android/bindings/QtApplication;->dispatchKeyEvent:Ljava/lang/reflect/Method;

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_da

    .line 901
    :cond_ed
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_da
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1760
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_1b

    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->dispatchKeyShortcutEvent:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1b

    .line 1761
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->dispatchKeyShortcutEvent:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1763
    :goto_1a
    return v0

    :cond_1b
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1a
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 913
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_1b

    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->dispatchPopulateAccessibilityEvent:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1b

    .line 914
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->dispatchPopulateAccessibilityEvent:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 916
    :goto_1a
    return v0

    :cond_1b
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_1a
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 927
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_1b

    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->dispatchTouchEvent:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1b

    .line 928
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->dispatchTouchEvent:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 930
    :goto_1a
    return v0

    :cond_1b
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1a
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 941
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_1b

    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->dispatchTrackballEvent:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1b

    .line 942
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->dispatchTrackballEvent:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 944
    :goto_1a
    return v0

    :cond_1b
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1a
.end method

.method public getConfigOption(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 293
    if-eqz p1, :cond_13

    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_configOptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 294
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_configOptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 295
    :goto_12
    return-object v0

    :cond_13
    const-string v0, ""

    goto :goto_12
.end method

.method public getFrontEndBridge()Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_PTfrontEndBridge:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    return-object v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 1774
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_11

    .line 1775
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 1776
    :cond_11
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 1786
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_11

    .line 1787
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 1788
    :cond_11
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 955
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 957
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_29

    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->onActivityResult:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_29

    .line 958
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->onActivityResult:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    :goto_28
    return-void

    .line 961
    :cond_29
    const v0, 0xf3ee

    if-ne p1, v0, :cond_31

    .line 962
    invoke-direct {p0, v3}, Lorg/qtproject/qt5/android/bindings/QtActivity;->startApp(Z)V

    .line 963
    :cond_31
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_28
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .registers 7
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 974
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_1f

    .line 975
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 976
    :cond_1f
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .registers 4
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 1798
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_11

    .line 1799
    invoke-super {p0, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 1800
    :cond_11
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .prologue
    .line 1677
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_e

    .line 1678
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 1679
    :cond_e
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 1689
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_e

    .line 1690
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1691
    :cond_e
    return-void
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "childActivity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 987
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_14

    .line 988
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 989
    :cond_14
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 999
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_11

    .line 1000
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1001
    :cond_11
    return-void
.end method

.method public onContentChanged()V
    .registers 2

    .prologue
    .line 1011
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_e

    .line 1012
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 1013
    :cond_e
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1023
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 1024
    .local v0, "res":Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_17

    .line 1025
    iget-object v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1027
    :goto_16
    return v1

    :cond_17
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_16
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1038
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_11

    .line 1039
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 1040
    :cond_11
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 1050
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1052
    invoke-static {p0}, Lorg/qtproject/qt5/android/bindings/PTJLog;->init(Lorg/qtproject/qt5/android/bindings/QtActivity;)V

    .line 1054
    invoke-direct {p0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->loadConfigOptions()V

    .line 1057
    :try_start_b
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iput-object v2, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1058
    const-string v2, "android.R$style"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_27
    if-ge v2, v5, :cond_55

    aget-object v1, v4, v2

    .line 1059
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    iget-object v7, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v7

    if-ne v6, v7, :cond_4a

    .line 1060
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    iput-object v6, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->QT_ANDROID_THEMES:[Ljava/lang/String;

    .line 1061
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->QT_ANDROID_DEFAULT_THEME:Ljava/lang/String;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4a} :catch_4d

    .line 1058
    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 1064
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :catch_4d
    move-exception v0

    .line 1065
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1066
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->finish()V

    .line 1105
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_54
    :goto_54
    return-void

    .line 1071
    :cond_55
    :try_start_55
    const-string v2, "android.R$style"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iget-object v4, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->QT_ANDROID_DEFAULT_THEME:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/qtproject/qt5/android/bindings/QtActivity;->setTheme(I)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_69} :catch_91

    .line 1076
    :goto_69
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xa

    if-le v2, v4, :cond_9b

    .line 1078
    :try_start_6f
    const-class v2, Landroid/view/Window;

    const-string v4, "FEATURE_ACTION_BAR"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/qtproject/qt5/android/bindings/QtActivity;->requestWindowFeature(I)Z
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_7f} :catch_96

    .line 1086
    :goto_7f
    sget-object v2, Lorg/qtproject/qt5/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v2, :cond_9f

    sget-object v2, Lorg/qtproject/qt5/android/bindings/QtApplication;->onCreate:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_9f

    .line 1087
    sget-object v2, Lorg/qtproject/qt5/android/bindings/QtApplication;->onCreate:Ljava/lang/reflect/Method;

    new-array v4, v9, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-static {v2, v4}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_54

    .line 1072
    :catch_91
    move-exception v0

    .line 1073
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_69

    .line 1079
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_96
    move-exception v0

    .line 1080
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7f

    .line 1083
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9b
    invoke-virtual {p0, v9}, Lorg/qtproject/qt5/android/bindings/QtActivity;->requestWindowFeature(I)Z

    goto :goto_7f

    .line 1091
    :cond_9f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tQT_ANDROID_THEME="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->QT_ANDROID_DEFAULT_THEME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/\tQT_ANDROID_THEME_DISPLAY_DPI="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1092
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    .line 1094
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_54

    .line 1096
    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "android.app.splash_screen_drawable"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_100

    .line 1098
    const-string v2, "QPTA"

    const-string v3, "attempting to show splash"

    invoke-static {v2, v3}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "android.app.splash_screen_drawable"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1101
    :cond_100
    invoke-direct {p0, v9}, Lorg/qtproject/qt5/android/bindings/QtActivity;->startApp(Z)V

    goto/16 :goto_54
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 6
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 1111
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_17

    .line 1112
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1113
    :cond_17
    return-void
.end method

.method public onCreateDescription()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 1123
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 1124
    .local v0, "res":Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_10

    .line 1125
    iget-object v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    .line 1127
    :goto_f
    return-object v1

    :cond_10
    invoke-super {p0}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_f
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .param p1, "id"    # I

    .prologue
    .line 1138
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 1139
    .local v0, "res":Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_17

    .line 1140
    iget-object v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Landroid/app/Dialog;

    .line 1142
    :goto_16
    return-object v1

    :cond_17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_16
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1730
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 1731
    .local v0, "res":Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_1a

    .line 1732
    iget-object v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Landroid/app/Dialog;

    .line 1734
    :goto_19
    return-object v1

    :cond_1a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_19
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1153
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 1154
    .local v0, "res":Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_17

    .line 1155
    iget-object v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1157
    :goto_16
    return v1

    :cond_17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_16
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 7
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1168
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 1169
    .local v0, "res":Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_1e

    .line 1170
    iget-object v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1172
    :goto_1d
    return v1

    :cond_1e
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v1

    goto :goto_1d
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .registers 6
    .param p1, "featureId"    # I

    .prologue
    .line 1184
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 1185
    .local v0, "res":Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_17

    .line 1186
    iget-object v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    .line 1188
    :goto_16
    return-object v1

    :cond_17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v1

    goto :goto_16
.end method

.method public onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .registers 6
    .param p1, "outBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1199
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 1200
    .local v0, "res":Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_1a

    .line 1201
    iget-object v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1203
    :goto_19
    return v1

    :cond_1a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result v1

    goto :goto_19
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 8
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1810
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 1811
    .local v0, "res":Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_1c

    .line 1812
    iget-object v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    .line 1814
    :goto_1b
    return-object v1

    :cond_1c
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    goto :goto_1b
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1214
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 1215
    .local v0, "res":Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_19

    .line 1216
    iget-object v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    .line 1218
    :goto_18
    return-object v1

    :cond_19
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    goto :goto_18
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 1229
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1230
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    .line 1231
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 1701
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_e

    .line 1702
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 1703
    :cond_e
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1871
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_1b

    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->onGenericMotionEvent:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1b

    .line 1872
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->onGenericMotionEvent:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1874
    :goto_1a
    return v0

    :cond_1b
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1a
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1238
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_22

    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->onKeyDown:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_22

    .line 1239
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->onKeyDown:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1241
    :goto_21
    return v0

    :cond_22
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_21
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1713
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_22

    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->onKeyLongPress:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_22

    .line 1714
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->onKeyLongPress:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1716
    :goto_21
    return v0

    :cond_22
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_21
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1253
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_29

    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->onKeyMultiple:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_29

    .line 1254
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->onKeyMultiple:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1256
    :goto_28
    return v0

    :cond_29
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_28
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1825
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_22

    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->onKeyShortcut:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_22

    .line 1826
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->onKeyShortcut:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1828
    :goto_21
    return v0

    :cond_22
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_21
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1267
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_22

    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->onKeyDown:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_22

    .line 1268
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->onKeyUp:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1270
    :goto_21
    return v0

    :cond_22
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_21
.end method

.method public onLowMemory()V
    .registers 2

    .prologue
    .line 1281
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_e

    .line 1282
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 1283
    :cond_e
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 7
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1289
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 1290
    .local v0, "res":Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_1e

    .line 1291
    iget-object v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1293
    :goto_1d
    return v1

    :cond_1e
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    goto :goto_1d
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 7
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1304
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 1305
    .local v0, "res":Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_1e

    .line 1306
    iget-object v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1308
    :goto_1d
    return v1

    :cond_1e
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v1

    goto :goto_1d
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 1319
    const-string v1, "QPTA"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "z99 - QtActivity::onNewIntent() - with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5e

    const-string v0, "no intent"

    :goto_1a
    invoke-static {v1, v0}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    const-string v1, "QPTA"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "z99 - QtActivity::onNewIntent() - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getFrontEndBridge()Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_76

    const-string v0, "no PTFB"

    :goto_3a
    invoke-static {v1, v0}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_4d

    .line 1323
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1325
    :cond_4d
    invoke-virtual {p0, p1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->setIntent(Landroid/content/Intent;)V

    .line 1327
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getFrontEndBridge()Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 1328
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getFrontEndBridge()Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->processIntent(Landroid/content/Intent;Z)V

    .line 1329
    :cond_5d
    return-void

    .line 1319
    :cond_5e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 1320
    :cond_76
    const-string v0, "has PTFB"

    goto :goto_3a
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1339
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 1340
    .local v0, "res":Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_17

    .line 1341
    iget-object v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1343
    :goto_16
    return v1

    :cond_17
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_16
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1354
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_11

    .line 1355
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 1356
    :cond_11
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1366
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_18

    .line 1367
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1368
    :cond_18
    return-void
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1378
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1379
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    .line 1380
    const-string v0, "QPTA"

    const-string v1, "Activity paused"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    :try_start_16
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->instance()Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->suspendSession()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1d} :catch_1e

    .line 1384
    :goto_1d
    return-void

    .line 1383
    :catch_1e
    move-exception v0

    goto :goto_1d
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 1390
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 1391
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    .line 1392
    const-string v0, "QPTA"

    const-string v1, "Activity post create"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    return-void
.end method

.method protected onPostResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1399
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 1400
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    .line 1401
    const-string v0, "QPTA"

    const-string v1, "Activity post resume"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 1408
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_18

    .line 1409
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1410
    :cond_18
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1745
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_1b

    .line 1746
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 1747
    :cond_1b
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1423
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_PTfrontEndBridge:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    if-eqz v1, :cond_4

    .line 1427
    :cond_4
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 1428
    .local v0, "res":Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_1b

    .line 1429
    iget-object v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1431
    :goto_1a
    return v1

    :cond_1b
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_1a
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 8
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1442
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 1443
    .local v0, "res":Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_21

    .line 1444
    iget-object v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1446
    :goto_20
    return v1

    :cond_21
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    goto :goto_20
.end method

.method protected onRestart()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1457
    const-string v0, "QPTA"

    const-string v1, "Activity restart"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 1459
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    .line 1460
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 1466
    const-string v0, "QPTA"

    const-string v1, "Activity restore instance state "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_1e

    .line 1468
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1469
    :cond_1e
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1479
    const-string v0, "QPTA"

    const-string v1, "Activity resume"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->instance()Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->resumeSession()V

    .line 1481
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1482
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    .line 1483
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1489
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 1490
    .local v0, "res":Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_e

    .line 1491
    iget-object v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    .line 1493
    :goto_d
    return-object v1

    :cond_e
    invoke-super {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    goto :goto_d
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 1504
    const-string v0, "QPTA"

    const-string v1, "Activity save instance state "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_1e

    .line 1506
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1507
    :cond_1e
    return-void
.end method

.method public onSearchRequested()Z
    .registers 3

    .prologue
    .line 1518
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 1519
    .local v0, "res":Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_14

    .line 1520
    iget-object v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1522
    :goto_13
    return v1

    :cond_14
    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v1

    goto :goto_13
.end method

.method protected onStart()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1533
    const-string v0, "QPTA"

    const-string v1, "Activity started"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1535
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    .line 1537
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_29

    .line 1538
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/qtproject/qt5/android/bindings/QtActivity$7;

    invoke-direct {v1, p0}, Lorg/qtproject/qt5/android/bindings/QtActivity$7;-><init>(Lorg/qtproject/qt5/android/bindings/QtActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1572
    :cond_29
    return-void
.end method

.method protected onStop()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1578
    const-string v0, "QPTA"

    const-string v1, "Activity stopped"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1580
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    .line 1581
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .registers 6
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .prologue
    .line 1587
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_18

    .line 1588
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 1589
    :cond_18
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1599
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_1b

    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->onTouchEvent:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1b

    .line 1600
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->onTouchEvent:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1602
    :goto_1a
    return v0

    :cond_1b
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1a
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1613
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_1b

    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->onTrackballEvent:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1b

    .line 1614
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->onTrackballEvent:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1616
    :goto_1a
    return v0

    :cond_1b
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1a
.end method

.method public onUserInteraction()V
    .registers 2

    .prologue
    .line 1627
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_e

    .line 1628
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 1629
    :cond_e
    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 2

    .prologue
    .line 1639
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_e

    .line 1640
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 1641
    :cond_e
    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1651
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_11

    .line 1652
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1653
    :cond_11
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .param p1, "hasFocus"    # Z

    .prologue
    .line 1663
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_15

    .line 1664
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 1665
    :cond_15
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 5
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 1839
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 1840
    .local v0, "res":Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_13

    .line 1841
    iget-object v1, v0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Landroid/view/ActionMode;

    .line 1843
    :goto_12
    return-object v1

    :cond_13
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    goto :goto_12
.end method

.method public storeFrontEndBridge(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)V
    .registers 2
    .param p1, "bridge"    # Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    .prologue
    .line 255
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/QtActivity;->m_PTfrontEndBridge:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    .line 257
    return-void
.end method

.method public super_dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1864
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 906
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public super_dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1767
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public super_dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 920
    invoke-virtual {p0, p1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->super_dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public super_dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 934
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public super_dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 948
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public super_onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 1779
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 1780
    return-void
.end method

.method public super_onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 1791
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 1792
    return-void
.end method

.method public super_onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 967
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 968
    return-void
.end method

.method public super_onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .registers 4
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 979
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 980
    return-void
.end method

.method public super_onAttachFragment(Landroid/app/Fragment;)V
    .registers 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 1803
    invoke-super {p0, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 1804
    return-void
.end method

.method public super_onAttachedToWindow()V
    .registers 1

    .prologue
    .line 1682
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 1683
    return-void
.end method

.method public super_onBackPressed()V
    .registers 1

    .prologue
    .line 1694
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1695
    return-void
.end method

.method public super_onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "childActivity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 992
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 993
    return-void
.end method

.method public super_onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1004
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1005
    return-void
.end method

.method public super_onContentChanged()V
    .registers 1

    .prologue
    .line 1016
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 1017
    return-void
.end method

.method public super_onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1031
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public super_onContextMenuClosed(Landroid/view/Menu;)V
    .registers 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1043
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 1044
    return-void
.end method

.method public super_onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 1116
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1117
    return-void
.end method

.method public super_onCreateDescription()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1131
    invoke-super {p0}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public super_onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 1146
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public super_onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1738
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public super_onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1161
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public super_onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1176
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public super_onCreatePanelView(I)Landroid/view/View;
    .registers 3
    .param p1, "featureId"    # I

    .prologue
    .line 1192
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public super_onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .registers 4
    .param p1, "outBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1207
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method public super_onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1818
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public super_onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1222
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public super_onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 1706
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 1707
    return-void
.end method

.method public super_onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1878
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public super_onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1245
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public super_onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1720
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public super_onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1260
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public super_onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1832
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public super_onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1274
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public super_onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1297
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public super_onMenuOpened(ILandroid/view/Menu;)Z
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1312
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public super_onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1332
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1333
    return-void
.end method

.method public super_onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1347
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public super_onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1359
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 1360
    return-void
.end method

.method public super_onPanelClosed(ILandroid/view/Menu;)V
    .registers 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1371
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1372
    return-void
.end method

.method public super_onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 1413
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1414
    return-void
.end method

.method public super_onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1750
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 1751
    return-void
.end method

.method public super_onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1435
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public super_onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1450
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public super_onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1472
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1473
    return-void
.end method

.method public super_onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1497
    invoke-super {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public super_onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1510
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1512
    return-void
.end method

.method public super_onSearchRequested()Z
    .registers 2

    .prologue
    .line 1526
    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public super_onTitleChanged(Ljava/lang/CharSequence;I)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .prologue
    .line 1592
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 1593
    return-void
.end method

.method public super_onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1606
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public super_onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1620
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public super_onUserInteraction()V
    .registers 1

    .prologue
    .line 1632
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 1633
    return-void
.end method

.method public super_onUserLeaveHint()V
    .registers 1

    .prologue
    .line 1644
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 1645
    return-void
.end method

.method public super_onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1656
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1657
    return-void
.end method

.method public super_onWindowFocusChanged(Z)V
    .registers 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 1668
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 1669
    return-void
.end method

.method public super_onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 1847
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
