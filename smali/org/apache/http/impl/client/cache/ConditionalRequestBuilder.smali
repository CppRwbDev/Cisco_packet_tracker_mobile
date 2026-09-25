.class Lorg/apache/http/impl/client/cache/ConditionalRequestBuilder;
.super Ljava/lang/Object;
.source "ConditionalRequestBuilder.java"


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const-class v0, Lorg/apache/http/impl/client/cache/ConditionalRequestBuilder;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/client/cache/ConditionalRequestBuilder;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildConditionalRequest(Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;)Lorg/apache/http/HttpRequest;
    .registers 18
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "cacheEntry"    # Lorg/apache/http/client/cache/HttpCacheEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v12, Lorg/apache/http/impl/client/RequestWrapper;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V

    .line 63
    .local v12, "wrapperRequest":Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual {v12}, Lorg/apache/http/impl/client/RequestWrapper;->resetHeaders()V

    .line 64
    const-string v13, "ETag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/apache/http/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 65
    .local v3, "eTag":Lorg/apache/http/Header;
    if-eqz v3, :cond_1d

    .line 66
    const-string v13, "If-None-Match"

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/apache/http/impl/client/RequestWrapper;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_1d
    const-string v13, "Last-Modified"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/apache/http/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v8

    .line 69
    .local v8, "lastModified":Lorg/apache/http/Header;
    if-eqz v8, :cond_30

    .line 70
    const-string v13, "If-Modified-Since"

    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/apache/http/impl/client/RequestWrapper;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_30
    const/4 v11, 0x0

    .line 73
    .local v11, "mustRevalidate":Z
    const-string v13, "Cache-Control"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/apache/http/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    .local v1, "arr$":[Lorg/apache/http/Header;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v7, v6

    .end local v1    # "arr$":[Lorg/apache/http/Header;
    .end local v6    # "i$":I
    .end local v9    # "len$":I
    .local v7, "i$":I
    :goto_3c
    if-ge v7, v9, :cond_6a

    aget-object v5, v1, v7

    .line 74
    .local v5, "h":Lorg/apache/http/Header;
    invoke-interface {v5}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v2

    .local v2, "arr$":[Lorg/apache/http/HeaderElement;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    :goto_46
    if-ge v6, v10, :cond_63

    aget-object v4, v2, v6

    .line 75
    .local v4, "elt":Lorg/apache/http/HeaderElement;
    const-string v13, "must-revalidate"

    invoke-interface {v4}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_62

    const-string v13, "proxy-revalidate"

    invoke-interface {v4}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_67

    .line 77
    :cond_62
    const/4 v11, 0x1

    .line 73
    .end local v4    # "elt":Lorg/apache/http/HeaderElement;
    :cond_63
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    .end local v6    # "i$":I
    .restart local v7    # "i$":I
    goto :goto_3c

    .line 74
    .end local v7    # "i$":I
    .restart local v4    # "elt":Lorg/apache/http/HeaderElement;
    .restart local v6    # "i$":I
    :cond_67
    add-int/lit8 v6, v6, 0x1

    goto :goto_46

    .line 82
    .end local v2    # "arr$":[Lorg/apache/http/HeaderElement;
    .end local v4    # "elt":Lorg/apache/http/HeaderElement;
    .end local v5    # "h":Lorg/apache/http/Header;
    .end local v6    # "i$":I
    .end local v10    # "len$":I
    .restart local v7    # "i$":I
    :cond_6a
    if-eqz v11, :cond_73

    .line 83
    const-string v13, "Cache-Control"

    const-string v14, "max-age=0"

    invoke-virtual {v12, v13, v14}, Lorg/apache/http/impl/client/RequestWrapper;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_73
    return-object v12
.end method

.method public buildConditionalRequestFromVariants(Lorg/apache/http/HttpRequest;Ljava/util/Map;)Lorg/apache/http/HttpRequest;
    .registers 11
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/impl/client/cache/Variant;",
            ">;)",
            "Lorg/apache/http/HttpRequest;"
        }
    .end annotation

    .prologue
    .line 103
    .local p2, "variants":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/impl/client/cache/Variant;>;"
    :try_start_0
    new-instance v5, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-direct {v5, p1}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V
    :try_end_5
    .catch Lorg/apache/http/ProtocolException; {:try_start_0 .. :try_end_5} :catch_2e

    .line 108
    .local v5, "wrapperRequest":Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual {v5}, Lorg/apache/http/impl/client/RequestWrapper;->resetHeaders()V

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v1, "etags":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 113
    .local v2, "first":Z
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    .local v0, "etag":Ljava/lang/String;
    if-nez v2, :cond_29

    .line 115
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_29
    const/4 v2, 0x0

    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 104
    .end local v0    # "etag":Ljava/lang/String;
    .end local v1    # "etags":Ljava/lang/StringBuilder;
    .end local v2    # "first":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "wrapperRequest":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_2e
    move-exception v4

    .line 105
    .local v4, "pe":Lorg/apache/http/ProtocolException;
    sget-object v6, Lorg/apache/http/impl/client/cache/ConditionalRequestBuilder;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "unable to build conditional request"

    invoke-interface {v6, v7, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v5, p1

    .line 122
    .end local v4    # "pe":Lorg/apache/http/ProtocolException;
    :goto_37
    return-object v5

    .line 121
    .restart local v1    # "etags":Ljava/lang/StringBuilder;
    .restart local v2    # "first":Z
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "wrapperRequest":Lorg/apache/http/impl/client/RequestWrapper;
    :cond_38
    const-string v6, "If-None-Match"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/apache/http/impl/client/RequestWrapper;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37
.end method

.method public buildUnconditionalRequest(Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;)Lorg/apache/http/HttpRequest;
    .registers 7
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "entry"    # Lorg/apache/http/client/cache/HttpCacheEntry;

    .prologue
    .line 139
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-direct {v1, p1}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V
    :try_end_5
    .catch Lorg/apache/http/ProtocolException; {:try_start_0 .. :try_end_5} :catch_30

    .line 144
    .local v1, "wrapped":Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual {v1}, Lorg/apache/http/impl/client/RequestWrapper;->resetHeaders()V

    .line 145
    const-string v2, "Cache-Control"

    const-string v3, "no-cache"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/RequestWrapper;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v2, "Pragma"

    const-string v3, "no-cache"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/RequestWrapper;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v2, "If-Range"

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/RequestWrapper;->removeHeaders(Ljava/lang/String;)V

    .line 148
    const-string v2, "If-Match"

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/RequestWrapper;->removeHeaders(Ljava/lang/String;)V

    .line 149
    const-string v2, "If-None-Match"

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/RequestWrapper;->removeHeaders(Ljava/lang/String;)V

    .line 150
    const-string v2, "If-Unmodified-Since"

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/RequestWrapper;->removeHeaders(Ljava/lang/String;)V

    .line 151
    const-string v2, "If-Modified-Since"

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/RequestWrapper;->removeHeaders(Ljava/lang/String;)V

    .line 152
    .end local v1    # "wrapped":Lorg/apache/http/impl/client/RequestWrapper;
    :goto_2f
    return-object v1

    .line 140
    :catch_30
    move-exception v0

    .line 141
    .local v0, "e":Lorg/apache/http/ProtocolException;
    sget-object v2, Lorg/apache/http/impl/client/cache/ConditionalRequestBuilder;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "unable to build proper unconditional request"

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v1, p1

    .line 142
    goto :goto_2f
.end method
