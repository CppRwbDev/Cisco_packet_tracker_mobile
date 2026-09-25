.class public Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;
.super Ljava/lang/Object;
.source "DefaultBoxRequest.java"

# interfaces
.implements Lcom/box/restclientv2/requestsbase/IBoxRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/box/restclientv2/requestsbase/DefaultBoxRequest$1;
    }
.end annotation


# static fields
.field private static final DELIMITER:Ljava/lang/String; = ","

.field private static final FIELDS:Ljava/lang/String; = "fields"


# instance fields
.field private expectedResponseCode:I

.field private final headers:Ljava/util/HashMap;
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

.field private final httpParams:Lorg/apache/http/params/HttpParams;

.field private mAuth:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/box/restclientv2/authorization/IBoxRequestAuth;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfig:Lcom/box/boxjavalibv2/IBoxConfig;

.field private mCookie:Lcom/box/restclientv2/requestsbase/ICookie;

.field private mEntity:Lorg/apache/http/HttpEntity;

.field private final mRestMethod:Lcom/box/restclientv2/RestMethod;

.field private final queryParams:Ljava/util/HashMap;
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

.field private rawRequest:Lorg/apache/http/client/methods/HttpRequestBase;

.field private final uriPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/restclientv2/RestMethod;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V
    .registers 11
    .param p1, "config"    # Lcom/box/boxjavalibv2/IBoxConfig;
    .param p2, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .param p3, "uriPath"    # Ljava/lang/String;
    .param p4, "restMethod"    # Lcom/box/restclientv2/RestMethod;
    .param p5, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->queryParams:Ljava/util/HashMap;

    .line 56
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->headers:Ljava/util/HashMap;

    .line 60
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v2, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->httpParams:Lorg/apache/http/params/HttpParams;

    .line 62
    const/16 v2, 0xc8

    iput v2, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->expectedResponseCode:I

    .line 82
    iput-object p1, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->mConfig:Lcom/box/boxjavalibv2/IBoxConfig;

    .line 83
    iput-object p4, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->mRestMethod:Lcom/box/restclientv2/RestMethod;

    .line 84
    iput-object p3, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->uriPath:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string v3, "User-Agent"

    invoke-virtual {p0}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v4

    invoke-interface {v4}, Lcom/box/boxjavalibv2/IBoxConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-virtual {p0}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string v3, "sdk_version"

    invoke-virtual {p0}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v4

    invoke-interface {v4}, Lcom/box/boxjavalibv2/IBoxConfig;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    if-eqz p5, :cond_6e

    .line 90
    :try_start_46
    invoke-virtual {p5, p2}, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;->getEntity(Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_4d
    .catch Lcom/box/boxjavalibv2/exceptions/BoxJSONException; {:try_start_46 .. :try_end_4d} :catch_6f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_46 .. :try_end_4d} :catch_78

    .line 97
    invoke-virtual {p5}, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;->getRequestExtras()Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    move-result-object v1

    .line 98
    .local v1, "mutator":Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;
    invoke-virtual {v1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;->getFields()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->setRequestFields(Ljava/util/List;)V

    .line 99
    invoke-virtual {p0}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->getQueryParams()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;->getQueryParams()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 100
    invoke-virtual {p0}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 102
    .end local v1    # "mutator":Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;
    :cond_6e
    return-void

    .line 91
    :catch_6f
    move-exception v0

    .line 92
    .local v0, "e":Lcom/box/boxjavalibv2/exceptions/BoxJSONException;
    new-instance v2, Lcom/box/restclientv2/exceptions/BoxRestException;

    const-string v3, "Cannot parse entity of the request object."

    invoke-direct {v2, v0, v3}, Lcom/box/restclientv2/exceptions/BoxRestException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v2

    .line 93
    .end local v0    # "e":Lcom/box/boxjavalibv2/exceptions/BoxJSONException;
    :catch_78
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/box/restclientv2/exceptions/BoxRestException;

    const-string v3, "UnsupportedEncodingException in the request object."

    invoke-direct {v2, v0, v3}, Lcom/box/restclientv2/exceptions/BoxRestException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->headers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    return-void
.end method

.method public addHttpParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->httpParams:Lorg/apache/http/params/HttpParams;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 236
    return-void
.end method

.method public addQueryParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->queryParams:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    return-void
.end method

.method constructHttpUriRequest()Lorg/apache/http/client/methods/HttpRequestBase;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;
        }
    .end annotation

    .prologue
    .line 313
    sget-object v0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest$1;->$SwitchMap$com$box$restclientv2$RestMethod:[I

    invoke-virtual {p0}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->getRestMethod()Lcom/box/restclientv2/RestMethod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/box/restclientv2/RestMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    .line 325
    new-instance v0, Lcom/box/restclientv2/exceptions/BoxRestException;

    const-string v1, "Method Not Implemented"

    invoke-direct {v0, v1}, Lcom/box/restclientv2/exceptions/BoxRestException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :pswitch_17
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    .line 323
    :goto_1c
    return-object v0

    .line 317
    :pswitch_1d
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0}, Lorg/apache/http/client/methods/HttpPut;-><init>()V

    goto :goto_1c

    .line 319
    :pswitch_23
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0}, Lorg/apache/http/client/methods/HttpPost;-><init>()V

    goto :goto_1c

    .line 321
    :pswitch_29
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0}, Lorg/apache/http/client/methods/HttpDelete;-><init>()V

    goto :goto_1c

    .line 323
    :pswitch_2f
    new-instance v0, Lorg/apache/http/client/methods/HttpOptions;

    invoke-direct {v0}, Lorg/apache/http/client/methods/HttpOptions;-><init>()V

    goto :goto_1c

    .line 313
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_17
        :pswitch_1d
        :pswitch_23
        :pswitch_29
        :pswitch_2f
    .end packed-switch
.end method

.method public getApiUrlPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->mConfig:Lcom/box/boxjavalibv2/IBoxConfig;

    invoke-interface {v0}, Lcom/box/boxjavalibv2/IBoxConfig;->getApiUrlPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuth()Lcom/box/restclientv2/authorization/IBoxRequestAuth;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->mAuth:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->mAuth:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getAuthority()Ljava/lang/String;
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->mConfig:Lcom/box/boxjavalibv2/IBoxConfig;

    invoke-interface {v0}, Lcom/box/boxjavalibv2/IBoxConfig;->getApiUrlAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/box/boxjavalibv2/IBoxConfig;
    .registers 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->mConfig:Lcom/box/boxjavalibv2/IBoxConfig;

    return-object v0
.end method

.method public getCookie()Lcom/box/restclientv2/requestsbase/ICookie;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->mCookie:Lcom/box/restclientv2/requestsbase/ICookie;

    return-object v0
.end method

.method public getExpectedResponseCode()I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->expectedResponseCode:I

    return v0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->headers:Ljava/util/HashMap;

    return-object v0
.end method

.method public getHttpParams()Lorg/apache/http/params/HttpParams;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->httpParams:Lorg/apache/http/params/HttpParams;

    return-object v0
.end method

.method public getQueryParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->queryParams:Ljava/util/HashMap;

    return-object v0
.end method

.method public getRawRequest()Lorg/apache/http/client/methods/HttpRequestBase;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->rawRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    return-object v0
.end method

.method public getRequestEntity()Lorg/apache/http/HttpEntity;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->mEntity:Lorg/apache/http/HttpEntity;

    return-object v0
.end method

.method public getRestMethod()Lcom/box/restclientv2/RestMethod;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->mRestMethod:Lcom/box/restclientv2/RestMethod;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->mConfig:Lcom/box/boxjavalibv2/IBoxConfig;

    invoke-interface {v0}, Lcom/box/boxjavalibv2/IBoxConfig;->getApiUrlScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUriPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->uriPath:Ljava/lang/String;

    return-object v0
.end method

.method public prepareRequest()Lorg/apache/http/client/methods/HttpRequestBase;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->constructHttpUriRequest()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v4

    iput-object v4, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->rawRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 252
    :try_start_6
    new-instance v3, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;

    invoke-direct {v3}, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;-><init>()V

    .line 253
    .local v3, "ub":Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;
    invoke-virtual {p0}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->setHost(Ljava/lang/String;)Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;

    .line 254
    invoke-virtual {p0}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->setScheme(Ljava/lang/String;)Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;

    .line 255
    invoke-virtual {p0}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->getApiUrlPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->uriPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/{2,}"

    const-string v6, "/"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->setPath(Ljava/lang/String;)Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;

    .line 256
    invoke-virtual {p0}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->getQueryParams()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 257
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6}, Lorg/apache/commons/lang/StringUtils;->defaultIfEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;
    :try_end_5b
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_5b} :catch_5c

    goto :goto_3a

    .line 261
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ub":Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;
    :catch_5c
    move-exception v0

    .line 262
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v4, Lcom/box/restclientv2/exceptions/BoxRestException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URISyntaxException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/box/restclientv2/exceptions/BoxRestException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 260
    .end local v0    # "e":Ljava/net/URISyntaxException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "ub":Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;
    :cond_7a
    :try_start_7a
    iget-object v4, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->rawRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->build()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V
    :try_end_83
    .catch Ljava/net/URISyntaxException; {:try_start_7a .. :try_end_83} :catch_5c

    .line 265
    invoke-virtual {p0}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->getAuth()Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    move-result-object v4

    if-eqz v4, :cond_90

    .line 266
    invoke-virtual {p0}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->getAuth()Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    move-result-object v4

    invoke-interface {v4, p0}, Lcom/box/restclientv2/authorization/IBoxRequestAuth;->setAuth(Lcom/box/restclientv2/requestsbase/IBoxRequest;)V

    .line 269
    :cond_90
    invoke-virtual {p0}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->getCookie()Lcom/box/restclientv2/requestsbase/ICookie;

    move-result-object v4

    if-eqz v4, :cond_9d

    .line 270
    invoke-virtual {p0}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->getCookie()Lcom/box/restclientv2/requestsbase/ICookie;

    move-result-object v4

    invoke-interface {v4, p0}, Lcom/box/restclientv2/requestsbase/ICookie;->setCookie(Lcom/box/restclientv2/requestsbase/IBoxRequest;)V

    .line 273
    :cond_9d
    invoke-virtual {p0}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->getRequestEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    if-eqz v4, :cond_b4

    iget-object v4, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->rawRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    instance-of v4, v4, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    if-eqz v4, :cond_b4

    .line 274
    iget-object v4, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->rawRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    check-cast v4, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    invoke-virtual {p0}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->getRequestEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 277
    :cond_b4
    invoke-virtual {p0}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_de

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 278
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->rawRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v4, v5}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c0

    .line 281
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_de
    iget-object v4, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->rawRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {p0}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->getHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/http/client/methods/HttpRequestBase;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 283
    iget-object v4, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->rawRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    return-object v4
.end method

.method public bridge synthetic prepareRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->prepareRequest()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v0

    return-object v0
.end method

.method public setAuth(Lcom/box/restclientv2/authorization/IBoxRequestAuth;)V
    .registers 3
    .param p1, "auth"    # Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    .prologue
    .line 159
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->mAuth:Ljava/lang/ref/WeakReference;

    .line 160
    return-void
.end method

.method public setCookie(Lcom/box/restclientv2/requestsbase/ICookie;)V
    .registers 2
    .param p1, "cookie"    # Lcom/box/restclientv2/requestsbase/ICookie;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->mCookie:Lcom/box/restclientv2/requestsbase/ICookie;

    .line 165
    return-void
.end method

.method public setEntity(Lorg/apache/http/HttpEntity;)V
    .registers 2
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->mEntity:Lorg/apache/http/HttpEntity;

    .line 175
    return-void
.end method

.method protected setExpectedResponseCode(I)V
    .registers 2
    .param p1, "code"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->expectedResponseCode:I

    .line 117
    return-void
.end method

.method public setIfMatch(Ljava/lang/String;)V
    .registers 3
    .param p1, "ifMatch"    # Ljava/lang/String;

    .prologue
    .line 194
    const-string v0, "If-Match"

    invoke-virtual {p0, v0, p1}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public setRequestFields(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .local v1, "sbr":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_3c

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3c

    .line 208
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 209
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_28

    .line 210
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 212
    :cond_28
    add-int/lit8 v3, v2, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string v3, "fields"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->addQueryParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_3c
    return-void
.end method
