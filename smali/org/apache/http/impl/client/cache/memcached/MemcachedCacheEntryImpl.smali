.class public Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryImpl;
.super Ljava/lang/Object;
.source "MemcachedCacheEntryImpl.java"

# interfaces
.implements Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntry;


# instance fields
.field private httpCacheEntry:Lorg/apache/http/client/cache/HttpCacheEntry;

.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/http/client/cache/HttpCacheEntry;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "httpCacheEntry"    # Lorg/apache/http/client/cache/HttpCacheEntry;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryImpl;->key:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryImpl;->httpCacheEntry:Lorg/apache/http/client/cache/HttpCacheEntry;

    .line 49
    return-void
.end method


# virtual methods
.method public declared-synchronized getHttpCacheEntry()Lorg/apache/http/client/cache/HttpCacheEntry;
    .registers 2

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryImpl;->httpCacheEntry:Lorg/apache/http/client/cache/HttpCacheEntry;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStorageKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryImpl;->key:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set([B)V
    .registers 9
    .param p1, "bytes"    # [B

    .prologue
    .line 89
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2a

    .line 94
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    :try_start_6
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 95
    .local v4, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 96
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/client/cache/HttpCacheEntry;

    .line 97
    .local v2, "entry":Lorg/apache/http/client/cache/HttpCacheEntry;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 98
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1d} :catch_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_1d} :catch_2d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_2a

    .line 104
    :try_start_1d
    iput-object v5, p0, Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryImpl;->key:Ljava/lang/String;

    .line 105
    iput-object v2, p0, Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryImpl;->httpCacheEntry:Lorg/apache/http/client/cache/HttpCacheEntry;
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_2a

    .line 106
    monitor-exit p0

    return-void

    .line 99
    .end local v2    # "entry":Lorg/apache/http/client/cache/HttpCacheEntry;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .end local v5    # "s":Ljava/lang/String;
    :catch_23
    move-exception v3

    .line 100
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_24
    new-instance v6, Lorg/apache/http/impl/client/cache/memcached/MemcachedSerializationException;

    invoke-direct {v6, v3}, Lorg/apache/http/impl/client/cache/memcached/MemcachedSerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_2a

    .line 89
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v3    # "ioe":Ljava/io/IOException;
    :catchall_2a
    move-exception v6

    monitor-exit p0

    throw v6

    .line 101
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    :catch_2d
    move-exception v1

    .line 102
    .local v1, "cnfe":Ljava/lang/ClassNotFoundException;
    :try_start_2e
    new-instance v6, Lorg/apache/http/impl/client/cache/memcached/MemcachedSerializationException;

    invoke-direct {v6, v1}, Lorg/apache/http/impl/client/cache/memcached/MemcachedSerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_2a
.end method

.method public declared-synchronized toByteArray()[B
    .registers 5

    .prologue
    .line 58
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_25

    .line 61
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_6
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 62
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    iget-object v3, p0, Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryImpl;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 63
    iget-object v3, p0, Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryImpl;->httpCacheEntry:Lorg/apache/http/client/cache/HttpCacheEntry;

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 64
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_18} :catch_1e
    .catchall {:try_start_6 .. :try_end_18} :catchall_25

    .line 68
    :try_start_18
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_25

    move-result-object v3

    monitor-exit p0

    return-object v3

    .line 65
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    :catch_1e
    move-exception v1

    .line 66
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_1f
    new-instance v3, Lorg/apache/http/impl/client/cache/memcached/MemcachedSerializationException;

    invoke-direct {v3, v1}, Lorg/apache/http/impl/client/cache/memcached/MemcachedSerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_25

    .line 58
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_25
    move-exception v3

    monitor-exit p0

    throw v3
.end method
