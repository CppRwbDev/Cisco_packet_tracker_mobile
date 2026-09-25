.class public final Lcom/box/boxjavalibv2/resourcemanagers/BoxCollaborationsManagerImpl;
.super Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;
.source "BoxCollaborationsManagerImpl.java"

# interfaces
.implements Lcom/box/boxjavalibv2/resourcemanagers/IBoxCollaborationsManager;


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
    invoke-direct/range {p0 .. p5}, Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/authorization/IBoxRequestAuth;Lcom/box/restclientv2/IBoxRESTClient;)V

    .line 52
    return-void
.end method

.method public static getCollaborations(Lcom/box/boxjavalibv2/dao/BoxCollection;)Ljava/util/List;
    .registers 6
    .param p0, "collection"    # Lcom/box/boxjavalibv2/dao/BoxCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/box/boxjavalibv2/dao/BoxCollection;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/box/boxjavalibv2/dao/BoxCollaboration;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v0, "collabs":Ljava/util/List;, "Ljava/util/List<Lcom/box/boxjavalibv2/dao/BoxCollaboration;>;"
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxCollection;->getEntries()Ljava/util/ArrayList;

    move-result-object v2

    .line 104
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

    .line 105
    .local v3, "object":Lcom/box/boxjavalibv2/dao/BoxTypedObject;
    instance-of v4, v3, Lcom/box/boxjavalibv2/dao/BoxCollaboration;

    if-eqz v4, :cond_d

    .line 106
    check-cast v3, Lcom/box/boxjavalibv2/dao/BoxCollaboration;

    .end local v3    # "object":Lcom/box/boxjavalibv2/dao/BoxTypedObject;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 109
    :cond_23
    return-object v0
.end method


# virtual methods
.method public createCollaboration(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;)Lcom/box/boxjavalibv2/dao/BoxCollaboration;
    .registers 6
    .param p1, "folderId"    # Ljava/lang/String;
    .param p2, "collabObject"    # Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lcom/box/boxjavalibv2/requests/CreateCollaborationRequest;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCollaborationsManagerImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCollaborationsManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/box/boxjavalibv2/requests/CreateCollaborationRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;)V

    .line 67
    .local v0, "request":Lcom/box/boxjavalibv2/requests/CreateCollaborationRequest;
    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->COLLABORATION:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCollaborationsManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCollaborationsManagerImpl;->getResponseAndParseAndTryCast(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;Lcom/box/boxjavalibv2/dao/IBoxType;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/box/boxjavalibv2/dao/BoxCollaboration;

    return-object v1
.end method

.method public deleteCollaboration(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V
    .registers 6
    .param p1, "collabId"    # Ljava/lang/String;
    .param p2, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lcom/box/boxjavalibv2/requests/DeleteCollaborationRequest;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCollaborationsManagerImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCollaborationsManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/box/boxjavalibv2/requests/DeleteCollaborationRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V

    .line 83
    .local v0, "request":Lcom/box/boxjavalibv2/requests/DeleteCollaborationRequest;
    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCollaborationsManagerImpl;->executeRequestWithNoResponseBody(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;)V

    .line 84
    return-void
.end method

.method public getAllCollaborations(Lcom/box/boxjavalibv2/requests/requestobjects/BoxGetAllCollabsRequestObject;)Ljava/util/List;
    .registers 6
    .param p1, "collabObject"    # Lcom/box/boxjavalibv2/requests/requestobjects/BoxGetAllCollabsRequestObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/box/boxjavalibv2/requests/requestobjects/BoxGetAllCollabsRequestObject;",
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
    .line 73
    new-instance v1, Lcom/box/boxjavalibv2/requests/GetAllCollaborationsRequest;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCollaborationsManagerImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v2

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCollaborationsManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lcom/box/boxjavalibv2/requests/GetAllCollaborationsRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/boxjavalibv2/requests/requestobjects/BoxGetAllCollabsRequestObject;)V

    .line 75
    .local v1, "request":Lcom/box/boxjavalibv2/requests/GetAllCollaborationsRequest;
    sget-object v2, Lcom/box/boxjavalibv2/dao/BoxResourceType;->COLLABORATIONS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCollaborationsManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCollaborationsManagerImpl;->getResponseAndParseAndTryCast(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;Lcom/box/boxjavalibv2/dao/IBoxType;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxCollection;

    .line 76
    .local v0, "collection":Lcom/box/boxjavalibv2/dao/BoxCollection;
    invoke-static {v0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCollaborationsManagerImpl;->getCollaborations(Lcom/box/boxjavalibv2/dao/BoxCollection;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getCollaboration(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)Lcom/box/boxjavalibv2/dao/BoxCollaboration;
    .registers 6
    .param p1, "collabId"    # Ljava/lang/String;
    .param p2, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lcom/box/boxjavalibv2/requests/GetCollaborationRequest;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCollaborationsManagerImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCollaborationsManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/box/boxjavalibv2/requests/GetCollaborationRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V

    .line 59
    .local v0, "request":Lcom/box/boxjavalibv2/requests/GetCollaborationRequest;
    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->COLLABORATION:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCollaborationsManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCollaborationsManagerImpl;->getResponseAndParseAndTryCast(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;Lcom/box/boxjavalibv2/dao/IBoxType;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/box/boxjavalibv2/dao/BoxCollaboration;

    return-object v1
.end method

.method public updateCollaboration(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;)Lcom/box/boxjavalibv2/dao/BoxCollaboration;
    .registers 6
    .param p1, "collabId"    # Ljava/lang/String;
    .param p2, "requestObject"    # Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lcom/box/boxjavalibv2/requests/UpdateCollaborationRequest;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCollaborationsManagerImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCollaborationsManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/box/boxjavalibv2/requests/UpdateCollaborationRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;)V

    .line 90
    .local v0, "request":Lcom/box/boxjavalibv2/requests/UpdateCollaborationRequest;
    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->COLLABORATION:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCollaborationsManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-super {p0, v0, v1, v2}, Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;->getResponseAndParseAndTryCast(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;Lcom/box/boxjavalibv2/dao/IBoxType;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/box/boxjavalibv2/dao/BoxCollaboration;

    return-object v1
.end method
