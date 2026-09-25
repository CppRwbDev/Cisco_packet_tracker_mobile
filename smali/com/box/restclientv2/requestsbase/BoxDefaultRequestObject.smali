.class public Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
.super Ljava/lang/Object;
.source "BoxDefaultRequestObject.java"

# interfaces
.implements Lcom/box/restclientv2/requestsbase/IBoxRequestObject;


# instance fields
.field private final jsonEntity:Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;

.field private final requestExtras:Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;-><init>()V

    iput-object v0, p0, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;->jsonEntity:Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;

    .line 21
    new-instance v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;-><init>()V

    iput-object v0, p0, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;->requestExtras:Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    .line 24
    return-void
.end method


# virtual methods
.method getEntity(Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Lorg/apache/http/HttpEntity;
    .registers 7
    .param p1, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxJSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;->getJSONEntity()Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;

    move-result-object v1

    .line 31
    .local v1, "en":Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;
    if-nez v1, :cond_8

    .line 32
    const/4 v2, 0x0

    .line 35
    :goto_7
    return-object v2

    :cond_8
    :try_start_8
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v1, p1}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;->toJSONString(Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_13} :catch_14

    goto :goto_7

    .line 37
    :catch_14
    move-exception v0

    .line 38
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/box/restclientv2/exceptions/BoxRestException;

    invoke-direct {v2, v0}, Lcom/box/restclientv2/exceptions/BoxRestException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public getFromEntity(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;->getJSONEntity()Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getJSONEntity()Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;->jsonEntity:Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;

    return-object v0
.end method

.method public getRequestExtras()Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;->requestExtras:Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;->getJSONEntity()Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setPage(II)Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
    .registers 6
    .param p1, "limit"    # I
    .param p2, "offset"    # I

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;->getRequestExtras()Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    move-result-object v0

    const-string v1, "limit"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;->addQueryParam(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    .line 74
    invoke-virtual {p0}, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;->getRequestExtras()Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    move-result-object v0

    const-string v1, "offset"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;->addQueryParam(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    .line 75
    return-object p0
.end method
