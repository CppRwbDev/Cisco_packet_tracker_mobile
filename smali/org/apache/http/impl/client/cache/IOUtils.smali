.class Lorg/apache/http/impl/client/cache/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static closeSilently(Ljava/io/Closeable;)V
    .registers 2
    .param p0, "closable"    # Ljava/io/Closeable;

    .prologue
    .line 52
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 55
    :goto_3
    return-void

    .line 53
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    const/16 v2, 0x800

    new-array v0, v2, [B

    .line 45
    .local v0, "buf":[B
    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    .line 46
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    .line 48
    :cond_10
    return-void
.end method

.method static copyAndClose(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/http/impl/client/cache/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 60
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 61
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    .line 68
    return-void

    .line 62
    :catch_a
    move-exception v0

    .line 63
    .local v0, "ex":Ljava/io/IOException;
    invoke-static {p0}, Lorg/apache/http/impl/client/cache/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 64
    invoke-static {p1}, Lorg/apache/http/impl/client/cache/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 66
    throw v0
.end method

.method static copyFile(Ljava/io/File;Ljava/io/File;)V
    .registers 11
    .param p0, "in"    # Ljava/io/File;
    .param p1, "out"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v7, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    .local v7, "f1":Ljava/io/RandomAccessFile;
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v8, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    .local v8, "f2":Ljava/io/RandomAccessFile;
    :try_start_e
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 75
    .local v1, "c1":Ljava/nio/channels/FileChannel;
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_15} :catch_34

    move-result-object v6

    .line 77
    .local v6, "c2":Ljava/nio/channels/FileChannel;
    const-wide/16 v2, 0x0

    :try_start_18
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 78
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 79
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_25} :catch_2c

    .line 86
    :try_start_25
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 87
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    .line 94
    return-void

    .line 80
    :catch_2c
    move-exception v0

    .line 81
    .local v0, "ex":Ljava/io/IOException;
    invoke-static {v1}, Lorg/apache/http/impl/client/cache/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 82
    invoke-static {v6}, Lorg/apache/http/impl/client/cache/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 84
    throw v0
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_34} :catch_34

    .line 88
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "c1":Ljava/nio/channels/FileChannel;
    .end local v6    # "c2":Ljava/nio/channels/FileChannel;
    :catch_34
    move-exception v0

    .line 89
    .restart local v0    # "ex":Ljava/io/IOException;
    invoke-static {v7}, Lorg/apache/http/impl/client/cache/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 90
    invoke-static {v8}, Lorg/apache/http/impl/client/cache/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 92
    throw v0
.end method
