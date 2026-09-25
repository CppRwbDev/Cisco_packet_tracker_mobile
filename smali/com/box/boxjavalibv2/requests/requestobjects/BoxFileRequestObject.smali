.class public Lcom/box/boxjavalibv2/requests/requestobjects/BoxFileRequestObject;
.super Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRequestObject;
.source "BoxFileRequestObject.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRequestObject;-><init>()V

    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;)V
    .registers 2
    .param p1, "sharedLink"    # Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRequestObject;-><init>(Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;)V

    .line 13
    return-void
.end method

.method public static createSharedLinkRequestObject(Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxFileRequestObject;
    .registers 2
    .param p0, "sharedLink"    # Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;

    .prologue
    .line 24
    new-instance v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxFileRequestObject;

    invoke-direct {v0, p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxFileRequestObject;-><init>(Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;)V

    return-object v0
.end method

.method public static deleteSharedLinkRequestObject()Lcom/box/boxjavalibv2/requests/requestobjects/BoxFileRequestObject;
    .registers 2

    .prologue
    .line 20
    new-instance v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxFileRequestObject;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxFileRequestObject;-><init>(Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;)V

    return-object v0
.end method

.method public static getRequestObject()Lcom/box/boxjavalibv2/requests/requestobjects/BoxFileRequestObject;
    .registers 1

    .prologue
    .line 16
    new-instance v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxFileRequestObject;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxFileRequestObject;-><init>()V

    return-object v0
.end method
