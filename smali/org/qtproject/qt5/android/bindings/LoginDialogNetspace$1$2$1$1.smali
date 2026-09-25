.class Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1$1;
.super Ljava/lang/Object;
.source "LoginDialogNetspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;->onTick(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;J)V
    .registers 4
    .param p1, "this$3"    # Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;

    .prologue
    .line 129
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1$1;->this$3:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;

    iput-wide p2, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1$1;->val$time:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x2

    .line 132
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1$1;->this$3:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;->this$2:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "Guest Login ( %2d )"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v4, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1$1;->val$time:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1$1;->this$3:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2$1;->this$2:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 134
    return-void
.end method
