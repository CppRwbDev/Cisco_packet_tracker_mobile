.class Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;
.super Ljava/lang/Object;
.source "LoginDialogNetspace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;)V
    .registers 2
    .param p1, "this$1"    # Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;

    .prologue
    .line 108
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 112
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iget-boolean v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->timerDone:Z

    if-eqz v0, :cond_17

    .line 113
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->instance()Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;

    move-result-object v0

    const-string v1, "app"

    const-string v2, "login"

    const-string v3, "guest"

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 115
    :cond_17
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->webView:Landroid/webkit/WebView;

    const-string v1, "https://www.netacad.com/web/about-us/about-networking-academy"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->timer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_52

    .line 117
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iput-boolean v4, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->timerDone:Z

    .line 118
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->timer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 119
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 120
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v0

    const v1, 0x7f0a003b

    invoke-virtual {v0, v1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 121
    .local v6, "guest":Landroid/widget/TextView;
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    .end local v6    # "guest":Landroid/widget/TextView;
    :cond_52
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;

    iget-object v7, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    new-instance v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;

    const-wide/16 v2, 0x3a98

    const-wide/16 v4, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;-><init>(Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;JJ)V

    .line 159
    invoke-virtual {v0}, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, v7, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->timer:Landroid/os/CountDownTimer;

    .line 160
    return-void
.end method
