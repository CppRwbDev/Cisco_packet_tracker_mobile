.class public interface abstract Lcom/box/restclientv2/responses/IBoxResponse;
.super Ljava/lang/Object;
.source "IBoxResponse.java"


# virtual methods
.method public abstract getContentLength()D
.end method

.method public abstract parseResponse(Lcom/box/restclientv2/responseparsers/IBoxResponseParser;Lcom/box/restclientv2/responseparsers/IBoxResponseParser;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;
        }
    .end annotation
.end method
