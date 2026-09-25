.class public Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;
.super Landroid/app/Activity;
.source "DropBoxApiClient.java"


# instance fields
.field activity:Ljava/lang/String;

.field mApi:Lcom/dropbox/client2/DropboxAPI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/client2/DropboxAPI",
            "<",
            "Lcom/dropbox/client2/android/AndroidAuthSession;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthenticationStarted:Z

.field private m_webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->mAuthenticationStarted:Z

    return-void
.end method

.method private buildSession()Lcom/dropbox/client2/android/AndroidAuthSession;
    .registers 5

    .prologue
    .line 292
    new-instance v0, Lcom/dropbox/client2/session/AppKeyPair;

    const-string v2, "46ojolbsuwqtxto"

    const-string v3, "uzg2lmwqy3k3ur0"

    invoke-direct {v0, v2, v3}, Lcom/dropbox/client2/session/AppKeyPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .local v0, "appKeyPair":Lcom/dropbox/client2/session/AppKeyPair;
    new-instance v1, Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-direct {v1, v0}, Lcom/dropbox/client2/android/AndroidAuthSession;-><init>(Lcom/dropbox/client2/session/AppKeyPair;)V

    .line 295
    .local v1, "session":Lcom/dropbox/client2/android/AndroidAuthSession;
    invoke-direct {p0, v1}, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->loadAuth(Lcom/dropbox/client2/android/AndroidAuthSession;)V

    .line 296
    return-object v1
.end method

.method private checkAppKeySetup()V
    .registers 7

    .prologue
    .line 208
    const-string v4, "46ojolbsuwqtxto"

    const-string v5, "CHANGE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "uzg2lmwqy3k3ur0"

    const-string v5, "CHANGE"

    .line 209
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 210
    :cond_14
    const-string v4, "You must apply for an app key and secret from developers.dropbox.com, and add them to the DropBoxApiClient ap before trying it."

    invoke-direct {p0, v4}, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->showToast(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->finish()V

    .line 228
    :cond_1c
    :goto_1c
    return-void

    .line 216
    :cond_1d
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v2, "testIntent":Landroid/content/Intent;
    const-string v1, "db-46ojolbsuwqtxto"

    .line 218
    .local v1, "scheme":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/test"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "uri":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 220
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 221
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1c

    .line 222
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URL scheme in your app\'s manifest is not set up correctly. You should have a com.dropbox.client2.android.AuthActivity with the scheme: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->showToast(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->finish()V

    goto :goto_1c
.end method

.method private checkNetworkAvailable()V
    .registers 5

    .prologue
    .line 77
    const-string v2, "connectivity"

    .line 78
    invoke-virtual {p0, v2}, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 79
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 80
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 82
    :cond_14
    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->m_webView:Landroid/webkit/WebView;

    const-string v3, "javascript:noInternetConnection();"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->finish()V

    .line 87
    :cond_1e
    return-void
.end method

.method private clearKeys()V
    .registers 5

    .prologue
    .line 285
    const-string v2, "DBAuth"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 286
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 287
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 288
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 289
    return-void
.end method

.method private loadAuth(Lcom/dropbox/client2/android/AndroidAuthSession;)V
    .registers 8
    .param p1, "session"    # Lcom/dropbox/client2/android/AndroidAuthSession;

    .prologue
    const/4 v5, 0x0

    .line 241
    const-string v3, "DBAuth"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 242
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "ACCESS_KEY"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "key":Ljava/lang/String;
    const-string v3, "ACCESS_SECRET"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "secret":Ljava/lang/String;
    if-eqz v0, :cond_24

    if-eqz v2, :cond_24

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_25

    .line 253
    :cond_24
    :goto_24
    return-void

    .line 246
    :cond_25
    const-string v3, "oauth2:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 248
    invoke-virtual {p1, v2}, Lcom/dropbox/client2/android/AndroidAuthSession;->setOAuth2AccessToken(Ljava/lang/String;)V

    goto :goto_24

    .line 251
    :cond_31
    new-instance v3, Lcom/dropbox/client2/session/AccessTokenPair;

    invoke-direct {v3, v0, v2}, Lcom/dropbox/client2/session/AccessTokenPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/dropbox/client2/android/AndroidAuthSession;->setAccessTokenPair(Lcom/dropbox/client2/session/AccessTokenPair;)V

    goto :goto_24
.end method

.method private logout()V
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->mApi:Lcom/dropbox/client2/DropboxAPI;

    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI;->getSession()Lcom/dropbox/client2/session/Session;

    move-result-object v0

    check-cast v0, Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-virtual {v0}, Lcom/dropbox/client2/android/AndroidAuthSession;->unlink()V

    .line 151
    invoke-direct {p0}, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->clearKeys()V

    .line 152
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->finish()V

    .line 153
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 231
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 232
    .local v0, "error":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 233
    return-void
.end method

.method private storeAuth(Lcom/dropbox/client2/android/AndroidAuthSession;)V
    .registers 8
    .param p1, "session"    # Lcom/dropbox/client2/android/AndroidAuthSession;

    .prologue
    const/4 v5, 0x0

    .line 262
    invoke-virtual {p1}, Lcom/dropbox/client2/android/AndroidAuthSession;->getOAuth2AccessToken()Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "oauth2AccessToken":Ljava/lang/String;
    if-eqz v2, :cond_21

    .line 264
    const-string v4, "DBAuth"

    invoke-virtual {p0, v4, v5}, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 265
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 266
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v4, "ACCESS_KEY"

    const-string v5, "oauth2:"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 267
    const-string v4, "ACCESS_SECRET"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 268
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 282
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_20
    :goto_20
    return-void

    .line 273
    :cond_21
    invoke-virtual {p1}, Lcom/dropbox/client2/android/AndroidAuthSession;->getAccessTokenPair()Lcom/dropbox/client2/session/AccessTokenPair;

    move-result-object v1

    .line 274
    .local v1, "oauth1AccessToken":Lcom/dropbox/client2/session/AccessTokenPair;
    if-eqz v1, :cond_20

    .line 275
    const-string v4, "DBAuth"

    invoke-virtual {p0, v4, v5}, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 276
    .restart local v3    # "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 277
    .restart local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    const-string v4, "ACCESS_KEY"

    iget-object v5, v1, Lcom/dropbox/client2/session/AccessTokenPair;->key:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 278
    const-string v4, "ACCESS_SECRET"

    iget-object v5, v1, Lcom/dropbox/client2/session/AccessTokenPair;->secret:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 279
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_20
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getDBApi()Lcom/dropbox/client2/DropboxAPI;

    move-result-object v2

    if-nez v2, :cond_4e

    .line 94
    invoke-direct {p0}, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->buildSession()Lcom/dropbox/client2/android/AndroidAuthSession;

    move-result-object v1

    .line 95
    .local v1, "session":Lcom/dropbox/client2/android/AndroidAuthSession;
    new-instance v2, Lcom/dropbox/client2/DropboxAPI;

    invoke-direct {v2, v1}, Lcom/dropbox/client2/DropboxAPI;-><init>(Lcom/dropbox/client2/session/Session;)V

    iput-object v2, p0, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->mApi:Lcom/dropbox/client2/DropboxAPI;

    .line 96
    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->mApi:Lcom/dropbox/client2/DropboxAPI;

    invoke-static {v2}, Lorg/qtproject/qt5/android/bindings/QtActivity;->setDBApi(Lcom/dropbox/client2/DropboxAPI;)V

    .line 99
    .end local v1    # "session":Lcom/dropbox/client2/android/AndroidAuthSession;
    :goto_19
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v2

    const v3, 0x7f0a0038

    invoke-virtual {v2, v3}, Lorg/qtproject/qt5/android/bindings/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->m_webView:Landroid/webkit/WebView;

    .line 103
    const v2, 0x7f03001a

    invoke-virtual {p0, v2}, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->setContentView(I)V

    .line 104
    invoke-direct {p0}, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->checkAppKeySetup()V

    .line 105
    invoke-direct {p0}, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->checkNetworkAvailable()V

    .line 107
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ACTIVITY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->activity:Ljava/lang/String;

    .line 108
    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->activity:Ljava/lang/String;

    const-string v3, "logout"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 110
    invoke-direct {p0}, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->logout()V

    .line 147
    :goto_4d
    return-void

    .line 98
    :cond_4e
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getDBApi()Lcom/dropbox/client2/DropboxAPI;

    move-result-object v2

    iput-object v2, p0, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->mApi:Lcom/dropbox/client2/DropboxAPI;

    goto :goto_19

    .line 114
    :cond_55
    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->mApi:Lcom/dropbox/client2/DropboxAPI;

    invoke-virtual {v2}, Lcom/dropbox/client2/DropboxAPI;->getSession()Lcom/dropbox/client2/session/Session;

    move-result-object v2

    check-cast v2, Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-virtual {v2}, Lcom/dropbox/client2/android/AndroidAuthSession;->isLinked()Z

    move-result v2

    if-nez v2, :cond_a7

    .line 116
    const-string v2, "DBAC"

    const-string v3, "onCreate: not logged in"

    invoke-static {v2, v3}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->mApi:Lcom/dropbox/client2/DropboxAPI;

    invoke-virtual {v2}, Lcom/dropbox/client2/DropboxAPI;->getSession()Lcom/dropbox/client2/session/Session;

    move-result-object v2

    check-cast v2, Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-virtual {v2, p0}, Lcom/dropbox/client2/android/AndroidAuthSession;->startOAuth2Authentication(Landroid/content/Context;)V

    .line 130
    :goto_75
    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->mApi:Lcom/dropbox/client2/DropboxAPI;

    invoke-virtual {v2}, Lcom/dropbox/client2/DropboxAPI;->getSession()Lcom/dropbox/client2/session/Session;

    move-result-object v2

    check-cast v2, Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-virtual {v2}, Lcom/dropbox/client2/android/AndroidAuthSession;->isLinked()Z

    move-result v2

    if-eqz v2, :cond_af

    .line 132
    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->activity:Ljava/lang/String;

    const-string v3, "listfiles"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 134
    const-string v2, "DBAC"

    const-string v3, "authorized"

    invoke-static {v2, v3}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v0, Lorg/qtproject/qt5/android/bindings/DropBoxFileListing;

    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->mApi:Lcom/dropbox/client2/DropboxAPI;

    const-string v3, "/"

    invoke-direct {v0, v2, v3}, Lorg/qtproject/qt5/android/bindings/DropBoxFileListing;-><init>(Lcom/dropbox/client2/DropboxAPI;Ljava/lang/String;)V

    .line 136
    .local v0, "list":Lorg/qtproject/qt5/android/bindings/DropBoxFileListing;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lorg/qtproject/qt5/android/bindings/DropBoxFileListing;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 138
    .end local v0    # "list":Lorg/qtproject/qt5/android/bindings/DropBoxFileListing;
    :cond_a3
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->finish()V

    goto :goto_4d

    .line 128
    :cond_a7
    const-string v2, "DBAC"

    const-string v3, "onCreate: logged in"

    invoke-static {v2, v3}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75

    .line 143
    :cond_af
    const-string v2, "DBAC"

    const-string v3, "on create authentication failed !"

    invoke-static {v2, v3}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d
.end method

.method protected onResume()V
    .registers 6

    .prologue
    .line 156
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 158
    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->mApi:Lcom/dropbox/client2/DropboxAPI;

    invoke-virtual {v3}, Lcom/dropbox/client2/DropboxAPI;->getSession()Lcom/dropbox/client2/session/Session;

    move-result-object v2

    check-cast v2, Lcom/dropbox/client2/android/AndroidAuthSession;

    .line 163
    .local v2, "session":Lcom/dropbox/client2/android/AndroidAuthSession;
    const-string v3, "DBAC"

    const-string v4, "on resume"

    invoke-static {v3, v4}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v2}, Lcom/dropbox/client2/android/AndroidAuthSession;->authenticationSuccessful()Z

    move-result v3

    if-eqz v3, :cond_81

    .line 170
    :try_start_18
    invoke-virtual {v2}, Lcom/dropbox/client2/android/AndroidAuthSession;->finishAuthentication()Ljava/lang/String;

    .line 173
    invoke-direct {p0, v2}, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->storeAuth(Lcom/dropbox/client2/android/AndroidAuthSession;)V

    .line 174
    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->mApi:Lcom/dropbox/client2/DropboxAPI;

    invoke-virtual {v3}, Lcom/dropbox/client2/DropboxAPI;->getSession()Lcom/dropbox/client2/session/Session;

    move-result-object v3

    check-cast v3, Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-virtual {v3}, Lcom/dropbox/client2/android/AndroidAuthSession;->isLinked()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 176
    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->activity:Ljava/lang/String;

    const-string v4, "listfiles"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 178
    const-string v3, "DBAC"

    const-string v4, "authorized"

    invoke-static {v3, v4}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v1, Lorg/qtproject/qt5/android/bindings/DropBoxFileListing;

    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->mApi:Lcom/dropbox/client2/DropboxAPI;

    const-string v4, "/"

    invoke-direct {v1, v3, v4}, Lorg/qtproject/qt5/android/bindings/DropBoxFileListing;-><init>(Lcom/dropbox/client2/DropboxAPI;Ljava/lang/String;)V

    .line 180
    .local v1, "list":Lorg/qtproject/qt5/android/bindings/DropBoxFileListing;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Lorg/qtproject/qt5/android/bindings/DropBoxFileListing;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 182
    .end local v1    # "list":Lorg/qtproject/qt5/android/bindings/DropBoxFileListing;
    :cond_4c
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->finish()V
    :try_end_4f
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_4f} :catch_5e

    .line 203
    :cond_4f
    :goto_4f
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->mAuthenticationStarted:Z

    .line 204
    return-void

    .line 186
    :cond_53
    :try_start_53
    const-string v3, "DBAC"

    const-string v4, "on resume authentication failed !"

    invoke-static {v3, v4}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->finish()V
    :try_end_5d
    .catch Ljava/lang/IllegalStateException; {:try_start_53 .. :try_end_5d} :catch_5e

    goto :goto_4f

    .line 191
    :catch_5e
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t authenticate with Dropbox:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->showToast(Ljava/lang/String;)V

    .line 194
    const-string v3, "DBAC"

    const-string v4, "Error authenticating with Dropbox: "

    invoke-static {v3, v4, v0}, Lorg/qtproject/qt5/android/bindings/PTJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4f

    .line 197
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_81
    iget-boolean v3, p0, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->mAuthenticationStarted:Z

    if-eqz v3, :cond_4f

    .line 199
    const-string v3, "DBAC"

    const-string v4, "on resume authentication failed"

    invoke-static {v3, v4}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->m_webView:Landroid/webkit/WebView;

    const-string v4, "javascript:failToAuthenticateWithDb();"

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/DropBoxApiClient;->finish()V

    goto :goto_4f
.end method
