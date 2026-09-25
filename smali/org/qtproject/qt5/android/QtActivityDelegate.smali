.class public Lorg/qtproject/qt5/android/QtActivityDelegate;
.super Ljava/lang/Object;
.source "QtActivityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt5/android/QtActivityDelegate$DebugWaitRunnable;
    }
.end annotation


# static fields
.field private static final APPLICATION_PARAMETERS_KEY:Ljava/lang/String; = "application.parameters"

.field private static final BUNDLED_LIBRARIES_KEY:Ljava/lang/String; = "bundled.libraries"

.field private static final ENVIRONMENT_VARIABLES_KEY:Ljava/lang/String; = "environment.variables"

.field private static final EXTRACT_STYLE_KEY:Ljava/lang/String; = "extract.android.style"

.field private static final MAIN_LIBRARY_KEY:Ljava/lang/String; = "main.library"

.field private static final NATIVE_LIBRARIES_KEY:Ljava/lang/String; = "native.libraries"

.field private static final NECESSITAS_API_LEVEL_KEY:Ljava/lang/String; = "necessitas.api.level"

.field private static final STATIC_INIT_CLASSES_KEY:Ljava/lang/String; = "static.init.classes"

.field private static m_applicationParameters:Ljava/lang/String;

.field private static m_environmentVariables:Ljava/lang/String;


# instance fields
.field private final ApplicationActive:I

.field private final ApplicationHidden:I

.field private final ApplicationInactive:I

.field private final ApplicationSuspended:I

.field private final ImhDate:I

.field private final ImhDialableCharactersOnly:I

.field private final ImhDigitsOnly:I

.field private final ImhEmailCharactersOnly:I

.field private final ImhFormattedNumbersOnly:I

.field private final ImhHiddenText:I

.field private final ImhLatinOnly:I

.field private final ImhLowercaseOnly:I

.field private final ImhMultiLine:I

.field private final ImhNoAutoUppercase:I

.field private final ImhNoPredictiveText:I

.field private final ImhPreferLatin:I

.field private final ImhPreferLowercase:I

.field private final ImhPreferNumbers:I

.field private final ImhPreferUppercase:I

.field private final ImhSensitiveData:I

.field private final ImhTime:I

.field private final ImhUppercaseOnly:I

.field private final ImhUrlCharactersOnly:I

.field private m_activity:Landroid/app/Activity;

.field public m_backKeyPressedSent:Z

.field private m_contextMenuVisible:Z

.field private m_currentRotation:I

.field private m_debuggerProcess:Ljava/lang/Process;

.field private m_dummyView:Landroid/view/View;

.field private m_editText:Lorg/qtproject/qt5/android/QtEditText;

.field private m_fullScreen:Z

.field private m_imm:Landroid/view/inputmethod/InputMethodManager;

.field private m_keyboardIsVisible:Z

.field private m_lastChar:I

.field private m_layout:Lorg/qtproject/qt5/android/QtLayout;

.field private m_mainLib:Ljava/lang/String;

.field private m_metaState:J

.field private m_nativeOrientation:I

.field private m_nativeViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private m_optionsMenuIsVisible:Z

.field private m_quitApp:Z

.field private m_showHideTimeStamp:J

.field private m_softInputMode:I

.field private m_started:Z

.field private m_super_dispatchKeyEvent:Ljava/lang/reflect/Method;

.field private m_super_onActivityResult:Ljava/lang/reflect/Method;

.field private m_super_onConfigurationChanged:Ljava/lang/reflect/Method;

.field private m_super_onKeyDown:Ljava/lang/reflect/Method;

.field private m_super_onKeyUp:Ljava/lang/reflect/Method;

.field private m_super_onRestoreInstanceState:Ljava/lang/reflect/Method;

.field private m_super_onRetainNonConfigurationInstance:Ljava/lang/reflect/Method;

.field private m_super_onSaveInstanceState:Ljava/lang/reflect/Method;

.field private m_surfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/qtproject/qt5/android/QtSurface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 102
    sput-object v0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_environmentVariables:Ljava/lang/String;

    .line 103
    sput-object v0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_applicationParameters:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    .line 84
    iput-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_super_dispatchKeyEvent:Ljava/lang/reflect/Method;

    .line 85
    iput-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_super_onRestoreInstanceState:Ljava/lang/reflect/Method;

    .line 86
    iput-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_super_onRetainNonConfigurationInstance:Ljava/lang/reflect/Method;

    .line 87
    iput-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_super_onSaveInstanceState:Ljava/lang/reflect/Method;

    .line 88
    iput-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_super_onKeyDown:Ljava/lang/reflect/Method;

    .line 89
    iput-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_super_onKeyUp:Ljava/lang/reflect/Method;

    .line 90
    iput-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_super_onConfigurationChanged:Ljava/lang/reflect/Method;

    .line 91
    iput-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_super_onActivityResult:Ljava/lang/reflect/Method;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_currentRotation:I

    .line 106
    iput v2, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_nativeOrientation:I

    .line 110
    iput v2, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_lastChar:I

    .line 111
    iput v2, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_softInputMode:I

    .line 112
    iput-boolean v2, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_fullScreen:Z

    .line 113
    iput-boolean v2, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_started:Z

    .line 114
    iput-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    .line 115
    iput-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    .line 116
    iput-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt5/android/QtLayout;

    .line 117
    iput-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt5/android/QtEditText;

    .line 118
    iput-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    .line 119
    iput-boolean v3, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_quitApp:Z

    .line 120
    iput-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_debuggerProcess:Ljava/lang/Process;

    .line 121
    iput-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_dummyView:Landroid/view/View;

    .line 122
    iput-boolean v2, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_keyboardIsVisible:Z

    .line 123
    iput-boolean v2, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_backKeyPressedSent:Z

    .line 124
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_showHideTimeStamp:J

    .line 182
    iput v3, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->ImhHiddenText:I

    .line 183
    iput v4, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->ImhSensitiveData:I

    .line 184
    iput v5, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->ImhNoAutoUppercase:I

    .line 185
    const/16 v0, 0x8

    iput v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->ImhPreferNumbers:I

    .line 186
    const/16 v0, 0x10

    iput v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->ImhPreferUppercase:I

    .line 187
    const/16 v0, 0x20

    iput v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->ImhPreferLowercase:I

    .line 188
    const/16 v0, 0x40

    iput v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->ImhNoPredictiveText:I

    .line 190
    const/16 v0, 0x80

    iput v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->ImhDate:I

    .line 191
    const/16 v0, 0x100

    iput v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->ImhTime:I

    .line 193
    const/16 v0, 0x200

    iput v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->ImhPreferLatin:I

    .line 195
    const/16 v0, 0x400

    iput v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->ImhMultiLine:I

    .line 197
    const/high16 v0, 0x10000

    iput v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->ImhDigitsOnly:I

    .line 198
    const/high16 v0, 0x20000

    iput v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->ImhFormattedNumbersOnly:I

    .line 199
    const/high16 v0, 0x40000

    iput v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->ImhUppercaseOnly:I

    .line 200
    const/high16 v0, 0x80000

    iput v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->ImhLowercaseOnly:I

    .line 201
    const/high16 v0, 0x100000

    iput v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->ImhDialableCharactersOnly:I

    .line 202
    const/high16 v0, 0x200000

    iput v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->ImhEmailCharactersOnly:I

    .line 203
    const/high16 v0, 0x400000

    iput v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->ImhUrlCharactersOnly:I

    .line 204
    const/high16 v0, 0x800000

    iput v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->ImhLatinOnly:I

    .line 207
    iput v2, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->ApplicationSuspended:I

    .line 208
    iput v3, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->ApplicationHidden:I

    .line 209
    iput v4, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->ApplicationInactive:I

    .line 210
    iput v5, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->ApplicationActive:I

    .line 1018
    iput-boolean v2, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_optionsMenuIsVisible:Z

    .line 1056
    iput-boolean v2, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_contextMenuVisible:Z

    return-void
.end method

.method static synthetic access$000(Lorg/qtproject/qt5/android/QtActivityDelegate;)Lorg/qtproject/qt5/android/QtEditText;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt5/android/QtEditText;

    return-object v0
.end method

.method static synthetic access$100(Lorg/qtproject/qt5/android/QtActivityDelegate;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$200(Lorg/qtproject/qt5/android/QtActivityDelegate;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 81
    sget-object v0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_applicationParameters:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 81
    sget-object v0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_environmentVariables:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/qtproject/qt5/android/QtActivityDelegate;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_mainLib:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lorg/qtproject/qt5/android/QtActivityDelegate;Z)Z
    .registers 2

    .prologue
    .line 81
    iput-boolean p1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_started:Z

    return p1
.end method

.method static synthetic access$700(Lorg/qtproject/qt5/android/QtActivityDelegate;)Lorg/qtproject/qt5/android/QtLayout;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt5/android/QtLayout;

    return-object v0
.end method

.method public static debugLog(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 485
    const-string v0, "Qt JAVA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEBUGGER: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    return-void
.end method

.method private getActionBar()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 1125
    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "getActionBar"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v0

    .line 1129
    :goto_14
    return-object v0

    .line 1126
    :catch_15
    move-exception v0

    .line 1127
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1129
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private hasPermanentMenuKey()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1114
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_2d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_2f

    const-class v0, Landroid/view/ViewConfiguration;

    const-string v2, "hasPermanentMenuKey"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 1115
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_31

    move-result v0

    if-eqz v0, :cond_2f

    :cond_2d
    const/4 v0, 0x1

    .line 1118
    :goto_2e
    return v0

    :cond_2f
    move v0, v1

    .line 1115
    goto :goto_2e

    .line 1116
    :catch_31
    move-exception v0

    .line 1117
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 1118
    goto :goto_2e
.end method

.method private setActionBarVisibility(Z)V
    .registers 5

    .prologue
    const/16 v1, 0xa

    .line 1134
    invoke-direct {p0}, Lorg/qtproject/qt5/android/QtActivityDelegate;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_a

    if-nez p1, :cond_33

    .line 1135
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v1, :cond_2d

    invoke-direct {p0}, Lorg/qtproject/qt5/android/QtActivityDelegate;->getActionBar()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 1137
    :try_start_14
    const-string v0, "android.app.ActionBar"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "hide"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {p0}, Lorg/qtproject/qt5/android/QtActivityDelegate;->getActionBar()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2d} :catch_2e

    .line 1151
    :cond_2d
    :goto_2d
    return-void

    .line 1138
    :catch_2e
    move-exception v0

    .line 1139
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d

    .line 1144
    :cond_33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v1, :cond_2d

    invoke-direct {p0}, Lorg/qtproject/qt5/android/QtActivityDelegate;->getActionBar()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 1146
    :try_start_3d
    const-string v0, "android.app.ActionBar"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "show"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {p0}, Lorg/qtproject/qt5/android/QtActivityDelegate;->getActionBar()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_56} :catch_57

    goto :goto_2d

    .line 1147
    :catch_57
    move-exception v0

    .line 1148
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d
.end method


# virtual methods
.method public bringChildToBack(I)V
    .registers 5

    .prologue
    .line 1266
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1267
    if-eqz v0, :cond_15

    .line 1268
    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt5/android/QtLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/qtproject/qt5/android/QtLayout;->moveChild(Landroid/view/View;I)V

    .line 1277
    :cond_14
    :goto_14
    return-void

    .line 1272
    :cond_15
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1273
    if-eqz v0, :cond_14

    .line 1274
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/QtActivityDelegate;->getSurfaceCount()I

    move-result v1

    .line 1275
    iget-object v2, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt5/android/QtLayout;

    invoke-virtual {v2, v0, v1}, Lorg/qtproject/qt5/android/QtLayout;->moveChild(Landroid/view/View;I)V

    goto :goto_14
.end method

.method public bringChildToFront(I)V
    .registers 5

    .prologue
    .line 1251
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1252
    if-eqz v0, :cond_1c

    .line 1253
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/QtActivityDelegate;->getSurfaceCount()I

    move-result v1

    .line 1254
    if-lez v1, :cond_1b

    .line 1255
    iget-object v2, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt5/android/QtLayout;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v0, v1}, Lorg/qtproject/qt5/android/QtLayout;->moveChild(Landroid/view/View;I)V

    .line 1262
    :cond_1b
    :goto_1b
    return-void

    .line 1259
    :cond_1c
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1260
    if-eqz v0, :cond_1b

    .line 1261
    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt5/android/QtLayout;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/qtproject/qt5/android/QtLayout;->moveChild(Landroid/view/View;I)V

    goto :goto_1b
.end method

.method public closeContextMenu()V
    .registers 2

    .prologue
    .line 1108
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeContextMenu()V

    .line 1109
    return-void
.end method

.method public createSurface(IZIIIII)V
    .registers 13

    .prologue
    const/4 v4, -0x1

    .line 1175
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_45

    .line 1176
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1177
    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010054

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1178
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_88

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_88

    .line 1179
    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1183
    :goto_37
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_dummyView:Landroid/view/View;

    if-eqz v0, :cond_45

    .line 1184
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt5/android/QtLayout;

    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_dummyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/qtproject/qt5/android/QtLayout;->removeView(Landroid/view/View;)V

    .line 1185
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_dummyView:Landroid/view/View;

    .line 1189
    :cond_45
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1190
    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt5/android/QtLayout;

    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lorg/qtproject/qt5/android/QtLayout;->removeView(Landroid/view/View;)V

    .line 1192
    :cond_62
    new-instance v0, Lorg/qtproject/qt5/android/QtSurface;

    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1, p2, p7}, Lorg/qtproject/qt5/android/QtSurface;-><init>(Landroid/content/Context;IZI)V

    .line 1193
    if-ltz p5, :cond_6d

    if-gez p6, :cond_9e

    .line 1194
    :cond_6d
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/qtproject/qt5/android/QtSurface;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1202
    :goto_75
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/QtActivityDelegate;->getSurfaceCount()I

    move-result v1

    .line 1203
    iget-object v2, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt5/android/QtLayout;

    invoke-virtual {v2, v0, v1}, Lorg/qtproject/qt5/android/QtLayout;->addView(Landroid/view/View;I)V

    .line 1205
    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    return-void

    .line 1181
    :cond_88
    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_37

    .line 1197
    :cond_9e
    new-instance v1, Lorg/qtproject/qt5/android/QtLayout$LayoutParams;

    invoke-direct {v1, p5, p6, p3, p4}, Lorg/qtproject/qt5/android/QtLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lorg/qtproject/qt5/android/QtSurface;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_75
.end method

.method public destroySurface(I)V
    .registers 6

    .prologue
    .line 1222
    const/4 v0, 0x0

    .line 1224
    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1225
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1232
    :goto_19
    if-nez v0, :cond_54

    .line 1242
    :goto_1b
    return-void

    .line 1226
    :cond_1c
    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1227
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_19

    .line 1229
    :cond_35
    const-string v1, "Qt JAVA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Surface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 1237
    :cond_54
    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_67

    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_67

    .line 1238
    iput-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_dummyView:Landroid/view/View;

    goto :goto_1b

    .line 1240
    :cond_67
    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt5/android/QtLayout;

    invoke-virtual {v1, v0}, Lorg/qtproject/qt5/android/QtLayout;->removeView(Landroid/view/View;)V

    goto :goto_1b
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1001
    iget-boolean v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_started:Z

    if-eqz v0, :cond_4e

    .line 1002
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4e

    .line 1003
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 1004
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_4e

    .line 1005
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-nez v0, :cond_4e

    .line 1006
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_63

    move v0, v1

    :goto_36
    invoke-static {v2, v3, v4, v0}, Lorg/qtproject/qt5/android/QtNative;->keyDown(IIIZ)V

    .line 1007
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_65

    :goto_4b
    invoke-static {v2, v0, v3, v1}, Lorg/qtproject/qt5/android/QtNative;->keyUp(IIIZ)V

    .line 1011
    :cond_4e
    :try_start_4e
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_super_dispatchKeyEvent:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_61} :catch_67

    move-result v2

    .line 1015
    :goto_62
    return v2

    :cond_63
    move v0, v2

    .line 1006
    goto :goto_36

    :cond_65
    move v1, v2

    .line 1007
    goto :goto_4b

    .line 1012
    :catch_67
    move-exception v0

    .line 1013
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_62
.end method

.method getAppIconSize(Landroid/app/Activity;)Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v1, 0x200

    const/16 v2, 0x24

    .line 369
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v3, 0x1050000

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 370
    if-lt v0, v2, :cond_12

    if-le v0, v1, :cond_2e

    .line 371
    :cond_12
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 372
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 373
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x3

    .line 374
    if-ge v0, v2, :cond_2b

    move v0, v2

    .line 377
    :cond_2b
    if-le v0, v1, :cond_2e

    move v0, v1

    .line 380
    :cond_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tQT_ANDROID_APP_ICON_SIZE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceCount()I
    .registers 2

    .prologue
    .line 1246
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public hideSoftwareKeyboard()V
    .registers 6

    .prologue
    .line 348
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_5

    .line 365
    :goto_4
    return-void

    .line 350
    :cond_5
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt5/android/QtEditText;

    invoke-virtual {v1}, Lorg/qtproject/qt5/android/QtEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lorg/qtproject/qt5/android/QtActivityDelegate$3;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lorg/qtproject/qt5/android/QtActivityDelegate$3;-><init>(Lorg/qtproject/qt5/android/QtActivityDelegate;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    goto :goto_4
.end method

.method public initializeAccessibility()V
    .registers 5

    .prologue
    .line 825
    :try_start_0
    const-string v0, "org.qtproject.qt5.android.accessibility.QtAccessibilityDelegate"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 826
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/app/Activity;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/view/ViewGroup;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 828
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    .line 826
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 829
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt5/android/QtLayout;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_31} :catch_50
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    .line 837
    :goto_31
    return-void

    .line 833
    :catch_32
    move-exception v0

    .line 835
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

    goto :goto_31

    .line 830
    :catch_50
    move-exception v0

    goto :goto_31
.end method

.method public insertNativeView(ILandroid/view/View;IIII)V
    .registers 11

    .prologue
    const/4 v3, -0x1

    .line 1154
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_dummyView:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 1155
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt5/android/QtLayout;

    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_dummyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/qtproject/qt5/android/QtLayout;->removeView(Landroid/view/View;)V

    .line 1156
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_dummyView:Landroid/view/View;

    .line 1159
    :cond_f
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1160
    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt5/android/QtLayout;

    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lorg/qtproject/qt5/android/QtLayout;->removeView(Landroid/view/View;)V

    .line 1162
    :cond_2c
    if-ltz p5, :cond_30

    if-gez p6, :cond_4a

    .line 1163
    :cond_30
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1169
    :goto_38
    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    .line 1170
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt5/android/QtLayout;

    invoke-virtual {v0, p2}, Lorg/qtproject/qt5/android/QtLayout;->addView(Landroid/view/View;)V

    .line 1171
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    return-void

    .line 1166
    :cond_4a
    new-instance v0, Lorg/qtproject/qt5/android/QtLayout$LayoutParams;

    invoke-direct {v0, p5, p6, p3, p4}, Lorg/qtproject/qt5/android/QtLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_38
.end method

.method public loadApplication(Landroid/app/Activity;Ljava/lang/ClassLoader;Landroid/os/Bundle;)Z
    .registers 15

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 394
    const-string v0, "native.libraries"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "bundled.libraries"

    .line 395
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "environment.variables"

    .line 396
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_1a
    move v1, v2

    .line 480
    :goto_1b
    return v1

    .line 400
    :cond_1c
    iput-object p1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    .line 401
    invoke-direct {p0, v2}, Lorg/qtproject/qt5/android/QtActivityDelegate;->setActionBarVisibility(Z)V

    .line 402
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lorg/qtproject/qt5/android/QtNative;->setActivity(Landroid/app/Activity;Lorg/qtproject/qt5/android/QtActivityDelegate;)V

    .line 403
    invoke-static {p2}, Lorg/qtproject/qt5/android/QtNative;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 404
    const-string v0, "static.init.classes"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 405
    const-string v0, "static.init.classes"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_39
    if-ge v3, v5, :cond_76

    aget-object v0, v4, v3

    .line 406
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_47

    .line 405
    :goto_43
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_39

    .line 411
    :cond_47
    :try_start_47
    invoke-virtual {p2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 412
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    .line 413
    const-string v7, "setActivity"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/app/Activity;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/Object;

    aput-object v10, v8, v9

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 414
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p0, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_70} :catch_71

    goto :goto_43

    .line 415
    :catch_71
    move-exception v0

    .line 416
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_43

    .line 420
    :cond_76
    const-string v0, "native.libraries"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtNative;->loadQtLibraries(Ljava/util/ArrayList;)V

    .line 421
    const-string v0, "bundled.libraries"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 422
    iget-object v3, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-static {v3}, Lorg/qtproject/qt5/android/QtNativeLibrariesDir;->nativeLibrariesDir(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/qtproject/qt5/android/QtNative;->loadBundledLibraries(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 423
    const-string v3, "main.library"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_mainLib:Ljava/lang/String;

    .line 425
    iget-object v3, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_mainLib:Ljava/lang/String;

    if-nez v3, :cond_ae

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_ae

    .line 426
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_mainLib:Ljava/lang/String;

    .line 428
    :cond_ae
    const-string v0, "extract.android.style"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 429
    const-string v0, "extract.android.style"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    new-instance v3, Lorg/qtproject/qt5/android/ExtractStyle;

    iget-object v4, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-direct {v3, v4, v0}, Lorg/qtproject/qt5/android/ExtractStyle;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 434
    :cond_c3
    :try_start_c3
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "super_dispatchKeyEvent"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/view/KeyEvent;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_super_dispatchKeyEvent:Ljava/lang/reflect/Method;

    .line 435
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "super_onRestoreInstanceState"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/os/Bundle;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_super_onRestoreInstanceState:Ljava/lang/reflect/Method;

    .line 436
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "super_onRetainNonConfigurationInstance"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_super_onRetainNonConfigurationInstance:Ljava/lang/reflect/Method;

    .line 437
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "super_onSaveInstanceState"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/os/Bundle;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_super_onSaveInstanceState:Ljava/lang/reflect/Method;

    .line 438
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "super_onKeyDown"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/view/KeyEvent;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_super_onKeyDown:Ljava/lang/reflect/Method;

    .line 439
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "super_onKeyUp"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/view/KeyEvent;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_super_onKeyUp:Ljava/lang/reflect/Method;

    .line 440
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "super_onConfigurationChanged"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/res/Configuration;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_super_onConfigurationChanged:Ljava/lang/reflect/Method;

    .line 441
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "super_onActivityResult"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Landroid/content/Intent;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_super_onActivityResult:Ljava/lang/reflect/Method;
    :try_end_182
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_182} :catch_255

    .line 448
    const-string v0, "necessitas.api.level"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_279

    .line 449
    const-string v0, "necessitas.api.level"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 451
    :goto_190
    const-string v2, "environment.variables"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_environmentVariables:Ljava/lang/String;

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QT_ANDROID_FONTS_MONOSPACE=Droid Sans Mono;Droid Sans;Droid Sans Fallback\tQT_ANDROID_FONTS_SERIF=Droid Serif\tNECESSITAS_API_LEVEL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\tHOME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    .line 455
    invoke-virtual {v2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\tTMPDIR="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    .line 456
    invoke-virtual {v2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_25c

    .line 458
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\tQT_ANDROID_FONTS=Droid Sans;Droid Sans Fallback"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 462
    :goto_1ec
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/qtproject/qt5/android/QtActivityDelegate;->getAppIconSize(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 464
    sget-object v2, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_environmentVariables:Ljava/lang/String;

    if-eqz v2, :cond_271

    sget-object v2, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_environmentVariables:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_271

    .line 465
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_environmentVariables:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_environmentVariables:Ljava/lang/String;

    .line 469
    :goto_228
    const-string v0, "application.parameters"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_274

    .line 470
    const-string v0, "application.parameters"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_applicationParameters:Ljava/lang/String;

    .line 475
    :goto_238
    :try_start_238
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    iput v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_softInputMode:I
    :try_end_24d
    .catch Ljava/lang/Exception; {:try_start_238 .. :try_end_24d} :catch_24f

    goto/16 :goto_1b

    .line 476
    :catch_24f
    move-exception v0

    .line 477
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1b

    .line 442
    :catch_255
    move-exception v0

    .line 443
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 444
    goto/16 :goto_1b

    .line 460
    :cond_25c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\tQT_ANDROID_FONTS=Roboto;Droid Sans;Droid Sans Fallback"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1ec

    .line 467
    :cond_271
    sput-object v0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_environmentVariables:Ljava/lang/String;

    goto :goto_228

    .line 472
    :cond_274
    const-string v0, ""

    sput-object v0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_applicationParameters:Ljava/lang/String;

    goto :goto_238

    :cond_279
    move v0, v1

    goto/16 :goto_190
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    .prologue
    .line 894
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_super_onActivityResult:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1f

    .line 899
    :goto_1b
    invoke-static {p1, p2, p3}, Lorg/qtproject/qt5/android/QtNative;->onActivityResult(IILandroid/content/Intent;)V

    .line 900
    return-void

    .line 895
    :catch_1f
    move-exception v0

    .line 896
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    .prologue
    .line 842
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_super_onConfigurationChanged:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_27

    .line 846
    :goto_d
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 847
    iget v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_currentRotation:I

    if-eq v0, v1, :cond_24

    .line 848
    iget v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_nativeOrientation:I

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/QtNative;->handleOrientationChanged(II)V

    .line 851
    :cond_24
    iput v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_currentRotation:I

    .line 852
    return-void

    .line 843
    :catch_27
    move-exception v0

    .line 844
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .prologue
    .line 1082
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_contextMenuVisible:Z

    .line 1083
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/QtNative;->onContextItemSelected(IZ)Z

    move-result v0

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .registers 3

    .prologue
    .line 1074
    iget-boolean v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_contextMenuVisible:Z

    if-nez v0, :cond_5

    .line 1078
    :goto_4
    return-void

    .line 1076
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_contextMenuVisible:Z

    .line 1077
    invoke-static {p1}, Lorg/qtproject/qt5/android/QtNative;->onContextMenuClosed(Landroid/view/Menu;)V

    goto :goto_4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x1

    .line 777
    iput-boolean v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_quitApp:Z

    .line 778
    const/4 v0, 0x0

    .line 779
    if-nez p1, :cond_e

    .line 780
    new-instance v0, Lorg/qtproject/qt5/android/QtActivityDelegate$4;

    invoke-direct {v0, p0}, Lorg/qtproject/qt5/android/QtActivityDelegate$4;-><init>(Lorg/qtproject/qt5/android/QtActivityDelegate;)V

    .line 797
    :cond_e
    new-instance v3, Lorg/qtproject/qt5/android/QtLayout;

    iget-object v4, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-direct {v3, v4, v0}, Lorg/qtproject/qt5/android/QtLayout;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v3, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt5/android/QtLayout;

    .line 798
    new-instance v0, Lorg/qtproject/qt5/android/QtEditText;

    iget-object v3, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v3, p0}, Lorg/qtproject/qt5/android/QtEditText;-><init>(Landroid/content/Context;Lorg/qtproject/qt5/android/QtActivityDelegate;)V

    iput-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt5/android/QtEditText;

    .line 799
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    .line 800
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    .line 801
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    .line 802
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    iget-object v3, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt5/android/QtLayout;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 803
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    iget-object v3, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt5/android/QtLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 807
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 808
    iget-object v3, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 809
    if-eq v4, v1, :cond_6c

    const/4 v3, 0x3

    if-ne v4, v3, :cond_82

    :cond_6c
    move v3, v1

    .line 810
    :goto_6d
    if-ne v0, v6, :cond_84

    move v0, v1

    .line 811
    :goto_70
    if-eqz v0, :cond_74

    if-eqz v3, :cond_78

    :cond_74
    if-nez v0, :cond_86

    if-eqz v3, :cond_86

    .line 812
    :cond_78
    iput v6, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_nativeOrientation:I

    .line 816
    :goto_7a
    iget v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_nativeOrientation:I

    invoke-static {v4, v0}, Lorg/qtproject/qt5/android/QtNative;->handleOrientationChanged(II)V

    .line 817
    iput v4, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_currentRotation:I

    .line 818
    return-void

    :cond_82
    move v3, v2

    .line 809
    goto :goto_6d

    :cond_84
    move v0, v2

    .line 810
    goto :goto_70

    .line 814
    :cond_86
    iput v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_nativeOrientation:I

    goto :goto_7a
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5

    .prologue
    .line 1061
    invoke-interface {p1}, Landroid/view/ContextMenu;->clearHeader()V

    .line 1062
    invoke-static {p1}, Lorg/qtproject/qt5/android/QtNative;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 1063
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_contextMenuVisible:Z

    .line 1064
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3

    .prologue
    .line 1021
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1022
    const/4 v0, 0x1

    return v0
.end method

.method public onCreatePopupMenu(Landroid/view/Menu;)V
    .registers 3

    .prologue
    .line 1068
    invoke-static {p1}, Lorg/qtproject/qt5/android/QtNative;->fillContextMenu(Landroid/view/Menu;)V

    .line 1069
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_contextMenuVisible:Z

    .line 1070
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 856
    iget-boolean v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_quitApp:Z

    if-eqz v0, :cond_11

    .line 857
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_debuggerProcess:Ljava/lang/Process;

    if-eqz v0, :cond_d

    .line 858
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_debuggerProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 859
    :cond_d
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 861
    :cond_11
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 944
    iget-boolean v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_started:Z

    if-nez v0, :cond_7

    .line 973
    :cond_6
    :goto_6
    return v2

    .line 947
    :cond_7
    iget-wide v4, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_metaState:J

    invoke-static {v4, v5, p1, p2}, Landroid/text/method/MetaKeyKeyListener;->handleKeyDown(JILandroid/view/KeyEvent;)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_metaState:J

    .line 948
    iget-wide v4, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_metaState:J

    invoke-static {v4, v5}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(J)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v4

    .line 950
    iget-wide v6, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_metaState:J

    invoke-static {v6, v7}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(J)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_metaState:J

    .line 952
    const/high16 v0, -0x80000000

    and-int/2addr v0, v4

    if-eqz v0, :cond_69

    .line 953
    const v0, 0x7fffffff

    and-int/2addr v0, v4

    .line 954
    iget v3, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_lastChar:I

    invoke-static {v3, v0}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v0

    move v3, v0

    .line 958
    :goto_31
    const/16 v0, 0x18

    if-eq p1, v0, :cond_3d

    const/16 v0, 0x19

    if-eq p1, v0, :cond_3d

    const/16 v0, 0x5b

    if-ne p1, v0, :cond_45

    :cond_3d
    const-string v0, "QT_ANDROID_VOLUME_KEYS"

    .line 961
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 965
    :cond_45
    iput v4, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_lastChar:I

    .line 966
    const/4 v0, 0x4

    if-ne p1, v0, :cond_59

    .line 967
    iget-boolean v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_keyboardIsVisible:Z

    if-nez v0, :cond_57

    move v0, v1

    :goto_4f
    iput-boolean v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_backKeyPressedSent:Z

    .line 968
    iget-boolean v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_backKeyPressedSent:Z

    if-nez v0, :cond_59

    move v2, v1

    .line 969
    goto :goto_6

    :cond_57
    move v0, v2

    .line 967
    goto :goto_4f

    .line 971
    :cond_59
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_64

    move v2, v1

    :cond_64
    invoke-static {p1, v3, v0, v2}, Lorg/qtproject/qt5/android/QtNative;->keyDown(IIIZ)V

    move v2, v1

    .line 973
    goto :goto_6

    :cond_69
    move v3, v4

    goto :goto_31
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 978
    iget-boolean v2, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_started:Z

    if-nez v2, :cond_7

    .line 996
    :cond_6
    :goto_6
    return v0

    .line 981
    :cond_7
    const/16 v2, 0x18

    if-eq p1, v2, :cond_13

    const/16 v2, 0x19

    if-eq p1, v2, :cond_13

    const/16 v2, 0x5b

    if-ne p1, v2, :cond_1b

    :cond_13
    const-string v2, "QT_ANDROID_VOLUME_KEYS"

    .line 984
    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 988
    :cond_1b
    const/4 v2, 0x4

    if-ne p1, v2, :cond_2e

    iget-boolean v2, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_backKeyPressedSent:Z

    if-nez v2, :cond_2e

    .line 989
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/QtActivityDelegate;->hideSoftwareKeyboard()V

    .line 990
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lorg/qtproject/qt5/android/QtActivityDelegate;->setKeyboardVisibility(ZJ)Z

    move v0, v1

    .line 991
    goto :goto_6

    .line 994
    :cond_2e
    iget-wide v2, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_metaState:J

    invoke-static {v2, v3, p1, p2}, Landroid/text/method/MetaKeyKeyListener;->handleKeyUp(JILandroid/view/KeyEvent;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_metaState:J

    .line 995
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_45

    move v0, v1

    :cond_45
    invoke-static {p1, v2, v3, v0}, Lorg/qtproject/qt5/android/QtNative;->keyUp(IIIZ)V

    move v0, v1

    .line 996
    goto :goto_6
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 888
    invoke-static {p1}, Lorg/qtproject/qt5/android/QtNative;->onNewIntent(Landroid/content/Intent;)V

    .line 889
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .prologue
    .line 1034
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/QtNative;->onOptionsItemSelected(IZ)Z

    move-result v0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 3

    .prologue
    .line 1039
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_optionsMenuIsVisible:Z

    .line 1040
    invoke-static {p1}, Lorg/qtproject/qt5/android/QtNative;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 1041
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 865
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtNative;->updateApplicationState(I)V

    .line 866
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 1026
    iput-boolean v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_optionsMenuIsVisible:Z

    .line 1027
    invoke-static {p1}, Lorg/qtproject/qt5/android/QtNative;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 1028
    if-eqz v1, :cond_13

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-lez v2, :cond_13

    :goto_f
    invoke-direct {p0, v0}, Lorg/qtproject/qt5/android/QtActivityDelegate;->setActionBarVisibility(Z)V

    .line 1029
    return v1

    .line 1028
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 933
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_super_onRestoreInstanceState:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_16

    .line 937
    :goto_d
    const-string v0, "Started"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_started:Z

    .line 940
    return-void

    .line 934
    :catch_16
    move-exception v0

    .line 935
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 871
    sget-object v1, Lorg/qtproject/qt5/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 873
    :try_start_3
    invoke-static {}, Lorg/qtproject/qt5/android/QtNative;->getLostActions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 874
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 875
    iget-object v3, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_b

    .line 883
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0

    .line 877
    :cond_20
    const/4 v0, 0x4

    :try_start_21
    invoke-static {v0}, Lorg/qtproject/qt5/android/QtNative;->updateApplicationState(I)V

    .line 878
    iget-boolean v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_started:Z

    if-eqz v0, :cond_31

    .line 879
    invoke-static {}, Lorg/qtproject/qt5/android/QtNative;->clearLostActions()V

    .line 880
    invoke-static {}, Lorg/qtproject/qt5/android/QtNative;->updateWindow()V

    .line 881
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/QtActivityDelegate;->updateFullScreen()V

    .line 883
    :cond_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_21 .. :try_end_32} :catchall_1d

    .line 884
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 911
    :try_start_1
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_super_onRetainNonConfigurationInstance:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_13

    .line 915
    :goto_b
    iput-boolean v3, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_quitApp:Z

    .line 916
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 912
    :catch_13
    move-exception v0

    .line 913
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 921
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_super_onSaveInstanceState:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_1c

    .line 925
    :goto_d
    const-string v0, "FullScreen"

    iget-boolean v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_fullScreen:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 926
    const-string v0, "Started"

    iget-boolean v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_started:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 928
    return-void

    .line 922
    :catch_1c
    move-exception v0

    .line 923
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 905
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtNative;->updateApplicationState(I)V

    .line 906
    return-void
.end method

.method public onTerminate()V
    .registers 1

    .prologue
    .line 772
    invoke-static {}, Lorg/qtproject/qt5/android/QtNative;->terminateQt()V

    .line 773
    return-void
.end method

.method public openContextMenu(IIII)V
    .registers 12

    .prologue
    .line 1088
    iget-object v6, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt5/android/QtLayout;

    new-instance v0, Lorg/qtproject/qt5/android/QtActivityDelegate$5;

    move-object v1, p0

    move v2, p3

    move v3, p4

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/qtproject/qt5/android/QtActivityDelegate$5;-><init>(Lorg/qtproject/qt5/android/QtActivityDelegate;IIII)V

    const-wide/16 v2, 0x64

    invoke-virtual {v6, v0, v2, v3}, Lorg/qtproject/qt5/android/QtLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1104
    return-void
.end method

.method public resetOptionsMenu()V
    .registers 4

    .prologue
    .line 1045
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_1f

    .line 1047
    :try_start_6
    const-class v0, Landroid/app/Activity;

    const-string v1, "invalidateOptionsMenu"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_19} :catch_1a

    .line 1055
    :cond_19
    :goto_19
    return-void

    .line 1048
    :catch_1a
    move-exception v0

    .line 1049
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19

    .line 1053
    :cond_1f
    iget-boolean v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_optionsMenuIsVisible:Z

    if-eqz v0, :cond_19

    .line 1054
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    goto :goto_19
.end method

.method public resetSoftwareKeyboard()V
    .registers 5

    .prologue
    .line 231
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_5

    .line 240
    :goto_4
    return-void

    .line 233
    :cond_5
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt5/android/QtEditText;

    new-instance v1, Lorg/qtproject/qt5/android/QtActivityDelegate$1;

    invoke-direct {v1, p0}, Lorg/qtproject/qt5/android/QtActivityDelegate$1;-><init>(Lorg/qtproject/qt5/android/QtActivityDelegate;)V

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lorg/qtproject/qt5/android/QtEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method

.method public setFullScreen(Z)V
    .registers 13

    .prologue
    const/16 v3, 0x400

    const/16 v2, 0x13

    .line 128
    iget-boolean v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_fullScreen:Z

    if-ne v0, p1, :cond_9

    .line 171
    :goto_8
    return-void

    .line 131
    :cond_9
    iput-boolean p1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_fullScreen:Z

    if-eqz p1, :cond_ad

    .line 132
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 133
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_a1

    .line 136
    :try_start_25
    const-class v0, Landroid/view/View;

    const-string v1, "SYSTEM_UI_FLAG_IMMERSIVE_STICKY"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 137
    const-class v1, Landroid/view/View;

    const-string v2, "SYSTEM_UI_FLAG_LAYOUT_STABLE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 138
    const-class v2, Landroid/view/View;

    const-string v3, "SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 139
    const-class v3, Landroid/view/View;

    const-string v4, "SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 140
    const-class v4, Landroid/view/View;

    const-string v5, "SYSTEM_UI_FLAG_HIDE_NAVIGATION"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 141
    const-class v5, Landroid/view/View;

    const-string v6, "SYSTEM_UI_FLAG_FULLSCREEN"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    .line 143
    const-class v6, Landroid/view/View;

    const-string v7, "setSystemUiVisibility"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 144
    iget-object v7, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    or-int/2addr v1, v2

    or-int/2addr v1, v3

    or-int/2addr v1, v4

    or-int/2addr v1, v5

    or-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x4

    .line 145
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v9

    .line 144
    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_a1} :catch_a8

    .line 170
    :cond_a1
    :goto_a1
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt5/android/QtLayout;

    invoke-virtual {v0}, Lorg/qtproject/qt5/android/QtLayout;->requestLayout()V

    goto/16 :goto_8

    .line 152
    :catch_a8
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a1

    .line 157
    :cond_ad
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 158
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 159
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_a1

    .line 161
    :try_start_c5
    const-class v0, Landroid/view/View;

    const-string v1, "SYSTEM_UI_FLAG_VISIBLE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 162
    const-class v1, Landroid/view/View;

    const-string v2, "setSystemUiVisibility"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 163
    iget-object v2, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 164
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    .line 163
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_f9} :catch_fa

    goto :goto_a1

    .line 165
    :catch_fa
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a1
.end method

.method public setKeyboardVisibility(ZJ)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 215
    iget-wide v2, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_showHideTimeStamp:J

    cmp-long v1, v2, p2

    if-lez v1, :cond_8

    .line 227
    :cond_7
    :goto_7
    return v0

    .line 217
    :cond_8
    iput-wide p2, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_showHideTimeStamp:J

    .line 219
    iget-boolean v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_keyboardIsVisible:Z

    if-eq v1, p1, :cond_7

    .line 221
    iput-boolean p1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_keyboardIsVisible:Z

    .line 222
    iget-boolean v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_keyboardIsVisible:Z

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtNative;->keyboardVisibilityChanged(Z)V

    .line 224
    if-nez p1, :cond_1a

    .line 225
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/QtActivityDelegate;->updateFullScreen()V

    .line 227
    :cond_1a
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public setSurfaceGeometry(IIIII)V
    .registers 9

    .prologue
    .line 1209
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1210
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/qtproject/qt5/android/QtSurface;

    .line 1211
    new-instance v1, Lorg/qtproject/qt5/android/QtLayout$LayoutParams;

    invoke-direct {v1, p4, p5, p2, p3}, Lorg/qtproject/qt5/android/QtLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lorg/qtproject/qt5/android/QtSurface;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1219
    :goto_20
    return-void

    .line 1212
    :cond_21
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1213
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1214
    new-instance v1, Lorg/qtproject/qt5/android/QtLayout$LayoutParams;

    invoke-direct {v1, p4, p5, p2, p3}, Lorg/qtproject/qt5/android/QtLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_20

    .line 1216
    :cond_42
    const-string v0, "Qt JAVA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method public showSoftwareKeyboard(IIIII)V
    .registers 16

    .prologue
    const/high16 v8, 0x80000

    const/high16 v7, 0x20000

    const/16 v4, 0x21

    const/16 v3, 0x11

    const/4 v0, 0x2

    .line 244
    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v1, :cond_e

    .line 344
    :goto_d
    return-void

    .line 247
    :cond_e
    iget v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_softInputMode:I

    if-nez v1, :cond_7f

    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt5/android/QtLayout;

    invoke-virtual {v1}, Lorg/qtproject/qt5/android/QtLayout;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    if-le p4, v1, :cond_7f

    .line 248
    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 254
    :goto_27
    const/4 v2, 0x0

    .line 255
    const/4 v1, 0x6

    .line 256
    const/4 v5, 0x1

    .line 258
    const v6, 0x30008

    and-int/2addr v6, p5

    if-eqz v6, :cond_99

    .line 260
    and-int v3, p5, v7

    if-eqz v3, :cond_36

    .line 261
    const/16 v0, 0x3002

    .line 265
    :cond_36
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xa

    if-le v3, v4, :cond_110

    and-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_110

    .line 266
    or-int/lit8 v0, v0, 0x10

    move v9, v0

    move v0, v1

    move v1, v9

    .line 308
    :goto_45
    and-int/lit16 v3, p5, 0x400

    if-eqz v3, :cond_4b

    .line 309
    const/high16 v0, 0x40000000    # 2.0f

    .line 311
    :cond_4b
    iget-object v3, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt5/android/QtEditText;

    invoke-virtual {v3, v2}, Lorg/qtproject/qt5/android/QtEditText;->setInitialCapsMode(I)V

    .line 312
    iget-object v2, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt5/android/QtEditText;

    invoke-virtual {v2, v0}, Lorg/qtproject/qt5/android/QtEditText;->setImeOptions(I)V

    .line 313
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt5/android/QtEditText;

    invoke-virtual {v0, v1}, Lorg/qtproject/qt5/android/QtEditText;->setInputType(I)V

    .line 315
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt5/android/QtLayout;

    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt5/android/QtEditText;

    invoke-virtual {v0, v1}, Lorg/qtproject/qt5/android/QtLayout;->removeView(Landroid/view/View;)V

    .line 316
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt5/android/QtLayout;

    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt5/android/QtEditText;

    new-instance v2, Lorg/qtproject/qt5/android/QtLayout$LayoutParams;

    invoke-direct {v2, p3, p4, p1, p2}, Lorg/qtproject/qt5/android/QtLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Lorg/qtproject/qt5/android/QtLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt5/android/QtEditText;

    invoke-virtual {v0}, Lorg/qtproject/qt5/android/QtEditText;->requestFocus()Z

    .line 318
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt5/android/QtEditText;

    new-instance v1, Lorg/qtproject/qt5/android/QtActivityDelegate$2;

    invoke-direct {v1, p0}, Lorg/qtproject/qt5/android/QtActivityDelegate$2;-><init>(Lorg/qtproject/qt5/android/QtActivityDelegate;)V

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v1, v2, v3}, Lorg/qtproject/qt5/android/QtEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d

    .line 249
    :cond_7f
    iget v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_softInputMode:I

    if-nez v1, :cond_8d

    .line 250
    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_27

    .line 252
    :cond_8d
    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v2, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_softInputMode:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_27

    .line 267
    :cond_99
    const/high16 v6, 0x100000

    and-int/2addr v6, p5

    if-eqz v6, :cond_a3

    .line 268
    const/4 v0, 0x3

    move v9, v0

    move v0, v1

    move v1, v9

    goto :goto_45

    .line 269
    :cond_a3
    and-int/lit16 v6, p5, 0x180

    if-eqz v6, :cond_be

    .line 270
    const/4 v0, 0x4

    .line 271
    and-int/lit16 v3, p5, 0x180

    const/16 v4, 0x180

    if-eq v3, v4, :cond_110

    .line 272
    and-int/lit16 v3, p5, 0x80

    if-eqz v3, :cond_b4

    .line 273
    const/16 v0, 0x14

    .line 274
    :cond_b4
    and-int/lit16 v3, p5, 0x100

    if-eqz v3, :cond_110

    .line 275
    or-int/lit8 v0, v0, 0x20

    move v9, v0

    move v0, v1

    move v1, v9

    goto :goto_45

    .line 278
    :cond_be
    const/high16 v6, 0x600000

    and-int/2addr v6, p5

    if-eqz v6, :cond_f1

    .line 279
    const/high16 v6, 0x400000

    and-int/2addr v6, p5

    if-eqz v6, :cond_ea

    move v1, v0

    move v0, v3

    .line 291
    :goto_ca
    and-int/lit16 v3, p5, 0x400

    if-eqz v3, :cond_cf

    .line 292
    or-int/2addr v0, v7

    .line 294
    :cond_cf
    const/high16 v3, 0x40000

    and-int/2addr v3, p5

    if-eqz v3, :cond_103

    .line 295
    const/16 v2, 0x1000

    .line 296
    or-int/lit16 v0, v0, 0x1000

    .line 302
    :cond_d8
    :goto_d8
    and-int/lit8 v3, p5, 0x40

    if-nez v3, :cond_e4

    and-int/lit8 v3, p5, 0x2

    if-nez v3, :cond_e4

    and-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_110

    .line 304
    :cond_e4
    or-int/2addr v0, v8

    move v9, v0

    move v0, v1

    move v1, v9

    goto/16 :goto_45

    .line 282
    :cond_ea
    const/high16 v0, 0x200000

    and-int/2addr v0, p5

    if-eqz v0, :cond_115

    move v0, v4

    .line 283
    goto :goto_ca

    .line 285
    :cond_f1
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_f8

    .line 286
    const/16 v0, 0x81

    goto :goto_ca

    .line 287
    :cond_f8
    and-int/lit8 v0, p5, 0x2

    if-nez v0, :cond_100

    and-int/lit8 v0, p5, 0x40

    if-eqz v0, :cond_115

    .line 288
    :cond_100
    const/16 v0, 0x91

    goto :goto_ca

    .line 297
    :cond_103
    and-int v3, p5, v8

    if-nez v3, :cond_d8

    and-int/lit8 v3, p5, 0x4

    if-nez v3, :cond_d8

    .line 298
    const/16 v2, 0x4000

    .line 299
    or-int/lit16 v0, v0, 0x4000

    goto :goto_d8

    :cond_110
    move v9, v0

    move v0, v1

    move v1, v9

    goto/16 :goto_45

    :cond_115
    move v0, v5

    goto :goto_ca
.end method

.method public startApplication()Z
    .registers 19

    .prologue
    .line 547
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 548
    if-eqz v7, :cond_3a3

    .line 550
    const-string v2, "native_debug"

    .line 551
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ba

    const-string v2, "native_debug"

    .line 552
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_242

    move-result v2

    if-eqz v2, :cond_ba

    .line 554
    :try_start_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    .line 555
    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x4000

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 557
    const-string v2, "gdbserver_path"

    .line 558
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20a

    const-string v2, "gdbserver_path"

    .line 559
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 562
    :goto_5d
    const-string v3, "gdbserver_socket"

    .line 563
    invoke-virtual {v7, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21f

    const-string v3, "gdbserver_socket"

    .line 564
    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 567
    :goto_6b
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_89

    .line 568
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".so"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 571
    :cond_89
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --attach "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 574
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 571
    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_debuggerProcess:Ljava/lang/Process;
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_ba} :catch_223
    .catch Ljava/lang/SecurityException; {:try_start_24 .. :try_end_ba} :catch_248
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24 .. :try_end_ba} :catch_267
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_ba} :catch_242

    .line 587
    :cond_ba
    :goto_ba
    :try_start_ba
    const-string v2, "debug_ping"

    .line 588
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f3

    const-string v2, "debug_ping"

    .line 589
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_cd} :catch_242

    move-result v2

    if-eqz v2, :cond_2f3

    .line 591
    :try_start_d0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extra parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/qtproject/qt5/android/QtActivityDelegate;->debugLog(Ljava/lang/String;)V

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    .line 593
    const-string v2, "ping_file"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 594
    const-string v2, "pong_file"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 595
    const-string v2, "gdbserver_socket"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 596
    const-string v2, "gdbserver_command"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 597
    const-string v2, "ping_socket"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 598
    if-eqz v8, :cond_286

    const/4 v2, 0x1

    move v6, v2

    .line 599
    :goto_10f
    if-eqz v9, :cond_28a

    const/4 v2, 0x1

    move v5, v2

    .line 600
    :goto_113
    if-eqz v10, :cond_28e

    const/4 v2, 0x1

    move v4, v2

    .line 601
    :goto_117
    if-eqz v12, :cond_292

    const/4 v2, 0x1

    move v3, v2

    .line 602
    :goto_11b
    const/16 v13, 0xc8

    .line 604
    const/16 v14, 0x96

    .line 606
    if-eqz v10, :cond_13f

    .line 607
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "removing gdb socket "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/qtproject/qt5/android/QtActivityDelegate;->debugLog(Ljava/lang/String;)V

    .line 608
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 611
    :cond_13f
    if-eqz v6, :cond_16d

    .line 612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "removing ping file "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/qtproject/qt5/android/QtActivityDelegate;->debugLog(Ljava/lang/String;)V

    .line 613
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 614
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_16d

    .line 615
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_16d

    .line 616
    const-string v2, "ping file cannot be deleted"

    invoke-static {v2}, Lorg/qtproject/qt5/android/QtActivityDelegate;->debugLog(Ljava/lang/String;)V

    .line 620
    :cond_16d
    if-eqz v5, :cond_19b

    .line 621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "removing pong file "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/qtproject/qt5/android/QtActivityDelegate;->debugLog(Ljava/lang/String;)V

    .line 622
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 623
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_19b

    .line 624
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_19b

    .line 625
    const-string v2, "pong file cannot be deleted"

    invoke-static {v2}, Lorg/qtproject/qt5/android/QtActivityDelegate;->debugLog(Ljava/lang/String;)V

    .line 629
    :cond_19b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "starting "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/qtproject/qt5/android/QtActivityDelegate;->debugLog(Ljava/lang/String;)V

    .line 630
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_debuggerProcess:Ljava/lang/Process;

    .line 631
    const-string v2, "gdbserver started"

    invoke-static {v2}, Lorg/qtproject/qt5/android/QtActivityDelegate;->debugLog(Ljava/lang/String;)V

    .line 633
    if-eqz v4, :cond_2d0

    .line 635
    const/4 v2, 0x0

    :goto_1c5
    if-ge v2, v14, :cond_201

    .line 636
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "waiting for socket at "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, ", attempt "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/qtproject/qt5/android/QtActivityDelegate;->debugLog(Ljava/lang/String;)V

    .line 637
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 638
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_296

    .line 639
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Ljava/io/File;->setReadable(ZZ)Z

    .line 640
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Ljava/io/File;->setWritable(ZZ)Z

    .line 641
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 647
    :cond_201
    if-ne v2, v14, :cond_2a0

    .line 648
    const-string v2, "time out when waiting for debug socket"

    invoke-static {v2}, Lorg/qtproject/qt5/android/QtActivityDelegate;->debugLog(Ljava/lang/String;)V
    :try_end_208
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_208} :catch_2d6
    .catch Ljava/lang/SecurityException; {:try_start_d0 .. :try_end_208} :catch_484
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_208} :catch_242

    .line 649
    const/4 v2, 0x0

    .line 766
    :goto_209
    return v2

    .line 559
    :cond_20a
    :try_start_20a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lib/gdbserver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5d

    .line 564
    :cond_21f
    const-string v3, "+debug-socket"
    :try_end_221
    .catch Ljava/io/IOException; {:try_start_20a .. :try_end_221} :catch_223
    .catch Ljava/lang/SecurityException; {:try_start_20a .. :try_end_221} :catch_248
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20a .. :try_end_221} :catch_267
    .catch Ljava/lang/Exception; {:try_start_20a .. :try_end_221} :catch_242

    goto/16 :goto_6b

    .line 577
    :catch_223
    move-exception v2

    .line 578
    :try_start_224
    const-string v3, "Qt JAVA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t start debugger"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_240
    .catch Ljava/lang/Exception; {:try_start_224 .. :try_end_240} :catch_242

    goto/16 :goto_ba

    .line 764
    :catch_242
    move-exception v2

    .line 765
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 766
    const/4 v2, 0x0

    goto :goto_209

    .line 579
    :catch_248
    move-exception v2

    .line 580
    :try_start_249
    const-string v3, "Qt JAVA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t start debugger"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ba

    .line 581
    :catch_267
    move-exception v2

    .line 582
    const-string v3, "Qt JAVA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t start debugger"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_284
    .catch Ljava/lang/Exception; {:try_start_249 .. :try_end_284} :catch_242

    goto/16 :goto_ba

    .line 598
    :cond_286
    const/4 v2, 0x0

    move v6, v2

    goto/16 :goto_10f

    .line 599
    :cond_28a
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_113

    .line 600
    :cond_28e
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_117

    .line 601
    :cond_292
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_11b

    .line 644
    :cond_296
    int-to-long v0, v13

    move-wide/from16 v16, v0

    :try_start_299
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V

    .line 635
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1c5

    .line 652
    :cond_2a0
    const-string v2, "socket ok"

    invoke-static {v2}, Lorg/qtproject/qt5/android/QtActivityDelegate;->debugLog(Ljava/lang/String;)V

    .line 657
    :goto_2a5
    if-eqz v3, :cond_3d0

    .line 658
    new-instance v3, Lorg/qtproject/qt5/android/QtActivityDelegate$DebugWaitRunnable;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v12}, Lorg/qtproject/qt5/android/QtActivityDelegate$DebugWaitRunnable;-><init>(Lorg/qtproject/qt5/android/QtActivityDelegate;Ljava/lang/String;)V

    .line 659
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 660
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 663
    const/4 v2, 0x0

    :goto_2b7
    if-ge v2, v14, :cond_3b2

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v10

    if-eqz v10, :cond_3b2

    .line 664
    const-string v10, "Waiting for debug socket connect"

    invoke-static {v10}, Lorg/qtproject/qt5/android/QtActivityDelegate;->debugLog(Ljava/lang/String;)V

    .line 665
    const-string v10, "go to sleep"

    invoke-static {v10}, Lorg/qtproject/qt5/android/QtActivityDelegate;->debugLog(Ljava/lang/String;)V

    .line 666
    int-to-long v10, v13

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 663
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b7

    .line 654
    :cond_2d0
    const-string v2, "socket not used"

    invoke-static {v2}, Lorg/qtproject/qt5/android/QtActivityDelegate;->debugLog(Ljava/lang/String;)V
    :try_end_2d5
    .catch Ljava/io/IOException; {:try_start_299 .. :try_end_2d5} :catch_2d6
    .catch Ljava/lang/SecurityException; {:try_start_299 .. :try_end_2d5} :catch_484
    .catch Ljava/lang/Exception; {:try_start_299 .. :try_end_2d5} :catch_242

    goto :goto_2a5

    .line 724
    :catch_2d6
    move-exception v2

    .line 725
    :try_start_2d7
    const-string v3, "Qt JAVA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t start debugger"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_2f3
    :goto_2f3
    const-string v2, "qml_debug"

    .line 732
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_339

    const-string v2, "qml_debug"

    .line 733
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_339

    .line 735
    const-string v2, "qmljsdebugger"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4cf

    .line 736
    const-string v2, "qmljsdebugger"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 737
    const-string v3, "\\s"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 741
    :goto_31e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_applicationParameters:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t-qmljsdebugger="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_applicationParameters:Ljava/lang/String;

    .line 744
    :cond_339
    const-string v2, "extraenvvars"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    :try_end_33e
    .catch Ljava/lang/Exception; {:try_start_2d7 .. :try_end_33e} :catch_242

    move-result v2

    if-eqz v2, :cond_36e

    .line 746
    :try_start_341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_environmentVariables:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    const-string v4, "extraenvvars"

    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_environmentVariables:Ljava/lang/String;
    :try_end_36e
    .catch Ljava/lang/Exception; {:try_start_341 .. :try_end_36e} :catch_4d3

    .line 752
    :cond_36e
    :goto_36e
    :try_start_36e
    const-string v2, "extraappparams"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    :try_end_373
    .catch Ljava/lang/Exception; {:try_start_36e .. :try_end_373} :catch_242

    move-result v2

    if-eqz v2, :cond_3a3

    .line 754
    :try_start_376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_applicationParameters:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    const-string v4, "extraappparams"

    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_applicationParameters:Ljava/lang/String;
    :try_end_3a3
    .catch Ljava/lang/Exception; {:try_start_376 .. :try_end_3a3} :catch_4d9

    .line 761
    :cond_3a3
    :goto_3a3
    :try_start_3a3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    if-nez v2, :cond_3af

    .line 762
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/qtproject/qt5/android/QtActivityDelegate;->onCreate(Landroid/os/Bundle;)V
    :try_end_3af
    .catch Ljava/lang/Exception; {:try_start_3a3 .. :try_end_3af} :catch_242

    .line 763
    :cond_3af
    const/4 v2, 0x1

    goto/16 :goto_209

    .line 669
    :cond_3b2
    if-ne v2, v14, :cond_3bf

    .line 670
    :try_start_3b4
    const-string v2, "time out when waiting for ping socket"

    invoke-static {v2}, Lorg/qtproject/qt5/android/QtActivityDelegate;->debugLog(Ljava/lang/String;)V

    .line 671
    invoke-virtual {v3}, Lorg/qtproject/qt5/android/QtActivityDelegate$DebugWaitRunnable;->shutdown()V

    .line 672
    const/4 v2, 0x0

    goto/16 :goto_209

    .line 675
    :cond_3bf
    iget-boolean v2, v3, Lorg/qtproject/qt5/android/QtActivityDelegate$DebugWaitRunnable;->wasFailure:Z

    if-eqz v2, :cond_3cb

    .line 676
    const-string v2, "Could not connect to debug client"

    invoke-static {v2}, Lorg/qtproject/qt5/android/QtActivityDelegate;->debugLog(Ljava/lang/String;)V

    .line 677
    const/4 v2, 0x0

    goto/16 :goto_209

    .line 679
    :cond_3cb
    const-string v2, "Got pid acknowledgment"

    invoke-static {v2}, Lorg/qtproject/qt5/android/QtActivityDelegate;->debugLog(Ljava/lang/String;)V

    .line 683
    :cond_3d0
    if-eqz v6, :cond_47e

    .line 685
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writing ping at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/qtproject/qt5/android/QtActivityDelegate;->debugLog(Ljava/lang/String;)V

    .line 686
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v8}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 687
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 688
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 689
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 690
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 691
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setWritable(ZZ)Z

    .line 692
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 693
    const-string v2, "wrote ping"

    invoke-static {v2}, Lorg/qtproject/qt5/android/QtActivityDelegate;->debugLog(Ljava/lang/String;)V

    .line 699
    :goto_423
    if-eqz v5, :cond_4c8

    .line 701
    const/4 v2, 0x0

    :goto_426
    if-ge v2, v14, :cond_456

    .line 702
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waiting for pong at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", attempt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/qtproject/qt5/android/QtActivityDelegate;->debugLog(Ljava/lang/String;)V

    .line 703
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 704
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4a3

    .line 705
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 711
    :cond_456
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing pingFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/qtproject/qt5/android/QtActivityDelegate;->debugLog(Ljava/lang/String;)V

    .line 712
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 714
    if-ne v2, v14, :cond_4b0

    .line 715
    const-string v2, "time out when waiting for pong file"

    invoke-static {v2}, Lorg/qtproject/qt5/android/QtActivityDelegate;->debugLog(Ljava/lang/String;)V

    .line 716
    const/4 v2, 0x0

    goto/16 :goto_209

    .line 695
    :cond_47e
    const-string v2, "ping not requested"

    invoke-static {v2}, Lorg/qtproject/qt5/android/QtActivityDelegate;->debugLog(Ljava/lang/String;)V
    :try_end_483
    .catch Ljava/io/IOException; {:try_start_3b4 .. :try_end_483} :catch_2d6
    .catch Ljava/lang/SecurityException; {:try_start_3b4 .. :try_end_483} :catch_484
    .catch Ljava/lang/Exception; {:try_start_3b4 .. :try_end_483} :catch_242

    goto :goto_423

    .line 726
    :catch_484
    move-exception v2

    .line 727
    :try_start_485
    const-string v3, "Qt JAVA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t start debugger"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a1
    .catch Ljava/lang/Exception; {:try_start_485 .. :try_end_4a1} :catch_242

    goto/16 :goto_2f3

    .line 708
    :cond_4a3
    :try_start_4a3
    const-string v3, "go to sleep"

    invoke-static {v3}, Lorg/qtproject/qt5/android/QtActivityDelegate;->debugLog(Ljava/lang/String;)V

    .line 709
    int-to-long v4, v13

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 701
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_426

    .line 719
    :cond_4b0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got pong "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/qtproject/qt5/android/QtActivityDelegate;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_2f3

    .line 721
    :cond_4c8
    const-string v2, "pong not requested"

    invoke-static {v2}, Lorg/qtproject/qt5/android/QtActivityDelegate;->debugLog(Ljava/lang/String;)V
    :try_end_4cd
    .catch Ljava/io/IOException; {:try_start_4a3 .. :try_end_4cd} :catch_2d6
    .catch Ljava/lang/SecurityException; {:try_start_4a3 .. :try_end_4cd} :catch_484
    .catch Ljava/lang/Exception; {:try_start_4a3 .. :try_end_4cd} :catch_242

    goto/16 :goto_2f3

    .line 739
    :cond_4cf
    :try_start_4cf
    const-string v2, "port:3768"

    goto/16 :goto_31e

    .line 747
    :catch_4d3
    move-exception v2

    .line 748
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_36e

    .line 755
    :catch_4d9
    move-exception v2

    .line 756
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4dd
    .catch Ljava/lang/Exception; {:try_start_4cf .. :try_end_4dd} :catch_242

    goto/16 :goto_3a3
.end method

.method public updateFullScreen()V
    .registers 2

    .prologue
    .line 175
    iget-boolean v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_fullScreen:Z

    if-eqz v0, :cond_b

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_fullScreen:Z

    .line 177
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/qtproject/qt5/android/QtActivityDelegate;->setFullScreen(Z)V

    .line 179
    :cond_b
    return-void
.end method

.method public updateSelection(IIII)V
    .registers 11

    .prologue
    .line 385
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_5

    .line 389
    :goto_4
    return-void

    .line 388
    :cond_5
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt5/android/QtEditText;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    goto :goto_4
.end method
