.class Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;
.super Landroid/os/CountDownTimer;
.source "LoginDialogNetspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;JJ)V
    .registers 6
    .param p1, "this$2"    # Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 124
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;->this$2:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .prologue
    .line 140
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;->this$2:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->timerDone:Z

    .line 141
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v0

    new-instance v1, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1$2;

    invoke-direct {v1, p0}, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1$2;-><init>(Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;)V

    invoke-virtual {v0, v1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method

.method public onTick(J)V
    .registers 8
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 126
    move-wide v0, p1

    .line 128
    .local v0, "time":J
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v2

    new-instance v3, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1$1;

    invoke-direct {v3, p0, v0, v1}, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1$1;-><init>(Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;J)V

    invoke-virtual {v2, v3}, Lorg/qtproject/qt5/android/bindings/QtActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method
