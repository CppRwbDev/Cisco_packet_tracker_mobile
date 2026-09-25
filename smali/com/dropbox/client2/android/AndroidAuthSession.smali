.class public Lcom/dropbox/client2/android/AndroidAuthSession;
.super Lcom/dropbox/client2/session/AbstractSession;
.source "AndroidAuthSession.java"


# direct methods
.method public constructor <init>(Lcom/dropbox/client2/session/AppKeyPair;)V
    .registers 2
    .param p1, "appKeyPair"    # Lcom/dropbox/client2/session/AppKeyPair;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/dropbox/client2/session/AbstractSession;-><init>(Lcom/dropbox/client2/session/AppKeyPair;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/AccessTokenPair;)V
    .registers 3
    .param p1, "appKeyPair"    # Lcom/dropbox/client2/session/AppKeyPair;
    .param p2, "accessTokenPair"    # Lcom/dropbox/client2/session/AccessTokenPair;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/dropbox/client2/session/AbstractSession;-><init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/AccessTokenPair;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/Session$AccessType;)V
    .registers 3
    .param p1, "appKeyPair"    # Lcom/dropbox/client2/session/AppKeyPair;
    .param p2, "type"    # Lcom/dropbox/client2/session/Session$AccessType;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/dropbox/client2/session/AbstractSession;-><init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/Session$AccessType;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/Session$AccessType;Lcom/dropbox/client2/session/AccessTokenPair;)V
    .registers 4
    .param p1, "appKeyPair"    # Lcom/dropbox/client2/session/AppKeyPair;
    .param p2, "type"    # Lcom/dropbox/client2/session/Session$AccessType;
    .param p3, "accessTokenPair"    # Lcom/dropbox/client2/session/AccessTokenPair;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/client2/session/AbstractSession;-><init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/Session$AccessType;Lcom/dropbox/client2/session/AccessTokenPair;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/client2/session/AppKeyPair;Ljava/lang/String;)V
    .registers 3
    .param p1, "appKeyPair"    # Lcom/dropbox/client2/session/AppKeyPair;
    .param p2, "oauth2AccessToken"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/dropbox/client2/session/AbstractSession;-><init>(Lcom/dropbox/client2/session/AppKeyPair;Ljava/lang/String;)V

    .line 100
    return-void
.end method


# virtual methods
.method public authenticationSuccessful()Z
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 179
    sget-object v0, Lcom/dropbox/client2/android/AuthActivity;->result:Landroid/content/Intent;

    .line 181
    .local v0, "data":Landroid/content/Intent;
    if-nez v0, :cond_6

    .line 195
    :cond_5
    :goto_5
    return v4

    .line 185
    :cond_6
    const-string v5, "ACCESS_TOKEN"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "token":Ljava/lang/String;
    const-string v5, "ACCESS_SECRET"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "secret":Ljava/lang/String;
    const-string v5, "UID"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "uid":Ljava/lang/String;
    if-eqz v2, :cond_5

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz v1, :cond_5

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz v3, :cond_5

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 192
    const/4 v4, 0x1

    goto :goto_5
.end method

.method public finishAuthentication()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 210
    sget-object v0, Lcom/dropbox/client2/android/AuthActivity;->result:Landroid/content/Intent;

    .line 212
    .local v0, "data":Landroid/content/Intent;
    if-nez v0, :cond_a

    .line 213
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 216
    :cond_a
    const-string v4, "ACCESS_TOKEN"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "token":Ljava/lang/String;
    if-eqz v2, :cond_18

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_20

    .line 218
    :cond_18
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid result intent passed in. Missing access token."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 222
    :cond_20
    const-string v4, "ACCESS_SECRET"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "secret":Ljava/lang/String;
    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_36

    .line 224
    :cond_2e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid result intent passed in. Missing access secret."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 228
    :cond_36
    const-string v4, "UID"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "uid":Ljava/lang/String;
    if-eqz v3, :cond_44

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4c

    .line 230
    :cond_44
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid result intent passed in. Missing uid."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 234
    :cond_4c
    const-string v4, "oauth2:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 235
    invoke-virtual {p0, v1}, Lcom/dropbox/client2/android/AndroidAuthSession;->setOAuth2AccessToken(Ljava/lang/String;)V

    .line 240
    :goto_57
    return-object v3

    .line 237
    :cond_58
    new-instance v4, Lcom/dropbox/client2/session/AccessTokenPair;

    invoke-direct {v4, v2, v1}, Lcom/dropbox/client2/session/AccessTokenPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/dropbox/client2/android/AndroidAuthSession;->setAccessTokenPair(Lcom/dropbox/client2/session/AccessTokenPair;)V

    goto :goto_57
.end method

.method public startAuthentication(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/dropbox/client2/android/AndroidAuthSession;->getAppKeyPair()Lcom/dropbox/client2/session/AppKeyPair;

    move-result-object v0

    .line 154
    .local v0, "appKeyPair":Lcom/dropbox/client2/session/AppKeyPair;
    iget-object v2, v0, Lcom/dropbox/client2/session/AppKeyPair;->key:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/dropbox/client2/android/AuthActivity;->checkAppBeforeAuth(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_e

    .line 171
    :goto_d
    return-void

    .line 159
    :cond_e
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dropbox/client2/android/AuthActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "EXTRA_INTERNAL_APP_KEY"

    iget-object v3, v0, Lcom/dropbox/client2/session/AppKeyPair;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string v2, "EXTRA_INTERNAL_APP_SECRET"

    iget-object v3, v0, Lcom/dropbox/client2/session/AppKeyPair;->secret:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    instance-of v2, p1, Landroid/app/Activity;

    if-nez v2, :cond_2c

    .line 168
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 170
    :cond_2c
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_d
.end method

.method public startOAuth2Authentication(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/dropbox/client2/android/AndroidAuthSession;->getAppKeyPair()Lcom/dropbox/client2/session/AppKeyPair;

    move-result-object v0

    .line 119
    .local v0, "appKeyPair":Lcom/dropbox/client2/session/AppKeyPair;
    iget-object v2, v0, Lcom/dropbox/client2/session/AppKeyPair;->key:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/dropbox/client2/android/AuthActivity;->checkAppBeforeAuth(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_e

    .line 133
    :goto_d
    return-void

    .line 124
    :cond_e
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dropbox/client2/android/AuthActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "EXTRA_INTERNAL_APP_KEY"

    iget-object v3, v0, Lcom/dropbox/client2/session/AppKeyPair;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    instance-of v2, p1, Landroid/app/Activity;

    if-nez v2, :cond_25

    .line 130
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 132
    :cond_25
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_d
.end method

.method public unlink()V
    .registers 2

    .prologue
    .line 245
    invoke-super {p0}, Lcom/dropbox/client2/session/AbstractSession;->unlink()V

    .line 246
    const/4 v0, 0x0

    sput-object v0, Lcom/dropbox/client2/android/AuthActivity;->result:Landroid/content/Intent;

    .line 247
    return-void
.end method
