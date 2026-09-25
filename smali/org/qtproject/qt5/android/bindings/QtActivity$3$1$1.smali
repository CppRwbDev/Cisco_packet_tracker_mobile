.class Lorg/qtproject/qt5/android/bindings/QtActivity$3$1$1;
.super Ljava/lang/Object;
.source "QtActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/QtActivity$3$1;->loaderReady(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/qtproject/qt5/android/bindings/QtActivity$3$1;

.field final synthetic val$loaderParams:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/QtActivity$3$1;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "this$2"    # Lorg/qtproject/qt5/android/bindings/QtActivity$3$1;

    .prologue
    .line 467
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$3$1$1;->this$2:Lorg/qtproject/qt5/android/bindings/QtActivity$3$1;

    iput-object p2, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$3$1$1;->val$loaderParams:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 470
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$3$1$1;->this$2:Lorg/qtproject/qt5/android/bindings/QtActivity$3$1;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity$3$1;->this$1:Lorg/qtproject/qt5/android/bindings/QtActivity$3;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity$3;->this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;

    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$3$1$1;->this$2:Lorg/qtproject/qt5/android/bindings/QtActivity$3$1;

    iget-object v1, v1, Lorg/qtproject/qt5/android/bindings/QtActivity$3$1;->this$1:Lorg/qtproject/qt5/android/bindings/QtActivity$3;

    iget-object v1, v1, Lorg/qtproject/qt5/android/bindings/QtActivity$3;->this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->access$300(Lorg/qtproject/qt5/android/bindings/QtActivity;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 471
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$3$1$1;->this$2:Lorg/qtproject/qt5/android/bindings/QtActivity$3$1;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity$3$1;->this$1:Lorg/qtproject/qt5/android/bindings/QtActivity$3;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity$3;->this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;

    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$3$1$1;->val$loaderParams:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->access$400(Lorg/qtproject/qt5/android/bindings/QtActivity;Landroid/os/Bundle;)V

    .line 472
    return-void
.end method
