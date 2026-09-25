.class public Lcom/box/boxjavalibv2/responseparsers/ErrorResponseParser;
.super Lcom/box/restclientv2/responseparsers/DefaultBoxJSONResponseParser;
.source "ErrorResponseParser.java"


# static fields
.field private static final RETRY_AFTER:Ljava/lang/String; = "Retry-After"


# direct methods
.method public constructor <init>(Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)V
    .registers 3
    .param p1, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    .prologue
    .line 33
    const-class v0, Lcom/box/boxjavalibv2/dao/BoxServerError;

    invoke-direct {p0, v0, p1}, Lcom/box/restclientv2/responseparsers/DefaultBoxJSONResponseParser;-><init>(Ljava/lang/Class;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)V

    .line 34
    return-void
.end method

.method private isErrorResponse(I)Z
    .registers 3
    .param p1, "statusCode"    # I

    .prologue
    .line 98
    const/16 v0, 0x190

    if-lt p1, v0, :cond_a

    const/16 v0, 0x258

    if-ge p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isRetryAccepted(I)Z
    .registers 3
    .param p1, "statusCode"    # I

    .prologue
    .line 102
    const/16 v0, 0xca

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public parse(Lcom/box/restclientv2/responses/IBoxResponse;)Ljava/lang/Object;
    .registers 11
    .param p1, "response"    # Lcom/box/restclientv2/responses/IBoxResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;
        }
    .end annotation

    .prologue
    .line 38
    instance-of v6, p1, Lcom/box/restclientv2/responses/DefaultBoxResponse;

    if-nez v6, :cond_35

    .line 39
    new-instance v6, Lcom/box/restclientv2/exceptions/BoxRestException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "class mismatch, expected:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v8, Lcom/box/restclientv2/responses/DefaultBoxResponse;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";current:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/box/restclientv2/exceptions/BoxRestException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_35
    move-object v6, p1

    .line 42
    check-cast v6, Lcom/box/restclientv2/responses/DefaultBoxResponse;

    invoke-virtual {v6}, Lcom/box/restclientv2/responses/DefaultBoxResponse;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 43
    .local v3, "httpResponse":Lorg/apache/http/HttpResponse;
    if-nez v3, :cond_40

    .line 44
    const/4 v1, 0x0

    .line 66
    .end local p1    # "response":Lcom/box/restclientv2/responses/IBoxResponse;
    :goto_3f
    return-object v1

    .line 47
    .restart local p1    # "response":Lcom/box/restclientv2/responses/IBoxResponse;
    :cond_40
    :try_start_40
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 48
    .local v4, "statusCode":I
    const/4 v1, 0x0

    .line 49
    .local v1, "error":Lcom/box/boxjavalibv2/dao/BoxServerError;
    invoke-direct {p0, v4}, Lcom/box/boxjavalibv2/responseparsers/ErrorResponseParser;->isErrorResponse(I)Z

    move-result v6

    if-eqz v6, :cond_64

    .line 50
    invoke-super {p0, p1}, Lcom/box/restclientv2/responseparsers/DefaultBoxJSONResponseParser;->parse(Lcom/box/restclientv2/responses/IBoxResponse;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "error":Lcom/box/boxjavalibv2/dao/BoxServerError;
    check-cast v1, Lcom/box/boxjavalibv2/dao/BoxServerError;

    .line 62
    .end local p1    # "response":Lcom/box/restclientv2/responses/IBoxResponse;
    .restart local v1    # "error":Lcom/box/boxjavalibv2/dao/BoxServerError;
    :cond_55
    :goto_55
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/box/boxjavalibv2/dao/BoxServerError;->setStatus(Ljava/lang/Integer;)V
    :try_end_5c
    .catchall {:try_start_40 .. :try_end_5c} :catchall_8d

    .line 66
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-static {v6}, Lcom/box/boxjavalibv2/utils/Utils;->consumeHttpEntityQuietly(Lorg/apache/http/HttpEntity;)V

    goto :goto_3f

    .line 53
    .restart local p1    # "response":Lcom/box/restclientv2/responses/IBoxResponse;
    :cond_64
    :try_start_64
    new-instance v1, Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedStatus;

    .end local v1    # "error":Lcom/box/boxjavalibv2/dao/BoxServerError;
    invoke-direct {v1, v4}, Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedStatus;-><init>(I)V

    .line 54
    .restart local v1    # "error":Lcom/box/boxjavalibv2/dao/BoxServerError;
    invoke-direct {p0, v4}, Lcom/box/boxjavalibv2/responseparsers/ErrorResponseParser;->isRetryAccepted(I)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 55
    check-cast p1, Lcom/box/restclientv2/responses/DefaultBoxResponse;

    .end local p1    # "response":Lcom/box/restclientv2/responses/IBoxResponse;
    invoke-virtual {p1}, Lcom/box/restclientv2/responses/DefaultBoxResponse;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v6

    const-string v7, "Retry-After"

    invoke-interface {v6, v7}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 56
    .local v2, "header":Lorg/apache/http/Header;
    if-eqz v2, :cond_55

    .line 57
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, "value":Ljava/lang/String;
    move-object v0, v1

    check-cast v0, Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedStatus;

    move-object v6, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedStatus;->setRetryAfter(Ljava/lang/Integer;)V
    :try_end_8c
    .catchall {:try_start_64 .. :try_end_8c} :catchall_8d

    goto :goto_55

    .line 66
    .end local v1    # "error":Lcom/box/boxjavalibv2/dao/BoxServerError;
    .end local v2    # "header":Lorg/apache/http/Header;
    .end local v4    # "statusCode":I
    .end local v5    # "value":Ljava/lang/String;
    :catchall_8d
    move-exception v6

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-static {v7}, Lcom/box/boxjavalibv2/utils/Utils;->consumeHttpEntityQuietly(Lorg/apache/http/HttpEntity;)V

    throw v6
.end method

.method protected parseInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 8
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 73
    const/4 v1, 0x0

    .line 75
    .local v1, "errorStr":Ljava/lang/String;
    :try_start_1
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/responseparsers/ErrorResponseParser;->getParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v4

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/responseparsers/ErrorResponseParser;->getObjectClass()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;->parseIntoBoxObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 79
    .local v3, "obj":Ljava/lang/Object;
    instance-of v4, v3, Lcom/box/boxjavalibv2/dao/BoxServerError;
    :try_end_13
    .catch Lcom/box/boxjavalibv2/exceptions/BoxJSONException; {:try_start_1 .. :try_end_13} :catch_16
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_13} :catch_2b

    if-eqz v4, :cond_21

    .line 94
    .end local v3    # "obj":Ljava/lang/Object;
    :goto_15
    return-object v3

    .line 83
    :catch_16
    move-exception v0

    .line 84
    .local v0, "e":Lcom/box/boxjavalibv2/exceptions/BoxJSONException;
    invoke-static {v1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 85
    invoke-virtual {v0}, Lcom/box/boxjavalibv2/exceptions/BoxJSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 92
    .end local v0    # "e":Lcom/box/boxjavalibv2/exceptions/BoxJSONException;
    :cond_21
    :goto_21
    new-instance v2, Lcom/box/boxjavalibv2/dao/BoxGenericServerError;

    invoke-direct {v2}, Lcom/box/boxjavalibv2/dao/BoxGenericServerError;-><init>()V

    .line 93
    .local v2, "genericE":Lcom/box/boxjavalibv2/dao/BoxGenericServerError;
    invoke-virtual {v2, v1}, Lcom/box/boxjavalibv2/dao/BoxGenericServerError;->setMessage(Ljava/lang/String;)V

    move-object v3, v2

    .line 94
    goto :goto_15

    .line 88
    .end local v2    # "genericE":Lcom/box/boxjavalibv2/dao/BoxGenericServerError;
    :catch_2b
    move-exception v0

    .line 89
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Fail to read response."

    goto :goto_21
.end method
