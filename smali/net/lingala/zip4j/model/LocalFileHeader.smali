.class public Lnet/lingala/zip4j/model/LocalFileHeader;
.super Ljava/lang/Object;
.source "LocalFileHeader.java"


# instance fields
.field private aesExtraDataRecord:Lnet/lingala/zip4j/model/AESExtraDataRecord;

.field private compressedSize:J

.field private compressionMethod:I

.field private crc32:J

.field private crcBuff:[B

.field private dataDescriptorExists:Z

.field private encryptionMethod:I

.field private extraDataRecords:Ljava/util/ArrayList;

.field private extraField:[B

.field private extraFieldLength:I

.field private fileName:Ljava/lang/String;

.field private fileNameLength:I

.field private fileNameUTF8Encoded:Z

.field private generalPurposeFlag:[B

.field private isEncrypted:Z

.field private lastModFileTime:I

.field private offsetStartOfData:J

.field private password:[C

.field private signature:I

.field private uncompressedSize:J

.field private versionNeededToExtract:I

.field private writeComprSizeInZip64ExtraRecord:Z

.field private zip64ExtendedInfo:Lnet/lingala/zip4j/model/Zip64ExtendedInfo;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->encryptionMethod:I

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->writeComprSizeInZip64ExtraRecord:Z

    .line 72
    iput-wide v2, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->crc32:J

    .line 73
    iput-wide v2, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->uncompressedSize:J

    .line 74
    return-void
.end method


# virtual methods
.method public getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->aesExtraDataRecord:Lnet/lingala/zip4j/model/AESExtraDataRecord;

    return-object v0
.end method

.method public getCompressedSize()J
    .registers 3

    .prologue
    .line 125
    iget-wide v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->compressedSize:J

    return-wide v0
.end method

.method public getCompressionMethod()I
    .registers 2

    .prologue
    .line 101
    iget v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->compressionMethod:I

    return v0
.end method

.method public getCrc32()J
    .registers 3

    .prologue
    .line 117
    iget-wide v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->crc32:J

    return-wide v0
.end method

.method public getCrcBuff()[B
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->crcBuff:[B

    return-object v0
.end method

.method public getEncryptionMethod()I
    .registers 2

    .prologue
    .line 189
    iget v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->encryptionMethod:I

    return v0
.end method

.method public getExtraDataRecords()Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->extraDataRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getExtraField()[B
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->extraField:[B

    return-object v0
.end method

.method public getExtraFieldLength()I
    .registers 2

    .prologue
    .line 149
    iget v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->extraFieldLength:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileNameLength()I
    .registers 2

    .prologue
    .line 141
    iget v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->fileNameLength:I

    return v0
.end method

.method public getGeneralPurposeFlag()[B
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->generalPurposeFlag:[B

    return-object v0
.end method

.method public getLastModFileTime()I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->lastModFileTime:I

    return v0
.end method

.method public getOffsetStartOfData()J
    .registers 3

    .prologue
    .line 173
    iget-wide v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->offsetStartOfData:J

    return-wide v0
.end method

.method public getPassword()[C
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->password:[C

    return-object v0
.end method

.method public getSignature()I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->signature:I

    return v0
.end method

.method public getUncompressedSize()J
    .registers 3

    .prologue
    .line 133
    iget-wide v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->uncompressedSize:J

    return-wide v0
.end method

.method public getVersionNeededToExtract()I
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->versionNeededToExtract:I

    return v0
.end method

.method public getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->zip64ExtendedInfo:Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    return-object v0
.end method

.method public isDataDescriptorExists()Z
    .registers 2

    .prologue
    .line 221
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->dataDescriptorExists:Z

    return v0
.end method

.method public isEncrypted()Z
    .registers 2

    .prologue
    .line 181
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->isEncrypted:Z

    return v0
.end method

.method public isFileNameUTF8Encoded()Z
    .registers 2

    .prologue
    .line 254
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->fileNameUTF8Encoded:Z

    return v0
.end method

.method public isWriteComprSizeInZip64ExtraRecord()Z
    .registers 2

    .prologue
    .line 245
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->writeComprSizeInZip64ExtraRecord:Z

    return v0
.end method

.method public setAesExtraDataRecord(Lnet/lingala/zip4j/model/AESExtraDataRecord;)V
    .registers 2
    .param p1, "aesExtraDataRecord"    # Lnet/lingala/zip4j/model/AESExtraDataRecord;

    .prologue
    .line 241
    iput-object p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->aesExtraDataRecord:Lnet/lingala/zip4j/model/AESExtraDataRecord;

    .line 242
    return-void
.end method

.method public setCompressedSize(J)V
    .registers 4
    .param p1, "compressedSize"    # J

    .prologue
    .line 129
    iput-wide p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->compressedSize:J

    .line 130
    return-void
.end method

.method public setCompressionMethod(I)V
    .registers 2
    .param p1, "compressionMethod"    # I

    .prologue
    .line 105
    iput p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->compressionMethod:I

    .line 106
    return-void
.end method

.method public setCrc32(J)V
    .registers 4
    .param p1, "crc32"    # J

    .prologue
    .line 121
    iput-wide p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->crc32:J

    .line 122
    return-void
.end method

.method public setCrcBuff([B)V
    .registers 2
    .param p1, "crcBuff"    # [B

    .prologue
    .line 201
    iput-object p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->crcBuff:[B

    .line 202
    return-void
.end method

.method public setDataDescriptorExists(Z)V
    .registers 2
    .param p1, "dataDescriptorExists"    # Z

    .prologue
    .line 225
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->dataDescriptorExists:Z

    .line 226
    return-void
.end method

.method public setEncrypted(Z)V
    .registers 2
    .param p1, "isEncrypted"    # Z

    .prologue
    .line 185
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->isEncrypted:Z

    .line 186
    return-void
.end method

.method public setEncryptionMethod(I)V
    .registers 2
    .param p1, "encryptionMethod"    # I

    .prologue
    .line 193
    iput p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->encryptionMethod:I

    .line 194
    return-void
.end method

.method public setExtraDataRecords(Ljava/util/ArrayList;)V
    .registers 2
    .param p1, "extraDataRecords"    # Ljava/util/ArrayList;

    .prologue
    .line 217
    iput-object p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->extraDataRecords:Ljava/util/ArrayList;

    .line 218
    return-void
.end method

.method public setExtraField([B)V
    .registers 2
    .param p1, "extraField"    # [B

    .prologue
    .line 169
    iput-object p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->extraField:[B

    .line 170
    return-void
.end method

.method public setExtraFieldLength(I)V
    .registers 2
    .param p1, "extraFieldLength"    # I

    .prologue
    .line 153
    iput p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->extraFieldLength:I

    .line 154
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .registers 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->fileName:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setFileNameLength(I)V
    .registers 2
    .param p1, "fileNameLength"    # I

    .prologue
    .line 145
    iput p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->fileNameLength:I

    .line 146
    return-void
.end method

.method public setFileNameUTF8Encoded(Z)V
    .registers 2
    .param p1, "fileNameUTF8Encoded"    # Z

    .prologue
    .line 258
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->fileNameUTF8Encoded:Z

    .line 259
    return-void
.end method

.method public setGeneralPurposeFlag([B)V
    .registers 2
    .param p1, "generalPurposeFlag"    # [B

    .prologue
    .line 97
    iput-object p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->generalPurposeFlag:[B

    .line 98
    return-void
.end method

.method public setLastModFileTime(I)V
    .registers 2
    .param p1, "lastModFileTime"    # I

    .prologue
    .line 113
    iput p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->lastModFileTime:I

    .line 114
    return-void
.end method

.method public setOffsetStartOfData(J)V
    .registers 4
    .param p1, "offsetStartOfData"    # J

    .prologue
    .line 177
    iput-wide p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->offsetStartOfData:J

    .line 178
    return-void
.end method

.method public setPassword([C)V
    .registers 2
    .param p1, "password"    # [C

    .prologue
    .line 209
    iput-object p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->password:[C

    .line 210
    return-void
.end method

.method public setSignature(I)V
    .registers 2
    .param p1, "signature"    # I

    .prologue
    .line 81
    iput p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->signature:I

    .line 82
    return-void
.end method

.method public setUncompressedSize(J)V
    .registers 4
    .param p1, "uncompressedSize"    # J

    .prologue
    .line 137
    iput-wide p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->uncompressedSize:J

    .line 138
    return-void
.end method

.method public setVersionNeededToExtract(I)V
    .registers 2
    .param p1, "versionNeededToExtract"    # I

    .prologue
    .line 89
    iput p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->versionNeededToExtract:I

    .line 90
    return-void
.end method

.method public setWriteComprSizeInZip64ExtraRecord(Z)V
    .registers 2
    .param p1, "writeComprSizeInZip64ExtraRecord"    # Z

    .prologue
    .line 250
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->writeComprSizeInZip64ExtraRecord:Z

    .line 251
    return-void
.end method

.method public setZip64ExtendedInfo(Lnet/lingala/zip4j/model/Zip64ExtendedInfo;)V
    .registers 2
    .param p1, "zip64ExtendedInfo"    # Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    .prologue
    .line 233
    iput-object p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->zip64ExtendedInfo:Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    .line 234
    return-void
.end method
