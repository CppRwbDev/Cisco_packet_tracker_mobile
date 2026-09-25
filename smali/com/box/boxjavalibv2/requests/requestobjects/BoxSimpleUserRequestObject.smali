.class public Lcom/box/boxjavalibv2/requests/requestobjects/BoxSimpleUserRequestObject;
.super Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
.source "BoxSimpleUserRequestObject.java"


# static fields
.field private static final NOTIFY:Ljava/lang/String; = "notify"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;-><init>()V

    .line 13
    return-void
.end method

.method public static moveFolderToAnotherUserRequestEntity(Ljava/lang/String;Z)Lcom/box/boxjavalibv2/requests/requestobjects/BoxSimpleUserRequestObject;
    .registers 4
    .param p0, "destinationUserId"    # Ljava/lang/String;
    .param p1, "notify"    # Z

    .prologue
    .line 25
    new-instance v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxSimpleUserRequestObject;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxSimpleUserRequestObject;-><init>()V

    .line 26
    .local v0, "obj":Lcom/box/boxjavalibv2/requests/requestobjects/BoxSimpleUserRequestObject;
    invoke-virtual {v0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxSimpleUserRequestObject;->setNotifyUser(Z)Lcom/box/boxjavalibv2/requests/requestobjects/BoxSimpleUserRequestObject;

    move-result-object v1

    invoke-direct {v1, p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxSimpleUserRequestObject;->setDestinationUser(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxSimpleUserRequestObject;

    move-result-object v1

    return-object v1
.end method

.method private setDestinationUser(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxSimpleUserRequestObject;
    .registers 4
    .param p1, "destinationUserId"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v0, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;-><init>()V

    .line 38
    .local v0, "id":Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v1, "owned_by"

    invoke-virtual {p0, v1, v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxSimpleUserRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-object p0
.end method


# virtual methods
.method public setNotifyUser(Z)Lcom/box/boxjavalibv2/requests/requestobjects/BoxSimpleUserRequestObject;
    .registers 5
    .param p1, "notify"    # Z

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxSimpleUserRequestObject;->getRequestExtras()Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    move-result-object v0

    const-string v1, "notify"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;->addQueryParam(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    .line 52
    return-object p0
.end method
