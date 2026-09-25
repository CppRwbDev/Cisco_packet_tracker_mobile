.class public Lorg/qtproject/qt5/android/bindings/TwitterClient;
.super Landroid/app/Activity;
.source "TwitterClient.java"


# static fields
.field private static mSharedPreferences:Landroid/content/SharedPreferences;

.field private static requestToken:Ltwitter4j/auth/RequestToken;

.field private static twitter:Ltwitter4j/Twitter;


# instance fields
.field private activity:Ljava/lang/String;

.field private running:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/qtproject/qt5/android/bindings/TwitterClient;->running:Z

    return-void
.end method

.method private askOAuth()V
    .registers 7

    .prologue
    .line 181
    new-instance v1, Ltwitter4j/conf/ConfigurationBuilder;

    invoke-direct {v1}, Ltwitter4j/conf/ConfigurationBuilder;-><init>()V

    .line 182
    .local v1, "configurationBuilder":Ltwitter4j/conf/ConfigurationBuilder;
    const-string v3, "kYssLUBYAq4Bbq3W339wZ4RhT"

    invoke-virtual {v1, v3}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthConsumerKey(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;

    .line 183
    const-string v3, "SEheD4oDvuW1undIqBphbrG5LBMF3qbajF1MVQ3Mz4cUlUP7It"

    invoke-virtual {v1, v3}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthConsumerSecret(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;

    .line 184
    invoke-virtual {v1}, Ltwitter4j/conf/ConfigurationBuilder;->build()Ltwitter4j/conf/Configuration;

    move-result-object v0

    .line 185
    .local v0, "configuration":Ltwitter4j/conf/Configuration;
    new-instance v3, Ltwitter4j/TwitterFactory;

    invoke-direct {v3, v0}, Ltwitter4j/TwitterFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    invoke-virtual {v3}, Ltwitter4j/TwitterFactory;->getInstance()Ltwitter4j/Twitter;

    move-result-object v3

    sput-object v3, Lorg/qtproject/qt5/android/bindings/TwitterClient;->twitter:Ltwitter4j/Twitter;

    .line 189
    :try_start_1e
    const-string v3, "TWCL"

    const-string v4, "Requesting tokens"

    invoke-static {v3, v4}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    sget-object v3, Lorg/qtproject/qt5/android/bindings/TwitterClient;->twitter:Ltwitter4j/Twitter;

    const-string v4, "oauth://callback"

    invoke-interface {v3, v4}, Ltwitter4j/Twitter;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/auth/RequestToken;

    move-result-object v3

    sput-object v3, Lorg/qtproject/qt5/android/bindings/TwitterClient;->requestToken:Ltwitter4j/auth/RequestToken;

    .line 191
    const-string v3, "Please authorize this app!"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 192
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    sget-object v5, Lorg/qtproject/qt5/android/bindings/TwitterClient;->requestToken:Ltwitter4j/auth/RequestToken;

    invoke-virtual {v5}, Ltwitter4j/auth/RequestToken;->getAuthenticationURL()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v3}, Lorg/qtproject/qt5/android/bindings/TwitterClient;->startActivity(Landroid/content/Intent;)V
    :try_end_4d
    .catch Ltwitter4j/TwitterException; {:try_start_1e .. :try_end_4d} :catch_4e

    .line 198
    :goto_4d
    return-void

    .line 194
    :catch_4e
    move-exception v2

    .line 196
    .local v2, "e":Ltwitter4j/TwitterException;
    invoke-virtual {v2}, Ltwitter4j/TwitterException;->printStackTrace()V

    goto :goto_4d
.end method

.method private disconnectTwitter()V
    .registers 4

    .prologue
    .line 203
    const-string v1, "TWCL"

    const-string v2, "disconnectTwitter"

    invoke-static {v1, v2}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getTwitterSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 205
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "oauth_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 206
    const-string v1, "oauth_token_secret"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 208
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 209
    return-void
.end method

.method private isConnected()Z
    .registers 4

    .prologue
    .line 176
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getTwitterSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "oauth_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 40
    const-string v6, "TWCL"

    const-string v7, "onCreate Twitter"

    invoke-static {v6, v7}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v6, 0x7f03001a

    invoke-virtual {p0, v6}, Lorg/qtproject/qt5/android/bindings/TwitterClient;->setContentView(I)V

    .line 43
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getTwitterSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    if-nez v6, :cond_27

    .line 45
    const-string v6, "TWCL"

    const-string v7, "add new twitter shared preferences"

    invoke-static {v6, v7}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v6, "oauth_token"

    invoke-virtual {p0, v6, v8}, Lorg/qtproject/qt5/android/bindings/TwitterClient;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-static {v6}, Lorg/qtproject/qt5/android/bindings/QtActivity;->setTwitterSharedPreferences(Landroid/content/SharedPreferences;)V

    .line 51
    :cond_27
    const-string v6, "TWCL"

    const-string v7, "onCreate Twitter 1"

    invoke-static {v6, v7}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/TwitterClient;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 53
    .local v4, "uri":Landroid/net/Uri;
    if-eqz v4, :cond_98

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "oauth://callback"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_98

    .line 55
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "oauth://callback?denied"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 57
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/TwitterClient;->finish()V

    .line 124
    :goto_53
    return-void

    .line 60
    :cond_54
    const-string v6, "callback_url"

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v6, "TWCL"

    const-string v7, "onCreate Twitter 2"

    invoke-static {v6, v7}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v6, "oauth_verifier"

    invoke-virtual {v4, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "verifier":Ljava/lang/String;
    :try_start_6a
    sget-object v6, Lorg/qtproject/qt5/android/bindings/TwitterClient;->twitter:Ltwitter4j/Twitter;

    sget-object v7, Lorg/qtproject/qt5/android/bindings/TwitterClient;->requestToken:Ltwitter4j/auth/RequestToken;

    invoke-interface {v6, v7, v5}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ltwitter4j/auth/RequestToken;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;

    move-result-object v0

    .line 67
    .local v0, "accessToken":Ltwitter4j/auth/AccessToken;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getTwitterSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 68
    .local v1, "e":Landroid/content/SharedPreferences$Editor;
    const-string v6, "oauth_token"

    invoke-virtual {v0}, Ltwitter4j/auth/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 69
    const-string v6, "oauth_token_secret"

    invoke-virtual {v0}, Ltwitter4j/auth/AccessToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    const-string v6, "access token"

    invoke-virtual {v0}, Ltwitter4j/auth/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_98} :catch_d1

    .line 79
    .end local v0    # "accessToken":Ltwitter4j/auth/AccessToken;
    .end local v1    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "verifier":Ljava/lang/String;
    :cond_98
    :goto_98
    const-string v6, "TWCL"

    const-string v7, "onCreate Twitter 3"

    invoke-static {v6, v7}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/TwitterClient;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "ACTIVITY"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/qtproject/qt5/android/bindings/TwitterClient;->activity:Ljava/lang/String;

    .line 81
    iget-object v6, p0, Lorg/qtproject/qt5/android/bindings/TwitterClient;->activity:Ljava/lang/String;

    if-nez v6, :cond_e8

    .line 84
    const-string v6, "TWCL"

    const-string v7, "activity is null, finish"

    invoke-static {v6, v7}, Lorg/qtproject/qt5/android/bindings/PTJLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v6, "javascript:shareOnTwitter();"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "u":Ljava/lang/String;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v6

    invoke-virtual {v6}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getFrontEndBridge()Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-result-object v6

    invoke-virtual {v6}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/TwitterClient;->finish()V

    goto :goto_53

    .line 73
    .end local v3    # "u":Ljava/lang/String;
    .restart local v5    # "verifier":Ljava/lang/String;
    :catch_d1
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "TWCL"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/qtproject/qt5/android/bindings/PTJLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_98

    .line 90
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "verifier":Ljava/lang/String;
    :cond_e8
    iget-object v6, p0, Lorg/qtproject/qt5/android/bindings/TwitterClient;->activity:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_fe

    .line 92
    const-string v6, "TWCL"

    const-string v7, "activity is empty, finish"

    invoke-static {v6, v7}, Lorg/qtproject/qt5/android/bindings/PTJLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/TwitterClient;->finish()V

    goto/16 :goto_53

    .line 97
    :cond_fe
    iget-object v6, p0, Lorg/qtproject/qt5/android/bindings/TwitterClient;->activity:Ljava/lang/String;

    const-string v7, "login"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_114

    .line 99
    const-string v6, "TWCL"

    const-string v7, "Start logging in"

    invoke-static {v6, v7}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lorg/qtproject/qt5/android/bindings/TwitterClient;->askOAuth()V

    goto/16 :goto_53

    .line 102
    :cond_114
    iget-object v6, p0, Lorg/qtproject/qt5/android/bindings/TwitterClient;->activity:Ljava/lang/String;

    const-string v7, "logout"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_126

    .line 104
    invoke-direct {p0}, Lorg/qtproject/qt5/android/bindings/TwitterClient;->disconnectTwitter()V

    .line 105
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/TwitterClient;->finish()V

    goto/16 :goto_53

    .line 107
    :cond_126
    iget-object v6, p0, Lorg/qtproject/qt5/android/bindings/TwitterClient;->activity:Ljava/lang/String;

    const-string v7, "share"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_154

    .line 109
    invoke-direct {p0}, Lorg/qtproject/qt5/android/bindings/TwitterClient;->isConnected()Z

    move-result v6

    if-nez v6, :cond_139

    .line 110
    invoke-direct {p0}, Lorg/qtproject/qt5/android/bindings/TwitterClient;->askOAuth()V

    .line 111
    :cond_139
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/TwitterClient;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "MESSAGE"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "message":Ljava/lang/String;
    :try_start_143
    invoke-virtual {p0, v2}, Lorg/qtproject/qt5/android/bindings/TwitterClient;->uploadPic(Ljava/lang/String;)V
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_146} :catch_14b

    .line 118
    :goto_146
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/TwitterClient;->finish()V

    goto/16 :goto_53

    .line 115
    :catch_14b
    move-exception v1

    .line 116
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v6, "TWCL"

    const-string v7, "Failed to send image"

    invoke-static {v6, v7, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_146

    .line 122
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "message":Ljava/lang/String;
    :cond_154
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/TwitterClient;->finish()V

    goto/16 :goto_53
.end method

.method protected onResume()V
    .registers 8

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 130
    invoke-direct {p0}, Lorg/qtproject/qt5/android/bindings/TwitterClient;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 133
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getTwitterSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "oauth_token"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "oauthAccessToken":Ljava/lang/String;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getTwitterSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "oauth_token_secret"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "oAuthAccessTokenSecret":Ljava/lang/String;
    new-instance v1, Ltwitter4j/conf/ConfigurationBuilder;

    invoke-direct {v1}, Ltwitter4j/conf/ConfigurationBuilder;-><init>()V

    .line 137
    .local v1, "confbuilder":Ltwitter4j/conf/ConfigurationBuilder;
    const-string v4, "kYssLUBYAq4Bbq3W339wZ4RhT"

    .line 138
    invoke-virtual {v1, v4}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthConsumerKey(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;

    move-result-object v4

    const-string v5, "SEheD4oDvuW1undIqBphbrG5LBMF3qbajF1MVQ3Mz4cUlUP7It"

    .line 139
    invoke-virtual {v4, v5}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthConsumerSecret(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;

    move-result-object v4

    .line 140
    invoke-virtual {v4, v3}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;

    move-result-object v4

    .line 141
    invoke-virtual {v4, v2}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthAccessTokenSecret(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;

    move-result-object v4

    .line 142
    invoke-virtual {v4}, Ltwitter4j/conf/ConfigurationBuilder;->build()Ltwitter4j/conf/Configuration;

    move-result-object v0

    .line 143
    .local v0, "conf":Ltwitter4j/conf/Configuration;
    const-string v4, "TWCL"

    const-string v5, "on resume"

    invoke-static {v4, v5}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .end local v0    # "conf":Ltwitter4j/conf/Configuration;
    .end local v1    # "confbuilder":Ltwitter4j/conf/ConfigurationBuilder;
    .end local v2    # "oAuthAccessTokenSecret":Ljava/lang/String;
    .end local v3    # "oauthAccessToken":Ljava/lang/String;
    :cond_45
    const-string v4, "TWCL"

    const-string v5, "finish activity"

    invoke-static {v4, v5}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/TwitterClient;->finish()V

    .line 151
    return-void
.end method

.method public uploadPic(Ljava/lang/String;)V
    .registers 10
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 157
    :try_start_0
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/Util;->takeScreenshot()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 158
    .local v1, "bmp":Landroid/graphics/Bitmap;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 159
    .local v5, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v1, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 160
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 161
    .local v2, "byteArray":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 162
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ltwitter4j/StatusUpdate;

    invoke-direct {v4, p1}, Ltwitter4j/StatusUpdate;-><init>(Ljava/lang/String;)V

    .line 163
    .local v4, "status":Ltwitter4j/StatusUpdate;
    const-string v6, "newyear"

    invoke-virtual {v4, v6, v0}, Ltwitter4j/StatusUpdate;->setMedia(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 164
    sget-object v6, Lorg/qtproject/qt5/android/bindings/TwitterClient;->twitter:Ltwitter4j/Twitter;

    invoke-interface {v6, v4}, Ltwitter4j/Twitter;->updateStatus(Ltwitter4j/StatusUpdate;)Ltwitter4j/Status;
    :try_end_28
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_28} :catch_29

    .line 171
    return-void

    .line 166
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "byteArray":[B
    .end local v4    # "status":Ltwitter4j/StatusUpdate;
    .end local v5    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_29
    move-exception v3

    .line 168
    .local v3, "e":Ltwitter4j/TwitterException;
    const-string v6, "TWCL"

    const-string v7, "Pic Upload error"

    invoke-static {v6, v7, v3}, Lorg/qtproject/qt5/android/bindings/PTJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    throw v3
.end method
