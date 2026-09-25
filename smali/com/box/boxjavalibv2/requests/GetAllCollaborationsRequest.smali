.class public Lcom/box/boxjavalibv2/requests/GetAllCollaborationsRequest;
.super Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;
.source "GetAllCollaborationsRequest.java"


# static fields
.field public static final URI:Ljava/lang/String; = "/collaborations"


# direct methods
.method public constructor <init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/boxjavalibv2/requests/requestobjects/BoxGetAllCollabsRequestObject;)V
    .registers 10
    .param p1, "config"    # Lcom/box/boxjavalibv2/IBoxConfig;
    .param p2, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .param p3, "collabObject"    # Lcom/box/boxjavalibv2/requests/requestobjects/BoxGetAllCollabsRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-static {}, Lcom/box/boxjavalibv2/requests/GetAllCollaborationsRequest;->getUri()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/box/restclientv2/RestMethod;->GET:Lcom/box/restclientv2/RestMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/restclientv2/RestMethod;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V

    .line 20
    return-void
.end method

.method public static getUri()Ljava/lang/String;
    .registers 1

    .prologue
    .line 28
    const-string v0, "/collaborations"

    return-object v0
.end method
