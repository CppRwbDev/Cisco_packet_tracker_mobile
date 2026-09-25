.class Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas$2;
.super Ljava/lang/Object;
.source "LoginDialogCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;->Login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;)V
    .registers 2
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;

    .prologue
    .line 85
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 90
    :try_start_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 91
    .local v1, "pd":Landroid/app/ProgressDialog;
    const-string v2, "Loading please wait.."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 92
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 94
    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;

    const-string v3, "https://82252856.netacad.com/login/oauth2/auth?client_id=10000000000068&response_type=code&redirect_uri=urn:ietf:wg:oauth:2.0:oob"

    iput-object v3, v2, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;->canvasUrl:Ljava/lang/String;

    .line 96
    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;

    iget-object v2, v2, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;->webView:Landroid/webkit/WebView;

    new-instance v3, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas$2$1;

    invoke-direct {v3, p0, v1}, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas$2$1;-><init>(Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas$2;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 148
    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;

    iget-object v2, v2, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;->webView:Landroid/webkit/WebView;

    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;

    iget-object v3, v3, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;->canvasUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;

    iget-object v2, v2, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 150
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 155
    .end local v1    # "pd":Landroid/app/ProgressDialog;
    :goto_39
    return-void

    .line 152
    :catch_3a
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LDCA"

    const-string v3, "Login error: "

    invoke-static {v2, v3, v0}, Lorg/qtproject/qt5/android/bindings/PTJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_39
.end method
