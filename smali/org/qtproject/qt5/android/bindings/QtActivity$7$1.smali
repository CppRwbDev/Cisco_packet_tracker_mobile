.class Lorg/qtproject/qt5/android/bindings/QtActivity$7$1;
.super Ljava/lang/Object;
.source "QtActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/QtActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/qtproject/qt5/android/bindings/QtActivity$7;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/QtActivity$7;)V
    .registers 2
    .param p1, "this$1"    # Lorg/qtproject/qt5/android/bindings/QtActivity$7;

    .prologue
    .line 1547
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$7$1;->this$1:Lorg/qtproject/qt5/android/bindings/QtActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1550
    const/4 v0, 0x1

    return v0
.end method
