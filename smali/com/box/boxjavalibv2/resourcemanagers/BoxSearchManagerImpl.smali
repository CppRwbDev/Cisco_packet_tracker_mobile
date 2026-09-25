.class public Lcom/box/boxjavalibv2/resourcemanagers/BoxSearchManagerImpl;
.super Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;
.source "BoxSearchManagerImpl.java"

# interfaces
.implements Lcom/box/boxjavalibv2/resourcemanagers/IBoxSearchManager;


# direct methods
.method public constructor <init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/authorization/IBoxRequestAuth;Lcom/box/restclientv2/IBoxRESTClient;)V
    .registers 6
    .param p1, "config"    # Lcom/box/boxjavalibv2/IBoxConfig;
    .param p2, "resourceHub"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;
    .param p3, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .param p4, "auth"    # Lcom/box/restclientv2/authorization/IBoxRequestAuth;
    .param p5, "restClient"    # Lcom/box/restclientv2/IBoxRESTClient;

    .prologue
    .line 34
    invoke-direct/range {p0 .. p5}, Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/authorization/IBoxRequestAuth;Lcom/box/restclientv2/IBoxRESTClient;)V

    .line 35
    return-void
.end method


# virtual methods
.method public search(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)Lcom/box/boxjavalibv2/dao/BoxCollection;
    .registers 6
    .param p1, "searchQuery"    # Ljava/lang/String;
    .param p2, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcom/box/boxjavalibv2/requests/SearchRequest;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxSearchManagerImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxSearchManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/box/boxjavalibv2/requests/SearchRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V

    .line 41
    .local v0, "request":Lcom/box/boxjavalibv2/requests/SearchRequest;
    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ITEMS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxSearchManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/box/boxjavalibv2/resourcemanagers/BoxSearchManagerImpl;->getResponseAndParseAndTryCast(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;Lcom/box/boxjavalibv2/dao/IBoxType;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/box/boxjavalibv2/dao/BoxCollection;

    return-object v1
.end method
