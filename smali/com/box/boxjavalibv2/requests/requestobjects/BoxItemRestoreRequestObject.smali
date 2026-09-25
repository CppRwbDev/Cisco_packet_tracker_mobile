.class public Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRestoreRequestObject;
.super Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
.source "BoxItemRestoreRequestObject.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;-><init>()V

    .line 11
    return-void
.end method

.method public static restoreItemRequestObject()Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRestoreRequestObject;
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRestoreRequestObject;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRestoreRequestObject;-><init>()V

    return-object v0
.end method


# virtual methods
.method public setNewName(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRestoreRequestObject;
    .registers 3
    .param p1, "newName"    # Ljava/lang/String;

    .prologue
    .line 24
    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRestoreRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-object p0
.end method

.method public setNewParent(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRestoreRequestObject;
    .registers 4
    .param p1, "parentId"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v0, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;-><init>()V

    .line 36
    .local v0, "id":Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v1, "parent"

    invoke-virtual {p0, v1, v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRestoreRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-object p0
.end method
