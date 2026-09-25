.class public Lorg/jshybugger/DebugServiceClient;
.super Ljava/lang/Object;
.source "DebugServiceClient.java"


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView;Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lorg/jshybugger/DebugServiceClient;->b:Landroid/app/Activity;

    .line 62
    iput-object p1, p0, Lorg/jshybugger/DebugServiceClient;->a:Landroid/webkit/WebView;

    .line 63
    return-void
.end method

.method public static attachWebView(Landroid/webkit/WebView;Landroid/app/Activity;)Lorg/jshybugger/DebugServiceClient;
    .registers 10

    .prologue
    const/16 v6, 0x1f90

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 89
    new-instance v1, Lorg/jshybugger/DebugServiceClient;

    invoke-direct {v1, p0, p1}, Lorg/jshybugger/DebugServiceClient;-><init>(Landroid/webkit/WebView;Landroid/app/Activity;)V

    .line 90
    const-string v0, "DebugServiceClient"

    const-string v3, "Attaching jsHybugger to WebView"

    invoke-static {v0, v3}, Lorg/jshybugger/jf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_2c

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v2, "JsHybugger"

    invoke-virtual {p0, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lorg/jshybugger/DebugService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 99
    invoke-static {v5}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    :cond_2a
    :goto_2a
    move-object v0, v1

    .line 181
    :goto_2b
    return-object v0

    .line 104
    :cond_2c
    invoke-static {}, Lorg/jshybugger/DebugService;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v2, "JsHybugger"

    invoke-virtual {p0, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    .line 107
    goto :goto_2b

    .line 110
    :cond_3e
    invoke-static {}, Lorg/jshybugger/DebugService;->getInstance()Lorg/jshybugger/DebugService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/DebugService;->getConfig()Ljava/util/Map;

    move-result-object v0

    .line 111
    const-string v3, "proxyEnabled"

    invoke-static {v0, v3, v4}, Lorg/jshybugger/jk;->a(Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_127

    .line 112
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 113
    const-string v3, "localhost"

    const-string v4, "proxyPort"

    invoke-static {v0, v4, v6}, Lorg/jshybugger/jk;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, v3, v0}, Lorg/jshybugger/a;->a(Landroid/webkit/WebView;Ljava/lang/String;I)Z

    .line 120
    :cond_60
    :goto_60
    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 121
    invoke-static {}, Lorg/jshybugger/DebugService;->getInstance()Lorg/jshybugger/DebugService;

    move-result-object v0

    if-nez v0, :cond_76

    iget-object v0, v1, Lorg/jshybugger/DebugServiceClient;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/jshybugger/DebugService;->createSingleton(Landroid/content/Context;)Lorg/jshybugger/DebugService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/DebugService;->start()V

    :cond_76
    iget-object v3, v1, Lorg/jshybugger/DebugServiceClient;->a:Landroid/webkit/WebView;

    iget-object v4, v1, Lorg/jshybugger/DebugServiceClient;->b:Landroid/app/Activity;

    invoke-virtual {v0, v3, v4}, Lorg/jshybugger/DebugService;->attachWebView(Landroid/webkit/WebView;Landroid/app/Activity;)V

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_ad

    .line 127
    :try_start_83
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "setAllowUniversalAccessFromFileURLs"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_ad

    .line 129
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_ad} :catch_149

    .line 139
    :cond_ad
    :goto_ad
    :try_start_ad
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getWebViewProvider"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_11c

    .line 141
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 143
    if-eqz v3, :cond_153

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "getWebViewCore"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 144
    :goto_d2
    if-eqz v0, :cond_11c

    .line 145
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 147
    if-eqz v3, :cond_156

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "nativeRegisterURLSchemeAsLocal"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 148
    :goto_f4
    if-eqz v0, :cond_11c

    .line 149
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "mNativeClass"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 151
    if-eqz v4, :cond_11c

    .line 152
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 154
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 155
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v5, v6

    const/4 v4, 0x1

    const-string v6, "content"

    aput-object v6, v5, v4

    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_ad .. :try_end_11c} :catch_158
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_11c} :catch_18f

    .line 178
    :cond_11c
    :goto_11c
    invoke-static {p0}, Lorg/jshybugger/iP;->a(Landroid/webkit/WebView;)Lorg/jshybugger/iP;

    move-result-object v0

    const-string v2, "JsHybuggerNI"

    invoke-virtual {p0, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2a

    .line 115
    :cond_127
    const-string v3, "upstreamProxyEnabled"

    invoke-static {v0, v3, v4}, Lorg/jshybugger/jk;->a(Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 116
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 117
    const-string v3, "upstreamProxyHost"

    const-string v4, "localhost"

    invoke-static {v0, v3, v4}, Lorg/jshybugger/jk;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "upstreamProxyPort"

    invoke-static {v0, v4, v6}, Lorg/jshybugger/jk;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, v3, v0}, Lorg/jshybugger/a;->a(Landroid/webkit/WebView;Ljava/lang/String;I)Z

    goto/16 :goto_60

    .line 131
    :catch_149
    move-exception v0

    .line 132
    const-string v3, "DebugServiceClient"

    const-string v4, "setAllowUniversalAccessFromFileURLs() for webview failed"

    invoke-static {v3, v4, v0}, Lorg/jshybugger/jf;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_ad

    :cond_153
    move-object v0, v2

    .line 143
    goto/16 :goto_d2

    :cond_156
    move-object v0, v2

    .line 147
    goto :goto_f4

    .line 162
    :catch_158
    move-exception v0

    :try_start_159
    const-class v0, Landroid/webkit/WebView;

    const-string v3, "mWebViewCore"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 164
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 165
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 167
    if-eqz v3, :cond_1a6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "nativeRegisterURLSchemeAsLocal"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 168
    :goto_17d
    if-eqz v0, :cond_11c

    .line 169
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 170
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "content"

    aput-object v5, v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18e
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_18e} :catch_18f

    goto :goto_11c

    .line 173
    :catch_18f
    move-exception v0

    .line 174
    const-string v2, "DebugServiceClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "nativeRegisterURLSchemeAsLocal() for webview failed. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/jshybugger/jf;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11c

    :cond_1a6
    move-object v0, v2

    .line 167
    goto :goto_17d
.end method

.method public static getDebugUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 253
    invoke-static {}, Lorg/jshybugger/DebugContentProvider;->getProviderProtocol()Ljava/lang/String;

    move-result-object v1

    .line 254
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v0, v2, :cond_10

    invoke-static {}, Lorg/jshybugger/DebugService;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_21

    .line 255
    :cond_10
    if-eqz v1, :cond_20

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 283
    :cond_20
    :goto_20
    return-object p0

    .line 259
    :cond_21
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 263
    :try_start_27
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_2a} :catch_72

    move-result-object v2

    .line 271
    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_39

    const-string v3, "file"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_96

    :cond_39
    const/4 v0, 0x1

    .line 273
    :goto_3a
    if-nez v0, :cond_46

    invoke-static {}, Lorg/jshybugger/DebugService;->getInstance()Lorg/jshybugger/DebugService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/DebugService;->hasProxyService()Z

    move-result v0

    if-nez v0, :cond_20

    .line 275
    :cond_46
    invoke-static {}, Lorg/jshybugger/DebugService;->getInstance()Lorg/jshybugger/DebugService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/DebugService;->getInstrumentationProvider()Lorg/jshybugger/hE;

    move-result-object v0

    .line 276
    invoke-virtual {v0, p0}, Lorg/jshybugger/hE;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    invoke-virtual {v0, v2}, Lorg/jshybugger/hE;->a(Ljava/net/URI;)Z

    move-result v3

    if-nez v3, :cond_60

    invoke-virtual {v0, v2}, Lorg/jshybugger/hE;->b(Ljava/net/URI;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 277
    :cond_60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_20

    .line 266
    :catch_72
    move-exception v0

    .line 267
    const-string v1, "DebugServiceClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "skipping non RFC compliant URL \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/jshybugger/jf;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 272
    :cond_96
    const/4 v0, 0x0

    goto :goto_3a
.end method


# virtual methods
.method public getJsHybuggerURL()Ljava/lang/String;
    .registers 3

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/jshybugger/DebugContentProvider;->getProviderProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "jshybugger.js"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public instrumentScript(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 194
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_43

    invoke-static {}, Lorg/jshybugger/DebugService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 195
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 196
    const-string v1, "scriptSource"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/jshybugger/DebugContentProvider;->getProviderProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_44

    :goto_25
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 200
    iget-object v2, p0, Lorg/jshybugger/DebugServiceClient;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 204
    :cond_43
    return-object p1

    .line 198
    :cond_44
    const-string p2, ""

    goto :goto_25
.end method

.method public loadResource(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 217
    if-eqz p1, :cond_b

    const-string v1, "data:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 228
    :cond_b
    :goto_b
    return-object v0

    .line 221
    :cond_c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_b

    invoke-static {}, Lorg/jshybugger/DebugService;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 225
    invoke-static {}, Lorg/jshybugger/DebugContentProvider;->getProviderProtocol()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    :goto_22
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lorg/jshybugger/DebugServiceClient;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_b

    .line 227
    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_22
.end method
