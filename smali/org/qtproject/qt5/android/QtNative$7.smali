.class final Lorg/qtproject/qt5/android/QtNative$7;
.super Ljava/lang/Object;
.source "QtNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/QtNative;->registerClipboardManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Semaphore;)V
    .registers 2

    .prologue
    .line 418
    iput-object p1, p0, Lorg/qtproject/qt5/android/QtNative$7;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 421
    invoke-static {}, Lorg/qtproject/qt5/android/QtNative;->access$200()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtNative;->access$102(Landroid/text/ClipboardManager;)Landroid/text/ClipboardManager;

    .line 422
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtNative$7;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 423
    return-void
.end method
