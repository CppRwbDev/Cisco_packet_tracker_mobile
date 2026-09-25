.class public Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;
.super Ljava/lang/Object;
.source "BoxFileDownload.java"


# static fields
.field private static final DOWNLOAD_BUFFER_SIZE:I = 0x1000


# instance fields
.field private mBytesTransferred:J

.field private final mConfig:Lcom/box/boxjavalibv2/IBoxConfig;

.field private final mFileId:Ljava/lang/String;

.field private mListener:Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

.field private final mRestClient:Lcom/box/restclientv2/IBoxRESTClient;

.field private progressUpdateInterval:I


# direct methods
.method public constructor <init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/restclientv2/IBoxRESTClient;Ljava/lang/String;)V
    .registers 6
    .param p1, "config"    # Lcom/box/boxjavalibv2/IBoxConfig;
    .param p2, "restClient"    # Lcom/box/restclientv2/IBoxRESTClient;
    .param p3, "fileId"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/16 v0, 0x12c

    iput v0, p0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->progressUpdateInterval:I

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mBytesTransferred:J

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mListener:Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

    .line 66
    iput-object p1, p0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mConfig:Lcom/box/boxjavalibv2/IBoxConfig;

    .line 67
    iput-object p3, p0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mFileId:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mRestClient:Lcom/box/restclientv2/IBoxRESTClient;

    .line 69
    return-void
.end method

.method private copyOut(Ljava/io/InputStream;[Ljava/io/OutputStream;)V
    .registers 19
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStreams"    # [Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 217
    const/16 v9, 0x1000

    new-array v2, v9, [B

    .line 218
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 219
    .local v3, "bufferLength":I
    const-wide/16 v10, 0x0

    .line 221
    .local v10, "lastOnProgressPost":J
    :cond_7
    :goto_7
    :try_start_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_9f

    .line 222
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v9

    if-eqz v9, :cond_63

    .line 223
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mListener:Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mBytesTransferred:J

    invoke-interface {v9, v12, v13}, Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;->onProgress(J)V

    .line 224
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mListener:Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

    invoke-interface {v9}, Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;->onCanceled()V

    .line 225
    new-instance v9, Ljava/lang/InterruptedException;

    invoke-direct {v9}, Ljava/lang/InterruptedException;-><init>()V

    throw v9
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_31} :catch_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_4e

    .line 237
    :catch_31
    move-exception v6

    .line 238
    .local v6, "e":Ljava/io/IOException;
    :try_start_32
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mListener:Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

    invoke-interface {v9, v6}, Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;->onIOException(Ljava/io/IOException;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mListener:Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mBytesTransferred:J

    invoke-interface {v9, v12, v13}, Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;->onProgress(J)V

    .line 240
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mListener:Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

    const-string v12, "fail"

    invoke-interface {v9, v12}, Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;->onComplete(Ljava/lang/String;)V

    .line 241
    throw v6
    :try_end_4e
    .catchall {:try_start_32 .. :try_end_4e} :catchall_4e

    .line 245
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_4e
    move-exception v9

    const/4 v7, 0x0

    .line 246
    .local v7, "exception":Ljava/io/IOException;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_51
    move-object/from16 v0, p2

    array-length v12, v0

    if-ge v8, v12, :cond_da

    .line 248
    :try_start_56
    aget-object v12, p2, v8

    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 249
    aget-object v12, p2, v8

    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_60} :catch_d7

    .line 246
    :goto_60
    add-int/lit8 v8, v8, 0x1

    goto :goto_51

    .line 227
    .end local v7    # "exception":Ljava/io/IOException;
    .end local v8    # "i":I
    :cond_63
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_64
    :try_start_64
    move-object/from16 v0, p2

    array-length v9, v0

    if-ge v8, v9, :cond_72

    .line 228
    aget-object v9, p2, v8

    const/4 v12, 0x0

    invoke-virtual {v9, v2, v12, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 227
    add-int/lit8 v8, v8, 0x1

    goto :goto_64

    .line 230
    :cond_72
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mBytesTransferred:J

    int-to-long v14, v3

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mBytesTransferred:J

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 232
    .local v4, "currTime":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mListener:Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

    if-eqz v9, :cond_7

    sub-long v12, v4, v10

    move-object/from16 v0, p0

    iget v9, v0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->progressUpdateInterval:I

    int-to-long v14, v9

    cmp-long v9, v12, v14

    if-lez v9, :cond_7

    .line 233
    move-wide v10, v4

    .line 234
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mListener:Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mBytesTransferred:J

    invoke-interface {v9, v12, v13}, Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;->onProgress(J)V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_9d} :catch_31
    .catchall {:try_start_64 .. :try_end_9d} :catchall_4e

    goto/16 :goto_7

    .line 245
    .end local v4    # "currTime":J
    .end local v8    # "i":I
    :cond_9f
    const/4 v7, 0x0

    .line 246
    .restart local v7    # "exception":Ljava/io/IOException;
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_a1
    move-object/from16 v0, p2

    array-length v9, v0

    if-ge v8, v9, :cond_b6

    .line 248
    :try_start_a6
    aget-object v9, p2, v8

    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 249
    aget-object v9, p2, v8

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_b0} :catch_b3

    .line 246
    :goto_b0
    add-int/lit8 v8, v8, 0x1

    goto :goto_a1

    .line 250
    :catch_b3
    move-exception v6

    .line 251
    .restart local v6    # "e":Ljava/io/IOException;
    move-object v7, v6

    goto :goto_b0

    .line 254
    .end local v6    # "e":Ljava/io/IOException;
    :cond_b6
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 255
    if-eqz v7, :cond_fc

    .line 256
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mListener:Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

    invoke-interface {v9, v7}, Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;->onIOException(Ljava/io/IOException;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mListener:Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mBytesTransferred:J

    invoke-interface {v9, v12, v13}, Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;->onProgress(J)V

    .line 258
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mListener:Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

    const-string v12, "fail"

    invoke-interface {v9, v12}, Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;->onComplete(Ljava/lang/String;)V

    .line 259
    throw v7

    .line 250
    :catch_d7
    move-exception v6

    .line 251
    .restart local v6    # "e":Ljava/io/IOException;
    move-object v7, v6

    goto :goto_60

    .line 254
    .end local v6    # "e":Ljava/io/IOException;
    :cond_da
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 255
    if-eqz v7, :cond_fb

    .line 256
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mListener:Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

    invoke-interface {v9, v7}, Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;->onIOException(Ljava/io/IOException;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mListener:Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mBytesTransferred:J

    invoke-interface {v9, v12, v13}, Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;->onProgress(J)V

    .line 258
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mListener:Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

    const-string v12, "fail"

    invoke-interface {v9, v12}, Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;->onComplete(Ljava/lang/String;)V

    .line 259
    throw v7

    .line 261
    :cond_fb
    throw v9

    .line 262
    :cond_fc
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mListener:Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mBytesTransferred:J

    invoke-interface {v9, v12, v13}, Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;->onProgress(J)V

    .line 263
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mListener:Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

    const-string v12, "pass"

    invoke-interface {v9, v12}, Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;->onComplete(Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method private isPartialDownload(Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)Z
    .registers 6
    .param p1, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;

    .prologue
    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "isRangeDownload":Z
    if-eqz p1, :cond_1e

    .line 271
    invoke-virtual {p1}, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;->getRequestExtras()Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    move-result-object v2

    invoke-virtual {v2}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Range"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 272
    .local v1, "range":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1e

    check-cast v1, Ljava/lang/String;

    .end local v1    # "range":Ljava/lang/Object;
    invoke-static {v1}, Lorg/apache/commons/lang/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 273
    const/4 v0, 0x1

    .line 276
    :cond_1e
    return v0
.end method


# virtual methods
.method public execute(Lcom/box/restclientv2/authorization/IBoxRequestAuth;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)Ljava/io/InputStream;
    .registers 11
    .param p1, "auth"    # Lcom/box/restclientv2/authorization/IBoxRequestAuth;
    .param p2, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .param p3, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0, p3}, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->isPartialDownload(Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 178
    new-instance v1, Lcom/box/boxjavalibv2/requests/DownloadPartialFileRequest;

    iget-object v5, p0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mConfig:Lcom/box/boxjavalibv2/IBoxConfig;

    iget-object v6, p0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mFileId:Ljava/lang/String;

    invoke-direct {v1, v5, p2, v6, p3}, Lcom/box/boxjavalibv2/requests/DownloadPartialFileRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V

    .line 182
    .local v1, "request":Lcom/box/boxjavalibv2/requests/DownloadFileRequest;
    :goto_f
    invoke-virtual {v1, p1}, Lcom/box/boxjavalibv2/requests/DownloadFileRequest;->setAuth(Lcom/box/restclientv2/authorization/IBoxRequestAuth;)V

    .line 183
    iget-object v5, p0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mRestClient:Lcom/box/restclientv2/IBoxRESTClient;

    invoke-interface {v5, v1}, Lcom/box/restclientv2/IBoxRESTClient;->execute(Lcom/box/restclientv2/requestsbase/IBoxRequest;)Lcom/box/restclientv2/responses/IBoxResponse;

    move-result-object v2

    check-cast v2, Lcom/box/restclientv2/responses/DefaultBoxResponse;

    .line 184
    .local v2, "response":Lcom/box/restclientv2/responses/DefaultBoxResponse;
    new-instance v3, Lcom/box/restclientv2/responseparsers/DefaultFileResponseParser;

    invoke-direct {v3}, Lcom/box/restclientv2/responseparsers/DefaultFileResponseParser;-><init>()V

    .line 185
    .local v3, "responseParser":Lcom/box/restclientv2/responseparsers/DefaultFileResponseParser;
    new-instance v0, Lcom/box/boxjavalibv2/responseparsers/ErrorResponseParser;

    invoke-direct {v0, p2}, Lcom/box/boxjavalibv2/responseparsers/ErrorResponseParser;-><init>(Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)V

    .line 186
    .local v0, "errorParser":Lcom/box/boxjavalibv2/responseparsers/ErrorResponseParser;
    invoke-virtual {v2, v3, v0}, Lcom/box/restclientv2/responses/DefaultBoxResponse;->parseResponse(Lcom/box/restclientv2/responseparsers/IBoxResponseParser;Lcom/box/restclientv2/responseparsers/IBoxResponseParser;)Ljava/lang/Object;

    move-result-object v4

    .line 187
    .local v4, "result":Ljava/lang/Object;
    instance-of v5, v4, Lcom/box/boxjavalibv2/dao/BoxServerError;

    if-eqz v5, :cond_3e

    .line 188
    new-instance v5, Lcom/box/boxjavalibv2/exceptions/BoxServerException;

    check-cast v4, Lcom/box/boxjavalibv2/dao/BoxServerError;

    .end local v4    # "result":Ljava/lang/Object;
    invoke-direct {v5, v4}, Lcom/box/boxjavalibv2/exceptions/BoxServerException;-><init>(Lcom/box/boxjavalibv2/dao/BoxServerError;)V

    throw v5

    .line 180
    .end local v0    # "errorParser":Lcom/box/boxjavalibv2/responseparsers/ErrorResponseParser;
    .end local v1    # "request":Lcom/box/boxjavalibv2/requests/DownloadFileRequest;
    .end local v2    # "response":Lcom/box/restclientv2/responses/DefaultBoxResponse;
    .end local v3    # "responseParser":Lcom/box/restclientv2/responseparsers/DefaultFileResponseParser;
    :cond_34
    new-instance v1, Lcom/box/boxjavalibv2/requests/DownloadFileRequest;

    iget-object v5, p0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mConfig:Lcom/box/boxjavalibv2/IBoxConfig;

    iget-object v6, p0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mFileId:Ljava/lang/String;

    invoke-direct {v1, v5, p2, v6, p3}, Lcom/box/boxjavalibv2/requests/DownloadFileRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V

    .restart local v1    # "request":Lcom/box/boxjavalibv2/requests/DownloadFileRequest;
    goto :goto_f

    .line 190
    .restart local v0    # "errorParser":Lcom/box/boxjavalibv2/responseparsers/ErrorResponseParser;
    .restart local v2    # "response":Lcom/box/restclientv2/responses/DefaultBoxResponse;
    .restart local v3    # "responseParser":Lcom/box/restclientv2/responseparsers/DefaultFileResponseParser;
    .restart local v4    # "result":Ljava/lang/Object;
    :cond_3e
    check-cast v4, Ljava/io/InputStream;

    .end local v4    # "result":Ljava/lang/Object;
    return-object v4
.end method

.method public execute(Lcom/box/restclientv2/authorization/IBoxRequestAuth;Ljava/io/File;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V
    .registers 8
    .param p1, "auth"    # Lcom/box/restclientv2/authorization/IBoxRequestAuth;
    .param p2, "destination"    # Ljava/io/File;
    .param p3, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .param p4, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Ljava/io/IOException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Ljava/lang/InterruptedException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 151
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/io/OutputStream;

    .line 152
    .local v0, "streams":[Ljava/io/OutputStream;
    const/4 v1, 0x0

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    aput-object v2, v0, v1

    .line 153
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->execute(Lcom/box/restclientv2/authorization/IBoxRequestAuth;[Ljava/io/OutputStream;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V

    .line 154
    return-void
.end method

.method public execute(Lcom/box/restclientv2/authorization/IBoxRequestAuth;[Ljava/io/OutputStream;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V
    .registers 6
    .param p1, "auth"    # Lcom/box/restclientv2/authorization/IBoxRequestAuth;
    .param p2, "outputStreams"    # [Ljava/io/OutputStream;
    .param p3, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .param p4, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Ljava/io/IOException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Ljava/lang/InterruptedException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p0, p1, p3, p4}, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->execute(Lcom/box/restclientv2/authorization/IBoxRequestAuth;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)Ljava/io/InputStream;

    move-result-object v0

    .line 124
    .local v0, "result":Ljava/io/InputStream;
    invoke-direct {p0, v0, p2}, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->copyOut(Ljava/io/InputStream;[Ljava/io/OutputStream;)V

    .line 125
    return-void
.end method

.method public getBytesTransferred()J
    .registers 3

    .prologue
    .line 199
    iget-wide v0, p0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mBytesTransferred:J

    return-wide v0
.end method

.method public getUpdateInterval()I
    .registers 2

    .prologue
    .line 96
    iget v0, p0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->progressUpdateInterval:I

    return v0
.end method

.method public setProgressListener(Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->mListener:Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

    .line 79
    return-void
.end method

.method public setProgressUpdateInterval(I)V
    .registers 2
    .param p1, "time"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->progressUpdateInterval:I

    .line 89
    return-void
.end method
