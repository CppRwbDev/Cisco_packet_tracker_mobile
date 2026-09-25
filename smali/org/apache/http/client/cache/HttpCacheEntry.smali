.class public Lorg/apache/http/client/cache/HttpCacheEntry;
.super Ljava/lang/Object;
.source "HttpCacheEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x576fdc1d5b5b2ca5L


# instance fields
.field private final requestDate:Ljava/util/Date;

.field private final resource:Lorg/apache/http/client/cache/Resource;

.field private final responseDate:Ljava/util/Date;

.field private final responseHeaders:Lorg/apache/http/message/HeaderGroup;

.field private final statusLine:Lorg/apache/http/StatusLine;

.field private final variantMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;Lorg/apache/http/StatusLine;[Lorg/apache/http/Header;Lorg/apache/http/client/cache/Resource;)V
    .registers 13
    .param p1, "requestDate"    # Ljava/util/Date;
    .param p2, "responseDate"    # Ljava/util/Date;
    .param p3, "statusLine"    # Lorg/apache/http/StatusLine;
    .param p4, "responseHeaders"    # [Lorg/apache/http/Header;
    .param p5, "resource"    # Lorg/apache/http/client/cache/Resource;

    .prologue
    .line 128
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/http/client/cache/HttpCacheEntry;-><init>(Ljava/util/Date;Ljava/util/Date;Lorg/apache/http/StatusLine;[Lorg/apache/http/Header;Lorg/apache/http/client/cache/Resource;Ljava/util/Map;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;Lorg/apache/http/StatusLine;[Lorg/apache/http/Header;Lorg/apache/http/client/cache/Resource;Ljava/util/Map;)V
    .registers 9
    .param p1, "requestDate"    # Ljava/util/Date;
    .param p2, "responseDate"    # Ljava/util/Date;
    .param p3, "statusLine"    # Lorg/apache/http/StatusLine;
    .param p4, "responseHeaders"    # [Lorg/apache/http/Header;
    .param p5, "resource"    # Lorg/apache/http/client/cache/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Lorg/apache/http/StatusLine;",
            "[",
            "Lorg/apache/http/Header;",
            "Lorg/apache/http/client/cache/Resource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p6, "variantMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    if-nez p1, :cond_d

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request date may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_d
    if-nez p2, :cond_17

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response date may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_17
    if-nez p3, :cond_21

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Status line may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_21
    if-nez p4, :cond_2b

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response headers may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_2b
    iput-object p1, p0, Lorg/apache/http/client/cache/HttpCacheEntry;->requestDate:Ljava/util/Date;

    .line 101
    iput-object p2, p0, Lorg/apache/http/client/cache/HttpCacheEntry;->responseDate:Ljava/util/Date;

    .line 102
    iput-object p3, p0, Lorg/apache/http/client/cache/HttpCacheEntry;->statusLine:Lorg/apache/http/StatusLine;

    .line 103
    new-instance v0, Lorg/apache/http/message/HeaderGroup;

    invoke-direct {v0}, Lorg/apache/http/message/HeaderGroup;-><init>()V

    iput-object v0, p0, Lorg/apache/http/client/cache/HttpCacheEntry;->responseHeaders:Lorg/apache/http/message/HeaderGroup;

    .line 104
    iget-object v0, p0, Lorg/apache/http/client/cache/HttpCacheEntry;->responseHeaders:Lorg/apache/http/message/HeaderGroup;

    invoke-virtual {v0, p4}, Lorg/apache/http/message/HeaderGroup;->setHeaders([Lorg/apache/http/Header;)V

    .line 105
    iput-object p5, p0, Lorg/apache/http/client/cache/HttpCacheEntry;->resource:Lorg/apache/http/client/cache/Resource;

    .line 106
    if-eqz p6, :cond_49

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_46
    iput-object v0, p0, Lorg/apache/http/client/cache/HttpCacheEntry;->variantMap:Ljava/util/Map;

    .line 109
    return-void

    .line 106
    :cond_49
    const/4 v0, 0x0

    goto :goto_46
.end method


# virtual methods
.method public getAllHeaders()[Lorg/apache/http/Header;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lorg/apache/http/client/cache/HttpCacheEntry;->responseHeaders:Lorg/apache/http/message/HeaderGroup;

    invoke-virtual {v0}, Lorg/apache/http/message/HeaderGroup;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 190
    iget-object v0, p0, Lorg/apache/http/client/cache/HttpCacheEntry;->responseHeaders:Lorg/apache/http/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lorg/apache/http/message/HeaderGroup;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 198
    iget-object v0, p0, Lorg/apache/http/client/cache/HttpCacheEntry;->responseHeaders:Lorg/apache/http/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lorg/apache/http/message/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolVersion()Lorg/apache/http/ProtocolVersion;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lorg/apache/http/client/cache/HttpCacheEntry;->statusLine:Lorg/apache/http/StatusLine;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lorg/apache/http/client/cache/HttpCacheEntry;->statusLine:Lorg/apache/http/StatusLine;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/http/client/cache/HttpCacheEntry;->requestDate:Ljava/util/Date;

    return-object v0
.end method

.method public getResource()Lorg/apache/http/client/cache/Resource;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lorg/apache/http/client/cache/HttpCacheEntry;->resource:Lorg/apache/http/client/cache/Resource;

    return-object v0
.end method

.method public getResponseDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lorg/apache/http/client/cache/HttpCacheEntry;->responseDate:Ljava/util/Date;

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/http/client/cache/HttpCacheEntry;->statusLine:Lorg/apache/http/StatusLine;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public getStatusLine()Lorg/apache/http/StatusLine;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/http/client/cache/HttpCacheEntry;->statusLine:Lorg/apache/http/StatusLine;

    return-object v0
.end method

.method public getVariantMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lorg/apache/http/client/cache/HttpCacheEntry;->variantMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public hasVariants()Z
    .registers 2

    .prologue
    .line 215
    const-string v0, "Vary"

    invoke-virtual {p0, v0}, Lorg/apache/http/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[request date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/client/cache/HttpCacheEntry;->requestDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; response date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/client/cache/HttpCacheEntry;->responseDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; statusLine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/client/cache/HttpCacheEntry;->statusLine:Lorg/apache/http/StatusLine;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
