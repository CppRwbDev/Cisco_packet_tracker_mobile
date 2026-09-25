.class public Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;
.super Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;
.source "BoxItemsManagerImpl.java"

# interfaces
.implements Lcom/box/boxjavalibv2/resourcemanagers/IBoxItemsManager;


# direct methods
.method public constructor <init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/authorization/IBoxRequestAuth;Lcom/box/restclientv2/IBoxRESTClient;)V
    .registers 6
    .param p1, "config"    # Lcom/box/boxjavalibv2/IBoxConfig;
    .param p2, "resourceHub"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;
    .param p3, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .param p4, "auth"    # Lcom/box/restclientv2/authorization/IBoxRequestAuth;
    .param p5, "restClient"    # Lcom/box/restclientv2/IBoxRESTClient;

    .prologue
    .line 48
    invoke-direct/range {p0 .. p5}, Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/authorization/IBoxRequestAuth;Lcom/box/restclientv2/IBoxRESTClient;)V

    .line 49
    return-void
.end method


# virtual methods
.method public copyItem(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemCopyRequestObject;Lcom/box/boxjavalibv2/dao/BoxResourceType;)Lcom/box/boxjavalibv2/dao/BoxItem;
    .registers 10
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "requestObject"    # Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemCopyRequestObject;
    .param p3, "type"    # Lcom/box/boxjavalibv2/dao/BoxResourceType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lcom/box/boxjavalibv2/requests/CopyItemRequest;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/box/boxjavalibv2/requests/CopyItemRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemCopyRequestObject;Lcom/box/boxjavalibv2/dao/BoxResourceType;)V

    .line 63
    .local v0, "request":Lcom/box/boxjavalibv2/requests/CopyItemRequest;
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v1

    invoke-virtual {p0, v0, p3, v1}, Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;->getResponseAndParseAndTryCast(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;Lcom/box/boxjavalibv2/dao/IBoxType;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/box/boxjavalibv2/dao/BoxItem;

    return-object v1
.end method

.method public createSharedLink(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxSharedLinkRequestObject;Lcom/box/boxjavalibv2/dao/BoxResourceType;)Lcom/box/boxjavalibv2/dao/BoxItem;
    .registers 10
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "requestObject"    # Lcom/box/boxjavalibv2/requests/requestobjects/BoxSharedLinkRequestObject;
    .param p3, "type"    # Lcom/box/boxjavalibv2/dao/BoxResourceType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lcom/box/boxjavalibv2/requests/CreateSharedLinkRequest;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/box/boxjavalibv2/requests/CreateSharedLinkRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxSharedLinkRequestObject;Lcom/box/boxjavalibv2/dao/BoxResourceType;)V

    .line 78
    .local v0, "request":Lcom/box/boxjavalibv2/requests/CreateSharedLinkRequest;
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v1

    invoke-virtual {p0, v0, p3, v1}, Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;->getResponseAndParseAndTryCast(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;Lcom/box/boxjavalibv2/dao/IBoxType;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/box/boxjavalibv2/dao/BoxItem;

    return-object v1
.end method

.method public getItem(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;Lcom/box/boxjavalibv2/dao/BoxResourceType;)Lcom/box/boxjavalibv2/dao/BoxItem;
    .registers 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
    .param p3, "type"    # Lcom/box/boxjavalibv2/dao/BoxResourceType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lcom/box/boxjavalibv2/requests/GetItemRequest;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/box/boxjavalibv2/requests/GetItemRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/boxjavalibv2/dao/BoxResourceType;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V

    .line 55
    .local v0, "request":Lcom/box/boxjavalibv2/requests/GetItemRequest;
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v1

    invoke-virtual {p0, v0, p3, v1}, Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;->getResponseAndParse(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;Lcom/box/boxjavalibv2/dao/IBoxType;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Ljava/lang/Object;

    move-result-object v6

    .line 56
    .local v6, "result":Ljava/lang/Object;
    invoke-virtual {p0, p3, v6}, Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;->tryCastBoxItem(Lcom/box/boxjavalibv2/dao/BoxResourceType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/box/boxjavalibv2/dao/BoxItem;

    return-object v1
.end method

.method public updateItemInfo(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRequestObject;Lcom/box/boxjavalibv2/dao/BoxResourceType;)Lcom/box/boxjavalibv2/dao/BoxItem;
    .registers 10
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "requestObject"    # Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRequestObject;
    .param p3, "type"    # Lcom/box/boxjavalibv2/dao/BoxResourceType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lcom/box/boxjavalibv2/requests/UpdateItemInfoRequest;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/box/boxjavalibv2/requests/UpdateItemInfoRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRequestObject;Lcom/box/boxjavalibv2/dao/BoxResourceType;)V

    .line 70
    .local v0, "request":Lcom/box/boxjavalibv2/requests/UpdateItemInfoRequest;
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v1

    invoke-virtual {p0, v0, p3, v1}, Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;->getResponseAndParseAndTryCast(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;Lcom/box/boxjavalibv2/dao/IBoxType;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/box/boxjavalibv2/dao/BoxItem;

    return-object v1
.end method
