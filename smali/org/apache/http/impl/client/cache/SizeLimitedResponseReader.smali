.class Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;
.super Ljava/lang/Object;
.source "SizeLimitedResponseReader.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private consumed:Z

.field private instream:Ljava/io/InputStream;

.field private limit:Lorg/apache/http/client/cache/InputLimit;

.field private final maxResponseSizeBytes:J

.field private final request:Lorg/apache/http/HttpRequest;

.field private resource:Lorg/apache/http/client/cache/Resource;

.field private final resourceFactory:Lorg/apache/http/client/cache/ResourceFactory;

.field private final response:Lorg/apache/http/HttpResponse;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/cache/ResourceFactory;JLorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)V
    .registers 6
    .param p1, "resourceFactory"    # Lorg/apache/http/client/cache/ResourceFactory;
    .param p2, "maxResponseSizeBytes"    # J
    .param p4, "request"    # Lorg/apache/http/HttpRequest;
    .param p5, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->resourceFactory:Lorg/apache/http/client/cache/ResourceFactory;

    .line 68
    iput-wide p2, p0, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->maxResponseSizeBytes:J

    .line 69
    iput-object p4, p0, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->request:Lorg/apache/http/HttpRequest;

    .line 70
    iput-object p5, p0, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->response:Lorg/apache/http/HttpResponse;

    .line 71
    return-void
.end method

.method private doConsume()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->ensureNotConsumed()V

    .line 93
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->consumed:Z

    .line 95
    new-instance v2, Lorg/apache/http/client/cache/InputLimit;

    iget-wide v4, p0, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->maxResponseSizeBytes:J

    invoke-direct {v2, v4, v5}, Lorg/apache/http/client/cache/InputLimit;-><init>(J)V

    iput-object v2, p0, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->limit:Lorg/apache/http/client/cache/InputLimit;

    .line 97
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 98
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-nez v0, :cond_18

    .line 110
    :cond_17
    :goto_17
    return-void

    .line 101
    :cond_18
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->request:Lorg/apache/http/HttpRequest;

    invoke-interface {v2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "uri":Ljava/lang/String;
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->instream:Ljava/io/InputStream;

    .line 104
    :try_start_28
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->resourceFactory:Lorg/apache/http/client/cache/ResourceFactory;

    iget-object v3, p0, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->instream:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->limit:Lorg/apache/http/client/cache/InputLimit;

    invoke-interface {v2, v1, v3, v4}, Lorg/apache/http/client/cache/ResourceFactory;->generate(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/http/client/cache/InputLimit;)Lorg/apache/http/client/cache/Resource;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->resource:Lorg/apache/http/client/cache/Resource;
    :try_end_34
    .catchall {:try_start_28 .. :try_end_34} :catchall_42

    .line 106
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->limit:Lorg/apache/http/client/cache/InputLimit;

    invoke-virtual {v2}, Lorg/apache/http/client/cache/InputLimit;->isReached()Z

    move-result v2

    if-nez v2, :cond_17

    .line 107
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->instream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_17

    .line 106
    :catchall_42
    move-exception v2

    iget-object v3, p0, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->limit:Lorg/apache/http/client/cache/InputLimit;

    invoke-virtual {v3}, Lorg/apache/http/client/cache/InputLimit;->isReached()Z

    move-result v3

    if-nez v3, :cond_50

    .line 107
    iget-object v3, p0, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->instream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_50
    throw v2
.end method

.method private ensureConsumed()V
    .registers 3

    .prologue
    .line 86
    iget-boolean v0, p0, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->consumed:Z

    if-nez v0, :cond_c

    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Response has not been consumed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_c
    return-void
.end method

.method private ensureNotConsumed()V
    .registers 3

    .prologue
    .line 80
    iget-boolean v0, p0, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->consumed:Z

    if-eqz v0, :cond_c

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Response has already been consumed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_c
    return-void
.end method


# virtual methods
.method getReconstructedResponse()Lorg/apache/http/HttpResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0}, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->ensureConsumed()V

    .line 124
    new-instance v2, Lorg/apache/http/message/BasicHttpResponse;

    iget-object v3, p0, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    .line 125
    .local v2, "reconstructed":Lorg/apache/http/HttpResponse;
    iget-object v3, p0, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/http/HttpResponse;->setHeaders([Lorg/apache/http/Header;)V

    .line 127
    new-instance v0, Lorg/apache/http/impl/client/cache/CombinedEntity;

    iget-object v3, p0, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->resource:Lorg/apache/http/client/cache/Resource;

    iget-object v4, p0, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->instream:Ljava/io/InputStream;

    invoke-direct {v0, v3, v4}, Lorg/apache/http/impl/client/cache/CombinedEntity;-><init>(Lorg/apache/http/client/cache/Resource;Ljava/io/InputStream;)V

    .line 128
    .local v0, "combinedEntity":Lorg/apache/http/impl/client/cache/CombinedEntity;
    iget-object v3, p0, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 129
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_3d

    .line 130
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/http/impl/client/cache/CombinedEntity;->setContentType(Lorg/apache/http/Header;)V

    .line 131
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/http/impl/client/cache/CombinedEntity;->setContentEncoding(Lorg/apache/http/Header;)V

    .line 132
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v3

    invoke-virtual {v0, v3}, Lorg/apache/http/impl/client/cache/CombinedEntity;->setChunked(Z)V

    .line 134
    :cond_3d
    invoke-interface {v2, v0}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 135
    return-object v2
.end method

.method getResource()Lorg/apache/http/client/cache/Resource;
    .registers 2

    .prologue
    .line 118
    invoke-direct {p0}, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->ensureConsumed()V

    .line 119
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->resource:Lorg/apache/http/client/cache/Resource;

    return-object v0
.end method

.method isLimitReached()Z
    .registers 2

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->ensureConsumed()V

    .line 114
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->limit:Lorg/apache/http/client/cache/InputLimit;

    invoke-virtual {v0}, Lorg/apache/http/client/cache/InputLimit;->isReached()Z

    move-result v0

    return v0
.end method

.method protected readResponse()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget-boolean v0, p0, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->consumed:Z

    if-nez v0, :cond_7

    .line 75
    invoke-direct {p0}, Lorg/apache/http/impl/client/cache/SizeLimitedResponseReader;->doConsume()V

    .line 77
    :cond_7
    return-void
.end method
