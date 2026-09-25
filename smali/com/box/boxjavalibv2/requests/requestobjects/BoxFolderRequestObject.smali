.class public Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderRequestObject;
.super Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRequestObject;
.source "BoxFolderRequestObject.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRequestObject;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;)V
    .registers 2
    .param p1, "sharedLink"    # Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRequestObject;-><init>(Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;)V

    .line 16
    return-void
.end method

.method public static createFolderRequestObject(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderRequestObject;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "parentId"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderRequestObject;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderRequestObject;-><init>()V

    .line 32
    .local v0, "obj":Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderRequestObject;
    invoke-virtual {v0, p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderRequestObject;->setName(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRequestObject;

    .line 33
    invoke-virtual {v0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderRequestObject;->setParent(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRequestObject;

    .line 34
    return-object v0
.end method

.method public static createSharedLinkRequestObject(Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderRequestObject;
    .registers 2
    .param p0, "sharedLink"    # Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;

    .prologue
    .line 27
    new-instance v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderRequestObject;

    invoke-direct {v0, p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderRequestObject;-><init>(Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;)V

    return-object v0
.end method

.method public static deleteSharedLinkRequestObject()Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderRequestObject;
    .registers 2

    .prologue
    .line 23
    new-instance v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderRequestObject;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderRequestObject;-><init>(Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;)V

    return-object v0
.end method

.method public static getRequestObject()Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderRequestObject;
    .registers 1

    .prologue
    .line 19
    new-instance v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderRequestObject;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderRequestObject;-><init>()V

    return-object v0
.end method

.method public static updateFolderRequestObject()Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderRequestObject;
    .registers 1

    .prologue
    .line 38
    new-instance v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderRequestObject;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderRequestObject;-><init>()V

    return-object v0
.end method


# virtual methods
.method public setUploadEmail(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "access"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v0, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;-><init>()V

    .line 51
    .local v0, "entity":Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;
    const-string v1, "access"

    invoke-virtual {v0, v1, p1}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "email"

    invoke-virtual {v0, v1, p2}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "folder_upload_email"

    invoke-virtual {p0, v1, v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method
