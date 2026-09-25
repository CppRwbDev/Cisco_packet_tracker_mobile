.class Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$1;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "QtAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;)V
    .registers 2

    .prologue
    .line 340
    iput-object p1, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3

    .prologue
    .line 344
    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    .line 345
    iget-object v0, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->access$700(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 347
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v0, p1}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->access$800(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_9
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 353
    const/4 v1, 0x0

    .line 355
    sparse-switch p2, :sswitch_data_5c

    .line 382
    const/4 v0, -0x1

    if-ne p1, v0, :cond_59

    .line 383
    iget-object v0, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->access$200(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    .line 388
    :goto_12
    return v0

    .line 359
    :sswitch_13
    iget-object v2, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v2}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->access$900(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;)I

    move-result v2

    if-eq v2, p1, :cond_59

    .line 360
    iget-object v1, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v1, p1}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->access$902(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;I)I

    .line 361
    iget-object v1, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v1}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->access$200(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 362
    iget-object v1, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;

    const v2, 0x8000

    invoke-virtual {v1, p1, v2}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)Z

    .line 386
    :goto_31
    iget-object v1, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;

    invoke-virtual {v1, p1, p2, p3}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->performActionForVirtualViewId(IILandroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 388
    goto :goto_12

    .line 368
    :sswitch_39
    iget-object v1, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v1}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->access$900(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;)I

    move-result v1

    if-ne v1, p1, :cond_48

    .line 369
    iget-object v1, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;

    const/16 v2, 0x14d

    invoke-static {v1, v2}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->access$902(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;I)I

    .line 375
    :cond_48
    iget-object v1, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v1}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->access$200(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 376
    iget-object v1, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;

    const/high16 v2, 0x10000

    invoke-virtual {v1, p1, v2}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)Z

    goto :goto_31

    :cond_59
    move v0, v1

    goto :goto_31

    .line 355
    nop

    :sswitch_data_5c
    .sparse-switch
        0x40 -> :sswitch_13
        0x80 -> :sswitch_39
    .end sparse-switch
.end method
