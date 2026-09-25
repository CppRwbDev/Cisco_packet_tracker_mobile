.class Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$HoverEventListener;
.super Ljava/lang/Object;
.source "QtAccessibilityDelegate.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;


# direct methods
.method private constructor <init>(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$HoverEventListener;->this$0:Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$1;)V
    .registers 3

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$HoverEventListener;-><init>(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;)V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    .line 92
    iget-object v0, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$HoverEventListener;->this$0:Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v0, p2}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->access$000(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
