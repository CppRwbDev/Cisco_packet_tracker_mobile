.class Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;
.super Ljava/lang/Object;
.source "CachedResponseSuitabilityChecker.java"


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final heuristicCoefficient:F

.field private final heuristicDefaultLifetime:J

.field private final log:Lorg/apache/commons/logging/Log;

.field private final sharedCache:Z

.field private final useHeuristicCaching:Z

.field private final validityStrategy:Lorg/apache/http/impl/client/cache/CacheValidityPolicy;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/client/cache/CacheConfig;)V
    .registers 3
    .param p1, "config"    # Lorg/apache/http/impl/client/cache/CacheConfig;

    .prologue
    .line 72
    new-instance v0, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;

    invoke-direct {v0}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;-><init>(Lorg/apache/http/impl/client/cache/CacheValidityPolicy;Lorg/apache/http/impl/client/cache/CacheConfig;)V

    .line 73
    return-void
.end method

.method constructor <init>(Lorg/apache/http/impl/client/cache/CacheValidityPolicy;Lorg/apache/http/impl/client/cache/CacheConfig;)V
    .registers 5
    .param p1, "validityStrategy"    # Lorg/apache/http/impl/client/cache/CacheValidityPolicy;
    .param p2, "config"    # Lorg/apache/http/impl/client/cache/CacheConfig;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lorg/apache/commons/logging/Log;

    .line 64
    iput-object p1, p0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lorg/apache/http/impl/client/cache/CacheValidityPolicy;

    .line 65
    invoke-virtual {p2}, Lorg/apache/http/impl/client/cache/CacheConfig;->isSharedCache()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->sharedCache:Z

    .line 66
    invoke-virtual {p2}, Lorg/apache/http/impl/client/cache/CacheConfig;->isHeuristicCachingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->useHeuristicCaching:Z

    .line 67
    invoke-virtual {p2}, Lorg/apache/http/impl/client/cache/CacheConfig;->getHeuristicCoefficient()F

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->heuristicCoefficient:F

    .line 68
    invoke-virtual {p2}, Lorg/apache/http/impl/client/cache/CacheConfig;->getHeuristicDefaultLifetime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->heuristicDefaultLifetime:J

    .line 69
    return-void
.end method

.method private etagValidatorMatches(Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;)Z
    .registers 16
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "entry"    # Lorg/apache/http/client/cache/HttpCacheEntry;

    .prologue
    .line 279
    const-string v12, "ETag"

    invoke-virtual {p2, v12}, Lorg/apache/http/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 280
    .local v4, "etagHeader":Lorg/apache/http/Header;
    if-eqz v4, :cond_3c

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, "etag":Ljava/lang/String;
    :goto_c
    const-string v12, "If-None-Match"

    invoke-interface {p1, v12}, Lorg/apache/http/HttpRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v8

    .line 282
    .local v8, "ifNoneMatch":[Lorg/apache/http/Header;
    if-eqz v8, :cond_45

    .line 283
    move-object v0, v8

    .local v0, "arr$":[Lorg/apache/http/Header;
    array-length v9, v0

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v7, v6

    .end local v0    # "arr$":[Lorg/apache/http/Header;
    .end local v6    # "i$":I
    .end local v9    # "len$":I
    .local v7, "i$":I
    :goto_18
    if-ge v7, v9, :cond_45

    aget-object v5, v0, v7

    .line 284
    .local v5, "h":Lorg/apache/http/Header;
    invoke-interface {v5}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v1

    .local v1, "arr$":[Lorg/apache/http/HeaderElement;
    array-length v10, v1

    .local v10, "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    :goto_22
    if-ge v6, v10, :cond_41

    aget-object v2, v1, v6

    .line 285
    .local v2, "elt":Lorg/apache/http/HeaderElement;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 286
    .local v11, "reqEtag":Ljava/lang/String;
    const-string v12, "*"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_34

    if-nez v3, :cond_3a

    :cond_34
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3e

    .line 288
    :cond_3a
    const/4 v12, 0x1

    .line 293
    .end local v1    # "arr$":[Lorg/apache/http/HeaderElement;
    .end local v2    # "elt":Lorg/apache/http/HeaderElement;
    .end local v5    # "h":Lorg/apache/http/Header;
    .end local v6    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "reqEtag":Ljava/lang/String;
    :goto_3b
    return v12

    .line 280
    .end local v3    # "etag":Ljava/lang/String;
    .end local v8    # "ifNoneMatch":[Lorg/apache/http/Header;
    :cond_3c
    const/4 v3, 0x0

    goto :goto_c

    .line 284
    .restart local v1    # "arr$":[Lorg/apache/http/HeaderElement;
    .restart local v2    # "elt":Lorg/apache/http/HeaderElement;
    .restart local v3    # "etag":Ljava/lang/String;
    .restart local v5    # "h":Lorg/apache/http/Header;
    .restart local v6    # "i$":I
    .restart local v8    # "ifNoneMatch":[Lorg/apache/http/Header;
    .restart local v10    # "len$":I
    .restart local v11    # "reqEtag":Ljava/lang/String;
    :cond_3e
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 283
    .end local v2    # "elt":Lorg/apache/http/HeaderElement;
    .end local v11    # "reqEtag":Ljava/lang/String;
    :cond_41
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    .end local v6    # "i$":I
    .restart local v7    # "i$":I
    goto :goto_18

    .line 293
    .end local v1    # "arr$":[Lorg/apache/http/HeaderElement;
    .end local v5    # "h":Lorg/apache/http/Header;
    .end local v7    # "i$":I
    .end local v10    # "len$":I
    :cond_45
    const/4 v12, 0x0

    goto :goto_3b
.end method

.method private getMaxStale(Lorg/apache/http/HttpRequest;)J
    .registers 20
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 94
    const-wide/16 v10, -0x1

    .line 95
    .local v10, "maxstale":J
    const-string v13, "Cache-Control"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lorg/apache/http/HttpRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    .local v2, "arr$":[Lorg/apache/http/Header;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v7, v6

    .end local v2    # "arr$":[Lorg/apache/http/Header;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .local v7, "i$":I
    :goto_d
    if-ge v7, v8, :cond_73

    aget-object v5, v2, v7

    .line 96
    .local v5, "h":Lorg/apache/http/Header;
    invoke-interface {v5}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v3

    .local v3, "arr$":[Lorg/apache/http/HeaderElement;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    :goto_17
    if-ge v6, v9, :cond_6f

    aget-object v4, v3, v6

    .line 97
    .local v4, "elt":Lorg/apache/http/HeaderElement;
    const-string v13, "max-stale"

    invoke-interface {v4}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4c

    .line 98
    invoke-interface {v4}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_41

    const-string v13, ""

    invoke-interface {v4}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4f

    :cond_41
    const-wide/16 v16, -0x1

    cmp-long v13, v10, v16

    if-nez v13, :cond_4f

    .line 100
    const-wide v10, 0x7fffffffffffffffL

    .line 96
    :cond_4c
    :goto_4c
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 103
    :cond_4f
    :try_start_4f
    invoke-interface {v4}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_56
    .catch Ljava/lang/NumberFormatException; {:try_start_4f .. :try_end_56} :catch_6b

    move-result-wide v14

    .line 104
    .local v14, "val":J
    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-gez v13, :cond_5f

    const-wide/16 v14, 0x0

    .line 105
    :cond_5f
    const-wide/16 v16, -0x1

    cmp-long v13, v10, v16

    if-eqz v13, :cond_69

    cmp-long v13, v14, v10

    if-gez v13, :cond_4c

    .line 106
    :cond_69
    move-wide v10, v14

    goto :goto_4c

    .line 108
    .end local v14    # "val":J
    :catch_6b
    move-exception v12

    .line 110
    .local v12, "nfe":Ljava/lang/NumberFormatException;
    const-wide/16 v10, 0x0

    goto :goto_4c

    .line 95
    .end local v4    # "elt":Lorg/apache/http/HeaderElement;
    .end local v12    # "nfe":Ljava/lang/NumberFormatException;
    :cond_6f
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    .end local v6    # "i$":I
    .restart local v7    # "i$":I
    goto :goto_d

    .line 116
    .end local v3    # "arr$":[Lorg/apache/http/HeaderElement;
    .end local v5    # "h":Lorg/apache/http/Header;
    .end local v9    # "len$":I
    :cond_73
    return-wide v10
.end method

.method private hasSupportedEtagValidator(Lorg/apache/http/HttpRequest;)Z
    .registers 3
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 265
    const-string v0, "If-None-Match"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hasSupportedLastModifiedValidator(Lorg/apache/http/HttpRequest;)Z
    .registers 3
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 269
    const-string v0, "If-Modified-Since"

    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->hasValidDateField(Lorg/apache/http/HttpRequest;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hasUnsupportedConditionalHeaders(Lorg/apache/http/HttpRequest;)Z
    .registers 3
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 259
    const-string v0, "If-Range"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-nez v0, :cond_18

    const-string v0, "If-Match"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-nez v0, :cond_18

    const-string v0, "If-Unmodified-Since"

    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->hasValidDateField(Lorg/apache/http/HttpRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private hasValidDateField(Lorg/apache/http/HttpRequest;Ljava/lang/String;)Z
    .registers 8
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "headerName"    # Ljava/lang/String;

    .prologue
    .line 333
    invoke-interface {p1, p2}, Lorg/apache/http/HttpRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/http/Header;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_6
    if-ge v2, v3, :cond_17

    aget-object v1, v0, v2

    .line 335
    .local v1, "h":Lorg/apache/http/Header;
    :try_start_a
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_11
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_a .. :try_end_11} :catch_13

    .line 336
    const/4 v4, 0x1

    .line 341
    .end local v1    # "h":Lorg/apache/http/Header;
    :goto_12
    return v4

    .line 337
    .restart local v1    # "h":Lorg/apache/http/Header;
    :catch_13
    move-exception v4

    .line 333
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 341
    .end local v1    # "h":Lorg/apache/http/Header;
    :cond_17
    const/4 v4, 0x0

    goto :goto_12
.end method

.method private isFreshEnough(Lorg/apache/http/client/cache/HttpCacheEntry;Lorg/apache/http/HttpRequest;Ljava/util/Date;)Z
    .registers 14
    .param p1, "entry"    # Lorg/apache/http/client/cache/HttpCacheEntry;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "now"    # Ljava/util/Date;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 76
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lorg/apache/http/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v0, p1, p3}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->isResponseFresh(Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 83
    :cond_a
    :goto_a
    return v8

    .line 77
    :cond_b
    iget-boolean v0, p0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->useHeuristicCaching:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lorg/apache/http/impl/client/cache/CacheValidityPolicy;

    iget v3, p0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->heuristicCoefficient:F

    iget-wide v4, p0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->heuristicDefaultLifetime:J

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->isResponseHeuristicallyFresh(Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;FJ)Z

    move-result v0

    if-nez v0, :cond_a

    .line 80
    :cond_1d
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->originInsistsOnFreshness(Lorg/apache/http/client/cache/HttpCacheEntry;)Z

    move-result v0

    if-eqz v0, :cond_25

    move v8, v9

    goto :goto_a

    .line 81
    :cond_25
    invoke-direct {p0, p2}, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->getMaxStale(Lorg/apache/http/HttpRequest;)J

    move-result-wide v6

    .line 82
    .local v6, "maxstale":J
    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_31

    move v8, v9

    goto :goto_a

    .line 83
    :cond_31
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lorg/apache/http/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v0, p1, p3}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->getStalenessSecs(Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v0

    cmp-long v0, v6, v0

    if-lez v0, :cond_3e

    move v0, v8

    :goto_3c
    move v8, v0

    goto :goto_a

    :cond_3e
    move v0, v9

    goto :goto_3c
.end method

.method private lastModifiedValidatorMatches(Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .registers 13
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "entry"    # Lorg/apache/http/client/cache/HttpCacheEntry;
    .param p3, "now"    # Ljava/util/Date;

    .prologue
    const/4 v7, 0x0

    .line 305
    const-string v8, "Last-Modified"

    invoke-virtual {p2, v8}, Lorg/apache/http/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    .line 306
    .local v5, "lastModifiedHeader":Lorg/apache/http/Header;
    const/4 v4, 0x0

    .line 308
    .local v4, "lastModified":Ljava/util/Date;
    if-eqz v5, :cond_12

    .line 309
    :try_start_a
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_11
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_a .. :try_end_11} :catch_3c

    move-result-object v4

    .line 315
    :cond_12
    :goto_12
    if-nez v4, :cond_15

    .line 329
    :cond_14
    :goto_14
    return v7

    .line 319
    :cond_15
    const-string v8, "If-Modified-Since"

    invoke-interface {p1, v8}, Lorg/apache/http/HttpRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/http/Header;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1d
    if-ge v2, v6, :cond_38

    aget-object v1, v0, v2

    .line 321
    .local v1, "h":Lorg/apache/http/Header;
    :try_start_21
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 322
    .local v3, "ifModifiedSince":Ljava/util/Date;
    invoke-virtual {v3, p3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v8

    if-nez v8, :cond_14

    invoke-virtual {v4, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z
    :try_end_32
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_21 .. :try_end_32} :catch_3a

    move-result v8

    if-nez v8, :cond_14

    .line 319
    .end local v3    # "ifModifiedSince":Ljava/util/Date;
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 329
    .end local v1    # "h":Lorg/apache/http/Header;
    :cond_38
    const/4 v7, 0x1

    goto :goto_14

    .line 325
    .restart local v1    # "h":Lorg/apache/http/Header;
    :catch_3a
    move-exception v8

    goto :goto_35

    .line 311
    .end local v0    # "arr$":[Lorg/apache/http/Header;
    .end local v1    # "h":Lorg/apache/http/Header;
    .end local v2    # "i$":I
    .end local v6    # "len$":I
    :catch_3c
    move-exception v8

    goto :goto_12
.end method

.method private originInsistsOnFreshness(Lorg/apache/http/client/cache/HttpCacheEntry;)Z
    .registers 6
    .param p1, "entry"    # Lorg/apache/http/client/cache/HttpCacheEntry;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 87
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lorg/apache/http/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v2, p1}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->mustRevalidate(Lorg/apache/http/client/cache/HttpCacheEntry;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v0, v1

    .line 89
    :cond_b
    :goto_b
    return v0

    .line 88
    :cond_c
    iget-boolean v2, p0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->sharedCache:Z

    if-eqz v2, :cond_b

    .line 89
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lorg/apache/http/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v2, p1}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->proxyRevalidate(Lorg/apache/http/client/cache/HttpCacheEntry;)Z

    move-result v2

    if-nez v2, :cond_22

    iget-object v2, p0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lorg/apache/http/impl/client/cache/CacheValidityPolicy;

    const-string v3, "s-maxage"

    invoke-virtual {v2, p1, v3}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->hasCacheControlDirective(Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_22
    move v0, v1

    goto :goto_b
.end method


# virtual methods
.method public allConditionalsMatch(Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .registers 11
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "entry"    # Lorg/apache/http/client/cache/HttpCacheEntry;
    .param p3, "now"    # Ljava/util/Date;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 239
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->hasSupportedEtagValidator(Lorg/apache/http/HttpRequest;)Z

    move-result v1

    .line 240
    .local v1, "hasEtagValidator":Z
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->hasSupportedLastModifiedValidator(Lorg/apache/http/HttpRequest;)Z

    move-result v2

    .line 242
    .local v2, "hasLastModifiedValidator":Z
    if-eqz v1, :cond_25

    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->etagValidatorMatches(Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;)Z

    move-result v6

    if-eqz v6, :cond_25

    move v0, v5

    .line 243
    .local v0, "etagValidatorMatches":Z
    :goto_13
    if-eqz v2, :cond_27

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->lastModifiedValidatorMatches(Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_27

    move v3, v5

    .line 245
    .local v3, "lastModifiedValidatorMatches":Z
    :goto_1c
    if-eqz v1, :cond_29

    if-eqz v2, :cond_29

    if-eqz v0, :cond_24

    if-nez v3, :cond_29

    .line 255
    :cond_24
    :goto_24
    return v4

    .end local v0    # "etagValidatorMatches":Z
    .end local v3    # "lastModifiedValidatorMatches":Z
    :cond_25
    move v0, v4

    .line 242
    goto :goto_13

    .restart local v0    # "etagValidatorMatches":Z
    :cond_27
    move v3, v4

    .line 243
    goto :goto_1c

    .line 248
    .restart local v3    # "lastModifiedValidatorMatches":Z
    :cond_29
    if-eqz v1, :cond_2d

    if-eqz v0, :cond_24

    .line 252
    :cond_2d
    if-eqz v2, :cond_31

    if-eqz v3, :cond_24

    :cond_31
    move v4, v5

    .line 255
    goto :goto_24
.end method

.method public canCachedResponseBeUsed(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .registers 31
    .param p1, "host"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "entry"    # Lorg/apache/http/client/cache/HttpCacheEntry;
    .param p4, "now"    # Ljava/util/Date;

    .prologue
    .line 135
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->isFreshEnough(Lorg/apache/http/client/cache/HttpCacheEntry;Lorg/apache/http/HttpRequest;Ljava/util/Date;)Z

    move-result v19

    if-nez v19, :cond_20

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v19, v0

    const-string v22, "Cache entry was not fresh enough"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 137
    const/16 v19, 0x0

    .line 219
    :goto_1f
    return v19

    .line 140
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lorg/apache/http/impl/client/cache/CacheValidityPolicy;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->contentLengthHeaderMatchesActualLength(Lorg/apache/http/client/cache/HttpCacheEntry;)Z

    move-result v19

    if-nez v19, :cond_42

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v19, v0

    const-string v22, "Cache entry Content-Length and header information do not match"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 142
    const/16 v19, 0x0

    goto :goto_1f

    .line 145
    :cond_42
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->hasUnsupportedConditionalHeaders(Lorg/apache/http/HttpRequest;)Z

    move-result v19

    if-eqz v19, :cond_5e

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v19, v0

    const-string v22, "Request contained conditional headers we don\'t handle"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 147
    const/16 v19, 0x0

    goto :goto_1f

    .line 150
    :cond_5e
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->isConditional(Lorg/apache/http/HttpRequest;)Z

    move-result v19

    if-nez v19, :cond_77

    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/client/cache/HttpCacheEntry;->getStatusCode()I

    move-result v19

    const/16 v22, 0x130

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_77

    .line 151
    const/16 v19, 0x0

    goto :goto_1f

    .line 154
    :cond_77
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->isConditional(Lorg/apache/http/HttpRequest;)Z

    move-result v19

    if-eqz v19, :cond_92

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->allConditionalsMatch(Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v19

    if-nez v19, :cond_92

    .line 155
    const/16 v19, 0x0

    goto :goto_1f

    .line 158
    :cond_92
    const-string v19, "Cache-Control"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/apache/http/HttpRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v6

    .local v6, "arr$":[Lorg/apache/http/Header;
    array-length v15, v6

    .local v15, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    move v14, v11

    .end local v6    # "arr$":[Lorg/apache/http/Header;
    .end local v11    # "i$":I
    .end local v15    # "len$":I
    .local v14, "i$":I
    :goto_9f
    if-ge v14, v15, :cond_25a

    aget-object v8, v6, v14

    .line 159
    .local v8, "ccHdr":Lorg/apache/http/Header;
    invoke-interface {v8}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v7

    .local v7, "arr$":[Lorg/apache/http/HeaderElement;
    array-length v0, v7

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v11, 0x0

    .end local v14    # "i$":I
    .restart local v11    # "i$":I
    :goto_ab
    move/from16 v0, v16

    if-ge v11, v0, :cond_255

    aget-object v9, v7, v11

    .line 160
    .local v9, "elt":Lorg/apache/http/HeaderElement;
    const-string v19, "no-cache"

    invoke-interface {v9}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d4

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v19, v0

    const-string v22, "Response contained NO CACHE directive, cache was not suitable"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 162
    const/16 v19, 0x0

    goto/16 :goto_1f

    .line 165
    :cond_d4
    const-string v19, "no-store"

    invoke-interface {v9}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f7

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v19, v0

    const-string v22, "Response contained NO STORE directive, cache was not suitable"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 167
    const/16 v19, 0x0

    goto/16 :goto_1f

    .line 170
    :cond_f7
    const-string v19, "max-age"

    invoke-interface {v9}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_164

    .line 172
    :try_start_107
    invoke-interface {v9}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 173
    .local v17, "maxage":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lorg/apache/http/impl/client/cache/CacheValidityPolicy;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v22

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v24, v0

    cmp-long v19, v22, v24

    if-lez v19, :cond_164

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v19, v0

    const-string v22, "Response from cache was NOT suitable due to max age"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V
    :try_end_137
    .catch Ljava/lang/NumberFormatException; {:try_start_107 .. :try_end_137} :catch_13b

    .line 175
    const/16 v19, 0x0

    goto/16 :goto_1f

    .line 177
    .end local v17    # "maxage":I
    :catch_13b
    move-exception v10

    .line 179
    .local v10, "ex":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v19, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Response from cache was malformed"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v10}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 180
    const/16 v19, 0x0

    goto/16 :goto_1f

    .line 184
    .end local v10    # "ex":Ljava/lang/NumberFormatException;
    :cond_164
    const-string v19, "max-stale"

    invoke-interface {v9}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1cf

    .line 186
    :try_start_174
    invoke-interface {v9}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 187
    .local v18, "maxstale":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lorg/apache/http/impl/client/cache/CacheValidityPolicy;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->getFreshnessLifetimeSecs(Lorg/apache/http/client/cache/HttpCacheEntry;)J

    move-result-wide v22

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v24, v0

    cmp-long v19, v22, v24

    if-lez v19, :cond_1cf

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v19, v0

    const-string v22, "Response from cache was not suitable due to Max stale freshness"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V
    :try_end_1a2
    .catch Ljava/lang/NumberFormatException; {:try_start_174 .. :try_end_1a2} :catch_1a6

    .line 189
    const/16 v19, 0x0

    goto/16 :goto_1f

    .line 191
    .end local v18    # "maxstale":I
    :catch_1a6
    move-exception v10

    .line 193
    .restart local v10    # "ex":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v19, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Response from cache was malformed: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v10}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 194
    const/16 v19, 0x0

    goto/16 :goto_1f

    .line 198
    .end local v10    # "ex":Ljava/lang/NumberFormatException;
    :cond_1cf
    const-string v19, "min-fresh"

    invoke-interface {v9}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_251

    .line 200
    :try_start_1df
    invoke-interface {v9}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 201
    .local v20, "minfresh":J
    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-gez v19, :cond_1f1

    const/16 v19, 0x0

    goto/16 :goto_1f

    .line 202
    :cond_1f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lorg/apache/http/impl/client/cache/CacheValidityPolicy;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v4

    .line 203
    .local v4, "age":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lorg/apache/http/impl/client/cache/CacheValidityPolicy;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->getFreshnessLifetimeSecs(Lorg/apache/http/client/cache/HttpCacheEntry;)J

    move-result-wide v12

    .line 204
    .local v12, "freshness":J
    sub-long v22, v12, v4

    cmp-long v19, v22, v20

    if-gez v19, :cond_251

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v19, v0

    const-string v22, "Response from cache was not suitable due to min fresh freshness requirement"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V
    :try_end_224
    .catch Ljava/lang/NumberFormatException; {:try_start_1df .. :try_end_224} :catch_228

    .line 207
    const/16 v19, 0x0

    goto/16 :goto_1f

    .line 209
    .end local v4    # "age":J
    .end local v12    # "freshness":J
    .end local v20    # "minfresh":J
    :catch_228
    move-exception v10

    .line 211
    .restart local v10    # "ex":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v19, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Response from cache was malformed: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v10}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 212
    const/16 v19, 0x0

    goto/16 :goto_1f

    .line 159
    .end local v10    # "ex":Ljava/lang/NumberFormatException;
    :cond_251
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_ab

    .line 158
    .end local v9    # "elt":Lorg/apache/http/HeaderElement;
    :cond_255
    add-int/lit8 v11, v14, 0x1

    move v14, v11

    .end local v11    # "i$":I
    .restart local v14    # "i$":I
    goto/16 :goto_9f

    .line 218
    .end local v7    # "arr$":[Lorg/apache/http/HeaderElement;
    .end local v8    # "ccHdr":Lorg/apache/http/Header;
    .end local v16    # "len$":I
    :cond_25a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v19, v0

    const-string v22, "Response from cache was suitable"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 219
    const/16 v19, 0x1

    goto/16 :goto_1f
.end method

.method public isConditional(Lorg/apache/http/HttpRequest;)Z
    .registers 3
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->hasSupportedEtagValidator(Lorg/apache/http/HttpRequest;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/cache/CachedResponseSuitabilityChecker;->hasSupportedLastModifiedValidator(Lorg/apache/http/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
