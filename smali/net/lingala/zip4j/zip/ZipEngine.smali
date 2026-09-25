.class public Lnet/lingala/zip4j/zip/ZipEngine;
.super Ljava/lang/Object;
.source "ZipEngine.java"


# instance fields
.field private zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/ZipModel;)V
    .registers 4
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_d

    .line 49
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "zip model is null in ZipEngine constructor"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_d
    iput-object p1, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 53
    return-void
.end method

.method static access$0(Lnet/lingala/zip4j/zip/ZipEngine;Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/zip/ZipEngine;->initAddFiles(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method private calculateTotalWork(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;)J
    .registers 13
    .param p1, "fileList"    # Ljava/util/ArrayList;
    .param p2, "parameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 453
    if-nez p1, :cond_a

    .line 454
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    const-string v6, "file list is null, cannot calculate total work"

    invoke-direct {v3, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 457
    :cond_a
    const-wide/16 v4, 0x0

    .line 459
    .local v4, "totalWork":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_14

    .line 483
    return-wide v4

    .line 460
    :cond_14
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/io/File;

    if-eqz v3, :cond_99

    .line 461
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_99

    .line 462
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 463
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v3

    if-nez v3, :cond_9d

    .line 464
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileLengh(Ljava/io/File;)J

    move-result-wide v6

    const-wide/16 v8, 0x2

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 469
    :goto_42
    iget-object v3, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v3

    if-eqz v3, :cond_99

    .line 470
    iget-object v3, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_99

    .line 471
    iget-object v3, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_99

    .line 473
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getRootFolderInZip()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getDefaultFolderPath()Ljava/lang/String;

    move-result-object v7

    .line 472
    invoke-static {v3, v6, v7}, Lnet/lingala/zip4j/util/Zip4jUtil;->getRelativeFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 474
    .local v2, "relativeFileName":Ljava/lang/String;
    iget-object v3, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-static {v3, v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v0

    .line 475
    .local v0, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    if-eqz v0, :cond_99

    .line 476
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileLengh(Ljava/io/File;)J

    move-result-wide v6

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v8

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 459
    .end local v0    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v2    # "relativeFileName":Ljava/lang/String;
    :cond_99
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_d

    .line 466
    :cond_9d
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileLengh(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v4, v6

    goto :goto_42
.end method

.method private checkParameters(Lnet/lingala/zip4j/model/ZipParameters;)V
    .registers 5
    .param p1, "parameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    const/4 v2, -0x1

    .line 303
    if-nez p1, :cond_d

    .line 304
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "cannot validate zip parameters"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_d
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v0

    if-eqz v0, :cond_21

    .line 308
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v0

    if-eq v0, v1, :cond_21

    .line 309
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "unsupported compression type"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_21
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v0

    if-ne v0, v1, :cond_3d

    .line 313
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionLevel()I

    move-result v0

    if-gez v0, :cond_3d

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionLevel()I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_3d

    .line 314
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid compression level. compression level dor deflate should be in the range of 0-9"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_3d
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 319
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v0

    if-eqz v0, :cond_59

    .line 320
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v0

    const/16 v1, 0x63

    if-eq v0, v1, :cond_59

    .line 321
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "unsupported encryption method"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_59
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getPassword()[C

    move-result-object v0

    if-eqz v0, :cond_66

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getPassword()[C

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_74

    .line 325
    :cond_66
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "input password is empty or null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_6e
    invoke-virtual {p1, v2}, Lnet/lingala/zip4j/model/ZipParameters;->setAesKeyStrength(I)V

    .line 329
    invoke-virtual {p1, v2}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptionMethod(I)V

    .line 332
    :cond_74
    return-void
.end method

.method private createEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 443
    new-instance v0, Lnet/lingala/zip4j/model/EndCentralDirRecord;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/EndCentralDirRecord;-><init>()V

    .line 444
    .local v0, "endCentralDirRecord":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    const-wide/32 v2, 0x6054b50

    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setSignature(J)V

    .line 445
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setNoOfThisDisk(I)V

    .line 446
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDir(I)V

    .line 447
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDirOnThisDisk(I)V

    .line 448
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setOffsetOfStartOfCentralDir(J)V

    .line 449
    return-object v0
.end method

.method private initAddFiles(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 22
    .param p1, "fileList"    # Ljava/util/ArrayList;
    .param p2, "parameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 92
    if-eqz p1, :cond_4

    if-nez p2, :cond_c

    .line 93
    :cond_4
    new-instance v13, Lnet/lingala/zip4j/exception/ZipException;

    const-string v14, "one of the input parameters is null when adding files"

    invoke-direct {v13, v14}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 96
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-gtz v13, :cond_1a

    .line 97
    new-instance v13, Lnet/lingala/zip4j/exception/ZipException;

    const-string v14, "no files to add"

    invoke-direct {v13, v14}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 100
    :cond_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v13}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v13

    if-nez v13, :cond_2f

    .line 101
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct/range {p0 .. p0}, Lnet/lingala/zip4j/zip/ZipEngine;->createEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v14

    invoke-virtual {v13, v14}, Lnet/lingala/zip4j/model/ZipModel;->setEndCentralDirRecord(Lnet/lingala/zip4j/model/EndCentralDirRecord;)V

    .line 104
    :cond_2f
    const/4 v8, 0x0

    .line 105
    .local v8, "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    const/4 v5, 0x0

    .line 107
    .local v5, "inputStream":Ljava/io/InputStream;
    :try_start_31
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/zip/ZipEngine;->checkParameters(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 109
    invoke-direct/range {p0 .. p3}, Lnet/lingala/zip4j/zip/ZipEngine;->removeFilesIfExists(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v13}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v7

    .line 113
    .local v7, "isZipFileAlreadExists":Z
    new-instance v12, Lnet/lingala/zip4j/io/SplitOutputStream;

    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v14}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v14}, Lnet/lingala/zip4j/model/ZipModel;->getSplitLength()J

    move-result-wide v14

    invoke-direct {v12, v13, v14, v15}, Lnet/lingala/zip4j/io/SplitOutputStream;-><init>(Ljava/io/File;J)V

    .line 114
    .local v12, "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    new-instance v9, Lnet/lingala/zip4j/io/ZipOutputStream;

    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v9, v12, v13}, Lnet/lingala/zip4j/io/ZipOutputStream;-><init>(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipModel;)V
    :try_end_6a
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_31 .. :try_end_6a} :catch_207
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_6a} :catch_201
    .catchall {:try_start_31 .. :try_end_6a} :catchall_86

    .line 116
    .end local v8    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .local v9, "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    if-eqz v7, :cond_a1

    .line 117
    :try_start_6c
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v13}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v13

    if-nez v13, :cond_92

    .line 118
    new-instance v13, Lnet/lingala/zip4j/exception/ZipException;

    const-string v14, "invalid end of central directory record"

    invoke-direct {v13, v14}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_7e
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_6c .. :try_end_7e} :catch_7e
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_7e} :catch_1a5
    .catchall {:try_start_6c .. :try_end_7e} :catchall_1de

    .line 182
    :catch_7e
    move-exception v2

    move-object v8, v9

    .line 183
    .end local v7    # "isZipFileAlreadExists":Z
    .end local v9    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .end local v12    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .local v2, "e":Lnet/lingala/zip4j/exception/ZipException;
    .restart local v8    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    :goto_80
    :try_start_80
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 184
    throw v2
    :try_end_86
    .catchall {:try_start_80 .. :try_end_86} :catchall_86

    .line 188
    .end local v2    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :catchall_86
    move-exception v13

    .line 189
    :goto_87
    if-eqz v5, :cond_8c

    .line 191
    :try_start_89
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_1f0

    .line 196
    :cond_8c
    :goto_8c
    if-eqz v8, :cond_91

    .line 198
    :try_start_8e
    invoke-virtual {v8}, Lnet/lingala/zip4j/io/ZipOutputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_1f3

    .line 202
    :cond_91
    :goto_91
    throw v13

    .line 120
    .end local v8    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v7    # "isZipFileAlreadExists":Z
    .restart local v9    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v12    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :cond_92
    :try_start_92
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v13}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v13

    invoke-virtual {v13}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Lnet/lingala/zip4j/io/SplitOutputStream;->seek(J)V

    .line 122
    :cond_a1
    const/16 v13, 0x1000

    new-array v10, v13, [B
    :try_end_a5
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_92 .. :try_end_a5} :catch_7e
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_a5} :catch_1a5
    .catchall {:try_start_92 .. :try_end_a5} :catchall_1de

    .line 123
    .local v10, "readBuff":[B
    const/4 v11, -0x1

    .line 124
    .local v11, "readLen":I
    const/4 v4, 0x0

    .local v4, "i":I
    move-object v6, v5

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .local v6, "inputStream":Ljava/io/InputStream;
    :goto_a8
    :try_start_a8
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v4, v13, :cond_c0

    .line 180
    invoke-virtual {v9}, Lnet/lingala/zip4j/io/ZipOutputStream;->finish()V

    .line 181
    invoke-virtual/range {p3 .. p3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorSuccess()V
    :try_end_b4
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_a8 .. :try_end_b4} :catch_20a
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b4} :catch_203
    .catchall {:try_start_a8 .. :try_end_b4} :catchall_1fc

    .line 189
    if-eqz v6, :cond_b9

    .line 191
    :try_start_b6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_1f6

    .line 196
    :cond_b9
    :goto_b9
    if-eqz v9, :cond_be

    .line 198
    :try_start_bb
    invoke-virtual {v9}, Lnet/lingala/zip4j/io/ZipOutputStream;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_1f9

    :cond_be
    :goto_be
    move-object v5, v6

    .line 203
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :cond_bf
    :goto_bf
    return-void

    .line 126
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    :cond_c0
    :try_start_c0
    invoke-virtual/range {p3 .. p3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v13

    if-eqz v13, :cond_de

    .line 127
    const/4 v13, 0x3

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 128
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V
    :try_end_d2
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_c0 .. :try_end_d2} :catch_20a
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_d2} :catch_203
    .catchall {:try_start_c0 .. :try_end_d2} :catchall_1fc

    .line 189
    if-eqz v6, :cond_d7

    .line 191
    :try_start_d4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_1e2

    .line 196
    :cond_d7
    :goto_d7
    if-eqz v9, :cond_dc

    .line 198
    :try_start_d9
    invoke-virtual {v9}, Lnet/lingala/zip4j/io/ZipOutputStream;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_dc} :catch_1e5

    :cond_dc
    :goto_dc
    move-object v5, v6

    .line 129
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    goto :goto_bf

    .line 132
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    :cond_de
    :try_start_de
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/ZipParameters;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/lingala/zip4j/model/ZipParameters;

    .line 134
    .local v3, "fileParameters":Lnet/lingala/zip4j/model/ZipParameters;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setFileName(Ljava/lang/String;)V

    .line 136
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_166

    .line 137
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v13

    if-eqz v13, :cond_150

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v13

    if-nez v13, :cond_150

    .line 138
    const/4 v13, 0x3

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    .line 139
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-static {v13, v0}, Lnet/lingala/zip4j/util/CRCUtil;->computeFileCRC(Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)J

    move-result-wide v14

    long-to-int v13, v14

    invoke-virtual {v3, v13}, Lnet/lingala/zip4j/model/ZipParameters;->setSourceFileCRC(I)V

    .line 140
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    .line 142
    invoke-virtual/range {p3 .. p3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v13

    if-eqz v13, :cond_150

    .line 143
    const/4 v13, 0x3

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 144
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V
    :try_end_143
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_de .. :try_end_143} :catch_20a
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_143} :catch_203
    .catchall {:try_start_de .. :try_end_143} :catchall_1fc

    .line 189
    if-eqz v6, :cond_148

    .line 191
    :try_start_145
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_148
    .catch Ljava/io/IOException; {:try_start_145 .. :try_end_148} :catch_1e8

    .line 196
    :cond_148
    :goto_148
    if-eqz v9, :cond_14d

    .line 198
    :try_start_14a
    invoke-virtual {v9}, Lnet/lingala/zip4j/io/ZipOutputStream;->close()V
    :try_end_14d
    .catch Ljava/io/IOException; {:try_start_14a .. :try_end_14d} :catch_1eb

    :cond_14d
    :goto_14d
    move-object v5, v6

    .line 145
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_bf

    .line 149
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    :cond_150
    :try_start_150
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    invoke-static {v13}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileLengh(Ljava/io/File;)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_166

    .line 150
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Lnet/lingala/zip4j/model/ZipParameters;->setCompressionMethod(I)V

    .line 154
    :cond_166
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    invoke-virtual {v9, v13, v3}, Lnet/lingala/zip4j/io/ZipOutputStream;->putNextEntry(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 155
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_188

    .line 156
    invoke-virtual {v9}, Lnet/lingala/zip4j/io/ZipOutputStream;->closeEntry()V

    move-object v5, v6

    .line 124
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :cond_183
    :goto_183
    add-int/lit8 v4, v4, 0x1

    move-object v6, v5

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_a8

    .line 160
    :cond_188
    new-instance v5, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    invoke-direct {v5, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_195
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_150 .. :try_end_195} :catch_20a
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_195} :catch_203
    .catchall {:try_start_150 .. :try_end_195} :catchall_1fc

    .line 162
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :goto_195
    :try_start_195
    invoke-virtual {v5, v10}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v13, -0x1

    if-ne v11, v13, :cond_1b2

    .line 173
    invoke-virtual {v9}, Lnet/lingala/zip4j/io/ZipOutputStream;->closeEntry()V

    .line 175
    if-eqz v5, :cond_183

    .line 176
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1a4
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_195 .. :try_end_1a4} :catch_7e
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_1a4} :catch_1a5
    .catchall {:try_start_195 .. :try_end_1a4} :catchall_1de

    goto :goto_183

    .line 185
    .end local v3    # "fileParameters":Lnet/lingala/zip4j/model/ZipParameters;
    .end local v4    # "i":I
    .end local v10    # "readBuff":[B
    .end local v11    # "readLen":I
    :catch_1a5
    move-exception v2

    move-object v8, v9

    .line 186
    .end local v7    # "isZipFileAlreadExists":Z
    .end local v9    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .end local v12    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v8    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    :goto_1a7
    :try_start_1a7
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 187
    new-instance v13, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v13, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v13
    :try_end_1b2
    .catchall {:try_start_1a7 .. :try_end_1b2} :catchall_86

    .line 163
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v3    # "fileParameters":Lnet/lingala/zip4j/model/ZipParameters;
    .restart local v4    # "i":I
    .restart local v7    # "isZipFileAlreadExists":Z
    .restart local v9    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v10    # "readBuff":[B
    .restart local v11    # "readLen":I
    .restart local v12    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :cond_1b2
    :try_start_1b2
    invoke-virtual/range {p3 .. p3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v13

    if-eqz v13, :cond_1d3

    .line 164
    const/4 v13, 0x3

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 165
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V
    :try_end_1c4
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1b2 .. :try_end_1c4} :catch_7e
    .catch Ljava/lang/Exception; {:try_start_1b2 .. :try_end_1c4} :catch_1a5
    .catchall {:try_start_1b2 .. :try_end_1c4} :catchall_1de

    .line 189
    if-eqz v5, :cond_1c9

    .line 191
    :try_start_1c6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1c9
    .catch Ljava/io/IOException; {:try_start_1c6 .. :try_end_1c9} :catch_1ee

    .line 196
    :cond_1c9
    :goto_1c9
    if-eqz v9, :cond_bf

    .line 198
    :try_start_1cb
    invoke-virtual {v9}, Lnet/lingala/zip4j/io/ZipOutputStream;->close()V
    :try_end_1ce
    .catch Ljava/io/IOException; {:try_start_1cb .. :try_end_1ce} :catch_1d0

    goto/16 :goto_bf

    .line 199
    :catch_1d0
    move-exception v13

    goto/16 :goto_bf

    .line 169
    :cond_1d3
    const/4 v13, 0x0

    :try_start_1d4
    invoke-virtual {v9, v10, v13, v11}, Lnet/lingala/zip4j/io/ZipOutputStream;->write([BII)V

    .line 170
    int-to-long v14, v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Lnet/lingala/zip4j/progress/ProgressMonitor;->updateWorkCompleted(J)V
    :try_end_1dd
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1d4 .. :try_end_1dd} :catch_7e
    .catch Ljava/lang/Exception; {:try_start_1d4 .. :try_end_1dd} :catch_1a5
    .catchall {:try_start_1d4 .. :try_end_1dd} :catchall_1de

    goto :goto_195

    .line 188
    .end local v3    # "fileParameters":Lnet/lingala/zip4j/model/ZipParameters;
    .end local v4    # "i":I
    .end local v10    # "readBuff":[B
    .end local v11    # "readLen":I
    :catchall_1de
    move-exception v13

    move-object v8, v9

    .end local v9    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v8    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    goto/16 :goto_87

    .line 192
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v4    # "i":I
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v10    # "readBuff":[B
    .restart local v11    # "readLen":I
    :catch_1e2
    move-exception v13

    goto/16 :goto_d7

    .line 199
    :catch_1e5
    move-exception v13

    goto/16 :goto_dc

    .line 192
    .restart local v3    # "fileParameters":Lnet/lingala/zip4j/model/ZipParameters;
    :catch_1e8
    move-exception v13

    goto/16 :goto_148

    .line 199
    :catch_1eb
    move-exception v13

    goto/16 :goto_14d

    .line 192
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :catch_1ee
    move-exception v13

    goto :goto_1c9

    .end local v3    # "fileParameters":Lnet/lingala/zip4j/model/ZipParameters;
    .end local v4    # "i":I
    .end local v7    # "isZipFileAlreadExists":Z
    .end local v9    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .end local v10    # "readBuff":[B
    .end local v11    # "readLen":I
    .end local v12    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .restart local v8    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    :catch_1f0
    move-exception v14

    goto/16 :goto_8c

    .line 199
    :catch_1f3
    move-exception v14

    goto/16 :goto_91

    .line 192
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v4    # "i":I
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v7    # "isZipFileAlreadExists":Z
    .restart local v9    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v10    # "readBuff":[B
    .restart local v11    # "readLen":I
    .restart local v12    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :catch_1f6
    move-exception v13

    goto/16 :goto_b9

    .line 199
    :catch_1f9
    move-exception v13

    goto/16 :goto_be

    .line 188
    :catchall_1fc
    move-exception v13

    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    move-object v8, v9

    .end local v9    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v8    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    goto/16 :goto_87

    .line 185
    .end local v4    # "i":I
    .end local v7    # "isZipFileAlreadExists":Z
    .end local v10    # "readBuff":[B
    .end local v11    # "readLen":I
    .end local v12    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :catch_201
    move-exception v2

    goto :goto_1a7

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v4    # "i":I
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v7    # "isZipFileAlreadExists":Z
    .restart local v9    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v10    # "readBuff":[B
    .restart local v11    # "readLen":I
    .restart local v12    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :catch_203
    move-exception v2

    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    move-object v8, v9

    .end local v9    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v8    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    goto :goto_1a7

    .line 182
    .end local v4    # "i":I
    .end local v7    # "isZipFileAlreadExists":Z
    .end local v10    # "readBuff":[B
    .end local v11    # "readLen":I
    .end local v12    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :catch_207
    move-exception v2

    goto/16 :goto_80

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v4    # "i":I
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v7    # "isZipFileAlreadExists":Z
    .restart local v9    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v10    # "readBuff":[B
    .restart local v11    # "readLen":I
    .restart local v12    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :catch_20a
    move-exception v2

    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    move-object v8, v9

    .end local v9    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v8    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    goto/16 :goto_80
.end method

.method private prepareFileOutputStream()Ljava/io/RandomAccessFile;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 426
    iget-object v3, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, "outPath":Ljava/lang/String;
    invoke-static {v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 428
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    const-string v4, "invalid output path"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 432
    :cond_14
    :try_start_14
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 433
    .local v1, "outFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 434
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 436
    :cond_2a
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_31} :catch_32

    return-object v3

    .line 437
    .end local v1    # "outFile":Ljava/io/File;
    :catch_32
    move-exception v0

    .line 438
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v3, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private removeFilesIfExists(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 19
    .param p1, "fileList"    # Ljava/util/ArrayList;
    .param p2, "parameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 347
    iget-object v12, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-eqz v12, :cond_28

    iget-object v12, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v12}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v12

    if-eqz v12, :cond_28

    .line 348
    iget-object v12, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v12}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v12

    invoke-virtual {v12}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_28

    .line 349
    iget-object v12, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v12}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v12

    invoke-virtual {v12}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-gtz v12, :cond_29

    .line 423
    :cond_28
    :goto_28
    return-void

    .line 353
    :cond_29
    const/4 v10, 0x0

    .line 356
    .local v10, "outputStream":Ljava/io/RandomAccessFile;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2b
    :try_start_2b
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_c6
    .catchall {:try_start_2b .. :try_end_2e} :catchall_cd

    move-result v12

    if-lt v7, v12, :cond_39

    .line 415
    if-eqz v10, :cond_28

    .line 417
    :try_start_33
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_28

    .line 418
    :catch_37
    move-exception v12

    goto :goto_28

    .line 357
    :cond_39
    :try_start_39
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 359
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 360
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/ZipParameters;->getRootFolderInZip()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/ZipParameters;->getDefaultFolderPath()Ljava/lang/String;

    move-result-object v14

    .line 359
    invoke-static {v12, v13, v14}, Lnet/lingala/zip4j/util/Zip4jUtil;->getRelativeFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 362
    .local v6, "fileName":Ljava/lang/String;
    iget-object v12, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-static {v12, v6}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v5

    .line 363
    .local v5, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    if-eqz v5, :cond_b9

    .line 365
    if-eqz v10, :cond_5f

    .line 366
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    .line 367
    const/4 v10, 0x0

    .line 370
    :cond_5f
    new-instance v2, Lnet/lingala/zip4j/util/ArchiveMaintainer;

    invoke-direct {v2}, Lnet/lingala/zip4j/util/ArchiveMaintainer;-><init>()V

    .line 371
    .local v2, "archiveMaintainer":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    const/4 v12, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    .line 372
    iget-object v12, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v0, p3

    invoke-virtual {v2, v12, v5, v0}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->initRemoveZipFile(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)Ljava/util/HashMap;

    move-result-object v11

    .line 375
    .local v11, "retMap":Ljava/util/HashMap;
    invoke-virtual/range {p3 .. p3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v12

    if-eqz v12, :cond_8c

    .line 376
    const/4 v12, 0x3

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 377
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_84} :catch_c6
    .catchall {:try_start_39 .. :try_end_84} :catchall_cd

    .line 415
    if-eqz v10, :cond_28

    .line 417
    :try_start_86
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_28

    .line 418
    :catch_8a
    move-exception v12

    goto :goto_28

    .line 382
    :cond_8c
    const/4 v12, 0x0

    :try_start_8d
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    .line 384
    if-nez v10, :cond_b9

    .line 385
    invoke-direct {p0}, Lnet/lingala/zip4j/zip/ZipEngine;->prepareFileOutputStream()Ljava/io/RandomAccessFile;

    move-result-object v10

    .line 387
    if-eqz v11, :cond_b9

    .line 388
    const-string v12, "offsetCentralDir"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_9f} :catch_c6
    .catchall {:try_start_8d .. :try_end_9f} :catchall_cd

    move-result-object v12

    if-eqz v12, :cond_b9

    .line 389
    const-wide/16 v8, -0x1

    .line 393
    .local v8, "offsetCentralDir":J
    :try_start_a4
    const-string v12, "offsetCentralDir"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 392
    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_af
    .catch Ljava/lang/NumberFormatException; {:try_start_a4 .. :try_end_af} :catch_bd
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_af} :catch_d4
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_af} :catch_c6
    .catchall {:try_start_a4 .. :try_end_af} :catchall_cd

    move-result-wide v8

    .line 404
    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-ltz v12, :cond_b9

    .line 405
    :try_start_b6
    invoke-virtual {v10, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 356
    .end local v2    # "archiveMaintainer":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    .end local v8    # "offsetCentralDir":J
    .end local v11    # "retMap":Ljava/util/HashMap;
    :cond_b9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2b

    .line 394
    .restart local v2    # "archiveMaintainer":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    .restart local v8    # "offsetCentralDir":J
    .restart local v11    # "retMap":Ljava/util/HashMap;
    :catch_bd
    move-exception v3

    .line 395
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v12, Lnet/lingala/zip4j/exception/ZipException;

    .line 396
    const-string v13, "NumberFormatException while parsing offset central directory. Cannot update already existing file header"

    .line 395
    invoke-direct {v12, v13}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_c6} :catch_c6
    .catchall {:try_start_b6 .. :try_end_c6} :catchall_cd

    .line 412
    .end local v2    # "archiveMaintainer":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v8    # "offsetCentralDir":J
    .end local v11    # "retMap":Ljava/util/HashMap;
    :catch_c6
    move-exception v3

    .line 413
    .local v3, "e":Ljava/io/IOException;
    :try_start_c7
    new-instance v12, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v12, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v12
    :try_end_cd
    .catchall {:try_start_c7 .. :try_end_cd} :catchall_cd

    .line 414
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_cd
    move-exception v12

    .line 415
    if-eqz v10, :cond_d3

    .line 417
    :try_start_d0
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_dd

    .line 422
    :cond_d3
    :goto_d3
    throw v12

    .line 398
    .restart local v2    # "archiveMaintainer":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .restart local v6    # "fileName":Ljava/lang/String;
    .restart local v8    # "offsetCentralDir":J
    .restart local v11    # "retMap":Ljava/util/HashMap;
    :catch_d4
    move-exception v3

    .line 399
    .local v3, "e":Ljava/lang/Exception;
    :try_start_d5
    new-instance v12, Lnet/lingala/zip4j/exception/ZipException;

    .line 400
    const-string v13, "Error while parsing offset central directory. Cannot update already existing file header"

    .line 399
    invoke-direct {v12, v13}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_dd} :catch_c6
    .catchall {:try_start_d5 .. :try_end_dd} :catchall_cd

    .line 418
    .end local v2    # "archiveMaintainer":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v8    # "offsetCentralDir":J
    .end local v11    # "retMap":Ljava/util/HashMap;
    :catch_dd
    move-exception v13

    goto :goto_d3
.end method


# virtual methods
.method public addFiles(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V
    .registers 11
    .param p1, "fileList"    # Ljava/util/ArrayList;
    .param p2, "parameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p4, "runInThread"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 58
    if-eqz p1, :cond_6

    if-nez p2, :cond_e

    .line 59
    :cond_6
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "one of the input parameters is null when adding files"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_e
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1c

    .line 63
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "no files to add"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_1c
    invoke-virtual {p3, v4}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    .line 67
    invoke-virtual {p3, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V

    .line 68
    invoke-virtual {p3, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 70
    if-eqz p4, :cond_4a

    .line 71
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/zip/ZipEngine;->calculateTotalWork(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;)J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setTotalWork(J)V

    .line 72
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setFileName(Ljava/lang/String;)V

    .line 74
    new-instance v0, Lnet/lingala/zip4j/zip/ZipEngine$1;

    const-string v2, "Zip4j"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lnet/lingala/zip4j/zip/ZipEngine$1;-><init>(Lnet/lingala/zip4j/zip/ZipEngine;Ljava/lang/String;Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 82
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 87
    .end local v0    # "thread":Ljava/lang/Thread;
    :goto_49
    return-void

    .line 85
    :cond_4a
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/zip/ZipEngine;->initAddFiles(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    goto :goto_49
.end method

.method public addFolderToZip(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V
    .registers 10
    .param p1, "file"    # Ljava/io/File;
    .param p2, "parameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p4, "runInThread"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 259
    if-eqz p1, :cond_4

    if-nez p2, :cond_c

    .line 260
    :cond_4
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "one of the input parameters is null, cannot add folder to zip"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 263
    :cond_c
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 264
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "input folder does not exist"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 267
    :cond_1e
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 268
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "input file is not a folder, user addFileToZip method to add files"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 271
    :cond_2c
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileReadAccess(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 272
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "cannot read folder: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 275
    :cond_4f
    const/4 v1, 0x0

    .line 276
    .local v1, "rootFolderPath":Ljava/lang/String;
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->isIncludeRootFolder()Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 277
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_94

    .line 278
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_91

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 286
    :goto_72
    invoke-virtual {p2, v1}, Lnet/lingala/zip4j/model/ZipParameters;->setDefaultFolderPath(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->isReadHiddenFiles()Z

    move-result v2

    invoke-static {p1, v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFilesInDirectoryRec(Ljava/io/File;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 290
    .local v0, "fileList":Ljava/util/ArrayList;
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->isIncludeRootFolder()Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 291
    if-nez v0, :cond_8a

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "fileList":Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .restart local v0    # "fileList":Ljava/util/ArrayList;
    :cond_8a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_8d
    invoke-virtual {p0, v0, p2, p3, p4}, Lnet/lingala/zip4j/zip/ZipEngine;->addFiles(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V

    .line 298
    return-void

    .line 278
    .end local v0    # "fileList":Ljava/util/ArrayList;
    :cond_91
    const-string v1, ""

    goto :goto_72

    .line 280
    :cond_94
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_a3

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :goto_a2
    goto :goto_72

    :cond_a3
    const-string v1, ""

    goto :goto_a2

    .line 283
    :cond_a6
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_72
.end method

.method public addStreamToZip(Ljava/io/InputStream;Lnet/lingala/zip4j/model/ZipParameters;)V
    .registers 13
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "parameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 206
    if-eqz p1, :cond_4

    if-nez p2, :cond_c

    .line 207
    :cond_4
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    const-string v8, "one of the input parameters is null, cannot add stream to zip"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 210
    :cond_c
    const/4 v2, 0x0

    .line 213
    .local v2, "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    :try_start_d
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/zip/ZipEngine;->checkParameters(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 215
    iget-object v7, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v1

    .line 217
    .local v1, "isZipFileAlreadExists":Z
    new-instance v6, Lnet/lingala/zip4j/io/SplitOutputStream;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->getSplitLength()J

    move-result-wide v8

    invoke-direct {v6, v7, v8, v9}, Lnet/lingala/zip4j/io/SplitOutputStream;-><init>(Ljava/io/File;J)V

    .line 218
    .local v6, "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    new-instance v3, Lnet/lingala/zip4j/io/ZipOutputStream;

    iget-object v7, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v3, v6, v7}, Lnet/lingala/zip4j/io/ZipOutputStream;-><init>(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipModel;)V
    :try_end_37
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_d .. :try_end_37} :catch_aa
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_37} :catch_a8
    .catchall {:try_start_d .. :try_end_37} :catchall_4c

    .line 220
    .end local v2    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .local v3, "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    if-eqz v1, :cond_60

    .line 221
    :try_start_39
    iget-object v7, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v7

    if-nez v7, :cond_53

    .line 222
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    const-string v8, "invalid end of central directory record"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_49
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_39 .. :try_end_49} :catch_49
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_49} :catch_99
    .catchall {:try_start_39 .. :try_end_49} :catchall_a5

    .line 242
    :catch_49
    move-exception v0

    move-object v2, v3

    .line 243
    .end local v1    # "isZipFileAlreadExists":Z
    .end local v3    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .end local v6    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .local v0, "e":Lnet/lingala/zip4j/exception/ZipException;
    .restart local v2    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    :goto_4b
    :try_start_4b
    throw v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4c

    .line 246
    .end local v0    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :catchall_4c
    move-exception v7

    .line 247
    :goto_4d
    if-eqz v2, :cond_52

    .line 249
    :try_start_4f
    invoke-virtual {v2}, Lnet/lingala/zip4j/io/ZipOutputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_a1

    .line 254
    :cond_52
    :goto_52
    throw v7

    .line 224
    .end local v2    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v1    # "isZipFileAlreadExists":Z
    .restart local v3    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v6    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :cond_53
    :try_start_53
    iget-object v7, p0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v7

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lnet/lingala/zip4j/io/SplitOutputStream;->seek(J)V

    .line 227
    :cond_60
    const/16 v7, 0x1000

    new-array v4, v7, [B

    .line 228
    .local v4, "readBuff":[B
    const/4 v5, -0x1

    .line 230
    .local v5, "readLen":I
    const/4 v7, 0x0

    invoke-virtual {v3, v7, p2}, Lnet/lingala/zip4j/io/ZipOutputStream;->putNextEntry(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 232
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_88

    .line 233
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_88

    .line 234
    :goto_81
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_94

    .line 239
    :cond_88
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/ZipOutputStream;->closeEntry()V

    .line 240
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/ZipOutputStream;->finish()V
    :try_end_8e
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_53 .. :try_end_8e} :catch_49
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_8e} :catch_99
    .catchall {:try_start_53 .. :try_end_8e} :catchall_a5

    .line 247
    if-eqz v3, :cond_93

    .line 249
    :try_start_90
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/ZipOutputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_a3

    .line 255
    :cond_93
    :goto_93
    return-void

    .line 235
    :cond_94
    const/4 v7, 0x0

    :try_start_95
    invoke-virtual {v3, v4, v7, v5}, Lnet/lingala/zip4j/io/ZipOutputStream;->write([BII)V
    :try_end_98
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_95 .. :try_end_98} :catch_49
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_98} :catch_99
    .catchall {:try_start_95 .. :try_end_98} :catchall_a5

    goto :goto_81

    .line 244
    .end local v4    # "readBuff":[B
    .end local v5    # "readLen":I
    :catch_99
    move-exception v0

    move-object v2, v3

    .line 245
    .end local v1    # "isZipFileAlreadExists":Z
    .end local v3    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .end local v6    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    :goto_9b
    :try_start_9b
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v7, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_a1
    .catchall {:try_start_9b .. :try_end_a1} :catchall_4c

    .line 250
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_a1
    move-exception v8

    goto :goto_52

    .end local v2    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v1    # "isZipFileAlreadExists":Z
    .restart local v3    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v4    # "readBuff":[B
    .restart local v5    # "readLen":I
    .restart local v6    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :catch_a3
    move-exception v7

    goto :goto_93

    .line 246
    .end local v4    # "readBuff":[B
    .end local v5    # "readLen":I
    :catchall_a5
    move-exception v7

    move-object v2, v3

    .end local v3    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    .restart local v2    # "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    goto :goto_4d

    .line 244
    .end local v1    # "isZipFileAlreadExists":Z
    .end local v6    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :catch_a8
    move-exception v0

    goto :goto_9b

    .line 242
    :catch_aa
    move-exception v0

    goto :goto_4b
.end method
