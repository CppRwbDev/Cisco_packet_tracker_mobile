.class public Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;
.super Ljava/lang/Object;
.source "DropboxAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/client2/DropboxAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChunkedUploader"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEFAULT_CHUNK_SIZE:I = 0x400000


# instance fields
.field private active:Z

.field private bytesInChunkToUpload:I

.field private chunk:[B

.field private lastRequest:Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;

.field private offset:J

.field private stream:Ljava/io/InputStream;

.field private targetLength:J

.field final synthetic this$0:Lcom/dropbox/client2/DropboxAPI;

.field private uploadId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 782
    const-class v0, Lcom/dropbox/client2/DropboxAPI;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>(Lcom/dropbox/client2/DropboxAPI;Ljava/io/InputStream;J)V
    .registers 12
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "length"    # J

    .prologue
    .line 803
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>.ChunkedUploader;"
    const/high16 v6, 0x400000

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;-><init>(Lcom/dropbox/client2/DropboxAPI;Ljava/io/InputStream;JI)V

    .line 804
    return-void
.end method

.method private constructor <init>(Lcom/dropbox/client2/DropboxAPI;Ljava/io/InputStream;JI)V
    .registers 9
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .param p5, "chunkSize"    # I

    .prologue
    .line 796
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>.ChunkedUploader;"
    iput-object p1, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->this$0:Lcom/dropbox/client2/DropboxAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 784
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    .line 789
    const/4 v0, 0x0

    iput v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->bytesInChunkToUpload:I

    .line 793
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->active:Z

    .line 794
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->lastRequest:Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;

    .line 797
    iput-object p2, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->stream:Ljava/io/InputStream;

    .line 798
    iput-wide p3, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->targetLength:J

    .line 799
    new-array v0, p5, [B

    iput-object v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->chunk:[B

    .line 800
    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/client2/DropboxAPI;Ljava/io/InputStream;JILcom/dropbox/client2/DropboxAPI$1;)V
    .registers 8
    .param p1, "x0"    # Lcom/dropbox/client2/DropboxAPI;
    .param p2, "x1"    # Ljava/io/InputStream;
    .param p3, "x2"    # J
    .param p5, "x3"    # I
    .param p6, "x4"    # Lcom/dropbox/client2/DropboxAPI$1;

    .prologue
    .line 782
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>.ChunkedUploader;"
    invoke-direct/range {p0 .. p5}, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;-><init>(Lcom/dropbox/client2/DropboxAPI;Ljava/io/InputStream;JI)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/client2/DropboxAPI;Ljava/io/InputStream;JLcom/dropbox/client2/DropboxAPI$1;)V
    .registers 7
    .param p1, "x0"    # Lcom/dropbox/client2/DropboxAPI;
    .param p2, "x1"    # Ljava/io/InputStream;
    .param p3, "x2"    # J
    .param p5, "x3"    # Lcom/dropbox/client2/DropboxAPI$1;

    .prologue
    .line 782
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>.ChunkedUploader;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;-><init>(Lcom/dropbox/client2/DropboxAPI;Ljava/io/InputStream;J)V

    return-void
.end method


# virtual methods
.method public abort()V
    .registers 2

    .prologue
    .line 842
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>.ChunkedUploader;"
    monitor-enter p0

    .line 843
    :try_start_1
    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->lastRequest:Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;

    if-eqz v0, :cond_a

    .line 844
    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->lastRequest:Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;

    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;->abort()V

    .line 846
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->active:Z

    .line 847
    monitor-exit p0

    .line 848
    return-void

    .line 847
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public finish(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/client2/DropboxAPI$Entry;
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "parentRev"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 978
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>.ChunkedUploader;"
    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->this$0:Lcom/dropbox/client2/DropboxAPI;

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->uploadId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2, p2}, Lcom/dropbox/client2/DropboxAPI;->access$300(Lcom/dropbox/client2/DropboxAPI;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/dropbox/client2/DropboxAPI$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getActive()Z
    .registers 2

    .prologue
    .line 832
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>.ChunkedUploader;"
    iget-boolean v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->active:Z

    return v0
.end method

.method public getOffset()J
    .registers 3

    .prologue
    .line 815
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>.ChunkedUploader;"
    iget-wide v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    return-wide v0
.end method

.method public isComplete()Z
    .registers 5

    .prologue
    .line 823
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>.ChunkedUploader;"
    iget-wide v0, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    iget-wide v2, p0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->targetLength:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public upload()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 859
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>.ChunkedUploader;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->upload(Lcom/dropbox/client2/ProgressListener;)V

    .line 860
    return-void
.end method

.method public upload(Lcom/dropbox/client2/ProgressListener;)V
    .registers 20
    .param p1, "listener"    # Lcom/dropbox/client2/ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 882
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>.ChunkedUploader;"
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->targetLength:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_53

    const/16 v16, 0x1

    .line 885
    .local v16, "readUntilEOF":Z
    :cond_c
    :goto_c
    const/4 v2, 0x0

    .line 886
    .local v2, "adjustedListener":Lcom/dropbox/client2/ProgressListener;
    if-eqz p1, :cond_1e

    .line 887
    new-instance v2, Lcom/dropbox/client2/ProgressListener$Adjusted;

    .end local v2    # "adjustedListener":Lcom/dropbox/client2/ProgressListener;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->targetLength:J

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/dropbox/client2/ProgressListener$Adjusted;-><init>(Lcom/dropbox/client2/ProgressListener;JJ)V

    .line 893
    .restart local v2    # "adjustedListener":Lcom/dropbox/client2/ProgressListener;
    :cond_1e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->bytesInChunkToUpload:I

    if-nez v3, :cond_9f

    .line 896
    if-eqz v16, :cond_56

    .line 897
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->chunk:[B

    array-length v12, v3

    .line 903
    .local v12, "bytesToRead":I
    :goto_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->stream:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->chunk:[B

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->bytesInChunkToUpload:I

    .line 904
    move-object/from16 v0, p0

    iget v3, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->bytesInChunkToUpload:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_9f

    .line 905
    if-eqz v16, :cond_6b

    .line 911
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->targetLength:J

    .line 912
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->bytesInChunkToUpload:I

    .line 957
    .end local v12    # "bytesToRead":I
    :cond_52
    return-void

    .line 882
    .end local v2    # "adjustedListener":Lcom/dropbox/client2/ProgressListener;
    .end local v16    # "readUntilEOF":Z
    :cond_53
    const/16 v16, 0x0

    goto :goto_c

    .line 900
    .restart local v2    # "adjustedListener":Lcom/dropbox/client2/ProgressListener;
    .restart local v16    # "readUntilEOF":Z
    :cond_56
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->chunk:[B

    array-length v3, v3

    int-to-long v4, v3

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->targetLength:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v12, v4

    .restart local v12    # "bytesToRead":I
    goto :goto_2b

    .line 917
    :cond_6b
    invoke-virtual/range {p0 .. p0}, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->abort()V

    .line 918
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InputStream ended after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes, expecting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->targetLength:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 924
    .end local v12    # "bytesToRead":I
    :cond_9f
    :try_start_9f
    monitor-enter p0
    :try_end_a0
    .catch Lcom/dropbox/client2/exception/DropboxServerException; {:try_start_9f .. :try_end_a0} :catch_b1

    .line 925
    :try_start_a0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->active:Z

    if-nez v3, :cond_103

    .line 926
    new-instance v3, Lcom/dropbox/client2/exception/DropboxPartialFileException;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Lcom/dropbox/client2/exception/DropboxPartialFileException;-><init>(J)V

    throw v3

    .line 929
    :catchall_ae
    move-exception v3

    monitor-exit p0
    :try_end_b0
    .catchall {:try_start_a0 .. :try_end_b0} :catchall_ae

    :try_start_b0
    throw v3
    :try_end_b1
    .catch Lcom/dropbox/client2/exception/DropboxServerException; {:try_start_b0 .. :try_end_b1} :catch_b1

    .line 936
    :catch_b1
    move-exception v13

    .line 937
    .local v13, "e":Lcom/dropbox/client2/exception/DropboxServerException;
    iget-object v3, v13, Lcom/dropbox/client2/exception/DropboxServerException;->body:Lcom/dropbox/client2/exception/DropboxServerException$Error;

    iget-object v3, v3, Lcom/dropbox/client2/exception/DropboxServerException$Error;->fields:Ljava/util/Map;

    const-string v4, "offset"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_146

    .line 938
    iget-object v3, v13, Lcom/dropbox/client2/exception/DropboxServerException;->body:Lcom/dropbox/client2/exception/DropboxServerException$Error;

    iget-object v3, v3, Lcom/dropbox/client2/exception/DropboxServerException$Error;->fields:Ljava/util/Map;

    const-string v4, "offset"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 939
    .local v14, "newOffset":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    cmp-long v3, v14, v4

    if-lez v3, :cond_145

    .line 940
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->bytesInChunkToUpload:I

    .line 941
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    .line 950
    .end local v13    # "e":Lcom/dropbox/client2/exception/DropboxServerException;
    .end local v14    # "newOffset":J
    :goto_df
    if-nez v16, :cond_c

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->targetLength:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_c

    .line 952
    sget-boolean v3, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->$assertionsDisabled:Z

    if-nez v3, :cond_52

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->targetLength:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_52

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 928
    :cond_103
    :try_start_103
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->this$0:Lcom/dropbox/client2/DropboxAPI;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->chunk:[B

    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->bytesInChunkToUpload:I

    int-to-long v6, v3

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->uploadId:Ljava/lang/String;

    move-object v8, v2

    invoke-virtual/range {v4 .. v11}, Lcom/dropbox/client2/DropboxAPI;->chunkedUploadRequest(Ljava/io/InputStream;JLcom/dropbox/client2/ProgressListener;JLjava/lang/String;)Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->lastRequest:Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;

    .line 929
    monitor-exit p0
    :try_end_127
    .catchall {:try_start_103 .. :try_end_127} :catchall_ae

    .line 931
    :try_start_127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->lastRequest:Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;

    invoke-virtual {v3}, Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;->upload()Lcom/dropbox/client2/DropboxAPI$ChunkedUploadResponse;

    move-result-object v17

    .line 933
    .local v17, "resp":Lcom/dropbox/client2/DropboxAPI$ChunkedUploadResponse;
    invoke-virtual/range {v17 .. v17}, Lcom/dropbox/client2/DropboxAPI$ChunkedUploadResponse;->getOffset()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->offset:J

    .line 934
    invoke-virtual/range {v17 .. v17}, Lcom/dropbox/client2/DropboxAPI$ChunkedUploadResponse;->getUploadId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->uploadId:Ljava/lang/String;

    .line 935
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;->bytesInChunkToUpload:I
    :try_end_144
    .catch Lcom/dropbox/client2/exception/DropboxServerException; {:try_start_127 .. :try_end_144} :catch_b1

    goto :goto_df

    .line 943
    .end local v17    # "resp":Lcom/dropbox/client2/DropboxAPI$ChunkedUploadResponse;
    .restart local v13    # "e":Lcom/dropbox/client2/exception/DropboxServerException;
    .restart local v14    # "newOffset":J
    :cond_145
    throw v13

    .line 946
    .end local v14    # "newOffset":J
    :cond_146
    throw v13
.end method
