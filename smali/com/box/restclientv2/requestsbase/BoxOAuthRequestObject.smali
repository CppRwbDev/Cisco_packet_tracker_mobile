.class public Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;
.super Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
.source "BoxOAuthRequestObject.java"


# static fields
.field private static final AUTHORIZATION_CODE:Ljava/lang/String; = "authorization_code"

.field private static final CLIENT_ID:Ljava/lang/String; = "client_id"

.field private static final CLIENT_SECRET:Ljava/lang/String; = "client_secret"

.field private static final CODE:Ljava/lang/String; = "code"

.field private static final DEVICE_ID:Ljava/lang/String; = "box_device_id"

.field private static final DEVICE_NAME:Ljava/lang/String; = "box_device_name"

.field private static final GRANT_TYPE:Ljava/lang/String; = "grant_type"

.field private static final REDIRECT_URL:Ljava/lang/String; = "redirect_url"

.field private static final REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"

.field private static final REVOKE_TOKEN:Ljava/lang/String; = "token"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;-><init>()V

    return-void
.end method

.method public static createOAuthRequestObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;
    .registers 6
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "clientSecret"    # Ljava/lang/String;
    .param p3, "redirectUrl"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v0, Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;

    invoke-direct {v0}, Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;-><init>()V

    .line 46
    .local v0, "obj":Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;
    invoke-virtual {v0, p0}, Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;->setAuthCode(Ljava/lang/String;)Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;->setClient(Ljava/lang/String;Ljava/lang/String;)Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;->setRedirectUrl(Ljava/lang/String;)Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;

    move-result-object v1

    return-object v1
.end method

.method public static refreshOAuthRequestObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;
    .registers 5
    .param p0, "refreshToken"    # Ljava/lang/String;
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "clientSecret"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v0, Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;

    invoke-direct {v0}, Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;-><init>()V

    .line 51
    .local v0, "obj":Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;
    invoke-virtual {v0, p0}, Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;->setRefreshToken(Ljava/lang/String;)Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;->setClient(Ljava/lang/String;Ljava/lang/String;)Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;

    move-result-object v1

    return-object v1
.end method

.method public static revokeOAuthRequestObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;
    .registers 5
    .param p0, "revokeToken"    # Ljava/lang/String;
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "clientSecret"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v0, Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;

    invoke-direct {v0}, Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;-><init>()V

    .line 65
    .local v0, "obj":Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;
    invoke-virtual {v0, p0}, Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;->setRevokeToken(Ljava/lang/String;)Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;->setClient(Ljava/lang/String;Ljava/lang/String;)Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getEntity(Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Lorg/apache/http/HttpEntity;
    .registers 3
    .param p1, "x0"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxJSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;->getEntity(Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-result-object v0

    return-object v0
.end method

.method public getEntity(Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .registers 10
    .param p1, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v3, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {p0}, Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;->getJSONEntity()Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 120
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 121
    .local v5, "value":Ljava/lang/Object;
    if-eqz v5, :cond_11

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_11

    move-object v4, v5

    .line 122
    check-cast v4, Ljava/lang/String;

    .line 123
    .local v4, "strValue":Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/commons/lang/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 124
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v7, v6, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 130
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "strValue":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_3f
    :try_start_3f
    new-instance v6, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v7, "UTF-8"

    invoke-direct {v6, v3, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3f .. :try_end_46} :catch_47

    return-object v6

    .line 132
    :catch_47
    move-exception v0

    .line 133
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Lcom/box/restclientv2/exceptions/BoxRestException;

    invoke-direct {v6, v0}, Lcom/box/restclientv2/exceptions/BoxRestException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method

.method public setAuthCode(Ljava/lang/String;)Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;
    .registers 4
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 92
    const-string v0, "grant_type"

    const-string v1, "authorization_code"

    invoke-virtual {p0, v0, v1}, Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v0, "code"

    invoke-virtual {p0, v0, p1}, Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-object p0
.end method

.method public setClient(Ljava/lang/String;Ljava/lang/String;)Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;
    .registers 4
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "clientSecret"    # Ljava/lang/String;

    .prologue
    .line 98
    const-string v0, "client_id"

    invoke-virtual {p0, v0, p1}, Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v0, "client_secret"

    invoke-virtual {p0, v0, p2}, Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-object p0
.end method

.method public setDevice(Ljava/lang/String;Ljava/lang/String;)Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;
    .registers 4
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p2}, Lorg/apache/commons/lang/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 110
    const-string v0, "box_device_id"

    invoke-virtual {p0, v0, p1}, Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v0, "box_device_name"

    invoke-virtual {p0, v0, p2}, Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_16
    return-object p0
.end method

.method public setRedirectUrl(Ljava/lang/String;)Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;
    .registers 3
    .param p1, "redirectUrl"    # Ljava/lang/String;

    .prologue
    .line 104
    const-string v0, "redirect_url"

    invoke-virtual {p0, v0, p1}, Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-object p0
.end method

.method public setRefreshToken(Ljava/lang/String;)Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;
    .registers 4
    .param p1, "refreshToken"    # Ljava/lang/String;

    .prologue
    .line 81
    const-string v0, "grant_type"

    const-string v1, "refresh_token"

    invoke-virtual {p0, v0, v1}, Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v0, "refresh_token"

    invoke-virtual {p0, v0, p1}, Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-object p0
.end method

.method public setRevokeToken(Ljava/lang/String;)Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;
    .registers 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string v0, "token"

    invoke-virtual {p0, v0, p1}, Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-object p0
.end method
