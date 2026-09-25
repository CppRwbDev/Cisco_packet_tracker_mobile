.class public Lcom/box/boxjavalibv2/resourcemanagers/BoxOAuthManagerImpl;
.super Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;
.source "BoxOAuthManagerImpl.java"

# interfaces
.implements Lcom/box/boxjavalibv2/resourcemanagers/IBoxOAuthManager;


# direct methods
.method public constructor <init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/IBoxRESTClient;)V
    .registers 11
    .param p1, "config"    # Lcom/box/boxjavalibv2/IBoxConfig;
    .param p2, "resourceHub"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;
    .param p3, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .param p4, "restClient"    # Lcom/box/restclientv2/IBoxRESTClient;

    .prologue
    .line 35
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/authorization/IBoxRequestAuth;Lcom/box/restclientv2/IBoxRESTClient;)V

    .line 36
    return-void
.end method


# virtual methods
.method public createOAuth(Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;)Lcom/box/boxjavalibv2/dao/BoxOAuthToken;
    .registers 5
    .param p1, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Lcom/box/boxjavalibv2/requests/CreateOAuthRequest;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxOAuthManagerImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxOAuthManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/box/boxjavalibv2/requests/CreateOAuthRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;)V

    .line 81
    .local v0, "request":Lcom/box/boxjavalibv2/requests/CreateOAuthRequest;
    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->OAUTH_DATA:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxOAuthManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/box/boxjavalibv2/resourcemanagers/BoxOAuthManagerImpl;->getResponseAndParseAndTryCast(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;Lcom/box/boxjavalibv2/dao/IBoxType;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    return-object v1
.end method

.method public createOAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/dao/BoxOAuthToken;
    .registers 7
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "clientSecret"    # Ljava/lang/String;
    .param p4, "redirectUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {p1, p2, p3, p4}, Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;->createOAuthRequestObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;

    move-result-object v0

    .line 53
    .local v0, "obj":Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;
    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxOAuthManagerImpl;->createOAuth(Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;)Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    move-result-object v1

    return-object v1
.end method

.method public createOAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/dao/BoxOAuthToken;
    .registers 9
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "clientSecret"    # Ljava/lang/String;
    .param p4, "redirectUrl"    # Ljava/lang/String;
    .param p5, "deviceId"    # Ljava/lang/String;
    .param p6, "deviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {p1, p2, p3, p4}, Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;->createOAuthRequestObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;->setDevice(Ljava/lang/String;Ljava/lang/String;)Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;

    move-result-object v0

    .line 76
    .local v0, "obj":Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;
    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxOAuthManagerImpl;->createOAuth(Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;)Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    move-result-object v1

    return-object v1
.end method

.method public refreshOAuth(Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;)Lcom/box/boxjavalibv2/dao/BoxOAuthToken;
    .registers 5
    .param p1, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Lcom/box/boxjavalibv2/requests/RefreshOAuthRequest;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxOAuthManagerImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxOAuthManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/box/boxjavalibv2/requests/RefreshOAuthRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;)V

    .line 106
    .local v0, "request":Lcom/box/boxjavalibv2/requests/RefreshOAuthRequest;
    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->OAUTH_DATA:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxOAuthManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/box/boxjavalibv2/resourcemanagers/BoxOAuthManagerImpl;->getResponseAndParseAndTryCast(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;Lcom/box/boxjavalibv2/dao/IBoxType;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    return-object v1
.end method

.method public refreshOAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/dao/BoxOAuthToken;
    .registers 6
    .param p1, "refreshToken"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "clientSecret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {p1, p2, p3}, Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;->refreshOAuthRequestObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;

    move-result-object v0

    .line 95
    .local v0, "obj":Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;
    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxOAuthManagerImpl;->createOAuth(Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;)Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    move-result-object v1

    return-object v1
.end method

.method public refreshOAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/dao/BoxOAuthToken;
    .registers 8
    .param p1, "refreshToken"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "clientSecret"    # Ljava/lang/String;
    .param p4, "deviceId"    # Ljava/lang/String;
    .param p5, "deviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-static {p1, p2, p3}, Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;->refreshOAuthRequestObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;->setDevice(Ljava/lang/String;Ljava/lang/String;)Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;

    move-result-object v0

    .line 88
    .local v0, "obj":Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;
    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxOAuthManagerImpl;->createOAuth(Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;)Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    move-result-object v1

    return-object v1
.end method

.method public revokeOAuth(Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;)V
    .registers 5
    .param p1, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Lcom/box/boxjavalibv2/requests/RevokeOAuthRequest;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxOAuthManagerImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxOAuthManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/box/boxjavalibv2/requests/RevokeOAuthRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;)V

    .line 111
    .local v0, "request":Lcom/box/boxjavalibv2/requests/RevokeOAuthRequest;
    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxOAuthManagerImpl;->executeRequestWithNoResponseBody(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;)V

    .line 112
    return-void
.end method

.method public revokeOAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "clientSecret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {p1, p2, p3}, Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;->revokeOAuthRequestObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;

    move-result-object v0

    .line 101
    .local v0, "obj":Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;
    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxOAuthManagerImpl;->revokeOAuth(Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;)V

    .line 102
    return-void
.end method
