.class public Lnet/lingala/zip4j/util/ArchiveMaintainer;
.super Ljava/lang/Object;
.source "ArchiveMaintainer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method static access$0(Lnet/lingala/zip4j/util/ArchiveMaintainer;Lnet/lingala/zip4j/model/ZipModel;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 340
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->initMergeSplitZipFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method private calculateTotalWorkForMergeOp(Lnet/lingala/zip4j/model/ZipModel;)J
    .registers 14
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 704
    const-wide/16 v6, 0x0

    .line 705
    .local v6, "totSize":J
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 706
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v4

    .line 707
    .local v4, "totNoOfSplitFiles":I
    const/4 v2, 0x0

    .line 708
    .local v2, "partFile":Ljava/lang/String;
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v0

    .line 709
    .local v0, "curZipFile":Ljava/lang/String;
    const/4 v3, 0x0

    .line 710
    .local v3, "partNumber":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    if-le v1, v4, :cond_1c

    .line 725
    .end local v0    # "curZipFile":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "partFile":Ljava/lang/String;
    .end local v3    # "partNumber":I
    .end local v4    # "totNoOfSplitFiles":I
    :cond_1b
    return-wide v6

    .line 711
    .restart local v0    # "curZipFile":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "partFile":Ljava/lang/String;
    .restart local v3    # "partNumber":I
    .restart local v4    # "totNoOfSplitFiles":I
    :cond_1c
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v5

    if-ne v3, v5, :cond_37

    .line 712
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v2

    .line 721
    :goto_2a
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileLengh(Ljava/io/File;)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 710
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 714
    :cond_37
    const/16 v5, 0x9

    if-lt v3, v5, :cond_5d

    .line 715
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v8, "."

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v8, ".z"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2a

    .line 717
    :cond_5d
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v8, "."

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v8, ".z0"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2a
.end method

.method private calculateTotalWorkForRemoveOp(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;)J
    .registers 7
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 689
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileLengh(Ljava/io/File;)J

    move-result-wide v0

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 25
    .param p1, "inputStream"    # Ljava/io/RandomAccessFile;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .param p3, "start"    # J
    .param p5, "end"    # J
    .param p7, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 241
    if-eqz p1, :cond_4

    if-nez p2, :cond_c

    .line 242
    :cond_4
    new-instance v11, Lnet/lingala/zip4j/exception/ZipException;

    const-string v12, "input or output stream is null, cannot copy file"

    invoke-direct {v11, v12}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 245
    :cond_c
    const-wide/16 v12, 0x0

    cmp-long v11, p3, v12

    if-gez v11, :cond_1a

    .line 246
    new-instance v11, Lnet/lingala/zip4j/exception/ZipException;

    const-string v12, "starting offset is negative, cannot copy file"

    invoke-direct {v11, v12}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 249
    :cond_1a
    const-wide/16 v12, 0x0

    cmp-long v11, p5, v12

    if-gez v11, :cond_28

    .line 250
    new-instance v11, Lnet/lingala/zip4j/exception/ZipException;

    const-string v12, "end offset is negative, cannot copy file"

    invoke-direct {v11, v12}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 253
    :cond_28
    cmp-long v11, p3, p5

    if-lez v11, :cond_34

    .line 254
    new-instance v11, Lnet/lingala/zip4j/exception/ZipException;

    const-string v12, "start offset is greater than end offset, cannot copy file"

    invoke-direct {v11, v12}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 257
    :cond_34
    cmp-long v11, p3, p5

    if-nez v11, :cond_39

    .line 304
    :cond_38
    :goto_38
    return-void

    .line 261
    :cond_39
    invoke-virtual/range {p7 .. p7}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v11

    if-eqz v11, :cond_4c

    .line 262
    const/4 v11, 0x3

    move-object/from16 v0, p7

    invoke-virtual {v0, v11}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 263
    const/4 v11, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v11}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V

    goto :goto_38

    .line 268
    :cond_4c
    :try_start_4c
    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 270
    const/4 v10, -0x2

    .line 272
    .local v10, "readLen":I
    const-wide/16 v6, 0x0

    .line 273
    .local v6, "bytesRead":J
    sub-long v8, p5, p3

    .line 275
    .local v8, "bytesToRead":J
    sub-long v12, p5, p3

    const-wide/16 v14, 0x1000

    cmp-long v11, v12, v14

    if-gez v11, :cond_8e

    .line 276
    sub-long v12, p5, p3

    long-to-int v11, v12

    new-array v4, v11, [B

    .line 281
    .local v4, "buff":[B
    :cond_65
    :goto_65
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_38

    .line 282
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v11, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 284
    int-to-long v12, v10

    move-object/from16 v0, p7

    invoke-virtual {v0, v12, v13}, Lnet/lingala/zip4j/progress/ProgressMonitor;->updateWorkCompleted(J)V

    .line 285
    invoke-virtual/range {p7 .. p7}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v11

    if-eqz v11, :cond_93

    .line 286
    const/4 v11, 0x3

    move-object/from16 v0, p7

    invoke-virtual {v0, v11}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_86} :catch_87
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_86} :catch_a6

    goto :goto_38

    .line 299
    .end local v4    # "buff":[B
    .end local v6    # "bytesRead":J
    .end local v8    # "bytesToRead":J
    .end local v10    # "readLen":I
    :catch_87
    move-exception v5

    .line 300
    .local v5, "e":Ljava/io/IOException;
    new-instance v11, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v11, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 278
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v6    # "bytesRead":J
    .restart local v8    # "bytesToRead":J
    .restart local v10    # "readLen":I
    :cond_8e
    const/16 v11, 0x1000

    :try_start_90
    new-array v4, v11, [B

    .line 281
    .restart local v4    # "buff":[B
    goto :goto_65

    .line 290
    :cond_93
    int-to-long v12, v10

    add-long/2addr v6, v12

    .line 292
    cmp-long v11, v6, v8

    if-eqz v11, :cond_38

    .line 294
    array-length v11, v4

    int-to-long v12, v11

    add-long/2addr v12, v6

    cmp-long v11, v12, v8

    if-lez v11, :cond_65

    .line 295
    sub-long v12, v8, v6

    long-to-int v11, v12

    new-array v4, v11, [B
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_a5} :catch_87
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_a5} :catch_a6

    goto :goto_65

    .line 301
    .end local v4    # "buff":[B
    .end local v6    # "bytesRead":J
    .end local v8    # "bytesToRead":J
    .end local v10    # "readLen":I
    :catch_a6
    move-exception v5

    .line 302
    .local v5, "e":Ljava/lang/Exception;
    new-instance v11, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v11, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v11
.end method

.method private createFileHandler(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .registers 7
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 307
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 308
    :cond_c
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "input parameter is null in getFilePointer, cannot create file handler to remove file"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 312
    :cond_14
    :try_start_14
    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_22} :catch_23

    return-object v1

    .line 313
    :catch_23
    move-exception v0

    .line 314
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private createSplitZipFileHandler(Lnet/lingala/zip4j/model/ZipModel;I)Ljava/io/RandomAccessFile;
    .registers 10
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "partNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 451
    if-nez p1, :cond_a

    .line 452
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    const-string v5, "zip model is null, cannot create split file handler"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 455
    :cond_a
    if-gez p2, :cond_14

    .line 456
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    const-string v5, "invlaid part number, cannot create split file handler"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 460
    :cond_14
    :try_start_14
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "curZipFile":Ljava/lang/String;
    const/4 v2, 0x0

    .line 462
    .local v2, "partFile":Ljava/lang/String;
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v4

    if-ne p2, v4, :cond_4e

    .line 463
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v2

    .line 471
    :goto_27
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 473
    .local v3, "tmpFile":Ljava/io/File;
    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_9c

    .line 474
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "split file does not exist: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_47} :catch_47
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_47} :catch_a4

    .line 478
    .end local v0    # "curZipFile":Ljava/lang/String;
    .end local v2    # "partFile":Ljava/lang/String;
    .end local v3    # "tmpFile":Ljava/io/File;
    :catch_47
    move-exception v1

    .line 479
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v4, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 465
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "curZipFile":Ljava/lang/String;
    .restart local v2    # "partFile":Ljava/lang/String;
    :cond_4e
    const/16 v4, 0x9

    if-lt p2, v4, :cond_77

    .line 466
    :try_start_52
    new-instance v4, Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, ".z"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_27

    .line 468
    :cond_77
    new-instance v4, Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, ".z0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_27

    .line 477
    .restart local v3    # "tmpFile":Ljava/io/File;
    :cond_9c
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_a3
    .catch Ljava/io/FileNotFoundException; {:try_start_52 .. :try_end_a3} :catch_47
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_a3} :catch_a4

    return-object v4

    .line 480
    .end local v0    # "curZipFile":Ljava/lang/String;
    .end local v2    # "partFile":Ljava/lang/String;
    .end local v3    # "tmpFile":Ljava/io/File;
    :catch_a4
    move-exception v1

    .line 481
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v4, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private initMergeSplitZipFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 28
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "outputZipFile"    # Ljava/io/File;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 342
    if-nez p1, :cond_f

    .line 343
    new-instance v13, Lnet/lingala/zip4j/exception/ZipException;

    const-string v5, "one of the input parameters is null, cannot merge split zip file"

    invoke-direct {v13, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 344
    .local v13, "e":Lnet/lingala/zip4j/exception/ZipException;
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 345
    throw v13

    .line 348
    .end local v13    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v5

    if-nez v5, :cond_22

    .line 349
    new-instance v13, Lnet/lingala/zip4j/exception/ZipException;

    const-string v5, "archive not a split zip file"

    invoke-direct {v13, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 350
    .restart local v13    # "e":Lnet/lingala/zip4j/exception/ZipException;
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 351
    throw v13

    .line 354
    .end local v13    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :cond_22
    const/4 v7, 0x0

    .line 355
    .local v7, "outputStream":Ljava/io/OutputStream;
    const/4 v6, 0x0

    .line 356
    .local v6, "inputStream":Ljava/io/RandomAccessFile;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v15, "fileSizeList":Ljava/util/ArrayList;
    const-wide/16 v22, 0x0

    .line 358
    .local v22, "totBytesWritten":J
    const/16 v19, 0x0

    .line 361
    .local v19, "splitSigRemoved":Z
    :try_start_2d
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v21

    .line 363
    .local v21, "totNoOfSplitFiles":I
    if-gtz v21, :cond_57

    .line 364
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    const-string v8, "corrupt zip model, archive not a split zip file"

    invoke-direct {v5, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_3f} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3f} :catch_140
    .catchall {:try_start_2d .. :try_end_3f} :catchall_4b

    .line 419
    .end local v21    # "totNoOfSplitFiles":I
    :catch_3f
    move-exception v13

    .line 420
    .local v13, "e":Ljava/io/IOException;
    :try_start_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 421
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v5, v13}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_4b
    .catchall {:try_start_40 .. :try_end_4b} :catchall_4b

    .line 425
    .end local v13    # "e":Ljava/io/IOException;
    :catchall_4b
    move-exception v5

    .line 426
    if-eqz v7, :cond_51

    .line 428
    :try_start_4e
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_150

    .line 434
    :cond_51
    :goto_51
    if-eqz v6, :cond_56

    .line 436
    :try_start_53
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_153

    .line 441
    :cond_56
    :goto_56
    throw v5

    .line 367
    .restart local v21    # "totNoOfSplitFiles":I
    :cond_57
    :try_start_57
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->prepareOutputStreamForMerge(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v7

    .line 368
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_61
    move/from16 v0, v17

    move/from16 v1, v21

    if-le v0, v1, :cond_99

    .line 409
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->clone()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lnet/lingala/zip4j/model/ZipModel;

    .line 410
    .local v18, "newZipModel":Lnet/lingala/zip4j/model/ZipModel;
    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setOffsetOfStartOfCentralDir(J)V

    .line 412
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v15, v2}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->updateSplitZipModel(Lnet/lingala/zip4j/model/ZipModel;Ljava/util/ArrayList;Z)V

    .line 414
    new-instance v16, Lnet/lingala/zip4j/core/HeaderWriter;

    invoke-direct/range {v16 .. v16}, Lnet/lingala/zip4j/core/HeaderWriter;-><init>()V

    .line 415
    .local v16, "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Lnet/lingala/zip4j/core/HeaderWriter;->finalizeZipFileWithoutValidations(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V

    .line 417
    invoke-virtual/range {p3 .. p3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorSuccess()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_8e} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_8e} :catch_140
    .catchall {:try_start_57 .. :try_end_8e} :catchall_4b

    .line 426
    if-eqz v7, :cond_93

    .line 428
    :try_start_90
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_156

    .line 434
    :cond_93
    :goto_93
    if-eqz v6, :cond_98

    .line 436
    :try_start_95
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_159

    .line 442
    .end local v16    # "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    .end local v18    # "newZipModel":Lnet/lingala/zip4j/model/ZipModel;
    :cond_98
    :goto_98
    return-void

    .line 369
    :cond_99
    :try_start_99
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->createSplitZipFileHandler(Lnet/lingala/zip4j/model/ZipModel;I)Ljava/io/RandomAccessFile;

    move-result-object v6

    .line 371
    const/16 v20, 0x0

    .line 372
    .local v20, "start":I
    new-instance v14, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    invoke-direct {v14, v8, v9}, Ljava/lang/Long;-><init>(J)V

    .line 374
    .local v14, "end":Ljava/lang/Long;
    if-nez v17, :cond_ea

    .line 375
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    if-eqz v5, :cond_ea

    .line 376
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_ea

    .line 377
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_ea

    .line 378
    const/4 v5, 0x4

    new-array v4, v5, [B

    .line 379
    .local v4, "buff":[B
    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 380
    invoke-virtual {v6, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 381
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v5

    int-to-long v8, v5

    const-wide/32 v10, 0x8074b50

    cmp-long v5, v8, v10

    if-nez v5, :cond_ea

    .line 382
    const/16 v20, 0x4

    .line 383
    const/16 v19, 0x1

    .line 388
    .end local v4    # "buff":[B
    :cond_ea
    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_fd

    .line 389
    new-instance v14, Ljava/lang/Long;

    .end local v14    # "end":Ljava/lang/Long;
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v8

    invoke-direct {v14, v8, v9}, Ljava/lang/Long;-><init>(J)V

    .line 392
    .restart local v14    # "end":Ljava/lang/Long;
    :cond_fd
    move/from16 v0, v20

    int-to-long v8, v0

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object/from16 v5, p0

    move-object/from16 v12, p3

    invoke-direct/range {v5 .. v12}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 393
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move/from16 v0, v20

    int-to-long v10, v0

    sub-long/2addr v8, v10

    add-long v22, v22, v8

    .line 394
    invoke-virtual/range {p3 .. p3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v5

    if-eqz v5, :cond_136

    .line 395
    const/4 v5, 0x3

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 396
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V
    :try_end_127
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_127} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_127} :catch_140
    .catchall {:try_start_99 .. :try_end_127} :catchall_4b

    .line 426
    if-eqz v7, :cond_12c

    .line 428
    :try_start_129
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_12c} :catch_14c

    .line 434
    :cond_12c
    :goto_12c
    if-eqz v6, :cond_98

    .line 436
    :try_start_12e
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_131} :catch_133

    goto/16 :goto_98

    .line 437
    :catch_133
    move-exception v5

    goto/16 :goto_98

    .line 400
    :cond_136
    :try_start_136
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_139
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_139} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_139} :catch_140
    .catchall {:try_start_136 .. :try_end_139} :catchall_4b

    .line 403
    :try_start_139
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_13c
    .catch Ljava/io/IOException; {:try_start_139 .. :try_end_13c} :catch_14e
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_13c} :catch_140
    .catchall {:try_start_139 .. :try_end_13c} :catchall_4b

    .line 368
    :goto_13c
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_61

    .line 422
    .end local v14    # "end":Ljava/lang/Long;
    .end local v17    # "i":I
    .end local v20    # "start":I
    .end local v21    # "totNoOfSplitFiles":I
    :catch_140
    move-exception v13

    .line 423
    .local v13, "e":Ljava/lang/Exception;
    :try_start_141
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 424
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v5, v13}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_14c
    .catchall {:try_start_141 .. :try_end_14c} :catchall_4b

    .line 429
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v14    # "end":Ljava/lang/Long;
    .restart local v17    # "i":I
    .restart local v20    # "start":I
    .restart local v21    # "totNoOfSplitFiles":I
    :catch_14c
    move-exception v5

    goto :goto_12c

    .line 404
    :catch_14e
    move-exception v5

    goto :goto_13c

    .line 429
    .end local v14    # "end":Ljava/lang/Long;
    .end local v17    # "i":I
    .end local v20    # "start":I
    .end local v21    # "totNoOfSplitFiles":I
    :catch_150
    move-exception v8

    goto/16 :goto_51

    .line 437
    :catch_153
    move-exception v8

    goto/16 :goto_56

    .line 429
    .restart local v16    # "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    .restart local v17    # "i":I
    .restart local v18    # "newZipModel":Lnet/lingala/zip4j/model/ZipModel;
    .restart local v21    # "totNoOfSplitFiles":I
    :catch_156
    move-exception v5

    goto/16 :goto_93

    .line 437
    :catch_159
    move-exception v5

    goto/16 :goto_98
.end method

.method private prepareOutputStreamForMerge(Ljava/io/File;)Ljava/io/OutputStream;
    .registers 5
    .param p1, "outFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 487
    if-nez p1, :cond_a

    .line 488
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "outFile is null, cannot create outputstream"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 492
    :cond_a
    :try_start_a
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_f} :catch_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_17

    return-object v1

    .line 493
    :catch_10
    move-exception v0

    .line 494
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 495
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_17
    move-exception v0

    .line 496
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private restoreFileName(Ljava/io/File;Ljava/lang/String;)V
    .registers 6
    .param p1, "zipFile"    # Ljava/io/File;
    .param p2, "tmpZipFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 229
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, "newZipFile":Ljava/io/File;
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 231
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "cannot rename modified zip file"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 234
    .end local v0    # "newZipFile":Ljava/io/File;
    :cond_19
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "cannot delete old zip file"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    .restart local v0    # "newZipFile":Ljava/io/File;
    :cond_21
    return-void
.end method

.method private updateSplitEndCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;)V
    .registers 5
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 547
    if-nez p1, :cond_c

    .line 548
    :try_start_2
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "zip model is null - cannot update end of central directory for split zip model"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_a
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_2 .. :try_end_a} :catch_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_1a

    .line 562
    :catch_a
    move-exception v0

    .line 563
    .local v0, "e":Lnet/lingala/zip4j/exception/ZipException;
    throw v0

    .line 551
    .end local v0    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :cond_c
    :try_start_c
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v1

    if-nez v1, :cond_21

    .line 552
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "corrupt zip model - getCentralDirectory, cannot update split zip model"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1a
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_c .. :try_end_1a} :catch_a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_1a

    .line 564
    :catch_1a
    move-exception v0

    .line 565
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 555
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_21
    :try_start_21
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setNoOfThisDisk(I)V

    .line 556
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setNoOfThisDiskStartOfCentralDir(I)V

    .line 557
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v1

    .line 558
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 557
    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDir(I)V

    .line 559
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v1

    .line 560
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 559
    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDirOnThisDisk(I)V
    :try_end_57
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_21 .. :try_end_57} :catch_a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_57} :catch_1a

    .line 567
    return-void
.end method

.method private updateSplitFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/util/ArrayList;Z)V
    .registers 16
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "fileSizeList"    # Ljava/util/ArrayList;
    .param p3, "splitSigRemoved"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 517
    :try_start_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v7

    if-nez v7, :cond_10

    .line 518
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    const-string v8, "corrupt zip model - getCentralDirectory, cannot update split zip model"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_e
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_e} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_84

    .line 538
    :catch_e
    move-exception v0

    .line 539
    .local v0, "e":Lnet/lingala/zip4j/exception/ZipException;
    throw v0

    .line 521
    .end local v0    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :cond_10
    :try_start_10
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v7

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 522
    .local v1, "fileHeaderCount":I
    const/4 v6, 0x0

    .line 523
    .local v6, "splitSigOverhead":I
    if-eqz p3, :cond_20

    .line 524
    const/4 v6, 0x4

    .line 526
    :cond_20
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    if-lt v2, v1, :cond_24

    .line 543
    return-void

    .line 527
    :cond_24
    const-wide/16 v4, 0x0

    .line 529
    .local v4, "offsetLHToAdd":J
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_27
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v7

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v7

    if-lt v3, v7, :cond_76

    .line 532
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v7

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/lingala/zip4j/model/FileHeader;

    .line 533
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v8

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v8

    add-long/2addr v8, v4

    .line 534
    int-to-long v10, v6

    .line 533
    sub-long/2addr v8, v10

    .line 532
    invoke-virtual {v7, v8, v9}, Lnet/lingala/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    .line 535
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v7

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/lingala/zip4j/model/FileHeader;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/FileHeader;->setDiskNumberStart(I)V

    .line 526
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 530
    :cond_76
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J
    :try_end_7f
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_10 .. :try_end_7f} :catch_e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_7f} :catch_84

    move-result-wide v8

    add-long/2addr v4, v8

    .line 529
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 540
    .end local v1    # "fileHeaderCount":I
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "offsetLHToAdd":J
    .end local v6    # "splitSigOverhead":I
    :catch_84
    move-exception v0

    .line 541
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v7, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method private updateSplitZip64EndCentralDirLocator(Lnet/lingala/zip4j/model/ZipModel;Ljava/util/ArrayList;)V
    .registers 9
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "fileSizeList"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 570
    if-nez p1, :cond_a

    .line 571
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v4, "zip model is null, cannot update split Zip64 end of central directory locator"

    invoke-direct {v1, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 574
    :cond_a
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v1

    if-nez v1, :cond_11

    .line 588
    :goto_10
    return-void

    .line 578
    :cond_11
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setNoOfDiskStartOfZip64EndOfCentralDirRec(I)V

    .line 579
    const-wide/16 v2, 0x0

    .line 581
    .local v2, "offsetZip64EndCentralDirRec":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_3b

    .line 584
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v1

    .line 585
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->getOffsetZip64EndOfCentralDirRec()J

    move-result-wide v4

    add-long/2addr v4, v2

    .line 584
    invoke-virtual {v1, v4, v5}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setOffsetZip64EndOfCentralDirRec(J)V

    .line 587
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setTotNumberOfDiscs(I)V

    goto :goto_10

    .line 582
    :cond_3b
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 581
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c
.end method

.method private updateSplitZip64EndCentralDirRec(Lnet/lingala/zip4j/model/ZipModel;Ljava/util/ArrayList;)V
    .registers 9
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "fileSizeList"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 591
    if-nez p1, :cond_b

    .line 592
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v4, "zip model is null, cannot update split Zip64 end of central directory record"

    invoke-direct {v1, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 595
    :cond_b
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v1

    if-nez v1, :cond_12

    .line 613
    :goto_11
    return-void

    .line 599
    :cond_12
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v1

    invoke-virtual {v1, v4}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setNoOfThisDisk(I)V

    .line 600
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v1

    invoke-virtual {v1, v4}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setNoOfThisDiskStartOfCentralDir(I)V

    .line 601
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v1

    .line 602
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getTotNoOfEntriesInCentralDir()I

    move-result v4

    int-to-long v4, v4

    .line 601
    invoke-virtual {v1, v4, v5}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setTotNoOfEntriesInCentralDirOnThisDisk(J)V

    .line 604
    const-wide/16 v2, 0x0

    .line 606
    .local v2, "offsetStartCenDirWRTStartDiskNo":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_33
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_4a

    .line 610
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v1

    .line 611
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->getOffsetStartCenDirWRTStartDiskNo()J

    move-result-wide v4

    add-long/2addr v4, v2

    .line 610
    invoke-virtual {v1, v4, v5}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setOffsetStartCenDirWRTStartDiskNo(J)V

    goto :goto_11

    .line 607
    :cond_4a
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 606
    add-int/lit8 v0, v0, 0x1

    goto :goto_33
.end method

.method private updateSplitZipModel(Lnet/lingala/zip4j/model/ZipModel;Ljava/util/ArrayList;Z)V
    .registers 6
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "fileSizeList"    # Ljava/util/ArrayList;
    .param p3, "splitSigRemoved"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 501
    if-nez p1, :cond_a

    .line 502
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "zip model is null, cannot update split zip model"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    .line 506
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->updateSplitFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/util/ArrayList;Z)V

    .line 507
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->updateSplitEndCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;)V

    .line 508
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 509
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->updateSplitZip64EndCentralDirLocator(Lnet/lingala/zip4j/model/ZipModel;Ljava/util/ArrayList;)V

    .line 510
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->updateSplitZip64EndCentralDirRec(Lnet/lingala/zip4j/model/ZipModel;Ljava/util/ArrayList;)V

    .line 512
    :cond_20
    return-void
.end method


# virtual methods
.method public initProgressMonitorForMergeOp(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 5
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 693
    if-nez p1, :cond_a

    .line 694
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "zip model is null, cannot calculate total work for merge op"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_a
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    .line 698
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setFileName(Ljava/lang/String;)V

    .line 699
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->calculateTotalWorkForMergeOp(Lnet/lingala/zip4j/model/ZipModel;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setTotalWork(J)V

    .line 700
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V

    .line 701
    return-void
.end method

.method public initProgressMonitorForRemoveOp(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 6
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 678
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-nez p3, :cond_e

    .line 679
    :cond_6
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "one of the input parameters is null, cannot calculate total work"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_e
    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    .line 683
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setFileName(Ljava/lang/String;)V

    .line 684
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->calculateTotalWorkForRemoveOp(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setTotalWork(J)V

    .line 685
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V

    .line 686
    return-void
.end method

.method public initRemoveZipFile(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)Ljava/util/HashMap;
    .registers 47
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 71
    if-eqz p2, :cond_4

    if-nez p1, :cond_c

    .line 72
    :cond_4
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    const-string v8, "input parameters is null in maintain zip file, cannot remove file from archive"

    invoke-direct {v5, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 75
    :cond_c
    const/16 v36, 0x0

    .line 76
    .local v36, "outputStream":Ljava/io/OutputStream;
    const/16 v41, 0x0

    .line 77
    .local v41, "zipFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 78
    .local v6, "inputStream":Ljava/io/RandomAccessFile;
    const/16 v38, 0x0

    .line 79
    .local v38, "successFlag":Z
    const/16 v40, 0x0

    .line 80
    .local v40, "tmpZipFileName":Ljava/lang/String;
    new-instance v37, Ljava/util/HashMap;

    invoke-direct/range {v37 .. v37}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v37, "retMap":Ljava/util/HashMap;
    :try_start_1a
    invoke-static/range {p1 .. p2}, Lnet/lingala/zip4j/util/Zip4jUtil;->getIndexOfFileHeader(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;)I

    move-result v28

    .line 85
    .local v28, "indexOfFileHeader":I
    if-gez v28, :cond_48

    .line 86
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    const-string v8, "file header not found in zip model, cannot remove file"

    invoke-direct {v5, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_28
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1a .. :try_end_28} :catch_28
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_28} :catch_56
    .catchall {:try_start_1a .. :try_end_28} :catchall_f7

    .line 199
    .end local v28    # "indexOfFileHeader":I
    :catch_28
    move-exception v4

    move-object/from16 v7, v36

    .line 200
    .end local v36    # "outputStream":Ljava/io/OutputStream;
    .local v4, "e":Lnet/lingala/zip4j/exception/ZipException;
    .local v7, "outputStream":Ljava/io/OutputStream;
    :goto_2b
    :try_start_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 201
    throw v4
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_31

    .line 205
    .end local v4    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :catchall_31
    move-exception v5

    .line 207
    :goto_32
    if-eqz v6, :cond_37

    .line 208
    :try_start_34
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    .line 209
    :cond_37
    if-eqz v7, :cond_3c

    .line 210
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3c} :catch_332

    .line 215
    :cond_3c
    if-eqz v38, :cond_33b

    .line 216
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->restoreFileName(Ljava/io/File;Ljava/lang/String;)V

    .line 221
    :goto_47
    throw v5

    .line 89
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .restart local v28    # "indexOfFileHeader":I
    .restart local v36    # "outputStream":Ljava/io/OutputStream;
    :cond_48
    :try_start_48
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v5

    if-eqz v5, :cond_64

    .line 90
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    const-string v8, "This is a split archive. Zip file format does not allow updating split/spanned files"

    invoke-direct {v5, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_56
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_48 .. :try_end_56} :catch_28
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_56} :catch_56
    .catchall {:try_start_48 .. :try_end_56} :catchall_f7

    .line 202
    .end local v28    # "indexOfFileHeader":I
    :catch_56
    move-exception v4

    move-object/from16 v7, v36

    .line 203
    .end local v36    # "outputStream":Ljava/io/OutputStream;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v7    # "outputStream":Ljava/io/OutputStream;
    :goto_59
    :try_start_59
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 204
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v5, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_64
    .catchall {:try_start_59 .. :try_end_64} :catchall_31

    .line 93
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .restart local v28    # "indexOfFileHeader":I
    .restart local v36    # "outputStream":Ljava/io/OutputStream;
    :cond_64
    :try_start_64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 94
    .local v22, "currTime":J
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-wide/16 v8, 0x3e8

    rem-long v8, v22, v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v40

    .line 95
    new-instance v39, Ljava/io/File;

    invoke-direct/range {v39 .. v40}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v39, "tmpFile":Ljava/io/File;
    :goto_86
    invoke-virtual/range {v39 .. v39}, Ljava/io/File;->exists()Z
    :try_end_89
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_64 .. :try_end_89} :catch_28
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_89} :catch_56
    .catchall {:try_start_64 .. :try_end_89} :catchall_f7

    move-result v5

    if-nez v5, :cond_cb

    .line 104
    :try_start_8c
    new-instance v7, Lnet/lingala/zip4j/io/SplitOutputStream;

    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v40

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v5}, Lnet/lingala/zip4j/io/SplitOutputStream;-><init>(Ljava/io/File;)V
    :try_end_98
    .catch Ljava/io/FileNotFoundException; {:try_start_8c .. :try_end_98} :catch_ee
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_8c .. :try_end_98} :catch_28
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_98} :catch_56
    .catchall {:try_start_8c .. :try_end_98} :catchall_f7

    .line 109
    .end local v36    # "outputStream":Ljava/io/OutputStream;
    .restart local v7    # "outputStream":Ljava/io/OutputStream;
    :try_start_98
    new-instance v42, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_a3
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_98 .. :try_end_a3} :catch_363
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a3} :catch_360
    .catchall {:try_start_98 .. :try_end_a3} :catchall_31

    .line 111
    .end local v41    # "zipFile":Ljava/io/File;
    .local v42, "zipFile":Ljava/io/File;
    :try_start_a3
    const-string v5, "r"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->createFileHandler(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v6

    .line 113
    new-instance v25, Lnet/lingala/zip4j/core/HeaderReader;

    move-object/from16 v0, v25

    invoke-direct {v0, v6}, Lnet/lingala/zip4j/core/HeaderReader;-><init>(Ljava/io/RandomAccessFile;)V

    .line 114
    .local v25, "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/core/HeaderReader;->readLocalFileHeader(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/model/LocalFileHeader;

    move-result-object v29

    .line 115
    .local v29, "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    if-nez v29, :cond_fc

    .line 116
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    const-string v8, "invalid local file header, cannot remove file from archive"

    invoke-direct {v5, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_c6
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_a3 .. :try_end_c6} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_c6} :catch_164
    .catchall {:try_start_a3 .. :try_end_c6} :catchall_1fa

    .line 199
    .end local v25    # "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    .end local v29    # "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    :catch_c6
    move-exception v4

    move-object/from16 v41, v42

    .end local v42    # "zipFile":Ljava/io/File;
    .restart local v41    # "zipFile":Ljava/io/File;
    goto/16 :goto_2b

    .line 98
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .restart local v36    # "outputStream":Ljava/io/OutputStream;
    :cond_cb
    :try_start_cb
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 99
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-wide/16 v8, 0x3e8

    rem-long v8, v22, v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v40

    .line 100
    new-instance v39, Ljava/io/File;

    .end local v39    # "tmpFile":Ljava/io/File;
    invoke-direct/range {v39 .. v40}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v39    # "tmpFile":Ljava/io/File;
    goto :goto_86

    .line 105
    :catch_ee
    move-exception v21

    .line 106
    .local v21, "e1":Ljava/io/FileNotFoundException;
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_f7
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_cb .. :try_end_f7} :catch_28
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_f7} :catch_56
    .catchall {:try_start_cb .. :try_end_f7} :catchall_f7

    .line 205
    .end local v21    # "e1":Ljava/io/FileNotFoundException;
    .end local v22    # "currTime":J
    .end local v28    # "indexOfFileHeader":I
    .end local v39    # "tmpFile":Ljava/io/File;
    :catchall_f7
    move-exception v5

    move-object/from16 v7, v36

    .end local v36    # "outputStream":Ljava/io/OutputStream;
    .restart local v7    # "outputStream":Ljava/io/OutputStream;
    goto/16 :goto_32

    .line 119
    .end local v41    # "zipFile":Ljava/io/File;
    .restart local v22    # "currTime":J
    .restart local v25    # "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    .restart local v28    # "indexOfFileHeader":I
    .restart local v29    # "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    .restart local v39    # "tmpFile":Ljava/io/File;
    .restart local v42    # "zipFile":Ljava/io/File;
    :cond_fc
    :try_start_fc
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v18

    .line 121
    .local v18, "offsetLocalFileHeader":J
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v5

    if-eqz v5, :cond_11c

    .line 122
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v8

    const-wide/16 v12, -0x1

    cmp-long v5, v8, v12

    if-eqz v5, :cond_11c

    .line 123
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v18

    .line 126
    :cond_11c
    const-wide/16 v32, -0x1

    .line 128
    .local v32, "offsetEndOfCompressedFile":J
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v10

    .line 129
    .local v10, "offsetStartCentralDir":J
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v5

    if-eqz v5, :cond_13a

    .line 130
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v5

    if-eqz v5, :cond_13a

    .line 131
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->getOffsetStartCenDirWRTStartDiskNo()J

    move-result-wide v10

    .line 135
    :cond_13a
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v24

    .line 137
    .local v24, "fileHeaderList":Ljava/util/ArrayList;
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, v28

    if-ne v0, v5, :cond_169

    .line 138
    const-wide/16 v8, 0x1

    sub-long v32, v10, v8

    .line 150
    :cond_150
    :goto_150
    const-wide/16 v8, 0x0

    cmp-long v5, v18, v8

    if-ltz v5, :cond_15c

    const-wide/16 v8, 0x0

    cmp-long v5, v32, v8

    if-gez v5, :cond_19e

    .line 151
    :cond_15c
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    const-string v8, "invalid offset for start and end of local file, cannot remove file"

    invoke-direct {v5, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 202
    .end local v10    # "offsetStartCentralDir":J
    .end local v18    # "offsetLocalFileHeader":J
    .end local v24    # "fileHeaderList":Ljava/util/ArrayList;
    .end local v25    # "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    .end local v29    # "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    .end local v32    # "offsetEndOfCompressedFile":J
    :catch_164
    move-exception v4

    move-object/from16 v41, v42

    .end local v42    # "zipFile":Ljava/io/File;
    .restart local v41    # "zipFile":Ljava/io/File;
    goto/16 :goto_59

    .line 140
    .end local v41    # "zipFile":Ljava/io/File;
    .restart local v10    # "offsetStartCentralDir":J
    .restart local v18    # "offsetLocalFileHeader":J
    .restart local v24    # "fileHeaderList":Ljava/util/ArrayList;
    .restart local v25    # "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    .restart local v29    # "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    .restart local v32    # "offsetEndOfCompressedFile":J
    .restart local v42    # "zipFile":Ljava/io/File;
    :cond_169
    add-int/lit8 v5, v28, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lnet/lingala/zip4j/model/FileHeader;

    .line 141
    .local v31, "nextFileHeader":Lnet/lingala/zip4j/model/FileHeader;
    if-eqz v31, :cond_150

    .line 142
    invoke-virtual/range {v31 .. v31}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v8

    const-wide/16 v12, 0x1

    sub-long v32, v8, v12

    .line 143
    invoke-virtual/range {v31 .. v31}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v5

    if-eqz v5, :cond_150

    .line 144
    invoke-virtual/range {v31 .. v31}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v8

    const-wide/16 v12, -0x1

    cmp-long v5, v8, v12

    if-eqz v5, :cond_150

    .line 145
    invoke-virtual/range {v31 .. v31}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v8

    const-wide/16 v12, 0x1

    sub-long v32, v8, v12

    goto :goto_150

    .line 154
    .end local v31    # "nextFileHeader":Lnet/lingala/zip4j/model/FileHeader;
    :cond_19e
    if-nez v28, :cond_1e4

    .line 155
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v8, 0x1

    if-le v5, v8, :cond_1ba

    .line 157
    const-wide/16 v8, 0x1

    add-long v8, v8, v32

    move-object/from16 v5, p0

    move-object/from16 v12, p3

    invoke-direct/range {v5 .. v12}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 166
    :cond_1ba
    :goto_1ba
    invoke-virtual/range {p3 .. p3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v5

    if-eqz v5, :cond_22c

    .line 167
    const/4 v5, 0x3

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 168
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V
    :try_end_1cc
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_fc .. :try_end_1cc} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_1cc} :catch_164
    .catchall {:try_start_fc .. :try_end_1cc} :catchall_1fa

    .line 207
    if-eqz v6, :cond_1d1

    .line 208
    :try_start_1ce
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    .line 209
    :cond_1d1
    if-eqz v7, :cond_1d6

    .line 210
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_1d6
    .catch Ljava/io/IOException; {:try_start_1ce .. :try_end_1d6} :catch_216

    .line 215
    :cond_1d6
    if-eqz v38, :cond_21f

    .line 216
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->restoreFileName(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    :goto_1e1
    const/16 v37, 0x0

    .line 223
    .end local v37    # "retMap":Ljava/util/HashMap;
    :goto_1e3
    return-object v37

    .line 159
    .restart local v37    # "retMap":Ljava/util/HashMap;
    :cond_1e4
    :try_start_1e4
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, v28

    if-ne v0, v5, :cond_1ff

    .line 160
    const-wide/16 v16, 0x0

    move-object/from16 v13, p0

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v20, p3

    invoke-direct/range {v13 .. v20}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;)V

    goto :goto_1ba

    .line 205
    .end local v10    # "offsetStartCentralDir":J
    .end local v18    # "offsetLocalFileHeader":J
    .end local v24    # "fileHeaderList":Ljava/util/ArrayList;
    .end local v25    # "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    .end local v29    # "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    .end local v32    # "offsetEndOfCompressedFile":J
    :catchall_1fa
    move-exception v5

    move-object/from16 v41, v42

    .end local v42    # "zipFile":Ljava/io/File;
    .restart local v41    # "zipFile":Ljava/io/File;
    goto/16 :goto_32

    .line 162
    .end local v41    # "zipFile":Ljava/io/File;
    .restart local v10    # "offsetStartCentralDir":J
    .restart local v18    # "offsetLocalFileHeader":J
    .restart local v24    # "fileHeaderList":Ljava/util/ArrayList;
    .restart local v25    # "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    .restart local v29    # "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    .restart local v32    # "offsetEndOfCompressedFile":J
    .restart local v42    # "zipFile":Ljava/io/File;
    :cond_1ff
    const-wide/16 v16, 0x0

    move-object/from16 v13, p0

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v20, p3

    invoke-direct/range {v13 .. v20}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 163
    const-wide/16 v8, 0x1

    add-long v8, v8, v32

    move-object/from16 v5, p0

    move-object/from16 v12, p3

    invoke-direct/range {v5 .. v12}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;)V
    :try_end_215
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1e4 .. :try_end_215} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_1e4 .. :try_end_215} :catch_164
    .catchall {:try_start_1e4 .. :try_end_215} :catchall_1fa

    goto :goto_1ba

    .line 211
    :catch_216
    move-exception v4

    .line 212
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    const-string v8, "cannot close input stream or output stream when trying to delete a file from zip file"

    invoke-direct {v5, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 218
    .end local v4    # "e":Ljava/io/IOException;
    :cond_21f
    new-instance v30, Ljava/io/File;

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    .local v30, "newZipFile":Ljava/io/File;
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->delete()Z

    goto :goto_1e1

    .line 172
    .end local v30    # "newZipFile":Ljava/io/File;
    :cond_22c
    :try_start_22c
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v8

    move-object v0, v7

    check-cast v0, Lnet/lingala/zip4j/io/SplitOutputStream;

    move-object v5, v0

    invoke-virtual {v5}, Lnet/lingala/zip4j/io/SplitOutputStream;->getFilePointer()J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setOffsetOfStartOfCentralDir(J)V

    .line 173
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v5

    .line 174
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v8

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getTotNoOfEntriesInCentralDir()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    .line 173
    invoke-virtual {v5, v8}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDir(I)V

    .line 175
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v5

    .line 176
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v8

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getTotNoOfEntriesInCentralDirOnThisDisk()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    .line 175
    invoke-virtual {v5, v8}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDirOnThisDisk(I)V

    .line 178
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 180
    move/from16 v27, v28

    .local v27, "i":I
    :goto_26c
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v27

    if-lt v0, v5, :cond_2b4

    .line 191
    new-instance v26, Lnet/lingala/zip4j/core/HeaderWriter;

    invoke-direct/range {v26 .. v26}, Lnet/lingala/zip4j/core/HeaderWriter;-><init>()V

    .line 192
    .local v26, "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lnet/lingala/zip4j/core/HeaderWriter;->finalizeZipFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V

    .line 194
    const/16 v38, 0x1

    .line 196
    const-string v5, "offsetCentralDir"

    .line 197
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v8

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 196
    move-object/from16 v0, v37

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29d
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_22c .. :try_end_29d} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_22c .. :try_end_29d} :catch_164
    .catchall {:try_start_22c .. :try_end_29d} :catchall_1fa

    .line 207
    if-eqz v6, :cond_2a2

    .line 208
    :try_start_29f
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    .line 209
    :cond_2a2
    if-eqz v7, :cond_2a7

    .line 210
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_2a7
    .catch Ljava/io/IOException; {:try_start_29f .. :try_end_2a7} :catch_349

    .line 215
    :cond_2a7
    if-eqz v38, :cond_352

    .line 216
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->restoreFileName(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_1e3

    .line 181
    .end local v26    # "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    :cond_2b4
    :try_start_2b4
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v34

    .line 182
    .local v34, "offsetLocalHdr":J
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v5

    if-eqz v5, :cond_314

    .line 183
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v8

    const-wide/16 v12, -0x1

    cmp-long v5, v8, v12

    if-eqz v5, :cond_314

    .line 184
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v34

    .line 187
    :cond_314
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/lingala/zip4j/model/FileHeader;

    .line 188
    sub-long v8, v32, v18

    sub-long v8, v34, v8

    const-wide/16 v12, 0x1

    sub-long/2addr v8, v12

    .line 187
    invoke-virtual {v5, v8, v9}, Lnet/lingala/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V
    :try_end_32e
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_2b4 .. :try_end_32e} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_2b4 .. :try_end_32e} :catch_164
    .catchall {:try_start_2b4 .. :try_end_32e} :catchall_1fa

    .line 180
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_26c

    .line 211
    .end local v10    # "offsetStartCentralDir":J
    .end local v18    # "offsetLocalFileHeader":J
    .end local v22    # "currTime":J
    .end local v24    # "fileHeaderList":Ljava/util/ArrayList;
    .end local v25    # "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    .end local v27    # "i":I
    .end local v28    # "indexOfFileHeader":I
    .end local v29    # "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    .end local v32    # "offsetEndOfCompressedFile":J
    .end local v34    # "offsetLocalHdr":J
    .end local v39    # "tmpFile":Ljava/io/File;
    .end local v42    # "zipFile":Ljava/io/File;
    .restart local v41    # "zipFile":Ljava/io/File;
    :catch_332
    move-exception v4

    .line 212
    .restart local v4    # "e":Ljava/io/IOException;
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    const-string v8, "cannot close input stream or output stream when trying to delete a file from zip file"

    invoke-direct {v5, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 218
    .end local v4    # "e":Ljava/io/IOException;
    :cond_33b
    new-instance v30, Ljava/io/File;

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    .restart local v30    # "newZipFile":Ljava/io/File;
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->delete()Z

    goto/16 :goto_47

    .line 211
    .end local v30    # "newZipFile":Ljava/io/File;
    .end local v41    # "zipFile":Ljava/io/File;
    .restart local v10    # "offsetStartCentralDir":J
    .restart local v18    # "offsetLocalFileHeader":J
    .restart local v22    # "currTime":J
    .restart local v24    # "fileHeaderList":Ljava/util/ArrayList;
    .restart local v25    # "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    .restart local v26    # "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    .restart local v27    # "i":I
    .restart local v28    # "indexOfFileHeader":I
    .restart local v29    # "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    .restart local v32    # "offsetEndOfCompressedFile":J
    .restart local v39    # "tmpFile":Ljava/io/File;
    .restart local v42    # "zipFile":Ljava/io/File;
    :catch_349
    move-exception v4

    .line 212
    .restart local v4    # "e":Ljava/io/IOException;
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    const-string v8, "cannot close input stream or output stream when trying to delete a file from zip file"

    invoke-direct {v5, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 218
    .end local v4    # "e":Ljava/io/IOException;
    :cond_352
    new-instance v30, Ljava/io/File;

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    .restart local v30    # "newZipFile":Ljava/io/File;
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->delete()Z

    goto/16 :goto_1e3

    .line 202
    .end local v10    # "offsetStartCentralDir":J
    .end local v18    # "offsetLocalFileHeader":J
    .end local v24    # "fileHeaderList":Ljava/util/ArrayList;
    .end local v25    # "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    .end local v26    # "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    .end local v27    # "i":I
    .end local v29    # "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    .end local v30    # "newZipFile":Ljava/io/File;
    .end local v32    # "offsetEndOfCompressedFile":J
    .end local v42    # "zipFile":Ljava/io/File;
    .restart local v41    # "zipFile":Ljava/io/File;
    :catch_360
    move-exception v4

    goto/16 :goto_59

    .line 199
    :catch_363
    move-exception v4

    goto/16 :goto_2b
.end method

.method public mergeSplitZipFiles(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V
    .registers 11
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "outputZipFile"    # Ljava/io/File;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p4, "runInThread"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 325
    if-eqz p4, :cond_11

    .line 326
    new-instance v0, Lnet/lingala/zip4j/util/ArchiveMaintainer$2;

    const-string v2, "Zip4j"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lnet/lingala/zip4j/util/ArchiveMaintainer$2;-><init>(Lnet/lingala/zip4j/util/ArchiveMaintainer;Ljava/lang/String;Lnet/lingala/zip4j/model/ZipModel;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 334
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 338
    .end local v0    # "thread":Ljava/lang/Thread;
    :goto_10
    return-void

    .line 336
    :cond_11
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->initMergeSplitZipFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    goto :goto_10
.end method

.method public removeZipFile(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)Ljava/util/HashMap;
    .registers 12
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p4, "runInThread"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 48
    if-eqz p4, :cond_12

    .line 49
    new-instance v0, Lnet/lingala/zip4j/util/ArchiveMaintainer$1;

    const-string v2, "Zip4j"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lnet/lingala/zip4j/util/ArchiveMaintainer$1;-><init>(Lnet/lingala/zip4j/util/ArchiveMaintainer;Ljava/lang/String;Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 58
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 59
    const/4 v6, 0x0

    .line 63
    .end local v0    # "thread":Ljava/lang/Thread;
    :goto_11
    return-object v6

    .line 61
    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->initRemoveZipFile(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)Ljava/util/HashMap;

    move-result-object v6

    .line 62
    .local v6, "retMap":Ljava/util/HashMap;
    invoke-virtual {p3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorSuccess()V

    goto :goto_11
.end method

.method public setComment(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)V
    .registers 13
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 616
    if-nez p2, :cond_a

    .line 617
    new-instance v8, Lnet/lingala/zip4j/exception/ZipException;

    const-string v9, "comment is null, cannot update Zip file with comment"

    invoke-direct {v8, v9}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 620
    :cond_a
    if-nez p1, :cond_14

    .line 621
    new-instance v8, Lnet/lingala/zip4j/exception/ZipException;

    const-string v9, "zipModel is null, cannot update Zip file with comment"

    invoke-direct {v8, v9}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 624
    :cond_14
    move-object v3, p2

    .line 625
    .local v3, "encodedComment":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 626
    .local v0, "commentBytes":[B
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 628
    .local v1, "commentLength":I
    const-string v8, "windows-1254"

    invoke-static {v8}, Lnet/lingala/zip4j/util/Zip4jUtil;->isSupportedCharset(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3d

    .line 630
    :try_start_25
    new-instance v4, Ljava/lang/String;

    const-string v8, "windows-1254"

    invoke-virtual {p2, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    const-string v9, "windows-1254"

    invoke-direct {v4, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_32
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_25 .. :try_end_32} :catch_4a

    .line 631
    .end local v3    # "encodedComment":Ljava/lang/String;
    .local v4, "encodedComment":Ljava/lang/String;
    :try_start_32
    const-string v8, "windows-1254"

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 632
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_3b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_32 .. :try_end_3b} :catch_c1

    move-result v1

    move-object v3, v4

    .line 640
    .end local v4    # "encodedComment":Ljava/lang/String;
    .restart local v3    # "encodedComment":Ljava/lang/String;
    :cond_3d
    :goto_3d
    const v8, 0xffff

    if-le v1, v8, :cond_55

    .line 641
    new-instance v8, Lnet/lingala/zip4j/exception/ZipException;

    const-string v9, "comment length exceeds maximum length"

    invoke-direct {v8, v9}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 633
    :catch_4a
    move-exception v2

    .line 634
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :goto_4b
    move-object v3, p2

    .line 635
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 636
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_3d

    .line 644
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_55
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v8

    invoke-virtual {v8, v3}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setComment(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v8

    invoke-virtual {v8, v0}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setCommentBytes([B)V

    .line 646
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v8

    invoke-virtual {v8, v1}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setCommentLength(I)V

    .line 648
    const/4 v6, 0x0

    .line 651
    .local v6, "outputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :try_start_6b
    new-instance v5, Lnet/lingala/zip4j/core/HeaderWriter;

    invoke-direct {v5}, Lnet/lingala/zip4j/core/HeaderWriter;-><init>()V

    .line 652
    .local v5, "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    new-instance v7, Lnet/lingala/zip4j/io/SplitOutputStream;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/io/SplitOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/io/FileNotFoundException; {:try_start_6b .. :try_end_79} :catch_bf
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_79} :catch_ae
    .catchall {:try_start_6b .. :try_end_79} :catchall_a7

    .line 654
    .end local v6    # "outputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .local v7, "outputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :try_start_79
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v8

    if-eqz v8, :cond_93

    .line 655
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v8

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->getOffsetStartCenDirWRTStartDiskNo()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lnet/lingala/zip4j/io/SplitOutputStream;->seek(J)V

    .line 660
    :goto_8a
    invoke-virtual {v5, p1, v7}, Lnet/lingala/zip4j/core/HeaderWriter;->finalizeZipFileWithoutValidations(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V
    :try_end_8d
    .catch Ljava/io/FileNotFoundException; {:try_start_79 .. :try_end_8d} :catch_9f
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_8d} :catch_bc
    .catchall {:try_start_79 .. :try_end_8d} :catchall_b9

    .line 666
    if-eqz v7, :cond_92

    .line 668
    :try_start_8f
    invoke-virtual {v7}, Lnet/lingala/zip4j/io/SplitOutputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_b7

    .line 674
    :cond_92
    :goto_92
    return-void

    .line 657
    :cond_93
    :try_start_93
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v8

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lnet/lingala/zip4j/io/SplitOutputStream;->seek(J)V
    :try_end_9e
    .catch Ljava/io/FileNotFoundException; {:try_start_93 .. :try_end_9e} :catch_9f
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_9e} :catch_bc
    .catchall {:try_start_93 .. :try_end_9e} :catchall_b9

    goto :goto_8a

    .line 661
    :catch_9f
    move-exception v2

    move-object v6, v7

    .line 662
    .end local v5    # "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    .end local v7    # "outputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "outputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :goto_a1
    :try_start_a1
    new-instance v8, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v8, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_a7
    .catchall {:try_start_a1 .. :try_end_a7} :catchall_a7

    .line 665
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catchall_a7
    move-exception v8

    .line 666
    :goto_a8
    if-eqz v6, :cond_ad

    .line 668
    :try_start_aa
    invoke-virtual {v6}, Lnet/lingala/zip4j/io/SplitOutputStream;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_b5

    .line 673
    :cond_ad
    :goto_ad
    throw v8

    .line 663
    :catch_ae
    move-exception v2

    .line 664
    .local v2, "e":Ljava/io/IOException;
    :goto_af
    :try_start_af
    new-instance v8, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v8, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_b5
    .catchall {:try_start_af .. :try_end_b5} :catchall_a7

    .line 669
    .end local v2    # "e":Ljava/io/IOException;
    :catch_b5
    move-exception v9

    goto :goto_ad

    .end local v6    # "outputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .restart local v5    # "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    .restart local v7    # "outputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :catch_b7
    move-exception v8

    goto :goto_92

    .line 665
    :catchall_b9
    move-exception v8

    move-object v6, v7

    .end local v7    # "outputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .restart local v6    # "outputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    goto :goto_a8

    .line 663
    .end local v6    # "outputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .restart local v7    # "outputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :catch_bc
    move-exception v2

    move-object v6, v7

    .end local v7    # "outputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .restart local v6    # "outputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    goto :goto_af

    .line 661
    .end local v5    # "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    :catch_bf
    move-exception v2

    goto :goto_a1

    .line 633
    .end local v3    # "encodedComment":Ljava/lang/String;
    .end local v6    # "outputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .restart local v4    # "encodedComment":Ljava/lang/String;
    :catch_c1
    move-exception v2

    move-object v3, v4

    .end local v4    # "encodedComment":Ljava/lang/String;
    .restart local v3    # "encodedComment":Ljava/lang/String;
    goto :goto_4b
.end method
