.class Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$1;
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
    .line 90
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$1;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x2

    .line 93
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$1;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->timer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_20

    .line 94
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$1;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->timerDone:Z

    .line 95
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$1;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->timer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 96
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$1;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->timer:Landroid/os/CountDownTimer;

    .line 99
    :cond_20
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$1;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "Guest Login"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$1;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 102
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$1;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    invoke-virtual {v0}, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->Login()V

    .line 104
    return-void
.end method
