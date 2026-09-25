.class Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache$CacheEntry;
.super Ljava/lang/Object;
.source "WebResourceResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheEntry"
.end annotation


# instance fields
.field public m_data:[B

.field public m_mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "istream"    # Ljava/io/InputStream;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p3, p0, Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache$CacheEntry;->m_mimeType:Ljava/lang/String;

    .line 21
    :try_start_5
    invoke-direct {p0, p2}, Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache$CacheEntry;->stream_to_bytes(Ljava/io/InputStream;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache$CacheEntry;->m_data:[B
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_c

    .line 23
    :goto_b
    return-void

    .line 22
    :catch_c
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache$CacheEntry;->m_data:[B

    goto :goto_b
.end method

.method private stream_to_bytes(Ljava/io/InputStream;)[B
    .registers 6
    .param p1, "istream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 27
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v1, v3, [B

    .line 28
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .line 29
    .local v2, "length":I
    :goto_a
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_16

    .line 30
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_a

    .line 32
    :cond_16
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method
