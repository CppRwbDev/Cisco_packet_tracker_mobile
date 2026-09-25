.class public Lcom/box/boxjavalibv2/requests/requestobjects/BoxGetAllCollabsRequestObject;
.super Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
.source "BoxGetAllCollabsRequestObject.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;-><init>()V

    .line 10
    return-void
.end method

.method public static getAllCollaborationsRequestObject(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxGetAllCollabsRequestObject;
    .registers 2
    .param p0, "status"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxGetAllCollabsRequestObject;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxGetAllCollabsRequestObject;-><init>()V

    invoke-direct {v0, p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxGetAllCollabsRequestObject;->setStatus(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxGetAllCollabsRequestObject;

    move-result-object v0

    return-object v0
.end method

.method private setStatus(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxGetAllCollabsRequestObject;
    .registers 4
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxGetAllCollabsRequestObject;->getRequestExtras()Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;->addQueryParam(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    .line 26
    return-object p0
.end method
