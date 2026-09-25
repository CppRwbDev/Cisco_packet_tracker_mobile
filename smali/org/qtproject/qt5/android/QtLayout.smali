.class public Lorg/qtproject/qt5/android/QtLayout;
.super Landroid/view/ViewGroup;
.source "QtLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt5/android/QtLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private m_startApplicationRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p2, p0, Lorg/qtproject/qt5/android/QtLayout;->m_startApplicationRunnable:Ljava/lang/Runnable;

    .line 51
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    .prologue
    .line 153
    instance-of v0, p1, Lorg/qtproject/qt5/android/QtLayout$LayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x2

    .line 122
    new-instance v0, Lorg/qtproject/qt5/android/QtLayout$LayoutParams;

    invoke-direct {v0, v1, v1, v2, v2}, Lorg/qtproject/qt5/android/QtLayout$LayoutParams;-><init>(IIII)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 159
    new-instance v0, Lorg/qtproject/qt5/android/QtLayout$LayoutParams;

    invoke-direct {v0, p1}, Lorg/qtproject/qt5/android/QtLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public moveChild(Landroid/view/View;I)V
    .registers 5

    .prologue
    .line 208
    if-nez p1, :cond_3

    .line 218
    :cond_2
    :goto_2
    return-void

    .line 211
    :cond_3
    invoke-virtual {p0, p1}, Lorg/qtproject/qt5/android/QtLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 214
    invoke-virtual {p0, p1}, Lorg/qtproject/qt5/android/QtLayout;->detachViewFromParent(Landroid/view/View;)V

    .line 215
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/QtLayout;->requestLayout()V

    .line 216
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/QtLayout;->invalidate()V

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/qtproject/qt5/android/QtLayout;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method protected onLayout(ZIIII)V
    .registers 13

    .prologue
    .line 131
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/QtLayout;->getChildCount()I

    move-result v2

    .line 133
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_2f

    .line 134
    invoke-virtual {p0, v1}, Lorg/qtproject/qt5/android/QtLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 135
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_2b

    .line 137
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/qtproject/qt5/android/QtLayout$LayoutParams;

    .line 139
    iget v4, v0, Lorg/qtproject/qt5/android/QtLayout$LayoutParams;->x:I

    .line 140
    iget v0, v0, Lorg/qtproject/qt5/android/QtLayout$LayoutParams;->y:I

    .line 142
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v4

    .line 143
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v0

    .line 141
    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 133
    :cond_2b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 147
    :cond_2f
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/QtLayout;->getChildCount()I

    move-result v4

    .line 85
    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt5/android/QtLayout;->measureChildren(II)V

    move v3, v0

    move v1, v0

    move v2, v0

    .line 88
    :goto_b
    if-ge v3, v4, :cond_3b

    .line 89
    invoke-virtual {p0, v3}, Lorg/qtproject/qt5/android/QtLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 90
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v6, 0x8

    if-eq v0, v6, :cond_57

    .line 95
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/qtproject/qt5/android/QtLayout$LayoutParams;

    .line 97
    iget v6, v0, Lorg/qtproject/qt5/android/QtLayout$LayoutParams;->x:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    .line 98
    iget v0, v0, Lorg/qtproject/qt5/android/QtLayout$LayoutParams;->y:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v0

    .line 100
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 101
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 88
    :goto_35
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_b

    .line 106
    :cond_3b
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/QtLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 107
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/QtLayout;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 109
    invoke-static {v1, p1}, Lorg/qtproject/qt5/android/QtLayout;->resolveSize(II)I

    move-result v1

    .line 110
    invoke-static {v0, p2}, Lorg/qtproject/qt5/android/QtLayout;->resolveSize(II)I

    move-result v0

    .line 109
    invoke-virtual {p0, v1, v0}, Lorg/qtproject/qt5/android/QtLayout;->setMeasuredDimension(II)V

    .line 111
    return-void

    :cond_57
    move v0, v1

    move v1, v2

    goto :goto_35
.end method

.method protected onSizeChanged(IIII)V
    .registers 15

    .prologue
    .line 66
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 67
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/QtLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 68
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v2, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-double v4, v3

    iget v3, v2, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-double v6, v3

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    float-to-double v8, v2

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v9}, Lorg/qtproject/qt5/android/QtNative;->setApplicationDisplayMetrics(IIIIDDD)V

    .line 70
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtLayout;->m_startApplicationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_34

    .line 71
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtLayout;->m_startApplicationRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt5/android/QtLayout;->m_startApplicationRunnable:Ljava/lang/Runnable;

    .line 74
    :cond_34
    return-void
.end method
