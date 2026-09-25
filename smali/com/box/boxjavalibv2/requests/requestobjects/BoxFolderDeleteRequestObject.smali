.class public Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderDeleteRequestObject;
.super Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
.source "BoxFolderDeleteRequestObject.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;-><init>()V

    .line 10
    return-void
.end method

.method public static deleteFolderRequestObject(Z)Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderDeleteRequestObject;
    .registers 2
    .param p0, "recursive"    # Z

    .prologue
    .line 13
    new-instance v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderDeleteRequestObject;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderDeleteRequestObject;-><init>()V

    invoke-direct {v0, p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderDeleteRequestObject;->setRecursive(Z)Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderDeleteRequestObject;

    move-result-object v0

    return-object v0
.end method

.method private setRecursive(Z)Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderDeleteRequestObject;
    .registers 5
    .param p1, "recursive"    # Z

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderDeleteRequestObject;->getRequestExtras()Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    move-result-object v0

    const-string v1, "recursive"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;->addQueryParam(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    .line 24
    return-object p0
.end method
