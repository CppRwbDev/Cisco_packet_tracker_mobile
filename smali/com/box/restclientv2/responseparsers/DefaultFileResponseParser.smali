.class public Lcom/box/restclientv2/responseparsers/DefaultFileResponseParser;
.super Ljava/lang/Object;
.source "DefaultFileResponseParser.java"

# interfaces
.implements Lcom/box/restclientv2/responseparsers/IBoxResponseParser;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/box/restclientv2/responses/IBoxResponse;)Ljava/lang/Object;
    .registers 7
    .param p1, "response"    # Lcom/box/restclientv2/responses/IBoxResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;
        }
    .end annotation

    .prologue
    .line 16
    instance-of v2, p1, Lcom/box/restclientv2/responses/DefaultBoxResponse;

    if-nez v2, :cond_35

    .line 17
    new-instance v2, Lcom/box/restclientv2/exceptions/BoxRestException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "class mismatch, expected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/box/restclientv2/responses/DefaultBoxResponse;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";current:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/box/restclientv2/exceptions/BoxRestException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 19
    :cond_35
    check-cast p1, Lcom/box/restclientv2/responses/DefaultBoxResponse;

    .end local p1    # "response":Lcom/box/restclientv2/responses/IBoxResponse;
    invoke-virtual {p1}, Lcom/box/restclientv2/responses/DefaultBoxResponse;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 21
    .local v1, "httpResponse":Lorg/apache/http/HttpResponse;
    :try_start_3b
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_42} :catch_44

    move-result-object v2

    return-object v2

    .line 23
    :catch_44
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/box/restclientv2/exceptions/BoxRestException;

    const-string v3, "Failed to parse response."

    invoke-direct {v2, v0, v3}, Lcom/box/restclientv2/exceptions/BoxRestException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v2
.end method
