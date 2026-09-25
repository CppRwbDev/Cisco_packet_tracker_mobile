.class public Lnet/lingala/zip4j/unzip/UnzipUtil;
.super Ljava/lang/Object;
.source "UnzipUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;)V
    .registers 3
    .param p0, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnet/lingala/zip4j/unzip/UnzipUtil;->applyFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;Lnet/lingala/zip4j/model/UnzipParameters;)V

    .line 15
    return-void
.end method

.method public static applyFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;Lnet/lingala/zip4j/model/UnzipParameters;)V
    .registers 11
    .param p0, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "unzipParameters"    # Lnet/lingala/zip4j/model/UnzipParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 20
    if-nez p0, :cond_c

    .line 21
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "cannot set file properties: file header is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_c
    if-nez p1, :cond_16

    .line 25
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "cannot set file properties: output file is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_16
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 29
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "cannot set file properties: file doesnot exist"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_24
    if-eqz p2, :cond_2c

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/UnzipParameters;->isIgnoreDateTimeAttributes()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 33
    :cond_2c
    invoke-static {p0, p1}, Lnet/lingala/zip4j/unzip/UnzipUtil;->setFileLastModifiedTime(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;)V

    .line 36
    :cond_2f
    if-nez p2, :cond_3a

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    .line 37
    invoke-static/range {v0 .. v5}, Lnet/lingala/zip4j/unzip/UnzipUtil;->setFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;ZZZZ)V

    .line 48
    :goto_39
    return-void

    .line 39
    :cond_3a
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/UnzipParameters;->isIgnoreAllFileAttributes()Z

    move-result v0

    if-eqz v0, :cond_4a

    move-object v0, p0

    move-object v1, p1

    move v2, v7

    move v3, v7

    move v4, v7

    move v5, v7

    .line 40
    invoke-static/range {v0 .. v5}, Lnet/lingala/zip4j/unzip/UnzipUtil;->setFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;ZZZZ)V

    goto :goto_39

    .line 42
    :cond_4a
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/UnzipParameters;->isIgnoreReadOnlyFileAttribute()Z

    move-result v0

    if-eqz v0, :cond_6d

    move v6, v7

    .line 43
    :goto_51
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/UnzipParameters;->isIgnoreHiddenFileAttribute()Z

    move-result v0

    if-eqz v0, :cond_6f

    move v3, v7

    .line 44
    :goto_58
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/UnzipParameters;->isIgnoreArchiveFileAttribute()Z

    move-result v0

    if-eqz v0, :cond_71

    move v4, v7

    .line 45
    :goto_5f
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/UnzipParameters;->isIgnoreSystemFileAttribute()Z

    move-result v0

    if-eqz v0, :cond_73

    move v5, v7

    :goto_66
    move-object v0, p0

    move-object v1, p1

    move v2, v6

    .line 42
    invoke-static/range {v0 .. v5}, Lnet/lingala/zip4j/unzip/UnzipUtil;->setFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;ZZZZ)V

    goto :goto_39

    :cond_6d
    move v6, v2

    goto :goto_51

    :cond_6f
    move v3, v2

    .line 43
    goto :goto_58

    :cond_71
    move v4, v2

    .line 44
    goto :goto_5f

    :cond_73
    move v5, v2

    .line 45
    goto :goto_66
.end method

.method private static setFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;ZZZZ)V
    .registers 10
    .param p0, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "setReadOnly"    # Z
    .param p3, "setHidden"    # Z
    .param p4, "setArchive"    # Z
    .param p5, "setSystem"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 52
    if-nez p0, :cond_a

    .line 53
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "invalid file header. cannot set file attributes"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_a
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/FileHeader;->getExternalFileAttr()[B

    move-result-object v1

    .line 57
    .local v1, "externalAttrbs":[B
    if-nez v1, :cond_11

    .line 101
    :cond_10
    :goto_10
    return-void

    .line 61
    :cond_11
    const/4 v2, 0x0

    aget-byte v0, v1, v2

    .line 62
    .local v0, "atrrib":I
    sparse-switch v0, :sswitch_data_6c

    goto :goto_10

    .line 64
    :sswitch_18
    if-eqz p2, :cond_10

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileReadOnly(Ljava/io/File;)V

    goto :goto_10

    .line 68
    :sswitch_1e
    if-eqz p3, :cond_10

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileHidden(Ljava/io/File;)V

    goto :goto_10

    .line 72
    :sswitch_24
    if-eqz p4, :cond_10

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileArchive(Ljava/io/File;)V

    goto :goto_10

    .line 75
    :sswitch_2a
    if-eqz p2, :cond_2f

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileReadOnly(Ljava/io/File;)V

    .line 76
    :cond_2f
    if-eqz p3, :cond_10

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileHidden(Ljava/io/File;)V

    goto :goto_10

    .line 79
    :sswitch_35
    if-eqz p4, :cond_3a

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileArchive(Ljava/io/File;)V

    .line 80
    :cond_3a
    if-eqz p2, :cond_10

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileReadOnly(Ljava/io/File;)V

    goto :goto_10

    .line 84
    :sswitch_40
    if-eqz p4, :cond_45

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileArchive(Ljava/io/File;)V

    .line 85
    :cond_45
    if-eqz p3, :cond_10

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileHidden(Ljava/io/File;)V

    goto :goto_10

    .line 88
    :sswitch_4b
    if-eqz p4, :cond_50

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileArchive(Ljava/io/File;)V

    .line 89
    :cond_50
    if-eqz p2, :cond_55

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileReadOnly(Ljava/io/File;)V

    .line 90
    :cond_55
    if-eqz p3, :cond_10

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileHidden(Ljava/io/File;)V

    goto :goto_10

    .line 93
    :sswitch_5b
    if-eqz p2, :cond_60

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileReadOnly(Ljava/io/File;)V

    .line 94
    :cond_60
    if-eqz p3, :cond_65

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileHidden(Ljava/io/File;)V

    .line 95
    :cond_65
    if-eqz p5, :cond_10

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileSystemMode(Ljava/io/File;)V

    goto :goto_10

    .line 62
    nop

    :sswitch_data_6c
    .sparse-switch
        0x1 -> :sswitch_18
        0x2 -> :sswitch_1e
        0x3 -> :sswitch_2a
        0x12 -> :sswitch_1e
        0x20 -> :sswitch_24
        0x21 -> :sswitch_35
        0x22 -> :sswitch_40
        0x23 -> :sswitch_4b
        0x26 -> :sswitch_5b
        0x30 -> :sswitch_24
        0x32 -> :sswitch_40
    .end sparse-switch
.end method

.method private static setFileLastModifiedTime(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;)V
    .registers 4
    .param p0, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/FileHeader;->getLastModFileTime()I

    move-result v0

    if-gtz v0, :cond_7

    .line 111
    :cond_6
    :goto_6
    return-void

    .line 108
    :cond_7
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 109
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/FileHeader;->getLastModFileTime()I

    move-result v0

    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->dosToJavaTme(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    goto :goto_6
.end method
