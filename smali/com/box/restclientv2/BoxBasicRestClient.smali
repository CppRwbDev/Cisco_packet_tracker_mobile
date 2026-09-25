.class public Lcom/box/restclientv2/BoxBasicRestClient;
.super Ljava/lang/Object;
.source "BoxBasicRestClient.java"

# interfaces
.implements Lcom/box/restclientv2/IBoxRESTClient;


# instance fields
.field private final mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/box/restclientv2/BoxBasicRestClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;)V
    .registers 3
    .param p1, "connectionManager"    # Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;->getMonitoredRestClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/box/restclientv2/BoxBasicRestClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 35
    return-void
.end method


# virtual methods
.method public execute(Lcom/box/restclientv2/requestsbase/IBoxRequest;)Lcom/box/restclientv2/responses/IBoxResponse;
    .registers 7
    .param p1, "boxRequest"    # Lcom/box/restclientv2/requestsbase/IBoxRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-interface {p1}, Lcom/box/restclientv2/requestsbase/IBoxRequest;->prepareRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    .line 50
    .local v2, "httpRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    :try_start_4
    invoke-virtual {p0}, Lcom/box/restclientv2/BoxBasicRestClient;->getRawHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v4

    invoke-interface {v4, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_b} :catch_19

    move-result-object v3

    .line 55
    .local v3, "response":Lorg/apache/http/HttpResponse;
    new-instance v0, Lcom/box/restclientv2/responses/DefaultBoxResponse;

    invoke-direct {v0, v3}, Lcom/box/restclientv2/responses/DefaultBoxResponse;-><init>(Lorg/apache/http/HttpResponse;)V

    .line 56
    .local v0, "boxResponse":Lcom/box/restclientv2/responses/DefaultBoxResponse;
    invoke-interface {p1}, Lcom/box/restclientv2/requestsbase/IBoxRequest;->getExpectedResponseCode()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/box/restclientv2/responses/DefaultBoxResponse;->setExpectedResponseCode(I)V

    .line 57
    return-object v0

    .line 52
    .end local v0    # "boxResponse":Lcom/box/restclientv2/responses/DefaultBoxResponse;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :catch_19
    move-exception v1

    .line 53
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Lcom/box/restclientv2/exceptions/BoxRestException;

    invoke-direct {v4, v1}, Lcom/box/restclientv2/exceptions/BoxRestException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method public getRawHttpClient()Lorg/apache/http/client/HttpClient;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/box/restclientv2/BoxBasicRestClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method
