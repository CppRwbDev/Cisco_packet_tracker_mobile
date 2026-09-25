.class Lorg/qtproject/qt5/android/bindings/QtActivity$3$1;
.super Lorg/kde/necessitas/ministro/IMinistroCallback$Stub;
.source "QtActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt5/android/bindings/QtActivity$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/qtproject/qt5/android/bindings/QtActivity$3;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/QtActivity$3;)V
    .registers 2
    .param p1, "this$1"    # Lorg/qtproject/qt5/android/bindings/QtActivity$3;

    .prologue
    .line 463
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$3$1;->this$1:Lorg/qtproject/qt5/android/bindings/QtActivity$3;

    invoke-direct {p0}, Lorg/kde/necessitas/ministro/IMinistroCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public loaderReady(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "loaderParams"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$3$1;->this$1:Lorg/qtproject/qt5/android/bindings/QtActivity$3;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity$3;->this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;

    new-instance v1, Lorg/qtproject/qt5/android/bindings/QtActivity$3$1$1;

    invoke-direct {v1, p0, p1}, Lorg/qtproject/qt5/android/bindings/QtActivity$3$1$1;-><init>(Lorg/qtproject/qt5/android/bindings/QtActivity$3$1;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 474
    return-void
.end method
