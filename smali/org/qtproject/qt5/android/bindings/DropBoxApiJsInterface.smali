.class public Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface;
.super Ljava/lang/Object;
.source "DropBoxApiJsInterface.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
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
    .line 107
    move-object v1, p1

    .line 108
    .local v1, "path":Ljava/lang/String;
    move-object v0, p2

    .line 110
    .local v0, "file":Ljava/lang/String;
    new-instance v2, Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface$5;

    invoke-direct {v2, p0, v1, v0}, Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface$5;-><init>(Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .local v2, "r":Ljava/lang/Runnable;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/qtproject/qt5/android/bindings/QtActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method public downloadDropBoxFile(Ljava/lang/String;)V
    .registers 5
    .param p1, "dbPath"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 35
    move-object v0, p1

    .line 36
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface$2;

    invoke-direct {v1, p0, v0}, Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface$2;-><init>(Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface;Ljava/lang/String;)V

    .line 48
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 49
    return-void
.end method

.method public isDbAuthenticated()Ljava/lang/Boolean;
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 95
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getDBApi()Lcom/dropbox/client2/DropboxAPI;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getDBApi()Lcom/dropbox/client2/DropboxAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI;->getSession()Lcom/dropbox/client2/session/Session;

    move-result-object v0

    check-cast v0, Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-virtual {v0}, Lcom/dropbox/client2/android/AndroidAuthSession;->isLinked()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 97
    const-string v0, "DBAJI"

    const-string v1, "db is authenticated"

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 101
    :goto_22
    return-object v0

    .line 100
    :cond_23
    const-string v0, "DBAJI"

    const-string v1, "db is not authenticated"

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_22
.end method

.method public isLoggedIn()Z
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 147
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getDBApi()Lcom/dropbox/client2/DropboxAPI;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getDBApi()Lcom/dropbox/client2/DropboxAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI;->getSession()Lcom/dropbox/client2/session/Session;

    move-result-object v0

    check-cast v0, Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-virtual {v0}, Lcom/dropbox/client2/android/AndroidAuthSession;->isLinked()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 148
    const/4 v0, 0x1

    .line 149
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public listFiles()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 129
    new-instance v0, Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface$6;

    invoke-direct {v0, p0}, Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface$6;-><init>(Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface;)V

    .line 141
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 143
    return-void
.end method

.method public startDropBoxApiClient(Ljava/lang/String;)V
    .registers 5
    .param p1, "activity"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 16
    move-object v0, p1

    .line 17
    .local v0, "activityParam":Ljava/lang/String;
    new-instance v1, Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface$1;

    invoke-direct {v1, p0, v0}, Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface$1;-><init>(Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface;Ljava/lang/String;)V

    .line 28
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 29
    return-void
.end method

.method public uploadDropBoxFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "dbPath"    # Ljava/lang/String;
    .param p2, "localFile"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 55
    move-object v1, p1

    .line 56
    .local v1, "path":Ljava/lang/String;
    move-object v0, p2

    .line 57
    .local v0, "file":Ljava/lang/String;
    new-instance v2, Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface$3;

    invoke-direct {v2, p0, v1, v0}, Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface$3;-><init>(Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .local v2, "r":Ljava/lang/Runnable;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/qtproject/qt5/android/bindings/QtActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method public uploadNetspaceFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "dbPath"    # Ljava/lang/String;
    .param p2, "localFile"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 76
    move-object v1, p1

    .line 77
    .local v1, "path":Ljava/lang/String;
    move-object v0, p2

    .line 78
    .local v0, "file":Ljava/lang/String;
    new-instance v2, Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface$4;

    invoke-direct {v2, p0, v1, v0}, Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface$4;-><init>(Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .local v2, "r":Ljava/lang/Runnable;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/qtproject/qt5/android/bindings/QtActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method
