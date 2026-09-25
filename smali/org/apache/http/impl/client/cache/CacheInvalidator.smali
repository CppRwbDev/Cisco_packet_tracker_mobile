.class Lorg/apache/http/impl/client/cache/CacheInvalidator;
.super Ljava/lang/Object;
.source "CacheInvalidator.java"


# annotations
.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


# instance fields
.field private final cacheKeyGenerator:Lorg/apache/http/impl/client/cache/CacheKeyGenerator;

.field private final log:Lorg/apache/commons/logging/Log;

.field private final storage:Lorg/apache/http/client/cache/HttpCacheStorage;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/cache/CacheKeyGenerator;Lorg/apache/http/client/cache/HttpCacheStorage;)V
    .registers 4
    .param p1, "uriExtractor"    # Lorg/apache/http/impl/client/cache/CacheKeyGenerator;
    .param p2, "storage"    # Lorg/apache/http/client/cache/HttpCacheStorage;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/cache/CacheInvalidator;->log:Lorg/apache/commons/logging/Log;

    .line 72
    iput-object p1, p0, Lorg/apache/http/impl/client/cache/CacheInvalidator;->cacheKeyGenerator:Lorg/apache/http/impl/client/cache/CacheKeyGenerator;

    .line 73
    iput-object p2, p0, Lorg/apache/http/impl/client/cache/CacheInvalidator;->storage:Lorg/apache/http/client/cache/HttpCacheStorage;

    .line 74
    return-void
.end method

.method private flushEntry(Ljava/lang/String;)V
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 120
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/CacheInvalidator;->storage:Lorg/apache/http/client/cache/HttpCacheStorage;

    invoke-interface {v1, p1}, Lorg/apache/http/client/cache/HttpCacheStorage;->removeEntry(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 124
    :goto_5
    return-void

    .line 121
    :catch_6
    move-exception v0

    .line 122
    .local v0, "ioe":Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/CacheInvalidator;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "unable to flush cache entry"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method private getAbsoluteURL(Ljava/lang/String;)Ljava/net/URL;
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 160
    .local v0, "absURL":Ljava/net/URL;
    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_6} :catch_8

    .end local v0    # "absURL":Ljava/net/URL;
    .local v1, "absURL":Ljava/net/URL;
    move-object v0, v1

    .line 164
    .end local v1    # "absURL":Ljava/net/URL;
    .restart local v0    # "absURL":Ljava/net/URL;
    :goto_7
    return-object v0

    .line 161
    :catch_8
    move-exception v2

    goto :goto_7
.end method

.method private getContentLocationURL(Ljava/net/URL;Lorg/apache/http/HttpResponse;)Ljava/net/URL;
    .registers 7
    .param p1, "reqURL"    # Ljava/net/URL;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 212
    const-string v3, "Content-Location"

    invoke-interface {p2, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 213
    .local v1, "clHeader":Lorg/apache/http/Header;
    if-nez v1, :cond_a

    const/4 v0, 0x0

    .line 217
    :cond_9
    :goto_9
    return-object v0

    .line 214
    :cond_a
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "contentLocation":Ljava/lang/String;
    invoke-direct {p0, v2}, Lorg/apache/http/impl/client/cache/CacheInvalidator;->getAbsoluteURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 216
    .local v0, "canonURL":Ljava/net/URL;
    if-nez v0, :cond_9

    .line 217
    invoke-direct {p0, p1, v2}, Lorg/apache/http/impl/client/cache/CacheInvalidator;->getRelativeURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    goto :goto_9
.end method

.method private getEntry(Ljava/lang/String;)Lorg/apache/http/client/cache/HttpCacheEntry;
    .registers 5
    .param p1, "theUri"    # Ljava/lang/String;

    .prologue
    .line 128
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/CacheInvalidator;->storage:Lorg/apache/http/client/cache/HttpCacheStorage;

    invoke-interface {v1, p1}, Lorg/apache/http/client/cache/HttpCacheStorage;->getEntry(Ljava/lang/String;)Lorg/apache/http/client/cache/HttpCacheEntry;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 132
    :goto_6
    return-object v1

    .line 129
    :catch_7
    move-exception v0

    .line 130
    .local v0, "ioe":Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/CacheInvalidator;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "could not retrieve entry from storage"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 132
    const/4 v1, 0x0

    goto :goto_6
.end method

.method private getRelativeURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .registers 6
    .param p1, "reqURL"    # Ljava/net/URL;
    .param p2, "relUri"    # Ljava/lang/String;

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 170
    .local v0, "relURL":Ljava/net/URL;
    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_6} :catch_8

    .end local v0    # "relURL":Ljava/net/URL;
    .local v1, "relURL":Ljava/net/URL;
    move-object v0, v1

    .line 174
    .end local v1    # "relURL":Ljava/net/URL;
    .restart local v0    # "relURL":Ljava/net/URL;
    :goto_7
    return-object v0

    .line 171
    :catch_8
    move-exception v2

    goto :goto_7
.end method

.method private notGetOrHeadRequest(Ljava/lang/String;)Z
    .registers 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 183
    const-string v0, "GET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "HEAD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private responseAndEntryEtagsDiffer(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/cache/HttpCacheEntry;)Z
    .registers 8
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "entry"    # Lorg/apache/http/client/cache/HttpCacheEntry;

    .prologue
    const/4 v2, 0x0

    .line 222
    const-string v3, "ETag"

    invoke-virtual {p2, v3}, Lorg/apache/http/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 223
    .local v0, "entryEtag":Lorg/apache/http/Header;
    const-string v3, "ETag"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 224
    .local v1, "responseEtag":Lorg/apache/http/Header;
    if-eqz v0, :cond_11

    if-nez v1, :cond_12

    .line 225
    :cond_11
    :goto_11
    return v2

    :cond_12
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const/4 v2, 0x1

    goto :goto_11
.end method

.method private responseDateOlderThanEntryDate(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/cache/HttpCacheEntry;)Z
    .registers 10
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "entry"    # Lorg/apache/http/client/cache/HttpCacheEntry;

    .prologue
    const/4 v5, 0x0

    .line 230
    const-string v6, "Date"

    invoke-virtual {p2, v6}, Lorg/apache/http/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 231
    .local v2, "entryDateHeader":Lorg/apache/http/Header;
    const-string v6, "Date"

    invoke-interface {p1, v6}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 232
    .local v4, "responseDateHeader":Lorg/apache/http/Header;
    if-eqz v2, :cond_11

    if-nez v4, :cond_12

    .line 242
    :cond_11
    :goto_11
    return v5

    .line 237
    :cond_12
    :try_start_12
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 238
    .local v1, "entryDate":Ljava/util/Date;
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 239
    .local v3, "responseDate":Ljava/util/Date;
    invoke-virtual {v3, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z
    :try_end_25
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_12 .. :try_end_25} :catch_27

    move-result v5

    goto :goto_11

    .line 240
    .end local v1    # "entryDate":Ljava/util/Date;
    .end local v3    # "responseDate":Ljava/util/Date;
    :catch_27
    move-exception v0

    .line 242
    .local v0, "e":Lorg/apache/http/impl/cookie/DateParseException;
    goto :goto_11
.end method


# virtual methods
.method protected flushAbsoluteUriFromSameHost(Ljava/net/URL;Ljava/lang/String;)Z
    .registers 5
    .param p1, "reqURL"    # Ljava/net/URL;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-direct {p0, p2}, Lorg/apache/http/impl/client/cache/CacheInvalidator;->getAbsoluteURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 152
    .local v0, "absURL":Ljava/net/URL;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    .line 154
    :goto_7
    return v1

    .line 153
    :cond_8
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/impl/client/cache/CacheInvalidator;->flushUriIfSameHost(Ljava/net/URL;Ljava/net/URL;)V

    .line 154
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public flushInvalidatedCacheEntries(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)V
    .registers 14
    .param p1, "host"    # Lorg/apache/http/HttpHost;
    .param p2, "req"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 84
    invoke-virtual {p0, p2}, Lorg/apache/http/impl/client/cache/CacheInvalidator;->requestShouldNotBeCached(Lorg/apache/http/HttpRequest;)Z

    move-result v8

    if-eqz v8, :cond_5d

    .line 85
    iget-object v8, p0, Lorg/apache/http/impl/client/cache/CacheInvalidator;->log:Lorg/apache/commons/logging/Log;

    const-string v9, "Request should not be cached"

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 87
    iget-object v8, p0, Lorg/apache/http/impl/client/cache/CacheInvalidator;->cacheKeyGenerator:Lorg/apache/http/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v8, p1, p2}, Lorg/apache/http/impl/client/cache/CacheKeyGenerator;->getURI(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, "theUri":Ljava/lang/String;
    invoke-direct {p0, v6}, Lorg/apache/http/impl/client/cache/CacheInvalidator;->getEntry(Ljava/lang/String;)Lorg/apache/http/client/cache/HttpCacheEntry;

    move-result-object v4

    .line 91
    .local v4, "parent":Lorg/apache/http/client/cache/HttpCacheEntry;
    iget-object v8, p0, Lorg/apache/http/impl/client/cache/CacheInvalidator;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parent entry: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 93
    if-eqz v4, :cond_50

    .line 94
    invoke-virtual {v4}, Lorg/apache/http/client/cache/HttpCacheEntry;->getVariantMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 95
    .local v7, "variantURI":Ljava/lang/String;
    invoke-direct {p0, v7}, Lorg/apache/http/impl/client/cache/CacheInvalidator;->flushEntry(Ljava/lang/String;)V

    goto :goto_3d

    .line 97
    .end local v7    # "variantURI":Ljava/lang/String;
    :cond_4d
    invoke-direct {p0, v6}, Lorg/apache/http/impl/client/cache/CacheInvalidator;->flushEntry(Ljava/lang/String;)V

    .line 99
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_50
    invoke-direct {p0, v6}, Lorg/apache/http/impl/client/cache/CacheInvalidator;->getAbsoluteURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    .line 100
    .local v5, "reqURL":Ljava/net/URL;
    if-nez v5, :cond_5e

    .line 101
    iget-object v8, p0, Lorg/apache/http/impl/client/cache/CacheInvalidator;->log:Lorg/apache/commons/logging/Log;

    const-string v9, "Couldn\'t transform request into valid URL"

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 116
    .end local v4    # "parent":Lorg/apache/http/client/cache/HttpCacheEntry;
    .end local v5    # "reqURL":Ljava/net/URL;
    .end local v6    # "theUri":Ljava/lang/String;
    :cond_5d
    :goto_5d
    return-void

    .line 104
    .restart local v4    # "parent":Lorg/apache/http/client/cache/HttpCacheEntry;
    .restart local v5    # "reqURL":Ljava/net/URL;
    .restart local v6    # "theUri":Ljava/lang/String;
    :cond_5e
    const-string v8, "Content-Location"

    invoke-interface {p2, v8}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 105
    .local v0, "clHdr":Lorg/apache/http/Header;
    if-eqz v0, :cond_73

    .line 106
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "contentLocation":Ljava/lang/String;
    invoke-virtual {p0, v5, v1}, Lorg/apache/http/impl/client/cache/CacheInvalidator;->flushAbsoluteUriFromSameHost(Ljava/net/URL;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_73

    .line 108
    invoke-virtual {p0, v5, v1}, Lorg/apache/http/impl/client/cache/CacheInvalidator;->flushRelativeUriFromSameHost(Ljava/net/URL;Ljava/lang/String;)V

    .line 111
    .end local v1    # "contentLocation":Ljava/lang/String;
    :cond_73
    const-string v8, "Location"

    invoke-interface {p2, v8}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 112
    .local v3, "lHdr":Lorg/apache/http/Header;
    if-eqz v3, :cond_5d

    .line 113
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v5, v8}, Lorg/apache/http/impl/client/cache/CacheInvalidator;->flushAbsoluteUriFromSameHost(Ljava/net/URL;Ljava/lang/String;)Z

    goto :goto_5d
.end method

.method public flushInvalidatedCacheEntries(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)V
    .registers 11
    .param p1, "host"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 192
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 193
    .local v4, "status":I
    const/16 v5, 0xc8

    if-lt v4, v5, :cond_10

    const/16 v5, 0x12b

    if-le v4, v5, :cond_11

    .line 209
    :cond_10
    :goto_10
    return-void

    .line 194
    :cond_11
    iget-object v5, p0, Lorg/apache/http/impl/client/cache/CacheInvalidator;->cacheKeyGenerator:Lorg/apache/http/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v5, p1, p2}, Lorg/apache/http/impl/client/cache/CacheKeyGenerator;->getURI(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/http/impl/client/cache/CacheInvalidator;->getAbsoluteURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 195
    .local v3, "reqURL":Ljava/net/URL;
    if-eqz v3, :cond_10

    .line 196
    invoke-direct {p0, v3, p3}, Lorg/apache/http/impl/client/cache/CacheInvalidator;->getContentLocationURL(Ljava/net/URL;Lorg/apache/http/HttpResponse;)Ljava/net/URL;

    move-result-object v1

    .line 197
    .local v1, "canonURL":Ljava/net/URL;
    if-eqz v1, :cond_10

    .line 198
    iget-object v5, p0, Lorg/apache/http/impl/client/cache/CacheInvalidator;->cacheKeyGenerator:Lorg/apache/http/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/http/impl/client/cache/CacheKeyGenerator;->canonicalizeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "cacheKey":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/cache/CacheInvalidator;->getEntry(Ljava/lang/String;)Lorg/apache/http/client/cache/HttpCacheEntry;

    move-result-object v2

    .line 200
    .local v2, "entry":Lorg/apache/http/client/cache/HttpCacheEntry;
    if-eqz v2, :cond_10

    .line 205
    invoke-direct {p0, p3, v2}, Lorg/apache/http/impl/client/cache/CacheInvalidator;->responseDateOlderThanEntryDate(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/cache/HttpCacheEntry;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 206
    invoke-direct {p0, p3, v2}, Lorg/apache/http/impl/client/cache/CacheInvalidator;->responseAndEntryEtagsDiffer(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/cache/HttpCacheEntry;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 208
    invoke-virtual {p0, v3, v1}, Lorg/apache/http/impl/client/cache/CacheInvalidator;->flushUriIfSameHost(Ljava/net/URL;Ljava/net/URL;)V

    goto :goto_10
.end method

.method protected flushRelativeUriFromSameHost(Ljava/net/URL;Ljava/lang/String;)V
    .registers 4
    .param p1, "reqURL"    # Ljava/net/URL;
    .param p2, "relUri"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/cache/CacheInvalidator;->getRelativeURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 145
    .local v0, "relURL":Ljava/net/URL;
    if-nez v0, :cond_7

    .line 147
    :goto_6
    return-void

    .line 146
    :cond_7
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/impl/client/cache/CacheInvalidator;->flushUriIfSameHost(Ljava/net/URL;Ljava/net/URL;)V

    goto :goto_6
.end method

.method protected flushUriIfSameHost(Ljava/net/URL;Ljava/net/URL;)V
    .registers 6
    .param p1, "requestURL"    # Ljava/net/URL;
    .param p2, "targetURL"    # Ljava/net/URL;

    .prologue
    .line 136
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/CacheInvalidator;->cacheKeyGenerator:Lorg/apache/http/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/cache/CacheKeyGenerator;->canonicalizeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/http/impl/client/cache/CacheInvalidator;->getAbsoluteURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 137
    .local v0, "canonicalTarget":Ljava/net/URL;
    if-nez v0, :cond_11

    .line 141
    :cond_10
    :goto_10
    return-void

    .line 138
    :cond_11
    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 139
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/http/impl/client/cache/CacheInvalidator;->flushEntry(Ljava/lang/String;)V

    goto :goto_10
.end method

.method protected requestShouldNotBeCached(Lorg/apache/http/HttpRequest;)Z
    .registers 4
    .param p1, "req"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 178
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "method":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/cache/CacheInvalidator;->notGetOrHeadRequest(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
