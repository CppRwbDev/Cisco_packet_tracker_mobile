.class public Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;
.super Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
.source "BoxCollabRequestObject.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;-><init>()V

    .line 13
    return-void
.end method

.method public static createCollabObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;
    .registers 6
    .param p0, "folderId"    # Ljava/lang/String;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "login"    # Ljava/lang/String;
    .param p3, "role"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;-><init>()V

    .line 30
    .local v0, "entity":Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;
    invoke-static {p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;->getItemEntity(Ljava/lang/String;)Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;

    move-result-object v1

    .line 31
    .local v1, "item":Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;
    invoke-virtual {v0, p1, p2}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;->setAccessibleBy(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;

    .line 32
    invoke-direct {v0, v1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;->setItem(Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;

    .line 33
    invoke-virtual {v0, p3}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;->setRole(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;

    .line 34
    return-object v0
.end method

.method private static getAccessibilityEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;
    .registers 4
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "login"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v0, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;-><init>()V

    .line 87
    .local v0, "entity":Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 88
    const-string v1, "id"

    invoke-virtual {v0, v1, p0}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_10
    const-string v1, "login"

    invoke-virtual {v0, v1, p1}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-object v0
.end method

.method private static getItemEntity(Ljava/lang/String;)Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;
    .registers 4
    .param p0, "folderId"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v0, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;-><init>()V

    .line 80
    .local v0, "entity":Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;
    const-string v1, "id"

    invoke-virtual {v0, v1, p0}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "type"

    sget-object v2, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FOLDER:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v2}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-object v0
.end method

.method private setItem(Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;
    .registers 3
    .param p1, "item"    # Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;

    .prologue
    .line 63
    const-string v0, "item"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-object p0
.end method

.method public static updateCollabObjects(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;
    .registers 3
    .param p0, "role"    # Ljava/lang/String;

    .prologue
    .line 57
    new-instance v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;-><init>()V

    .line 58
    .local v0, "obj":Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;
    invoke-virtual {v0, p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;->setRole(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public setAccessibleBy(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;
    .registers 5
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "login"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p1, p2}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;->getAccessibilityEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;

    move-result-object v0

    .line 45
    .local v0, "accessibleBy":Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;
    const-string v1, "accessible_by"

    invoke-virtual {p0, v1, v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-object p0
.end method

.method public setRole(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;
    .registers 3
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string v0, "role"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-object p0
.end method

.method public setStatus(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;
    .registers 4
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;->getRequestExtras()Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;->addQueryParam(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    .line 75
    return-object p0
.end method
