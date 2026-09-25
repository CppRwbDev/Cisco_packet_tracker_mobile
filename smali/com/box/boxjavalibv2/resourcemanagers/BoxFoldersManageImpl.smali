.class public Lcom/box/boxjavalibv2/resourcemanagers/BoxFoldersManageImpl;
.super Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;
.source "BoxFoldersManageImpl.java"

# interfaces
.implements Lcom/box/boxjavalibv2/resourcemanagers/IBoxFoldersManager;


# direct methods
.method public constructor <init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/authorization/IBoxRequestAuth;Lcom/box/restclientv2/IBoxRESTClient;)V
    .registers 6
    .param p1, "config"    # Lcom/box/boxjavalibv2/IBoxConfig;
    .param p2, "resourceHub"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;
    .param p3, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .param p4, "auth"    # Lcom/box/restclientv2/authorization/IBoxRequestAuth;
    .param p5, "restClient"    # Lcom/box/restclientv2/IBoxRESTClient;

    .prologue
    .line 50
    invoke-direct/range {p0 .. p5}, Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/authorization/IBoxRequestAuth;Lcom/box/restclientv2/IBoxRESTClient;)V

    .line 51
    return-void
.end method

.method public static getFolders(Lcom/box/boxjavalibv2/dao/BoxCollection;)Ljava/util/List;
    .registers 6
    .param p0, "collection"    # Lcom/box/boxjavalibv2/dao/BoxCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/box/boxjavalibv2/dao/BoxCollection;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/box/boxjavalibv2/dao/BoxFolder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v0, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/box/boxjavalibv2/dao/BoxFolder;>;"
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxCollection;->getEntries()Ljava/util/ArrayList;

    move-result-object v2

    .line 117
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/box/boxjavalibv2/dao/BoxTypedObject;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/box/boxjavalibv2/dao/BoxTypedObject;

    .line 118
    .local v3, "object":Lcom/box/boxjavalibv2/dao/BoxTypedObject;
    instance-of v4, v3, Lcom/box/boxjavalibv2/dao/BoxFolder;

    if-eqz v4, :cond_d

    .line 119
    check-cast v3, Lcom/box/boxjavalibv2/dao/BoxFolder;

    .end local v3    # "object":Lcom/box/boxjavalibv2/dao/BoxTypedObject;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 122
    :cond_23
    return-object v0
.end method


# virtual methods
.method public copyFolder(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemCopyRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFolder;
    .registers 4
    .param p1, "folderId"    # Ljava/lang/String;
    .param p2, "requestObject"    # Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemCopyRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 75
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FOLDER:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-super {p0, p1, p2, v0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;->copyItem(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemCopyRequestObject;Lcom/box/boxjavalibv2/dao/BoxResourceType;)Lcom/box/boxjavalibv2/dao/BoxItem;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxFolder;

    return-object v0
.end method

.method public createFolder(Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFolder;
    .registers 5
    .param p1, "requestObject"    # Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lcom/box/boxjavalibv2/requests/CreateNewFolderRequest;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFoldersManageImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFoldersManageImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/box/boxjavalibv2/requests/CreateNewFolderRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderRequestObject;)V

    .line 62
    .local v0, "request":Lcom/box/boxjavalibv2/requests/CreateNewFolderRequest;
    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FOLDER:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFoldersManageImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFoldersManageImpl;->getResponseAndParseAndTryCast(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;Lcom/box/boxjavalibv2/dao/IBoxType;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/box/boxjavalibv2/dao/BoxFolder;

    return-object v1
.end method

.method public createSharedLink(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxSharedLinkRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFolder;
    .registers 4
    .param p1, "folderId"    # Ljava/lang/String;
    .param p2, "requestObject"    # Lcom/box/boxjavalibv2/requests/requestobjects/BoxSharedLinkRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 94
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FOLDER:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-super {p0, p1, p2, v0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;->createSharedLink(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxSharedLinkRequestObject;Lcom/box/boxjavalibv2/dao/BoxResourceType;)Lcom/box/boxjavalibv2/dao/BoxItem;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxFolder;

    return-object v0
.end method

.method public deleteFolder(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderDeleteRequestObject;)V
    .registers 6
    .param p1, "folderId"    # Ljava/lang/String;
    .param p2, "requestObject"    # Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderDeleteRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/box/boxjavalibv2/requests/DeleteFolderRequest;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFoldersManageImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFoldersManageImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/box/boxjavalibv2/requests/DeleteFolderRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderDeleteRequestObject;)V

    .line 69
    .local v0, "request":Lcom/box/boxjavalibv2/requests/DeleteFolderRequest;
    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFoldersManageImpl;->executeRequestWithNoResponseBody(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;)V

    .line 70
    return-void
.end method

.method public getFolder(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFolder;
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
    .line 56
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FOLDER:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-super {p0, p1, p2, v0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;->getItem(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;Lcom/box/boxjavalibv2/dao/BoxResourceType;)Lcom/box/boxjavalibv2/dao/BoxItem;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxFolder;

    return-object v0
.end method

.method public getFolderCollaborations(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)Ljava/util/List;
    .registers 7
    .param p1, "folderId"    # Ljava/lang/String;
    .param p2, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/box/boxjavalibv2/dao/BoxCollaboration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v1, Lcom/box/boxjavalibv2/requests/GetFolderCollaborationsRequest;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFoldersManageImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v2

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFoldersManageImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/box/boxjavalibv2/requests/GetFolderCollaborationsRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V

    .line 102
    .local v1, "request":Lcom/box/boxjavalibv2/requests/GetFolderCollaborationsRequest;
    sget-object v2, Lcom/box/boxjavalibv2/dao/BoxResourceType;->COLLABORATIONS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFoldersManageImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFoldersManageImpl;->getResponseAndParseAndTryCast(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;Lcom/box/boxjavalibv2/dao/IBoxType;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxCollection;

    .line 103
    .local v0, "collection":Lcom/box/boxjavalibv2/dao/BoxCollection;
    const-class v2, Lcom/box/boxjavalibv2/dao/BoxCollaboration;

    invoke-static {v0, v2}, Lcom/box/boxjavalibv2/utils/Utils;->getTypedObjects(Lcom/box/boxjavalibv2/dao/BoxCollection;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getFolderItems(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxPagingRequestObject;)Lcom/box/boxjavalibv2/dao/BoxCollection;
    .registers 6
    .param p1, "folderId"    # Ljava/lang/String;
    .param p2, "requestObject"    # Lcom/box/boxjavalibv2/requests/requestobjects/BoxPagingRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lcom/box/boxjavalibv2/requests/GetFolderItemsRequest;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFoldersManageImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFoldersManageImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/box/boxjavalibv2/requests/GetFolderItemsRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxPagingRequestObject;)V

    .line 82
    .local v0, "request":Lcom/box/boxjavalibv2/requests/GetFolderItemsRequest;
    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ITEMS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFoldersManageImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFoldersManageImpl;->getResponseAndParseAndTryCast(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;Lcom/box/boxjavalibv2/dao/IBoxType;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/box/boxjavalibv2/dao/BoxCollection;

    return-object v1
.end method

.method public updateFolderInfo(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFolder;
    .registers 4
    .param p1, "folderId"    # Ljava/lang/String;
    .param p2, "requestObject"    # Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 88
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FOLDER:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-super {p0, p1, p2, v0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;->updateItemInfo(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRequestObject;Lcom/box/boxjavalibv2/dao/BoxResourceType;)Lcom/box/boxjavalibv2/dao/BoxItem;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxFolder;

    return-object v0
.end method
