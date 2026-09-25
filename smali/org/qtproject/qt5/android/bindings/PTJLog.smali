.class public Lorg/qtproject/qt5/android/bindings/PTJLog;
.super Ljava/lang/Object;
.source "PTJLog.java"


# static fields
.field private static volatile debugMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const/4 v0, 0x1

    sput-boolean v0, Lorg/qtproject/qt5/android/bindings/PTJLog;->debugMode:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 48
    sget-boolean v0, Lorg/qtproject/qt5/android/bindings/PTJLog;->debugMode:Z

    if-eqz v0, :cond_7

    .line 49
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_7
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 36
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    return-void
.end method

.method public static init(Lorg/qtproject/qt5/android/bindings/QtActivity;)V
    .registers 8
    .param p0, "activity"    # Lorg/qtproject/qt5/android/bindings/QtActivity;

    .prologue
    const/4 v6, 0x0

    .line 16
    const-string v1, "config/logging-debug.cfg"

    .line 18
    .local v1, "cfg_name":Ljava/lang/String;
    :try_start_3
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 19
    .local v0, "cfg_in":Ljava/io/InputStream;
    if-eqz v0, :cond_1e

    .line 20
    const/4 v3, 0x1

    sput-boolean v3, Lorg/qtproject/qt5/android/bindings/PTJLog;->debugMode:Z

    .line 21
    const-string v3, "PTJLog"

    const-string v4, "Logging mode: DEBUG"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/qtproject/qt5/android/bindings/PTJLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1e} :catch_1f

    .line 28
    .end local v0    # "cfg_in":Ljava/io/InputStream;
    :cond_1e
    :goto_1e
    return-void

    .line 24
    :catch_1f
    move-exception v2

    .line 25
    .local v2, "e":Ljava/lang/Exception;
    sput-boolean v6, Lorg/qtproject/qt5/android/bindings/PTJLog;->debugMode:Z

    .line 26
    const-string v3, "PTJLog"

    const-string v4, "Logging mode: RELEASE"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/qtproject/qt5/android/bindings/PTJLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public static isDebugMode()Z
    .registers 1

    .prologue
    .line 30
    sget-boolean v0, Lorg/qtproject/qt5/android/bindings/PTJLog;->debugMode:Z

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 52
    sget-boolean v0, Lorg/qtproject/qt5/android/bindings/PTJLog;->debugMode:Z

    if-eqz v0, :cond_7

    .line 53
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_7
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method
