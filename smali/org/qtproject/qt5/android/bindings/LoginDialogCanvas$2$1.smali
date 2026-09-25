.class Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas$2$1;
.super Landroid/webkit/WebViewClient;
.source "LoginDialogCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas$2;

.field final synthetic val$pd:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas$2;Landroid/app/ProgressDialog;)V
    .registers 3
    .param p1, "this$1"    # Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas$2;

    .prologue
    .line 96
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas$2$1;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas$2;

    iput-object p2, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas$2$1;->val$pd:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas$2$1;->val$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 143
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas$2$1;->val$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 145
    :cond_d
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string v2, "/login/oauth2/auth?code="

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 100
    const-string v2, "="

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "code":Ljava/lang/String;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas$2$1$1;

    invoke-direct {v2, p0, v0}, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas$2$1$1;-><init>(Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas$2$1;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 128
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 129
    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas$2$1;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas$2;

    iget-object v2, v2, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;

    iget-object v2, v2, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 131
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "thread":Ljava/lang/Thread;
    :cond_2a
    const-string v2, "/login/oauth2/deny"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 137
    :cond_32
    const/4 v2, 0x0

    return v2
.end method
