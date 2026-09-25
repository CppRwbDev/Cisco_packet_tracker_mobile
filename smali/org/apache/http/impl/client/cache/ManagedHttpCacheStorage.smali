.class public Lorg/apache/http/impl/client/cache/ManagedHttpCacheStorage;
.super Ljava/lang/Object;
.source "ManagedHttpCacheStorage.java"

# interfaces
.implements Lorg/apache/http/client/cache/HttpCacheStorage;


# annotations
.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


# instance fields
.field private final entries:Lorg/apache/http/impl/client/cache/CacheMap;

.field private final morque:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lorg/apache/http/client/cache/HttpCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final resources:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/http/impl/client/cache/ResourceReference;",
            ">;"
        }
    .end annotation
.end field

.field private volatile shutdown:Z


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/cache/CacheConfig;)V
    .registers 4
    .param p1, "config"    # Lorg/apache/http/impl/client/cache/CacheConfig;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lorg/apache/http/impl/client/cache/CacheMap;

    invoke-virtual {p1}, Lorg/apache/http/impl/client/cache/CacheConfig;->getMaxCacheEntries()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/cache/CacheMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/http/impl/client/cache/ManagedHttpCacheStorage;->entries:Lorg/apache/http/impl/client/cache/CacheMap;

    .line 67
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/cache/ManagedHttpCacheStorage;->morque:Ljava/lang/ref/ReferenceQueue;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/cache/ManagedHttpCacheStorage;->resources:Ljava/util/Set;

    .line 69
    return-void
.end method

.method private ensureValidState()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 72
    iget-boolean v0, p0, Lorg/apache/http/impl/client/cache/ManagedHttpCacheStorage;->shutdown:Z

    if-eqz v0, :cond_c

    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cache has been shut down"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_c
    return-void
.end method

.method private keepResourceReference(Lorg/apache/http/client/cache/HttpCacheEntry;)V
    .registers 5
    .param p1, "entry"    # Lorg/apache/http/client/cache/HttpCacheEntry;

    .prologue
    .line 78
    invoke-virtual {p1}, Lorg/apache/http/client/cache/HttpCacheEntry;->getResource()Lorg/apache/http/client/cache/Resource;

    move-result-object v1

    .line 79
    .local v1, "resource":Lorg/apache/http/client/cache/Resource;
    if-eqz v1, :cond_12

    .line 81
    new-instance v0, Lorg/apache/http/impl/client/cache/ResourceReference;

    iget-object v2, p0, Lorg/apache/http/impl/client/cache/ManagedHttpCacheStorage;->morque:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v2}, Lorg/apache/http/impl/client/cache/ResourceReference;-><init>(Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/lang/ref/ReferenceQueue;)V

    .line 82
    .local v0, "ref":Lorg/apache/http/impl/client/cache/ResourceReference;
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/ManagedHttpCacheStorage;->resources:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    .end local v0    # "ref":Lorg/apache/http/impl/client/cache/ResourceReference;
    :cond_12
    return-void
.end method


# virtual methods
.method public cleanResources()V
    .registers 3

    .prologue
    .line 143
    iget-boolean v1, p0, Lorg/apache/http/impl/client/cache/ManagedHttpCacheStorage;->shutdown:Z

    if-eqz v1, :cond_5

    .line 153
    :cond_4
    return-void

    .line 147
    :cond_5
    :goto_5
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/ManagedHttpCacheStorage;->morque:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/cache/ResourceReference;

    .local v0, "ref":Lorg/apache/http/impl/client/cache/ResourceReference;
    if-eqz v0, :cond_4

    .line 148
    monitor-enter p0

    .line 149
    :try_start_10
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/ManagedHttpCacheStorage;->resources:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 150
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_1e

    .line 151
    invoke-virtual {v0}, Lorg/apache/http/impl/client/cache/ResourceReference;->getResource()Lorg/apache/http/client/cache/Resource;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/client/cache/Resource;->dispose()V

    goto :goto_5

    .line 150
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public getEntry(Ljava/lang/String;)Lorg/apache/http/client/cache/HttpCacheEntry;
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    if-nez p1, :cond_a

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URL may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_a
    invoke-direct {p0}, Lorg/apache/http/impl/client/cache/ManagedHttpCacheStorage;->ensureValidState()V

    .line 105
    monitor-enter p0

    .line 106
    :try_start_e
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/ManagedHttpCacheStorage;->entries:Lorg/apache/http/impl/client/cache/CacheMap;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/cache/CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/cache/HttpCacheEntry;

    monitor-exit p0

    return-object v0

    .line 107
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public putEntry(Ljava/lang/String;Lorg/apache/http/client/cache/HttpCacheEntry;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "entry"    # Lorg/apache/http/client/cache/HttpCacheEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    if-nez p1, :cond_a

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URL may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_a
    if-nez p2, :cond_14

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cache entry may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_14
    invoke-direct {p0}, Lorg/apache/http/impl/client/cache/ManagedHttpCacheStorage;->ensureValidState()V

    .line 94
    monitor-enter p0

    .line 95
    :try_start_18
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/ManagedHttpCacheStorage;->entries:Lorg/apache/http/impl/client/cache/CacheMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/client/cache/CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-direct {p0, p2}, Lorg/apache/http/impl/client/cache/ManagedHttpCacheStorage;->keepResourceReference(Lorg/apache/http/client/cache/HttpCacheEntry;)V

    .line 97
    monitor-exit p0

    .line 98
    return-void

    .line 97
    :catchall_22
    move-exception v0

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public removeEntry(Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    if-nez p1, :cond_a

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URL may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_a
    invoke-direct {p0}, Lorg/apache/http/impl/client/cache/ManagedHttpCacheStorage;->ensureValidState()V

    .line 115
    monitor-enter p0

    .line 118
    :try_start_e
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/ManagedHttpCacheStorage;->entries:Lorg/apache/http/impl/client/cache/CacheMap;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/cache/CacheMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    monitor-exit p0

    .line 120
    return-void

    .line 119
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw v0
.end method

.method public shutdown()V
    .registers 4

    .prologue
    .line 156
    iget-boolean v2, p0, Lorg/apache/http/impl/client/cache/ManagedHttpCacheStorage;->shutdown:Z

    if-eqz v2, :cond_5

    .line 169
    :goto_4
    return-void

    .line 159
    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/http/impl/client/cache/ManagedHttpCacheStorage;->shutdown:Z

    .line 160
    monitor-enter p0

    .line 161
    :try_start_9
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/ManagedHttpCacheStorage;->entries:Lorg/apache/http/impl/client/cache/CacheMap;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/cache/CacheMap;->clear()V

    .line 162
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/ManagedHttpCacheStorage;->resources:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/client/cache/ResourceReference;

    .line 163
    .local v1, "ref":Lorg/apache/http/impl/client/cache/ResourceReference;
    invoke-virtual {v1}, Lorg/apache/http/impl/client/cache/ResourceReference;->getResource()Lorg/apache/http/client/cache/Resource;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/client/cache/Resource;->dispose()V

    goto :goto_14

    .line 168
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ref":Lorg/apache/http/impl/client/cache/ResourceReference;
    :catchall_28
    move-exception v2

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_28

    throw v2

    .line 165
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2b
    :try_start_2b
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/ManagedHttpCacheStorage;->resources:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 166
    :cond_30
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/ManagedHttpCacheStorage;->morque:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v2

    if-nez v2, :cond_30

    .line 168
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_28

    goto :goto_4
.end method

.method public updateEntry(Ljava/lang/String;Lorg/apache/http/client/cache/HttpCacheUpdateCallback;)V
    .registers 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callback"    # Lorg/apache/http/client/cache/HttpCacheUpdateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    if-nez p1, :cond_a

    .line 126
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "URL may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    :cond_a
    if-nez p2, :cond_14

    .line 129
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Callback may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 131
    :cond_14
    invoke-direct {p0}, Lorg/apache/http/impl/client/cache/ManagedHttpCacheStorage;->ensureValidState()V

    .line 132
    monitor-enter p0

    .line 133
    :try_start_18
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/ManagedHttpCacheStorage;->entries:Lorg/apache/http/impl/client/cache/CacheMap;

    invoke-virtual {v2, p1}, Lorg/apache/http/impl/client/cache/CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/cache/HttpCacheEntry;

    .line 134
    .local v0, "existing":Lorg/apache/http/client/cache/HttpCacheEntry;
    invoke-interface {p2, v0}, Lorg/apache/http/client/cache/HttpCacheUpdateCallback;->update(Lorg/apache/http/client/cache/HttpCacheEntry;)Lorg/apache/http/client/cache/HttpCacheEntry;

    move-result-object v1

    .line 135
    .local v1, "updated":Lorg/apache/http/client/cache/HttpCacheEntry;
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/ManagedHttpCacheStorage;->entries:Lorg/apache/http/impl/client/cache/CacheMap;

    invoke-virtual {v2, p1, v1}, Lorg/apache/http/impl/client/cache/CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    if-eq v0, v1, :cond_2e

    .line 137
    invoke-direct {p0, v1}, Lorg/apache/http/impl/client/cache/ManagedHttpCacheStorage;->keepResourceReference(Lorg/apache/http/client/cache/HttpCacheEntry;)V

    .line 139
    :cond_2e
    monitor-exit p0

    .line 140
    return-void

    .line 139
    .end local v0    # "existing":Lorg/apache/http/client/cache/HttpCacheEntry;
    .end local v1    # "updated":Lorg/apache/http/client/cache/HttpCacheEntry;
    :catchall_30
    move-exception v2

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_18 .. :try_end_32} :catchall_30

    throw v2
.end method
