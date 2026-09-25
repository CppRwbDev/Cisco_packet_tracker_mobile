.class public Lcom/dropbox/client2/session/WebOAuth2Session;
.super Lcom/dropbox/client2/session/AbstractSession;
.source "WebOAuth2Session.java"


# direct methods
.method public constructor <init>(Lcom/dropbox/client2/session/AppKeyPair;)V
    .registers 2
    .param p1, "appKeyPair"    # Lcom/dropbox/client2/session/AppKeyPair;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/dropbox/client2/session/AbstractSession;-><init>(Lcom/dropbox/client2/session/AppKeyPair;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/client2/session/AppKeyPair;Ljava/lang/String;)V
    .registers 3
    .param p1, "appKeyPair"    # Lcom/dropbox/client2/session/AppKeyPair;
    .param p2, "oauth2AccessToken"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/dropbox/client2/session/AbstractSession;-><init>(Lcom/dropbox/client2/session/AppKeyPair;Ljava/lang/String;)V

    .line 77
    return-void
.end method


# virtual methods
.method public getAuthorizeURL()Ljava/lang/String;
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0, v0}, Lcom/dropbox/client2/session/WebOAuth2Session;->getAuthorizeURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizeURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "redirectUrl"    # Ljava/lang/String;
    .param p2, "csrfToken"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 111
    const/16 v2, 0x8

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "response_type"

    aput-object v3, v0, v2

    const-string v2, "code"

    aput-object v2, v0, v4

    const/4 v2, 0x2

    const-string v3, "client_id"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/dropbox/client2/session/WebOAuth2Session;->getAppKeyPair()Lcom/dropbox/client2/session/AppKeyPair;

    move-result-object v3

    iget-object v3, v3, Lcom/dropbox/client2/session/AppKeyPair;->key:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "redirect_uri"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    aput-object p1, v0, v2

    const/4 v2, 0x6

    const-string v3, "state"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    aput-object p2, v0, v2

    .line 117
    .local v0, "args":[Ljava/lang/String;
    const-string v1, "/oauth2/authorize"

    .line 118
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/dropbox/client2/session/WebOAuth2Session;->getWebServer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4, v1, v0}, Lcom/dropbox/client2/RESTUtility;->buildURL(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public retrieveWebAccessToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "redirectUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 149
    if-nez p1, :cond_b

    .line 150
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "\'code\' must not be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 151
    :cond_b
    const/16 v7, 0xa

    new-array v1, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "grant_type"

    aput-object v8, v1, v7

    const-string v7, "authorization_code"

    aput-object v7, v1, v9

    const/4 v7, 0x2

    const-string v8, "code"

    aput-object v8, v1, v7

    const/4 v7, 0x3

    aput-object p1, v1, v7

    const/4 v7, 0x4

    const-string v8, "client_id"

    aput-object v8, v1, v7

    const/4 v7, 0x5

    invoke-virtual {p0}, Lcom/dropbox/client2/session/WebOAuth2Session;->getAppKeyPair()Lcom/dropbox/client2/session/AppKeyPair;

    move-result-object v8

    iget-object v8, v8, Lcom/dropbox/client2/session/AppKeyPair;->key:Ljava/lang/String;

    aput-object v8, v1, v7

    const/4 v7, 0x6

    const-string v8, "client_secret"

    aput-object v8, v1, v7

    const/4 v7, 0x7

    invoke-virtual {p0}, Lcom/dropbox/client2/session/WebOAuth2Session;->getAppKeyPair()Lcom/dropbox/client2/session/AppKeyPair;

    move-result-object v8

    iget-object v8, v8, Lcom/dropbox/client2/session/AppKeyPair;->secret:Ljava/lang/String;

    aput-object v8, v1, v7

    const/16 v7, 0x8

    const-string v8, "redirect_uri"

    aput-object v8, v1, v7

    const/16 v7, 0x9

    aput-object p2, v1, v7

    .line 158
    .local v1, "args":[Ljava/lang/String;
    const-string v2, "/oauth2/token"

    .line 159
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/dropbox/client2/session/WebOAuth2Session;->getAPIServer()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9, v2, v1}, Lcom/dropbox/client2/RESTUtility;->buildURL(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 160
    .local v6, "url":Ljava/lang/String;
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 161
    .local v3, "req":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-static {p0, v3}, Lcom/dropbox/client2/RESTUtility;->execute(Lcom/dropbox/client2/session/Session;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 163
    .local v4, "resp":Lorg/apache/http/HttpResponse;
    invoke-static {v4}, Lcom/dropbox/client2/RESTUtility;->parseAsJSON(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 164
    .local v5, "respData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "access_token"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 165
    .local v0, "accessToken":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/dropbox/client2/session/WebOAuth2Session;->setOAuth2AccessToken(Ljava/lang/String;)V

    .line 166
    return-object v0
.end method
