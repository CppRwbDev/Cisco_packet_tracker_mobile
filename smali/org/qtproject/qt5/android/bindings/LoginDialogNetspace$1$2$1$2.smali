.class Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1$2;
.super Ljava/lang/Object;
.source "LoginDialogNetspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;)V
    .registers 2
    .param p1, "this$3"    # Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;

    .prologue
    .line 142
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1$2;->this$3:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 145
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1$2;->this$3:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;

    iget-object v1, v1, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;->this$2:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;

    iget-object v1, v1, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;

    iget-object v1, v1, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iput-boolean v4, v1, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->timerDone:Z

    .line 146
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1$2;->this$3:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;

    iget-object v1, v1, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;->this$2:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;

    iget-object v1, v1, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;

    iget-object v1, v1, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iget-object v1, v1, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->timer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 147
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1$2;->this$3:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;

    iget-object v1, v1, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;->this$2:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;

    iget-object v1, v1, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;

    iget-object v1, v1, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->timer:Landroid/os/CountDownTimer;

    .line 148
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1$2;->this$3:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;

    iget-object v1, v1, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;->this$2:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;

    iget-object v1, v1, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;

    iget-object v1, v1, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iget-object v1, v1, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 149
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v1

    const v2, 0x7f0a003b

    invoke-virtual {v1, v2}, Lorg/qtproject/qt5/android/bindings/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 150
    .local v0, "guest":Landroid/widget/TextView;
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1$2;->this$3:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;

    iget-object v1, v1, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;->this$2:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;

    iget-object v1, v1, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;

    iget-object v1, v1, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iget-object v1, v1, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const-string v2, "Guest Login"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1$2;->this$3:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;

    iget-object v1, v1, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;->this$2:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;

    iget-object v1, v1, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;

    iget-object v1, v1, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iget-object v1, v1, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 154
    return-void
.end method
