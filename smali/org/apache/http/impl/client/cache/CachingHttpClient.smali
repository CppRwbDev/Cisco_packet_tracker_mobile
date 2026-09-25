.class public Lorg/apache/http/impl/client/cache/CachingHttpClient;
.super Ljava/lang/Object;
.source "CachingHttpClient.java"

# interfaces
.implements Lorg/apache/http/client/HttpClient;


# annotations
.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


# static fields
.field public static final CACHE_RESPONSE_STATUS:Ljava/lang/String; = "http.cache.response.status"

.field private static final SUPPORTS_RANGE_AND_CONTENT_RANGE_HEADERS:Z


# instance fields
.field private final asynchRevalidator:Lorg/apache/http/impl/client/cache/AsynchronousValidator;

.field private final backend:Lorg/apache/http/client/HttpClient;

.field private final cacheHits:Ljava/util/concurrent/atomic/AtomicLong;

.field private final cacheMisses:Ljava/util/concurrent/atomic/AtomicLong;

.field private final cacheUpdates:Ljava/util/concurrent/atomic/AtomicLong;

.field private final cacheableRequestPolicy:Lorg/apache/http/impl/client/cache/CacheableRequestPolicy;

.field private final conditionalRequestBuilder:Lorg/apache/http/impl/client/cache/ConditionalRequestBuilder;

.field private final log:Lorg/apache/commons/logging/Log;

.field private final maxObjectSizeBytes:J

.field private final requestCompliance:Lorg/apache/http/impl/client/cache/RequestProtocolCompliance;

.field private final responseCache:Lorg/apache/http/impl/client/cache/HttpCache;

.field private final responseCachingPolicy:Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;

.field private final responseCompliance:Lorg/apache/http/impl/client/cache/ResponseProtocolCompliance;

.field private final responseGenerator:Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;

.field private final sharedCache:Z

.field private final suitabilityChecker:Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;

.field private final validityPolicy:Lorg/apache/http/impl/client/cache/CacheValidityPolicy;

.field private final viaHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/http/ProtocolVersion;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 188
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v1, Lorg/apache/http/impl/client/cache/BasicHttpCache;

    invoke-direct {v1}, Lorg/apache/http/impl/client/cache/BasicHttpCache;-><init>()V

    new-instance v2, Lorg/apache/http/impl/client/cache/CacheConfig;

    invoke-direct {v2}, Lorg/apache/http/impl/client/cache/CacheConfig;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/http/impl/client/cache/CachingHttpClient;-><init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/impl/client/cache/HttpCache;Lorg/apache/http/impl/client/cache/CacheConfig;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .registers 4
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;

    .prologue
    .line 212
    new-instance v0, Lorg/apache/http/impl/client/cache/BasicHttpCache;

    invoke-direct {v0}, Lorg/apache/http/impl/client/cache/BasicHttpCache;-><init>()V

    new-instance v1, Lorg/apache/http/impl/client/cache/CacheConfig;

    invoke-direct {v1}, Lorg/apache/http/impl/client/cache/CacheConfig;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/http/impl/client/cache/CachingHttpClient;-><init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/impl/client/cache/HttpCache;Lorg/apache/http/impl/client/cache/CacheConfig;)V

    .line 215
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/cache/HttpCacheStorage;Lorg/apache/http/impl/client/cache/CacheConfig;)V
    .registers 6
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "storage"    # Lorg/apache/http/client/cache/HttpCacheStorage;
    .param p3, "config"    # Lorg/apache/http/impl/client/cache/CacheConfig;

    .prologue
    .line 262
    new-instance v0, Lorg/apache/http/impl/client/cache/BasicHttpCache;

    new-instance v1, Lorg/apache/http/impl/client/cache/HeapResourceFactory;

    invoke-direct {v1}, Lorg/apache/http/impl/client/cache/HeapResourceFactory;-><init>()V

    invoke-direct {v0, v1, p2, p3}, Lorg/apache/http/impl/client/cache/BasicHttpCache;-><init>(Lorg/apache/http/client/cache/ResourceFactory;Lorg/apache/http/client/cache/HttpCacheStorage;Lorg/apache/http/impl/client/cache/CacheConfig;)V

    invoke-direct {p0, p1, v0, p3}, Lorg/apache/http/impl/client/cache/CachingHttpClient;-><init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/impl/client/cache/HttpCache;Lorg/apache/http/impl/client/cache/CacheConfig;)V

    .line 265
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/cache/ResourceFactory;Lorg/apache/http/client/cache/HttpCacheStorage;Lorg/apache/http/impl/client/cache/CacheConfig;)V
    .registers 6
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "resourceFactory"    # Lorg/apache/http/client/cache/ResourceFactory;
    .param p3, "storage"    # Lorg/apache/http/client/cache/HttpCacheStorage;
    .param p4, "config"    # Lorg/apache/http/impl/client/cache/CacheConfig;

    .prologue
    .line 245
    new-instance v0, Lorg/apache/http/impl/client/cache/BasicHttpCache;

    invoke-direct {v0, p2, p3, p4}, Lorg/apache/http/impl/client/cache/BasicHttpCache;-><init>(Lorg/apache/http/client/cache/ResourceFactory;Lorg/apache/http/client/cache/HttpCacheStorage;Lorg/apache/http/impl/client/cache/CacheConfig;)V

    invoke-direct {p0, p1, v0, p4}, Lorg/apache/http/impl/client/cache/CachingHttpClient;-><init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/impl/client/cache/HttpCache;Lorg/apache/http/impl/client/cache/CacheConfig;)V

    .line 248
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/impl/client/cache/CacheConfig;)V
    .registers 4
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "config"    # Lorg/apache/http/impl/client/cache/CacheConfig;

    .prologue
    .line 225
    new-instance v0, Lorg/apache/http/impl/client/cache/BasicHttpCache;

    invoke-direct {v0, p2}, Lorg/apache/http/impl/client/cache/BasicHttpCache;-><init>(Lorg/apache/http/impl/client/cache/CacheConfig;)V

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/http/impl/client/cache/CachingHttpClient;-><init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/impl/client/cache/HttpCache;Lorg/apache/http/impl/client/cache/CacheConfig;)V

    .line 228
    return-void
.end method

.method constructor <init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/impl/client/cache/CacheValidityPolicy;Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;Lorg/apache/http/impl/client/cache/HttpCache;Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;Lorg/apache/http/impl/client/cache/CacheableRequestPolicy;Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;Lorg/apache/http/impl/client/cache/ConditionalRequestBuilder;Lorg/apache/http/impl/client/cache/ResponseProtocolCompliance;Lorg/apache/http/impl/client/cache/RequestProtocolCompliance;)V
    .registers 15
    .param p1, "backend"    # Lorg/apache/http/client/HttpClient;
    .param p2, "validityPolicy"    # Lorg/apache/http/impl/client/cache/CacheValidityPolicy;
    .param p3, "responseCachingPolicy"    # Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;
    .param p4, "responseCache"    # Lorg/apache/http/impl/client/cache/HttpCache;
    .param p5, "responseGenerator"    # Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;
    .param p6, "cacheableRequestPolicy"    # Lorg/apache/http/impl/client/cache/CacheableRequestPolicy;
    .param p7, "suitabilityChecker"    # Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;
    .param p8, "conditionalRequestBuilder"    # Lorg/apache/http/impl/client/cache/ConditionalRequestBuilder;
    .param p9, "responseCompliance"    # Lorg/apache/http/impl/client/cache/ResponseProtocolCompliance;
    .param p10, "requestCompliance"    # Lorg/apache/http/impl/client/cache/RequestProtocolCompliance;

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->cacheHits:Ljava/util/concurrent/atomic/AtomicLong;

    .line 126
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->cacheMisses:Ljava/util/concurrent/atomic/AtomicLong;

    .line 127
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->cacheUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    .line 129
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->viaHeaders:Ljava/util/Map;

    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->log:Lorg/apache/commons/logging/Log;

    .line 278
    new-instance v0, Lorg/apache/http/impl/client/cache/CacheConfig;

    invoke-direct {v0}, Lorg/apache/http/impl/client/cache/CacheConfig;-><init>()V

    .line 279
    .local v0, "config":Lorg/apache/http/impl/client/cache/CacheConfig;
    invoke-virtual {v0}, Lorg/apache/http/impl/client/cache/CacheConfig;->getMaxObjectSize()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->maxObjectSizeBytes:J

    .line 280
    invoke-virtual {v0}, Lorg/apache/http/impl/client/cache/CacheConfig;->isSharedCache()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->sharedCache:Z

    .line 281
    iput-object p1, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->backend:Lorg/apache/http/client/HttpClient;

    .line 282
    iput-object p2, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->validityPolicy:Lorg/apache/http/impl/client/cache/CacheValidityPolicy;

    .line 283
    iput-object p3, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->responseCachingPolicy:Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;

    .line 284
    iput-object p4, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->responseCache:Lorg/apache/http/impl/client/cache/HttpCache;

    .line 285
    iput-object p5, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->responseGenerator:Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;

    .line 286
    iput-object p6, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->cacheableRequestPolicy:Lorg/apache/http/impl/client/cache/CacheableRequestPolicy;

    .line 287
    iput-object p7, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->suitabilityChecker:Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;

    .line 288
    iput-object p8, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->conditionalRequestBuilder:Lorg/apache/http/impl/client/cache/ConditionalRequestBuilder;

    .line 289
    iput-object p9, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->responseCompliance:Lorg/apache/http/impl/client/cache/ResponseProtocolCompliance;

    .line 290
    iput-object p10, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->requestCompliance:Lorg/apache/http/impl/client/cache/RequestProtocolCompliance;

    .line 291
    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->makeAsynchronousValidator(Lorg/apache/http/impl/client/cache/CacheConfig;)Lorg/apache/http/impl/client/cache/AsynchronousValidator;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->asynchRevalidator:Lorg/apache/http/impl/client/cache/AsynchronousValidator;

    .line 292
    return-void
.end method

.method constructor <init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/impl/client/cache/HttpCache;Lorg/apache/http/impl/client/cache/CacheConfig;)V
    .registers 8
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "cache"    # Lorg/apache/http/impl/client/cache/HttpCache;
    .param p3, "config"    # Lorg/apache/http/impl/client/cache/CacheConfig;

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->cacheHits:Ljava/util/concurrent/atomic/AtomicLong;

    .line 126
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->cacheMisses:Ljava/util/concurrent/atomic/AtomicLong;

    .line 127
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->cacheUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->viaHeaders:Ljava/util/Map;

    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->log:Lorg/apache/commons/logging/Log;

    .line 156
    if-nez p1, :cond_34

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HttpClient may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_34
    if-nez p2, :cond_3e

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HttpCache may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_3e
    if-nez p3, :cond_48

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CacheConfig may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_48
    invoke-virtual {p3}, Lorg/apache/http/impl/client/cache/CacheConfig;->getMaxObjectSize()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->maxObjectSizeBytes:J

    .line 166
    invoke-virtual {p3}, Lorg/apache/http/impl/client/cache/CacheConfig;->isSharedCache()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->sharedCache:Z

    .line 167
    iput-object p1, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->backend:Lorg/apache/http/client/HttpClient;

    .line 168
    iput-object p2, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->responseCache:Lorg/apache/http/impl/client/cache/HttpCache;

    .line 169
    new-instance v0, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;

    invoke-direct {v0}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->validityPolicy:Lorg/apache/http/impl/client/cache/CacheValidityPolicy;

    .line 170
    new-instance v0, Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;

    iget-wide v2, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->maxObjectSizeBytes:J

    iget-boolean v1, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->sharedCache:Z

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;-><init>(JZ)V

    iput-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->responseCachingPolicy:Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;

    .line 171
    new-instance v0, Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;

    iget-object v1, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->validityPolicy:Lorg/apache/http/impl/client/cache/CacheValidityPolicy;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;-><init>(Lorg/apache/http/impl/client/cache/CacheValidityPolicy;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->responseGenerator:Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;

    .line 172
    new-instance v0, Lorg/apache/http/impl/client/cache/CacheableRequestPolicy;

    invoke-direct {v0}, Lorg/apache/http/impl/client/cache/CacheableRequestPolicy;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->cacheableRequestPolicy:Lorg/apache/http/impl/client/cache/CacheableRequestPolicy;

    .line 173
    new-instance v0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;

    iget-object v1, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->validityPolicy:Lorg/apache/http/impl/client/cache/CacheValidityPolicy;

    invoke-direct {v0, v1, p3}, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;-><init>(Lorg/apache/http/impl/client/cache/CacheValidityPolicy;Lorg/apache/http/impl/client/cache/CacheConfig;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->suitabilityChecker:Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;

    .line 174
    new-instance v0, Lorg/apache/http/impl/client/cache/ConditionalRequestBuilder;

    invoke-direct {v0}, Lorg/apache/http/impl/client/cache/ConditionalRequestBuilder;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->conditionalRequestBuilder:Lorg/apache/http/impl/client/cache/ConditionalRequestBuilder;

    .line 176
    new-instance v0, Lorg/apache/http/impl/client/cache/ResponseProtocolCompliance;

    invoke-direct {v0}, Lorg/apache/http/impl/client/cache/ResponseProtocolCompliance;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->responseCompliance:Lorg/apache/http/impl/client/cache/ResponseProtocolCompliance;

    .line 177
    new-instance v0, Lorg/apache/http/impl/client/cache/RequestProtocolCompliance;

    invoke-direct {v0}, Lorg/apache/http/impl/client/cache/RequestProtocolCompliance;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->requestCompliance:Lorg/apache/http/impl/client/cache/RequestProtocolCompliance;

    .line 179
    invoke-direct {p0, p3}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->makeAsynchronousValidator(Lorg/apache/http/impl/client/cache/CacheConfig;)Lorg/apache/http/impl/client/cache/AsynchronousValidator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->asynchRevalidator:Lorg/apache/http/impl/client/cache/AsynchronousValidator;

    .line 180
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/client/cache/CacheConfig;)V
    .registers 4
    .param p1, "config"    # Lorg/apache/http/impl/client/cache/CacheConfig;

    .prologue
    .line 200
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v1, Lorg/apache/http/impl/client/cache/BasicHttpCache;

    invoke-direct {v1, p1}, Lorg/apache/http/impl/client/cache/BasicHttpCache;-><init>(Lorg/apache/http/impl/client/cache/CacheConfig;)V

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/http/impl/client/cache/CachingHttpClient;-><init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/impl/client/cache/HttpCache;Lorg/apache/http/impl/client/cache/CacheConfig;)V

    .line 203
    return-void
.end method

.method private alreadyHaveNewerCacheEntry(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)Z
    .registers 11
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "backendResponse"    # Lorg/apache/http/HttpResponse;

    .prologue
    const/4 v5, 0x0

    .line 955
    const/4 v2, 0x0

    .line 957
    .local v2, "existing":Lorg/apache/http/client/cache/HttpCacheEntry;
    :try_start_2
    iget-object v6, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->responseCache:Lorg/apache/http/impl/client/cache/HttpCache;

    invoke-interface {v6, p1, p2}, Lorg/apache/http/impl/client/cache/HttpCache;->getCacheEntry(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/client/cache/HttpCacheEntry;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_32

    move-result-object v2

    .line 961
    :goto_8
    if-nez v2, :cond_b

    .line 973
    :cond_a
    :goto_a
    return v5

    .line 962
    :cond_b
    const-string v6, "Date"

    invoke-virtual {v2, v6}, Lorg/apache/http/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 963
    .local v1, "entryDateHeader":Lorg/apache/http/Header;
    if-eqz v1, :cond_a

    .line 964
    const-string v6, "Date"

    invoke-interface {p3, v6}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 965
    .local v4, "responseDateHeader":Lorg/apache/http/Header;
    if-eqz v4, :cond_a

    .line 967
    :try_start_1b
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 968
    .local v0, "entryDate":Ljava/util/Date;
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 969
    .local v3, "responseDate":Ljava/util/Date;
    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z
    :try_end_2e
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_1b .. :try_end_2e} :catch_30

    move-result v5

    goto :goto_a

    .line 970
    .end local v0    # "entryDate":Ljava/util/Date;
    .end local v3    # "responseDate":Ljava/util/Date;
    :catch_30
    move-exception v6

    goto :goto_a

    .line 958
    .end local v1    # "entryDateHeader":Lorg/apache/http/Header;
    .end local v4    # "responseDateHeader":Lorg/apache/http/Header;
    :catch_32
    move-exception v6

    goto :goto_8
.end method

.method private explicitFreshnessRequest(Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .registers 26
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "entry"    # Lorg/apache/http/client/cache/HttpCacheEntry;
    .param p3, "now"    # Ljava/util/Date;

    .prologue
    .line 635
    const-string v18, "Cache-Control"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/apache/http/HttpRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v6

    .local v6, "arr$":[Lorg/apache/http/Header;
    array-length v12, v6

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    move v11, v10

    .end local v6    # "arr$":[Lorg/apache/http/Header;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .local v11, "i$":I
    :goto_d
    if-ge v11, v12, :cond_81

    aget-object v9, v6, v11

    .line 636
    .local v9, "h":Lorg/apache/http/Header;
    invoke-interface {v9}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v7

    .local v7, "arr$":[Lorg/apache/http/HeaderElement;
    array-length v13, v7

    .local v13, "len$":I
    const/4 v10, 0x0

    .end local v11    # "i$":I
    .restart local v10    # "i$":I
    :goto_17
    if-ge v10, v13, :cond_7d

    aget-object v8, v7, v10

    .line 637
    .local v8, "elt":Lorg/apache/http/HeaderElement;
    const-string v18, "max-stale"

    invoke-interface {v8}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5f

    .line 639
    :try_start_27
    invoke-interface {v8}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 640
    .local v16, "maxstale":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->validityPolicy:Lorg/apache/http/impl/client/cache/CacheValidityPolicy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v4

    .line 641
    .local v4, "age":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->validityPolicy:Lorg/apache/http/impl/client/cache/CacheValidityPolicy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->getFreshnessLifetimeSecs(Lorg/apache/http/client/cache/HttpCacheEntry;)J
    :try_end_4c
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_4c} :catch_5b

    move-result-wide v14

    .line 642
    .local v14, "lifetime":J
    sub-long v18, v4, v14

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-lez v18, :cond_7a

    const/16 v18, 0x1

    .line 652
    .end local v4    # "age":J
    .end local v7    # "arr$":[Lorg/apache/http/HeaderElement;
    .end local v8    # "elt":Lorg/apache/http/HeaderElement;
    .end local v9    # "h":Lorg/apache/http/Header;
    .end local v10    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "lifetime":J
    .end local v16    # "maxstale":I
    :goto_5a
    return v18

    .line 643
    .restart local v7    # "arr$":[Lorg/apache/http/HeaderElement;
    .restart local v8    # "elt":Lorg/apache/http/HeaderElement;
    .restart local v9    # "h":Lorg/apache/http/Header;
    .restart local v10    # "i$":I
    .restart local v13    # "len$":I
    :catch_5b
    move-exception v17

    .line 644
    .local v17, "nfe":Ljava/lang/NumberFormatException;
    const/16 v18, 0x1

    goto :goto_5a

    .line 646
    .end local v17    # "nfe":Ljava/lang/NumberFormatException;
    :cond_5f
    const-string v18, "min-fresh"

    invoke-interface {v8}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_77

    const-string v18, "max-age"

    invoke-interface {v8}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7a

    .line 648
    :cond_77
    const/16 v18, 0x1

    goto :goto_5a

    .line 636
    :cond_7a
    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    .line 635
    .end local v8    # "elt":Lorg/apache/http/HeaderElement;
    :cond_7d
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    .end local v10    # "i$":I
    .restart local v11    # "i$":I
    goto :goto_d

    .line 652
    .end local v7    # "arr$":[Lorg/apache/http/HeaderElement;
    .end local v9    # "h":Lorg/apache/http/Header;
    .end local v13    # "len$":I
    :cond_81
    const/16 v18, 0x0

    goto :goto_5a
.end method

.method private flushEntriesInvalidatedByRequest(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)V
    .registers 6
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 570
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->responseCache:Lorg/apache/http/impl/client/cache/HttpCache;

    invoke-interface {v1, p1, p2}, Lorg/apache/http/impl/client/cache/HttpCache;->flushInvalidatedCacheEntriesFor(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 574
    :goto_5
    return-void

    .line 571
    :catch_6
    move-exception v0

    .line 572
    .local v0, "ioe":Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Unable to flush invalidated entries from cache"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method private generateCachedResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)Lorg/apache/http/HttpResponse;
    .registers 11
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p3, "entry"    # Lorg/apache/http/client/cache/HttpCacheEntry;
    .param p4, "now"    # Ljava/util/Date;

    .prologue
    .line 579
    const-string v1, "If-None-Match"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "If-Modified-Since"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 581
    :cond_10
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->responseGenerator:Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;

    invoke-virtual {v1, p3}, Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;->generateNotModifiedResponse(Lorg/apache/http/client/cache/HttpCacheEntry;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 585
    .local v0, "cachedResponse":Lorg/apache/http/HttpResponse;
    :goto_16
    sget-object v1, Lorg/apache/http/client/cache/CacheResponseStatus;->CACHE_HIT:Lorg/apache/http/client/cache/CacheResponseStatus;

    invoke-direct {p0, p2, v1}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->setResponseStatus(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/cache/CacheResponseStatus;)V

    .line 586
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->validityPolicy:Lorg/apache/http/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v1, p3, p4}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->getStalenessSecs(Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2e

    .line 587
    const-string v1, "Warning"

    const-string v2, "110 localhost \"Response is stale\""

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :cond_2e
    return-object v0

    .line 583
    .end local v0    # "cachedResponse":Lorg/apache/http/HttpResponse;
    :cond_2f
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->responseGenerator:Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;

    invoke-virtual {v1, p3}, Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;->generateResponse(Lorg/apache/http/client/cache/HttpCacheEntry;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .restart local v0    # "cachedResponse":Lorg/apache/http/HttpResponse;
    goto :goto_16
.end method

.method private generateGatewayTimeout(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 6
    .param p1, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 602
    sget-object v0, Lorg/apache/http/client/cache/CacheResponseStatus;->CACHE_MODULE_RESPONSE:Lorg/apache/http/client/cache/CacheResponseStatus;

    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->setResponseStatus(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/cache/CacheResponseStatus;)V

    .line 603
    new-instance v0, Lorg/apache/http/message/BasicHttpResponse;

    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    const/16 v2, 0x1f8

    const-string v3, "Gateway Timeout"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    return-object v0
.end method

.method private generateViaHeader(Lorg/apache/http/HttpMessage;)Ljava/lang/String;
    .registers 14
    .param p1, "msg"    # Lorg/apache/http/HttpMessage;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 657
    invoke-interface {p1}, Lorg/apache/http/HttpMessage;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v1

    .line 658
    .local v1, "pv":Lorg/apache/http/ProtocolVersion;
    iget-object v5, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->viaHeaders:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 659
    .local v0, "existingEntry":Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 674
    .end local v0    # "existingEntry":Ljava/lang/String;
    :goto_12
    return-object v0

    .line 661
    .restart local v0    # "existingEntry":Ljava/lang/String;
    :cond_13
    const-string v5, "org.apache.http.client"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/http/util/VersionInfo;->loadVersionInfo(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/http/util/VersionInfo;

    move-result-object v4

    .line 662
    .local v4, "vi":Lorg/apache/http/util/VersionInfo;
    if-eqz v4, :cond_58

    invoke-virtual {v4}, Lorg/apache/http/util/VersionInfo;->getRelease()Ljava/lang/String;

    move-result-object v2

    .line 665
    .local v2, "release":Ljava/lang/String;
    :goto_27
    const-string v5, "http"

    invoke-virtual {v1}, Lorg/apache/http/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 666
    const-string v5, "%d.%d localhost (Apache-HttpClient/%s (cache))"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v1}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    aput-object v2, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 672
    .local v3, "value":Ljava/lang/String;
    :goto_51
    iget-object v5, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->viaHeaders:Ljava/util/Map;

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v3

    .line 674
    goto :goto_12

    .line 662
    .end local v2    # "release":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_58
    const-string v2, "UNAVAILABLE"

    goto :goto_27

    .line 669
    .restart local v2    # "release":Ljava/lang/String;
    :cond_5b
    const-string v5, "%s/%d.%d localhost (Apache-HttpClient/%s (cache))"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/apache/http/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v1}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v1}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    aput-object v2, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_51
.end method

.method private getExistingCacheVariants(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Ljava/util/Map;
    .registers 7
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/impl/client/cache/Variant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 537
    const/4 v1, 0x0

    .line 539
    .local v1, "variants":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/impl/client/cache/Variant;>;"
    :try_start_1
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->responseCache:Lorg/apache/http/impl/client/cache/HttpCache;

    invoke-interface {v2, p1, p2}, Lorg/apache/http/impl/client/cache/HttpCache;->getVariantCacheEntriesWithEtags(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Ljava/util/Map;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_8

    move-result-object v1

    .line 543
    :goto_7
    return-object v1

    .line 540
    :catch_8
    move-exception v0

    .line 541
    .local v0, "ioe":Ljava/io/IOException;
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Unable to retrieve variant entries from cache"

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method private getFatallyNoncompliantResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 8
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 525
    const/4 v2, 0x0

    .line 526
    .local v2, "fatalErrorResponse":Lorg/apache/http/HttpResponse;
    iget-object v4, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->requestCompliance:Lorg/apache/http/impl/client/cache/RequestProtocolCompliance;

    invoke-virtual {v4, p1}, Lorg/apache/http/impl/client/cache/RequestProtocolCompliance;->requestIsFatallyNonCompliant(Lorg/apache/http/HttpRequest;)Ljava/util/List;

    move-result-object v1

    .line 528
    .local v1, "fatalError":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/impl/client/cache/RequestProtocolError;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/cache/RequestProtocolError;

    .line 529
    .local v0, "error":Lorg/apache/http/impl/client/cache/RequestProtocolError;
    sget-object v4, Lorg/apache/http/client/cache/CacheResponseStatus;->CACHE_MODULE_RESPONSE:Lorg/apache/http/client/cache/CacheResponseStatus;

    invoke-direct {p0, p2, v4}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->setResponseStatus(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/cache/CacheResponseStatus;)V

    .line 530
    iget-object v4, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->requestCompliance:Lorg/apache/http/impl/client/cache/RequestProtocolCompliance;

    invoke-virtual {v4, v0}, Lorg/apache/http/impl/client/cache/RequestProtocolCompliance;->getErrorForRequest(Lorg/apache/http/impl/client/cache/RequestProtocolError;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    goto :goto_b

    .line 532
    .end local v0    # "error":Lorg/apache/http/impl/client/cache/RequestProtocolError;
    :cond_23
    return-object v2
.end method

.method private getUpdatedVariantEntry(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Ljava/util/Date;Ljava/util/Date;Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/client/cache/Variant;Lorg/apache/http/client/cache/HttpCacheEntry;)Lorg/apache/http/client/cache/HttpCacheEntry;
    .registers 18
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "conditionalRequest"    # Lorg/apache/http/HttpRequest;
    .param p3, "requestDate"    # Ljava/util/Date;
    .param p4, "responseDate"    # Ljava/util/Date;
    .param p5, "backendResponse"    # Lorg/apache/http/HttpResponse;
    .param p6, "matchingVariant"    # Lorg/apache/http/impl/client/cache/Variant;
    .param p7, "matchedEntry"    # Lorg/apache/http/client/cache/HttpCacheEntry;

    .prologue
    .line 819
    move-object/from16 v9, p7

    .line 821
    .local v9, "responseEntry":Lorg/apache/http/client/cache/HttpCacheEntry;
    :try_start_2
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->responseCache:Lorg/apache/http/impl/client/cache/HttpCache;

    invoke-virtual/range {p6 .. p6}, Lorg/apache/http/impl/client/cache/Variant;->getCacheKey()Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p7

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v7}, Lorg/apache/http/impl/client/cache/HttpCache;->updateVariantCacheEntry(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;Lorg/apache/http/HttpResponse;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)Lorg/apache/http/client/cache/HttpCacheEntry;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_12} :catch_14

    move-result-object v9

    .line 826
    :goto_13
    return-object v9

    .line 823
    :catch_14
    move-exception v8

    .line 824
    .local v8, "ioe":Ljava/io/IOException;
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Could not update cache entry"

    invoke-interface {v0, v1, v8}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method private handleAndConsume(Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .registers 9
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/HttpResponse;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    .local p1, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    :try_start_0
    invoke-interface {p1, p2}, Lorg/apache/http/client/ResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_c

    move-result-object v1

    .line 393
    .local v1, "result":Ljava/lang/Object;, "TT;"
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 394
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V

    .line 395
    return-object v1

    .line 373
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    :catch_c
    move-exception v2

    .line 374
    .local v2, "t":Ljava/lang/Exception;
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 376
    .restart local v0    # "entity":Lorg/apache/http/HttpEntity;
    :try_start_11
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_1b

    .line 382
    :goto_14
    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_24

    .line 383
    check-cast v2, Ljava/lang/RuntimeException;

    .end local v2    # "t":Ljava/lang/Exception;
    throw v2

    .line 377
    .restart local v2    # "t":Ljava/lang/Exception;
    :catch_1b
    move-exception v3

    .line 380
    .local v3, "t2":Ljava/lang/Exception;
    iget-object v4, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Error consuming content after an exception."

    invoke-interface {v4, v5, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_14

    .line 385
    .end local v3    # "t2":Ljava/lang/Exception;
    :cond_24
    instance-of v4, v2, Ljava/io/IOException;

    if-eqz v4, :cond_2b

    .line 386
    check-cast v2, Ljava/io/IOException;

    .end local v2    # "t":Ljava/lang/Exception;
    throw v2

    .line 388
    .restart local v2    # "t":Ljava/lang/Exception;
    :cond_2b
    new-instance v4, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v4, v2}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private handleCacheHit(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/cache/HttpCacheEntry;)Lorg/apache/http/HttpResponse;
    .registers 12
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p4, "entry"    # Lorg/apache/http/client/cache/HttpCacheEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->recordCacheHit(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)V

    .line 446
    const/4 v6, 0x0

    .line 447
    .local v6, "out":Lorg/apache/http/HttpResponse;
    invoke-virtual {p0}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->getCurrentDate()Ljava/util/Date;

    move-result-object v5

    .line 448
    .local v5, "now":Ljava/util/Date;
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->suitabilityChecker:Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;

    invoke-virtual {v0, p1, p2, p4, v5}, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->canCachedResponseBeUsed(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 449
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Cache hit"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 450
    invoke-direct {p0, p2, p3, p4, v5}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->generateCachedResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 463
    :goto_1b
    if-eqz p3, :cond_36

    .line 464
    const-string v0, "http.target_host"

    invoke-interface {p3, v0, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 465
    const-string v0, "http.request"

    invoke-interface {p3, v0, p2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 466
    const-string v0, "http.response"

    invoke-interface {p3, v0, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 467
    const-string v0, "http.request_sent"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_36
    move-object v0, v6

    .line 469
    :goto_37
    return-object v0

    .line 451
    :cond_38
    invoke-direct {p0, p2}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->mayCallBackend(Lorg/apache/http/HttpRequest;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 452
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Cache entry not suitable but only-if-cached requested"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 453
    invoke-direct {p0, p3}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->generateGatewayTimeout(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    goto :goto_1b

    .line 454
    :cond_4a
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->validityPolicy:Lorg/apache/http/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v0, p4}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->isRevalidatable(Lorg/apache/http/client/cache/HttpCacheEntry;)Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-virtual {p4}, Lorg/apache/http/client/cache/HttpCacheEntry;->getStatusCode()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_62

    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->suitabilityChecker:Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;

    invoke-virtual {v0, p2}, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->isConditional(Lorg/apache/http/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 457
    :cond_62
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Revalidating cache entry"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 458
    invoke-direct/range {v0 .. v5}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->revalidateCacheEntry(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_37

    .line 460
    :cond_73
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Cache entry not usable; calling backend"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 461
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->callBackend(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_37
.end method

.method private handleCacheMiss(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 9
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 497
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->recordCacheMiss(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)V

    .line 499
    invoke-direct {p0, p2}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->mayCallBackend(Lorg/apache/http/HttpRequest;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 500
    new-instance v1, Lorg/apache/http/message/BasicHttpResponse;

    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    const/16 v3, 0x1f8

    const-string v4, "Gateway Timeout"

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 510
    :goto_14
    return-object v1

    .line 504
    :cond_15
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->getExistingCacheVariants(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Ljava/util/Map;

    move-result-object v0

    .line 506
    .local v0, "variants":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/impl/client/cache/Variant;>;"
    if-eqz v0, :cond_26

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_26

    .line 507
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->negotiateResponseFromVariants(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    goto :goto_14

    .line 510
    :cond_26
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->callBackend(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    goto :goto_14
.end method

.method private handleRevalidationFailure(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)Lorg/apache/http/HttpResponse;
    .registers 6
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p3, "entry"    # Lorg/apache/http/client/cache/HttpCacheEntry;
    .param p4, "now"    # Ljava/util/Date;

    .prologue
    .line 594
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->staleResponseNotAllowed(Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 595
    invoke-direct {p0, p2}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->generateGatewayTimeout(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 597
    :goto_a
    return-object v0

    :cond_b
    invoke-direct {p0, p2, p3}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->unvalidatedCacheHit(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/cache/HttpCacheEntry;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_a
.end method

.method private makeAsynchronousValidator(Lorg/apache/http/impl/client/cache/CacheConfig;)Lorg/apache/http/impl/client/cache/AsynchronousValidator;
    .registers 3
    .param p1, "config"    # Lorg/apache/http/impl/client/cache/CacheConfig;

    .prologue
    .line 296
    invoke-virtual {p1}, Lorg/apache/http/impl/client/cache/CacheConfig;->getAsynchronousWorkersMax()I

    move-result v0

    if-lez v0, :cond_c

    .line 297
    new-instance v0, Lorg/apache/http/impl/client/cache/AsynchronousValidator;

    invoke-direct {v0, p0, p1}, Lorg/apache/http/impl/client/cache/AsynchronousValidator;-><init>(Lorg/apache/http/impl/client/cache/CachingHttpClient;Lorg/apache/http/impl/client/cache/CacheConfig;)V

    .line 299
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private mayCallBackend(Lorg/apache/http/HttpRequest;)Z
    .registers 12
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 623
    const-string v8, "Cache-Control"

    invoke-interface {p1, v8}, Lorg/apache/http/HttpRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/http/Header;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v0    # "arr$":[Lorg/apache/http/Header;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .local v5, "i$":I
    :goto_9
    if-ge v5, v6, :cond_33

    aget-object v3, v0, v5

    .line 624
    .local v3, "h":Lorg/apache/http/Header;
    invoke-interface {v3}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v1

    .local v1, "arr$":[Lorg/apache/http/HeaderElement;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_13
    if-ge v4, v7, :cond_2f

    aget-object v2, v1, v4

    .line 625
    .local v2, "elt":Lorg/apache/http/HeaderElement;
    const-string v8, "only-if-cached"

    invoke-interface {v2}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 626
    iget-object v8, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string v9, "Request marked only-if-cached"

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 627
    const/4 v8, 0x0

    .line 631
    .end local v1    # "arr$":[Lorg/apache/http/HeaderElement;
    .end local v2    # "elt":Lorg/apache/http/HeaderElement;
    .end local v3    # "h":Lorg/apache/http/Header;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    :goto_2b
    return v8

    .line 624
    .restart local v1    # "arr$":[Lorg/apache/http/HeaderElement;
    .restart local v2    # "elt":Lorg/apache/http/HeaderElement;
    .restart local v3    # "h":Lorg/apache/http/Header;
    .restart local v4    # "i$":I
    .restart local v7    # "len$":I
    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 623
    .end local v2    # "elt":Lorg/apache/http/HeaderElement;
    :cond_2f
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_9

    .line 631
    .end local v1    # "arr$":[Lorg/apache/http/HeaderElement;
    .end local v3    # "h":Lorg/apache/http/Header;
    .end local v7    # "len$":I
    :cond_33
    const/4 v8, 0x1

    goto :goto_2b
.end method

.method private recordCacheHit(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)V
    .registers 7
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 555
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->cacheHits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 556
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 557
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    .line 558
    .local v0, "rl":Lorg/apache/http/RequestLine;
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache hit [host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 560
    .end local v0    # "rl":Lorg/apache/http/RequestLine;
    :cond_3d
    return-void
.end method

.method private recordCacheMiss(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)V
    .registers 7
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 547
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->cacheMisses:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 548
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 549
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    .line 550
    .local v0, "rl":Lorg/apache/http/RequestLine;
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache miss [host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 552
    .end local v0    # "rl":Lorg/apache/http/RequestLine;
    :cond_3d
    return-void
.end method

.method private recordCacheUpdate(Lorg/apache/http/protocol/HttpContext;)V
    .registers 3
    .param p1, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 563
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->cacheUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 564
    sget-object v0, Lorg/apache/http/client/cache/CacheResponseStatus;->VALIDATED:Lorg/apache/http/client/cache/CacheResponseStatus;

    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->setResponseStatus(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/cache/CacheResponseStatus;)V

    .line 565
    return-void
.end method

.method private retryRequestUnconditionally(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/cache/HttpCacheEntry;)Lorg/apache/http/HttpResponse;
    .registers 7
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p4, "matchedEntry"    # Lorg/apache/http/client/cache/HttpCacheEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 810
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->conditionalRequestBuilder:Lorg/apache/http/impl/client/cache/ConditionalRequestBuilder;

    invoke-virtual {v1, p2, p4}, Lorg/apache/http/impl/client/cache/ConditionalRequestBuilder;->buildUnconditionalRequest(Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;)Lorg/apache/http/HttpRequest;

    move-result-object v0

    .line 812
    .local v0, "unconditional":Lorg/apache/http/HttpRequest;
    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->callBackend(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1
.end method

.method private revalidateCacheEntry(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)Lorg/apache/http/HttpResponse;
    .registers 11
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p4, "entry"    # Lorg/apache/http/client/cache/HttpCacheEntry;
    .param p5, "now"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 477
    :try_start_0
    iget-object v3, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->asynchRevalidator:Lorg/apache/http/impl/client/cache/AsynchronousValidator;

    if-eqz v3, :cond_23

    invoke-direct {p0, p2, p4, p5}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->staleResponseNotAllowed(Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_23

    iget-object v3, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->validityPolicy:Lorg/apache/http/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v3, p4, p5}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->mayReturnStaleWhileRevalidating(Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 480
    iget-object v3, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Serving stale with asynchronous revalidation"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 481
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->generateCachedResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 483
    .local v2, "resp":Lorg/apache/http/HttpResponse;
    iget-object v3, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->asynchRevalidator:Lorg/apache/http/impl/client/cache/AsynchronousValidator;

    invoke-virtual {v3, p1, p2, p3, p4}, Lorg/apache/http/impl/client/cache/AsynchronousValidator;->revalidateCacheEntry(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/cache/HttpCacheEntry;)V

    .line 489
    .end local v2    # "resp":Lorg/apache/http/HttpResponse;
    :goto_22
    return-object v2

    .line 487
    :cond_23
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->revalidateCacheEntry(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/cache/HttpCacheEntry;)Lorg/apache/http/HttpResponse;
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_26} :catch_28
    .catch Lorg/apache/http/ProtocolException; {:try_start_0 .. :try_end_26} :catch_2e

    move-result-object v2

    goto :goto_22

    .line 488
    :catch_28
    move-exception v1

    .line 489
    .local v1, "ioex":Ljava/io/IOException;
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->handleRevalidationFailure(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    goto :goto_22

    .line 490
    .end local v1    # "ioex":Ljava/io/IOException;
    :catch_2e
    move-exception v0

    .line 491
    .local v0, "e":Lorg/apache/http/ProtocolException;
    new-instance v3, Lorg/apache/http/client/ClientProtocolException;

    invoke-direct {v3, v0}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private revalidationResponseIsTooOld(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/cache/HttpCacheEntry;)Z
    .registers 8
    .param p1, "backendResponse"    # Lorg/apache/http/HttpResponse;
    .param p2, "cacheEntry"    # Lorg/apache/http/client/cache/HttpCacheEntry;

    .prologue
    .line 738
    const-string v4, "Date"

    invoke-virtual {p2, v4}, Lorg/apache/http/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 739
    .local v1, "entryDateHeader":Lorg/apache/http/Header;
    const-string v4, "Date"

    invoke-interface {p1, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 740
    .local v3, "responseDateHeader":Lorg/apache/http/Header;
    if-eqz v1, :cond_29

    if-eqz v3, :cond_29

    .line 742
    :try_start_10
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 743
    .local v0, "entryDate":Ljava/util/Date;
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 744
    .local v2, "respDate":Ljava/util/Date;
    invoke-virtual {v2, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z
    :try_end_23
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_10 .. :try_end_23} :catch_28

    move-result v4

    if-eqz v4, :cond_29

    const/4 v4, 0x1

    .line 752
    .end local v0    # "entryDate":Ljava/util/Date;
    .end local v2    # "respDate":Ljava/util/Date;
    :goto_27
    return v4

    .line 745
    :catch_28
    move-exception v4

    .line 752
    :cond_29
    const/4 v4, 0x0

    goto :goto_27
.end method

.method private satisfyFromCache(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/client/cache/HttpCacheEntry;
    .registers 7
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 514
    const/4 v0, 0x0

    .line 516
    .local v0, "entry":Lorg/apache/http/client/cache/HttpCacheEntry;
    :try_start_1
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->responseCache:Lorg/apache/http/impl/client/cache/HttpCache;

    invoke-interface {v2, p1, p2}, Lorg/apache/http/impl/client/cache/HttpCache;->getCacheEntry(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/client/cache/HttpCacheEntry;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_8

    move-result-object v0

    .line 520
    :goto_7
    return-object v0

    .line 517
    :catch_8
    move-exception v1

    .line 518
    .local v1, "ioe":Ljava/io/IOException;
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Unable to retrieve entries from cache"

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method private setResponseStatus(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/cache/CacheResponseStatus;)V
    .registers 4
    .param p1, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p2, "value"    # Lorg/apache/http/client/cache/CacheResponseStatus;

    .prologue
    .line 678
    if-eqz p1, :cond_7

    .line 679
    const-string v0, "http.cache.response.status"

    invoke-interface {p1, v0, p2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 681
    :cond_7
    return-void
.end method

.method private shouldSendNotModifiedResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;)Z
    .registers 5
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "responseEntry"    # Lorg/apache/http/client/cache/HttpCacheEntry;

    .prologue
    .line 840
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->suitabilityChecker:Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->isConditional(Lorg/apache/http/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->suitabilityChecker:Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->allConditionalsMatch(Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private staleIfErrorAppliesTo(I)Z
    .registers 3
    .param p1, "statusCode"    # I

    .prologue
    .line 897
    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_10

    const/16 v0, 0x1f6

    if-eq p1, v0, :cond_10

    const/16 v0, 0x1f7

    if-eq p1, v0, :cond_10

    const/16 v0, 0x1f8

    if-ne p1, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private staleResponseNotAllowed(Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .registers 5
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "entry"    # Lorg/apache/http/client/cache/HttpCacheEntry;
    .param p3, "now"    # Ljava/util/Date;

    .prologue
    .line 617
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->validityPolicy:Lorg/apache/http/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v0, p2}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->mustRevalidate(Lorg/apache/http/client/cache/HttpCacheEntry;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->isSharedCache()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->validityPolicy:Lorg/apache/http/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v0, p2}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->proxyRevalidate(Lorg/apache/http/client/cache/HttpCacheEntry;)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_16
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->explicitFreshnessRequest(Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private storeRequestIfModifiedSinceFor304Response(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)V
    .registers 6
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "backendResponse"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 945
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x130

    if-ne v1, v2, :cond_1d

    .line 946
    const-string v1, "If-Modified-Since"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 947
    .local v0, "h":Lorg/apache/http/Header;
    if-eqz v0, :cond_1d

    .line 948
    const-string v1, "Last-Modified"

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    .end local v0    # "h":Lorg/apache/http/Header;
    :cond_1d
    return-void
.end method

.method private tryToUpdateVariantMap(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/impl/client/cache/Variant;)V
    .registers 7
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "matchingVariant"    # Lorg/apache/http/impl/client/cache/Variant;

    .prologue
    .line 832
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->responseCache:Lorg/apache/http/impl/client/cache/HttpCache;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/http/impl/client/cache/HttpCache;->reuseVariantEntryFor(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/impl/client/cache/Variant;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 836
    :goto_5
    return-void

    .line 833
    :catch_6
    move-exception v0

    .line 834
    .local v0, "ioe":Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Could not update cache entry to reuse variant"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method private unvalidatedCacheHit(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/cache/HttpCacheEntry;)Lorg/apache/http/HttpResponse;
    .registers 6
    .param p1, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p2, "entry"    # Lorg/apache/http/client/cache/HttpCacheEntry;

    .prologue
    .line 609
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->responseGenerator:Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;

    invoke-virtual {v1, p2}, Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;->generateResponse(Lorg/apache/http/client/cache/HttpCacheEntry;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 610
    .local v0, "cachedResponse":Lorg/apache/http/HttpResponse;
    sget-object v1, Lorg/apache/http/client/cache/CacheResponseStatus;->CACHE_HIT:Lorg/apache/http/client/cache/CacheResponseStatus;

    invoke-direct {p0, p1, v1}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->setResponseStatus(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/cache/CacheResponseStatus;)V

    .line 611
    const-string v1, "Warning"

    const-string v2, "111 localhost \"Revalidation failed\""

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    return-object v0
.end method


# virtual methods
.method callBackend(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 10
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 726
    invoke-virtual {p0}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->getCurrentDate()Ljava/util/Date;

    move-result-object v3

    .line 728
    .local v3, "requestDate":Ljava/util/Date;
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Calling the backend"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 729
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->backend:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 730
    .local v5, "backendResponse":Lorg/apache/http/HttpResponse;
    const-string v0, "Via"

    invoke-direct {p0, v5}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->generateViaHeader(Lorg/apache/http/HttpMessage;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    invoke-virtual {p0}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->getCurrentDate()Ljava/util/Date;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->handleBackendResponse(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Ljava/util/Date;Ljava/util/Date;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method clientRequestsOurOptions(Lorg/apache/http/HttpRequest;)Z
    .registers 6
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    const/4 v1, 0x0

    .line 709
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    .line 711
    .local v0, "line":Lorg/apache/http/RequestLine;
    const-string v2, "OPTIONS"

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 720
    :cond_11
    :goto_11
    return v1

    .line 714
    :cond_12
    const-string v2, "*"

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 717
    const-string v2, "0"

    const-string v3, "Max-Forwards"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 720
    const/4 v1, 0x1

    goto :goto_11
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 5
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    .local p3, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .registers 7
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p4, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    .local p3, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 342
    .local v0, "resp":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, p3, v0}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->handleAndConsume(Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 4
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    .local p2, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .registers 6
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    .local p2, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    invoke-virtual {p0, p1, p3}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 364
    .local v0, "resp":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, p2, v0}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->handleAndConsume(Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .registers 5
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, "defaultContext":Lorg/apache/http/protocol/HttpContext;
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 9
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    sget-object v3, Lorg/apache/http/client/cache/CacheResponseStatus;->CACHE_MISS:Lorg/apache/http/client/cache/CacheResponseStatus;

    invoke-direct {p0, p3, v3}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->setResponseStatus(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/cache/CacheResponseStatus;)V

    .line 412
    invoke-direct {p0, p2}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->generateViaHeader(Lorg/apache/http/HttpMessage;)Ljava/lang/String;

    move-result-object v2

    .line 414
    .local v2, "via":Ljava/lang/String;
    invoke-virtual {p0, p2}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->clientRequestsOurOptions(Lorg/apache/http/HttpRequest;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 415
    sget-object v3, Lorg/apache/http/client/cache/CacheResponseStatus;->CACHE_MODULE_RESPONSE:Lorg/apache/http/client/cache/CacheResponseStatus;

    invoke-direct {p0, p3, v3}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->setResponseStatus(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/cache/CacheResponseStatus;)V

    .line 416
    new-instance v1, Lorg/apache/http/impl/client/cache/OptionsHttp11Response;

    invoke-direct {v1}, Lorg/apache/http/impl/client/cache/OptionsHttp11Response;-><init>()V

    .line 439
    :cond_19
    :goto_19
    return-object v1

    .line 419
    :cond_1a
    invoke-direct {p0, p2, p3}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->getFatallyNoncompliantResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 421
    .local v1, "fatalErrorResponse":Lorg/apache/http/HttpResponse;
    if-nez v1, :cond_19

    .line 423
    iget-object v3, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->requestCompliance:Lorg/apache/http/impl/client/cache/RequestProtocolCompliance;

    invoke-virtual {v3, p2}, Lorg/apache/http/impl/client/cache/RequestProtocolCompliance;->makeRequestCompliant(Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpRequest;

    move-result-object p2

    .line 424
    const-string v3, "Via"

    invoke-interface {p2, v3, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->flushEntriesInvalidatedByRequest(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)V

    .line 428
    iget-object v3, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->cacheableRequestPolicy:Lorg/apache/http/impl/client/cache/CacheableRequestPolicy;

    invoke-virtual {v3, p2}, Lorg/apache/http/impl/client/cache/CacheableRequestPolicy;->isServableFromCache(Lorg/apache/http/HttpRequest;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 429
    iget-object v3, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Request is not servable from cache"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 430
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->callBackend(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    goto :goto_19

    .line 433
    :cond_42
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->satisfyFromCache(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/client/cache/HttpCacheEntry;

    move-result-object v0

    .line 434
    .local v0, "entry":Lorg/apache/http/client/cache/HttpCacheEntry;
    if-nez v0, :cond_54

    .line 435
    iget-object v3, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Cache miss"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 436
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->handleCacheMiss(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    goto :goto_19

    .line 439
    :cond_54
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->handleCacheHit(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/cache/HttpCacheEntry;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    goto :goto_19
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 4
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    const/4 v0, 0x0

    .line 347
    .local v0, "context":Lorg/apache/http/protocol/HttpContext;
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 8
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    .line 352
    .local v1, "uri":Ljava/net/URI;
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v3

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 353
    .local v0, "httpHost":Lorg/apache/http/HttpHost;
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    return-object v2
.end method

.method public getCacheHits()J
    .registers 3

    .prologue
    .line 308
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->cacheHits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheMisses()J
    .registers 3

    .prologue
    .line 317
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->cacheMisses:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheUpdates()J
    .registers 3

    .prologue
    .line 326
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->cacheUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .registers 2

    .prologue
    .line 399
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->backend:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method getCurrentDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 705
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .registers 2

    .prologue
    .line 403
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->backend:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method

.method handleBackendResponse(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Ljava/util/Date;Ljava/util/Date;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;
    .registers 14
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "requestDate"    # Ljava/util/Date;
    .param p4, "responseDate"    # Ljava/util/Date;
    .param p5, "backendResponse"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 910
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Handling Backend response"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 911
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->responseCompliance:Lorg/apache/http/impl/client/cache/ResponseProtocolCompliance;

    invoke-virtual {v0, p2, p5}, Lorg/apache/http/impl/client/cache/ResponseProtocolCompliance;->ensureProtocolCompliance(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)V

    .line 913
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->responseCachingPolicy:Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;

    invoke-virtual {v0, p2, p5}, Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;->isResponseCacheable(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)Z

    move-result v6

    .line 914
    .local v6, "cacheable":Z
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->responseCache:Lorg/apache/http/impl/client/cache/HttpCache;

    invoke-interface {v0, p1, p2, p5}, Lorg/apache/http/impl/client/cache/HttpCache;->flushInvalidatedCacheEntriesFor(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)V

    .line 915
    if-eqz v6, :cond_36

    invoke-direct {p0, p1, p2, p5}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->alreadyHaveNewerCacheEntry(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 918
    :try_start_1f
    invoke-direct {p0, p2, p5}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->storeRequestIfModifiedSinceFor304Response(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)V

    .line 919
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->responseCache:Lorg/apache/http/impl/client/cache/HttpCache;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lorg/apache/http/impl/client/cache/HttpCache;->cacheAndReturnResponse(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/http/HttpResponse;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_2c} :catch_2e

    move-result-object p5

    .line 932
    .end local p5    # "backendResponse":Lorg/apache/http/HttpResponse;
    :cond_2d
    :goto_2d
    return-object p5

    .line 921
    .restart local p5    # "backendResponse":Lorg/apache/http/HttpResponse;
    :catch_2e
    move-exception v7

    .line 922
    .local v7, "ioe":Ljava/io/IOException;
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Unable to store entries in cache"

    invoke-interface {v0, v1, v7}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 925
    .end local v7    # "ioe":Ljava/io/IOException;
    :cond_36
    if-nez v6, :cond_2d

    .line 927
    :try_start_38
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->responseCache:Lorg/apache/http/impl/client/cache/HttpCache;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/impl/client/cache/HttpCache;->flushCacheEntriesFor(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3d} :catch_3e

    goto :goto_2d

    .line 928
    :catch_3e
    move-exception v7

    .line 929
    .restart local v7    # "ioe":Ljava/io/IOException;
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Unable to flush invalid cache entries"

    invoke-interface {v0, v1, v7}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2d
.end method

.method public isSharedCache()Z
    .registers 2

    .prologue
    .line 701
    iget-boolean v0, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->sharedCache:Z

    return v0
.end method

.method negotiateResponseFromVariants(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .registers 18
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/protocol/HttpContext;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/impl/client/cache/Variant;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 758
    .local p4, "variants":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/impl/client/cache/Variant;>;"
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->conditionalRequestBuilder:Lorg/apache/http/impl/client/cache/ConditionalRequestBuilder;

    move-object/from16 v0, p4

    invoke-virtual {v1, p2, v0}, Lorg/apache/http/impl/client/cache/ConditionalRequestBuilder;->buildConditionalRequestFromVariants(Lorg/apache/http/HttpRequest;Ljava/util/Map;)Lorg/apache/http/HttpRequest;

    move-result-object v3

    .line 760
    .local v3, "conditionalRequest":Lorg/apache/http/HttpRequest;
    invoke-virtual {p0}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->getCurrentDate()Ljava/util/Date;

    move-result-object v4

    .line 761
    .local v4, "requestDate":Ljava/util/Date;
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->backend:Lorg/apache/http/client/HttpClient;

    move-object/from16 v0, p3

    invoke-interface {v1, p1, v3, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 762
    .local v6, "backendResponse":Lorg/apache/http/HttpResponse;
    invoke-virtual {p0}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->getCurrentDate()Ljava/util/Date;

    move-result-object v5

    .line 764
    .local v5, "responseDate":Ljava/util/Date;
    const-string v1, "Via"

    invoke-direct {p0, v6}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->generateViaHeader(Lorg/apache/http/HttpMessage;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x130

    if-eq v1, v2, :cond_35

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 767
    invoke-virtual/range {v1 .. v6}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->handleBackendResponse(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Ljava/util/Date;Ljava/util/Date;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    .end local v3    # "conditionalRequest":Lorg/apache/http/HttpRequest;
    move-result-object v9

    .line 804
    :cond_34
    :goto_34
    return-object v9

    .line 770
    .restart local v3    # "conditionalRequest":Lorg/apache/http/HttpRequest;
    :cond_35
    const-string v1, "ETag"

    invoke-interface {v6, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v12

    .line 771
    .local v12, "resultEtagHeader":Lorg/apache/http/Header;
    if-nez v12, :cond_49

    .line 772
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "304 response did not contain ETag"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 773
    invoke-virtual/range {p0 .. p3}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->callBackend(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    goto :goto_34

    .line 776
    :cond_49
    invoke-interface {v12}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 777
    .local v11, "resultEtag":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/http/impl/client/cache/Variant;

    .line 778
    .local v7, "matchingVariant":Lorg/apache/http/impl/client/cache/Variant;
    if-nez v7, :cond_63

    .line 779
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "304 response did not contain ETag matching one sent in If-None-Match"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 780
    invoke-virtual/range {p0 .. p3}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->callBackend(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    goto :goto_34

    .line 783
    :cond_63
    invoke-virtual {v7}, Lorg/apache/http/impl/client/cache/Variant;->getEntry()Lorg/apache/http/client/cache/HttpCacheEntry;

    move-result-object v8

    .line 785
    .local v8, "matchedEntry":Lorg/apache/http/client/cache/HttpCacheEntry;
    invoke-direct {p0, v6, v8}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->revalidationResponseIsTooOld(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/cache/HttpCacheEntry;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 786
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V

    .line 787
    move-object/from16 v0, p3

    invoke-direct {p0, p1, p2, v0, v8}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->retryRequestUnconditionally(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/cache/HttpCacheEntry;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    goto :goto_34

    .line 791
    :cond_7b
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->recordCacheUpdate(Lorg/apache/http/protocol/HttpContext;)V

    move-object v1, p0

    move-object v2, p1

    .line 793
    invoke-direct/range {v1 .. v8}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->getUpdatedVariantEntry(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Ljava/util/Date;Ljava/util/Date;Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/client/cache/Variant;Lorg/apache/http/client/cache/HttpCacheEntry;)Lorg/apache/http/client/cache/HttpCacheEntry;

    move-result-object v10

    .line 797
    .local v10, "responseEntry":Lorg/apache/http/client/cache/HttpCacheEntry;
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->responseGenerator:Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;

    invoke-virtual {v1, v10}, Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;->generateResponse(Lorg/apache/http/client/cache/HttpCacheEntry;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 798
    .local v9, "resp":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, p1, p2, v7}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->tryToUpdateVariantMap(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/impl/client/cache/Variant;)V

    .line 800
    invoke-direct {p0, p2, v10}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->shouldSendNotModifiedResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 801
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->responseGenerator:Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;

    invoke-virtual {v1, v10}, Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;->generateNotModifiedResponse(Lorg/apache/http/client/cache/HttpCacheEntry;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    goto :goto_34
.end method

.method revalidateCacheEntry(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/cache/HttpCacheEntry;)Lorg/apache/http/HttpResponse;
    .registers 26
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p4, "cacheEntry"    # Lorg/apache/http/client/cache/HttpCacheEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 850
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->conditionalRequestBuilder:Lorg/apache/http/impl/client/cache/ConditionalRequestBuilder;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v3, v0, v1}, Lorg/apache/http/impl/client/cache/ConditionalRequestBuilder;->buildConditionalRequest(Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;)Lorg/apache/http/HttpRequest;

    move-result-object v12

    .line 852
    .local v12, "conditionalRequest":Lorg/apache/http/HttpRequest;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->getCurrentDate()Ljava/util/Date;

    move-result-object v8

    .line 853
    .local v8, "requestDate":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->backend:Lorg/apache/http/client/HttpClient;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v3, v0, v12, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 854
    .local v7, "backendResponse":Lorg/apache/http/HttpResponse;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->getCurrentDate()Ljava/util/Date;

    move-result-object v9

    .line 856
    .local v9, "responseDate":Ljava/util/Date;
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v7, v1}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->revalidationResponseIsTooOld(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/cache/HttpCacheEntry;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 857
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V

    .line 858
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->conditionalRequestBuilder:Lorg/apache/http/impl/client/cache/ConditionalRequestBuilder;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v3, v0, v1}, Lorg/apache/http/impl/client/cache/ConditionalRequestBuilder;->buildUnconditionalRequest(Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;)Lorg/apache/http/HttpRequest;

    move-result-object v19

    .line 860
    .local v19, "unconditional":Lorg/apache/http/HttpRequest;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->getCurrentDate()Ljava/util/Date;

    move-result-object v8

    .line 861
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->backend:Lorg/apache/http/client/HttpClient;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-interface {v3, v0, v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 862
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->getCurrentDate()Ljava/util/Date;

    move-result-object v9

    .line 865
    .end local v19    # "unconditional":Lorg/apache/http/HttpRequest;
    :cond_53
    const-string v3, "Via"

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->generateViaHeader(Lorg/apache/http/HttpMessage;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v3, v4}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    .line 868
    .local v18, "statusCode":I
    const/16 v3, 0x130

    move/from16 v0, v18

    if-eq v0, v3, :cond_72

    const/16 v3, 0xc8

    move/from16 v0, v18

    if-ne v0, v3, :cond_79

    .line 869
    :cond_72
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->recordCacheUpdate(Lorg/apache/http/protocol/HttpContext;)V

    .line 872
    :cond_79
    const/16 v3, 0x130

    move/from16 v0, v18

    if-ne v0, v3, :cond_c2

    .line 873
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->responseCache:Lorg/apache/http/impl/client/cache/HttpCache;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    invoke-interface/range {v3 .. v9}, Lorg/apache/http/impl/client/cache/HttpCache;->updateCacheEntry(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;Lorg/apache/http/HttpResponse;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/http/client/cache/HttpCacheEntry;

    move-result-object v20

    .line 875
    .local v20, "updatedEntry":Lorg/apache/http/client/cache/HttpCacheEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->suitabilityChecker:Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->isConditional(Lorg/apache/http/HttpRequest;)Z

    move-result v3

    if-eqz v3, :cond_b7

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->suitabilityChecker:Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1, v4}, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->allConditionalsMatch(Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 877
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->responseGenerator:Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;->generateNotModifiedResponse(Lorg/apache/http/client/cache/HttpCacheEntry;)Lorg/apache/http/HttpResponse;

    move-result-object v16

    .line 892
    .end local v20    # "updatedEntry":Lorg/apache/http/client/cache/HttpCacheEntry;
    :cond_b6
    :goto_b6
    return-object v16

    .line 879
    .restart local v20    # "updatedEntry":Lorg/apache/http/client/cache/HttpCacheEntry;
    :cond_b7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->responseGenerator:Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;->generateResponse(Lorg/apache/http/client/cache/HttpCacheEntry;)Lorg/apache/http/HttpResponse;

    move-result-object v16

    goto :goto_b6

    .line 882
    .end local v20    # "updatedEntry":Lorg/apache/http/client/cache/HttpCacheEntry;
    :cond_c2
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->staleIfErrorAppliesTo(I)Z

    move-result v3

    if-eqz v3, :cond_107

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->getCurrentDate()Ljava/util/Date;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->staleResponseNotAllowed(Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_107

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->validityPolicy:Lorg/apache/http/impl/client/cache/CacheValidityPolicy;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v3, v0, v1, v9}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->mayReturnStaleIfError(Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_107

    .line 885
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/cache/CachingHttpClient;->responseGenerator:Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;->generateResponse(Lorg/apache/http/client/cache/HttpCacheEntry;)Lorg/apache/http/HttpResponse;

    move-result-object v16

    .line 886
    .local v16, "cachedResponse":Lorg/apache/http/HttpResponse;
    const-string v3, "Warning"

    const-string v4, "110 localhost \"Response is stale\""

    move-object/from16 v0, v16

    invoke-interface {v0, v3, v4}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    .line 888
    .local v17, "errorBody":Lorg/apache/http/HttpEntity;
    if-eqz v17, :cond_b6

    invoke-static/range {v17 .. v17}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V

    goto :goto_b6

    .end local v16    # "cachedResponse":Lorg/apache/http/HttpResponse;
    .end local v17    # "errorBody":Lorg/apache/http/HttpEntity;
    :cond_107
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object v13, v8

    move-object v14, v9

    move-object v15, v7

    .line 892
    invoke-virtual/range {v10 .. v15}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->handleBackendResponse(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Ljava/util/Date;Ljava/util/Date;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    move-result-object v16

    goto :goto_b6
.end method

.method public supportsRangeAndContentRangeHeaders()Z
    .registers 2

    .prologue
    .line 690
    const/4 v0, 0x0

    return v0
.end method
