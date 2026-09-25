.class public final Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
.super Ljava/lang/Object;
.source "ZipResourceFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/expansion/zipfile/ZipResourceFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ZipEntryRO"
.end annotation


# instance fields
.field public mCRC32:J

.field public mCompressedLength:J

.field public final mFileName:Ljava/lang/String;

.field public mLocalHdrOffset:J

.field public mMethod:I

.field public mOffset:J

.field public mUncompressedLength:J

.field public mWhenModified:J

.field final synthetic this$0:Lcom/android/vending/expansion/zipfile/ZipResourceFile;


# direct methods
.method public constructor <init>(Lcom/android/vending/expansion/zipfile/ZipResourceFile;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/vending/expansion/zipfile/ZipResourceFile;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->this$0:Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mOffset:J

    .line 102
    iput-object p2, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    .line 103
    return-void
.end method


# virtual methods
.method public getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;
    .registers 8

    .prologue
    .line 168
    iget v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mMethod:I

    if-nez v0, :cond_20

    .line 171
    :try_start_4
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->this$0:Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    invoke-static {v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->access$100(Lcom/android/vending/expansion/zipfile/ZipResourceFile;)Ljava/io/File;

    move-result-object v0

    const/high16 v2, 0x10000000

    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 172
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->getOffset()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mUncompressedLength:J

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_1b} :catch_1c

    .line 178
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_1b
    return-object v0

    .line 173
    :catch_1c
    move-exception v6

    .line 175
    .local v6, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 178
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :cond_20
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public getOffset()J
    .registers 9

    .prologue
    .line 143
    iget-wide v4, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mOffset:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_1c

    .line 145
    const/16 v3, 0x1e

    :try_start_a
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 146
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 147
    iget-object v3, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->this$0:Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    invoke-static {v3}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->access$000(Lcom/android/vending/expansion/zipfile/ZipResourceFile;)Ljava/io/RandomAccessFile;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->setOffsetFromFile(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_1c} :catch_1f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1c} :catch_24

    .line 155
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    :cond_1c
    :goto_1c
    iget-wide v4, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mOffset:J

    return-wide v4

    .line 148
    :catch_1f
    move-exception v1

    .line 149
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1c

    .line 150
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_24
    move-exception v2

    .line 151
    .local v2, "ioe":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1c
.end method

.method public getZipFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->this$0:Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    invoke-static {v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->access$100(Lcom/android/vending/expansion/zipfile/ZipResourceFile;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getZipFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->this$0:Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    invoke-static {v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->access$200(Lcom/android/vending/expansion/zipfile/ZipResourceFile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isUncompressed()Z
    .registers 2

    .prologue
    .line 164
    iget v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mMethod:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setOffsetFromFile(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;)V
    .registers 13
    .param p1, "f"    # Ljava/io/RandomAccessFile;
    .param p2, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v8, 0xffff

    .line 118
    iget-wide v4, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mLocalHdrOffset:J

    .line 120
    .local v4, "localHdrOffset":J
    :try_start_5
    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 121
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 122
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    const v7, 0x4034b50

    if-eq v6, v7, :cond_2b

    .line 123
    const-string v6, "zipro"

    const-string v7, "didn\'t find signature at start of lfh"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_26} :catch_26
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_26} :catch_45

    .line 129
    :catch_26
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 134
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_2a
    return-void

    .line 126
    :cond_2b
    const/16 v6, 0x1a

    :try_start_2d
    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    and-int v3, v6, v8

    .line 127
    .local v3, "nameLen":I
    const/16 v6, 0x1c

    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    and-int v1, v6, v8

    .line 128
    .local v1, "extraLen":I
    const-wide/16 v6, 0x1e

    add-long/2addr v6, v4

    int-to-long v8, v3

    add-long/2addr v6, v8

    int-to-long v8, v1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mOffset:J
    :try_end_44
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_44} :catch_26
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_44} :catch_45

    goto :goto_2a

    .line 131
    .end local v1    # "extraLen":I
    .end local v3    # "nameLen":I
    :catch_45
    move-exception v2

    .line 132
    .local v2, "ioe":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2a
.end method
