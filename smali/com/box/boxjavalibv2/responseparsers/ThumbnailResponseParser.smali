.class public Lcom/box/boxjavalibv2/responseparsers/ThumbnailResponseParser;
.super Lcom/box/restclientv2/responseparsers/DefaultFileResponseParser;
.source "ThumbnailResponseParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/box/restclientv2/responseparsers/DefaultFileResponseParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/box/restclientv2/responses/IBoxResponse;)Lcom/box/boxjavalibv2/dao/BoxThumbnail;
    .registers 6
    .param p1, "response"    # Lcom/box/restclientv2/responses/IBoxResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;
        }
    .end annotation

    .prologue
    .line 14
    new-instance v0, Lcom/box/boxjavalibv2/dao/BoxThumbnail;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/dao/BoxThumbnail;-><init>()V

    .line 15
    .local v0, "obj":Lcom/box/boxjavalibv2/dao/BoxThumbnail;
    invoke-super {p0, p1}, Lcom/box/restclientv2/responseparsers/DefaultFileResponseParser;->parse(Lcom/box/restclientv2/responses/IBoxResponse;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Lcom/box/boxjavalibv2/dao/BoxThumbnail;->setContent(Ljava/io/InputStream;)V

    .line 16
    invoke-interface {p1}, Lcom/box/restclientv2/responses/IBoxResponse;->getContentLength()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/box/boxjavalibv2/dao/BoxThumbnail;->setContentLength(D)V

    .line 17
    return-object v0
.end method

.method public bridge synthetic parse(Lcom/box/restclientv2/responses/IBoxResponse;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Lcom/box/restclientv2/responses/IBoxResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/box/boxjavalibv2/responseparsers/ThumbnailResponseParser;->parse(Lcom/box/restclientv2/responses/IBoxResponse;)Lcom/box/boxjavalibv2/dao/BoxThumbnail;

    move-result-object v0

    return-object v0
.end method
