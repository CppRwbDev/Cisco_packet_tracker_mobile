.class public Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;
.super Ljava/lang/Object;
.source "OAuthWebViewData.java"


# instance fields
.field private final RESPONSE_TYPE:Ljava/lang/String;

.field private final extraQueryParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mOAuthDataController:Lcom/box/boxjavalibv2/authorization/OAuthDataController;

.field private mOptionalState:Ljava/lang/String;

.field private redirectUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/box/boxjavalibv2/authorization/OAuthDataController;)V
    .registers 3
    .param p1, "oAuthDataController"    # Lcom/box/boxjavalibv2/authorization/OAuthDataController;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "code"

    iput-object v0, p0, Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;->RESPONSE_TYPE:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;->extraQueryParams:Ljava/util/HashMap;

    .line 32
    iput-object p1, p0, Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;->mOAuthDataController:Lcom/box/boxjavalibv2/authorization/OAuthDataController;

    .line 33
    return-void
.end method


# virtual methods
.method public appendQueryParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;->extraQueryParams:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public buildUrl()Ljava/net/URI;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 108
    new-instance v2, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;->getUrlPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .local v2, "ub":Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->setHost(Ljava/lang/String;)Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;

    .line 110
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->setScheme(Ljava/lang/String;)Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;

    .line 111
    const-string v3, "response_type"

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;->getResponseType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;

    .line 112
    const-string v3, "client_id"

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;

    .line 113
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;->getOptionalState()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 114
    const-string v3, "state"

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;->getOptionalState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;

    .line 116
    :cond_3c
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;->getRedirectUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 117
    const-string v3, "redirect_uri"

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;->getRedirectUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;

    .line 120
    :cond_4f
    iget-object v3, p0, Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;->extraQueryParams:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 121
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;

    goto :goto_59

    .line 124
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_75
    invoke-virtual {v2}, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->getQueryParams()Ljava/util/List;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Lcom/box/restclientv2/httpclientsupport/HttpClientURLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    invoke-virtual {v2}, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->build()Ljava/net/URI;

    move-result-object v3

    return-object v3
.end method

.method public getClientId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;->mOAuthDataController:Lcom/box/boxjavalibv2/authorization/OAuthDataController;

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->getClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientSecret()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;->mOAuthDataController:Lcom/box/boxjavalibv2/authorization/OAuthDataController;

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->getClientSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;->mOAuthDataController:Lcom/box/boxjavalibv2/authorization/OAuthDataController;

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->getAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptionalState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;->mOptionalState:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;->redirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    const-string v0, "code"

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;->mOAuthDataController:Lcom/box/boxjavalibv2/authorization/OAuthDataController;

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->getScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrlPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;->mOAuthDataController:Lcom/box/boxjavalibv2/authorization/OAuthDataController;

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->getUrlPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setOptionalState(Ljava/lang/String;)V
    .registers 2
    .param p1, "optionalState"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;->mOptionalState:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setRedirectUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;->redirectUrl:Ljava/lang/String;

    .line 59
    return-void
.end method
