.class final Lorg/qtproject/qt5/android/QtNative$6;
.super Ljava/lang/Object;
.source "QtNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/QtNative;->setFullScreen(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fullScreen:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2

    .prologue
    .line 406
    iput-boolean p1, p0, Lorg/qtproject/qt5/android/QtNative$6;->val$fullScreen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 409
    invoke-static {}, Lorg/qtproject/qt5/android/QtNative;->access$000()Lorg/qtproject/qt5/android/QtActivityDelegate;

    move-result-object v0

    iget-boolean v1, p0, Lorg/qtproject/qt5/android/QtNative$6;->val$fullScreen:Z

    invoke-virtual {v0, v1}, Lorg/qtproject/qt5/android/QtActivityDelegate;->setFullScreen(Z)V

    .line 410
    invoke-static {}, Lorg/qtproject/qt5/android/QtNative;->updateWindow()V

    .line 411
    return-void
.end method
