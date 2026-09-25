.class public Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRequestObject;
.super Lcom/box/boxjavalibv2/requests/requestobjects/BoxSharedLinkRequestObject;
.source "BoxItemRequestObject.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxSharedLinkRequestObject;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;)V
    .registers 2
    .param p1, "sharedLink"    # Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxSharedLinkRequestObject;-><init>(Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;)V

    .line 17
    return-void
.end method

.method public static createSharedLinkRequestObject(Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRequestObject;
    .registers 2
    .param p0, "sharedLink"    # Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;

    .prologue
    .line 28
    new-instance v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRequestObject;

    invoke-direct {v0, p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRequestObject;-><init>(Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;)V

    return-object v0
.end method

.method public static deleteSharedLinkRequestObject()Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRequestObject;
    .registers 2

    .prologue
    .line 24
    new-instance v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRequestObject;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRequestObject;-><init>(Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;)V

    return-object v0
.end method

.method public static getRequestObject()Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRequestObject;
    .registers 1

    .prologue
    .line 20
    new-instance v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRequestObject;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRequestObject;-><init>()V

    return-object v0
.end method


# virtual methods
.method public setDescription(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRequestObject;
    .registers 3
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 65
    const-string v0, "description"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRequestObject;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-object p0
.end method

.method public setParent(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRequestObject;
    .registers 4
    .param p1, "parentId"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v0, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;-><init>()V

    .line 40
    .local v0, "entity":Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v1, "parent"

    invoke-virtual {p0, v1, v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-object p0
.end method

.method public setTags([Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRequestObject;
    .registers 3
    .param p1, "tags"    # [Ljava/lang/String;

    .prologue
    .line 70
    const-string v0, "tags"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-object p0
.end method
