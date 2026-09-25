.class Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;
.super Ljava/lang/Object;
.source "LoginDialogNetspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->Login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;)V
    .registers 2
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    .prologue
    .line 175
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 179
    :try_start_0
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v5

    const v6, 0x7f0a003b

    invoke-virtual {v5, v6}, Lorg/qtproject/qt5/android/bindings/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 180
    .local v3, "guest":Landroid/widget/TextView;
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v5

    invoke-virtual {v5}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getFrontEndBridge()Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-result-object v5

    invoke-virtual {v5}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->isNetworkAvailable()Z

    move-result v5

    if-nez v5, :cond_4a

    .line 183
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 185
    .local v0, "ad":Landroid/app/AlertDialog;
    const-string v5, "No Internet connection detected.\nYou will be logged in as a Guest."

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 186
    const-string v5, "OK"

    new-instance v6, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$1;

    invoke-direct {v6, p0}, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$1;-><init>(Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 190
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 191
    iget-object v5, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iget-object v5, v5, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 192
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    .end local v0    # "ad":Landroid/app/AlertDialog;
    .end local v3    # "guest":Landroid/widget/TextView;
    :goto_49
    return-void

    .line 194
    .restart local v3    # "guest":Landroid/widget/TextView;
    :cond_4a
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 195
    .local v4, "pd":Landroid/app/ProgressDialog;
    const-string v5, "Loading please wait.."

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 196
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 198
    iget-object v5, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    const-string v6, "https://www.netacad.com/ptlogin/"

    iput-object v6, v5, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->siteUrl:Ljava/lang/String;

    .line 199
    iget-object v5, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iget-object v5, v5, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->webView:Landroid/webkit/WebView;

    new-instance v6, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2;

    invoke-direct {v6, p0, v4}, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2;-><init>(Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;Landroid/app/ProgressDialog;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 293
    iget-object v5, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iget-object v5, v5, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->webView:Landroid/webkit/WebView;

    iget-object v6, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iget-object v6, v6, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->siteUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 294
    iget-object v5, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iget-object v5, v5, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 295
    iget-object v5, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iget-object v5, v5, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->alertDialog:Landroid/app/AlertDialog;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 296
    iget-object v5, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iget-object v5, v5, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->alertDialog:Landroid/app/AlertDialog;

    const/4 v6, -0x2

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 297
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 298
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 299
    .local v1, "bd":Landroid/app/AlertDialog$Builder;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 300
    const-string v5, "A Cisco NetSpace account is required to access some Packet Tracer Mobile features.\n\nPlease sign in with your Cisco NetSpace credentials."

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 301
    const-string v5, "OK"

    new-instance v6, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$3;

    invoke-direct {v6, p0}, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$3;-><init>(Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 312
    iget-object v5, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, v5, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->dialog:Landroid/app/AlertDialog;

    .line 313
    iget-object v5, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iget-object v5, v5, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 315
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v5

    invoke-virtual {v5}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getFrontEndBridge()Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-result-object v5

    invoke-virtual {v5}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->getWebView()Landroid/webkit/WebView;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setSystemUiVisibility(I)V

    .line 316
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v5

    invoke-virtual {v5}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getFrontEndBridge()Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-result-object v5

    invoke-virtual {v5}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->getWebView()Landroid/webkit/WebView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setVisibility(I)V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e8} :catch_ea

    goto/16 :goto_49

    .line 319
    .end local v1    # "bd":Landroid/app/AlertDialog$Builder;
    .end local v3    # "guest":Landroid/widget/TextView;
    .end local v4    # "pd":Landroid/app/ProgressDialog;
    :catch_ea
    move-exception v2

    .line 320
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "LDNE"

    const-string v6, "Login error:"

    invoke-static {v5, v6, v2}, Lorg/qtproject/qt5/android/bindings/PTJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49
.end method
