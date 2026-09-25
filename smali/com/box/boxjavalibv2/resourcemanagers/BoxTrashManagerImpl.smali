.class public Lcom/box/boxjavalibv2/resourcemanagers/BoxTrashManagerImpl;
.super Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;
.source "BoxTrashManagerImpl.java"

# interfaces
.implements Lcom/box/boxjavalibv2/resourcemanagers/IBoxTrashManager;


# direct methods
.method public constructor <init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/authorization/IBoxRequestAuth;Lcom/box/restclientv2/IBoxRESTClient;)V
    .registers 6
    .param p1, "config"    # Lcom/box/boxjavalibv2/IBoxConfig;
    .param p2, "resourceHub"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;
    .param p3, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .param p4, "auth"    # Lcom/box/restclientv2/authorization/IBoxRequestAuth;
    .param p5, "restClient"    # Lcom/box/restclientv2/IBoxRESTClient;

    .prologue
    .line 27
    invoke-direct/range {p0 .. p5}, Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/authorization/IBoxRequestAuth;Lcom/box/restclientv2/IBoxRESTClient;)V

    .line 28
    return-void
.end method

.method private deleteTrashItem(Ljava/lang/String;Lcom/box/boxjavalibv2/dao/BoxResourceType;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V
    .registers 10
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/box/boxjavalibv2/dao/BoxResourceType;
    .param p3, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lcom/box/boxjavalibv2/requests/DeleteTrashItemRequest;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxTrashManagerImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxTrashManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/box/boxjavalibv2/requests/DeleteTrashItemRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/boxjavalibv2/dao/BoxResourceType;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V

    .line 82
    .local v0, "request":Lcom/box/boxjavalibv2/requests/DeleteTrashItemRequest;
    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxTrashManagerImpl;->executeRequestWithNoResponseBody(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;)V

    .line 83
    return-void
.end method

.method private getTrashItem(Ljava/lang/String;Lcom/box/boxjavalibv2/dao/BoxResourceType;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)Lcom/box/boxjavalibv2/dao/BoxItem;
    .registers 11
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/box/boxjavalibv2/dao/BoxResourceType;
    .param p3, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lcom/box/boxjavalibv2/requests/GetTrashItemRequest;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxTrashManagerImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxTrashManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/box/boxjavalibv2/requests/GetTrashItemRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/boxjavalibv2/dao/BoxResourceType;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V

    .line 75
    .local v0, "request":Lcom/box/boxjavalibv2/requests/GetTrashItemRequest;
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxTrashManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v1

    invoke-virtual {p0, v0, p2, v1}, Lcom/box/boxjavalibv2/resourcemanagers/BoxTrashManagerImpl;->getResponseAndParse(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;Lcom/box/boxjavalibv2/dao/IBoxType;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Ljava/lang/Object;

    move-result-object v6

    .line 76
    .local v6, "result":Ljava/lang/Object;
    invoke-virtual {p0, p2, v6}, Lcom/box/boxjavalibv2/resourcemanagers/BoxTrashManagerImpl;->tryCastBoxItem(Lcom/box/boxjavalibv2/dao/BoxResourceType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/box/boxjavalibv2/dao/BoxItem;

    return-object v1
.end method

.method private restoreTrashItem(Ljava/lang/String;Lcom/box/boxjavalibv2/dao/BoxResourceType;Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRestoreRequestObject;)Lcom/box/boxjavalibv2/dao/BoxItem;
    .registers 10
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/box/boxjavalibv2/dao/BoxResourceType;
    .param p3, "requestObject"    # Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRestoreRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Lcom/box/boxjavalibv2/requests/RestoreTrashItemRequest;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxTrashManagerImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxTrashManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/box/boxjavalibv2/requests/RestoreTrashItemRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/boxjavalibv2/dao/BoxResourceType;Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRestoreRequestObject;)V

    .line 88
    .local v0, "request":Lcom/box/boxjavalibv2/requests/RestoreTrashItemRequest;
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxTrashManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v1

    invoke-virtual {p0, v0, p2, v1}, Lcom/box/boxjavalibv2/resourcemanagers/BoxTrashManagerImpl;->getResponseAndParseAndTryCast(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;Lcom/box/boxjavalibv2/dao/IBoxType;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/box/boxjavalibv2/dao/BoxItem;

    return-object v1
.end method


# virtual methods
.method public deleteTrashFile(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 33
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FILE:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-direct {p0, p1, v0, p2}, Lcom/box/boxjavalibv2/resourcemanagers/BoxTrashManagerImpl;->deleteTrashItem(Ljava/lang/String;Lcom/box/boxjavalibv2/dao/BoxResourceType;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V

    .line 34
    return-void
.end method

.method public deleteTrashFolder(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 63
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FOLDER:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-direct {p0, p1, v0, p2}, Lcom/box/boxjavalibv2/resourcemanagers/BoxTrashManagerImpl;->deleteTrashItem(Ljava/lang/String;Lcom/box/boxjavalibv2/dao/BoxResourceType;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V

    .line 64
    return-void
.end method

.method public getTrashFile(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFile;
    .registers 4
    .param p1, "fileId"    # Ljava/lang/String;
    .param p2, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;
        }
    .end annotation

    .prologue
    .line 45
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FILE:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-direct {p0, p1, v0, p2}, Lcom/box/boxjavalibv2/resourcemanagers/BoxTrashManagerImpl;->getTrashItem(Ljava/lang/String;Lcom/box/boxjavalibv2/dao/BoxResourceType;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)Lcom/box/boxjavalibv2/dao/BoxItem;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxFile;

    return-object v0
.end method

.method public getTrashFolder(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFolder;
    .registers 4
    .param p1, "folderId"    # Ljava/lang/String;
    .param p2, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 51
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FOLDER:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-direct {p0, p1, v0, p2}, Lcom/box/boxjavalibv2/resourcemanagers/BoxTrashManagerImpl;->getTrashItem(Ljava/lang/String;Lcom/box/boxjavalibv2/dao/BoxResourceType;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)Lcom/box/boxjavalibv2/dao/BoxItem;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxFolder;

    return-object v0
.end method

.method public getTrashItems(Lcom/box/boxjavalibv2/requests/requestobjects/BoxPagingRequestObject;)Lcom/box/boxjavalibv2/dao/BoxCollection;
    .registers 5
    .param p1, "requestObject"    # Lcom/box/boxjavalibv2/requests/requestobjects/BoxPagingRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcom/box/boxjavalibv2/requests/GetFolderTrashItemsRequest;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxTrashManagerImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxTrashManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/box/boxjavalibv2/requests/GetFolderTrashItemsRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/boxjavalibv2/requests/requestobjects/BoxPagingRequestObject;)V

    .line 57
    .local v0, "request":Lcom/box/boxjavalibv2/requests/GetFolderTrashItemsRequest;
    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ITEMS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxTrashManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/box/boxjavalibv2/resourcemanagers/BoxTrashManagerImpl;->getResponseAndParseAndTryCast(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;Lcom/box/boxjavalibv2/dao/IBoxType;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/box/boxjavalibv2/dao/BoxCollection;

    return-object v1
.end method

.method public restoreTrashFile(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRestoreRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFile;
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "requestObject"    # Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRestoreRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;
        }
    .end annotation

    .prologue
    .line 39
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FILE:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-direct {p0, p1, v0, p2}, Lcom/box/boxjavalibv2/resourcemanagers/BoxTrashManagerImpl;->restoreTrashItem(Ljava/lang/String;Lcom/box/boxjavalibv2/dao/BoxResourceType;Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRestoreRequestObject;)Lcom/box/boxjavalibv2/dao/BoxItem;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxFile;

    return-object v0
.end method

.method public restoreTrashFolder(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRestoreRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFolder;
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "requestObject"    # Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRestoreRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;
        }
    .end annotation

    .prologue
    .line 69
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FOLDER:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-direct {p0, p1, v0, p2}, Lcom/box/boxjavalibv2/resourcemanagers/BoxTrashManagerImpl;->restoreTrashItem(Ljava/lang/String;Lcom/box/boxjavalibv2/dao/BoxResourceType;Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRestoreRequestObject;)Lcom/box/boxjavalibv2/dao/BoxItem;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxFolder;

    return-object v0
.end method
