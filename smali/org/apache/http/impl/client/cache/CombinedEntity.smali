.class Lorg/apache/http/impl/client/cache/CombinedEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "CombinedEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/client/cache/CombinedEntity$ResourceStream;
    }
.end annotation

.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final combinedStream:Ljava/io/InputStream;

.field private final resource:Lorg/apache/http/client/cache/Resource;


# direct methods
.method constructor <init>(Lorg/apache/http/client/cache/Resource;Ljava/io/InputStream;)V
    .registers 6
    .param p1, "resource"    # Lorg/apache/http/client/cache/Resource;
    .param p2, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/apache/http/impl/client/cache/CombinedEntity;->resource:Lorg/apache/http/client/cache/Resource;

    .line 48
    new-instance v0, Ljava/io/SequenceInputStream;

    new-instance v1, Lorg/apache/http/impl/client/cache/CombinedEntity$ResourceStream;

    invoke-interface {p1}, Lorg/apache/http/client/cache/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/apache/http/impl/client/cache/CombinedEntity$ResourceStream;-><init>(Lorg/apache/http/impl/client/cache/CombinedEntity;Ljava/io/InputStream;)V

    invoke-direct {v0, v1, p2}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/cache/CombinedEntity;->combinedStream:Ljava/io/InputStream;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lorg/apache/http/impl/client/cache/CombinedEntity;)V
    .registers 1
    .param p0, "x0"    # Lorg/apache/http/impl/client/cache/CombinedEntity;

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/http/impl/client/cache/CombinedEntity;->dispose()V

    return-void
.end method

.method private dispose()V
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CombinedEntity;->resource:Lorg/apache/http/client/cache/Resource;

    invoke-interface {v0}, Lorg/apache/http/client/cache/Resource;->dispose()V

    .line 86
    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CombinedEntity;->combinedStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 53
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public isRepeatable()Z
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 7
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    if-nez p1, :cond_a

    .line 70
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Output stream may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 72
    :cond_a
    invoke-virtual {p0}, Lorg/apache/http/impl/client/cache/CombinedEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 75
    .local v0, "instream":Ljava/io/InputStream;
    const/16 v3, 0x800

    :try_start_10
    new-array v2, v3, [B

    .line 76
    .local v2, "tmp":[B
    :goto_12
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "l":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_23

    .line 77
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 80
    .end local v1    # "l":I
    .end local v2    # "tmp":[B
    :catchall_1e
    move-exception v3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v3

    .restart local v1    # "l":I
    .restart local v2    # "tmp":[B
    :cond_23
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 82
    return-void
.end method
