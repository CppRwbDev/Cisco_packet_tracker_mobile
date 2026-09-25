.class public final Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;
.super Ljava/lang/Object;
.source "DropboxAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/client2/DropboxAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ChunkedUploadRequest"
.end annotation


# instance fields
.field private final request:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final session:Lcom/dropbox/client2/session/Session;


# direct methods
.method protected constructor <init>(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/dropbox/client2/session/Session;)V
    .registers 3
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "session"    # Lcom/dropbox/client2/session/Session;

    .prologue
    .line 1034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1035
    iput-object p1, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 1036
    iput-object p2, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;->session:Lcom/dropbox/client2/session/Session;

    .line 1037
    return-void
.end method


# virtual methods
.method public abort()V
    .registers 2

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 1045
    return-void
.end method

.method public upload()Lcom/dropbox/client2/DropboxAPI$ChunkedUploadResponse;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 1065
    :try_start_0
    iget-object v3, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;->session:Lcom/dropbox/client2/session/Session;

    iget-object v4, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    const v5, 0x2bf20

    invoke-static {v3, v4, v5}, Lcom/dropbox/client2/RESTUtility;->execute(Lcom/dropbox/client2/session/Session;Lorg/apache/http/client/methods/HttpUriRequest;I)Lorg/apache/http/HttpResponse;
    :try_end_a
    .catch Lcom/dropbox/client2/exception/DropboxIOException; {:try_start_0 .. :try_end_a} :catch_17

    move-result-object v2

    .line 1074
    .local v2, "hresp":Lorg/apache/http/HttpResponse;
    invoke-static {v2}, Lcom/dropbox/client2/RESTUtility;->parseAsJSON(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1075
    .local v1, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Lcom/dropbox/client2/DropboxAPI$ChunkedUploadResponse;

    invoke-direct {v3, v1}, Lcom/dropbox/client2/DropboxAPI$ChunkedUploadResponse;-><init>(Ljava/util/Map;)V

    return-object v3

    .line 1066
    .end local v1    # "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "hresp":Lorg/apache/http/HttpResponse;
    :catch_17
    move-exception v0

    .line 1067
    .local v0, "e":Lcom/dropbox/client2/exception/DropboxIOException;
    iget-object v3, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1068
    new-instance v3, Lcom/dropbox/client2/exception/DropboxPartialFileException;

    const-wide/16 v4, -0x1

    invoke-direct {v3, v4, v5}, Lcom/dropbox/client2/exception/DropboxPartialFileException;-><init>(J)V

    throw v3

    .line 1070
    :cond_28
    throw v0
.end method
