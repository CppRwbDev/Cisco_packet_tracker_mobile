.class public Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;
.super Ljava/lang/Object;
.source "PacketTracerFrontEndBridge.java"


# static fields
.field private static connected:Z

.field public static responded:Z


# instance fields
.field private GACrashMessage:Ljava/lang/String;

.field private appPreferences:Lorg/qtproject/qt5/android/bindings/AppPreferences;

.field private crashMessage:Ljava/lang/String;

.field private enableNetSpaceLogin:Z

.field private m_dbgClient:Lorg/jshybugger/DebugServiceClient;

.field private m_fileOpenedAtPath:Ljava/lang/String;

.field private m_webView:Landroid/webkit/WebView;

.field public met:Landroid/util/DisplayMetrics;

.field public volatile obbResFile:Z

.field private saveLimit:I

.field private zipResFile:Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 783
    sput-boolean v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->connected:Z

    .line 784
    sput-boolean v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->responded:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object v1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->m_dbgClient:Lorg/jshybugger/DebugServiceClient;

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->enableNetSpaceLogin:Z

    .line 126
    iput-object v1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->met:Landroid/util/DisplayMetrics;

    .line 130
    iput-object v1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->appPreferences:Lorg/qtproject/qt5/android/bindings/AppPreferences;

    .line 133
    iput-object v1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->zipResFile:Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;

    .line 134
    const/4 v0, 0x3

    iput v0, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->saveLimit:I

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->obbResFile:Z

    return-void
.end method

.method static synthetic access$000(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Landroid/webkit/WebView;
    .registers 2
    .param p0, "x0"    # Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    .prologue
    .line 120
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->m_webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$002(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .registers 2
    .param p0, "x0"    # Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;
    .param p1, "x1"    # Landroid/webkit/WebView;

    .prologue
    .line 120
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->m_webView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$102(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->GACrashMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    .prologue
    .line 120
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->crashMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->crashMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Lorg/jshybugger/DebugServiceClient;
    .registers 2
    .param p0, "x0"    # Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    .prologue
    .line 120
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->m_dbgClient:Lorg/jshybugger/DebugServiceClient;

    return-object v0
.end method

.method static synthetic access$302(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;Lorg/jshybugger/DebugServiceClient;)Lorg/jshybugger/DebugServiceClient;
    .registers 2
    .param p0, "x0"    # Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;
    .param p1, "x1"    # Lorg/jshybugger/DebugServiceClient;

    .prologue
    .line 120
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->m_dbgClient:Lorg/jshybugger/DebugServiceClient;

    return-object p1
.end method

.method static synthetic access$400(Ljava/lang/String;)[B
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {p0}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->ls2b(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500([B)[B
    .registers 2
    .param p0, "x0"    # [B

    .prologue
    .line 120
    invoke-static {p0}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->get_hash([B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600([B)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {p0}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->lb2s([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;
    .registers 2
    .param p0, "x0"    # Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    .prologue
    .line 120
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->zipResFile:Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;

    return-object v0
.end method

.method static synthetic access$702(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;)Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;
    .registers 2
    .param p0, "x0"    # Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;
    .param p1, "x1"    # Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;

    .prologue
    .line 120
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->zipResFile:Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;

    return-object p1
.end method

.method static synthetic access$800(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Z
    .registers 2
    .param p0, "x0"    # Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    .prologue
    .line 120
    iget-boolean v0, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->enableNetSpaceLogin:Z

    return v0
.end method

.method static synthetic access$900(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->escape_js_string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private copyAssetToCache(Ljava/lang/String;)V
    .registers 11
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 930
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v0

    .line 931
    .local v0, "a":Lorg/qtproject/qt5/android/bindings/QtActivity;
    invoke-virtual {v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 932
    .local v1, "assetManager":Landroid/content/res/AssetManager;
    const/4 v2, 0x0

    .line 936
    .local v2, "assets":[Ljava/lang/String;
    :try_start_9
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 938
    array-length v7, v2

    if-nez v7, :cond_14

    .line 940
    invoke-direct {p0, p1}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->copyFile(Ljava/lang/String;)V

    .line 962
    :cond_13
    :goto_13
    return-void

    .line 944
    :cond_14
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 945
    .local v5, "fullPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 947
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3d

    .line 949
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 952
    :cond_3d
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3e
    array-length v7, v2

    if-ge v6, v7, :cond_13

    .line 954
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->copyAssetToCache(Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_5d} :catch_60

    .line 952
    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    .line 958
    .end local v3    # "dir":Ljava/io/File;
    .end local v5    # "fullPath":Ljava/lang/String;
    .end local v6    # "i":I
    :catch_60
    move-exception v4

    .line 960
    .local v4, "e":Ljava/io/IOException;
    const-string v7, "JPTFB"

    const-string v8, "copyAssetToCache()"

    invoke-static {v7, v8, v4}, Lorg/qtproject/qt5/android/bindings/PTJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method private copyFile(Ljava/lang/String;)V
    .registers 13
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 966
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v0

    .line 967
    .local v0, "a":Lorg/qtproject/qt5/android/bindings/QtActivity;
    invoke-virtual {v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 968
    .local v1, "assetManager":Landroid/content/res/AssetManager;
    const/4 v4, 0x0

    .line 969
    .local v4, "in":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 973
    .local v6, "out":Ljava/io/OutputStream;
    :try_start_a
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 974
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 975
    .local v5, "newFileName":Ljava/lang/String;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2e} :catch_54

    .line 976
    .end local v6    # "out":Ljava/io/OutputStream;
    .local v7, "out":Ljava/io/OutputStream;
    const/16 v9, 0x400

    :try_start_30
    new-array v2, v9, [B

    .line 979
    .local v2, "buffer":[B
    :goto_32
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, "read":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_48

    .line 981
    const/4 v9, 0x0

    invoke-virtual {v7, v2, v9, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3d} :catch_3e

    goto :goto_32

    .line 990
    .end local v2    # "buffer":[B
    .end local v8    # "read":I
    :catch_3e
    move-exception v3

    move-object v6, v7

    .line 992
    .end local v5    # "newFileName":Ljava/lang/String;
    .end local v7    # "out":Ljava/io/OutputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v6    # "out":Ljava/io/OutputStream;
    :goto_40
    const-string v9, "JPTFB"

    const-string v10, "copyFile()"

    invoke-static {v9, v10, v3}, Lorg/qtproject/qt5/android/bindings/PTJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 994
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_47
    return-void

    .line 984
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v2    # "buffer":[B
    .restart local v5    # "newFileName":Ljava/lang/String;
    .restart local v7    # "out":Ljava/io/OutputStream;
    .restart local v8    # "read":I
    :cond_48
    :try_start_48
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 985
    const/4 v4, 0x0

    .line 986
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 987
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_52} :catch_3e

    .line 988
    const/4 v6, 0x0

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    goto :goto_47

    .line 990
    .end local v2    # "buffer":[B
    .end local v5    # "newFileName":Ljava/lang/String;
    .end local v8    # "read":I
    :catch_54
    move-exception v3

    goto :goto_40
.end method

.method private escape_js_string(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1133
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "\\\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppZipFile(Landroid/content/Context;IILjava/lang/String;)Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;
    .registers 22
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mainVer"    # I
    .param p2, "patchVer"    # I
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/lingala/zip4j/exception/ZipException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 678
    invoke-static/range {p0 .. p2}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->getZipPathList(Landroid/content/Context;II)[Ljava/lang/String;

    move-result-object v7

    .line 679
    .local v7, "expansionFiles":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 680
    .local v1, "apkExpansionFile":Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;
    array-length v13, v7

    const/4 v14, 0x0

    if-ge v14, v13, :cond_14

    aget-object v6, v7, v14

    .line 681
    .local v6, "expansionFilePath":Ljava/lang/String;
    new-instance v1, Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;

    .end local v1    # "apkExpansionFile":Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;
    move-object/from16 v0, p3

    invoke-direct {v1, v6, v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1    # "apkExpansionFile":Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;
    move-object v13, v1

    .line 722
    .end local v6    # "expansionFilePath":Ljava/lang/String;
    :goto_13
    return-object v13

    .line 687
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    const-string v14, "HtmlGui/app.html"

    invoke-virtual {v13, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    .line 688
    .local v12, "sapph":Ljava/io/InputStream;
    invoke-static {v12}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->readFully(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 689
    .local v3, "bapph":[B
    const-string v13, "JPTFB"

    const-string v14, "**** zip: %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "1"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 691
    array-length v13, v3

    const v14, 0x186a0

    if-ge v13, v14, :cond_41

    .line 692
    const/4 v13, 0x0

    goto :goto_13

    .line 693
    :cond_41
    const-string v13, "JPTFB"

    const-string v14, "**** zip: %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "2"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    new-instance v5, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "main."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".obb"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 695
    .local v5, "dappf":Ljava/io/File;
    const-string v13, "JPTFB"

    const-string v14, "**** zip: %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_124

    .line 697
    new-instance v11, Ljava/io/BufferedInputStream;

    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v11, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 698
    .local v11, "sappd":Ljava/io/InputStream;
    const-string v13, "JPTFB"

    const-string v14, "**** zip: %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "3a"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-static {v11}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->readFully(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 700
    .local v2, "bappd":[B
    const-string v13, "JPTFB"

    const-string v14, "**** zip: %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "3b"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 702
    const-string v13, "JPTFB"

    const-string v14, "**** zip: %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "3c"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    invoke-static {v2}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->get_hash([B)[B

    move-result-object v13

    invoke-static {v13}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->lb2s([B)Ljava/lang/String;

    move-result-object v13

    invoke-static {v3}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->get_hash([B)[B

    move-result-object v14

    invoke-static {v14}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->lb2s([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_121

    .line 704
    new-instance v13, Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-direct {v13, v14, v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 706
    :cond_121
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 708
    .end local v2    # "bappd":[B
    .end local v11    # "sappd":Ljava/io/InputStream;
    :cond_124
    const-string v13, "JPTFB"

    const-string v14, "**** zip: %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "4"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    new-instance v9, Ljava/io/BufferedOutputStream;

    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 711
    .local v9, "out":Ljava/io/BufferedOutputStream;
    const-string v13, "JPTFB"

    const-string v14, "**** zip: %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "5"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    const-string v14, "HtmlGui/app.html"

    invoke-virtual {v13, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 713
    .local v8, "in":Ljava/io/InputStream;
    const-string v13, "JPTFB"

    const-string v14, "**** zip: %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "6"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const/16 v13, 0x7d00

    new-array v4, v13, [B

    .line 716
    .local v4, "buffer":[B
    :goto_178
    invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .local v10, "read":I
    const/4 v13, -0x1

    if-eq v10, v13, :cond_184

    .line 717
    const/4 v13, 0x0

    invoke-virtual {v9, v4, v13, v10}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_178

    .line 718
    :cond_184
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 719
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->flush()V

    .line 720
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->close()V

    .line 722
    new-instance v13, Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-direct {v13, v14, v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13
.end method

.method public static getApplicationVersionCode(Landroid/content/Context;)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 726
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 728
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 729
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_10} :catch_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_11

    .line 731
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_10
    return v2

    .line 730
    :catch_11
    move-exception v3

    goto :goto_10

    :catch_13
    move-exception v3

    goto :goto_10
.end method

.method private getFilePathFromContentUri(Landroid/net/Uri;)Ljava/lang/String;
    .registers 12
    .param p1, "selectedUri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 736
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v9

    .line 738
    .local v2, "filePathColumn":[Ljava/lang/String;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 739
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 741
    aget-object v0, v2, v9

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 742
    .local v6, "columnIndex":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 743
    .local v8, "filePath":Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 744
    return-object v8
.end method

.method public static getZipPathList(Landroid/content/Context;II)[Ljava/lang/String;
    .registers 13
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mainVersion"    # I
    .param p2, "patchVersion"    # I

    .prologue
    .line 645
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 646
    .local v2, "packageName":Ljava/lang/String;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 647
    .local v3, "ret":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b9

    .line 650
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 651
    .local v5, "root":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/Android/obb/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 654
    .local v0, "expPath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_b9

    .line 655
    if-lez p1, :cond_7c

    .line 656
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "main."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".obb"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 657
    .local v6, "strMainPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 658
    .local v1, "main":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_7c

    .line 659
    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 662
    .end local v1    # "main":Ljava/io/File;
    .end local v6    # "strMainPath":Ljava/lang/String;
    :cond_7c
    if-lez p2, :cond_b9

    .line 663
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "patch."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".obb"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 664
    .local v7, "strPatchPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 665
    .restart local v1    # "main":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_b9

    .line 666
    invoke-virtual {v3, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 671
    .end local v0    # "expPath":Ljava/io/File;
    .end local v1    # "main":Ljava/io/File;
    .end local v5    # "root":Ljava/io/File;
    .end local v7    # "strPatchPath":Ljava/lang/String;
    :cond_b9
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v8

    new-array v4, v8, [Ljava/lang/String;

    .line 672
    .local v4, "retArray":[Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 673
    return-object v4
.end method

.method private static get_hash([B)[B
    .registers 10
    .param p0, "data"    # [B

    .prologue
    .line 190
    :try_start_0
    const-string v4, "JPTFB"

    const-string v5, "get_hash: data: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p0}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->lb2s([B)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 192
    .local v1, "hasher":Ljava/security/MessageDigest;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 193
    .local v3, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 194
    .local v0, "hash":[B
    const-string v4, "JPTFB"

    const-string v5, "get_hash: hash: %s length: %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->lb2s([B)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    array-length v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_42
    array-length v4, v0

    if-ge v2, v4, :cond_5f

    .line 196
    const-string v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-byte v7, v0, v2

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 197
    :cond_5f
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->ls2b(Ljava/lang/String;)[B
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_66} :catch_68

    move-result-object v4

    .line 200
    .end local v0    # "hash":[B
    .end local v1    # "hasher":Ljava/security/MessageDigest;
    .end local v2    # "i":I
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :goto_67
    return-object v4

    .line 199
    :catch_68
    move-exception v4

    .line 200
    const/16 v4, 0x10

    new-array v4, v4, [B

    fill-array-data v4, :array_72

    goto :goto_67

    nop

    :array_72
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static lb2s([B)Ljava/lang/String;
    .registers 3
    .param p0, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 185
    new-instance v0, Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static log_thread(Ljava/lang/String;)V
    .registers 7
    .param p0, "context"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 139
    const-string p0, "web view"

    .line 140
    :cond_8
    const-string v0, "JPTFB"

    const-string v1, "%s - thread id: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method private static ls2b(Ljava/lang/String;)[B
    .registers 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 181
    const-string v0, "ISO-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static readFully(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 621
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->readFully(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private static readFully(Ljava/io/InputStream;)[B
    .registers 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 625
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 626
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v1, v3, [B

    .line 627
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .line 628
    .local v2, "length":I
    :goto_a
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_16

    .line 629
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_a

    .line 631
    :cond_16
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public static native sendMessageToPacketTracerNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native sendMessageToPacketTracerNativeAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native setPacketTracerKeyValueNative(Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public ClipboardCopy(Ljava/lang/String;)V
    .registers 6
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1094
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 1095
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    const-string v2, "label"

    invoke-static {v2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 1096
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1097
    return-void
.end method

.method public ClipboardPaste()Ljava/lang/String;
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1075
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 1076
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    const/4 v1, 0x0

    .line 1077
    .local v1, "item":Landroid/content/ClipData$Item;
    const-string v2, ""

    .line 1079
    .local v2, "pasteData":Ljava/lang/CharSequence;
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v3

    if-eqz v3, :cond_36

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-lez v3, :cond_36

    .line 1081
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    .line 1083
    if-eqz v1, :cond_36

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 1085
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1089
    :cond_36
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public RESTCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "header"    # Ljava/lang/String;
    .param p4, "param"    # Ljava/lang/String;
    .param p5, "callback"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1176
    new-instance v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$6;-><init>(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1243
    return-void
.end method

.method public beFirstResponder()Z
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1254
    const/4 v0, 0x1

    return v0
.end method

.method public cancelFirstResponder()Z
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1260
    const/4 v0, 0x1

    return v0
.end method

.method public enableKitKatDebugger()V
    .registers 4

    .prologue
    .line 752
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_12

    .line 753
    new-instance v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$2;

    invoke-direct {v0, p0}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$2;-><init>(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)V

    .line 764
    .local v0, "n":Ljava/lang/Runnable;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 766
    .end local v0    # "n":Ljava/lang/Runnable;
    :cond_12
    return-void
.end method

.method public getAndroidVersion()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1248
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPreferences()Lorg/qtproject/qt5/android/bindings/AppPreferences;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->appPreferences:Lorg/qtproject/qt5/android/bindings/AppPreferences;

    if-nez v0, :cond_b

    .line 145
    new-instance v0, Lorg/qtproject/qt5/android/bindings/AppPreferences;

    invoke-direct {v0}, Lorg/qtproject/qt5/android/bindings/AppPreferences;-><init>()V

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->appPreferences:Lorg/qtproject/qt5/android/bindings/AppPreferences;

    .line 147
    :cond_b
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->appPreferences:Lorg/qtproject/qt5/android/bindings/AppPreferences;

    return-object v0
.end method

.method public getExternalStorageDir()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1163
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileOpenedAtPath()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1102
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->m_fileOpenedAtPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSaveCount()I
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 829
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 830
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "saveCount"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 831
    .local v0, "count":I
    return v0
.end method

.method public getScreenDpiX()F
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 873
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->met:Landroid/util/DisplayMetrics;

    if-nez v1, :cond_b

    .line 874
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->met:Landroid/util/DisplayMetrics;

    .line 875
    :cond_b
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 876
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->met:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 877
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->met:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    return v1
.end method

.method public getScreenDpiY()F
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 883
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->met:Landroid/util/DisplayMetrics;

    if-nez v1, :cond_b

    .line 884
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->met:Landroid/util/DisplayMetrics;

    .line 885
    :cond_b
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 886
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->met:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 887
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->met:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    return v1
.end method

.method public getScreenPixelDensity()F
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 863
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->met:Landroid/util/DisplayMetrics;

    if-nez v1, :cond_b

    .line 864
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->met:Landroid/util/DisplayMetrics;

    .line 865
    :cond_b
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 866
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->met:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 867
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->met:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    return v1
.end method

.method public getScreenPixelHeight()I
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 903
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->met:Landroid/util/DisplayMetrics;

    if-nez v1, :cond_b

    .line 904
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->met:Landroid/util/DisplayMetrics;

    .line 905
    :cond_b
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 906
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->met:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 907
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->met:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    return v1
.end method

.method public getScreenPixelWidth()I
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 893
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->met:Landroid/util/DisplayMetrics;

    if-nez v1, :cond_b

    .line 894
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->met:Landroid/util/DisplayMetrics;

    .line 895
    :cond_b
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 896
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->met:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 897
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->met:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    return v1
.end method

.method public getVersionCode()I
    .registers 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1109
    :try_start_1
    iget-object v4, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1110
    .local v2, "manager":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1111
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1c} :catch_1d

    .line 1114
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "manager":Landroid/content/pm/PackageManager;
    :goto_1c
    return v3

    .line 1112
    :catch_1d
    move-exception v0

    .line 1114
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1c
.end method

.method public getVersionName()Ljava/lang/String;
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1122
    :try_start_0
    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1123
    .local v2, "manager":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1124
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 1127
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "manager":Landroid/content/pm/PackageManager;
    :goto_1b
    return-object v3

    .line 1125
    :catch_1c
    move-exception v0

    .line 1127
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Unknown"

    goto :goto_1b
.end method

.method public getVisibleDisplayHeightInPixels()I
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 850
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v0

    .line 851
    .local v0, "a":Lorg/qtproject/qt5/android/bindings/QtActivity;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 852
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 853
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_1d

    .line 855
    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 857
    :cond_1d
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    return v2
.end method

.method public getWebView()Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 748
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->m_webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public goToNetacadURL()V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 819
    const-string v2, "https://www.netacad.com/ptsavelimit/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 820
    .local v1, "webpage":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 821
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 822
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->startActivity(Landroid/content/Intent;)V

    .line 824
    :cond_22
    return-void
.end method

.method public incrementSaveCount()V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 837
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 838
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "saveCount"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 839
    .local v0, "count":I
    add-int/lit8 v0, v0, 0x1

    .line 840
    iget v3, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->saveLimit:I

    if-gt v0, v3, :cond_29

    .line 841
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 842
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "saveCount"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 843
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 845
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_29
    return-void
.end method

.method public init()Z
    .registers 14

    .prologue
    const/4 v12, 0x1

    .line 205
    const-string v7, "JPTFB"

    const-string v8, "init()"

    invoke-static {v7, v8}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v7, "initializing"

    invoke-static {v7}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->log_thread(Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v0

    .line 209
    .local v0, "a":Lorg/qtproject/qt5/android/bindings/QtActivity;
    const v7, 0x103000a

    invoke-virtual {v0, v7}, Lorg/qtproject/qt5/android/bindings/QtActivity;->setTheme(I)V

    .line 210
    invoke-virtual {v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-static {v7}, Lorg/acra/ACRA;->init(Landroid/app/Application;)V

    .line 211
    invoke-virtual {v0, p0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->storeFrontEndBridge(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)V

    .line 213
    const-string v7, "HtmlGui/resources/html"

    invoke-direct {p0, v7}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->copyAssetToCache(Ljava/lang/String;)V

    .line 215
    move-object v5, p0

    .line 217
    .local v5, "m_bridge":Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;
    invoke-virtual {v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7, v12}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->processIntent(Landroid/content/Intent;Z)V

    .line 220
    :try_start_2e
    const-string v1, "HtmlGui/app.html"

    .line 221
    .local v1, "asset":Ljava/lang/String;
    const-string v7, "JPTFB"

    const-string v8, "Test loading data from %s ..."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 223
    .local v4, "istr":Ljava/io/InputStream;
    new-instance v7, Ljava/util/Scanner;

    const-string v8, "UTF-8"

    invoke-direct {v7, v4, v8}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v8, "\\A"

    invoke-virtual {v7, v8}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, "data":Ljava/lang/String;
    const-string v7, "JPTFB"

    const-string v8, "... loaded: %d bytes"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_73} :catch_7c

    .line 230
    .end local v1    # "asset":Ljava/lang/String;
    .end local v2    # "data":Ljava/lang/String;
    .end local v4    # "istr":Ljava/io/InputStream;
    :goto_73
    new-instance v6, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;

    invoke-direct {v6, p0}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;-><init>(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)V

    .line 615
    .local v6, "r":Ljava/lang/Runnable;
    invoke-virtual {v0, v6}, Lorg/qtproject/qt5/android/bindings/QtActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 617
    return v12

    .line 225
    .end local v6    # "r":Ljava/lang/Runnable;
    :catch_7c
    move-exception v3

    .line 226
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "JPTFB_ERROR"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/qtproject/qt5/android/bindings/PTJLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v7, "JPTFB_ERROR"

    const-string v8, "... failed to load"

    invoke-static {v7, v8}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_73
.end method

.method public isJsHybuggerEnabled()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 636
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_1a

    .line 637
    const-string v0, "file:///index.html"

    .line 638
    .local v0, "testUrl":Ljava/lang/String;
    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->m_dbgClient:Lorg/jshybugger/DebugServiceClient;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->m_dbgClient:Lorg/jshybugger/DebugServiceClient;

    invoke-static {v0}, Lorg/jshybugger/DebugServiceClient;->getDebugUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    const/4 v1, 0x1

    .line 640
    .end local v0    # "testUrl":Ljava/lang/String;
    :cond_1a
    return v1
.end method

.method public isNetworkAvailable()Z
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 790
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 791
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 792
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_21

    .line 794
    :cond_18
    const-string v2, "JPTFB"

    const-string v3, "isNetworkAvailable() - not connected to active Network"

    invoke-static {v2, v3}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const/4 v2, 0x0

    .line 798
    :goto_20
    return v2

    :cond_21
    const/4 v2, 0x1

    goto :goto_20
.end method

.method public isOnline()Ljava/lang/Boolean;
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 803
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "ping -c 1 www.google.com"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 804
    .local v1, "p1":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v3

    .line 805
    .local v3, "returnVal":I
    if-nez v3, :cond_31

    const/4 v2, 0x1

    .line 806
    .local v2, "reachable":Z
    :goto_12
    if-nez v2, :cond_2c

    .line 807
    const-string v5, "JPTFB"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not online returnVal"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    :cond_2c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_33

    move-result-object v4

    .line 813
    .end local v1    # "p1":Ljava/lang/Process;
    .end local v2    # "reachable":Z
    .end local v3    # "returnVal":I
    :goto_30
    return-object v4

    .restart local v1    # "p1":Ljava/lang/Process;
    .restart local v3    # "returnVal":I
    :cond_31
    move v2, v4

    .line 805
    goto :goto_12

    .line 809
    .end local v1    # "p1":Ljava/lang/Process;
    .end local v3    # "returnVal":I
    :catch_33
    move-exception v0

    .line 811
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 813
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_30
.end method

.method public openBrowserToUrl(Ljava/lang/String;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 912
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 914
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "http://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 916
    const-string v1, "com.android.htmlviewer"

    const-string v2, "com.android.htmlviewer.HTMLViewerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 917
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 918
    const v1, 0x10808000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 925
    :goto_49
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 926
    return-void

    .line 922
    :cond_53
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_49
.end method

.method public processIntent(Landroid/content/Intent;Z)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "appStartup"    # Z

    .prologue
    .line 152
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 153
    .local v0, "intentData":Landroid/net/Uri;
    :goto_6
    if-nez v0, :cond_b

    .line 178
    :cond_8
    :goto_8
    return-void

    .line 152
    .end local v0    # "intentData":Landroid/net/Uri;
    :cond_9
    const/4 v0, 0x0

    goto :goto_6

    .line 156
    .restart local v0    # "intentData":Landroid/net/Uri;
    :cond_b
    const-string v2, "content"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 158
    invoke-direct {p0, v0}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->getFilePathFromContentUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->m_fileOpenedAtPath:Ljava/lang/String;

    .line 165
    :goto_1d
    const-string v2, "JPTFB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received intent to load file from path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->m_fileOpenedAtPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    if-nez p2, :cond_7e

    .line 169
    const-string v2, "JPTFB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting app to load file from path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->m_fileOpenedAtPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v2, "javascript:openContentPath(\"%s\");"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->m_fileOpenedAtPath:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "u":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 172
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getFrontEndBridge()Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-result-object v2

    invoke-virtual {v2}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_8

    .line 162
    .end local v1    # "u":Ljava/lang/String;
    :cond_77
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->m_fileOpenedAtPath:Ljava/lang/String;

    goto :goto_1d

    .line 176
    :cond_7e
    const-string v2, "JPTFB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saved path for app to load later: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->m_fileOpenedAtPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8
.end method

.method public quitActivity()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1045
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->finish()V

    .line 1046
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 1047
    return-void
.end method

.method public reloadWebView()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1051
    new-instance v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$4;

    invoke-direct {v0, p0}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$4;-><init>(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)V

    .line 1056
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1057
    return-void
.end method

.method public reloadWebView2()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1061
    new-instance v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$5;

    invoke-direct {v0, p0}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$5;-><init>(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)V

    .line 1069
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1070
    return-void
.end method

.method public sendCrashReport()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 778
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->crashMessage:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;)V

    .line 779
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->instance()Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;

    move-result-object v0

    const-string v1, "Acra"

    const-string v2, "crash"

    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->GACrashMessage:Ljava/lang/String;

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 780
    const-string v0, ""

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->crashMessage:Ljava/lang/String;

    .line 781
    const-string v0, ""

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->GACrashMessage:Ljava/lang/String;

    .line 782
    return-void
.end method

.method public sendMessageToFrontEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data1"    # Ljava/lang/String;
    .param p3, "data2"    # Ljava/lang/String;
    .param p4, "data3"    # Ljava/lang/String;
    .param p5, "data4"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1029
    new-instance v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$3;-><init>(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1039
    const/4 v1, 0x1

    return v1
.end method

.method public sendMessageToPacketTracer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data1"    # Ljava/lang/String;
    .param p3, "data2"    # Ljava/lang/String;
    .param p4, "data3"    # Ljava/lang/String;
    .param p5, "data4"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1011
    invoke-static {p1, p2, p3, p4, p5}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->sendMessageToPacketTracerNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendMessageToPacketTracerAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data1"    # Ljava/lang/String;
    .param p3, "data2"    # Ljava/lang/String;
    .param p4, "data3"    # Ljava/lang/String;
    .param p5, "data4"    # Ljava/lang/String;
    .param p6, "msgId"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1020
    invoke-static/range {p1 .. p6}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->sendMessageToPacketTracerNativeAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    return-void
.end method

.method public sendMessageToWebViewPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data1"    # Ljava/lang/String;
    .param p3, "data2"    # Ljava/lang/String;
    .param p4, "data3"    # Ljava/lang/String;
    .param p5, "data4"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1138
    const-string v1, "JPTFB"

    const-string v2, "sendMessageToWebViewPage()"

    invoke-static {v1, v2}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    const-string v1, "executing javascript message callback"

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->log_thread(Ljava/lang/String;)V

    .line 1141
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/PTJLog;->isDebugMode()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1142
    const-string v1, "JPTFB"

    const-string v2, "... params: %s, %s, %s, %s, %s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object p2, v3, v5

    aput-object p3, v3, v6

    aput-object p4, v3, v7

    aput-object p5, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    :cond_2f
    const-string v1, "javascript:onMessageFromWebView(\"%s\",\"%s\",\"%s\",\"%s\",\"%s\");"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    .line 1147
    invoke-direct {p0, p1}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->escape_js_string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 1148
    invoke-direct {p0, p2}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->escape_js_string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 1149
    invoke-direct {p0, p3}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->escape_js_string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 1150
    invoke-direct {p0, p4}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->escape_js_string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 1151
    invoke-direct {p0, p5}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->escape_js_string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 1145
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%"

    const-string v3, "%25"

    .line 1152
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1156
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1157
    return-void
.end method

.method public setPacketTracerKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 997
    invoke-static {p1, p2}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->setPacketTracerKeyValueNative(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    return-void
.end method

.method public setPacketTracerKeyValueAsync(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1001
    const-string v1, "set-key-value"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->sendMessageToPacketTracerAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    return-void
.end method

.method public shutdown()Z
    .registers 3

    .prologue
    .line 770
    const-string v0, "JPTFB"

    const-string v1, "shutdown()"

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string v0, "shutting down"

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->log_thread(Ljava/lang/String;)V

    .line 772
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->quitActivity()V

    .line 773
    const/4 v0, 0x1

    return v0
.end method
