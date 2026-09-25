.class Lorg/qtproject/qt5/android/QtSurface$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "QtSurface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/QtSurface;-><init>(Landroid/content/Context;IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/QtSurface;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/QtSurface;)V
    .registers 2

    .prologue
    .line 70
    iput-object p1, p0, Lorg/qtproject/qt5/android/QtSurface$1;->this$0:Lorg/qtproject/qt5/android/QtSurface;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 5

    .prologue
    .line 72
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtSurface$1;->this$0:Lorg/qtproject/qt5/android/QtSurface;

    invoke-virtual {v0}, Lorg/qtproject/qt5/android/QtSurface;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lorg/qtproject/qt5/android/QtNative;->longPress(III)V

    .line 73
    return-void
.end method
