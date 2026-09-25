.class public Lnet/lingala/zip4j/util/CRCUtil;
.super Ljava/lang/Object;
.source "CRCUtil.java"


# static fields
.field private static final BUF_SIZE:I = 0x4000


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeFileCRC(Ljava/lang/String;)J
    .registers 3
    .param p0, "inputFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnet/lingala/zip4j/util/CRCUtil;->computeFileCRC(Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static computeFileCRC(Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)J
    .registers 10
    .param p0, "inputFile"    # Ljava/lang/String;
    .param p1, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {p0}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 45
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    const-string v7, "input file is null or empty, cannot calculate CRC for the file"

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 47
    :cond_e
    const/4 v3, 0x0

    .line 49
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_f
    invoke-static {p0}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileReadAccess(Ljava/lang/String;)Z

    .line 51
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1c} :catch_69
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1c} :catch_77
    .catchall {:try_start_f .. :try_end_1c} :catchall_70

    .line 53
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .local v4, "inputStream":Ljava/io/InputStream;
    const/16 v6, 0x4000

    :try_start_1e
    new-array v0, v6, [B

    .line 54
    .local v0, "buff":[B
    const/4 v5, -0x2

    .line 55
    .local v5, "readLen":I
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 57
    .local v1, "crc32":Ljava/util/zip/CRC32;
    :cond_26
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_37

    .line 69
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_30} :catch_8d
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_30} :catch_8a
    .catchall {:try_start_1e .. :try_end_30} :catchall_87

    move-result-wide v6

    .line 75
    if-eqz v4, :cond_36

    .line 77
    :try_start_33
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_60

    .line 69
    :cond_36
    :goto_36
    return-wide v6

    .line 58
    :cond_37
    const/4 v6, 0x0

    :try_start_38
    invoke-virtual {v1, v0, v6, v5}, Ljava/util/zip/CRC32;->update([BII)V

    .line 59
    if-eqz p1, :cond_26

    .line 60
    int-to-long v6, v5

    invoke-virtual {p1, v6, v7}, Lnet/lingala/zip4j/progress/ProgressMonitor;->updateWorkCompleted(J)V

    .line 61
    invoke-virtual {p1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v6

    if-eqz v6, :cond_26

    .line 62
    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 63
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_4f} :catch_8d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_4f} :catch_8a
    .catchall {:try_start_38 .. :try_end_4f} :catchall_87

    .line 75
    if-eqz v4, :cond_54

    .line 77
    :try_start_51
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_57

    .line 64
    :cond_54
    const-wide/16 v6, 0x0

    goto :goto_36

    .line 78
    :catch_57
    move-exception v2

    .line 79
    .local v2, "e":Ljava/io/IOException;
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    const-string v7, "error while closing the file after calculating crc"

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 78
    .end local v2    # "e":Ljava/io/IOException;
    :catch_60
    move-exception v2

    .line 79
    .restart local v2    # "e":Ljava/io/IOException;
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    const-string v7, "error while closing the file after calculating crc"

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 70
    .end local v0    # "buff":[B
    .end local v1    # "crc32":Ljava/util/zip/CRC32;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "readLen":I
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_69
    move-exception v2

    .line 71
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_6a
    :try_start_6a
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v6, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_70
    .catchall {:try_start_6a .. :try_end_70} :catchall_70

    .line 74
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_70
    move-exception v6

    .line 75
    :goto_71
    if-eqz v3, :cond_76

    .line 77
    :try_start_73
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_7e

    .line 82
    :cond_76
    throw v6

    .line 72
    :catch_77
    move-exception v2

    .line 73
    .local v2, "e":Ljava/lang/Exception;
    :goto_78
    :try_start_78
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v6, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_7e
    .catchall {:try_start_78 .. :try_end_7e} :catchall_70

    .line 78
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_7e
    move-exception v2

    .line 79
    .local v2, "e":Ljava/io/IOException;
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    const-string v7, "error while closing the file after calculating crc"

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 74
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :catchall_87
    move-exception v6

    move-object v3, v4

    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    goto :goto_71

    .line 72
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :catch_8a
    move-exception v2

    move-object v3, v4

    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    goto :goto_78

    .line 70
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :catch_8d
    move-exception v2

    move-object v3, v4

    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    goto :goto_6a
.end method
