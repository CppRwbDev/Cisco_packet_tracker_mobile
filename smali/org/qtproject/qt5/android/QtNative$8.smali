.class final Lorg/qtproject/qt5/android/QtNative$8;
.super Ljava/lang/Object;
.source "QtNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/QtNative;->openContextMenu(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$h:I

.field final synthetic val$w:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(IIII)V
    .registers 5

    .prologue
    .line 449
    iput p1, p0, Lorg/qtproject/qt5/android/QtNative$8;->val$x:I

    iput p2, p0, Lorg/qtproject/qt5/android/QtNative$8;->val$y:I

    iput p3, p0, Lorg/qtproject/qt5/android/QtNative$8;->val$w:I

    iput p4, p0, Lorg/qtproject/qt5/android/QtNative$8;->val$h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 452
    invoke-static {}, Lorg/qtproject/qt5/android/QtNative;->access$000()Lorg/qtproject/qt5/android/QtActivityDelegate;

    move-result-object v0

    iget v1, p0, Lorg/qtproject/qt5/android/QtNative$8;->val$x:I

    iget v2, p0, Lorg/qtproject/qt5/android/QtNative$8;->val$y:I

    iget v3, p0, Lorg/qtproject/qt5/android/QtNative$8;->val$w:I

    iget v4, p0, Lorg/qtproject/qt5/android/QtNative$8;->val$h:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/qtproject/qt5/android/QtActivityDelegate;->openContextMenu(IIII)V

    .line 453
    return-void
.end method
