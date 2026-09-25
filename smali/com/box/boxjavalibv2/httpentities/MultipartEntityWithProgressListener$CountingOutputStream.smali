.class Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener$CountingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "MultipartEntityWithProgressListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CountingOutputStream"
.end annotation


# instance fields
.field private bytesBransferred:J

.field private lastOnProgressPost:J

.field private final mProgresslistener:Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "progressListener"    # Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

    .prologue
    const-wide/16 v0, 0x0

    .line 141
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 130
    iput-wide v0, p0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener$CountingOutputStream;->lastOnProgressPost:J

    .line 142
    iput-object p2, p0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener$CountingOutputStream;->mProgresslistener:Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

    .line 143
    iput-wide v0, p0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener$CountingOutputStream;->bytesBransferred:J

    .line 144
    return-void
.end method


# virtual methods
.method public getBytesTransferred()J
    .registers 3

    .prologue
    .line 174
    iget-wide v0, p0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener$CountingOutputStream;->bytesBransferred:J

    return-wide v0
.end method

.method public write([BII)V
    .registers 12
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    :try_start_0
    iget-object v3, p0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_42

    .line 155
    :cond_5
    :goto_5
    iget-wide v4, p0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener$CountingOutputStream;->bytesBransferred:J

    int-to-long v6, p3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener$CountingOutputStream;->bytesBransferred:J

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 157
    .local v0, "currTime":J
    iget-object v3, p0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener$CountingOutputStream;->mProgresslistener:Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

    if-eqz v3, :cond_29

    iget-wide v4, p0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener$CountingOutputStream;->lastOnProgressPost:J

    sub-long v4, v0, v4

    invoke-static {}, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->access$000()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-lez v3, :cond_29

    .line 158
    iput-wide v0, p0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener$CountingOutputStream;->lastOnProgressPost:J

    .line 159
    iget-object v3, p0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener$CountingOutputStream;->mProgresslistener:Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

    iget-wide v4, p0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener$CountingOutputStream;->bytesBransferred:J

    invoke-interface {v3, v4, v5}, Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;->onProgress(J)V

    .line 162
    :cond_29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_4d

    iget-object v3, p0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener$CountingOutputStream;->mProgresslistener:Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

    if-eqz v3, :cond_4d

    .line 163
    iget-object v3, p0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener$CountingOutputStream;->mProgresslistener:Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

    invoke-interface {v3}, Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;->onCanceled()V

    .line 164
    new-instance v3, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener$InterruptedMultipartException;

    invoke-direct {v3}, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener$InterruptedMultipartException;-><init>()V

    throw v3

    .line 150
    .end local v0    # "currTime":J
    :catch_42
    move-exception v2

    .line 151
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener$CountingOutputStream;->mProgresslistener:Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

    if-eqz v3, :cond_5

    .line 152
    iget-object v3, p0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener$CountingOutputStream;->mProgresslistener:Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

    invoke-interface {v3, v2}, Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;->onIOException(Ljava/io/IOException;)V

    goto :goto_5

    .line 166
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "currTime":J
    :cond_4d
    return-void
.end method
