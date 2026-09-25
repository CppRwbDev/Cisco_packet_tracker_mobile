.class Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity$2$1;
.super Landroid/webkit/WebViewClient;
.source "LoginDialogCommunity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity$2;

.field final synthetic val$pd:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity$2;Landroid/app/ProgressDialog;)V
    .registers 3
    .param p1, "this$1"    # Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity$2;

    .prologue
    .line 76
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity$2$1;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity$2;

    iput-object p2, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity$2$1;->val$pd:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity$2$1;->val$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 81
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity$2$1;->val$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 83
    :cond_d
    return-void
.end method
