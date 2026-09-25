.class public Lcom/box/boxjavalibv2/requests/requestobjects/BoxPagingRequestObject;
.super Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
.source "BoxPagingRequestObject.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;-><init>()V

    .line 9
    return-void
.end method

.method public static pagingRequestObject(II)Lcom/box/boxjavalibv2/requests/requestobjects/BoxPagingRequestObject;
    .registers 3
    .param p0, "limit"    # I
    .param p1, "offset"    # I

    .prologue
    .line 21
    new-instance v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxPagingRequestObject;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxPagingRequestObject;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxPagingRequestObject;->setPage(II)Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxPagingRequestObject;

    return-object v0
.end method
