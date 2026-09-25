.class public Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserDeleteRequestObject;
.super Lcom/box/boxjavalibv2/requests/requestobjects/BoxSimpleUserRequestObject;
.source "BoxUserDeleteRequestObject.java"


# static fields
.field private static final FORCE:Ljava/lang/String; = "force"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxSimpleUserRequestObject;-><init>()V

    return-void
.end method

.method public static deleteEnterpriseUserRequestObject(ZZ)Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserDeleteRequestObject;
    .registers 4
    .param p0, "notify"    # Z
    .param p1, "force"    # Z

    .prologue
    .line 19
    new-instance v1, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserDeleteRequestObject;

    invoke-direct {v1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserDeleteRequestObject;-><init>()V

    invoke-virtual {v1, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserDeleteRequestObject;->setForceDelete(Z)Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserDeleteRequestObject;

    move-result-object v0

    .line 20
    .local v0, "obj":Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserDeleteRequestObject;
    invoke-virtual {v0, p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserDeleteRequestObject;->setNotifyUser(Z)Lcom/box/boxjavalibv2/requests/requestobjects/BoxSimpleUserRequestObject;

    .line 21
    return-object v0
.end method


# virtual methods
.method public setForceDelete(Z)Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserDeleteRequestObject;
    .registers 5
    .param p1, "force"    # Z

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserDeleteRequestObject;->getRequestExtras()Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    move-result-object v0

    const-string v1, "force"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;->addQueryParam(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    .line 35
    return-object p0
.end method
