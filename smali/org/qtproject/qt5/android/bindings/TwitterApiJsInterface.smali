.class public Lorg/qtproject/qt5/android/bindings/TwitterApiJsInterface;
.super Ljava/lang/Object;
.source "TwitterApiJsInterface.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isConnected()Z
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getTwitterSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    if-nez v2, :cond_f

    .line 56
    const-string v2, "TAJI"

    const-string v3, "twitter shared preferences is null"

    invoke-static {v2, v3}, Lorg/qtproject/qt5/android/bindings/PTJLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_e
    :goto_e
    return v1

    .line 59
    :cond_f
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getTwitterSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "oauth_token"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "temp":Ljava/lang/String;
    if-eqz v0, :cond_e

    .line 62
    const-string v1, "TAJI"

    invoke-static {v1, v0}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const/4 v1, 0x1

    goto :goto_e
.end method

.method public login()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 45
    const-string v0, "login"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt5/android/bindings/TwitterApiJsInterface;->startActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public logout()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 35
    const-string v0, "logout"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt5/android/bindings/TwitterApiJsInterface;->startActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public shareScreenshot(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 40
    const-string v0, "share"

    invoke-virtual {p0, v0, p1}, Lorg/qtproject/qt5/android/bindings/TwitterApiJsInterface;->startActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public startActivity(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "p_activity"    # Ljava/lang/String;
    .param p2, "p_message"    # Ljava/lang/String;

    .prologue
    .line 16
    move-object v0, p1

    .line 17
    .local v0, "activity":Ljava/lang/String;
    move-object v1, p2

    .line 18
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Lorg/qtproject/qt5/android/bindings/TwitterApiJsInterface$1;

    invoke-direct {v2, p0, v0, v1}, Lorg/qtproject/qt5/android/bindings/TwitterApiJsInterface$1;-><init>(Lorg/qtproject/qt5/android/bindings/TwitterApiJsInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .local v2, "r":Ljava/lang/Runnable;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/qtproject/qt5/android/bindings/QtActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 31
    return-void
.end method
