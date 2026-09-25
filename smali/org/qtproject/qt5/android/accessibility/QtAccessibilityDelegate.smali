.class public Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "QtAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;,
        Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$HoverEventListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLASS_NAME:Ljava/lang/String; = "$VirtualChild"

.field public static final INVALID_ID:I = 0x14d

.field private static final TAG:Ljava/lang/String; = "Qt A11Y"


# instance fields
.field private m_activity:Landroid/app/Activity;

.field private m_activityDelegate:Lorg/qtproject/qt5/android/QtActivityDelegate;

.field private m_focusedVirtualViewId:I

.field private final m_globalOffset:[I

.field private m_hoveredVirtualViewId:I

.field private m_layout:Landroid/view/ViewGroup;

.field private m_manager:Landroid/view/accessibility/AccessibilityManager;

.field private m_nodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

.field private m_view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lorg/qtproject/qt5/android/QtActivityDelegate;)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/16 v0, 0x14d

    .line 97
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 70
    iput-object v2, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    .line 78
    iput v0, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    .line 80
    iput v0, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_hoveredVirtualViewId:I

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_globalOffset:[I

    .line 339
    new-instance v0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$1;

    invoke-direct {v0, p0}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$1;-><init>(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;)V

    iput-object v0, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_nodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 98
    iput-object p1, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_activity:Landroid/app/Activity;

    .line 99
    iput-object p2, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_layout:Landroid/view/ViewGroup;

    .line 100
    iput-object p3, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_activityDelegate:Lorg/qtproject/qt5/android/QtActivityDelegate;

    .line 102
    iget-object v0, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_activity:Landroid/app/Activity;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_manager:Landroid/view/accessibility/AccessibilityManager;

    .line 103
    iget-object v0, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_manager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_4e

    .line 104
    new-instance v0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;

    invoke-direct {v0, p0, v2}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;-><init>(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$1;)V

    .line 105
    iget-object v1, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_manager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 106
    const-string v1, "Qt A11y"

    const-string v2, "Could not register a11y state change listener"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_42
    iget-object v1, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_manager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 108
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;->onAccessibilityStateChanged(Z)V

    .line 110
    :cond_4e
    return-void
.end method

.method static synthetic access$000(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;)Landroid/view/View;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;)Lorg/qtproject/qt5/android/QtActivityDelegate;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_activityDelegate:Lorg/qtproject/qt5/android/QtActivityDelegate;

    return-object v0
.end method

.method static synthetic access$500(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;)Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_layout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$700(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->getNodeForView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->getNodeForVirtualViewId(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;)I
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    return v0
.end method

.method static synthetic access$902(Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;I)I
    .registers 2

    .prologue
    .line 58
    iput p1, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    return p1
.end method

.method private dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    .line 166
    iget-object v0, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_manager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 167
    const/4 v0, 0x0

    .line 185
    :goto_9
    return v0

    .line 170
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/accessibility/QtNativeAccessibility;->hitTest(FF)I

    move-result v0

    .line 171
    const/16 v1, 0x14d

    if-ne v0, v1, :cond_1b

    .line 172
    const/4 v0, -0x1

    .line 175
    :cond_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_2c

    .line 185
    :goto_22
    :pswitch_22
    const/4 v0, 0x1

    goto :goto_9

    .line 178
    :pswitch_24
    invoke-direct {p0, v0}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->setHoveredVirtualViewId(I)V

    goto :goto_22

    .line 181
    :pswitch_28
    invoke-direct {p0, v0}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->setHoveredVirtualViewId(I)V

    goto :goto_22

    .line 175
    :pswitch_data_2c
    .packed-switch 0x7
        :pswitch_24
        :pswitch_22
        :pswitch_24
        :pswitch_28
    .end packed-switch
.end method

.method private dumpNodes(I)V
    .registers 7

    .prologue
    .line 241
    const-string v0, "Qt A11Y"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A11Y hierarchy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/qtproject/qt5/android/accessibility/QtNativeAccessibility;->parentId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v0, "Qt A11Y"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    desc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/qtproject/qt5/android/accessibility/QtNativeAccessibility;->descriptionForAccessibleObject(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/qtproject/qt5/android/accessibility/QtNativeAccessibility;->screenRect(I)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string v0, "Qt A11Y"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " NODE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->getNodeForVirtualViewId(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {p1}, Lorg/qtproject/qt5/android/accessibility/QtNativeAccessibility;->childIdListForAccessibleObject(I)[I

    move-result-object v1

    .line 245
    const/4 v0, 0x0

    :goto_71
    array-length v2, v1

    if-ge v0, v2, :cond_9a

    .line 246
    const-string v2, "Qt A11Y"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has child: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    aget v2, v1, v0

    invoke-direct {p0, v2}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->dumpNodes(I)V

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    .line 249
    :cond_9a
    return-void
.end method

.method private getEventForVirtualViewId(II)Landroid/view/accessibility/AccessibilityEvent;
    .registers 6

    .prologue
    .line 225
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 227
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$VirtualChild"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 230
    invoke-static {p1}, Lorg/qtproject/qt5/android/accessibility/QtNativeAccessibility;->descriptionForAccessibleObject(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 232
    const-string v1, "Qt A11Y"

    const-string v2, "AccessibilityEvent with empty description"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_4a
    iget-object v1, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v1, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 236
    return-object v0
.end method

.method private getNodeForView()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 255
    iget-object v0, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 256
    iget-object v0, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 257
    iget-object v0, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 260
    iget-object v0, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    iget-object v4, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_globalOffset:[I

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 261
    iget-object v0, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_globalOffset:[I

    aget v0, v0, v1

    .line 262
    iget-object v4, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_globalOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 265
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 266
    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 267
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 269
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 270
    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 271
    invoke-virtual {v5, v0, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 272
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 275
    iget-object v0, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 276
    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_4a

    .line 277
    check-cast v0, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 280
    :cond_4a
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 281
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 282
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 287
    const/4 v0, -0x1

    invoke-static {v0}, Lorg/qtproject/qt5/android/accessibility/QtNativeAccessibility;->childIdListForAccessibleObject(I)[I

    move-result-object v3

    move v0, v1

    .line 288
    :goto_65
    array-length v1, v3

    if-ge v0, v1, :cond_72

    .line 289
    iget-object v1, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    aget v4, v3, v0

    invoke-virtual {v2, v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 291
    :cond_72
    return-object v2
.end method

.method private getNodeForVirtualViewId(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 296
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$VirtualChild"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v2, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 301
    invoke-static {p1, v1}, Lorg/qtproject/qt5/android/accessibility/QtNativeAccessibility;->populateNode(ILandroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-nez v2, :cond_3b

    move-object v0, v1

    .line 336
    :goto_3a
    return-object v0

    .line 305
    :cond_3b
    iget-object v2, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v1, v2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 307
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 308
    const-string v2, "Qt A11Y"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AccessibilityNodeInfo with empty contentDescription: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_6c
    invoke-static {p1}, Lorg/qtproject/qt5/android/accessibility/QtNativeAccessibility;->parentId(I)I

    move-result v2

    .line 311
    iget-object v3, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v1, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    .line 313
    invoke-static {p1}, Lorg/qtproject/qt5/android/accessibility/QtNativeAccessibility;->screenRect(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 314
    iget-object v4, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_globalOffset:[I

    aget v4, v4, v0

    .line 315
    iget-object v5, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_globalOffset:[I

    aget v5, v5, v6

    .line 316
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 317
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 320
    invoke-static {v2}, Lorg/qtproject/qt5/android/accessibility/QtNativeAccessibility;->screenRect(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 321
    iget v4, v2, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 322
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 325
    iget v2, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    if-ne v2, p1, :cond_b4

    .line 326
    invoke-virtual {v1, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 327
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 333
    :goto_a3
    invoke-static {p1}, Lorg/qtproject/qt5/android/accessibility/QtNativeAccessibility;->childIdListForAccessibleObject(I)[I

    move-result-object v2

    .line 334
    :goto_a7
    array-length v3, v2

    if-ge v0, v3, :cond_bd

    .line 335
    iget-object v3, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    aget v4, v2, v0

    invoke-virtual {v1, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_a7

    .line 329
    :cond_b4
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 330
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_a3

    :cond_bd
    move-object v0, v1

    .line 336
    goto/16 :goto_3a
.end method

.method private setHoveredVirtualViewId(I)V
    .registers 4

    .prologue
    .line 213
    iget v0, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_hoveredVirtualViewId:I

    if-ne v0, p1, :cond_5

    .line 221
    :goto_4
    return-void

    .line 217
    :cond_5
    iget v0, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_hoveredVirtualViewId:I

    .line 218
    iput p1, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_hoveredVirtualViewId:I

    .line 219
    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)Z

    .line 220
    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)Z

    goto :goto_4
.end method


# virtual methods
.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_nodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    return-object v0
.end method

.method public invalidateVirtualViewId(I)V
    .registers 3

    .prologue
    .line 208
    const/16 v0, 0x800

    invoke-virtual {p0, p1, v0}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)Z

    .line 209
    return-void
.end method

.method protected performActionForVirtualViewId(IILandroid/os/Bundle;)Z
    .registers 6

    .prologue
    const/16 v1, 0x1000

    .line 396
    const/4 v0, 0x0

    .line 397
    sparse-switch p2, :sswitch_data_26

    .line 414
    :cond_6
    :goto_6
    return v0

    .line 399
    :sswitch_7
    invoke-static {p1}, Lorg/qtproject/qt5/android/accessibility/QtNativeAccessibility;->clickAction(I)Z

    move-result v0

    .line 400
    if-eqz v0, :cond_6

    .line 401
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)Z

    goto :goto_6

    .line 404
    :sswitch_12
    invoke-static {p1}, Lorg/qtproject/qt5/android/accessibility/QtNativeAccessibility;->scrollForward(I)Z

    move-result v0

    .line 405
    if-eqz v0, :cond_6

    .line 406
    invoke-virtual {p0, p1, v1}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)Z

    goto :goto_6

    .line 409
    :sswitch_1c
    invoke-static {p1}, Lorg/qtproject/qt5/android/accessibility/QtNativeAccessibility;->scrollBackward(I)Z

    move-result v0

    .line 410
    if-eqz v0, :cond_6

    .line 411
    invoke-virtual {p0, p1, v1}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)Z

    goto :goto_6

    .line 397
    :sswitch_data_26
    .sparse-switch
        0x10 -> :sswitch_7
        0x1000 -> :sswitch_12
        0x2000 -> :sswitch_1c
    .end sparse-switch
.end method

.method public sendEventForVirtualViewId(II)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 190
    const/16 v0, 0x14d

    if-eq p1, v0, :cond_d

    iget-object v0, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_manager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_16

    .line 191
    :cond_d
    const-string v0, "Qt A11Y"

    const-string v2, "sendEventForVirtualViewId for invalid view"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 203
    :goto_15
    return v0

    .line 195
    :cond_16
    iget-object v0, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 196
    if-nez v0, :cond_29

    .line 197
    const-string v0, "Qt A11Y"

    const-string v2, "Could not send AccessibilityEvent because group was null. This should really not happen."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 198
    goto :goto_15

    .line 202
    :cond_29
    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->getEventForVirtualViewId(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 203
    iget-object v2, p0, Lorg/qtproject/qt5/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_15
.end method
