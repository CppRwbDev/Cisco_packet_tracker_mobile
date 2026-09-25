.class Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;
.super Ljava/lang/Object;
.source "ResponseCachingPolicy.java"


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final cacheableStatuses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final uncacheableStatuses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;

.field private final maxObjectSizeBytes:J

.field private final sharedCache:Z


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 60
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0xcb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/16 v2, 0x12c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const/16 v3, 0x12d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const/16 v3, 0x19a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;->cacheableStatuses:Ljava/util/Set;

    .line 66
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v6, [Ljava/lang/Integer;

    const/16 v2, 0xce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0x12f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;->uncacheableStatuses:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(JZ)V
    .registers 5
    .param p1, "maxObjectSizeBytes"    # J
    .param p3, "sharedCache"    # Z

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;->log:Lorg/apache/commons/logging/Log;

    .line 79
    iput-wide p1, p0, Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;->maxObjectSizeBytes:J

    .line 80
    iput-boolean p3, p0, Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;->sharedCache:Z

    .line 81
    return-void
.end method

.method private expiresHeaderLessOrEqualToDateHeaderAndNoCacheControl(Lorg/apache/http/HttpResponse;)Z
    .registers 9
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    const/4 v5, 0x0

    .line 245
    const-string v6, "Cache-Control"

    invoke-interface {p1, v6}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 254
    :cond_9
    :goto_9
    return v5

    .line 246
    :cond_a
    const-string v6, "Expires"

    invoke-interface {p1, v6}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 247
    .local v4, "expiresHdr":Lorg/apache/http/Header;
    const-string v6, "Date"

    invoke-interface {p1, v6}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 248
    .local v1, "dateHdr":Lorg/apache/http/Header;
    if-eqz v4, :cond_9

    if-eqz v1, :cond_9

    .line 250
    :try_start_1a
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 251
    .local v3, "expires":Ljava/util/Date;
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 252
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v3, v0}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_36

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z
    :try_end_33
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_1a .. :try_end_33} :catch_38

    move-result v6

    if-eqz v6, :cond_9

    :cond_36
    const/4 v5, 0x1

    goto :goto_9

    .line 253
    .end local v0    # "date":Ljava/util/Date;
    .end local v3    # "expires":Ljava/util/Date;
    :catch_38
    move-exception v2

    .line 254
    .local v2, "dpe":Lorg/apache/http/impl/cookie/DateParseException;
    goto :goto_9
.end method

.method private from1_0Origin(Lorg/apache/http/HttpResponse;)Z
    .registers 10
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 259
    const-string v6, "Via"

    invoke-interface {p1, v6}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    .line 260
    .local v5, "via":Lorg/apache/http/Header;
    if-eqz v5, :cond_35

    .line 261
    invoke-interface {v5}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/http/HeaderElement;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    if-ge v2, v3, :cond_35

    aget-object v1, v0, v2

    .line 262
    .local v1, "elt":Lorg/apache/http/HeaderElement;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\s"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v4, v6, v7

    .line 263
    .local v4, "proto":Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 264
    const-string v6, "HTTP/1.0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 270
    .end local v0    # "arr$":[Lorg/apache/http/HeaderElement;
    .end local v1    # "elt":Lorg/apache/http/HeaderElement;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "proto":Ljava/lang/String;
    :goto_2d
    return v6

    .line 266
    .restart local v0    # "arr$":[Lorg/apache/http/HeaderElement;
    .restart local v1    # "elt":Lorg/apache/http/HeaderElement;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "proto":Ljava/lang/String;
    :cond_2e
    const-string v6, "1.0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_2d

    .line 270
    .end local v0    # "arr$":[Lorg/apache/http/HeaderElement;
    .end local v1    # "elt":Lorg/apache/http/HeaderElement;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "proto":Ljava/lang/String;
    :cond_35
    sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/http/HttpVersion;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_2d
.end method

.method private requestProtocolGreaterThanAccepted(Lorg/apache/http/HttpRequest;)Z
    .registers 4
    .param p1, "req"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 274
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-virtual {v0, v1}, Lorg/apache/http/ProtocolVersion;->compareToVersion(Lorg/apache/http/ProtocolVersion;)I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private unknownStatusCode(I)Z
    .registers 4
    .param p1, "status"    # I

    .prologue
    const/4 v0, 0x0

    .line 153
    const/16 v1, 0x64

    if-lt p1, v1, :cond_a

    const/16 v1, 0x65

    if-gt p1, v1, :cond_a

    .line 158
    :cond_9
    :goto_9
    return v0

    .line 154
    :cond_a
    const/16 v1, 0xc8

    if-lt p1, v1, :cond_12

    const/16 v1, 0xce

    if-le p1, v1, :cond_9

    .line 155
    :cond_12
    const/16 v1, 0x12c

    if-lt p1, v1, :cond_1a

    const/16 v1, 0x133

    if-le p1, v1, :cond_9

    .line 156
    :cond_1a
    const/16 v1, 0x190

    if-lt p1, v1, :cond_22

    const/16 v1, 0x1a1

    if-le p1, v1, :cond_9

    .line 157
    :cond_22
    const/16 v1, 0x1f4

    if-lt p1, v1, :cond_2a

    const/16 v1, 0x1f9

    if-le p1, v1, :cond_9

    .line 158
    :cond_2a
    const/4 v0, 0x1

    goto :goto_9
.end method


# virtual methods
.method protected hasCacheControlParameterFrom(Lorg/apache/http/HttpMessage;[Ljava/lang/String;)Z
    .registers 17
    .param p1, "msg"    # Lorg/apache/http/HttpMessage;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 176
    const-string v13, "Cache-Control"

    invoke-interface {p1, v13}, Lorg/apache/http/HttpMessage;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    .line 177
    .local v3, "cacheControlHeaders":[Lorg/apache/http/Header;
    move-object v0, v3

    .local v0, "arr$":[Lorg/apache/http/Header;
    array-length v9, v0

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v8, v6

    .end local v0    # "arr$":[Lorg/apache/http/Header;
    .end local v6    # "i$":I
    .end local v9    # "len$":I
    .local v8, "i$":I
    :goto_a
    if-ge v8, v9, :cond_38

    aget-object v5, v0, v8

    .line 178
    .local v5, "header":Lorg/apache/http/Header;
    invoke-interface {v5}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v1

    .local v1, "arr$":[Lorg/apache/http/HeaderElement;
    array-length v10, v1

    .local v10, "len$":I
    const/4 v6, 0x0

    .end local v8    # "i$":I
    .restart local v6    # "i$":I
    move v7, v6

    .end local v1    # "arr$":[Lorg/apache/http/HeaderElement;
    .end local v6    # "i$":I
    .end local v10    # "len$":I
    .local v7, "i$":I
    :goto_15
    if-ge v7, v10, :cond_34

    aget-object v4, v1, v7

    .line 179
    .local v4, "elem":Lorg/apache/http/HeaderElement;
    move-object/from16 v2, p2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v11, v2

    .local v11, "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    :goto_1d
    if-ge v6, v11, :cond_30

    aget-object v12, v2, v6

    .line 180
    .local v12, "param":Ljava/lang/String;
    invoke-interface {v4}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2d

    .line 181
    const/4 v13, 0x1

    .line 186
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "elem":Lorg/apache/http/HeaderElement;
    .end local v5    # "header":Lorg/apache/http/Header;
    .end local v6    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "param":Ljava/lang/String;
    :goto_2c
    return v13

    .line 179
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v4    # "elem":Lorg/apache/http/HeaderElement;
    .restart local v5    # "header":Lorg/apache/http/Header;
    .restart local v6    # "i$":I
    .restart local v11    # "len$":I
    .restart local v12    # "param":Ljava/lang/String;
    :cond_2d
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 178
    .end local v12    # "param":Ljava/lang/String;
    :cond_30
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    .end local v6    # "i$":I
    .restart local v7    # "i$":I
    goto :goto_15

    .line 177
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "elem":Lorg/apache/http/HeaderElement;
    .end local v11    # "len$":I
    :cond_34
    add-int/lit8 v6, v8, 0x1

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    move v8, v6

    .end local v6    # "i$":I
    .restart local v8    # "i$":I
    goto :goto_a

    .line 186
    .end local v5    # "header":Lorg/apache/http/Header;
    :cond_38
    const/4 v13, 0x0

    goto :goto_2c
.end method

.method protected isExplicitlyCacheable(Lorg/apache/http/HttpResponse;)Z
    .registers 6
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    const/4 v1, 0x1

    .line 190
    const-string v2, "Expires"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 197
    :goto_9
    return v1

    .line 192
    :cond_a
    const/4 v2, 0x5

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "max-age"

    aput-object v3, v0, v2

    const-string v2, "s-maxage"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "must-revalidate"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proxy-revalidate"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "public"

    aput-object v2, v0, v1

    .line 197
    .local v0, "cacheableParams":[Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;->hasCacheControlParameterFrom(Lorg/apache/http/HttpMessage;[Ljava/lang/String;)Z

    move-result v1

    goto :goto_9
.end method

.method protected isExplicitlyNonCacheable(Lorg/apache/http/HttpResponse;)Z
    .registers 13
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 162
    const-string v9, "Cache-Control"

    invoke-interface {p1, v9}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    .line 163
    .local v2, "cacheControlHeaders":[Lorg/apache/http/Header;
    move-object v0, v2

    .local v0, "arr$":[Lorg/apache/http/Header;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v6, v5

    .end local v0    # "arr$":[Lorg/apache/http/Header;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .local v6, "i$":I
    :goto_a
    if-ge v6, v7, :cond_49

    aget-object v4, v0, v6

    .line 164
    .local v4, "header":Lorg/apache/http/Header;
    invoke-interface {v4}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v1

    .local v1, "arr$":[Lorg/apache/http/HeaderElement;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v5, 0x0

    .end local v6    # "i$":I
    .restart local v5    # "i$":I
    :goto_14
    if-ge v5, v8, :cond_45

    aget-object v3, v1, v5

    .line 165
    .local v3, "elem":Lorg/apache/http/HeaderElement;
    const-string v9, "no-store"

    invoke-interface {v3}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_40

    const-string v9, "no-cache"

    invoke-interface {v3}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_40

    iget-boolean v9, p0, Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;->sharedCache:Z

    if-eqz v9, :cond_42

    const-string v9, "private"

    invoke-interface {v3}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    .line 168
    :cond_40
    const/4 v9, 0x1

    .line 172
    .end local v1    # "arr$":[Lorg/apache/http/HeaderElement;
    .end local v3    # "elem":Lorg/apache/http/HeaderElement;
    .end local v4    # "header":Lorg/apache/http/Header;
    .end local v5    # "i$":I
    .end local v8    # "len$":I
    :goto_41
    return v9

    .line 164
    .restart local v1    # "arr$":[Lorg/apache/http/HeaderElement;
    .restart local v3    # "elem":Lorg/apache/http/HeaderElement;
    .restart local v4    # "header":Lorg/apache/http/Header;
    .restart local v5    # "i$":I
    .restart local v8    # "len$":I
    :cond_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 163
    .end local v3    # "elem":Lorg/apache/http/HeaderElement;
    :cond_45
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5    # "i$":I
    .restart local v6    # "i$":I
    goto :goto_a

    .line 172
    .end local v1    # "arr$":[Lorg/apache/http/HeaderElement;
    .end local v4    # "header":Lorg/apache/http/Header;
    .end local v8    # "len$":I
    :cond_49
    const/4 v9, 0x0

    goto :goto_41
.end method

.method public isResponseCacheable(Ljava/lang/String;Lorg/apache/http/HttpResponse;)Z
    .registers 25
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 91
    const/4 v5, 0x0

    .line 93
    .local v5, "cacheable":Z
    const-string v18, "GET"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1b

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v18, v0

    const-string v19, "Response was not cacheable."

    invoke-interface/range {v18 .. v19}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 95
    const/16 v18, 0x0

    .line 149
    :goto_1a
    return v18

    .line 98
    :cond_1b
    invoke-interface/range {p2 .. p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    .line 99
    .local v16, "status":I
    sget-object v18, Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;->cacheableStatuses:Ljava/util/Set;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_54

    .line 101
    const/4 v5, 0x1

    .line 110
    :cond_30
    const-string v18, "Content-Length"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v6

    .line 111
    .local v6, "contentLength":Lorg/apache/http/Header;
    if-eqz v6, :cond_70

    .line 112
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 113
    .local v7, "contentLengthValue":I
    int-to-long v0, v7

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;->maxObjectSizeBytes:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-lez v18, :cond_70

    .line 114
    const/16 v18, 0x0

    goto :goto_1a

    .line 102
    .end local v6    # "contentLength":Lorg/apache/http/Header;
    .end local v7    # "contentLengthValue":I
    :cond_54
    sget-object v18, Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;->uncacheableStatuses:Ljava/util/Set;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_63

    .line 103
    const/16 v18, 0x0

    goto :goto_1a

    .line 104
    :cond_63
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;->unknownStatusCode(I)Z

    move-result v18

    if-eqz v18, :cond_30

    .line 107
    const/16 v18, 0x0

    goto :goto_1a

    .line 117
    .restart local v6    # "contentLength":Lorg/apache/http/Header;
    :cond_70
    const-string v18, "Age"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    .line 119
    .local v2, "ageHeaders":[Lorg/apache/http/Header;
    array-length v0, v2

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_88

    .line 120
    const/16 v18, 0x0

    goto :goto_1a

    .line 122
    :cond_88
    const-string v18, "Expires"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v11

    .line 124
    .local v11, "expiresHeaders":[Lorg/apache/http/Header;
    array-length v0, v11

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_a1

    .line 125
    const/16 v18, 0x0

    goto/16 :goto_1a

    .line 127
    :cond_a1
    const-string v18, "Date"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v8

    .line 129
    .local v8, "dateHeaders":[Lorg/apache/http/Header;
    array-length v0, v8

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_ba

    .line 130
    const/16 v18, 0x0

    goto/16 :goto_1a

    .line 133
    :cond_ba
    const/16 v18, 0x0

    :try_start_bc
    aget-object v18, v8, v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_c5
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_bc .. :try_end_c5} :catch_f0

    .line 138
    const-string v18, "Vary"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    .local v3, "arr$":[Lorg/apache/http/Header;
    array-length v14, v3

    .local v14, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    move v13, v12

    .end local v3    # "arr$":[Lorg/apache/http/Header;
    .end local v12    # "i$":I
    .end local v14    # "len$":I
    .local v13, "i$":I
    :goto_d2
    if-ge v13, v14, :cond_fc

    aget-object v17, v3, v13

    .line 139
    .local v17, "varyHdr":Lorg/apache/http/Header;
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v4

    .local v4, "arr$":[Lorg/apache/http/HeaderElement;
    array-length v15, v4

    .local v15, "len$":I
    const/4 v12, 0x0

    .end local v13    # "i$":I
    .restart local v12    # "i$":I
    :goto_dc
    if-ge v12, v15, :cond_f8

    aget-object v10, v4, v12

    .line 140
    .local v10, "elem":Lorg/apache/http/HeaderElement;
    const-string v18, "*"

    invoke-interface {v10}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f5

    .line 141
    const/16 v18, 0x0

    goto/16 :goto_1a

    .line 134
    .end local v4    # "arr$":[Lorg/apache/http/HeaderElement;
    .end local v10    # "elem":Lorg/apache/http/HeaderElement;
    .end local v12    # "i$":I
    .end local v15    # "len$":I
    .end local v17    # "varyHdr":Lorg/apache/http/Header;
    :catch_f0
    move-exception v9

    .line 135
    .local v9, "dpe":Lorg/apache/http/impl/cookie/DateParseException;
    const/16 v18, 0x0

    goto/16 :goto_1a

    .line 139
    .end local v9    # "dpe":Lorg/apache/http/impl/cookie/DateParseException;
    .restart local v4    # "arr$":[Lorg/apache/http/HeaderElement;
    .restart local v10    # "elem":Lorg/apache/http/HeaderElement;
    .restart local v12    # "i$":I
    .restart local v15    # "len$":I
    .restart local v17    # "varyHdr":Lorg/apache/http/Header;
    :cond_f5
    add-int/lit8 v12, v12, 0x1

    goto :goto_dc

    .line 138
    .end local v10    # "elem":Lorg/apache/http/HeaderElement;
    :cond_f8
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    .end local v12    # "i$":I
    .restart local v13    # "i$":I
    goto :goto_d2

    .line 146
    .end local v4    # "arr$":[Lorg/apache/http/HeaderElement;
    .end local v15    # "len$":I
    .end local v17    # "varyHdr":Lorg/apache/http/Header;
    :cond_fc
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;->isExplicitlyNonCacheable(Lorg/apache/http/HttpResponse;)Z

    move-result v18

    if-eqz v18, :cond_10a

    .line 147
    const/16 v18, 0x0

    goto/16 :goto_1a

    .line 149
    :cond_10a
    if-nez v5, :cond_116

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;->isExplicitlyCacheable(Lorg/apache/http/HttpResponse;)Z

    move-result v18

    if-eqz v18, :cond_11a

    :cond_116
    const/16 v18, 0x1

    goto/16 :goto_1a

    :cond_11a
    const/16 v18, 0x0

    goto/16 :goto_1a
.end method

.method public isResponseCacheable(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)Z
    .registers 11
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 209
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;->requestProtocolGreaterThanAccepted(Lorg/apache/http/HttpRequest;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 210
    iget-object v5, p0, Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Response was not cacheable."

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 240
    :cond_f
    :goto_f
    return v4

    .line 214
    :cond_10
    new-array v3, v7, [Ljava/lang/String;

    const-string v5, "no-store"

    aput-object v5, v3, v4

    .line 215
    .local v3, "uncacheableRequestDirectives":[Ljava/lang/String;
    invoke-virtual {p0, p1, v3}, Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;->hasCacheControlParameterFrom(Lorg/apache/http/HttpMessage;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 219
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v5

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-virtual {p0, p2}, Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;->isExplicitlyCacheable(Lorg/apache/http/HttpResponse;)Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-direct {p0, p2}, Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;->from1_0Origin(Lorg/apache/http/HttpResponse;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 221
    :cond_38
    iget-object v5, p0, Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Response was not cacheable."

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_f

    .line 225
    :cond_40
    invoke-direct {p0, p2}, Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;->expiresHeaderLessOrEqualToDateHeaderAndNoCacheControl(Lorg/apache/http/HttpResponse;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 229
    iget-boolean v5, p0, Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;->sharedCache:Z

    if-eqz v5, :cond_6a

    .line 230
    const-string v5, "Authorization"

    invoke-interface {p1, v5}, Lorg/apache/http/HttpRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    .line 231
    .local v1, "authNHeaders":[Lorg/apache/http/Header;
    if-eqz v1, :cond_6a

    array-length v5, v1

    if-lez v5, :cond_6a

    .line 232
    const/4 v5, 0x3

    new-array v0, v5, [Ljava/lang/String;

    const-string v5, "s-maxage"

    aput-object v5, v0, v4

    const-string v4, "must-revalidate"

    aput-object v4, v0, v7

    const/4 v4, 0x2

    const-string v5, "public"

    aput-object v5, v0, v4

    .line 235
    .local v0, "authCacheableParams":[Ljava/lang/String;
    invoke-virtual {p0, p2, v0}, Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;->hasCacheControlParameterFrom(Lorg/apache/http/HttpMessage;[Ljava/lang/String;)Z

    move-result v4

    goto :goto_f

    .line 239
    .end local v0    # "authCacheableParams":[Ljava/lang/String;
    .end local v1    # "authNHeaders":[Lorg/apache/http/Header;
    :cond_6a
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "method":Ljava/lang/String;
    invoke-virtual {p0, v2, p2}, Lorg/apache/http/impl/client/cache/ResponseCachingPolicy;->isResponseCacheable(Ljava/lang/String;Lorg/apache/http/HttpResponse;)Z

    move-result v4

    goto :goto_f
.end method
