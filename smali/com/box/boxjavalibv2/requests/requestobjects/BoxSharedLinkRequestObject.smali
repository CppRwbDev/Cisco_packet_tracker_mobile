.class public Lcom/box/boxjavalibv2/requests/requestobjects/BoxSharedLinkRequestObject;
.super Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
.source "BoxSharedLinkRequestObject.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;-><init>()V

    .line 10
    return-void
.end method

.method protected constructor <init>(Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;)V
    .registers 2
    .param p1, "sharedLink"    # Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;-><init>()V

    .line 13
    invoke-virtual {p0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxSharedLinkRequestObject;->setSharedLink(Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxSharedLinkRequestObject;

    .line 14
    return-void
.end method

.method public static createSharedLinkRequestObject(Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxSharedLinkRequestObject;
    .registers 2
    .param p0, "sharedLink"    # Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;

    .prologue
    .line 21
    new-instance v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxSharedLinkRequestObject;

    invoke-direct {v0, p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxSharedLinkRequestObject;-><init>(Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;)V

    return-object v0
.end method

.method public static deleteSharedLinkRequestObject()Lcom/box/boxjavalibv2/requests/requestobjects/BoxSharedLinkRequestObject;
    .registers 2

    .prologue
    .line 17
    new-instance v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxSharedLinkRequestObject;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxSharedLinkRequestObject;-><init>(Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;)V

    return-object v0
.end method


# virtual methods
.method protected setSharedLink(Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxSharedLinkRequestObject;
    .registers 3
    .param p1, "sharedLink"    # Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;

    .prologue
    .line 31
    const-string v0, "shared_link"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxSharedLinkRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-object p0
.end method
