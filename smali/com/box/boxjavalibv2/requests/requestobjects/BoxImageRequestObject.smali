.class public Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;
.super Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
.source "BoxImageRequestObject.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;-><init>()V

    .line 10
    return-void
.end method

.method public static pagePreviewRequestObject(IIIII)Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;
    .registers 6
    .param p0, "page"    # I
    .param p1, "minWidth"    # I
    .param p2, "maxWidth"    # I
    .param p3, "minHeight"    # I
    .param p4, "maxHeight"    # I

    .prologue
    .line 29
    new-instance v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;-><init>()V

    invoke-virtual {v0, p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;->setPage(I)Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;->setMinHeight(I)Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;->setMaxHeight(I)Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;->setMinWidth(I)Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;->setMaxWidth(I)Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;

    move-result-object v0

    return-object v0
.end method

.method public static previewRequestObject()Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;
    .registers 1

    .prologue
    .line 38
    new-instance v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;-><init>()V

    return-object v0
.end method


# virtual methods
.method public setMaxHeight(I)Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;
    .registers 5
    .param p1, "maxHeight"    # I

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;->getRequestExtras()Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    move-result-object v0

    const-string v1, "max_height"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;->addQueryParam(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    .line 58
    return-object p0
.end method

.method public setMaxWidth(I)Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;
    .registers 5
    .param p1, "maxWidth"    # I

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;->getRequestExtras()Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    move-result-object v0

    const-string v1, "max_width"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;->addQueryParam(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    .line 48
    return-object p0
.end method

.method public setMinHeight(I)Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;
    .registers 5
    .param p1, "minHeight"    # I

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;->getRequestExtras()Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    move-result-object v0

    const-string v1, "min_height"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;->addQueryParam(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    .line 53
    return-object p0
.end method

.method public setMinWidth(I)Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;
    .registers 5
    .param p1, "minWidth"    # I

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;->getRequestExtras()Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    move-result-object v0

    const-string v1, "min_width"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;->addQueryParam(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    .line 43
    return-object p0
.end method

.method public setPage(I)Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;
    .registers 5
    .param p1, "page"    # I

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;->getRequestExtras()Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    move-result-object v0

    const-string v1, "page"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;->addQueryParam(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    .line 63
    return-object p0
.end method
