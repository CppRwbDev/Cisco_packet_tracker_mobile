.class public Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserUpdateLoginRequestObject;
.super Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
.source "BoxUserUpdateLoginRequestObject.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;-><init>()V

    .line 10
    return-void
.end method

.method private setLogin(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserUpdateLoginRequestObject;
    .registers 3
    .param p1, "login"    # Ljava/lang/String;

    .prologue
    .line 30
    const-string v0, "login"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserUpdateLoginRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-object p0
.end method

.method public static updateUserPrimaryLoginRequestObject(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserUpdateLoginRequestObject;
    .registers 2
    .param p0, "login"    # Ljava/lang/String;

    .prologue
    .line 19
    new-instance v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserUpdateLoginRequestObject;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserUpdateLoginRequestObject;-><init>()V

    invoke-direct {v0, p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserUpdateLoginRequestObject;->setLogin(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserUpdateLoginRequestObject;

    move-result-object v0

    return-object v0
.end method
