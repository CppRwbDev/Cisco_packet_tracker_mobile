.class public Lnet/lingala/zip4j/model/DigitalSignature;
.super Ljava/lang/Object;
.source "DigitalSignature.java"


# instance fields
.field private headerSignature:I

.field private signatureData:Ljava/lang/String;

.field private sizeOfData:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeaderSignature()I
    .registers 2

    .prologue
    .line 28
    iget v0, p0, Lnet/lingala/zip4j/model/DigitalSignature;->headerSignature:I

    return v0
.end method

.method public getSignatureData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lnet/lingala/zip4j/model/DigitalSignature;->signatureData:Ljava/lang/String;

    return-object v0
.end method

.method public getSizeOfData()I
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lnet/lingala/zip4j/model/DigitalSignature;->sizeOfData:I

    return v0
.end method

.method public setHeaderSignature(I)V
    .registers 2
    .param p1, "headerSignature"    # I

    .prologue
    .line 32
    iput p1, p0, Lnet/lingala/zip4j/model/DigitalSignature;->headerSignature:I

    .line 33
    return-void
.end method

.method public setSignatureData(Ljava/lang/String;)V
    .registers 2
    .param p1, "signatureData"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lnet/lingala/zip4j/model/DigitalSignature;->signatureData:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setSizeOfData(I)V
    .registers 2
    .param p1, "sizeOfData"    # I

    .prologue
    .line 40
    iput p1, p0, Lnet/lingala/zip4j/model/DigitalSignature;->sizeOfData:I

    .line 41
    return-void
.end method
