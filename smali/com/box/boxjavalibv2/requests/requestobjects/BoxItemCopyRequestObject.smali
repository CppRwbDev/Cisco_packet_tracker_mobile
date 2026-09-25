.class public Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemCopyRequestObject;
.super Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
.source "BoxItemCopyRequestObject.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;-><init>()V

    .line 12
    return-void
.end method

.method public static copyItemRequestObject(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemCopyRequestObject;
    .registers 2
    .param p0, "parentId"    # Ljava/lang/String;

    .prologue
    .line 15
    new-instance v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemCopyRequestObject;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemCopyRequestObject;-><init>()V

    .line 16
    .local v0, "entity":Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemCopyRequestObject;
    invoke-direct {v0, p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemCopyRequestObject;->setParent(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemCopyRequestObject;

    .line 17
    return-object v0
.end method

.method private setParent(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemCopyRequestObject;
    .registers 4
    .param p1, "parentId"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v0, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;-><init>()V

    .line 29
    .local v0, "entity":Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v1, "parent"

    invoke-virtual {p0, v1, v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemCopyRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-object p0
.end method


# virtual methods
.method public setName(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemCopyRequestObject;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemCopyRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-object p0
.end method
