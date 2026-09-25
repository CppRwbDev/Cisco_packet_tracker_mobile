.class public Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface;
.super Ljava/lang/Object;
.source "BoxApiJsInterface.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkFileExist(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "dbPath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 81
    move-object v1, p1

    .line 82
    .local v1, "path":Ljava/lang/String;
    move-object v0, p2

    .line 84
    .local v0, "file":Ljava/lang/String;
    new-instance v2, Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface$4;

    invoke-direct {v2, p0, v1, v0}, Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface$4;-><init>(Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .local v2, "r":Ljava/lang/Runnable;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/qtproject/qt5/android/bindings/QtActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method

.method public downloadBoxFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 37
    move-object v1, p2

    .line 38
    .local v1, "fileName":Ljava/lang/String;
    move-object v0, p1

    .line 39
    .local v0, "fileId":Ljava/lang/String;
    new-instance v2, Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface$2;

    invoke-direct {v2, p0, v0, v1}, Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface$2;-><init>(Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .local v2, "r":Ljava/lang/Runnable;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/qtproject/qt5/android/bindings/QtActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 52
    return-void
.end method

.method public isLoggedIn()Z
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getBoxSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    if-nez v2, :cond_8

    .line 126
    :cond_7
    :goto_7
    return v1

    .line 123
    :cond_8
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getBoxSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "authdatastring"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "authString":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/lang/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 125
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public listFiles()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface$5;

    invoke-direct {v0, p0}, Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface$5;-><init>(Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface;)V

    .line 115
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 117
    return-void
.end method

.method public logout()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 131
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getBoxSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 132
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 133
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 135
    return-void
.end method

.method public startBoxApiClient(Ljava/lang/String;)V
    .registers 5
    .param p1, "activity"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 20
    move-object v0, p1

    .line 21
    .local v0, "activityParam":Ljava/lang/String;
    new-instance v1, Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface$1;

    invoke-direct {v1, p0, v0}, Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface$1;-><init>(Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface;Ljava/lang/String;)V

    .line 31
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 32
    return-void
.end method

.method public uploadBoxFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "p_boxPath"    # Ljava/lang/String;
    .param p2, "p_uploadFileName"    # Ljava/lang/String;
    .param p3, "p_localFile"    # Ljava/lang/String;
    .param p4, "p_existingFileId"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 58
    move-object v2, p1

    .line 59
    .local v2, "boxPath":Ljava/lang/String;
    move-object v4, p3

    .line 60
    .local v4, "localFile":Ljava/lang/String;
    move-object v3, p2

    .line 61
    .local v3, "uploadFileName":Ljava/lang/String;
    move-object v5, p4

    .line 62
    .local v5, "existingFileId":Ljava/lang/String;
    new-instance v0, Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface$3;-><init>(Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method
