.class public Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupRequestObject;
.super Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
.source "BoxGroupRequestObject.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;-><init>()V

    .line 10
    return-void
.end method

.method public static createGroupRequestObject(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupRequestObject;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-static {p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupRequestObject;->updateGroupRequestObject(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupRequestObject;

    move-result-object v0

    return-object v0
.end method

.method public static updateGroupRequestObject(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupRequestObject;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    new-instance v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupRequestObject;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupRequestObject;-><init>()V

    .line 18
    .local v0, "obj":Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupRequestObject;
    const-string v1, "name"

    invoke-virtual {v0, v1, p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    return-object v0
.end method
