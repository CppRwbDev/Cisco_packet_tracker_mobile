.class public Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;
.super Ljava/io/FilterInputStream;
.source "DropboxAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/client2/DropboxAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DropboxInputStream"
.end annotation


# instance fields
.field private final info:Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;

.field private final request:Lorg/apache/http/client/methods/HttpUriRequest;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)V
    .registers 7
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 544
    invoke-direct {p0, v3}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 546
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 547
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-nez v1, :cond_12

    .line 548
    new-instance v2, Lcom/dropbox/client2/exception/DropboxException;

    const-string v3, "Didn\'t get entity from HttpResponse"

    invoke-direct {v2, v3}, Lcom/dropbox/client2/exception/DropboxException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 554
    :cond_12
    :try_start_12
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->in:Ljava/io/InputStream;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_18} :catch_22

    .line 559
    iput-object p1, p0, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 560
    new-instance v2, Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;

    invoke-direct {v2, p2, v3}, Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;-><init>(Lorg/apache/http/HttpResponse;Lcom/dropbox/client2/DropboxAPI$1;)V

    iput-object v2, p0, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->info:Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;

    .line 561
    return-void

    .line 555
    :catch_22
    move-exception v0

    .line 556
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/dropbox/client2/exception/DropboxIOException;

    invoke-direct {v2, v0}, Lcom/dropbox/client2/exception/DropboxIOException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 574
    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 575
    return-void
.end method

.method public copyStreamToOutput(Ljava/io/OutputStream;Lcom/dropbox/client2/ProgressListener;)V
    .registers 23
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "listener"    # Lcom/dropbox/client2/ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxIOException;,
            Lcom/dropbox/client2/exception/DropboxPartialFileException;,
            Lcom/dropbox/client2/exception/DropboxLocalStorageFullException;
        }
    .end annotation

    .prologue
    .line 610
    const/4 v2, 0x0

    .line 611
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    const-wide/16 v14, 0x0

    .line 612
    .local v14, "totalRead":J
    const-wide/16 v6, 0x0

    .line 613
    .local v6, "lastListened":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->info:Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;->getFileSize()J

    move-result-wide v8

    .line 616
    .local v8, "length":J
    :try_start_f
    new-instance v3, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_16} :catch_c0
    .catchall {:try_start_f .. :try_end_16} :catchall_4e

    .line 618
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    const/16 v16, 0x1000

    :try_start_18
    move/from16 v0, v16

    new-array v4, v0, [B

    .line 621
    .local v4, "buffer":[B
    :cond_1c
    :goto_1c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->read([B)I

    move-result v11

    .line 622
    .local v11, "read":I
    if-gez v11, :cond_5d

    .line 623
    const-wide/16 v16, 0x0

    cmp-long v16, v8, v16

    if-ltz v16, :cond_83

    cmp-long v16, v14, v8

    if-gez v16, :cond_83

    .line 625
    new-instance v16, Lcom/dropbox/client2/exception/DropboxPartialFileException;

    move-object/from16 v0, v16

    invoke-direct {v0, v14, v15}, Lcom/dropbox/client2/exception/DropboxPartialFileException;-><init>(J)V

    throw v16
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_36} :catch_36
    .catchall {:try_start_18 .. :try_end_36} :catchall_80

    .line 654
    .end local v4    # "buffer":[B
    .end local v11    # "read":I
    :catch_36
    move-exception v5

    move-object v2, v3

    .line 655
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .local v5, "e":Ljava/io/IOException;
    :goto_38
    :try_start_38
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 656
    .local v10, "message":Ljava/lang/String;
    if-eqz v10, :cond_ac

    const-string v16, "No space"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_ac

    .line 659
    new-instance v16, Lcom/dropbox/client2/exception/DropboxLocalStorageFullException;

    invoke-direct/range {v16 .. v16}, Lcom/dropbox/client2/exception/DropboxLocalStorageFullException;-><init>()V

    throw v16
    :try_end_4e
    .catchall {:try_start_38 .. :try_end_4e} :catchall_4e

    .line 670
    .end local v5    # "e":Ljava/io/IOException;
    .end local v10    # "message":Ljava/lang/String;
    :catchall_4e
    move-exception v16

    :goto_4f
    if-eqz v2, :cond_54

    .line 672
    :try_start_51
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_ba

    .line 675
    :cond_54
    :goto_54
    if-eqz p1, :cond_59

    .line 677
    :try_start_56
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_bc

    .line 683
    :cond_59
    :goto_59
    :try_start_59
    invoke-virtual/range {p0 .. p0}, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_be

    .line 684
    :goto_5c
    throw v16

    .line 631
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v11    # "read":I
    :cond_5d
    const/16 v16, 0x0

    :try_start_5f
    move/from16 v0, v16

    invoke-virtual {v3, v4, v0, v11}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 633
    int-to-long v0, v11

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    .line 635
    if-eqz p2, :cond_1c

    .line 636
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 637
    .local v12, "now":J
    sub-long v16, v12, v6

    invoke-virtual/range {p2 .. p2}, Lcom/dropbox/client2/ProgressListener;->progressInterval()J

    move-result-wide v18

    cmp-long v16, v16, v18

    if-lez v16, :cond_1c

    .line 638
    move-wide v6, v12

    .line 639
    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15, v8, v9}, Lcom/dropbox/client2/ProgressListener;->onProgress(JJ)V

    goto :goto_1c

    .line 670
    .end local v4    # "buffer":[B
    .end local v11    # "read":I
    .end local v12    # "now":J
    :catchall_80
    move-exception v16

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_4f

    .line 644
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v11    # "read":I
    :cond_83
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 645
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->flush()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_89} :catch_36
    .catchall {:try_start_5f .. :try_end_89} :catchall_80

    .line 648
    :try_start_89
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/io/FileOutputStream;

    move/from16 v16, v0

    if-eqz v16, :cond_9e

    .line 649
    move-object/from16 v0, p1

    check-cast v0, Ljava/io/FileOutputStream;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileDescriptor;->sync()V
    :try_end_9e
    .catch Ljava/io/SyncFailedException; {:try_start_89 .. :try_end_9e} :catch_c3
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_9e} :catch_36
    .catchall {:try_start_89 .. :try_end_9e} :catchall_80

    .line 670
    :cond_9e
    :goto_9e
    if-eqz v3, :cond_a3

    .line 672
    :try_start_a0
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_b4

    .line 675
    :cond_a3
    :goto_a3
    if-eqz p1, :cond_a8

    .line 677
    :try_start_a5
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_b6

    .line 683
    :cond_a8
    :goto_a8
    :try_start_a8
    invoke-virtual/range {p0 .. p0}, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_b8

    .line 686
    :goto_ab
    return-void

    .line 667
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "buffer":[B
    .end local v11    # "read":I
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "e":Ljava/io/IOException;
    .restart local v10    # "message":Ljava/lang/String;
    :cond_ac
    :try_start_ac
    new-instance v16, Lcom/dropbox/client2/exception/DropboxPartialFileException;

    move-object/from16 v0, v16

    invoke-direct {v0, v14, v15}, Lcom/dropbox/client2/exception/DropboxPartialFileException;-><init>(J)V

    throw v16
    :try_end_b4
    .catchall {:try_start_ac .. :try_end_b4} :catchall_4e

    .line 673
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v10    # "message":Ljava/lang/String;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v11    # "read":I
    :catch_b4
    move-exception v16

    goto :goto_a3

    .line 678
    :catch_b6
    move-exception v16

    goto :goto_a8

    .line 684
    :catch_b8
    move-exception v16

    goto :goto_ab

    .line 673
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "buffer":[B
    .end local v11    # "read":I
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    :catch_ba
    move-exception v17

    goto :goto_54

    .line 678
    :catch_bc
    move-exception v17

    goto :goto_59

    .line 684
    :catch_be
    move-exception v17

    goto :goto_5c

    .line 654
    :catch_c0
    move-exception v5

    goto/16 :goto_38

    .line 651
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v11    # "read":I
    :catch_c3
    move-exception v16

    goto :goto_9e
.end method

.method public getFileInfo()Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;
    .registers 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->info:Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;

    return-object v0
.end method
