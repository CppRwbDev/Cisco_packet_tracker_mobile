.class final Lorg/qtproject/qt5/android/QtNative$3;
.super Ljava/lang/Object;
.source "QtNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/QtNative;->showSoftwareKeyboard(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$height:I

.field final synthetic val$inputHints:I

.field final synthetic val$width:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(IIIII)V
    .registers 6

    .prologue
    .line 376
    iput p1, p0, Lorg/qtproject/qt5/android/QtNative$3;->val$x:I

    iput p2, p0, Lorg/qtproject/qt5/android/QtNative$3;->val$y:I

    iput p3, p0, Lorg/qtproject/qt5/android/QtNative$3;->val$width:I

    iput p4, p0, Lorg/qtproject/qt5/android/QtNative$3;->val$height:I

    iput p5, p0, Lorg/qtproject/qt5/android/QtNative$3;->val$inputHints:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 379
    invoke-static {}, Lorg/qtproject/qt5/android/QtNative;->access$000()Lorg/qtproject/qt5/android/QtActivityDelegate;

    move-result-object v0

    iget v1, p0, Lorg/qtproject/qt5/android/QtNative$3;->val$x:I

    iget v2, p0, Lorg/qtproject/qt5/android/QtNative$3;->val$y:I

    iget v3, p0, Lorg/qtproject/qt5/android/QtNative$3;->val$width:I

    iget v4, p0, Lorg/qtproject/qt5/android/QtNative$3;->val$height:I

    iget v5, p0, Lorg/qtproject/qt5/android/QtNative$3;->val$inputHints:I

    invoke-virtual/range {v0 .. v5}, Lorg/qtproject/qt5/android/QtActivityDelegate;->showSoftwareKeyboard(IIIII)V

    .line 380
    return-void
.end method
