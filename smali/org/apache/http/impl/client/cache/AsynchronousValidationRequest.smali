.class Lorg/apache/http/impl/client/cache/AsynchronousValidationRequest;
.super Ljava/lang/Object;
.source "AsynchronousValidationRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final cacheEntry:Lorg/apache/http/client/cache/HttpCacheEntry;

.field private final cachingClient:Lorg/apache/http/impl/client/cache/CachingHttpClient;

.field private final context:Lorg/apache/http/protocol/HttpContext;

.field private final identifier:Ljava/lang/String;

.field private final log:Lorg/apache/commons/logging/Log;

.field private final parent:Lorg/apache/http/impl/client/cache/AsynchronousValidator;

.field private final request:Lorg/apache/http/HttpRequest;

.field private final target:Lorg/apache/http/HttpHost;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/client/cache/AsynchronousValidator;Lorg/apache/http/impl/client/cache/CachingHttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/lang/String;)V
    .registers 9
    .param p1, "parent"    # Lorg/apache/http/impl/client/cache/AsynchronousValidator;
    .param p2, "cachingClient"    # Lorg/apache/http/impl/client/cache/CachingHttpClient;
    .param p3, "target"    # Lorg/apache/http/HttpHost;
    .param p4, "request"    # Lorg/apache/http/HttpRequest;
    .param p5, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p6, "cacheEntry"    # Lorg/apache/http/client/cache/HttpCacheEntry;
    .param p7, "identifier"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/cache/AsynchronousValidationRequest;->log:Lorg/apache/commons/logging/Log;

    .line 69
    iput-object p1, p0, Lorg/apache/http/impl/client/cache/AsynchronousValidationRequest;->parent:Lorg/apache/http/impl/client/cache/AsynchronousValidator;

    .line 70
    iput-object p2, p0, Lorg/apache/http/impl/client/cache/AsynchronousValidationRequest;->cachingClient:Lorg/apache/http/impl/client/cache/CachingHttpClient;

    .line 71
    iput-object p3, p0, Lorg/apache/http/impl/client/cache/AsynchronousValidationRequest;->target:Lorg/apache/http/HttpHost;

    .line 72
    iput-object p4, p0, Lorg/apache/http/impl/client/cache/AsynchronousValidationRequest;->request:Lorg/apache/http/HttpRequest;

    .line 73
    iput-object p5, p0, Lorg/apache/http/impl/client/cache/AsynchronousValidationRequest;->context:Lorg/apache/http/protocol/HttpContext;

    .line 74
    iput-object p6, p0, Lorg/apache/http/impl/client/cache/AsynchronousValidationRequest;->cacheEntry:Lorg/apache/http/client/cache/HttpCacheEntry;

    .line 75
    iput-object p7, p0, Lorg/apache/http/impl/client/cache/AsynchronousValidationRequest;->identifier:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method getIdentifier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/AsynchronousValidationRequest;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .registers 8

    .prologue
    .line 80
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/AsynchronousValidationRequest;->cachingClient:Lorg/apache/http/impl/client/cache/CachingHttpClient;

    iget-object v3, p0, Lorg/apache/http/impl/client/cache/AsynchronousValidationRequest;->target:Lorg/apache/http/HttpHost;

    iget-object v4, p0, Lorg/apache/http/impl/client/cache/AsynchronousValidationRequest;->request:Lorg/apache/http/HttpRequest;

    iget-object v5, p0, Lorg/apache/http/impl/client/cache/AsynchronousValidationRequest;->context:Lorg/apache/http/protocol/HttpContext;

    iget-object v6, p0, Lorg/apache/http/impl/client/cache/AsynchronousValidationRequest;->cacheEntry:Lorg/apache/http/client/cache/HttpCacheEntry;

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/apache/http/impl/client/cache/CachingHttpClient;->revalidateCacheEntry(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/cache/HttpCacheEntry;)Lorg/apache/http/HttpResponse;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_15
    .catch Lorg/apache/http/ProtocolException; {:try_start_0 .. :try_end_d} :catch_36
    .catchall {:try_start_0 .. :try_end_d} :catchall_57

    .line 86
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/AsynchronousValidationRequest;->parent:Lorg/apache/http/impl/client/cache/AsynchronousValidator;

    iget-object v3, p0, Lorg/apache/http/impl/client/cache/AsynchronousValidationRequest;->identifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/cache/AsynchronousValidator;->markComplete(Ljava/lang/String;)V

    .line 88
    :goto_14
    return-void

    .line 81
    :catch_15
    move-exception v0

    .line 82
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_16
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/AsynchronousValidationRequest;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asynchronous revalidation failed due to exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_16 .. :try_end_2e} :catchall_57

    .line 86
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/AsynchronousValidationRequest;->parent:Lorg/apache/http/impl/client/cache/AsynchronousValidator;

    iget-object v3, p0, Lorg/apache/http/impl/client/cache/AsynchronousValidationRequest;->identifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/cache/AsynchronousValidator;->markComplete(Ljava/lang/String;)V

    goto :goto_14

    .line 83
    .end local v0    # "ioe":Ljava/io/IOException;
    :catch_36
    move-exception v1

    .line 84
    .local v1, "pe":Lorg/apache/http/ProtocolException;
    :try_start_37
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/AsynchronousValidationRequest;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ProtocolException thrown during asynchronous revalidation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V
    :try_end_4f
    .catchall {:try_start_37 .. :try_end_4f} :catchall_57

    .line 86
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/AsynchronousValidationRequest;->parent:Lorg/apache/http/impl/client/cache/AsynchronousValidator;

    iget-object v3, p0, Lorg/apache/http/impl/client/cache/AsynchronousValidationRequest;->identifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/cache/AsynchronousValidator;->markComplete(Ljava/lang/String;)V

    goto :goto_14

    .end local v1    # "pe":Lorg/apache/http/ProtocolException;
    :catchall_57
    move-exception v2

    iget-object v3, p0, Lorg/apache/http/impl/client/cache/AsynchronousValidationRequest;->parent:Lorg/apache/http/impl/client/cache/AsynchronousValidator;

    iget-object v4, p0, Lorg/apache/http/impl/client/cache/AsynchronousValidationRequest;->identifier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/cache/AsynchronousValidator;->markComplete(Ljava/lang/String;)V

    throw v2
.end method
