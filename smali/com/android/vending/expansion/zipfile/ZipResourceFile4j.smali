.class public Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;
.super Ljava/lang/Object;
.source "ZipResourceFile4j.java"


# instance fields
.field private mZipFile:Lnet/lingala/zip4j/core/ZipFile;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .param p1, "zipFile"    # Ljava/io/File;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;->mZipFile:Lnet/lingala/zip4j/core/ZipFile;

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;->open(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "zipFileName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;->mZipFile:Lnet/lingala/zip4j/core/ZipFile;

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;->open(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method private init(Lnet/lingala/zip4j/core/ZipFile;Ljava/lang/String;)V
    .registers 6
    .param p1, "zipFile"    # Lnet/lingala/zip4j/core/ZipFile;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p1}, Lnet/lingala/zip4j/core/ZipFile;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 66
    if-eqz p2, :cond_14

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 67
    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/core/ZipFile;->setPassword(Ljava/lang/String;)V

    .line 71
    :cond_11
    iput-object p1, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;->mZipFile:Lnet/lingala/zip4j/core/ZipFile;

    .line 72
    return-void

    .line 69
    :cond_14
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Empty or no password supplied for an encrypted zip archive."

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private open(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .param p1, "zipFile"    # Ljava/io/File;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lnet/lingala/zip4j/core/ZipFile;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/io/File;)V

    .line 61
    .local v0, "zFile":Lnet/lingala/zip4j/core/ZipFile;
    invoke-direct {p0, v0, p2}, Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;->init(Lnet/lingala/zip4j/core/ZipFile;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method private open(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "zipFileName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lnet/lingala/zip4j/core/ZipFile;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "zFile":Lnet/lingala/zip4j/core/ZipFile;
    invoke-direct {p0, v0, p2}, Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;->init(Lnet/lingala/zip4j/core/ZipFile;Ljava/lang/String;)V

    .line 57
    return-void
.end method


# virtual methods
.method public getFileHeaders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;->mZipFile:Lnet/lingala/zip4j/core/ZipFile;

    if-nez v0, :cond_6

    .line 50
    const/4 v0, 0x0

    .line 51
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;->mZipFile:Lnet/lingala/zip4j/core/ZipFile;

    invoke-virtual {v0}, Lnet/lingala/zip4j/core/ZipFile;->getFileHeaders()Ljava/util/List;

    move-result-object v0

    goto :goto_5
.end method

.method public getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 5
    .param p1, "assetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 34
    iget-object v2, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;->mZipFile:Lnet/lingala/zip4j/core/ZipFile;

    if-nez v2, :cond_6

    .line 39
    :cond_5
    :goto_5
    return-object v1

    .line 36
    :cond_6
    iget-object v2, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;->mZipFile:Lnet/lingala/zip4j/core/ZipFile;

    invoke-virtual {v2, p1}, Lnet/lingala/zip4j/core/ZipFile;->getFileHeader(Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v0

    .line 37
    .local v0, "fh":Lnet/lingala/zip4j/model/FileHeader;
    if-eqz v0, :cond_5

    .line 38
    iget-object v1, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;->mZipFile:Lnet/lingala/zip4j/core/ZipFile;

    invoke-virtual {v1, v0}, Lnet/lingala/zip4j/core/ZipFile;->getInputStream(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/io/ZipInputStream;

    move-result-object v1

    goto :goto_5
.end method

.method public isEncrypted()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;->mZipFile:Lnet/lingala/zip4j/core/ZipFile;

    if-nez v0, :cond_6

    .line 44
    const/4 v0, 0x0

    .line 45
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;->mZipFile:Lnet/lingala/zip4j/core/ZipFile;

    invoke-virtual {v0}, Lnet/lingala/zip4j/core/ZipFile;->isEncrypted()Z

    move-result v0

    goto :goto_5
.end method
