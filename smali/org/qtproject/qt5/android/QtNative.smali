.class public Lorg/qtproject/qt5/android/QtNative;
.super Ljava/lang/Object;
.source "QtNative.java"


# static fields
.field public static final QtTAG:Ljava/lang/String; = "Qt JAVA"

.field private static m_activity:Landroid/app/Activity;

.field private static m_activityDelegate:Lorg/qtproject/qt5/android/QtActivityDelegate;

.field private static m_classLoader:Ljava/lang/ClassLoader;

.field private static m_clipboardManager:Landroid/text/ClipboardManager;

.field private static m_displayMetricsDesktopHeightPixels:I

.field private static m_displayMetricsDesktopWidthPixels:I

.field private static m_displayMetricsScaledDensity:D

.field private static m_displayMetricsScreenHeightPixels:I

.field private static m_displayMetricsScreenWidthPixels:I

.field private static m_displayMetricsXDpi:D

.field private static m_displayMetricsYDpi:D

.field private static m_lostActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static m_mainActivityMutex:Ljava/lang/Object;

.field private static final m_moveThreshold:I

.field private static m_oldx:I

.field private static m_oldy:I

.field private static m_started:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    sput-object v2, Lorg/qtproject/qt5/android/QtNative;->m_activity:Landroid/app/Activity;

    .line 61
    sput-object v2, Lorg/qtproject/qt5/android/QtNative;->m_activityDelegate:Lorg/qtproject/qt5/android/QtActivityDelegate;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/qtproject/qt5/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/qtproject/qt5/android/QtNative;->m_lostActions:Ljava/util/ArrayList;

    .line 66
    sput-boolean v1, Lorg/qtproject/qt5/android/QtNative;->m_started:Z

    .line 67
    sput v1, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsScreenWidthPixels:I

    .line 68
    sput v1, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsScreenHeightPixels:I

    .line 69
    sput v1, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsDesktopWidthPixels:I

    .line 70
    sput v1, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsDesktopHeightPixels:I

    .line 71
    sput-wide v4, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsXDpi:D

    .line 72
    sput-wide v4, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsYDpi:D

    .line 73
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sput-wide v0, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsScaledDensity:D

    .line 76
    sput-object v2, Lorg/qtproject/qt5/android/QtNative;->m_clipboardManager:Landroid/text/ClipboardManager;

    .line 78
    sput-object v2, Lorg/qtproject/qt5/android/QtNative;->m_classLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/qtproject/qt5/android/QtActivityDelegate;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lorg/qtproject/qt5/android/QtNative;->m_activityDelegate:Lorg/qtproject/qt5/android/QtActivityDelegate;

    return-object v0
.end method

.method static synthetic access$102(Landroid/text/ClipboardManager;)Landroid/text/ClipboardManager;
    .registers 1

    .prologue
    .line 58
    sput-object p0, Lorg/qtproject/qt5/android/QtNative;->m_clipboardManager:Landroid/text/ClipboardManager;

    return-object p0
.end method

.method static synthetic access$200()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lorg/qtproject/qt5/android/QtNative;->m_activity:Landroid/app/Activity;

    return-object v0
.end method

.method public static activity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 91
    sget-object v1, Lorg/qtproject/qt5/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 92
    :try_start_3
    sget-object v0, Lorg/qtproject/qt5/android/QtNative;->m_activity:Landroid/app/Activity;

    monitor-exit v1

    return-object v0

    .line 93
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public static activityDelegate()Lorg/qtproject/qt5/android/QtActivityDelegate;
    .registers 2

    .prologue
    .line 98
    sget-object v1, Lorg/qtproject/qt5/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_3
    sget-object v0, Lorg/qtproject/qt5/android/QtNative;->m_activityDelegate:Lorg/qtproject/qt5/android/QtActivityDelegate;

    monitor-exit v1

    return-object v0

    .line 100
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private static bringChildToBack(I)V
    .registers 2

    .prologue
    .line 556
    new-instance v0, Lorg/qtproject/qt5/android/QtNative$16;

    invoke-direct {v0, p0}, Lorg/qtproject/qt5/android/QtNative$16;-><init>(I)V

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtNative;->runAction(Ljava/lang/Runnable;)Z

    .line 562
    return-void
.end method

.method private static bringChildToFront(I)V
    .registers 2

    .prologue
    .line 546
    new-instance v0, Lorg/qtproject/qt5/android/QtNative$15;

    invoke-direct {v0, p0}, Lorg/qtproject/qt5/android/QtNative$15;-><init>(I)V

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtNative;->runAction(Ljava/lang/Runnable;)Z

    .line 552
    return-void
.end method

.method public static classLoader()Ljava/lang/ClassLoader;
    .registers 1

    .prologue
    .line 81
    sget-object v0, Lorg/qtproject/qt5/android/QtNative;->m_classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static clearLostActions()V
    .registers 1

    .prologue
    .line 172
    sget-object v0, Lorg/qtproject/qt5/android/QtNative;->m_lostActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 173
    return-void
.end method

.method private static closeContextMenu()V
    .registers 1

    .prologue
    .line 459
    new-instance v0, Lorg/qtproject/qt5/android/QtNative$9;

    invoke-direct {v0}, Lorg/qtproject/qt5/android/QtNative$9;-><init>()V

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtNative;->runAction(Ljava/lang/Runnable;)Z

    .line 465
    return-void
.end method

.method private static createSurface(IZIIIII)V
    .registers 15

    .prologue
    .line 516
    new-instance v0, Lorg/qtproject/qt5/android/QtNative$12;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/qtproject/qt5/android/QtNative$12;-><init>(IZIIIII)V

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtNative;->runAction(Ljava/lang/Runnable;)Z

    .line 522
    return-void
.end method

.method private static destroySurface(I)V
    .registers 2

    .prologue
    .line 566
    new-instance v0, Lorg/qtproject/qt5/android/QtNative$17;

    invoke-direct {v0, p0}, Lorg/qtproject/qt5/android/QtNative$17;-><init>(I)V

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtNative;->runAction(Ljava/lang/Runnable;)Z

    .line 572
    return-void
.end method

.method public static native fillContextMenu(Landroid/view/Menu;)V
.end method

.method private static getAction(ILandroid/view/MotionEvent;)I
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 278
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 279
    if-ne v3, v1, :cond_2f

    .line 280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    .line 281
    if-lez v3, :cond_29

    .line 282
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 283
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 284
    :goto_17
    if-ge v2, v3, :cond_2d

    .line 285
    invoke-virtual {p1, p0, v2}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v6

    cmpl-float v6, v6, v4

    if-nez v6, :cond_29

    .line 286
    invoke-virtual {p1, p0, v2}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v6

    cmpl-float v6, v6, v5

    if-eqz v6, :cond_2a

    .line 298
    :cond_29
    :goto_29
    return v0

    .line 284
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_2d
    move v0, v1

    .line 289
    goto :goto_29

    .line 293
    :cond_2f
    if-eqz v3, :cond_3a

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    if-ne p0, v4, :cond_3c

    :cond_3a
    move v0, v2

    .line 294
    goto :goto_29

    .line 295
    :cond_3c
    if-eq v3, v0, :cond_47

    const/4 v0, 0x6

    if-ne v3, v0, :cond_49

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-ne p0, v0, :cond_49

    .line 296
    :cond_47
    const/4 v0, 0x3

    goto :goto_29

    :cond_49
    move v0, v1

    .line 298
    goto :goto_29
.end method

.method private static getClipboardText()Ljava/lang/String;
    .registers 1

    .prologue
    .line 444
    sget-object v0, Lorg/qtproject/qt5/android/QtNative;->m_clipboardManager:Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLostActions()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    sget-object v0, Lorg/qtproject/qt5/android/QtNative;->m_lostActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static getSSLCertificates()[[B
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 489
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 492
    :try_start_6
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 493
    const/4 v0, 0x0

    check-cast v0, Ljava/security/KeyStore;

    invoke-virtual {v2, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 495
    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_1a
    if-ge v2, v5, :cond_44

    aget-object v0, v4, v2

    .line 496
    instance-of v6, v0, Ljavax/net/ssl/X509TrustManager;

    if-eqz v6, :cond_38

    .line 497
    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    .line 499
    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v6

    array-length v7, v6

    move v0, v1

    :goto_2a
    if-ge v0, v7, :cond_38

    aget-object v8, v6, v0

    .line 500
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v8

    .line 501
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_35} :catch_3c

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 495
    :cond_38
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1a

    .line 505
    :catch_3c
    move-exception v0

    .line 506
    const-string v1, "Qt JAVA"

    const-string v2, "Failed to get certificates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 509
    :cond_44
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [[B

    .line 510
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    .line 511
    return-object v0
.end method

.method public static native handleOrientationChanged(II)V
.end method

.method private static hasClipboardText()Z
    .registers 1

    .prologue
    .line 439
    sget-object v0, Lorg/qtproject/qt5/android/QtNative;->m_clipboardManager:Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v0

    return v0
.end method

.method private static hideSoftwareKeyboard()V
    .registers 1

    .prologue
    .line 396
    new-instance v0, Lorg/qtproject/qt5/android/QtNative$5;

    invoke-direct {v0}, Lorg/qtproject/qt5/android/QtNative$5;-><init>()V

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtNative;->runAction(Ljava/lang/Runnable;)Z

    .line 402
    return-void
.end method

.method private static initializeAccessibility()V
    .registers 1

    .prologue
    .line 576
    new-instance v0, Lorg/qtproject/qt5/android/QtNative$18;

    invoke-direct {v0}, Lorg/qtproject/qt5/android/QtNative$18;-><init>()V

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtNative;->runAction(Ljava/lang/Runnable;)Z

    .line 582
    return-void
.end method

.method private static insertNativeView(ILandroid/view/View;IIII)V
    .registers 13

    .prologue
    .line 526
    new-instance v0, Lorg/qtproject/qt5/android/QtNative$13;

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/qtproject/qt5/android/QtNative$13;-><init>(ILandroid/view/View;IIII)V

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtNative;->runAction(Ljava/lang/Runnable;)Z

    .line 532
    return-void
.end method

.method public static native keyDown(IIIZ)V
.end method

.method public static native keyUp(IIIZ)V
.end method

.method public static native keyboardVisibilityChanged(Z)V
.end method

.method public static loadBundledLibraries(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 141
    if-nez p0, :cond_3

    .line 155
    :cond_2
    return-void

    .line 144
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 146
    :try_start_13
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "lib"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_42} :catch_43

    goto :goto_7

    .line 151
    :catch_43
    move-exception v1

    .line 152
    const-string v3, "Qt JAVA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t load \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 150
    :cond_63
    :try_start_63
    const-string v3, "Qt JAVA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_7f} :catch_43

    goto :goto_7
.end method

.method public static loadQtLibraries(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    if-nez p0, :cond_3

    .line 136
    :cond_2
    return-void

    .line 125
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    :try_start_13
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 129
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_21} :catch_22
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_21} :catch_42

    goto :goto_7

    .line 130
    :catch_22
    move-exception v1

    .line 131
    const-string v3, "Qt JAVA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t load \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 132
    :catch_42
    move-exception v1

    .line 133
    const-string v3, "Qt JAVA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t load \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public static native longPress(III)V
.end method

.method public static native mouseDown(III)V
.end method

.method public static native mouseMove(III)V
.end method

.method public static native mouseUp(III)V
.end method

.method public static native onActivityResult(IILandroid/content/Intent;)V
.end method

.method public static native onAndroidUiThread(J)V
.end method

.method public static native onContextItemSelected(IZ)Z
.end method

.method public static native onContextMenuClosed(Landroid/view/Menu;)V
.end method

.method public static native onCreateContextMenu(Landroid/view/ContextMenu;)V
.end method

.method public static native onNewIntent(Landroid/content/Intent;)V
.end method

.method public static native onOptionsItemSelected(IZ)Z
.end method

.method public static native onOptionsMenuClosed(Landroid/view/Menu;)V
.end method

.method public static native onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end method

.method private static openContextMenu(IIII)V
    .registers 5

    .prologue
    .line 449
    new-instance v0, Lorg/qtproject/qt5/android/QtNative$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/qtproject/qt5/android/QtNative$8;-><init>(IIII)V

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtNative;->runAction(Ljava/lang/Runnable;)Z

    .line 455
    return-void
.end method

.method private static openOptionsMenu()V
    .registers 1

    .prologue
    .line 479
    new-instance v0, Lorg/qtproject/qt5/android/QtNative$11;

    invoke-direct {v0}, Lorg/qtproject/qt5/android/QtNative$11;-><init>()V

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtNative;->runAction(Ljava/lang/Runnable;)Z

    .line 485
    return-void
.end method

.method public static openURL(Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 105
    const/4 v0, 0x1

    .line 108
    :try_start_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 109
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 110
    invoke-static {}, Lorg/qtproject/qt5/android/QtNative;->activity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_14

    .line 116
    :goto_13
    return v0

    .line 111
    :catch_14
    move-exception v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static quitApp()V
    .registers 1

    .prologue
    .line 272
    sget-object v0, Lorg/qtproject/qt5/android/QtNative;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 273
    return-void
.end method

.method public static native quitQtAndroidPlugin()V
.end method

.method private static registerClipboardManager()V
    .registers 2

    .prologue
    .line 417
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 418
    new-instance v1, Lorg/qtproject/qt5/android/QtNative$7;

    invoke-direct {v1, v0}, Lorg/qtproject/qt5/android/QtNative$7;-><init>(Ljava/util/concurrent/Semaphore;)V

    invoke-static {v1}, Lorg/qtproject/qt5/android/QtNative;->runAction(Ljava/lang/Runnable;)Z

    .line 426
    :try_start_e
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_12

    .line 430
    :goto_11
    return-void

    .line 427
    :catch_12
    move-exception v0

    .line 428
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method private static resetOptionsMenu()V
    .registers 1

    .prologue
    .line 469
    new-instance v0, Lorg/qtproject/qt5/android/QtNative$10;

    invoke-direct {v0}, Lorg/qtproject/qt5/android/QtNative$10;-><init>()V

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtNative;->runAction(Ljava/lang/Runnable;)Z

    .line 475
    return-void
.end method

.method private static resetSoftwareKeyboard()V
    .registers 1

    .prologue
    .line 386
    new-instance v0, Lorg/qtproject/qt5/android/QtNative$4;

    invoke-direct {v0}, Lorg/qtproject/qt5/android/QtNative$4;-><init>()V

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtNative;->runAction(Ljava/lang/Runnable;)Z

    .line 392
    return-void
.end method

.method private static runAction(Ljava/lang/Runnable;)Z
    .registers 3

    .prologue
    .line 177
    sget-object v1, Lorg/qtproject/qt5/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_3
    sget-object v0, Lorg/qtproject/qt5/android/QtNative;->m_activity:Landroid/app/Activity;

    if-nez v0, :cond_13

    .line 179
    sget-object v0, Lorg/qtproject/qt5/android/QtNative;->m_lostActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :goto_c
    sget-object v0, Lorg/qtproject/qt5/android/QtNative;->m_activity:Landroid/app/Activity;

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_11
    monitor-exit v1

    return v0

    .line 181
    :cond_13
    sget-object v0, Lorg/qtproject/qt5/android/QtNative;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_c

    .line 183
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0

    .line 182
    :cond_1c
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static runQtOnUiThread(J)V
    .registers 4

    .prologue
    .line 188
    new-instance v0, Lorg/qtproject/qt5/android/QtNative$1;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt5/android/QtNative$1;-><init>(J)V

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtNative;->runAction(Ljava/lang/Runnable;)Z

    .line 194
    return-void
.end method

.method public static sendTouchEvent(Landroid/view/MotionEvent;I)V
    .registers 13

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 305
    invoke-static {p1}, Lorg/qtproject/qt5/android/QtNative;->touchBegin(I)V

    move v8, v9

    .line 306
    :goto_6
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ge v8, v0, :cond_33

    .line 308
    invoke-virtual {p0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 309
    invoke-static {v8, p0}, Lorg/qtproject/qt5/android/QtNative;->getAction(ILandroid/view/MotionEvent;)I

    move-result v2

    if-nez v8, :cond_31

    move v3, v10

    .line 311
    :goto_17
    invoke-virtual {p0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v4, v0

    .line 312
    invoke-virtual {p0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v5, v0

    .line 313
    invoke-virtual {p0, v8}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v6

    .line 314
    invoke-virtual {p0, v8}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v7

    move v0, p1

    .line 307
    invoke-static/range {v0 .. v7}, Lorg/qtproject/qt5/android/QtNative;->touchAdd(IIIZIIFF)V

    .line 306
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_6

    :cond_31
    move v3, v9

    .line 309
    goto :goto_17

    .line 317
    :cond_33
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_48

    .line 327
    invoke-static {p1, v10}, Lorg/qtproject/qt5/android/QtNative;->touchEnd(II)V

    .line 330
    :goto_3d
    return-void

    .line 319
    :pswitch_3e
    invoke-static {p1, v9}, Lorg/qtproject/qt5/android/QtNative;->touchEnd(II)V

    goto :goto_3d

    .line 323
    :pswitch_42
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lorg/qtproject/qt5/android/QtNative;->touchEnd(II)V

    goto :goto_3d

    .line 317
    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_42
    .end packed-switch
.end method

.method public static sendTrackballEvent(Landroid/view/MotionEvent;I)V
    .registers 6

    .prologue
    const/4 v3, 0x5

    .line 334
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_6e

    .line 355
    :cond_8
    :goto_8
    return-void

    .line 336
    :pswitch_9
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {p1, v0, v1}, Lorg/qtproject/qt5/android/QtNative;->mouseUp(III)V

    goto :goto_8

    .line 340
    :pswitch_17
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {p1, v0, v1}, Lorg/qtproject/qt5/android/QtNative;->mouseDown(III)V

    .line 341
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    sput v0, Lorg/qtproject/qt5/android/QtNative;->m_oldx:I

    .line 342
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    sput v0, Lorg/qtproject/qt5/android/QtNative;->m_oldy:I

    goto :goto_8

    .line 346
    :pswitch_33
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sget v1, Lorg/qtproject/qt5/android/QtNative;->m_oldx:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 347
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sget v2, Lorg/qtproject/qt5/android/QtNative;->m_oldy:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 348
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v3, :cond_51

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v3, :cond_8

    .line 349
    :cond_51
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {p1, v0, v1}, Lorg/qtproject/qt5/android/QtNative;->mouseMove(III)V

    .line 350
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    sput v0, Lorg/qtproject/qt5/android/QtNative;->m_oldx:I

    .line 351
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    sput v0, Lorg/qtproject/qt5/android/QtNative;->m_oldy:I

    goto :goto_8

    .line 334
    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_17
        :pswitch_9
        :pswitch_33
    .end packed-switch
.end method

.method public static setActivity(Landroid/app/Activity;Lorg/qtproject/qt5/android/QtActivityDelegate;)V
    .registers 4

    .prologue
    .line 159
    sget-object v1, Lorg/qtproject/qt5/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    :try_start_3
    sput-object p0, Lorg/qtproject/qt5/android/QtNative;->m_activity:Landroid/app/Activity;

    .line 161
    sput-object p1, Lorg/qtproject/qt5/android/QtNative;->m_activityDelegate:Lorg/qtproject/qt5/android/QtActivityDelegate;

    .line 162
    monitor-exit v1

    .line 163
    return-void

    .line 162
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public static setApplicationDisplayMetrics(IIIIDDD)V
    .registers 22

    .prologue
    .line 235
    const-wide/high16 v0, 0x405e000000000000L    # 120.0

    cmpg-double v0, p4, v0

    if-gez v0, :cond_37

    .line 236
    const-wide/high16 v4, 0x405e000000000000L    # 120.0

    .line 237
    :goto_8
    const-wide/high16 v0, 0x405e000000000000L    # 120.0

    cmpg-double v0, p6, v0

    if-gez v0, :cond_34

    .line 238
    const-wide/high16 v6, 0x405e000000000000L    # 120.0

    .line 240
    :goto_10
    sget-object v10, Lorg/qtproject/qt5/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v10

    .line 241
    :try_start_13
    sget-boolean v0, Lorg/qtproject/qt5/android/QtNative;->m_started:Z

    if-eqz v0, :cond_22

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide/from16 v8, p8

    .line 242
    invoke-static/range {v0 .. v9}, Lorg/qtproject/qt5/android/QtNative;->setDisplayMetrics(IIIIDDD)V

    .line 258
    :goto_20
    monitor-exit v10

    .line 259
    return-void

    .line 250
    :cond_22
    sput p0, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsScreenWidthPixels:I

    .line 251
    sput p1, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsScreenHeightPixels:I

    .line 252
    sput p2, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsDesktopWidthPixels:I

    .line 253
    sput p3, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsDesktopHeightPixels:I

    .line 254
    sput-wide v4, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsXDpi:D

    .line 255
    sput-wide v6, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsYDpi:D

    .line 256
    sput-wide p8, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsScaledDensity:D

    goto :goto_20

    .line 258
    :catchall_31
    move-exception v0

    monitor-exit v10
    :try_end_33
    .catchall {:try_start_13 .. :try_end_33} :catchall_31

    throw v0

    :cond_34
    move-wide/from16 v6, p6

    goto :goto_10

    :cond_37
    move-wide/from16 v4, p4

    goto :goto_8
.end method

.method public static setClassLoader(Ljava/lang/ClassLoader;)V
    .registers 1

    .prologue
    .line 86
    sput-object p0, Lorg/qtproject/qt5/android/QtNative;->m_classLoader:Ljava/lang/ClassLoader;

    .line 87
    return-void
.end method

.method private static setClipboardText(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 434
    sget-object v0, Lorg/qtproject/qt5/android/QtNative;->m_clipboardManager:Landroid/text/ClipboardManager;

    invoke-virtual {v0, p0}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 435
    return-void
.end method

.method public static native setDisplayMetrics(IIIIDDD)V
.end method

.method private static setFullScreen(Z)V
    .registers 2

    .prologue
    .line 406
    new-instance v0, Lorg/qtproject/qt5/android/QtNative$6;

    invoke-direct {v0, p0}, Lorg/qtproject/qt5/android/QtNative$6;-><init>(Z)V

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtNative;->runAction(Ljava/lang/Runnable;)Z

    .line 413
    return-void
.end method

.method public static native setSurface(ILjava/lang/Object;II)V
.end method

.method private static setSurfaceGeometry(IIIII)V
    .registers 11

    .prologue
    .line 536
    new-instance v0, Lorg/qtproject/qt5/android/QtNative$14;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/qtproject/qt5/android/QtNative$14;-><init>(IIIII)V

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtNative;->runAction(Ljava/lang/Runnable;)Z

    .line 542
    return-void
.end method

.method private static showSoftwareKeyboard(IIIII)V
    .registers 11

    .prologue
    .line 376
    new-instance v0, Lorg/qtproject/qt5/android/QtNative$3;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/qtproject/qt5/android/QtNative$3;-><init>(IIIII)V

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtNative;->runAction(Ljava/lang/Runnable;)Z

    .line 382
    return-void
.end method

.method public static startApplication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 201
    new-instance v12, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 203
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find main library \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 205
    :cond_4d
    if-nez p0, :cond_51

    .line 206
    const-string p0, "-platform\tandroid"

    .line 209
    :cond_51
    sget-object v13, Lorg/qtproject/qt5/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v13

    .line 210
    :try_start_54
    invoke-static {}, Lorg/qtproject/qt5/android/QtNative;->startQtAndroidPlugin()Z

    move-result v14

    .line 211
    sget v2, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsScreenWidthPixels:I

    sget v3, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsScreenHeightPixels:I

    sget v4, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsDesktopWidthPixels:I

    sget v5, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsDesktopHeightPixels:I

    sget-wide v6, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsXDpi:D

    sget-wide v8, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsYDpi:D

    sget-wide v10, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsScaledDensity:D

    invoke-static/range {v2 .. v11}, Lorg/qtproject/qt5/android/QtNative;->setDisplayMetrics(IIIIDDD)V

    .line 218
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8a

    const-string v2, "\t"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 220
    :cond_8a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lorg/qtproject/qt5/android/QtNative;->startQtApplication(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v2, 0x1

    sput-boolean v2, Lorg/qtproject/qt5/android/QtNative;->m_started:Z

    .line 222
    monitor-exit v13

    .line 223
    return v14

    .line 222
    :catchall_a9
    move-exception v2

    monitor-exit v13
    :try_end_ab
    .catchall {:try_start_54 .. :try_end_ab} :catchall_a9

    throw v2
.end method

.method public static native startQtAndroidPlugin()Z
.end method

.method public static native startQtApplication(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native terminateQt()V
.end method

.method public static native touchAdd(IIIZIIFF)V
.end method

.method public static native touchBegin(I)V
.end method

.method public static native touchEnd(II)V
.end method

.method public static native updateApplicationState(I)V
.end method

.method private static updateSelection(IIII)V
    .registers 5

    .prologue
    .line 362
    new-instance v0, Lorg/qtproject/qt5/android/QtNative$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/qtproject/qt5/android/QtNative$2;-><init>(IIII)V

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtNative;->runAction(Ljava/lang/Runnable;)Z

    .line 368
    return-void
.end method

.method public static native updateWindow()V
.end method
