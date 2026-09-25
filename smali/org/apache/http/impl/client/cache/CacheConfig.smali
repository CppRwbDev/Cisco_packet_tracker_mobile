.class public Lorg/apache/http/impl/client/cache/CacheConfig;
.super Ljava/lang/Object;
.source "CacheConfig.java"


# static fields
.field public static final DEFAULT_ASYNCHRONOUS_WORKERS_CORE:I = 0x1

.field public static final DEFAULT_ASYNCHRONOUS_WORKERS_MAX:I = 0x1

.field public static final DEFAULT_ASYNCHRONOUS_WORKER_IDLE_LIFETIME_SECS:I = 0x3c

.field public static final DEFAULT_HEURISTIC_CACHING_ENABLED:Z = false

.field public static final DEFAULT_HEURISTIC_COEFFICIENT:F = 0.1f

.field public static final DEFAULT_HEURISTIC_LIFETIME:J = 0x0L

.field public static final DEFAULT_MAX_CACHE_ENTRIES:I = 0x3e8

.field public static final DEFAULT_MAX_OBJECT_SIZE_BYTES:I = 0x2000

.field public static final DEFAULT_MAX_UPDATE_RETRIES:I = 0x1

.field public static final DEFAULT_REVALIDATION_QUEUE_SIZE:I = 0x64


# instance fields
.field private asynchronousWorkerIdleLifetimeSecs:I

.field private asynchronousWorkersCore:I

.field private asynchronousWorkersMax:I

.field private heuristicCachingEnabled:Z

.field private heuristicCoefficient:F

.field private heuristicDefaultLifetime:J

.field private isSharedCache:Z

.field private maxCacheEntries:I

.field private maxObjectSize:J

.field private maxUpdateRetries:I

.field private revalidationQueueSize:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const-wide/16 v0, 0x2000

    iput-wide v0, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->maxObjectSize:J

    .line 135
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->maxCacheEntries:I

    .line 136
    iput v2, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->maxUpdateRetries:I

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->heuristicCachingEnabled:Z

    .line 138
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->heuristicCoefficient:F

    .line 139
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->heuristicDefaultLifetime:J

    .line 140
    iput-boolean v2, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->isSharedCache:Z

    .line 141
    iput v2, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->asynchronousWorkersMax:I

    .line 142
    iput v2, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->asynchronousWorkersCore:I

    .line 143
    const/16 v0, 0x3c

    iput v0, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->asynchronousWorkerIdleLifetimeSecs:I

    .line 144
    const/16 v0, 0x64

    iput v0, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->revalidationQueueSize:I

    return-void
.end method


# virtual methods
.method public getAsynchronousWorkerIdleLifetimeSecs()I
    .registers 2

    .prologue
    .line 342
    iget v0, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->asynchronousWorkerIdleLifetimeSecs:I

    return v0
.end method

.method public getAsynchronousWorkersCore()I
    .registers 2

    .prologue
    .line 322
    iget v0, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->asynchronousWorkersCore:I

    return v0
.end method

.method public getAsynchronousWorkersMax()I
    .registers 2

    .prologue
    .line 304
    iget v0, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->asynchronousWorkersMax:I

    return v0
.end method

.method public getHeuristicCoefficient()F
    .registers 2

    .prologue
    .line 260
    iget v0, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->heuristicCoefficient:F

    return v0
.end method

.method public getHeuristicDefaultLifetime()J
    .registers 3

    .prologue
    .line 280
    iget-wide v0, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->heuristicDefaultLifetime:J

    return-wide v0
.end method

.method public getMaxCacheEntries()I
    .registers 2

    .prologue
    .line 215
    iget v0, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->maxCacheEntries:I

    return v0
.end method

.method public getMaxObjectSize()J
    .registers 3

    .prologue
    .line 179
    iget-wide v0, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->maxObjectSize:J

    return-wide v0
.end method

.method public getMaxObjectSizeBytes()I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 154
    iget-wide v0, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->maxObjectSize:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    const v0, 0x7fffffff

    :goto_c
    return v0

    :cond_d
    iget-wide v0, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->maxObjectSize:J

    long-to-int v0, v0

    goto :goto_c
.end method

.method public getMaxUpdateRetries()I
    .registers 2

    .prologue
    .line 229
    iget v0, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->maxUpdateRetries:I

    return v0
.end method

.method public getRevalidationQueueSize()I
    .registers 2

    .prologue
    .line 360
    iget v0, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->revalidationQueueSize:I

    return v0
.end method

.method public isHeuristicCachingEnabled()Z
    .registers 2

    .prologue
    .line 244
    iget-boolean v0, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->heuristicCachingEnabled:Z

    return v0
.end method

.method public isSharedCache()Z
    .registers 2

    .prologue
    .line 198
    iget-boolean v0, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->isSharedCache:Z

    return v0
.end method

.method public setAsynchronousWorkerIdleLifetimeSecs(I)V
    .registers 2
    .param p1, "secs"    # I

    .prologue
    .line 353
    iput p1, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->asynchronousWorkerIdleLifetimeSecs:I

    .line 354
    return-void
.end method

.method public setAsynchronousWorkersCore(I)V
    .registers 2
    .param p1, "min"    # I

    .prologue
    .line 332
    iput p1, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->asynchronousWorkersCore:I

    .line 333
    return-void
.end method

.method public setAsynchronousWorkersMax(I)V
    .registers 2
    .param p1, "max"    # I

    .prologue
    .line 314
    iput p1, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->asynchronousWorkersMax:I

    .line 315
    return-void
.end method

.method public setHeuristicCachingEnabled(Z)V
    .registers 2
    .param p1, "heuristicCachingEnabled"    # Z

    .prologue
    .line 253
    iput-boolean p1, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->heuristicCachingEnabled:Z

    .line 254
    return-void
.end method

.method public setHeuristicCoefficient(F)V
    .registers 2
    .param p1, "heuristicCoefficient"    # F

    .prologue
    .line 272
    iput p1, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->heuristicCoefficient:F

    .line 273
    return-void
.end method

.method public setHeuristicDefaultLifetime(J)V
    .registers 4
    .param p1, "heuristicDefaultLifetimeSecs"    # J

    .prologue
    .line 295
    iput-wide p1, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->heuristicDefaultLifetime:J

    .line 296
    return-void
.end method

.method public setMaxCacheEntries(I)V
    .registers 2
    .param p1, "maxCacheEntries"    # I

    .prologue
    .line 222
    iput p1, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->maxCacheEntries:I

    .line 223
    return-void
.end method

.method public setMaxObjectSize(J)V
    .registers 4
    .param p1, "maxObjectSize"    # J

    .prologue
    .line 189
    iput-wide p1, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->maxObjectSize:J

    .line 190
    return-void
.end method

.method public setMaxObjectSizeBytes(I)V
    .registers 4
    .param p1, "maxObjectSizeBytes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 165
    const v0, 0x7fffffff

    if-le p1, v0, :cond_b

    .line 166
    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->maxObjectSize:J

    .line 170
    :goto_a
    return-void

    .line 168
    :cond_b
    int-to-long v0, p1

    iput-wide v0, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->maxObjectSize:J

    goto :goto_a
.end method

.method public setMaxUpdateRetries(I)V
    .registers 2
    .param p1, "maxUpdateRetries"    # I

    .prologue
    .line 236
    iput p1, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->maxUpdateRetries:I

    .line 237
    return-void
.end method

.method public setRevalidationQueueSize(I)V
    .registers 2
    .param p1, "size"    # I

    .prologue
    .line 367
    iput p1, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->revalidationQueueSize:I

    .line 368
    return-void
.end method

.method public setSharedCache(Z)V
    .registers 2
    .param p1, "isSharedCache"    # Z

    .prologue
    .line 208
    iput-boolean p1, p0, Lorg/apache/http/impl/client/cache/CacheConfig;->isSharedCache:Z

    .line 209
    return-void
.end method
