.class Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;
.super Ljava/lang/Object;
.source "PacketTracerFrontEndBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->init()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)V
    .registers 2
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    .prologue
    .line 230
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 25

    .prologue
    .line 233
    const-string v19, "creating web view on android UI thread"

    invoke-static/range {v19 .. v19}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->log_thread(Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v5

    .line 238
    .local v5, "a":Lorg/qtproject/qt5/android/bindings/QtActivity;
    new-instance v16, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    invoke-direct/range {v16 .. v16}, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;-><init>()V

    .line 241
    .local v16, "loginWebView":Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v20, v0

    const v19, 0x7f0a0038

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/webkit/WebView;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$002(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 242
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x13

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_41

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$000(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Landroid/webkit/WebView;

    move-result-object v19

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 244
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$000(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Landroid/webkit/WebView;

    move-result-object v19

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Landroid/webkit/WebView;->setSystemUiVisibility(I)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$000(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Landroid/webkit/WebView;

    move-result-object v19

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$000(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Landroid/webkit/WebView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v20, v0

    const-string v21, "PacketTracerFrontEndBridge"

    invoke-virtual/range {v19 .. v21}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$000(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Landroid/webkit/WebView;

    move-result-object v19

    invoke-static {}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->instance()Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;

    move-result-object v20

    const-string v21, "Analytics"

    invoke-virtual/range {v19 .. v21}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$000(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Landroid/webkit/WebView;

    move-result-object v19

    new-instance v20, Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface;

    invoke-direct/range {v20 .. v20}, Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface;-><init>()V

    const-string v21, "DropBoxApiJsInterface"

    invoke-virtual/range {v19 .. v21}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$000(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Landroid/webkit/WebView;

    move-result-object v19

    new-instance v20, Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface;

    invoke-direct/range {v20 .. v20}, Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface;-><init>()V

    const-string v21, "BoxApiJsInterface"

    invoke-virtual/range {v19 .. v21}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$000(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Landroid/webkit/WebView;

    move-result-object v19

    new-instance v20, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;

    invoke-direct/range {v20 .. v20}, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;-><init>()V

    const-string v21, "LoginDialogCanvas"

    invoke-virtual/range {v19 .. v21}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$000(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Landroid/webkit/WebView;

    move-result-object v19

    new-instance v20, Lorg/qtproject/qt5/android/bindings/FacebookClient;

    invoke-direct/range {v20 .. v20}, Lorg/qtproject/qt5/android/bindings/FacebookClient;-><init>()V

    const-string v21, "FacebookClient"

    invoke-virtual/range {v19 .. v21}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$000(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Landroid/webkit/WebView;

    move-result-object v19

    new-instance v20, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-direct/range {v20 .. v20}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;-><init>()V

    const-string v21, "JavaKeyboard"

    invoke-virtual/range {v19 .. v21}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$000(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Landroid/webkit/WebView;

    move-result-object v19

    new-instance v20, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;

    invoke-direct/range {v20 .. v20}, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;-><init>()V

    const-string v21, "LoginDialogCommunity"

    invoke-virtual/range {v19 .. v21}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$000(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Landroid/webkit/WebView;

    move-result-object v19

    const-string v20, "LoginDialogNetspace"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$000(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Landroid/webkit/WebView;

    move-result-object v19

    new-instance v20, Lorg/qtproject/qt5/android/bindings/EmailClient;

    invoke-direct/range {v20 .. v20}, Lorg/qtproject/qt5/android/bindings/EmailClient;-><init>()V

    const-string v21, "EmailClient"

    invoke-virtual/range {v19 .. v21}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$000(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Landroid/webkit/WebView;

    move-result-object v19

    new-instance v20, Lorg/qtproject/qt5/android/bindings/TwitterApiJsInterface;

    invoke-direct/range {v20 .. v20}, Lorg/qtproject/qt5/android/bindings/TwitterApiJsInterface;-><init>()V

    const-string v21, "TwitterApiJsInterface"

    invoke-virtual/range {v19 .. v21}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$000(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Landroid/webkit/WebView;

    move-result-object v19

    new-instance v20, Lorg/qtproject/qt5/android/bindings/Util;

    invoke-direct/range {v20 .. v20}, Lorg/qtproject/qt5/android/bindings/Util;-><init>()V

    const-string v21, "Util"

    invoke-virtual/range {v19 .. v21}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$000(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Landroid/webkit/WebView;

    move-result-object v19

    new-instance v20, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1$1;-><init>(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;)V

    invoke-virtual/range {v19 .. v20}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$000(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Landroid/webkit/WebView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v18

    .line 276
    .local v18, "settings":Landroid/webkit/WebSettings;
    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$000(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Landroid/webkit/WebView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "databases"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 278
    .local v13, "databasePath":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 279
    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 280
    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 281
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0xf

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1b6

    .line 282
    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 283
    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 285
    :cond_1b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$000(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Landroid/webkit/WebView;

    move-result-object v20

    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lorg/jshybugger/DebugServiceClient;->attachWebView(Landroid/webkit/WebView;Landroid/app/Activity;)Lorg/jshybugger/DebugServiceClient;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$302(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;Lorg/jshybugger/DebugServiceClient;)Lorg/jshybugger/DebugServiceClient;

    .line 286
    const-string v6, "/HtmlGui/app.html"

    .line 287
    .local v6, "appHtml":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$000(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Landroid/webkit/WebView;

    move-result-object v19

    new-instance v20, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1$2;-><init>(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;Lorg/qtproject/qt5/android/bindings/QtActivity;)V

    invoke-virtual/range {v19 .. v20}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 561
    :try_start_1e9
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 562
    .local v17, "prefs":Landroid/content/SharedPreferences;
    const-string v19, "login"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 564
    .local v15, "login":Ljava/lang/Boolean;
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-nez v19, :cond_21a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$800(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Z

    move-result v19

    if-eqz v19, :cond_21a

    .line 565
    invoke-virtual/range {v16 .. v16}, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->Login()V

    .line 568
    :cond_21a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$000(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Landroid/webkit/WebView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->getAppPreferences()Lorg/qtproject/qt5/android/bindings/AppPreferences;

    move-result-object v20

    const-string v21, "AppPreferences"

    invoke-virtual/range {v19 .. v21}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 570
    const-string v19, "JPTFB"

    const-string v20, "jsHybugger enabled: %B"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->isJsHybuggerEnabled()Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string v8, "file:///android_asset/HtmlGui/app.html"

    .line 575
    .local v8, "appUrl":Ljava/lang/String;
    const-string v12, "file:///android_asset/HtmlGui/app.html"

    .line 576
    .local v12, "assetPathRes":Ljava/lang/String;
    move-object v10, v12

    .line 578
    .local v10, "assetPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->isJsHybuggerEnabled()Z

    move-result v19

    if-eqz v19, :cond_2ec

    .line 580
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "file://"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/HtmlGui/app.html"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_28b
    .catch Ljava/lang/Exception; {:try_start_1e9 .. :try_end_28b} :catch_3aa

    move-result-object v11

    .line 582
    .local v11, "assetPathAlt":Ljava/lang/String;
    :try_start_28c
    new-instance v9, Ljava/io/File;

    new-instance v19, Ljava/net/URI;

    move-object/from16 v0, v19

    invoke-direct {v0, v11}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 583
    .local v9, "assetAltFile":Ljava/io/File;
    const-string v19, "JPTFB"

    const-string v20, "Checking alternative URL: %s"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v11, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-virtual {v9}, Ljava/io/File;->exists()Z
    :try_end_2b4
    .catch Ljava/lang/Exception; {:try_start_28c .. :try_end_2b4} :catch_3b6

    move-result v19

    if-eqz v19, :cond_2b8

    .line 585
    move-object v10, v11

    .line 588
    .end local v9    # "assetAltFile":Ljava/io/File;
    :cond_2b8
    :goto_2b8
    :try_start_2b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$300(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Lorg/jshybugger/DebugServiceClient;

    invoke-static {v10}, Lorg/jshybugger/DebugServiceClient;->getDebugUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 608
    .end local v11    # "assetPathAlt":Ljava/lang/String;
    :goto_2c5
    const-string v19, "JPTFB"

    const-string v20, "Front end URL: %s"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v8, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$000(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Landroid/webkit/WebView;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 613
    .end local v8    # "appUrl":Ljava/lang/String;
    .end local v10    # "assetPath":Ljava/lang/String;
    .end local v12    # "assetPathRes":Ljava/lang/String;
    .end local v15    # "login":Ljava/lang/Boolean;
    .end local v17    # "prefs":Landroid/content/SharedPreferences;
    :goto_2eb
    return-void

    .line 591
    .restart local v8    # "appUrl":Ljava/lang/String;
    .restart local v10    # "assetPath":Ljava/lang/String;
    .restart local v12    # "assetPathRes":Ljava/lang/String;
    .restart local v15    # "login":Ljava/lang/Boolean;
    .restart local v17    # "prefs":Landroid/content/SharedPreferences;
    :cond_2ec
    const-string v7, "http://htmlgui.com/"

    .line 592
    .local v7, "appLoadUrl":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_302
    .catch Ljava/lang/Exception; {:try_start_2b8 .. :try_end_302} :catch_3aa

    move-result-object v8

    .line 593
    const/16 v3, 0xc

    .line 594
    .local v3, "MAIN_VERSION":I
    const/16 v4, 0xc

    .line 597
    .local v4, "PATCH_VERSION":I
    :try_start_307
    const-string v19, "JPTFB"

    const-string v20, "ZIPOBB - trying to open zip expansion file."

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$000(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Landroid/webkit/WebView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$000(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Landroid/webkit/WebView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->getApplicationVersionCode(Landroid/content/Context;)I

    move-result v21

    const/16 v22, 0xc

    const-string v23, "test123!"

    invoke-static/range {v20 .. v23}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->getAppZipFile(Landroid/content/Context;IILjava/lang/String;)Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$702(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;)Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;

    .line 599
    const-string v19, "JPTFB"

    const-string v20, "ZIPOBB - expansion file status: OK."

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v19, "JPTFB"

    const-string v20, "ZIPOBB - \tencrypted: %B"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$700(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;->isEncrypted()Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_387
    .catch Ljava/lang/Exception; {:try_start_307 .. :try_end_387} :catch_389

    goto/16 :goto_2c5

    .line 601
    :catch_389
    move-exception v14

    .line 602
    .local v14, "e":Ljava/lang/Exception;
    :try_start_38a
    const-string v19, "JPTFB"

    const-string v20, "ZIPOBB - expansion file status: not found or failed to open."

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$702(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;)Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;
    :try_end_3a8
    .catch Ljava/lang/Exception; {:try_start_38a .. :try_end_3a8} :catch_3aa

    goto/16 :goto_2c5

    .line 610
    .end local v3    # "MAIN_VERSION":I
    .end local v4    # "PATCH_VERSION":I
    .end local v7    # "appLoadUrl":Ljava/lang/String;
    .end local v8    # "appUrl":Ljava/lang/String;
    .end local v10    # "assetPath":Ljava/lang/String;
    .end local v12    # "assetPathRes":Ljava/lang/String;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v15    # "login":Ljava/lang/Boolean;
    .end local v17    # "prefs":Landroid/content/SharedPreferences;
    :catch_3aa
    move-exception v14

    .line 611
    .restart local v14    # "e":Ljava/lang/Exception;
    const-string v19, "JPTFB"

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lorg/qtproject/qt5/android/bindings/PTJLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2eb

    .line 586
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v8    # "appUrl":Ljava/lang/String;
    .restart local v10    # "assetPath":Ljava/lang/String;
    .restart local v11    # "assetPathAlt":Ljava/lang/String;
    .restart local v12    # "assetPathRes":Ljava/lang/String;
    .restart local v15    # "login":Ljava/lang/Boolean;
    .restart local v17    # "prefs":Landroid/content/SharedPreferences;
    :catch_3b6
    move-exception v19

    goto/16 :goto_2b8
.end method
