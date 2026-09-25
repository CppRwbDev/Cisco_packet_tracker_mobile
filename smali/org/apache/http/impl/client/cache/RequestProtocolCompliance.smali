.class Lorg/apache/http/impl/client/cache/RequestProtocolCompliance;
.super Ljava/lang/Object;
.source "RequestProtocolCompliance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/client/cache/RequestProtocolCompliance$1;
    }
.end annotation

.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final disallowedWithNoCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "min-fresh"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "max-stale"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "max-age"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/client/cache/RequestProtocolCompliance;->disallowedWithNoCache:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    return-void
.end method

.method private add100ContinueHeaderIfMissing(Lorg/apache/http/HttpRequest;)V
    .registers 13
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 236
    const/4 v4, 0x0

    .line 238
    .local v4, "hasHeader":Z
    const-string v9, "Expect"

    invoke-interface {p1, v9}, Lorg/apache/http/HttpRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

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
    if-ge v6, v7, :cond_2c

    aget-object v3, v0, v6

    .line 239
    .local v3, "h":Lorg/apache/http/Header;
    invoke-interface {v3}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v1

    .local v1, "arr$":[Lorg/apache/http/HeaderElement;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v5, 0x0

    .end local v6    # "i$":I
    .restart local v5    # "i$":I
    :goto_14
    if-ge v5, v8, :cond_28

    aget-object v2, v1, v5

    .line 240
    .local v2, "elt":Lorg/apache/http/HeaderElement;
    const-string v9, "100-continue"

    invoke-interface {v2}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_25

    .line 241
    const/4 v4, 0x1

    .line 239
    :cond_25
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 238
    .end local v2    # "elt":Lorg/apache/http/HeaderElement;
    :cond_28
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5    # "i$":I
    .restart local v6    # "i$":I
    goto :goto_a

    .line 246
    .end local v1    # "arr$":[Lorg/apache/http/HeaderElement;
    .end local v3    # "h":Lorg/apache/http/Header;
    .end local v8    # "len$":I
    :cond_2c
    if-nez v4, :cond_35

    .line 247
    const-string v9, "Expect"

    const-string v10, "100-continue"

    invoke-interface {p1, v9, v10}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_35
    return-void
.end method

.method private addContentTypeHeaderIfMissing(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .registers 4
    .param p1, "request"    # Lorg/apache/http/HttpEntityEnclosingRequest;

    .prologue
    .line 187
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    if-nez v0, :cond_19

    .line 188
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    check-cast v0, Lorg/apache/http/entity/AbstractHttpEntity;

    sget-object v1, Lorg/apache/http/entity/ContentType;->APPLICATION_OCTET_STREAM:Lorg/apache/http/entity/ContentType;

    invoke-virtual {v1}, Lorg/apache/http/entity/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 191
    :cond_19
    return-void
.end method

.method private buildHeaderFromElements(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/HeaderElement;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "outElts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/HeaderElement;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .local v3, "newHdr":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 142
    .local v1, "first":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HeaderElement;

    .line 143
    .local v0, "elt":Lorg/apache/http/HeaderElement;
    if-nez v1, :cond_27

    .line 144
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :goto_1f
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 146
    :cond_27
    const/4 v1, 0x0

    goto :goto_1f

    .line 150
    .end local v0    # "elt":Lorg/apache/http/HeaderElement;
    :cond_29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private decrementOPTIONSMaxForwardsIfGreaterThen0(Lorg/apache/http/HttpRequest;)V
    .registers 6
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 159
    const-string v2, "OPTIONS"

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 172
    :cond_10
    :goto_10
    return-void

    .line 163
    :cond_11
    const-string v2, "Max-Forwards"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 164
    .local v1, "maxForwards":Lorg/apache/http/Header;
    if-eqz v1, :cond_10

    .line 168
    const-string v2, "Max-Forwards"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    .line 169
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 171
    .local v0, "currentMaxForwards":I
    const-string v2, "Max-Forwards"

    add-int/lit8 v3, v0, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method private downgradeRequestTo(Lorg/apache/http/HttpRequest;Lorg/apache/http/ProtocolVersion;)Lorg/apache/http/HttpRequest;
    .registers 6
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "version"    # Lorg/apache/http/ProtocolVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 268
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V
    :try_end_5
    .catch Lorg/apache/http/ProtocolException; {:try_start_0 .. :try_end_5} :catch_9

    .line 272
    .local v0, "newRequest":Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual {v0, p2}, Lorg/apache/http/impl/client/RequestWrapper;->setProtocolVersion(Lorg/apache/http/ProtocolVersion;)V

    .line 274
    return-object v0

    .line 269
    .end local v0    # "newRequest":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_9
    move-exception v1

    .line 270
    .local v1, "pe":Lorg/apache/http/ProtocolException;
    new-instance v2, Lorg/apache/http/client/ClientProtocolException;

    invoke-direct {v2, v1}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private remove100ContinueHeaderIfExists(Lorg/apache/http/HttpRequest;)V
    .registers 16
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 208
    const/4 v6, 0x0

    .line 210
    .local v6, "hasHeader":Z
    const-string v12, "Expect"

    invoke-interface {p1, v12}, Lorg/apache/http/HttpRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v4

    .line 211
    .local v4, "expectHeaders":[Lorg/apache/http/Header;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v3, "expectElementsThatAreNot100Continue":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/HeaderElement;>;"
    move-object v0, v4

    .local v0, "arr$":[Lorg/apache/http/Header;
    array-length v9, v0

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    move v8, v7

    .end local v0    # "arr$":[Lorg/apache/http/Header;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .local v8, "i$":I
    :goto_10
    if-ge v8, v9, :cond_5f

    aget-object v5, v0, v8

    .line 214
    .local v5, "h":Lorg/apache/http/Header;
    invoke-interface {v5}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v1

    .local v1, "arr$":[Lorg/apache/http/HeaderElement;
    array-length v10, v1

    .local v10, "len$":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    :goto_1a
    if-ge v7, v10, :cond_32

    aget-object v2, v1, v7

    .line 215
    .local v2, "elt":Lorg/apache/http/HeaderElement;
    const-string v12, "100-continue"

    invoke-interface {v2}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_30

    .line 216
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    :goto_2d
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    .line 218
    :cond_30
    const/4 v6, 0x1

    goto :goto_2d

    .line 222
    .end local v2    # "elt":Lorg/apache/http/HeaderElement;
    :cond_32
    if-eqz v6, :cond_56

    .line 223
    invoke-interface {p1, v5}, Lorg/apache/http/HttpRequest;->removeHeader(Lorg/apache/http/Header;)V

    .line 224
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_3b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/HeaderElement;

    .line 225
    .restart local v2    # "elt":Lorg/apache/http/HeaderElement;
    new-instance v11, Lorg/apache/http/message/BasicHeader;

    const-string v12, "Expect"

    invoke-interface {v2}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .local v11, "newHeader":Lorg/apache/http/message/BasicHeader;
    invoke-interface {p1, v11}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_3b

    .line 230
    .end local v2    # "elt":Lorg/apache/http/HeaderElement;
    .end local v11    # "newHeader":Lorg/apache/http/message/BasicHeader;
    .local v7, "i$":I
    :cond_56
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "expectElementsThatAreNot100Continue":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/HeaderElement;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .restart local v3    # "expectElementsThatAreNot100Continue":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/HeaderElement;>;"
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7    # "i$":I
    .restart local v8    # "i$":I
    goto :goto_10

    .line 233
    .end local v1    # "arr$":[Lorg/apache/http/HeaderElement;
    .end local v5    # "h":Lorg/apache/http/Header;
    .end local v8    # "i$":I
    .end local v10    # "len$":I
    :cond_5f
    return-void
.end method

.method private requestContainsNoCacheDirectiveWithFieldName(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/cache/RequestProtocolError;
    .registers 12
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 381
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

    .line 382
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

    .line 383
    .local v2, "elt":Lorg/apache/http/HeaderElement;
    const-string v8, "no-cache"

    invoke-interface {v2}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2c

    invoke-interface {v2}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2c

    .line 385
    sget-object v8, Lorg/apache/http/impl/client/cache/RequestProtocolError;->NO_CACHE_DIRECTIVE_WITH_FIELD_NAME:Lorg/apache/http/impl/client/cache/RequestProtocolError;

    .line 389
    .end local v1    # "arr$":[Lorg/apache/http/HeaderElement;
    .end local v2    # "elt":Lorg/apache/http/HeaderElement;
    .end local v3    # "h":Lorg/apache/http/Header;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    :goto_2b
    return-object v8

    .line 382
    .restart local v1    # "arr$":[Lorg/apache/http/HeaderElement;
    .restart local v2    # "elt":Lorg/apache/http/HeaderElement;
    .restart local v3    # "h":Lorg/apache/http/Header;
    .restart local v4    # "i$":I
    .restart local v7    # "len$":I
    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 381
    .end local v2    # "elt":Lorg/apache/http/HeaderElement;
    :cond_2f
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_9

    .line 389
    .end local v1    # "arr$":[Lorg/apache/http/HeaderElement;
    .end local v3    # "h":Lorg/apache/http/Header;
    .end local v7    # "len$":I
    :cond_33
    const/4 v8, 0x0

    goto :goto_2b
.end method

.method private requestHasWeakETagAndRange(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/cache/RequestProtocolError;
    .registers 8
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    const/4 v4, 0x0

    .line 330
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "method":Ljava/lang/String;
    const-string v5, "GET"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 348
    :cond_11
    :goto_11
    return-object v4

    .line 335
    :cond_12
    const-string v5, "Range"

    invoke-interface {p1, v5}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 336
    .local v2, "range":Lorg/apache/http/Header;
    if-eqz v2, :cond_11

    .line 339
    const-string v5, "If-Range"

    invoke-interface {p1, v5}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 340
    .local v0, "ifRange":Lorg/apache/http/Header;
    if-eqz v0, :cond_11

    .line 343
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 344
    .local v3, "val":Ljava/lang/String;
    const-string v5, "W/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 345
    sget-object v4, Lorg/apache/http/impl/client/cache/RequestProtocolError;->WEAK_ETAG_AND_RANGE_ERROR:Lorg/apache/http/impl/client/cache/RequestProtocolError;

    goto :goto_11
.end method

.method private requestHasWeekETagForPUTOrDELETEIfMatch(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/cache/RequestProtocolError;
    .registers 9
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    const/4 v5, 0x0

    .line 354
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, "method":Ljava/lang/String;
    const-string v6, "PUT"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    const-string v6, "DELETE"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    .line 377
    :cond_19
    :goto_19
    return-object v5

    .line 360
    :cond_1a
    const-string v6, "If-Match"

    invoke-interface {p1, v6}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 361
    .local v0, "ifMatch":Lorg/apache/http/Header;
    if-eqz v0, :cond_31

    .line 362
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 363
    .local v3, "val":Ljava/lang/String;
    const-string v6, "W/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 364
    sget-object v5, Lorg/apache/http/impl/client/cache/RequestProtocolError;->WEAK_ETAG_ON_PUTDELETE_METHOD_ERROR:Lorg/apache/http/impl/client/cache/RequestProtocolError;

    goto :goto_19

    .line 367
    .end local v3    # "val":Ljava/lang/String;
    :cond_31
    const-string v6, "If-None-Match"

    invoke-interface {p1, v6}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 368
    .local v1, "ifNoneMatch":Lorg/apache/http/Header;
    if-eqz v1, :cond_19

    .line 371
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 372
    .local v4, "val2":Ljava/lang/String;
    const-string v6, "W/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 373
    sget-object v5, Lorg/apache/http/impl/client/cache/RequestProtocolError;->WEAK_ETAG_ON_PUTDELETE_METHOD_ERROR:Lorg/apache/http/impl/client/cache/RequestProtocolError;

    goto :goto_19
.end method

.method private requestMustNotHaveEntity(Lorg/apache/http/HttpRequest;)Z
    .registers 4
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 154
    const-string v0, "TRACE"

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    instance-of v0, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private stripOtherFreshnessDirectivesWithNoCache(Lorg/apache/http/HttpRequest;)V
    .registers 14
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 122
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v8, "outElts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/HeaderElement;>;"
    const/4 v9, 0x0

    .line 124
    .local v9, "shouldStrip":Z
    const-string v10, "Cache-Control"

    invoke-interface {p1, v10}, Lorg/apache/http/HttpRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

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
    :goto_f
    if-ge v5, v6, :cond_40

    aget-object v3, v0, v5

    .line 125
    .local v3, "h":Lorg/apache/http/Header;
    invoke-interface {v3}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v1

    .local v1, "arr$":[Lorg/apache/http/HeaderElement;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_19
    if-ge v4, v7, :cond_3c

    aget-object v2, v1, v4

    .line 126
    .local v2, "elt":Lorg/apache/http/HeaderElement;
    sget-object v10, Lorg/apache/http/impl/client/cache/RequestProtocolCompliance;->disallowedWithNoCache:Ljava/util/List;

    invoke-interface {v2}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2c

    .line 127
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_2c
    const-string v10, "no-cache"

    invoke-interface {v2}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_39

    .line 130
    const/4 v9, 0x1

    .line 125
    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 124
    .end local v2    # "elt":Lorg/apache/http/HeaderElement;
    :cond_3c
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_f

    .line 134
    .end local v1    # "arr$":[Lorg/apache/http/HeaderElement;
    .end local v3    # "h":Lorg/apache/http/Header;
    .end local v7    # "len$":I
    :cond_40
    if-nez v9, :cond_43

    .line 137
    :goto_42
    return-void

    .line 135
    :cond_43
    const-string v10, "Cache-Control"

    invoke-interface {p1, v10}, Lorg/apache/http/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    .line 136
    const-string v10, "Cache-Control"

    invoke-direct {p0, v8}, Lorg/apache/http/impl/client/cache/RequestProtocolCompliance;->buildHeaderFromElements(Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v10, v11}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42
.end method

.method private upgradeRequestTo(Lorg/apache/http/HttpRequest;Lorg/apache/http/ProtocolVersion;)Lorg/apache/http/HttpRequest;
    .registers 6
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "version"    # Lorg/apache/http/ProtocolVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 255
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V
    :try_end_5
    .catch Lorg/apache/http/ProtocolException; {:try_start_0 .. :try_end_5} :catch_9

    .line 259
    .local v0, "newRequest":Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual {v0, p2}, Lorg/apache/http/impl/client/RequestWrapper;->setProtocolVersion(Lorg/apache/http/ProtocolVersion;)V

    .line 261
    return-object v0

    .line 256
    .end local v0    # "newRequest":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_9
    move-exception v1

    .line 257
    .local v1, "pe":Lorg/apache/http/ProtocolException;
    new-instance v2, Lorg/apache/http/client/ClientProtocolException;

    invoke-direct {v2, v1}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private verifyOPTIONSRequestWithBodyHasContentType(Lorg/apache/http/HttpRequest;)V
    .registers 4
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 175
    const-string v0, "OPTIONS"

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 184
    .end local p1    # "request":Lorg/apache/http/HttpRequest;
    :cond_10
    :goto_10
    return-void

    .line 179
    .restart local p1    # "request":Lorg/apache/http/HttpRequest;
    :cond_11
    instance-of v0, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_10

    .line 183
    check-cast p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    .end local p1    # "request":Lorg/apache/http/HttpRequest;
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/cache/RequestProtocolCompliance;->addContentTypeHeaderIfMissing(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    goto :goto_10
.end method

.method private verifyRequestWithExpectContinueFlagHas100continueHeader(Lorg/apache/http/HttpRequest;)V
    .registers 3
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 194
    instance-of v0, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_1e

    move-object v0, p1

    .line 196
    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v0}, Lorg/apache/http/HttpEntityEnclosingRequest;->expectContinue()Z

    move-result v0

    if-eqz v0, :cond_1a

    move-object v0, p1

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 198
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/cache/RequestProtocolCompliance;->add100ContinueHeaderIfMissing(Lorg/apache/http/HttpRequest;)V

    .line 205
    :goto_19
    return-void

    .line 200
    :cond_1a
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/cache/RequestProtocolCompliance;->remove100ContinueHeaderIfExists(Lorg/apache/http/HttpRequest;)V

    goto :goto_19

    .line 203
    :cond_1e
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/cache/RequestProtocolCompliance;->remove100ContinueHeaderIfExists(Lorg/apache/http/HttpRequest;)V

    goto :goto_19
.end method


# virtual methods
.method public getErrorForRequest(Lorg/apache/http/impl/client/cache/RequestProtocolError;)Lorg/apache/http/HttpResponse;
    .registers 7
    .param p1, "errorCheck"    # Lorg/apache/http/impl/client/cache/RequestProtocolError;

    .prologue
    const/16 v4, 0x190

    .line 302
    sget-object v0, Lorg/apache/http/impl/client/cache/RequestProtocolCompliance$1;->$SwitchMap$org$apache$http$impl$client$cache$RequestProtocolError:[I

    invoke-virtual {p1}, Lorg/apache/http/impl/client/cache/RequestProtocolError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_54

    .line 322
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The request was compliant, therefore no error can be generated for it."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :pswitch_15
    new-instance v0, Lorg/apache/http/message/BasicHttpResponse;

    new-instance v1, Lorg/apache/http/message/BasicStatusLine;

    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    const/16 v3, 0x19b

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    .line 317
    :goto_25
    return-object v0

    .line 308
    :pswitch_26
    new-instance v0, Lorg/apache/http/message/BasicHttpResponse;

    new-instance v1, Lorg/apache/http/message/BasicStatusLine;

    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    const-string v3, "Weak eTag not compatible with byte range"

    invoke-direct {v1, v2, v4, v3}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    goto :goto_25

    .line 312
    :pswitch_35
    new-instance v0, Lorg/apache/http/message/BasicHttpResponse;

    new-instance v1, Lorg/apache/http/message/BasicStatusLine;

    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    const-string v3, "Weak eTag not compatible with PUT or DELETE requests"

    invoke-direct {v1, v2, v4, v3}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    goto :goto_25

    .line 317
    :pswitch_44
    new-instance v0, Lorg/apache/http/message/BasicHttpResponse;

    new-instance v1, Lorg/apache/http/message/BasicStatusLine;

    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    const-string v3, "No-Cache directive MUST NOT include a field name"

    invoke-direct {v1, v2, v4, v3}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    goto :goto_25

    .line 302
    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_15
        :pswitch_26
        :pswitch_35
        :pswitch_44
    .end packed-switch
.end method

.method public makeRequestCompliant(Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpRequest;
    .registers 4
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/cache/RequestProtocolCompliance;->requestMustNotHaveEntity(Lorg/apache/http/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v0, p1

    .line 102
    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 105
    :cond_d
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/cache/RequestProtocolCompliance;->verifyRequestWithExpectContinueFlagHas100continueHeader(Lorg/apache/http/HttpRequest;)V

    .line 106
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/cache/RequestProtocolCompliance;->verifyOPTIONSRequestWithBodyHasContentType(Lorg/apache/http/HttpRequest;)V

    .line 107
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/cache/RequestProtocolCompliance;->decrementOPTIONSMaxForwardsIfGreaterThen0(Lorg/apache/http/HttpRequest;)V

    .line 108
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/cache/RequestProtocolCompliance;->stripOtherFreshnessDirectivesWithNoCache(Lorg/apache/http/HttpRequest;)V

    .line 110
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/cache/RequestProtocolCompliance;->requestVersionIsTooLow(Lorg/apache/http/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 111
    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/client/cache/RequestProtocolCompliance;->upgradeRequestTo(Lorg/apache/http/HttpRequest;Lorg/apache/http/ProtocolVersion;)Lorg/apache/http/HttpRequest;

    move-result-object p1

    .line 118
    .end local p1    # "request":Lorg/apache/http/HttpRequest;
    :cond_25
    :goto_25
    return-object p1

    .line 114
    .restart local p1    # "request":Lorg/apache/http/HttpRequest;
    :cond_26
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/cache/RequestProtocolCompliance;->requestMinorVersionIsTooHighMajorVersionsMatch(Lorg/apache/http/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 115
    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/client/cache/RequestProtocolCompliance;->downgradeRequestTo(Lorg/apache/http/HttpRequest;Lorg/apache/http/ProtocolVersion;)Lorg/apache/http/HttpRequest;

    move-result-object p1

    goto :goto_25
.end method

.method public requestIsFatallyNonCompliant(Lorg/apache/http/HttpRequest;)Ljava/util/List;
    .registers 4
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpRequest;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/impl/client/cache/RequestProtocolError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v1, "theErrors":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/impl/client/cache/RequestProtocolError;>;"
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/cache/RequestProtocolCompliance;->requestHasWeakETagAndRange(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/cache/RequestProtocolError;

    move-result-object v0

    .line 73
    .local v0, "anError":Lorg/apache/http/impl/client/cache/RequestProtocolError;
    if-eqz v0, :cond_e

    .line 74
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_e
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/cache/RequestProtocolCompliance;->requestHasWeekETagForPUTOrDELETEIfMatch(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/cache/RequestProtocolError;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_17

    .line 79
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_17
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/cache/RequestProtocolCompliance;->requestContainsNoCacheDirectiveWithFieldName(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/cache/RequestProtocolError;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_20

    .line 84
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_20
    return-object v1
.end method

.method protected requestMinorVersionIsTooHighMajorVersionsMatch(Lorg/apache/http/HttpRequest;)Z
    .registers 6
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    const/4 v1, 0x0

    .line 278
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    .line 279
    .local v0, "requestProtocol":Lorg/apache/http/ProtocolVersion;
    invoke-virtual {v0}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    move-result v2

    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-virtual {v3}, Lorg/apache/http/HttpVersion;->getMajor()I

    move-result v3

    if-eq v2, v3, :cond_12

    .line 287
    :cond_11
    :goto_11
    return v1

    .line 283
    :cond_12
    invoke-virtual {v0}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    move-result v2

    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-virtual {v3}, Lorg/apache/http/HttpVersion;->getMinor()I

    move-result v3

    if-le v2, v3, :cond_11

    .line 284
    const/4 v1, 0x1

    goto :goto_11
.end method

.method protected requestVersionIsTooLow(Lorg/apache/http/HttpRequest;)Z
    .registers 4
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 291
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-virtual {v0, v1}, Lorg/apache/http/ProtocolVersion;->compareToVersion(Lorg/apache/http/ProtocolVersion;)I

    move-result v0

    if-gez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
