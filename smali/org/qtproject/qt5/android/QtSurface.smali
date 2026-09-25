.class public Lorg/qtproject/qt5/android/QtSurface;
.super Landroid/view/SurfaceView;
.source "QtSurface.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private m_accessibilityDelegate:Ljava/lang/Object;

.field private m_gestureDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZI)V
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt5/android/QtSurface;->m_accessibilityDelegate:Ljava/lang/Object;

    .line 56
    invoke-virtual {p0, v1}, Lorg/qtproject/qt5/android/QtSurface;->setFocusable(Z)V

    .line 57
    invoke-virtual {p0, v1}, Lorg/qtproject/qt5/android/QtSurface;->setFocusableInTouchMode(Z)V

    .line 58
    invoke-virtual {p0, p3}, Lorg/qtproject/qt5/android/QtSurface;->setZOrderMediaOverlay(Z)V

    .line 59
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/QtSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 60
    const/16 v0, 0x10

    if-ne p4, v0, :cond_47

    .line 61
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/QtSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 65
    :goto_24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_32

    .line 66
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/QtSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 68
    :cond_32
    invoke-virtual {p0, p2}, Lorg/qtproject/qt5/android/QtSurface;->setId(I)V

    .line 69
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lorg/qtproject/qt5/android/QtSurface$1;

    invoke-direct {v1, p0}, Lorg/qtproject/qt5/android/QtSurface$1;-><init>(Lorg/qtproject/qt5/android/QtSurface;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/qtproject/qt5/android/QtSurface;->m_gestureDetector:Landroid/view/GestureDetector;

    .line 75
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtSurface;->m_gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 76
    return-void

    .line 63
    :cond_47
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/QtSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_24
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/QtSurface;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lorg/qtproject/qt5/android/QtNative;->sendTouchEvent(Landroid/view/MotionEvent;I)V

    .line 102
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtSurface;->m_gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 109
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/QtSurface;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lorg/qtproject/qt5/android/QtNative;->sendTrackballEvent(Landroid/view/MotionEvent;I)V

    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 86
    if-lt p3, v0, :cond_5

    if-ge p4, v0, :cond_6

    .line 90
    :cond_5
    :goto_5
    return-void

    .line 89
    :cond_6
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/QtSurface;->getId()I

    move-result v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v0, v1, p3, p4}, Lorg/qtproject/qt5/android/QtNative;->setSurface(ILjava/lang/Object;II)V

    goto :goto_5
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2

    .prologue
    .line 81
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/QtSurface;->getId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v2, v2}, Lorg/qtproject/qt5/android/QtNative;->setSurface(ILjava/lang/Object;II)V

    .line 96
    return-void
.end method
