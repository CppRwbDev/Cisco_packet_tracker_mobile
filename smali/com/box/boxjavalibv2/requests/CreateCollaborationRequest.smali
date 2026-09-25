.class public Lcom/box/boxjavalibv2/requests/CreateCollaborationRequest;
.super Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;
.source "CreateCollaborationRequest.java"


# static fields
.field public static final URI:Ljava/lang/String; = "/collaborations"


# direct methods
.method public constructor <init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;)V
    .registers 11
    .param p1, "config"    # Lcom/box/boxjavalibv2/IBoxConfig;
    .param p2, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .param p3, "folderId"    # Ljava/lang/String;
    .param p4, "collabObject"    # Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {p3}, Lcom/box/boxjavalibv2/requests/CreateCollaborationRequest;->getUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/box/restclientv2/RestMethod;->POST:Lcom/box/restclientv2/RestMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/restclientv2/RestMethod;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V

    .line 35
    const/16 v0, 0xc9

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/requests/CreateCollaborationRequest;->setExpectedResponseCode(I)V

    .line 36
    return-void
.end method

.method public static getUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "folderId"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string v0, "/collaborations"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
