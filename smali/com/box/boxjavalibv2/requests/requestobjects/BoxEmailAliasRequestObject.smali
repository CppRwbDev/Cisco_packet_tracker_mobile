.class public Lcom/box/boxjavalibv2/requests/requestobjects/BoxEmailAliasRequestObject;
.super Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
.source "BoxEmailAliasRequestObject.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;-><init>()V

    .line 8
    return-void
.end method

.method public static addEmailAliasRequestObject(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxEmailAliasRequestObject;
    .registers 3
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 17
    new-instance v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxEmailAliasRequestObject;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxEmailAliasRequestObject;-><init>()V

    .line 18
    .local v0, "entity":Lcom/box/boxjavalibv2/requests/requestobjects/BoxEmailAliasRequestObject;
    invoke-direct {v0, p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxEmailAliasRequestObject;->setEmailAlias(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxEmailAliasRequestObject;

    move-result-object v1

    return-object v1
.end method

.method private setEmailAlias(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxEmailAliasRequestObject;
    .registers 3
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 28
    const-string v0, "email"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxEmailAliasRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-object p0
.end method
