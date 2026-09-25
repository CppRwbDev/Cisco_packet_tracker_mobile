.class public Lcom/box/boxandroidlibv2/BoxAndroidClient;
.super Lcom/box/boxjavalibv2/BoxClient;
.source "BoxAndroidClient.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/box/boxjavalibv2/IBoxConfig;)V
    .registers 4
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "clientSecret"    # Ljava/lang/String;
    .param p3, "config"    # Lcom/box/boxjavalibv2/IBoxConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/box/boxjavalibv2/BoxClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/box/boxjavalibv2/IBoxConfig;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/boxjavalibv2/IBoxConfig;)V
    .registers 6
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "clientSecret"    # Ljava/lang/String;
    .param p3, "resourcehub"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;
    .param p4, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .param p5, "config"    # Lcom/box/boxjavalibv2/IBoxConfig;

    .prologue
    .line 58
    invoke-direct/range {p0 .. p5}, Lcom/box/boxjavalibv2/BoxClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/boxjavalibv2/IBoxConfig;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;)V
    .registers 14
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "clientSecret"    # Ljava/lang/String;
    .param p3, "hub"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;
    .param p4, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .param p5, "config"    # Lcom/box/boxjavalibv2/IBoxConfig;
    .param p6, "connectionManager"    # Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;

    .prologue
    .line 41
    invoke-static {p6}, Lcom/box/boxandroidlibv2/BoxAndroidClient;->createMonitoredRestClient(Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;)Lcom/box/restclientv2/IBoxRESTClient;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/box/boxjavalibv2/BoxClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/IBoxRESTClient;Lcom/box/boxjavalibv2/IBoxConfig;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/IBoxRESTClient;Lcom/box/boxjavalibv2/IBoxConfig;)V
    .registers 7
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "clientSecret"    # Ljava/lang/String;
    .param p3, "hub"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;
    .param p4, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .param p5, "restClient"    # Lcom/box/restclientv2/IBoxRESTClient;
    .param p6, "config"    # Lcom/box/boxjavalibv2/IBoxConfig;

    .prologue
    .line 63
    invoke-direct/range {p0 .. p6}, Lcom/box/boxjavalibv2/BoxClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/IBoxRESTClient;Lcom/box/boxjavalibv2/IBoxConfig;)V

    .line 64
    return-void
.end method


# virtual methods
.method protected createResourceHub()Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;
    .registers 2

    .prologue
    .line 73
    new-instance v0, Lcom/box/boxandroidlibv2/jsonparsing/AndroidBoxResourceHub;

    invoke-direct {v0}, Lcom/box/boxandroidlibv2/jsonparsing/AndroidBoxResourceHub;-><init>()V

    return-object v0
.end method

.method protected getOAuthTokenFromMessage(Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;)Lcom/box/boxjavalibv2/dao/BoxOAuthToken;
    .registers 4
    .param p1, "message"    # Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;

    .prologue
    .line 78
    new-instance v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;

    invoke-super {p0, p1}, Lcom/box/boxjavalibv2/BoxClient;->getOAuthTokenFromMessage(Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;)Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;-><init>(Lcom/box/boxjavalibv2/dao/BoxOAuthToken;)V

    return-object v0
.end method
