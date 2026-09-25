.class public final Lcom/box/boxjavalibv2/resourcemanagers/BoxCommentsManagerImpl;
.super Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;
.source "BoxCommentsManagerImpl.java"

# interfaces
.implements Lcom/box/boxjavalibv2/resourcemanagers/IBoxCommentsManager;


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
    invoke-direct/range {p0 .. p5}, Lcom/box/boxjavalibv2/resourcemanagers/AbstractBoxResourceManager;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/authorization/IBoxRequestAuth;Lcom/box/restclientv2/IBoxRESTClient;)V

    .line 51
    return-void
.end method

.method public static getComments(Lcom/box/boxjavalibv2/dao/BoxCollection;)Ljava/util/List;
    .registers 6
    .param p0, "collection"    # Lcom/box/boxjavalibv2/dao/BoxCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/box/boxjavalibv2/dao/BoxCollection;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/box/boxjavalibv2/dao/BoxComment;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v0, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/box/boxjavalibv2/dao/BoxComment;>;"
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxCollection;->getEntries()Ljava/util/ArrayList;

    move-result-object v2

    .line 98
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

    .line 99
    .local v3, "object":Lcom/box/boxjavalibv2/dao/BoxTypedObject;
    instance-of v4, v3, Lcom/box/boxjavalibv2/dao/BoxComment;

    if-eqz v4, :cond_d

    .line 100
    check-cast v3, Lcom/box/boxjavalibv2/dao/BoxComment;

    .end local v3    # "object":Lcom/box/boxjavalibv2/dao/BoxTypedObject;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 103
    :cond_23
    return-object v0
.end method


# virtual methods
.method public addComment(Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;)Lcom/box/boxjavalibv2/dao/BoxComment;
    .registers 5
    .param p1, "requestObject"    # Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/box/boxjavalibv2/requests/CreateCommentRequest;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCommentsManagerImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCommentsManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/box/boxjavalibv2/requests/CreateCommentRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;)V

    .line 56
    .local v0, "request":Lcom/box/boxjavalibv2/requests/CreateCommentRequest;
    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->COMMENT:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCommentsManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCommentsManagerImpl;->getResponseAndParseAndTryCast(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;Lcom/box/boxjavalibv2/dao/IBoxType;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/box/boxjavalibv2/dao/BoxComment;

    return-object v1
.end method

.method public addComment(Ljava/lang/String;Lcom/box/boxjavalibv2/dao/IBoxType;Ljava/lang/String;)Lcom/box/boxjavalibv2/dao/BoxComment;
    .registers 6
    .param p1, "commentedItemId"    # Ljava/lang/String;
    .param p2, "commentedItemType"    # Lcom/box/boxjavalibv2/dao/IBoxType;
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p2, p1, p3}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;->addCommentRequestObject(Lcom/box/boxjavalibv2/dao/IBoxType;Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;

    move-result-object v0

    .line 63
    .local v0, "obj":Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;
    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCommentsManagerImpl;->addComment(Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;)Lcom/box/boxjavalibv2/dao/BoxComment;

    move-result-object v1

    return-object v1
.end method

.method public deleteComment(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V
    .registers 6
    .param p1, "commentId"    # Ljava/lang/String;
    .param p2, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lcom/box/boxjavalibv2/requests/DeleteCommentRequest;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCommentsManagerImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCommentsManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/box/boxjavalibv2/requests/DeleteCommentRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V

    .line 84
    .local v0, "request":Lcom/box/boxjavalibv2/requests/DeleteCommentRequest;
    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCommentsManagerImpl;->executeRequestWithNoResponseBody(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;)V

    .line 85
    return-void
.end method

.method public getComment(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)Lcom/box/boxjavalibv2/dao/BoxComment;
    .registers 6
    .param p1, "commentId"    # Ljava/lang/String;
    .param p2, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lcom/box/boxjavalibv2/requests/GetCommentRequest;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCommentsManagerImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCommentsManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/box/boxjavalibv2/requests/GetCommentRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V

    .line 70
    .local v0, "request":Lcom/box/boxjavalibv2/requests/GetCommentRequest;
    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->COMMENT:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCommentsManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCommentsManagerImpl;->getResponseAndParseAndTryCast(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;Lcom/box/boxjavalibv2/dao/IBoxType;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/box/boxjavalibv2/dao/BoxComment;

    return-object v1
.end method

.method public updateComment(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;)Lcom/box/boxjavalibv2/dao/BoxComment;
    .registers 6
    .param p1, "commentId"    # Ljava/lang/String;
    .param p2, "requestObject"    # Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lcom/box/boxjavalibv2/requests/UpdateCommentRequest;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCommentsManagerImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCommentsManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/box/boxjavalibv2/requests/UpdateCommentRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;)V

    .line 77
    .local v0, "request":Lcom/box/boxjavalibv2/requests/UpdateCommentRequest;
    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->COMMENT:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCommentsManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/box/boxjavalibv2/resourcemanagers/BoxCommentsManagerImpl;->getResponseAndParseAndTryCast(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;Lcom/box/boxjavalibv2/dao/IBoxType;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/box/boxjavalibv2/dao/BoxComment;

    return-object v1
.end method
