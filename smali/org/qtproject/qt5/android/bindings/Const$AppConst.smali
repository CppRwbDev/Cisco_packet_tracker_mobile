.class public Lorg/qtproject/qt5/android/bindings/Const$AppConst;
.super Ljava/lang/Object;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt5/android/bindings/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppConst"
.end annotation


# static fields
.field static final ANDROID_THEMES_KEY:Ljava/lang/String; = "android.themes"

.field static final APPLICATION_PARAMETERS_KEY:Ljava/lang/String; = "application.parameters"

.field static final APPLICATION_TITLE_KEY:Ljava/lang/String; = "application.title"

.field static final BUFFER_SIZE:I = 0x400

.field static final BUNDLED_IN_ASSETS_RESOURCE_ID_KEY:Ljava/lang/String; = "android.app.bundled_in_assets_resource_id"

.field static final BUNDLED_IN_LIB_RESOURCE_ID_KEY:Ljava/lang/String; = "android.app.bundled_in_lib_resource_id"

.field static final BUNDLED_LIBRARIES_KEY:Ljava/lang/String; = "bundled.libraries"

.field static final DEX_PATH_KEY:Ljava/lang/String; = "dex.path"

.field static final ENVIRONMENT_VARIABLES_KEY:Ljava/lang/String; = "environment.variables"

.field static final ERROR_CODE_KEY:Ljava/lang/String; = "error.code"

.field static final ERROR_MESSAGE_KEY:Ljava/lang/String; = "error.message"

.field static final INCOMPATIBLE_MINISTRO_VERSION:I = 0x1

.field static final LIB_PATH_KEY:Ljava/lang/String; = "lib.path"

.field static final LOADER_CLASS_NAME_KEY:Ljava/lang/String; = "loader.class.name"

.field static final MAIN_LIBRARY_KEY:Ljava/lang/String; = "main.library"

.field static final MINIMUM_MINISTRO_API_KEY:Ljava/lang/String; = "minimum.ministro.api"

.field static final MINIMUM_QT_VERSION_KEY:Ljava/lang/String; = "minimum.qt.version"

.field static final MINISTRO_API_LEVEL:I = 0x4

.field static final MINISTRO_INSTALL_REQUEST_CODE:I = 0xf3ee

.field static final NATIVE_LIBRARIES_KEY:Ljava/lang/String; = "native.libraries"

.field static final NECESSITAS_API_LEVEL:I = 0x2

.field static final NECESSITAS_API_LEVEL_KEY:Ljava/lang/String; = "necessitas.api.level"

.field static final QT_VERSION:I = 0x50100

.field public static final QtTAG:Ljava/lang/String; = "Qt"

.field static final REPOSITORY_KEY:Ljava/lang/String; = "repository"

.field static final REQUIRED_MODULES_KEY:Ljava/lang/String; = "required.modules"

.field static final SOURCES_KEY:Ljava/lang/String; = "sources"

.field static final STATIC_INIT_CLASSES_KEY:Ljava/lang/String; = "static.init.classes"


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/Const;


# direct methods
.method public constructor <init>(Lorg/qtproject/qt5/android/bindings/Const;)V
    .registers 2
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/Const;

    .prologue
    .line 70
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/Const$AppConst;->this$0:Lorg/qtproject/qt5/android/bindings/Const;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
