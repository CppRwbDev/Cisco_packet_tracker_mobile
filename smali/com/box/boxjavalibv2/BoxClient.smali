.class public Lcom/box/boxjavalibv2/BoxClient;
.super Lcom/box/boxjavalibv2/dao/BoxBase;
.source "BoxClient.java"

# interfaces
.implements Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/box/boxjavalibv2/BoxClient$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_AUTO_REFRESH:Z = true


# instance fields
.field private final auth:Lcom/box/restclientv2/authorization/IBoxRequestAuth;

.field private final authController:Lcom/box/boxjavalibv2/authorization/IAuthDataController;

.field private boxClientAuthListener:Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;

.field private final boxItemsManager:Lcom/box/boxjavalibv2/resourcemanagers/IBoxItemsManager;

.field private final collaborationsManager:Lcom/box/boxjavalibv2/resourcemanagers/IBoxCollaborationsManager;

.field private final commentsManager:Lcom/box/boxjavalibv2/resourcemanagers/IBoxCommentsManager;

.field private final config:Lcom/box/boxjavalibv2/IBoxConfig;

.field private final eventsManager:Lcom/box/boxjavalibv2/resourcemanagers/IBoxEventsManager;

.field private final filesManager:Lcom/box/boxjavalibv2/resourcemanagers/IBoxFilesManager;

.field private final foldersManager:Lcom/box/boxjavalibv2/resourcemanagers/IBoxFoldersManager;

.field private final groupsManager:Lcom/box/boxjavalibv2/resourcemanagers/IBoxGroupsManager;

.field private final jsonParser:Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

.field private final oauthManager:Lcom/box/boxjavalibv2/resourcemanagers/IBoxOAuthManager;

.field private final pluginResourceManagers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/box/boxjavalibv2/resourcemanagers/IBoxResourceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final resourceHub:Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

.field private final restClient:Lcom/box/restclientv2/IBoxRESTClient;

.field private final searchManager:Lcom/box/boxjavalibv2/resourcemanagers/IBoxSearchManager;

.field private final trashManager:Lcom/box/boxjavalibv2/resourcemanagers/IBoxTrashManager;

.field private final usersManager:Lcom/box/boxjavalibv2/resourcemanagers/IBoxUsersManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/box/boxjavalibv2/IBoxConfig;)V
    .registers 10
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "clientSecret"    # Ljava/lang/String;
    .param p3, "config"    # Lcom/box/boxjavalibv2/IBoxConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 173
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/box/boxjavalibv2/BoxClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/boxjavalibv2/IBoxConfig;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/boxjavalibv2/IBoxConfig;)V
    .registers 13
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "clientSecret"    # Ljava/lang/String;
    .param p3, "hub"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;
    .param p4, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .param p5, "config"    # Lcom/box/boxjavalibv2/IBoxConfig;

    .prologue
    .line 132
    invoke-static {}, Lcom/box/boxjavalibv2/BoxClient;->createRestClient()Lcom/box/restclientv2/IBoxRESTClient;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/box/boxjavalibv2/BoxClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/IBoxRESTClient;Lcom/box/boxjavalibv2/IBoxConfig;)V

    .line 133
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
    .line 116
    invoke-static {p6}, Lcom/box/boxjavalibv2/BoxClient;->createMonitoredRestClient(Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;)Lcom/box/restclientv2/IBoxRESTClient;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/box/boxjavalibv2/BoxClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/IBoxRESTClient;Lcom/box/boxjavalibv2/IBoxConfig;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/IBoxRESTClient;Lcom/box/boxjavalibv2/IBoxConfig;)V
    .registers 13
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "clientSecret"    # Ljava/lang/String;
    .param p3, "hub"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;
    .param p4, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .param p5, "restClient"    # Lcom/box/restclientv2/IBoxRESTClient;
    .param p6, "config"    # Lcom/box/boxjavalibv2/IBoxConfig;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxBase;-><init>()V

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->pluginResourceManagers:Ljava/util/Map;

    .line 151
    if-nez p3, :cond_10

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->createResourceHub()Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

    move-result-object p3

    .end local p3    # "hub":Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;
    :cond_10
    iput-object p3, p0, Lcom/box/boxjavalibv2/BoxClient;->resourceHub:Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

    .line 152
    if-nez p4, :cond_1a

    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->resourceHub:Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/BoxClient;->createJSONParser(Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;)Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object p4

    .end local p4    # "parser":Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    :cond_1a
    iput-object p4, p0, Lcom/box/boxjavalibv2/BoxClient;->jsonParser:Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    .line 153
    iput-object p5, p0, Lcom/box/boxjavalibv2/BoxClient;->restClient:Lcom/box/restclientv2/IBoxRESTClient;

    .line 154
    if-nez p6, :cond_29

    new-instance v0, Lcom/box/boxjavalibv2/BoxConfigBuilder;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/BoxConfigBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/BoxConfigBuilder;->build()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object p6

    .end local p6    # "config":Lcom/box/boxjavalibv2/IBoxConfig;
    :cond_29
    iput-object p6, p0, Lcom/box/boxjavalibv2/BoxClient;->config:Lcom/box/boxjavalibv2/IBoxConfig;

    .line 155
    invoke-virtual {p0, p1, p2}, Lcom/box/boxjavalibv2/BoxClient;->createAuthDataController(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/authorization/IAuthDataController;

    move-result-object v0

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->authController:Lcom/box/boxjavalibv2/authorization/IAuthDataController;

    .line 156
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->authController:Lcom/box/boxjavalibv2/authorization/IAuthDataController;

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/BoxClient;->createAuthorization(Lcom/box/boxjavalibv2/authorization/IAuthDataController;)Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->auth:Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    .line 158
    new-instance v0, Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getResourceHub()Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

    move-result-object v2

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v3

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getAuth()Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    move-result-object v4

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getRestClient()Lcom/box/restclientv2/IBoxRESTClient;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/authorization/IBoxRequestAuth;Lcom/box/restclientv2/IBoxRESTClient;)V

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->boxItemsManager:Lcom/box/boxjavalibv2/resourcemanagers/IBoxItemsManager;

    .line 159
    new-instance v0, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getResourceHub()Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

    move-result-object v2

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v3

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getAuth()Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    move-result-object v4

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getRestClient()Lcom/box/restclientv2/IBoxRESTClient;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/authorization/IBoxRequestAuth;Lcom/box/restclientv2/IBoxRESTClient;)V

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->filesManager:Lcom/box/boxjavalibv2/resourcemanagers/IBoxFilesManager;

    .line 160
    new-instance v0, Lcom/box/boxjavalibv2/resourcemanagers/BoxFoldersManageImpl;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getResourceHub()Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

    move-result-object v2

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v3

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getAuth()Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    move-result-object v4

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getRestClient()Lcom/box/restclientv2/IBoxRESTClient;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFoldersManageImpl;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/authorization/IBoxRequestAuth;Lcom/box/restclientv2/IBoxRESTClient;)V

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->foldersManager:Lcom/box/boxjavalibv2/resourcemanagers/IBoxFoldersManager;

    .line 161
    new-instance v0, Lcom/box/boxjavalibv2/resourcemanagers/BoxSearchManagerImpl;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getResourceHub()Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

    move-result-object v2

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v3

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getAuth()Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    move-result-object v4

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getRestClient()Lcom/box/restclientv2/IBoxRESTClient;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/box/boxjavalibv2/resourcemanagers/BoxSearchManagerImpl;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/authorization/IBoxRequestAuth;Lcom/box/restclientv2/IBoxRESTClient;)V

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->searchManager:Lcom/box/boxjavalibv2/resourcemanagers/IBoxSearchManager;

    .line 162
    new-instance v0, Lcom/box/boxjavalibv2/resourcemanagers/BoxEventsManagerImpl;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getResourceHub()Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

    move-result-object v2

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v3

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getAuth()Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    move-result-object v4

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getRestClient()Lcom/box/restclientv2/IBoxRESTClient;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/box/boxjavalibv2/resourcemanagers/BoxEventsManagerImpl;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/authorization/IBoxRequestAuth;Lcom/box/restclientv2/IBoxRESTClient;)V

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->eventsManager:Lcom/box/boxjavalibv2/resourcemanagers/IBoxEventsManager;

    .line 163
    new-instance v0, Lcom/box/boxjavalibv2/resourcemanagers/BoxCollaborationsManagerImpl;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getResourceHub()Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

    move-result-object v2

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v3

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getAuth()Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    move-result-object v4

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getRestClient()Lcom/box/restclientv2/IBoxRESTClient;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCollaborationsManagerImpl;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/authorization/IBoxRequestAuth;Lcom/box/restclientv2/IBoxRESTClient;)V

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->collaborationsManager:Lcom/box/boxjavalibv2/resourcemanagers/IBoxCollaborationsManager;

    .line 164
    new-instance v0, Lcom/box/boxjavalibv2/resourcemanagers/BoxCommentsManagerImpl;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getResourceHub()Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

    move-result-object v2

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v3

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getAuth()Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    move-result-object v4

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getRestClient()Lcom/box/restclientv2/IBoxRESTClient;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCommentsManagerImpl;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/authorization/IBoxRequestAuth;Lcom/box/restclientv2/IBoxRESTClient;)V

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->commentsManager:Lcom/box/boxjavalibv2/resourcemanagers/IBoxCommentsManager;

    .line 165
    new-instance v0, Lcom/box/boxjavalibv2/resourcemanagers/BoxUsersManagerImpl;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getResourceHub()Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

    move-result-object v2

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v3

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getAuth()Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    move-result-object v4

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getRestClient()Lcom/box/restclientv2/IBoxRESTClient;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/box/boxjavalibv2/resourcemanagers/BoxUsersManagerImpl;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/authorization/IBoxRequestAuth;Lcom/box/restclientv2/IBoxRESTClient;)V

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->usersManager:Lcom/box/boxjavalibv2/resourcemanagers/IBoxUsersManager;

    .line 166
    new-instance v0, Lcom/box/boxjavalibv2/resourcemanagers/BoxOAuthManagerImpl;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getResourceHub()Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

    move-result-object v2

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v3

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getRestClient()Lcom/box/restclientv2/IBoxRESTClient;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/box/boxjavalibv2/resourcemanagers/BoxOAuthManagerImpl;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/IBoxRESTClient;)V

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->oauthManager:Lcom/box/boxjavalibv2/resourcemanagers/IBoxOAuthManager;

    .line 167
    new-instance v0, Lcom/box/boxjavalibv2/resourcemanagers/BoxGroupsManagerImpl;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getResourceHub()Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

    move-result-object v2

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v3

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getAuth()Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    move-result-object v4

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getRestClient()Lcom/box/restclientv2/IBoxRESTClient;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/box/boxjavalibv2/resourcemanagers/BoxGroupsManagerImpl;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/authorization/IBoxRequestAuth;Lcom/box/restclientv2/IBoxRESTClient;)V

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->groupsManager:Lcom/box/boxjavalibv2/resourcemanagers/IBoxGroupsManager;

    .line 168
    new-instance v0, Lcom/box/boxjavalibv2/resourcemanagers/BoxTrashManagerImpl;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getResourceHub()Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

    move-result-object v2

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v3

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getAuth()Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    move-result-object v4

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getRestClient()Lcom/box/restclientv2/IBoxRESTClient;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/box/boxjavalibv2/resourcemanagers/BoxTrashManagerImpl;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/authorization/IBoxRequestAuth;Lcom/box/restclientv2/IBoxRESTClient;)V

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->trashManager:Lcom/box/boxjavalibv2/resourcemanagers/IBoxTrashManager;

    .line 169
    return-void
.end method

.method protected static createMonitoredRestClient(Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;)Lcom/box/restclientv2/IBoxRESTClient;
    .registers 2
    .param p0, "connectionManager"    # Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;

    .prologue
    .line 577
    new-instance v0, Lcom/box/boxjavalibv2/BoxRESTClient;

    invoke-direct {v0, p0}, Lcom/box/boxjavalibv2/BoxRESTClient;-><init>(Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;)V

    return-object v0
.end method

.method protected static createRestClient()Lcom/box/restclientv2/IBoxRESTClient;
    .registers 1

    .prologue
    .line 573
    new-instance v0, Lcom/box/boxjavalibv2/BoxRESTClient;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/BoxRESTClient;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addOAuthRefreshListener(Lcom/box/boxjavalibv2/authorization/OAuthRefreshListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/box/boxjavalibv2/authorization/OAuthRefreshListener;

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getOAuthDataController()Lcom/box/boxjavalibv2/authorization/OAuthDataController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->addOAuthRefreshListener(Lcom/box/boxjavalibv2/authorization/OAuthRefreshListener;)V

    .line 247
    return-void
.end method

.method public authenticate(Lcom/box/boxjavalibv2/authorization/IAuthFlowUI;ZLcom/box/boxjavalibv2/authorization/IAuthFlowListener;)V
    .registers 4
    .param p1, "authFlowUI"    # Lcom/box/boxjavalibv2/authorization/IAuthFlowUI;
    .param p2, "autoRefreshOAuth"    # Z
    .param p3, "listener"    # Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;

    .prologue
    .line 491
    invoke-virtual {p0, p2}, Lcom/box/boxjavalibv2/BoxClient;->setAutoRefreshOAuth(Z)V

    .line 492
    invoke-virtual {p0, p3}, Lcom/box/boxjavalibv2/BoxClient;->setBoxClientAuthListener(Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;)V

    .line 493
    invoke-interface {p1, p0}, Lcom/box/boxjavalibv2/authorization/IAuthFlowUI;->authenticate(Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;)V

    .line 494
    return-void
.end method

.method public declared-synchronized authenticate(Lcom/box/boxjavalibv2/dao/IAuthData;)V
    .registers 5
    .param p1, "authData"    # Lcom/box/boxjavalibv2/dao/IAuthData;

    .prologue
    .line 468
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getOAuthDataController()Lcom/box/boxjavalibv2/authorization/OAuthDataController;

    move-result-object v1

    .line 469
    .local v1, "oauthController":Lcom/box/boxjavalibv2/authorization/OAuthDataController;
    move-object v0, p1

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->setOAuthData(Lcom/box/boxjavalibv2/dao/BoxOAuthToken;)V

    .line 470
    if-eqz p1, :cond_15

    .line 471
    sget-object v2, Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;->AVAILABLE:Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    invoke-virtual {v1, v2}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->setTokenState(Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_1b

    .line 475
    :goto_13
    monitor-exit p0

    return-void

    .line 473
    :cond_15
    :try_start_15
    sget-object v2, Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;->PRE_CREATION:Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    invoke-virtual {v1, v2}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->setTokenState(Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1b

    goto :goto_13

    .line 468
    .end local v1    # "oauthController":Lcom/box/boxjavalibv2/authorization/OAuthDataController;
    :catchall_1b
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public authenticateFromSecureStorage(Lcom/box/boxjavalibv2/authorization/IAuthSecureStorage;)V
    .registers 3
    .param p1, "storage"    # Lcom/box/boxjavalibv2/authorization/IAuthSecureStorage;

    .prologue
    .line 275
    invoke-interface {p1}, Lcom/box/boxjavalibv2/authorization/IAuthSecureStorage;->getAuth()Lcom/box/boxjavalibv2/dao/IAuthData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/BoxClient;->authenticate(Lcom/box/boxjavalibv2/dao/IAuthData;)V

    .line 276
    return-void
.end method

.method public clearBoxClientAuthListener()V
    .registers 2

    .prologue
    .line 620
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/BoxClient;->setBoxClientAuthListener(Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;)V

    .line 621
    return-void
.end method

.method protected createAuthDataController(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/authorization/IAuthDataController;
    .registers 5
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "clientSecret"    # Ljava/lang/String;

    .prologue
    .line 597
    new-instance v0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;-><init>(Lcom/box/boxjavalibv2/BoxClient;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected createAuthorization(Lcom/box/boxjavalibv2/authorization/IAuthDataController;)Lcom/box/restclientv2/authorization/IBoxRequestAuth;
    .registers 4
    .param p1, "controller"    # Lcom/box/boxjavalibv2/authorization/IAuthDataController;

    .prologue
    .line 604
    new-instance v1, Lcom/box/boxjavalibv2/authorization/OAuthAuthorization;

    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->authController:Lcom/box/boxjavalibv2/authorization/IAuthDataController;

    check-cast v0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;

    invoke-direct {v1, v0}, Lcom/box/boxjavalibv2/authorization/OAuthAuthorization;-><init>(Lcom/box/boxjavalibv2/authorization/OAuthDataController;)V

    return-object v1
.end method

.method protected createJSONParser(Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;)Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .registers 3
    .param p1, "resourceHub"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

    .prologue
    .line 542
    new-instance v0, Lcom/box/boxjavalibv2/jsonparsing/BoxJSONParser;

    invoke-direct {v0, p1}, Lcom/box/boxjavalibv2/jsonparsing/BoxJSONParser;-><init>(Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;)V

    return-object v0
.end method

.method protected createResourceHub()Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;
    .registers 2

    .prologue
    .line 532
    new-instance v0, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub;-><init>()V

    return-object v0
.end method

.method public getAuth()Lcom/box/restclientv2/authorization/IBoxRequestAuth;
    .registers 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->auth:Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    return-object v0
.end method

.method public getAuthData()Lcom/box/boxjavalibv2/dao/BoxOAuthToken;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getOAuthDataController()Lcom/box/boxjavalibv2/authorization/OAuthDataController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->getAuthData()Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    move-result-object v0

    return-object v0
.end method

.method public getAuthState()Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;
    .registers 2

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getOAuthDataController()Lcom/box/boxjavalibv2/authorization/OAuthDataController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->getTokenState()Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    move-result-object v0

    return-object v0
.end method

.method protected getBoxClientAuthenticationListener()Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;
    .registers 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->boxClientAuthListener:Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;

    return-object v0
.end method

.method public getBoxItemsManager()Lcom/box/boxjavalibv2/resourcemanagers/IBoxItemsManager;
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->boxItemsManager:Lcom/box/boxjavalibv2/resourcemanagers/IBoxItemsManager;

    return-object v0
.end method

.method public getCollaborationsManager()Lcom/box/boxjavalibv2/resourcemanagers/IBoxCollaborationsManager;
    .registers 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->collaborationsManager:Lcom/box/boxjavalibv2/resourcemanagers/IBoxCollaborationsManager;

    return-object v0
.end method

.method public getCommentsManager()Lcom/box/boxjavalibv2/resourcemanagers/IBoxCommentsManager;
    .registers 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->commentsManager:Lcom/box/boxjavalibv2/resourcemanagers/IBoxCommentsManager;

    return-object v0
.end method

.method public getConfig()Lcom/box/boxjavalibv2/IBoxConfig;
    .registers 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->config:Lcom/box/boxjavalibv2/IBoxConfig;

    return-object v0
.end method

.method public getEventsManager()Lcom/box/boxjavalibv2/resourcemanagers/IBoxEventsManager;
    .registers 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->eventsManager:Lcom/box/boxjavalibv2/resourcemanagers/IBoxEventsManager;

    return-object v0
.end method

.method public getFilesManager()Lcom/box/boxjavalibv2/resourcemanagers/IBoxFilesManager;
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->filesManager:Lcom/box/boxjavalibv2/resourcemanagers/IBoxFilesManager;

    return-object v0
.end method

.method public getFoldersManager()Lcom/box/boxjavalibv2/resourcemanagers/IBoxFoldersManager;
    .registers 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->foldersManager:Lcom/box/boxjavalibv2/resourcemanagers/IBoxFoldersManager;

    return-object v0
.end method

.method public getGroupsManager()Lcom/box/boxjavalibv2/resourcemanagers/IBoxGroupsManager;
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->groupsManager:Lcom/box/boxjavalibv2/resourcemanagers/IBoxGroupsManager;

    return-object v0
.end method

.method public getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .registers 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->jsonParser:Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    return-object v0
.end method

.method public getOAuthDataController()Lcom/box/boxjavalibv2/authorization/OAuthDataController;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->authController:Lcom/box/boxjavalibv2/authorization/IAuthDataController;

    check-cast v0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;

    return-object v0
.end method

.method public getOAuthManager()Lcom/box/boxjavalibv2/resourcemanagers/IBoxOAuthManager;
    .registers 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->oauthManager:Lcom/box/boxjavalibv2/resourcemanagers/IBoxOAuthManager;

    return-object v0
.end method

.method protected getOAuthTokenFromMessage(Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;)Lcom/box/boxjavalibv2/dao/BoxOAuthToken;
    .registers 3
    .param p1, "message"    # Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;

    .prologue
    .line 661
    invoke-interface {p1}, Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    return-object v0
.end method

.method public getPluginManager(Ljava/lang/String;)Lcom/box/boxjavalibv2/resourcemanagers/IBoxResourceManager;
    .registers 3
    .param p1, "pluginManagerKey"    # Ljava/lang/String;

    .prologue
    .line 415
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->pluginResourceManagers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/resourcemanagers/IBoxResourceManager;

    return-object v0
.end method

.method public getResourceHub()Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;
    .registers 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->resourceHub:Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

    return-object v0
.end method

.method public getResourceManagerWithSharedLinkAuth(Lcom/box/boxjavalibv2/dao/BoxResourceType;Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/resourcemanagers/IBoxResourceManager;
    .registers 6
    .param p1, "type"    # Lcom/box/boxjavalibv2/dao/BoxResourceType;
    .param p2, "sharedLink"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 399
    sget-object v0, Lcom/box/boxjavalibv2/BoxClient$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    invoke-virtual {p1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    .line 407
    new-instance v0, Lorg/apache/commons/lang/NotImplementedException;

    invoke-direct {v0}, Lorg/apache/commons/lang/NotImplementedException;-><init>()V

    throw v0

    .line 401
    :pswitch_11
    invoke-virtual {p0, p2, p3}, Lcom/box/boxjavalibv2/BoxClient;->getSharedFilesManager(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/resourcemanagers/IBoxFilesManager;

    move-result-object v0

    .line 405
    :goto_15
    return-object v0

    .line 403
    :pswitch_16
    invoke-virtual {p0, p2, p3}, Lcom/box/boxjavalibv2/BoxClient;->getSharedFoldersManager(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/resourcemanagers/IBoxFoldersManager;

    move-result-object v0

    goto :goto_15

    .line 405
    :pswitch_1b
    invoke-virtual {p0, p2, p3}, Lcom/box/boxjavalibv2/BoxClient;->getSharedCommentsManager(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/resourcemanagers/IBoxCommentsManager;

    move-result-object v0

    goto :goto_15

    .line 399
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_11
        :pswitch_16
        :pswitch_1b
    .end packed-switch
.end method

.method protected getRestClient()Lcom/box/restclientv2/IBoxRESTClient;
    .registers 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->restClient:Lcom/box/restclientv2/IBoxRESTClient;

    return-object v0
.end method

.method public getSearchManager()Lcom/box/boxjavalibv2/resourcemanagers/IBoxSearchManager;
    .registers 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->searchManager:Lcom/box/boxjavalibv2/resourcemanagers/IBoxSearchManager;

    return-object v0
.end method

.method public getSharedBoxItemsManager(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/resourcemanagers/IBoxItemsManager;
    .registers 9
    .param p1, "sharedLink"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 310
    new-instance v0, Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getResourceHub()Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

    move-result-object v2

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v3

    invoke-virtual {p0, p1, p2}, Lcom/box/boxjavalibv2/BoxClient;->getSharedItemAuth(Ljava/lang/String;Ljava/lang/String;)Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    move-result-object v4

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getRestClient()Lcom/box/restclientv2/IBoxRESTClient;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/authorization/IBoxRequestAuth;Lcom/box/restclientv2/IBoxRESTClient;)V

    return-object v0
.end method

.method public getSharedCommentsManager(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/resourcemanagers/IBoxCommentsManager;
    .registers 9
    .param p1, "sharedLink"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 387
    new-instance v0, Lcom/box/boxjavalibv2/resourcemanagers/BoxCommentsManagerImpl;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getResourceHub()Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

    move-result-object v2

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v3

    invoke-virtual {p0, p1, p2}, Lcom/box/boxjavalibv2/BoxClient;->getSharedItemAuth(Ljava/lang/String;Ljava/lang/String;)Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    move-result-object v4

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getRestClient()Lcom/box/restclientv2/IBoxRESTClient;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCommentsManagerImpl;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/authorization/IBoxRequestAuth;Lcom/box/restclientv2/IBoxRESTClient;)V

    return-object v0
.end method

.method public getSharedFilesManager(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/resourcemanagers/IBoxFilesManager;
    .registers 9
    .param p1, "sharedLink"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 361
    new-instance v0, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getResourceHub()Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

    move-result-object v2

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v3

    invoke-virtual {p0, p1, p2}, Lcom/box/boxjavalibv2/BoxClient;->getSharedItemAuth(Ljava/lang/String;Ljava/lang/String;)Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    move-result-object v4

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getRestClient()Lcom/box/restclientv2/IBoxRESTClient;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/authorization/IBoxRequestAuth;Lcom/box/restclientv2/IBoxRESTClient;)V

    return-object v0
.end method

.method public getSharedFoldersManager(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/resourcemanagers/IBoxFoldersManager;
    .registers 9
    .param p1, "sharedLink"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 374
    new-instance v0, Lcom/box/boxjavalibv2/resourcemanagers/BoxFoldersManageImpl;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getResourceHub()Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

    move-result-object v2

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v3

    invoke-virtual {p0, p1, p2}, Lcom/box/boxjavalibv2/BoxClient;->getSharedItemAuth(Ljava/lang/String;Ljava/lang/String;)Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    move-result-object v4

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getRestClient()Lcom/box/restclientv2/IBoxRESTClient;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFoldersManageImpl;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/authorization/IBoxRequestAuth;Lcom/box/restclientv2/IBoxRESTClient;)V

    return-object v0
.end method

.method public getSharedItemAuth(Ljava/lang/String;Ljava/lang/String;)Lcom/box/restclientv2/authorization/IBoxRequestAuth;
    .registers 5
    .param p1, "sharedLink"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 590
    new-instance v1, Lcom/box/boxjavalibv2/authorization/SharedLinkAuthorization;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getAuth()Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/authorization/OAuthAuthorization;

    invoke-direct {v1, v0, p1, p2}, Lcom/box/boxjavalibv2/authorization/SharedLinkAuthorization;-><init>(Lcom/box/boxjavalibv2/authorization/OAuthAuthorization;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getSharedItemsManager(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/resourcemanagers/IBoxSharedItemsManager;
    .registers 9
    .param p1, "sharedLink"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 348
    new-instance v0, Lcom/box/boxjavalibv2/resourcemanagers/BoxSharedItemsManagerImpl;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getResourceHub()Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

    move-result-object v2

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v3

    invoke-virtual {p0, p1, p2}, Lcom/box/boxjavalibv2/BoxClient;->getSharedItemAuth(Ljava/lang/String;Ljava/lang/String;)Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    move-result-object v4

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getRestClient()Lcom/box/restclientv2/IBoxRESTClient;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/box/boxjavalibv2/resourcemanagers/BoxSharedItemsManagerImpl;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/authorization/IBoxRequestAuth;Lcom/box/restclientv2/IBoxRESTClient;)V

    return-object v0
.end method

.method public getTrashManager()Lcom/box/boxjavalibv2/resourcemanagers/IBoxTrashManager;
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->trashManager:Lcom/box/boxjavalibv2/resourcemanagers/IBoxTrashManager;

    return-object v0
.end method

.method public getUsersManager()Lcom/box/boxjavalibv2/resourcemanagers/IBoxUsersManager;
    .registers 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->usersManager:Lcom/box/boxjavalibv2/resourcemanagers/IBoxUsersManager;

    return-object v0
.end method

.method public isAuthenticated()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 198
    :try_start_1
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getOAuthDataController()Lcom/box/boxjavalibv2/authorization/OAuthDataController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->getTokenState()Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    move-result-object v2

    sget-object v3, Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;->FAIL:Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    if-eq v2, v3, :cond_14

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getAuthData()Lcom/box/boxjavalibv2/dao/BoxOAuthToken;
    :try_end_10
    .catch Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException; {:try_start_1 .. :try_end_10} :catch_15

    move-result-object v2

    if-eqz v2, :cond_14

    const/4 v1, 0x1

    .line 200
    :cond_14
    :goto_14
    return v1

    .line 199
    :catch_15
    move-exception v0

    .line 200
    .local v0, "e":Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
    goto :goto_14
.end method

.method public onAuthFlowEvent(Lcom/box/boxjavalibv2/authorization/IAuthEvent;Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;)V
    .registers 6
    .param p1, "event"    # Lcom/box/boxjavalibv2/authorization/IAuthEvent;
    .param p2, "message"    # Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;

    .prologue
    .line 625
    move-object v1, p1

    check-cast v1, Lcom/box/boxjavalibv2/events/OAuthEvent;

    .line 626
    .local v1, "oe":Lcom/box/boxjavalibv2/events/OAuthEvent;
    sget-object v2, Lcom/box/boxjavalibv2/events/OAuthEvent;->OAUTH_CREATED:Lcom/box/boxjavalibv2/events/OAuthEvent;

    if-ne v1, v2, :cond_18

    .line 627
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getAuth()Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    move-result-object v0

    .line 629
    .local v0, "auth":Lcom/box/restclientv2/authorization/IBoxRequestAuth;
    instance-of v2, v0, Lcom/box/boxjavalibv2/authorization/IOAuthAuthorization;

    if-eqz v2, :cond_18

    .line 630
    check-cast v0, Lcom/box/boxjavalibv2/authorization/IOAuthAuthorization;

    .end local v0    # "auth":Lcom/box/restclientv2/authorization/IBoxRequestAuth;
    invoke-virtual {p0, p2}, Lcom/box/boxjavalibv2/BoxClient;->getOAuthTokenFromMessage(Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;)Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/box/boxjavalibv2/authorization/IOAuthAuthorization;->setOAuthData(Lcom/box/boxjavalibv2/dao/BoxOAuthToken;)V

    .line 634
    :cond_18
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getBoxClientAuthenticationListener()Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 635
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getBoxClientAuthenticationListener()Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;->onAuthFlowEvent(Lcom/box/boxjavalibv2/authorization/IAuthEvent;Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;)V

    .line 636
    sget-object v2, Lcom/box/boxjavalibv2/events/OAuthEvent;->OAUTH_CREATED:Lcom/box/boxjavalibv2/events/OAuthEvent;

    if-ne v1, v2, :cond_2c

    .line 638
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->clearBoxClientAuthListener()V

    .line 641
    :cond_2c
    return-void
.end method

.method public onAuthFlowException(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 652
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getBoxClientAuthenticationListener()Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 653
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getBoxClientAuthenticationListener()Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;->onAuthFlowException(Ljava/lang/Exception;)V

    .line 656
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->clearBoxClientAuthListener()V

    .line 658
    :cond_10
    return-void
.end method

.method public onAuthFlowMessage(Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;)V
    .registers 3
    .param p1, "message"    # Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getBoxClientAuthenticationListener()Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 646
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getBoxClientAuthenticationListener()Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;->onAuthFlowMessage(Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;)V

    .line 648
    :cond_d
    return-void
.end method

.method public pluginResourceManager(Ljava/lang/String;Lcom/box/boxjavalibv2/resourcemanagers/IPluginResourceManagerBuilder;)Lcom/box/boxjavalibv2/resourcemanagers/IBoxResourceManager;
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "builder"    # Lcom/box/boxjavalibv2/resourcemanagers/IPluginResourceManagerBuilder;

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getResourceHub()Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

    move-result-object v2

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v3

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getAuth()Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    move-result-object v4

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getRestClient()Lcom/box/restclientv2/IBoxRESTClient;

    move-result-object v5

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/box/boxjavalibv2/resourcemanagers/IPluginResourceManagerBuilder;->build(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/authorization/IBoxRequestAuth;Lcom/box/restclientv2/IBoxRESTClient;)Lcom/box/boxjavalibv2/resourcemanagers/IBoxResourceManager;

    move-result-object v6

    .line 187
    .local v6, "manager":Lcom/box/boxjavalibv2/resourcemanagers/IBoxResourceManager;
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxClient;->pluginResourceManagers:Ljava/util/Map;

    invoke-interface {v0, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    return-object v6
.end method

.method public saveAuth(Lcom/box/boxjavalibv2/authorization/IAuthSecureStorage;)V
    .registers 3
    .param p1, "storage"    # Lcom/box/boxjavalibv2/authorization/IAuthSecureStorage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getAuthData()Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/box/boxjavalibv2/authorization/IAuthSecureStorage;->saveAuth(Lcom/box/boxjavalibv2/dao/IAuthData;)V

    .line 267
    return-void
.end method

.method public setAutoRefreshOAuth(Z)V
    .registers 3
    .param p1, "autoRefresh"    # Z

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getOAuthDataController()Lcom/box/boxjavalibv2/authorization/OAuthDataController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->setAutoRefreshOAuth(Z)V

    .line 211
    return-void
.end method

.method protected setBoxClientAuthListener(Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/box/boxjavalibv2/BoxClient;->boxClientAuthListener:Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;

    .line 506
    return-void
.end method

.method public setConnectionOpen(Z)V
    .registers 3
    .param p1, "connectionOpen"    # Z

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getRestClient()Lcom/box/restclientv2/IBoxRESTClient;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/BoxRESTClient;

    invoke-virtual {v0, p1}, Lcom/box/boxjavalibv2/BoxRESTClient;->setConnectionOpen(Z)V

    .line 221
    return-void
.end method

.method public setConnectionTimeOut(I)V
    .registers 3
    .param p1, "timeOut"    # I

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxClient;->getRestClient()Lcom/box/restclientv2/IBoxRESTClient;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/BoxRESTClient;

    invoke-virtual {v0, p1}, Lcom/box/boxjavalibv2/BoxRESTClient;->setConnectionTimeOut(I)V

    .line 230
    return-void
.end method
