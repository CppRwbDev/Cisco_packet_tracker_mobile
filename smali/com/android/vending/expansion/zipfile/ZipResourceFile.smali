.class public Lcom/android/vending/expansion/zipfile/ZipResourceFile;
.super Ljava/lang/Object;
.source "ZipResourceFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    }
.end annotation


# static fields
.field static final LOGV:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "zipro"

.field static final kCDECRC:I = 0x10

.field static final kCDECommentLen:I = 0x20

.field static final kCDECompLen:I = 0x14

.field static final kCDEExtraLen:I = 0x1e

.field static final kCDELen:I = 0x2e

.field static final kCDELocalOffset:I = 0x2a

.field static final kCDEMethod:I = 0xa

.field static final kCDEModWhen:I = 0xc

.field static final kCDENameLen:I = 0x1c

.field static final kCDESignature:I = 0x2014b50

.field static final kCDEUncompLen:I = 0x18

.field static final kCompressDeflated:I = 0x8

.field static final kCompressStored:I = 0x0

.field static final kEOCDFileOffset:I = 0x10

.field static final kEOCDLen:I = 0x16

.field static final kEOCDNumEntries:I = 0x8

.field static final kEOCDSignature:I = 0x6054b50

.field static final kEOCDSize:I = 0xc

.field static final kLFHExtraLen:I = 0x1c

.field static final kLFHLen:I = 0x1e

.field static final kLFHNameLen:I = 0x1a

.field static final kLFHSignature:I = 0x4034b50

.field static final kMaxCommentLen:I = 0xffff

.field static final kMaxEOCDSearch:I = 0x10015

.field static final kZipEntryAdj:I = 0x2710


# instance fields
.field private mDirectoryMap:Ljava/nio/MappedByteBuffer;

.field private mFile:Ljava/io/File;

.field private mFileLength:J

.field private mFileName:Ljava/lang/String;

.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;",
            ">;"
        }
    .end annotation
.end field

.field mLEByteBuffer:Ljava/nio/ByteBuffer;

.field private mNumEntries:I

.field private mZipFile:Ljava/io/RandomAccessFile;

.field public mZipFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/File;",
            "Ljava/util/zip/ZipFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "zipFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFiles:Ljava/util/HashMap;

    .line 320
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mLEByteBuffer:Ljava/nio/ByteBuffer;

    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->open(Ljava/lang/String;Lcom/android/vending/expansion/zipfile/ZipResourceFile;)V

    .line 205
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/vending/expansion/zipfile/ZipResourceFile;)V
    .registers 4
    .param p1, "zipFileName"    # Ljava/lang/String;
    .param p2, "mergeFile"    # Lcom/android/vending/expansion/zipfile/ZipResourceFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFiles:Ljava/util/HashMap;

    .line 320
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mLEByteBuffer:Ljava/nio/ByteBuffer;

    .line 216
    invoke-virtual {p0, p1, p2}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->open(Ljava/lang/String;Lcom/android/vending/expansion/zipfile/ZipResourceFile;)V

    .line 217
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/expansion/zipfile/ZipResourceFile;)Ljava/io/RandomAccessFile;
    .registers 2
    .param p0, "x0"    # Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFile:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/vending/expansion/zipfile/ZipResourceFile;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/vending/expansion/zipfile/ZipResourceFile;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method private parseCentralDirectory(Z)V
    .registers 16
    .param p1, "setOffsets"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 423
    iget v6, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mNumEntries:I

    .line 425
    .local v6, "numEntries":I
    const v10, 0xffff

    new-array v8, v10, [B

    .line 431
    .local v8, "tempBuf":[B
    const/4 v2, 0x0

    .line 436
    .local v2, "currentOffset":I
    const/16 v10, 0x1e

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 437
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 439
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_14
    if-ge v5, v6, :cond_102

    .line 440
    iget-object v10, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v10, v2}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v10

    const v11, 0x2014b50

    if-eq v10, v11, :cond_45

    .line 441
    const-string v10, "zipro"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Missed a central dir sig (at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    new-instance v10, Ljava/io/IOException;

    invoke-direct {v10}, Ljava/io/IOException;-><init>()V

    throw v10

    .line 446
    :cond_45
    iget-object v10, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v11, v2, 0x1c

    invoke-virtual {v10, v11}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v10

    const v11, 0xffff

    and-int v4, v10, v11

    .line 447
    .local v4, "fileNameLen":I
    iget-object v10, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v11, v2, 0x1e

    invoke-virtual {v10, v11}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v10

    const v11, 0xffff

    and-int v3, v10, v11

    .line 448
    .local v3, "extraLen":I
    iget-object v10, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v11, v2, 0x20

    invoke-virtual {v10, v11}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v10

    const v11, 0xffff

    and-int v1, v10, v11

    .line 452
    .local v1, "commentLen":I
    iget-object v10, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v11, v2, 0x2e

    invoke-virtual {v10, v11}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 453
    iget-object v10, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    const/4 v11, 0x0

    invoke-virtual {v10, v8, v11, v4}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 454
    iget-object v10, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 457
    new-instance v7, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v7, v8, v10, v4}, Ljava/lang/String;-><init>([BII)V

    .line 462
    .local v7, "str":Ljava/lang/String;
    new-instance v9, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    invoke-direct {v9, p0, v7}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;-><init>(Lcom/android/vending/expansion/zipfile/ZipResourceFile;Ljava/lang/String;)V

    .line 463
    .local v9, "ze":Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    iget-object v10, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v11, v2, 0xa

    invoke-virtual {v10, v11}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v10

    const v11, 0xffff

    and-int/2addr v10, v11

    iput v10, v9, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mMethod:I

    .line 464
    iget-object v10, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v11, v2, 0xc

    invoke-virtual {v10, v11}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v10

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    iput-wide v10, v9, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mWhenModified:J

    .line 465
    iget-object v10, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v11, v2, 0x10

    invoke-virtual {v10, v11}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    iput-wide v10, v9, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mCRC32:J

    .line 466
    iget-object v10, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v11, v2, 0x14

    invoke-virtual {v10, v11}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    iput-wide v10, v9, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mCompressedLength:J

    .line 467
    iget-object v10, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v11, v2, 0x18

    invoke-virtual {v10, v11}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    iput-wide v10, v9, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mUncompressedLength:J

    .line 468
    iget-object v10, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v11, v2, 0x2a

    invoke-virtual {v10, v11}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v10

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    iput-wide v10, v9, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mLocalHdrOffset:J

    .line 470
    if-eqz p1, :cond_f4

    .line 471
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 472
    iget-object v10, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v9, v10, v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->setOffsetFromFile(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;)V

    .line 476
    :cond_f4
    iget-object v10, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v10, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    add-int/lit8 v10, v4, 0x2e

    add-int/2addr v10, v3

    add-int/2addr v10, v1

    add-int/2addr v2, v10

    .line 439
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_14

    .line 484
    .end local v1    # "commentLen":I
    .end local v3    # "extraLen":I
    .end local v4    # "fileNameLen":I
    .end local v7    # "str":Ljava/lang/String;
    .end local v9    # "ze":Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    :cond_102
    return-void
.end method

.method private read4LE()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->swapEndian(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getAllEntries()[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    .registers 3

    .prologue
    .line 237
    iget-object v1, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 238
    .local v0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    return-object v1
.end method

.method public getAssetFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 4
    .param p1, "assetPath"    # Ljava/lang/String;

    .prologue
    .line 253
    iget-object v1, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    .line 254
    .local v0, "entry":Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    if-eqz v0, :cond_f

    .line 255
    invoke-virtual {v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 257
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method getEntriesAt(Ljava/lang/String;)[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    .registers 11
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 220
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 221
    .local v4, "zev":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;>;"
    iget-object v5, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 222
    .local v2, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;>;"
    if-nez p1, :cond_f

    .line 223
    const-string p1, ""

    .line 224
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 225
    .local v1, "length":I
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_17
    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    .line 226
    .local v3, "ze":Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    iget-object v6, v3, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 227
    const/4 v6, -0x1

    iget-object v7, v3, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    const/16 v8, 0x2f

    invoke-virtual {v7, v8, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-ne v6, v7, :cond_17

    .line 228
    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 232
    .end local v3    # "ze":Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    :cond_3a
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v0, v5, [Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    .line 233
    .local v0, "entries":[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    invoke-virtual {v4, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    return-object v5
.end method

.method public getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 7
    .param p1, "assetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v3, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    .line 271
    .local v0, "entry":Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    if-eqz v0, :cond_45

    .line 272
    invoke-virtual {v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->isUncompressed()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 273
    invoke-virtual {v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v3

    .line 286
    :goto_18
    return-object v3

    .line 275
    :cond_19
    iget-object v3, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->getZipFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipFile;

    .line 277
    .local v1, "zf":Ljava/util/zip/ZipFile;
    if-nez v1, :cond_3a

    .line 278
    new-instance v1, Ljava/util/zip/ZipFile;

    .end local v1    # "zf":Ljava/util/zip/ZipFile;
    invoke-virtual {v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->getZipFile()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 279
    .restart local v1    # "zf":Ljava/util/zip/ZipFile;
    iget-object v3, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->getZipFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_3a
    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 282
    .local v2, "zi":Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_45

    .line 283
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_18

    .line 286
    .end local v1    # "zf":Ljava/util/zip/ZipFile;
    .end local v2    # "zi":Ljava/util/zip/ZipEntry;
    :cond_45
    const/4 v3, 0x0

    goto :goto_18
.end method

.method mapCentralDirectory()V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    const-wide/32 v14, 0x10015

    .line 333
    .local v14, "readAmount":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFileLength:J

    cmp-long v2, v14, v2

    if-lez v2, :cond_f

    .line 334
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFileLength:J

    .line 339
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFile:Ljava/io/RandomAccessFile;

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 341
    invoke-direct/range {p0 .. p0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->read4LE()I

    move-result v11

    .line 342
    .local v11, "header":I
    const v2, 0x6054b50

    if-ne v11, v2, :cond_30

    .line 343
    const-string v2, "zipro"

    const-string v3, "Found Zip archive, but it looks empty"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 345
    :cond_30
    const v2, 0x4034b50

    if-eq v11, v2, :cond_42

    .line 346
    const-string v2, "zipro"

    const-string v3, "Not a Zip archive"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 359
    :cond_42
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFileLength:J

    sub-long v16, v2, v14

    .line 361
    .local v16, "searchStart":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFile:Ljava/io/RandomAccessFile;

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 362
    long-to-int v2, v14

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 363
    .local v8, "bbuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    .line 364
    .local v9, "buffer":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v9}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 365
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 376
    array-length v2, v9

    add-int/lit8 v10, v2, -0x16

    .local v10, "eocdIdx":I
    :goto_69
    if-ltz v10, :cond_7a

    .line 377
    aget-byte v2, v9, v10

    const/16 v3, 0x50

    if-ne v2, v3, :cond_104

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    const v3, 0x6054b50

    if-ne v2, v3, :cond_104

    .line 386
    :cond_7a
    if-gez v10, :cond_9e

    .line 387
    const-string v2, "zipro"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Zip: EOCD not found, "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " is not zip"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_9e
    add-int/lit8 v2, v10, 0x8

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v12

    .line 396
    .local v12, "numEntries":I
    add-int/lit8 v2, v10, 0xc

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    const-wide v18, 0xffffffffL

    and-long v6, v2, v18

    .line 397
    .local v6, "dirSize":J
    add-int/lit8 v2, v10, 0x10

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    const-wide v18, 0xffffffffL

    and-long v4, v2, v18

    .line 400
    .local v4, "dirOffset":J
    add-long v2, v4, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFileLength:J

    move-wide/from16 v18, v0

    cmp-long v2, v2, v18

    if-lez v2, :cond_108

    .line 401
    const-string v2, "zipro"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bad offsets (dir "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ", size "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ", eocd "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ")"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 376
    .end local v4    # "dirOffset":J
    .end local v6    # "dirSize":J
    .end local v12    # "numEntries":I
    :cond_104
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_69

    .line 405
    .restart local v4    # "dirOffset":J
    .restart local v6    # "dirSize":J
    .restart local v12    # "numEntries":I
    :cond_108
    if-nez v12, :cond_117

    .line 406
    const-string v2, "zipro"

    const-string v3, "empty archive?"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 415
    :cond_117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    .line 416
    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 418
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mNumEntries:I

    .line 419
    return-void
.end method

.method open(Ljava/lang/String;Lcom/android/vending/expansion/zipfile/ZipResourceFile;)V
    .registers 9
    .param p1, "zipFileName"    # Ljava/lang/String;
    .param p2, "mergeFile"    # Lcom/android/vending/expansion/zipfile/ZipResourceFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFile:Ljava/io/File;

    .line 296
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFile:Ljava/io/File;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 297
    .local v0, "f":Ljava/io/RandomAccessFile;
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFileLength:J

    .line 299
    iget-wide v2, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFileLength:J

    const-wide/16 v4, 0x16

    cmp-long v1, v2, v4

    if-gez v1, :cond_24

    .line 300
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 303
    :cond_24
    iput-object p1, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFileName:Ljava/lang/String;

    .line 305
    iput-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFile:Ljava/io/RandomAccessFile;

    .line 307
    if-eqz p2, :cond_36

    .line 308
    iget-object v1, p2, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    .line 316
    :goto_2e
    invoke-virtual {p0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mapCentralDirectory()V

    .line 317
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->parseCentralDirectory(Z)V

    .line 318
    return-void

    .line 310
    :cond_36
    iget-object v1, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_2e
.end method

.method swapEndian(I)I
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 50
    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v1, 0xff00

    and-int/2addr v1, p1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/high16 v1, 0xff0000

    and-int/2addr v1, p1

    ushr-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method swapEndian(S)I
    .registers 4
    .param p1, "i"    # S

    .prologue
    .line 57
    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v1, p1

    ushr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method
