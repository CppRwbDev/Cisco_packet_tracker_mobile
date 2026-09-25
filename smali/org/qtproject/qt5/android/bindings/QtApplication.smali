.class public Lorg/qtproject/qt5/android/bindings/QtApplication;
.super Landroid/app/Application;
.source "QtApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;,
        Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;
    }
.end annotation

.annotation runtime Lorg/acra/annotation/ReportsCrashes;
    formKey = ""
    formUri = "https://cisconetacad.iriscouch.com/acra-ptmobile/_design/acra-storage/_update/report"
    formUriBasicAuthLogin = "acrareporter"
    formUriBasicAuthPassword = "rNhkNv>yF[54@88"
    httpMethod = .enum Lorg/acra/sender/HttpSender$Method;->PUT:Lorg/acra/sender/HttpSender$Method;
    mode = .enum Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;
    reportType = .enum Lorg/acra/sender/HttpSender$Type;->JSON:Lorg/acra/sender/HttpSender$Type;
    resDialogCommentPrompt = 0x7f050052
    resDialogOkToast = 0x7f050053
    resDialogText = 0x7f050051
    resDialogTitle = 0x7f050050
    resToastText = 0x7f05004f
.end annotation


# static fields
.field public static GENERAL_TRACKER:I

.field public static dispatchGenericMotionEvent:Ljava/lang/reflect/Method;

.field public static dispatchKeyEvent:Ljava/lang/reflect/Method;

.field public static dispatchKeyShortcutEvent:Ljava/lang/reflect/Method;

.field public static dispatchPopulateAccessibilityEvent:Ljava/lang/reflect/Method;

.field public static dispatchTouchEvent:Ljava/lang/reflect/Method;

.field public static dispatchTrackballEvent:Ljava/lang/reflect/Method;

.field public static m_delegateMethods:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field public static m_delegateObject:Ljava/lang/Object;

.field public static onActivityResult:Ljava/lang/reflect/Method;

.field public static onCreate:Ljava/lang/reflect/Method;

.field public static onGenericMotionEvent:Ljava/lang/reflect/Method;

.field public static onKeyDown:Ljava/lang/reflect/Method;

.field public static onKeyLongPress:Ljava/lang/reflect/Method;

.field public static onKeyMultiple:Ljava/lang/reflect/Method;

.field public static onKeyShortcut:Ljava/lang/reflect/Method;

.field public static onKeyUp:Ljava/lang/reflect/Method;

.field public static onTouchEvent:Ljava/lang/reflect/Method;

.field public static onTrackballEvent:Ljava/lang/reflect/Method;

.field private static stackDeep:I


# instance fields
.field mTrackers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;",
            "Lcom/google/android/gms/analytics/Tracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 71
    sput-object v1, Lorg/qtproject/qt5/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->m_delegateMethods:Ljava/util/HashMap;

    .line 73
    sput-object v1, Lorg/qtproject/qt5/android/bindings/QtApplication;->dispatchKeyEvent:Ljava/lang/reflect/Method;

    .line 74
    sput-object v1, Lorg/qtproject/qt5/android/bindings/QtApplication;->dispatchPopulateAccessibilityEvent:Ljava/lang/reflect/Method;

    .line 75
    sput-object v1, Lorg/qtproject/qt5/android/bindings/QtApplication;->dispatchTouchEvent:Ljava/lang/reflect/Method;

    .line 76
    sput-object v1, Lorg/qtproject/qt5/android/bindings/QtApplication;->dispatchTrackballEvent:Ljava/lang/reflect/Method;

    .line 77
    sput-object v1, Lorg/qtproject/qt5/android/bindings/QtApplication;->onKeyDown:Ljava/lang/reflect/Method;

    .line 78
    sput-object v1, Lorg/qtproject/qt5/android/bindings/QtApplication;->onKeyMultiple:Ljava/lang/reflect/Method;

    .line 79
    sput-object v1, Lorg/qtproject/qt5/android/bindings/QtApplication;->onKeyUp:Ljava/lang/reflect/Method;

    .line 80
    sput-object v1, Lorg/qtproject/qt5/android/bindings/QtApplication;->onTouchEvent:Ljava/lang/reflect/Method;

    .line 81
    sput-object v1, Lorg/qtproject/qt5/android/bindings/QtApplication;->onTrackballEvent:Ljava/lang/reflect/Method;

    .line 82
    sput-object v1, Lorg/qtproject/qt5/android/bindings/QtApplication;->onActivityResult:Ljava/lang/reflect/Method;

    .line 83
    sput-object v1, Lorg/qtproject/qt5/android/bindings/QtApplication;->onCreate:Ljava/lang/reflect/Method;

    .line 84
    sput-object v1, Lorg/qtproject/qt5/android/bindings/QtApplication;->onKeyLongPress:Ljava/lang/reflect/Method;

    .line 85
    sput-object v1, Lorg/qtproject/qt5/android/bindings/QtApplication;->dispatchKeyShortcutEvent:Ljava/lang/reflect/Method;

    .line 86
    sput-object v1, Lorg/qtproject/qt5/android/bindings/QtApplication;->onKeyShortcut:Ljava/lang/reflect/Method;

    .line 87
    sput-object v1, Lorg/qtproject/qt5/android/bindings/QtApplication;->dispatchGenericMotionEvent:Ljava/lang/reflect/Method;

    .line 88
    sput-object v1, Lorg/qtproject/qt5/android/bindings/QtApplication;->onGenericMotionEvent:Ljava/lang/reflect/Method;

    .line 90
    const/4 v0, 0x0

    sput v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->GENERAL_TRACKER:I

    .line 166
    const/4 v0, -0x1

    sput v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->stackDeep:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/QtApplication;->mTrackers:Ljava/util/HashMap;

    return-void
.end method

.method public static varargs invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;
    .registers 10
    .param p0, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, -0x1

    .line 169
    new-instance v5, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;

    invoke-direct {v5}, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;-><init>()V

    .line 170
    .local v5, "result":Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;
    sget-object v6, Lorg/qtproject/qt5/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-nez v6, :cond_b

    .line 192
    :cond_a
    :goto_a
    return-object v5

    .line 172
    :cond_b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 173
    .local v1, "elements":[Ljava/lang/StackTraceElement;
    sget v6, Lorg/qtproject/qt5/android/bindings/QtApplication;->stackDeep:I

    if-ne v7, v6, :cond_2f

    .line 174
    const-class v6, Lorg/qtproject/qt5/android/bindings/QtActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "activityClassName":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "it":I
    :goto_1e
    array-length v6, v1

    if-ge v2, v6, :cond_2f

    .line 176
    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 177
    sput v2, Lorg/qtproject/qt5/android/bindings/QtApplication;->stackDeep:I

    .line 181
    .end local v0    # "activityClassName":Ljava/lang/String;
    .end local v2    # "it":I
    :cond_2f
    sget v6, Lorg/qtproject/qt5/android/bindings/QtApplication;->stackDeep:I

    aget-object v6, v1, v6

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, "methodName":Ljava/lang/String;
    sget v6, Lorg/qtproject/qt5/android/bindings/QtApplication;->stackDeep:I

    if-eq v7, v6, :cond_a

    sget-object v6, Lorg/qtproject/qt5/android/bindings/QtApplication;->m_delegateMethods:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 185
    sget-object v6, Lorg/qtproject/qt5/android/bindings/QtApplication;->m_delegateMethods:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 186
    .local v3, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    array-length v8, p0

    if-ne v7, v8, :cond_4f

    .line 187
    invoke-static {v3, p0}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v5, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    .line 188
    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    goto :goto_a

    .line 175
    .end local v3    # "m":Ljava/lang/reflect/Method;
    .end local v4    # "methodName":Ljava/lang/String;
    .restart local v0    # "activityClassName":Ljava/lang/String;
    .restart local v2    # "it":I
    :cond_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e
.end method

.method public static varargs invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "m"    # Ljava/lang/reflect/Method;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 198
    :try_start_0
    sget-object v1, Lorg/qtproject/qt5/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    invoke-virtual {p0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 202
    :goto_6
    return-object v1

    .line 199
    :catch_7
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public static setQtActivityDelegate(Ljava/lang/Object;)V
    .registers 15
    .param p0, "listener"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 115
    sput-object p0, Lorg/qtproject/qt5/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    .line 117
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v3, "delegateMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    array-length v11, v10

    move v9, v8

    :goto_12
    if-ge v9, v11, :cond_2c

    aget-object v7, v10, v9

    .line 119
    .local v7, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "org.qtproject.qt5.android"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_29

    .line 120
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_29
    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    .line 123
    .end local v7    # "m":Ljava/lang/reflect/Method;
    :cond_2c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v1, "applicationFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    const-class v9, Lorg/qtproject/qt5/android/bindings/QtApplication;

    invoke-virtual {v9}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    array-length v10, v9

    :goto_38
    if-ge v8, v10, :cond_56

    aget-object v6, v9, v8

    .line 125
    .local v6, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    const-class v12, Lorg/qtproject/qt5/android/bindings/QtApplication;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_53

    .line 126
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_53
    add-int/lit8 v8, v8, 0x1

    goto :goto_38

    .line 129
    .end local v6    # "f":Ljava/lang/reflect/Field;
    :cond_56
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5a
    :goto_5a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ca

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 131
    .local v2, "delegateMethod":Ljava/lang/reflect/Method;
    :try_start_66
    const-class v8, Lorg/qtproject/qt5/android/bindings/QtActivity;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 132
    sget-object v8, Lorg/qtproject/qt5/android/bindings/QtApplication;->m_delegateMethods:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b8

    .line 133
    sget-object v8, Lorg/qtproject/qt5/android/bindings/QtApplication;->m_delegateMethods:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    :goto_8e
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_92
    :goto_92
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 140
    .local v0, "applicationField":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_a9} :catch_b6

    move-result v10

    if-eqz v10, :cond_92

    .line 142
    const/4 v10, 0x0

    :try_start_ad
    invoke-virtual {v0, v10, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b0} :catch_b1

    goto :goto_92

    .line 143
    :catch_b1
    move-exception v5

    .line 144
    .local v5, "e":Ljava/lang/Exception;
    :try_start_b2
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_92

    .line 148
    .end local v0    # "applicationField":Ljava/lang/reflect/Field;
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_b6
    move-exception v8

    goto :goto_5a

    .line 135
    :cond_b8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v4, "delegateSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v8, Lorg/qtproject/qt5/android/bindings/QtApplication;->m_delegateMethods:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_c9} :catch_b6

    goto :goto_8e

    .line 151
    .end local v2    # "delegateMethod":Ljava/lang/reflect/Method;
    .end local v4    # "delegateSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    :cond_ca
    return-void
.end method


# virtual methods
.method declared-synchronized getTracker(Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;)Lcom/google/android/gms/analytics/Tracker;
    .registers 5
    .param p1, "trackerId"    # Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;

    .prologue
    .line 100
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/QtApplication;->mTrackers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 102
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    .line 103
    .local v0, "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    const-string v2, "UA-56074537-1"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    .line 104
    .local v1, "t":Lcom/google/android/gms/analytics/Tracker;
    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/QtApplication;->mTrackers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->enableAutoActivityTracking(Z)V

    .line 106
    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->enableAutoActivityReports(Landroid/app/Application;)V

    .line 107
    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/QtApplication;->mTrackers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .end local v0    # "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    .end local v1    # "t":Lcom/google/android/gms/analytics/Tracker;
    :cond_24
    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/QtApplication;->mTrackers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/Tracker;
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    monitor-exit p0

    return-object v2

    .line 100
    :catchall_2e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onTerminate()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 155
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_24

    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->m_delegateMethods:Ljava/util/HashMap;

    const-string v1, "onTerminate"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 156
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication;->m_delegateMethods:Ljava/util/HashMap;

    const-string v1, "onTerminate"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_24
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 158
    return-void
.end method
