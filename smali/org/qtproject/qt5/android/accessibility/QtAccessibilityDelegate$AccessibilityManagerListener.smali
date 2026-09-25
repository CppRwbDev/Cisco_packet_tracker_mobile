.class Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;
.super Ljava/lang/Object;
.source "QtAccessibilityDelegate.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityManagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;


# direct methods
.method private constructor <init>(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;)V
    .registers 2

    .prologue
    .line 112
    iput-object p1, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$1;)V
    .registers 3

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;-><init>(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;)V

    return-void
.end method


# virtual methods
.method public onAccessibilityStateChanged(Z)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 117
    if-eqz p1, :cond_79

    .line 119
    :try_start_3
    iget-object v0, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->access$200(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;)Landroid/view/View;

    move-result-object v0

    .line 120
    if-nez v0, :cond_1a

    .line 121
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v1}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->access$300(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 122
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 129
    :cond_1a
    iget-object v1, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 132
    iget-object v1, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v1}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->access$200(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_41

    .line 134
    iget-object v1, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v1}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->access$500(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v2}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->access$400(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;)Lorg/qtproject/qt5/android/QtActivityDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lorg/qtproject/qt5/android/QtActivityDelegate;->getSurfaceCount()I

    move-result v2

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 137
    :cond_41
    iget-object v1, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v1, v0}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->access$202(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;Landroid/view/View;)Landroid/view/View;

    .line 139
    iget-object v0, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->access$200(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$HoverEventListener;

    iget-object v2, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$HoverEventListener;-><init>(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_57} :catch_5b

    .line 151
    :cond_57
    :goto_57
    invoke-static {p1}, Lorg/qtproject/qt5/android/accessibility/QtNativeAccessibility;->setActive(Z)V

    .line 152
    return-void

    .line 140
    :catch_5b
    move-exception v0

    .line 142
    const-string v1, "Qt A11y"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 145
    :cond_79
    iget-object v0, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->access$200(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 146
    iget-object v0, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->access$500(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v1}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->access$200(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 147
    iget-object v0, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v0, v2}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->access$202(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;Landroid/view/View;)Landroid/view/View;

    goto :goto_57
.end method
