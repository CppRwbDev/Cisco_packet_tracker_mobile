.class public abstract Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;
.super Ljava/lang/Object;
.source "AbstractBoxResourceManager.java"

# interfaces
.implements Lcom/box/boxjavalibv2/resourcemanagers/IBoxResourceManager;


# instance fields
.field private final mAuth:Lcom/box/restclientv2/authorization/IBoxRequestAuth;

.field private final mConfig:Lcom/box/boxjavalibv2/IBoxConfig;

.field private final mParser:Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

.field private final mResourceHub:Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

.field private final mRestClient:Lcom/box/restclientv2/IBoxRESTClient;


# direct methods
.method public constructor <init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/authorization/IBoxRequestAuth;Lcom/box/restclientv2/IBoxRESTClient;)V
    .registers 6
    .param p1, "config"    # Lcom/box/boxjavalibv2/IBoxConfig;
    .param p2, "resourceHub"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;
    .param p3, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .param p4, "auth"    # Lcom/box/restclientv2/authorization/IBoxRequestAuth;
    .param p5, "restClient"    # Lcom/box/restclientv2/IBoxRESTClient;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;->mConfig:Lcom/box/boxjavalibv2/IBoxConfig;

    .line 53
    iput-object p2, p0, Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;->mResourceHub:Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

    .line 54
    iput-object p3, p0, Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;->mParser:Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    .line 55
    iput-object p4, p0, Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;->mAuth:Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    .line 56
    iput-object p5, p0, Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;->mRestClient:Lcom/box/restclientv2/IBoxRESTClient;

    .line 57
    return-void
.end method


# virtual methods
.method protected executeRequestWithNoResponseBody(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;)V
    .registers 8
    .param p1, "request"    # Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;->getAuth()Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->setAuth(Lcom/box/restclientv2/authorization/IBoxRequestAuth;)V

    .line 84
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;->getRestClient()Lcom/box/restclientv2/IBoxRESTClient;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/box/restclientv2/IBoxRESTClient;->execute(Lcom/box/restclientv2/requestsbase/IBoxRequest;)Lcom/box/restclientv2/responses/IBoxResponse;

    move-result-object v2

    check-cast v2, Lcom/box/restclientv2/responses/DefaultBoxResponse;

    .line 86
    .local v2, "response":Lcom/box/restclientv2/responses/DefaultBoxResponse;
    :try_start_11
    invoke-virtual {v2}, Lcom/box/restclientv2/responses/DefaultBoxResponse;->getExpectedResponseCode()I

    move-result v3

    invoke-virtual {v2}, Lcom/box/restclientv2/responses/DefaultBoxResponse;->getResponseStatusCode()I

    move-result v4

    if-eq v3, v4, :cond_6e

    .line 87
    new-instance v1, Lcom/box/boxjavalibv2/responseparsers/ErrorResponseParser;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/box/boxjavalibv2/responseparsers/ErrorResponseParser;-><init>(Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)V

    .line 88
    .local v1, "errorParser":Lcom/box/boxjavalibv2/responseparsers/ErrorResponseParser;
    invoke-virtual {v1, v2}, Lcom/box/boxjavalibv2/responseparsers/ErrorResponseParser;->parse(Lcom/box/restclientv2/responses/IBoxResponse;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxServerError;

    .line 89
    .local v0, "error":Lcom/box/boxjavalibv2/dao/BoxServerError;
    if-nez v0, :cond_68

    .line 90
    new-instance v3, Lcom/box/boxjavalibv2/exceptions/BoxServerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected response code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/box/restclientv2/responses/DefaultBoxResponse;->getResponseStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", expecting:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/box/restclientv2/responses/DefaultBoxResponse;->getExpectedResponseCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/box/restclientv2/responses/DefaultBoxResponse;->getResponseStatusCode()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/box/boxjavalibv2/exceptions/BoxServerException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_5b
    .catchall {:try_start_11 .. :try_end_5b} :catchall_5b

    .line 99
    .end local v0    # "error":Lcom/box/boxjavalibv2/dao/BoxServerError;
    .end local v1    # "errorParser":Lcom/box/boxjavalibv2/responseparsers/ErrorResponseParser;
    :catchall_5b
    move-exception v3

    invoke-virtual {v2}, Lcom/box/restclientv2/responses/DefaultBoxResponse;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lcom/box/boxjavalibv2/utils/Utils;->consumeHttpEntityQuietly(Lorg/apache/http/HttpEntity;)V

    throw v3

    .line 94
    .restart local v0    # "error":Lcom/box/boxjavalibv2/dao/BoxServerError;
    .restart local v1    # "errorParser":Lcom/box/boxjavalibv2/responseparsers/ErrorResponseParser;
    :cond_68
    :try_start_68
    new-instance v3, Lcom/box/boxjavalibv2/exceptions/BoxServerException;

    invoke-direct {v3, v0}, Lcom/box/boxjavalibv2/exceptions/BoxServerException;-><init>(Lcom/box/boxjavalibv2/dao/BoxServerError;)V

    throw v3
    :try_end_6e
    .catchall {:try_start_68 .. :try_end_6e} :catchall_5b

    .line 99
    .end local v0    # "error":Lcom/box/boxjavalibv2/dao/BoxServerError;
    .end local v1    # "errorParser":Lcom/box/boxjavalibv2/responseparsers/ErrorResponseParser;
    :cond_6e
    invoke-virtual {v2}, Lcom/box/restclientv2/responses/DefaultBoxResponse;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lcom/box/boxjavalibv2/utils/Utils;->consumeHttpEntityQuietly(Lorg/apache/http/HttpEntity;)V

    .line 101
    return-void
.end method

.method public getAuth()Lcom/box/restclientv2/authorization/IBoxRequestAuth;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;->mAuth:Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    return-object v0
.end method

.method protected getClassFromType(Lcom/box/boxjavalibv2/dao/IBoxType;)Ljava/lang/Class;
    .registers 3
    .param p1, "type"    # Lcom/box/boxjavalibv2/dao/IBoxType;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;->getResourceHub()Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;->getClass(Lcom/box/boxjavalibv2/dao/IBoxType;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/box/boxjavalibv2/IBoxConfig;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;->mConfig:Lcom/box/boxjavalibv2/IBoxConfig;

    return-object v0
.end method

.method public getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;->mParser:Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    return-object v0
.end method

.method public getResourceHub()Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;->mResourceHub:Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

    return-object v0
.end method

.method public getResponseAndParse(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;Lcom/box/boxjavalibv2/dao/IBoxType;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Ljava/lang/Object;
    .registers 8
    .param p1, "request"    # Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;
    .param p2, "type"    # Lcom/box/boxjavalibv2/dao/IBoxType;
    .param p3, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;->getAuth()Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->setAuth(Lcom/box/restclientv2/authorization/IBoxRequestAuth;)V

    .line 118
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;->getRestClient()Lcom/box/restclientv2/IBoxRESTClient;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/box/restclientv2/IBoxRESTClient;->execute(Lcom/box/restclientv2/requestsbase/IBoxRequest;)Lcom/box/restclientv2/responses/IBoxResponse;

    move-result-object v1

    check-cast v1, Lcom/box/restclientv2/responses/DefaultBoxResponse;

    .line 119
    .local v1, "response":Lcom/box/restclientv2/responses/DefaultBoxResponse;
    new-instance v2, Lcom/box/boxjavalibv2/responseparsers/BoxObjectResponseParser;

    invoke-virtual {p0, p2}, Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;->getClassFromType(Lcom/box/boxjavalibv2/dao/IBoxType;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Lcom/box/boxjavalibv2/responseparsers/BoxObjectResponseParser;-><init>(Ljava/lang/Class;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)V

    .line 120
    .local v2, "responseParser":Lcom/box/boxjavalibv2/responseparsers/BoxObjectResponseParser;
    new-instance v0, Lcom/box/boxjavalibv2/responseparsers/ErrorResponseParser;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/box/boxjavalibv2/responseparsers/ErrorResponseParser;-><init>(Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)V

    .line 121
    .local v0, "errorParser":Lcom/box/boxjavalibv2/responseparsers/ErrorResponseParser;
    invoke-virtual {v1, v2, v0}, Lcom/box/restclientv2/responses/DefaultBoxResponse;->parseResponse(Lcom/box/restclientv2/responseparsers/IBoxResponseParser;Lcom/box/restclientv2/responseparsers/IBoxResponseParser;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public getResponseAndParseAndTryCast(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;Lcom/box/boxjavalibv2/dao/IBoxType;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Ljava/lang/Object;
    .registers 6
    .param p1, "request"    # Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;
    .param p2, "type"    # Lcom/box/boxjavalibv2/dao/IBoxType;
    .param p3, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0, p1, p2, p3}, Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;->getResponseAndParse(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;Lcom/box/boxjavalibv2/dao/IBoxType;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    .local v0, "obj":Ljava/lang/Object;
    invoke-virtual {p0, p2, v0}, Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;->tryCastObject(Lcom/box/boxjavalibv2/dao/IBoxType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected getRestClient()Lcom/box/restclientv2/IBoxRESTClient;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;->mRestClient:Lcom/box/restclientv2/IBoxRESTClient;

    return-object v0
.end method

.method protected tryCastBoxItem(Lcom/box/boxjavalibv2/dao/BoxResourceType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "type"    # Lcom/box/boxjavalibv2/dao/BoxResourceType;
    .param p2, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/restclientv2/exceptions/BoxRestException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;->tryCastObject(Lcom/box/boxjavalibv2/dao/IBoxType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public tryCastObject(Lcom/box/boxjavalibv2/dao/IBoxType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "expectedType"    # Lcom/box/boxjavalibv2/dao/IBoxType;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/restclientv2/exceptions/BoxRestException;
        }
    .end annotation

    .prologue
    .line 129
    instance-of v1, p2, Lcom/box/boxjavalibv2/dao/BoxServerError;

    if-eqz v1, :cond_c

    .line 130
    new-instance v1, Lcom/box/boxjavalibv2/exceptions/BoxServerException;

    check-cast p2, Lcom/box/boxjavalibv2/dao/BoxServerError;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-direct {v1, p2}, Lcom/box/boxjavalibv2/exceptions/BoxServerException;-><init>(Lcom/box/boxjavalibv2/dao/BoxServerError;)V

    throw v1

    .line 132
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_c
    instance-of v1, p2, Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedStatus;

    if-eqz v1, :cond_18

    .line 133
    new-instance v1, Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedHttpStatusException;

    check-cast p2, Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedStatus;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-direct {v1, p2}, Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedHttpStatusException;-><init>(Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedStatus;)V

    throw v1

    .line 136
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_18
    invoke-virtual {p0, p1}, Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;->getClassFromType(Lcom/box/boxjavalibv2/dao/IBoxType;)Ljava/lang/Class;

    move-result-object v0

    .line 137
    .local v0, "expectedClass":Ljava/lang/Class;
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 138
    return-object p2

    .line 141
    :cond_23
    if-nez p2, :cond_42

    .line 142
    new-instance v1, Lcom/box/restclientv2/exceptions/BoxRestException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid class, expected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/box/restclientv2/exceptions/BoxRestException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_42
    new-instance v1, Lcom/box/restclientv2/exceptions/BoxRestException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid class, expected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";current:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/box/restclientv2/exceptions/BoxRestException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
