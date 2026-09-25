.class Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;
.super Ljava/lang/Object;
.source "CachedHttpResponseGenerator.java"


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final validityStrategy:Lorg/apache/http/impl/client/cache/CacheValidityPolicy;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 60
    new-instance v0, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;

    invoke-direct {v0}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;-><init>(Lorg/apache/http/impl/client/cache/CacheValidityPolicy;)V

    .line 61
    return-void
.end method

.method constructor <init>(Lorg/apache/http/impl/client/cache/CacheValidityPolicy;)V
    .registers 2
    .param p1, "validityStrategy"    # Lorg/apache/http/impl/client/cache/CacheValidityPolicy;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;->validityStrategy:Lorg/apache/http/impl/client/cache/CacheValidityPolicy;

    .line 57
    return-void
.end method

.method private addMissingContentLengthHeader(Lorg/apache/http/HttpResponse;Lorg/apache/http/HttpEntity;)V
    .registers 7
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;->transferEncodingIsPresent(Lorg/apache/http/HttpResponse;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 161
    :cond_6
    :goto_6
    return-void

    .line 155
    :cond_7
    const-string v1, "Content-Length"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 156
    .local v0, "contentLength":Lorg/apache/http/Header;
    if-nez v0, :cond_6

    .line 157
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    .end local v0    # "contentLength":Lorg/apache/http/Header;
    const-string v1, "Content-Length"

    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .restart local v0    # "contentLength":Lorg/apache/http/Header;
    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->setHeader(Lorg/apache/http/Header;)V

    goto :goto_6
.end method

.method private transferEncodingIsPresent(Lorg/apache/http/HttpResponse;)Z
    .registers 4
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 164
    const-string v1, "Transfer-Encoding"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 165
    .local v0, "hdr":Lorg/apache/http/Header;
    if-eqz v0, :cond_a

    const/4 v1, 0x1

    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method


# virtual methods
.method generateNotModifiedResponse(Lorg/apache/http/client/cache/HttpCacheEntry;)Lorg/apache/http/HttpResponse;
    .registers 12
    .param p1, "entry"    # Lorg/apache/http/client/cache/HttpCacheEntry;

    .prologue
    .line 105
    new-instance v5, Lorg/apache/http/message/BasicHttpResponse;

    sget-object v7, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    const/16 v8, 0x130

    const-string v9, "Not Modified"

    invoke-direct {v5, v7, v8, v9}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 112
    .local v5, "response":Lorg/apache/http/HttpResponse;
    const-string v7, "Date"

    invoke-virtual {p1, v7}, Lorg/apache/http/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 113
    .local v2, "dateHeader":Lorg/apache/http/Header;
    if-nez v2, :cond_23

    .line 114
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    .end local v2    # "dateHeader":Lorg/apache/http/Header;
    const-string v7, "Date"

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-static {v8}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .restart local v2    # "dateHeader":Lorg/apache/http/Header;
    :cond_23
    invoke-interface {v5, v2}, Lorg/apache/http/HttpResponse;->addHeader(Lorg/apache/http/Header;)V

    .line 120
    const-string v7, "ETag"

    invoke-virtual {p1, v7}, Lorg/apache/http/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 121
    .local v3, "etagHeader":Lorg/apache/http/Header;
    if-eqz v3, :cond_31

    .line 122
    invoke-interface {v5, v3}, Lorg/apache/http/HttpResponse;->addHeader(Lorg/apache/http/Header;)V

    .line 125
    :cond_31
    const-string v7, "Content-Location"

    invoke-virtual {p1, v7}, Lorg/apache/http/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 126
    .local v1, "contentLocationHeader":Lorg/apache/http/Header;
    if-eqz v1, :cond_3c

    .line 127
    invoke-interface {v5, v1}, Lorg/apache/http/HttpResponse;->addHeader(Lorg/apache/http/Header;)V

    .line 133
    :cond_3c
    const-string v7, "Expires"

    invoke-virtual {p1, v7}, Lorg/apache/http/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 134
    .local v4, "expiresHeader":Lorg/apache/http/Header;
    if-eqz v4, :cond_47

    .line 135
    invoke-interface {v5, v4}, Lorg/apache/http/HttpResponse;->addHeader(Lorg/apache/http/Header;)V

    .line 138
    :cond_47
    const-string v7, "Cache-Control"

    invoke-virtual {p1, v7}, Lorg/apache/http/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 139
    .local v0, "cacheControlHeader":Lorg/apache/http/Header;
    if-eqz v0, :cond_52

    .line 140
    invoke-interface {v5, v0}, Lorg/apache/http/HttpResponse;->addHeader(Lorg/apache/http/Header;)V

    .line 143
    :cond_52
    const-string v7, "Vary"

    invoke-virtual {p1, v7}, Lorg/apache/http/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v6

    .line 144
    .local v6, "varyHeader":Lorg/apache/http/Header;
    if-eqz v6, :cond_5d

    .line 145
    invoke-interface {v5, v6}, Lorg/apache/http/HttpResponse;->addHeader(Lorg/apache/http/Header;)V

    .line 148
    :cond_5d
    return-object v5
.end method

.method generateResponse(Lorg/apache/http/client/cache/HttpCacheEntry;)Lorg/apache/http/HttpResponse;
    .registers 10
    .param p1, "entry"    # Lorg/apache/http/client/cache/HttpCacheEntry;

    .prologue
    .line 72
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 73
    .local v3, "now":Ljava/util/Date;
    new-instance v4, Lorg/apache/http/message/BasicHttpResponse;

    sget-object v5, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-virtual {p1}, Lorg/apache/http/client/cache/HttpCacheEntry;->getStatusCode()I

    move-result v6

    invoke-virtual {p1}, Lorg/apache/http/client/cache/HttpCacheEntry;->getReasonPhrase()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 76
    .local v4, "response":Lorg/apache/http/HttpResponse;
    invoke-virtual {p1}, Lorg/apache/http/client/cache/HttpCacheEntry;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/http/HttpResponse;->setHeaders([Lorg/apache/http/Header;)V

    .line 78
    invoke-virtual {p1}, Lorg/apache/http/client/cache/HttpCacheEntry;->getResource()Lorg/apache/http/client/cache/Resource;

    move-result-object v5

    if-eqz v5, :cond_2c

    .line 79
    new-instance v2, Lorg/apache/http/impl/client/cache/CacheEntity;

    invoke-direct {v2, p1}, Lorg/apache/http/impl/client/cache/CacheEntity;-><init>(Lorg/apache/http/client/cache/HttpCacheEntry;)V

    .line 80
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    invoke-direct {p0, v4, v2}, Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;->addMissingContentLengthHeader(Lorg/apache/http/HttpResponse;Lorg/apache/http/HttpEntity;)V

    .line 81
    invoke-interface {v4, v2}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 84
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    :cond_2c
    iget-object v5, p0, Lorg/apache/http/impl/client/cache/CachedHttpResponseGenerator;->validityStrategy:Lorg/apache/http/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v5, p1, v3}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v0

    .line 85
    .local v0, "age":J
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-lez v5, :cond_46

    .line 86
    const-wide/32 v6, 0x7fffffff

    cmp-long v5, v0, v6

    if-ltz v5, :cond_47

    .line 87
    const-string v5, "Age"

    const-string v6, "2147483648"

    invoke-interface {v4, v5, v6}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_46
    :goto_46
    return-object v4

    .line 89
    :cond_47
    const-string v5, "Age"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    long-to-int v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46
.end method
