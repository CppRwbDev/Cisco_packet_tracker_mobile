.class public Lcom/box/boxjavalibv2/dao/BoxBigPayloadObject;
.super Lcom/box/boxjavalibv2/dao/BoxObject;
.source "BoxBigPayloadObject.java"


# instance fields
.field private content:Ljava/io/InputStream;

.field private contentLength:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/box/boxjavalibv2/dao/BoxBigPayloadObject;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()D
    .registers 3

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/box/boxjavalibv2/dao/BoxBigPayloadObject;->contentLength:D

    return-wide v0
.end method

.method public setContent(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "content"    # Ljava/io/InputStream;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/box/boxjavalibv2/dao/BoxBigPayloadObject;->content:Ljava/io/InputStream;

    .line 23
    return-void
.end method

.method public setContentLength(D)V
    .registers 4
    .param p1, "contentLength"    # D

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/box/boxjavalibv2/dao/BoxBigPayloadObject;->contentLength:D

    .line 41
    return-void
.end method

.method public writeToParcel(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;I)V
    .registers 5
    .param p1, "parcelWrapper"    # Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;
    .param p2, "flags"    # I

    .prologue
    .line 45
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Writing to parcel is not supported!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
