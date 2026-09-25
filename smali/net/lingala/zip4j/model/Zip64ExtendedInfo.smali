.class public Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
.super Ljava/lang/Object;
.source "Zip64ExtendedInfo.java"


# instance fields
.field private compressedSize:J

.field private diskNumberStart:I

.field private header:I

.field private offsetLocalHeader:J

.field private size:I

.field private unCompressedSize:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const-wide/16 v0, -0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->compressedSize:J

    .line 35
    iput-wide v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->unCompressedSize:J

    .line 36
    iput-wide v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->offsetLocalHeader:J

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->diskNumberStart:I

    .line 38
    return-void
.end method


# virtual methods
.method public getCompressedSize()J
    .registers 3

    .prologue
    .line 57
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->compressedSize:J

    return-wide v0
.end method

.method public getDiskNumberStart()I
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->diskNumberStart:I

    return v0
.end method

.method public getHeader()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->header:I

    return v0
.end method

.method public getOffsetLocalHeader()J
    .registers 3

    .prologue
    .line 73
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->offsetLocalHeader:J

    return-wide v0
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->size:I

    return v0
.end method

.method public getUnCompressedSize()J
    .registers 3

    .prologue
    .line 65
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->unCompressedSize:J

    return-wide v0
.end method

.method public setCompressedSize(J)V
    .registers 4
    .param p1, "compressedSize"    # J

    .prologue
    .line 61
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->compressedSize:J

    .line 62
    return-void
.end method

.method public setDiskNumberStart(I)V
    .registers 2
    .param p1, "diskNumberStart"    # I

    .prologue
    .line 85
    iput p1, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->diskNumberStart:I

    .line 86
    return-void
.end method

.method public setHeader(I)V
    .registers 2
    .param p1, "header"    # I

    .prologue
    .line 45
    iput p1, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->header:I

    .line 46
    return-void
.end method

.method public setOffsetLocalHeader(J)V
    .registers 4
    .param p1, "offsetLocalHeader"    # J

    .prologue
    .line 77
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->offsetLocalHeader:J

    .line 78
    return-void
.end method

.method public setSize(I)V
    .registers 2
    .param p1, "size"    # I

    .prologue
    .line 53
    iput p1, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->size:I

    .line 54
    return-void
.end method

.method public setUnCompressedSize(J)V
    .registers 4
    .param p1, "unCompressedSize"    # J

    .prologue
    .line 69
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->unCompressedSize:J

    .line 70
    return-void
.end method
