.class Lorg/apache/http/impl/client/cache/BasicHttpCache;
.super Ljava/lang/Object;
.source "BasicHttpCache.java"

# interfaces
.implements Lorg/apache/http/impl/client/cache/HttpCache;


# instance fields
.field private final cacheEntryUpdater:Lorg/apache/http/impl/client/cache/CacheEntryUpdater;

.field private final cacheInvalidator:Lorg/apache/http/impl/client/cache/CacheInvalidator;

.field private final log:Lorg/apache/commons/logging/Log;

.field private final maxObjectSizeBytes:J

.field private final resourceFactory:Lorg/apache/http/client/cache/ResourceFactory;

.field private final responseGenerator:Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;

.field private final storage:Lorg/apache/http/client/cache/HttpCacheStorage;

.field private final uriExtractor:Lorg/apache/http/impl/client/cache/CacheKeyGenerator;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 80
    new-instance v0, Lorg/apache/http/impl/client/cache/CacheConfig;

    invoke-direct {v0}, Lorg/apache/http/impl/client/cache/CacheConfig;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/cache/BasicHttpCache;-><init>(Lorg/apache/http/impl/client/cache/CacheConfig;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/cache/ResourceFactory;Lorg/apache/http/client/cache/HttpCacheStorage;Lorg/apache/http/impl/client/cache/CacheConfig;)V
    .registers 7
    .param p1, "resourceFactory"    # Lorg/apache/http/client/cache/ResourceFactory;
    .param p2, "storage"    # Lorg/apache/http/client/cache/HttpCacheStorage;
    .param p3, "config"    # Lorg/apache/http/impl/client/cache/CacheConfig;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->log:Lorg/apache/commons/logging/Log;

    .line 66
    iput-object p1, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->resourceFactory:Lorg/apache/http/client/cache/ResourceFactory;

    .line 67
    new-instance v0, Lorg/apache/http/impl/client/cache/CacheKeyGenerator;

    invoke-direct {v0}, Lorg/apache/http/impl/client/cache/CacheKeyGenerator;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->uriExtractor:Lorg/apache/http/impl/client/cache/CacheKeyGenerator;

    .line 68
    new-instance v0, Lorg/apache/http/impl/client/cache/CacheEntryUpdater;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/cache/CacheEntryUpdater;-><init>(Lorg/apache/http/client/cache/ResourceFactory;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->cacheEntryUpdater:Lorg/apache/http/impl/client/cache/CacheEntryUpdater;

    .line 69
    invoke-virtual {p3}, Lorg/apache/http/impl/client/cache/CacheConfig;->getMaxObjectSize()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->maxObjectSizeBytes:J

    .line 70
    new-instance v0, Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;

    invoke-direct {v0}, Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->responseGenerator:Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;

    .line 71
    iput-object p2, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->storage:Lorg/apache/http/client/cache/HttpCacheStorage;

    .line 72
    new-instance v0, Lorg/apache/http/impl/client/cache/CacheInvalidator;

    iget-object v1, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->uriExtractor:Lorg/apache/http/impl/client/cache/CacheKeyGenerator;

    iget-object v2, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->storage:Lorg/apache/http/client/cache/HttpCacheStorage;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/cache/CacheInvalidator;-><init>(Lorg/apache/http/impl/client/cache/CacheKeyGenerator;Lorg/apache/http/client/cache/HttpCacheStorage;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->cacheInvalidator:Lorg/apache/http/impl/client/cache/CacheInvalidator;

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/client/cache/CacheConfig;)V
    .registers 4
    .param p1, "config"    # Lorg/apache/http/impl/client/cache/CacheConfig;

    .prologue
    .line 76
    new-instance v0, Lorg/apache/http/impl/client/cache/HeapResourceFactory;

    invoke-direct {v0}, Lorg/apache/http/impl/client/cache/HeapResourceFactory;-><init>()V

    new-instance v1, Lorg/apache/http/impl/client/cache/BasicHttpCacheStorage;

    invoke-direct {v1, p1}, Lorg/apache/http/impl/client/cache/BasicHttpCacheStorage;-><init>(Lorg/apache/http/impl/client/cache/CacheConfig;)V

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/http/impl/client/cache/BasicHttpCache;-><init>(Lorg/apache/http/client/cache/ResourceFactory;Lorg/apache/http/client/cache/HttpCacheStorage;Lorg/apache/http/impl/client/cache/CacheConfig;)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lorg/apache/http/impl/client/cache/BasicHttpCache;)Lorg/apache/http/impl/client/cache/CacheKeyGenerator;
    .registers 2
    .param p0, "x0"    # Lorg/apache/http/impl/client/cache/BasicHttpCache;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->uriExtractor:Lorg/apache/http/impl/client/cache/CacheKeyGenerator;

    return-object v0
.end method

.method private addVariantWithEtag(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .param p1, "variantKey"    # Ljava/lang/String;
    .param p2, "variantCacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/impl/client/cache/Variant;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    .local p3, "variants":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/impl/client/cache/Variant;>;"
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->storage:Lorg/apache/http/client/cache/HttpCacheStorage;

    invoke-interface {v2, p2}, Lorg/apache/http/client/cache/HttpCacheStorage;->getEntry(Ljava/lang/String;)Lorg/apache/http/client/cache/HttpCacheEntry;

    move-result-object v0

    .line 310
    .local v0, "entry":Lorg/apache/http/client/cache/HttpCacheEntry;
    if-nez v0, :cond_9

    .line 314
    :cond_8
    :goto_8
    return-void

    .line 311
    :cond_9
    const-string v2, "ETag"

    invoke-virtual {v0, v2}, Lorg/apache/http/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 312
    .local v1, "etagHeader":Lorg/apache/http/Header;
    if-eqz v1, :cond_8

    .line 313
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/apache/http/impl/client/cache/Variant;

    invoke-direct {v3, p1, p2, v0}, Lorg/apache/http/impl/client/cache/Variant;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/client/cache/HttpCacheEntry;)V

    invoke-interface {p3, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method


# virtual methods
.method public cacheAndReturnResponse(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/http/HttpResponse;
    .registers 14
    .param p1, "host"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "originResponse"    # Lorg/apache/http/HttpResponse;
    .param p4, "requestSent"    # Ljava/util/Date;
    .param p5, "responseReceived"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-virtual {p0, p2, p3}, Lorg/apache/http/impl/client/cache/BasicHttpCache;->getResponseReader(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;

    move-result-object v7

    .line 246
    .local v7, "responseReader":Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;
    :try_start_4
    invoke-virtual {v7}, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->readResponse()V

    .line 248
    invoke-virtual {v7}, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->isLimitReached()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 249
    invoke-virtual {v7}, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->getReconstructedResponse()Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 264
    :goto_11
    return-object v1

    .line 252
    :cond_12
    invoke-virtual {v7}, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->getResource()Lorg/apache/http/client/cache/Resource;

    move-result-object v5

    .line 253
    .local v5, "resource":Lorg/apache/http/client/cache/Resource;
    invoke-virtual {p0, p3, v5}, Lorg/apache/http/impl/client/cache/BasicHttpCache;->isIncompleteResponse(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/cache/Resource;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 254
    invoke-virtual {p0, p3, v5}, Lorg/apache/http/impl/client/cache/BasicHttpCache;->generateIncompleteResponseError(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/cache/Resource;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    goto :goto_11

    .line 257
    :cond_21
    new-instance v0, Lorg/apache/http/client/cache/HttpCacheEntry;

    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v4

    move-object v1, p4

    move-object v2, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/http/client/cache/HttpCacheEntry;-><init>(Ljava/util/Date;Ljava/util/Date;Lorg/apache/http/StatusLine;[Lorg/apache/http/Header;Lorg/apache/http/client/cache/Resource;)V

    .line 263
    .local v0, "entry":Lorg/apache/http/client/cache/HttpCacheEntry;
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/http/impl/client/cache/BasicHttpCache;->storeInCache(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;)V

    .line 264
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->responseGenerator:Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;->generateResponse(Lorg/apache/http/client/cache/HttpCacheEntry;)Lorg/apache/http/HttpResponse;
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_38} :catch_3a
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_38} :catch_43

    move-result-object v1

    goto :goto_11

    .line 265
    .end local v0    # "entry":Lorg/apache/http/client/cache/HttpCacheEntry;
    .end local v5    # "resource":Lorg/apache/http/client/cache/Resource;
    :catch_3a
    move-exception v6

    .line 266
    .local v6, "ex":Ljava/io/IOException;
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V

    .line 267
    throw v6

    .line 268
    .end local v6    # "ex":Ljava/io/IOException;
    :catch_43
    move-exception v6

    .line 269
    .local v6, "ex":Ljava/lang/RuntimeException;
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->consumeQuietly(Lorg/apache/http/HttpEntity;)V

    .line 270
    throw v6
.end method

.method doGetUpdatedParentEntry(Ljava/lang/String;Lorg/apache/http/client/cache/HttpCacheEntry;Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/cache/HttpCacheEntry;
    .registers 14
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "existing"    # Lorg/apache/http/client/cache/HttpCacheEntry;
    .param p3, "entry"    # Lorg/apache/http/client/cache/HttpCacheEntry;
    .param p4, "variantKey"    # Ljava/lang/String;
    .param p5, "variantCacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    move-object v7, p2

    .line 195
    .local v7, "src":Lorg/apache/http/client/cache/HttpCacheEntry;
    if-nez v7, :cond_4

    .line 196
    move-object v7, p3

    .line 199
    :cond_4
    const/4 v5, 0x0

    .line 200
    .local v5, "resource":Lorg/apache/http/client/cache/Resource;
    invoke-virtual {v7}, Lorg/apache/http/client/cache/HttpCacheEntry;->getResource()Lorg/apache/http/client/cache/Resource;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 201
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->resourceFactory:Lorg/apache/http/client/cache/ResourceFactory;

    invoke-virtual {v7}, Lorg/apache/http/client/cache/HttpCacheEntry;->getResource()Lorg/apache/http/client/cache/Resource;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/apache/http/client/cache/ResourceFactory;->copy(Ljava/lang/String;Lorg/apache/http/client/cache/Resource;)Lorg/apache/http/client/cache/Resource;

    move-result-object v5

    .line 203
    :cond_15
    new-instance v6, Ljava/util/HashMap;

    invoke-virtual {v7}, Lorg/apache/http/client/cache/HttpCacheEntry;->getVariantMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 204
    .local v6, "variantMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    new-instance v0, Lorg/apache/http/client/cache/HttpCacheEntry;

    invoke-virtual {v7}, Lorg/apache/http/client/cache/HttpCacheEntry;->getRequestDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v7}, Lorg/apache/http/client/cache/HttpCacheEntry;->getResponseDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v7}, Lorg/apache/http/client/cache/HttpCacheEntry;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-virtual {v7}, Lorg/apache/http/client/cache/HttpCacheEntry;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v4

    invoke-direct/range {v0 .. v6}, Lorg/apache/http/client/cache/HttpCacheEntry;-><init>(Ljava/util/Date;Ljava/util/Date;Lorg/apache/http/StatusLine;[Lorg/apache/http/Header;Lorg/apache/http/client/cache/Resource;Ljava/util/Map;)V

    return-object v0
.end method

.method public flushCacheEntriesFor(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)V
    .registers 5
    .param p1, "host"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->uriExtractor:Lorg/apache/http/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v1, p1, p2}, Lorg/apache/http/impl/client/cache/CacheKeyGenerator;->getURI(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "uri":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->storage:Lorg/apache/http/client/cache/HttpCacheStorage;

    invoke-interface {v1, v0}, Lorg/apache/http/client/cache/HttpCacheStorage;->removeEntry(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public flushInvalidatedCacheEntriesFor(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)V
    .registers 4
    .param p1, "host"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->cacheInvalidator:Lorg/apache/http/impl/client/cache/CacheInvalidator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/client/cache/CacheInvalidator;->flushInvalidatedCacheEntries(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)V

    .line 291
    return-void
.end method

.method public flushInvalidatedCacheEntriesFor(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)V
    .registers 5
    .param p1, "host"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->cacheInvalidator:Lorg/apache/http/impl/client/cache/CacheInvalidator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/impl/client/cache/CacheInvalidator;->flushInvalidatedCacheEntries(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)V

    .line 91
    return-void
.end method

.method generateIncompleteResponseError(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/cache/Resource;)Lorg/apache/http/HttpResponse;
    .registers 13
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "resource"    # Lorg/apache/http/client/cache/Resource;

    .prologue
    .line 175
    const-string v4, "Content-Length"

    invoke-interface {p1, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 176
    .local v0, "contentLength":I
    new-instance v1, Lorg/apache/http/message/BasicHttpResponse;

    sget-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    const/16 v5, 0x1f6

    const-string v6, "Bad Gateway"

    invoke-direct {v1, v4, v5, v6}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 178
    .local v1, "error":Lorg/apache/http/HttpResponse;
    const-string v4, "Content-Type"

    const-string v5, "text/plain;charset=UTF-8"

    invoke-interface {v1, v4, v5}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v4, "Received incomplete response with Content-Length %d but actual body length %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-interface {p2}, Lorg/apache/http/client/cache/Resource;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 183
    .local v3, "msgBytes":[B
    const-string v4, "Content-Length"

    array-length v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v4, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v4, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-interface {v1, v4}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 185
    return-object v1
.end method

.method public getCacheEntry(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/client/cache/HttpCacheEntry;
    .registers 8
    .param p1, "host"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 280
    iget-object v3, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->storage:Lorg/apache/http/client/cache/HttpCacheStorage;

    iget-object v4, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->uriExtractor:Lorg/apache/http/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v4, p1, p2}, Lorg/apache/http/impl/client/cache/CacheKeyGenerator;->getURI(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/http/client/cache/HttpCacheStorage;->getEntry(Ljava/lang/String;)Lorg/apache/http/client/cache/HttpCacheEntry;

    move-result-object v0

    .line 281
    .local v0, "root":Lorg/apache/http/client/cache/HttpCacheEntry;
    if-nez v0, :cond_11

    move-object v0, v2

    .line 285
    .end local v0    # "root":Lorg/apache/http/client/cache/HttpCacheEntry;
    :cond_10
    :goto_10
    return-object v0

    .line 282
    .restart local v0    # "root":Lorg/apache/http/client/cache/HttpCacheEntry;
    :cond_11
    invoke-virtual {v0}, Lorg/apache/http/client/cache/HttpCacheEntry;->hasVariants()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 283
    invoke-virtual {v0}, Lorg/apache/http/client/cache/HttpCacheEntry;->getVariantMap()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->uriExtractor:Lorg/apache/http/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v4, p2, v0}, Lorg/apache/http/impl/client/cache/CacheKeyGenerator;->getVariantKey(Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 284
    .local v1, "variantCacheKey":Ljava/lang/String;
    if-nez v1, :cond_2b

    move-object v0, v2

    goto :goto_10

    .line 285
    :cond_2b
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->storage:Lorg/apache/http/client/cache/HttpCacheStorage;

    invoke-interface {v2, v1}, Lorg/apache/http/client/cache/HttpCacheStorage;->getEntry(Ljava/lang/String;)Lorg/apache/http/client/cache/HttpCacheEntry;

    move-result-object v0

    goto :goto_10
.end method

.method getResponseReader(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;
    .registers 9
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "backEndResponse"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 275
    new-instance v0, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;

    iget-object v1, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->resourceFactory:Lorg/apache/http/client/cache/ResourceFactory;

    iget-wide v2, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->maxObjectSizeBytes:J

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;-><init>(Lorg/apache/http/client/cache/ResourceFactory;JLorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)V

    return-object v0
.end method

.method public getVariantCacheEntriesWithEtags(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Ljava/util/Map;
    .registers 11
    .param p1, "host"    # Lorg/apache/http/HttpHost;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 296
    .local v5, "variants":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/impl/client/cache/Variant;>;"
    iget-object v6, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->storage:Lorg/apache/http/client/cache/HttpCacheStorage;

    iget-object v7, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->uriExtractor:Lorg/apache/http/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v7, p1, p2}, Lorg/apache/http/impl/client/cache/CacheKeyGenerator;->getURI(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/http/client/cache/HttpCacheStorage;->getEntry(Ljava/lang/String;)Lorg/apache/http/client/cache/HttpCacheEntry;

    move-result-object v1

    .line 297
    .local v1, "root":Lorg/apache/http/client/cache/HttpCacheEntry;
    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lorg/apache/http/client/cache/HttpCacheEntry;->hasVariants()Z

    move-result v6

    if-nez v6, :cond_1a

    .line 303
    :cond_19
    return-object v5

    .line 298
    :cond_1a
    invoke-virtual {v1}, Lorg/apache/http/client/cache/HttpCacheEntry;->getVariantMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 299
    .local v2, "variant":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 300
    .local v4, "variantKey":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 301
    .local v3, "variantCacheKey":Ljava/lang/String;
    invoke-direct {p0, v4, v3, v5}, Lorg/apache/http/impl/client/cache/BasicHttpCache;->addVariantWithEtag(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_26
.end method

.method isIncompleteResponse(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/cache/Resource;)Z
    .registers 13
    .param p1, "resp"    # Lorg/apache/http/HttpResponse;
    .param p2, "resource"    # Lorg/apache/http/client/cache/Resource;

    .prologue
    const/4 v4, 0x0

    .line 157
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 158
    .local v3, "status":I
    const/16 v5, 0xc8

    if-eq v3, v5, :cond_12

    const/16 v5, 0xce

    if-eq v3, v5, :cond_12

    .line 170
    :cond_11
    :goto_11
    return v4

    .line 162
    :cond_12
    const-string v5, "Content-Length"

    invoke-interface {p1, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 163
    .local v1, "hdr":Lorg/apache/http/Header;
    if-eqz v1, :cond_11

    .line 166
    :try_start_1a
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_21} :catch_2d

    move-result v0

    .line 170
    .local v0, "contentLength":I
    invoke-interface {p2}, Lorg/apache/http/client/cache/Resource;->length()J

    move-result-wide v6

    int-to-long v8, v0

    cmp-long v5, v6, v8

    if-gez v5, :cond_11

    const/4 v4, 0x1

    goto :goto_11

    .line 167
    .end local v0    # "contentLength":I
    :catch_2d
    move-exception v2

    .line 168
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_11
.end method

.method public reuseVariantEntryFor(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/impl/client/cache/Variant;)V
    .registers 13
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "req"    # Lorg/apache/http/HttpRequest;
    .param p3, "variant"    # Lorg/apache/http/impl/client/cache/Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->uriExtractor:Lorg/apache/http/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v1, p1, p2}, Lorg/apache/http/impl/client/cache/CacheKeyGenerator;->getURI(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v7

    .line 137
    .local v7, "parentCacheKey":Ljava/lang/String;
    invoke-virtual {p3}, Lorg/apache/http/impl/client/cache/Variant;->getEntry()Lorg/apache/http/client/cache/HttpCacheEntry;

    move-result-object v3

    .line 138
    .local v3, "entry":Lorg/apache/http/client/cache/HttpCacheEntry;
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->uriExtractor:Lorg/apache/http/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v1, p2, v3}, Lorg/apache/http/impl/client/cache/CacheKeyGenerator;->getVariantKey(Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;)Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, "variantKey":Ljava/lang/String;
    invoke-virtual {p3}, Lorg/apache/http/impl/client/cache/Variant;->getCacheKey()Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, "variantCacheKey":Ljava/lang/String;
    new-instance v0, Lorg/apache/http/impl/client/cache/BasicHttpCache$2;

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/http/impl/client/cache/BasicHttpCache$2;-><init>(Lorg/apache/http/impl/client/cache/BasicHttpCache;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .local v0, "callback":Lorg/apache/http/client/cache/HttpCacheUpdateCallback;
    :try_start_1b
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->storage:Lorg/apache/http/client/cache/HttpCacheStorage;

    invoke-interface {v1, v7, v0}, Lorg/apache/http/client/cache/HttpCacheStorage;->updateEntry(Ljava/lang/String;Lorg/apache/http/client/cache/HttpCacheUpdateCallback;)V
    :try_end_20
    .catch Lorg/apache/http/client/cache/HttpCacheUpdateException; {:try_start_1b .. :try_end_20} :catch_21

    .line 154
    :goto_20
    return-void

    .line 151
    :catch_21
    move-exception v6

    .line 152
    .local v6, "e":Lorg/apache/http/client/cache/HttpCacheUpdateException;
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not update key ["

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "]"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v6}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_20
.end method

.method storeInCache(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;)V
    .registers 5
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "entry"    # Lorg/apache/http/client/cache/HttpCacheEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p3}, Lorg/apache/http/client/cache/HttpCacheEntry;->hasVariants()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 96
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/impl/client/cache/BasicHttpCache;->storeVariantEntry(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;)V

    .line 100
    :goto_9
    return-void

    .line 98
    :cond_a
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/impl/client/cache/BasicHttpCache;->storeNonVariantEntry(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;)V

    goto :goto_9
.end method

.method storeNonVariantEntry(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;)V
    .registers 6
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "req"    # Lorg/apache/http/HttpRequest;
    .param p3, "entry"    # Lorg/apache/http/client/cache/HttpCacheEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->uriExtractor:Lorg/apache/http/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v1, p1, p2}, Lorg/apache/http/impl/client/cache/CacheKeyGenerator;->getURI(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "uri":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->storage:Lorg/apache/http/client/cache/HttpCacheStorage;

    invoke-interface {v1, v0, p3}, Lorg/apache/http/client/cache/HttpCacheStorage;->putEntry(Ljava/lang/String;Lorg/apache/http/client/cache/HttpCacheEntry;)V

    .line 106
    return-void
.end method

.method storeVariantEntry(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;)V
    .registers 11
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "req"    # Lorg/apache/http/HttpRequest;
    .param p3, "entry"    # Lorg/apache/http/client/cache/HttpCacheEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v4, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->uriExtractor:Lorg/apache/http/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v4, p1, p2}, Lorg/apache/http/impl/client/cache/CacheKeyGenerator;->getURI(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "parentURI":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->uriExtractor:Lorg/apache/http/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v4, p1, p2, p3}, Lorg/apache/http/impl/client/cache/CacheKeyGenerator;->getVariantURI(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;)Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "variantURI":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->storage:Lorg/apache/http/client/cache/HttpCacheStorage;

    invoke-interface {v4, v3, p3}, Lorg/apache/http/client/cache/HttpCacheStorage;->putEntry(Ljava/lang/String;Lorg/apache/http/client/cache/HttpCacheEntry;)V

    .line 116
    new-instance v0, Lorg/apache/http/impl/client/cache/BasicHttpCache$1;

    invoke-direct {v0, p0, p2, p3, v3}, Lorg/apache/http/impl/client/cache/BasicHttpCache$1;-><init>(Lorg/apache/http/impl/client/cache/BasicHttpCache;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/lang/String;)V

    .line 128
    .local v0, "callback":Lorg/apache/http/client/cache/HttpCacheUpdateCallback;
    :try_start_16
    iget-object v4, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->storage:Lorg/apache/http/client/cache/HttpCacheStorage;

    invoke-interface {v4, v2, v0}, Lorg/apache/http/client/cache/HttpCacheStorage;->updateEntry(Ljava/lang/String;Lorg/apache/http/client/cache/HttpCacheUpdateCallback;)V
    :try_end_1b
    .catch Lorg/apache/http/client/cache/HttpCacheUpdateException; {:try_start_16 .. :try_end_1b} :catch_1c

    .line 132
    :goto_1b
    return-void

    .line 129
    :catch_1c
    move-exception v1

    .line 130
    .local v1, "e":Lorg/apache/http/client/cache/HttpCacheUpdateException;
    iget-object v4, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not update key ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1b
.end method

.method public updateCacheEntry(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;Lorg/apache/http/HttpResponse;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/http/client/cache/HttpCacheEntry;
    .registers 14
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "stale"    # Lorg/apache/http/client/cache/HttpCacheEntry;
    .param p4, "originResponse"    # Lorg/apache/http/HttpResponse;
    .param p5, "requestSent"    # Ljava/util/Date;
    .param p6, "responseReceived"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->cacheEntryUpdater:Lorg/apache/http/impl/client/cache/CacheEntryUpdater;

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    move-object v2, p3

    move-object v3, p5

    move-object v4, p6

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/http/impl/client/cache/CacheEntryUpdater;->updateCacheEntry(Ljava/lang/String;Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;Ljava/util/Date;Lorg/apache/http/HttpResponse;)Lorg/apache/http/client/cache/HttpCacheEntry;

    move-result-object v6

    .line 223
    .local v6, "updatedEntry":Lorg/apache/http/client/cache/HttpCacheEntry;
    invoke-virtual {p0, p1, p2, v6}, Lorg/apache/http/impl/client/cache/BasicHttpCache;->storeInCache(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;)V

    .line 224
    return-object v6
.end method

.method public updateVariantCacheEntry(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;Lorg/apache/http/HttpResponse;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)Lorg/apache/http/client/cache/HttpCacheEntry;
    .registers 15
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "stale"    # Lorg/apache/http/client/cache/HttpCacheEntry;
    .param p4, "originResponse"    # Lorg/apache/http/HttpResponse;
    .param p5, "requestSent"    # Ljava/util/Date;
    .param p6, "responseReceived"    # Ljava/util/Date;
    .param p7, "cacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->cacheEntryUpdater:Lorg/apache/http/impl/client/cache/CacheEntryUpdater;

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    move-object v2, p3

    move-object v3, p5

    move-object v4, p6

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/http/impl/client/cache/CacheEntryUpdater;->updateCacheEntry(Ljava/lang/String;Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;Ljava/util/Date;Lorg/apache/http/HttpResponse;)Lorg/apache/http/client/cache/HttpCacheEntry;

    move-result-object v6

    .line 236
    .local v6, "updatedEntry":Lorg/apache/http/client/cache/HttpCacheEntry;
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/BasicHttpCache;->storage:Lorg/apache/http/client/cache/HttpCacheStorage;

    invoke-interface {v0, p7, v6}, Lorg/apache/http/client/cache/HttpCacheStorage;->putEntry(Ljava/lang/String;Lorg/apache/http/client/cache/HttpCacheEntry;)V

    .line 237
    return-object v6
.end method
