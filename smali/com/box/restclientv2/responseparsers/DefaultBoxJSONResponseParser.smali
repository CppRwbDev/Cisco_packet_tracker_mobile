.class public Lcom/box/restclientv2/responseparsers/DefaultBoxJSONResponseParser;
.super Ljava/lang/Object;
.source "DefaultBoxJSONResponseParser.java"

# interfaces
.implements Lcom/box/restclientv2/responseparsers/IBoxResponseParser;


# instance fields
.field private final mParser:Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

.field private final objectClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)V
    .registers 3
    .param p1, "objectClass"    # Ljava/lang/Class;
    .param p2, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/box/restclientv2/responseparsers/DefaultBoxJSONResponseParser;->objectClass:Ljava/lang/Class;

    .line 37
    iput-object p2, p0, Lcom/box/restclientv2/responseparsers/DefaultBoxJSONResponseParser;->mParser:Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    .line 38
    return-void
.end method


# virtual methods
.method public getObjectClass()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/box/restclientv2/responseparsers/DefaultBoxJSONResponseParser;->objectClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/box/restclientv2/responseparsers/DefaultBoxJSONResponseParser;->mParser:Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    return-object v0
.end method

.method public parse(Lcom/box/restclientv2/responses/IBoxResponse;)Ljava/lang/Object;
    .registers 8
    .param p1, "response"    # Lcom/box/restclientv2/responses/IBoxResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;
        }
    .end annotation

    .prologue
    .line 61
    instance-of v3, p1, Lcom/box/restclientv2/responses/DefaultBoxResponse;

    if-nez v3, :cond_35

    .line 62
    new-instance v3, Lcom/box/restclientv2/exceptions/BoxRestException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "class mismatch, expected:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lcom/box/restclientv2/responses/DefaultBoxResponse;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";current:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/box/restclientv2/exceptions/BoxRestException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 64
    :cond_35
    check-cast p1, Lcom/box/restclientv2/responses/DefaultBoxResponse;

    .end local p1    # "response":Lcom/box/restclientv2/responses/IBoxResponse;
    invoke-virtual {p1}, Lcom/box/restclientv2/responses/DefaultBoxResponse;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 66
    .local v1, "httpResponse":Lorg/apache/http/HttpResponse;
    const/4 v2, 0x0

    .line 68
    .local v2, "in":Ljava/io/InputStream;
    :try_start_3c
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_43} :catch_53
    .catchall {:try_start_3c .. :try_end_43} :catchall_5c

    move-result-object v2

    .line 69
    if-nez v2, :cond_4b

    .line 70
    const/4 v3, 0x0

    .line 80
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    :goto_4a
    return-object v3

    .line 73
    :cond_4b
    :try_start_4b
    invoke-virtual {p0, v2}, Lcom/box/restclientv2/responseparsers/DefaultBoxJSONResponseParser;->parseInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_53
    .catchall {:try_start_4b .. :try_end_4e} :catchall_5c

    move-result-object v3

    .line 80
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_4a

    .line 76
    :catch_53
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    :try_start_54
    new-instance v3, Lcom/box/restclientv2/exceptions/BoxRestException;

    const-string v4, "Failed to parse response."

    invoke-direct {v3, v0, v4}, Lcom/box/restclientv2/exceptions/BoxRestException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v3
    :try_end_5c
    .catchall {:try_start_54 .. :try_end_5c} :catchall_5c

    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_5c
    move-exception v3

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v3
.end method

.method protected parseInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxJSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/box/restclientv2/responseparsers/DefaultBoxJSONResponseParser;->mParser:Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    iget-object v1, p0, Lcom/box/restclientv2/responseparsers/DefaultBoxJSONResponseParser;->objectClass:Ljava/lang/Class;

    invoke-interface {v0, p1, v1}, Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;->parseIntoBoxObject(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
