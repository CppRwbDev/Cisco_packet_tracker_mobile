.class public Lcom/box/restclientv2/responses/DefaultBoxResponse;
.super Ljava/lang/Object;
.source "DefaultBoxResponse.java"

# interfaces
.implements Lcom/box/restclientv2/responses/IBoxResponse;


# instance fields
.field private expectedResponseCode:I

.field private final httpResponse:Lorg/apache/http/HttpResponse;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpResponse;)V
    .registers 2
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/box/restclientv2/responses/DefaultBoxResponse;->httpResponse:Lorg/apache/http/HttpResponse;

    .line 27
    return-void
.end method


# virtual methods
.method public getContentLength()D
    .registers 5

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/box/restclientv2/responses/DefaultBoxResponse;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v1

    const-string v2, "Content-Length"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 80
    .local v0, "header":Lorg/apache/http/Header;
    if-eqz v0, :cond_16

    .line 83
    :try_start_c
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_13} :catch_15

    move-result-wide v2

    .line 89
    :goto_14
    return-wide v2

    .line 85
    :catch_15
    move-exception v1

    .line 89
    :cond_16
    const-wide/16 v2, 0x0

    goto :goto_14
.end method

.method public getExpectedResponseCode()I
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lcom/box/restclientv2/responses/DefaultBoxResponse;->expectedResponseCode:I

    return v0
.end method

.method public getHttpResponse()Lorg/apache/http/HttpResponse;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/box/restclientv2/responses/DefaultBoxResponse;->httpResponse:Lorg/apache/http/HttpResponse;

    return-object v0
.end method

.method public getResponseStatusCode()I
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/box/restclientv2/responses/DefaultBoxResponse;->httpResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public parseResponse(Lcom/box/restclientv2/responseparsers/IBoxResponseParser;Lcom/box/restclientv2/responseparsers/IBoxResponseParser;)Ljava/lang/Object;
    .registers 5
    .param p1, "responseParser"    # Lcom/box/restclientv2/responseparsers/IBoxResponseParser;
    .param p2, "errorParser"    # Lcom/box/restclientv2/responseparsers/IBoxResponseParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/box/restclientv2/responses/DefaultBoxResponse;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 50
    .local v0, "statusCode":I
    invoke-virtual {p0}, Lcom/box/restclientv2/responses/DefaultBoxResponse;->getExpectedResponseCode()I

    move-result v1

    if-eq v0, v1, :cond_17

    .line 51
    invoke-interface {p2, p0}, Lcom/box/restclientv2/responseparsers/IBoxResponseParser;->parse(Lcom/box/restclientv2/responses/IBoxResponse;)Ljava/lang/Object;

    move-result-object v1

    .line 54
    :goto_16
    return-object v1

    :cond_17
    invoke-interface {p1, p0}, Lcom/box/restclientv2/responseparsers/IBoxResponseParser;->parse(Lcom/box/restclientv2/responses/IBoxResponse;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_16
.end method

.method public setExpectedResponseCode(I)V
    .registers 2
    .param p1, "code"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/box/restclientv2/responses/DefaultBoxResponse;->expectedResponseCode:I

    .line 66
    return-void
.end method
