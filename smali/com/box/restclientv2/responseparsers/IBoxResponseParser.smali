.class public interface abstract Lcom/box/restclientv2/responseparsers/IBoxResponseParser;
.super Ljava/lang/Object;
.source "IBoxResponseParser.java"


# virtual methods
.method public abstract parse(Lcom/box/restclientv2/responses/IBoxResponse;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;
        }
    .end annotation
.end method
