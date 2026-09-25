.class Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity$2;
.super Ljava/lang/Object;
.source "LoginDialogCommunity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;->Login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;

    .prologue
    .line 65
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 70
    :try_start_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 71
    .local v1, "pd":Landroid/app/ProgressDialog;
    const-string v2, "Loading please wait.."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 72
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 74
    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;

    const-string v3, "https://www.facebook.com/cisconetworkingacademy"

    iput-object v3, v2, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;->facebookUrl:Ljava/lang/String;

    .line 76
    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;

    iget-object v2, v2, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;->webView:Landroid/webkit/WebView;

    new-instance v3, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity$2$1;

    invoke-direct {v3, p0, v1}, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity$2$1;-><init>(Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity$2;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 86
    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;

    iget-object v2, v2, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;->webView:Landroid/webkit/WebView;

    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;

    iget-object v3, v3, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;->facebookUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;

    iget-object v2, v2, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 88
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 93
    .end local v1    # "pd":Landroid/app/ProgressDialog;
    :goto_39
    return-void

    .line 90
    :catch_3a
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LDCO"

    const-string v3, "Login error: "

    invoke-static {v2, v3, v0}, Lorg/qtproject/qt5/android/bindings/PTJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_39
.end method
