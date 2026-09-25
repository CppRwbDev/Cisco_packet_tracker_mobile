.class final Lorg/qtproject/qt5/android/QtNative$14;
.super Ljava/lang/Object;
.source "QtNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/QtNative;->setSurfaceGeometry(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$h:I

.field final synthetic val$id:I

.field final synthetic val$w:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(IIIII)V
    .registers 6

    .prologue
    .line 536
    iput p1, p0, Lorg/qtproject/qt5/android/QtNative$14;->val$id:I

    iput p2, p0, Lorg/qtproject/qt5/android/QtNative$14;->val$x:I

    iput p3, p0, Lorg/qtproject/qt5/android/QtNative$14;->val$y:I

    iput p4, p0, Lorg/qtproject/qt5/android/QtNative$14;->val$w:I

    iput p5, p0, Lorg/qtproject/qt5/android/QtNative$14;->val$h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 539
    invoke-static {}, Lorg/qtproject/qt5/android/QtNative;->access$000()Lorg/qtproject/qt5/android/QtActivityDelegate;

    move-result-object v0

    iget v1, p0, Lorg/qtproject/qt5/android/QtNative$14;->val$id:I

    iget v2, p0, Lorg/qtproject/qt5/android/QtNative$14;->val$x:I

    iget v3, p0, Lorg/qtproject/qt5/android/QtNative$14;->val$y:I

    iget v4, p0, Lorg/qtproject/qt5/android/QtNative$14;->val$w:I

    iget v5, p0, Lorg/qtproject/qt5/android/QtNative$14;->val$h:I

    invoke-virtual/range {v0 .. v5}, Lorg/qtproject/qt5/android/QtActivityDelegate;->setSurfaceGeometry(IIIII)V

    .line 540
    return-void
.end method
