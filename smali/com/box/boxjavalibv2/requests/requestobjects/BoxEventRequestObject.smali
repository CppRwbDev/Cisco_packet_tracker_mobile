.class public Lcom/box/boxjavalibv2/requests/requestobjects/BoxEventRequestObject;
.super Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
.source "BoxEventRequestObject.java"


# static fields
.field public static final STREAM_POSITION_NOW:I = -0x1

.field public static final STREAM_TYPE_ALL:Ljava/lang/String; = "all"

.field public static final STREAM_TYPE_CHANGES:Ljava/lang/String; = "changes"

.field public static final STREAM_TYPE_SYNC:Ljava/lang/String; = "sync"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;-><init>()V

    .line 9
    return-void
.end method

.method public static getEventsRequestObject(J)Lcom/box/boxjavalibv2/requests/requestobjects/BoxEventRequestObject;
    .registers 6
    .param p0, "streamPosition"    # J

    .prologue
    .line 30
    new-instance v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxEventRequestObject;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxEventRequestObject;-><init>()V

    .line 31
    .local v0, "req":Lcom/box/boxjavalibv2/requests/requestobjects/BoxEventRequestObject;
    const-wide/16 v2, -0x1

    cmp-long v1, p0, v2

    if-nez v1, :cond_17

    .line 32
    invoke-virtual {v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxEventRequestObject;->getRequestExtras()Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    move-result-object v1

    const-string v2, "stream_position"

    const-string v3, "now"

    invoke-virtual {v1, v2, v3}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;->addQueryParam(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    .line 37
    :goto_16
    return-object v0

    .line 35
    :cond_17
    invoke-virtual {v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxEventRequestObject;->getRequestExtras()Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    move-result-object v1

    const-string v2, "stream_position"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;->addQueryParam(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    goto :goto_16
.end method


# virtual methods
.method public setLimit(I)Lcom/box/boxjavalibv2/requests/requestobjects/BoxEventRequestObject;
    .registers 5
    .param p1, "limit"    # I

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxEventRequestObject;->getRequestExtras()Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    move-result-object v0

    const-string v1, "limit"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;->addQueryParam(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    .line 61
    return-object p0
.end method

.method public setStreamType(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxEventRequestObject;
    .registers 4
    .param p1, "streamType"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxEventRequestObject;->getRequestExtras()Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    move-result-object v0

    const-string v1, "stream_type"

    invoke-virtual {v0, v1, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;->addQueryParam(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    .line 49
    return-object p0
.end method
