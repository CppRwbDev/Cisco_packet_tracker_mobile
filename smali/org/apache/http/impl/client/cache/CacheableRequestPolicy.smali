.class Lorg/apache/http/impl/client/cache/CacheableRequestPolicy;
.super Ljava/lang/Object;
.source "CacheableRequestPolicy.java"


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/cache/CacheableRequestPolicy;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method


# virtual methods
.method public isServableFromCache(Lorg/apache/http/HttpRequest;)Z
    .registers 16
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    const/4 v11, 0x0

    .line 57
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v9

    .line 59
    .local v9, "method":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/RequestLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v10

    .line 60
    .local v10, "pv":Lorg/apache/http/ProtocolVersion;
    sget-object v12, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-virtual {v12, v10}, Lorg/apache/http/HttpVersion;->compareToVersion(Lorg/apache/http/ProtocolVersion;)I

    move-result v12

    if-eqz v12, :cond_21

    .line 61
    iget-object v12, p0, Lorg/apache/http/impl/client/cache/CacheableRequestPolicy;->log:Lorg/apache/commons/logging/Log;

    const-string v13, "non-HTTP/1.1 request was not serveable from cache"

    invoke-interface {v12, v13}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 93
    :goto_20
    return v11

    .line 65
    :cond_21
    const-string v12, "GET"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_31

    .line 66
    iget-object v12, p0, Lorg/apache/http/impl/client/cache/CacheableRequestPolicy;->log:Lorg/apache/commons/logging/Log;

    const-string v13, "non-GET request was not serveable from cache"

    invoke-interface {v12, v13}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    goto :goto_20

    .line 70
    :cond_31
    const-string v12, "Pragma"

    invoke-interface {p1, v12}, Lorg/apache/http/HttpRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v12

    array-length v12, v12

    if-lez v12, :cond_42

    .line 71
    iget-object v12, p0, Lorg/apache/http/impl/client/cache/CacheableRequestPolicy;->log:Lorg/apache/commons/logging/Log;

    const-string v13, "request with Pragma header was not serveable from cache"

    invoke-interface {v12, v13}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    goto :goto_20

    .line 75
    :cond_42
    const-string v12, "Cache-Control"

    invoke-interface {p1, v12}, Lorg/apache/http/HttpRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v4

    .line 76
    .local v4, "cacheControlHeaders":[Lorg/apache/http/Header;
    move-object v0, v4

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
    :goto_4c
    if-ge v6, v7, :cond_89

    aget-object v2, v0, v6

    .line 77
    .local v2, "cacheControl":Lorg/apache/http/Header;
    invoke-interface {v2}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v1

    .local v1, "arr$":[Lorg/apache/http/HeaderElement;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v5, 0x0

    .end local v6    # "i$":I
    .restart local v5    # "i$":I
    :goto_56
    if-ge v5, v8, :cond_85

    aget-object v3, v1, v5

    .line 78
    .local v3, "cacheControlElement":Lorg/apache/http/HeaderElement;
    const-string v12, "no-store"

    invoke-interface {v3}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6e

    .line 80
    iget-object v12, p0, Lorg/apache/http/impl/client/cache/CacheableRequestPolicy;->log:Lorg/apache/commons/logging/Log;

    const-string v13, "Request with no-store was not serveable from cache"

    invoke-interface {v12, v13}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    goto :goto_20

    .line 84
    :cond_6e
    const-string v12, "no-cache"

    invoke-interface {v3}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_82

    .line 86
    iget-object v12, p0, Lorg/apache/http/impl/client/cache/CacheableRequestPolicy;->log:Lorg/apache/commons/logging/Log;

    const-string v13, "Request with no-cache was not serveable from cache"

    invoke-interface {v12, v13}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    goto :goto_20

    .line 77
    :cond_82
    add-int/lit8 v5, v5, 0x1

    goto :goto_56

    .line 76
    .end local v3    # "cacheControlElement":Lorg/apache/http/HeaderElement;
    :cond_85
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5    # "i$":I
    .restart local v6    # "i$":I
    goto :goto_4c

    .line 92
    .end local v1    # "arr$":[Lorg/apache/http/HeaderElement;
    .end local v2    # "cacheControl":Lorg/apache/http/Header;
    .end local v8    # "len$":I
    :cond_89
    iget-object v11, p0, Lorg/apache/http/impl/client/cache/CacheableRequestPolicy;->log:Lorg/apache/commons/logging/Log;

    const-string v12, "Request was serveable from cache"

    invoke-interface {v11, v12}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 93
    const/4 v11, 0x1

    goto :goto_20
.end method
