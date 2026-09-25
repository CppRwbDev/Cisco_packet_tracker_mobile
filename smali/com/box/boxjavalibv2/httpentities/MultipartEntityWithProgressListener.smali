.class public Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;
.super Lorg/apache/http/entity/mime/MultipartEntity;
.source "MultipartEntityWithProgressListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener$InterruptedMultipartException;,
        Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener$CountingOutputStream;
    }
.end annotation


# static fields
.field public static final ON_PROGRESS_UPDATE_THRESHOLD:I = 0x12c

.field private static onProgressUpdateThreshold:I


# instance fields
.field private mCountingOutputStream:Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener$CountingOutputStream;

.field private mListener:Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

.field private final parts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/entity/mime/content/ContentBody;",
            ">;"
        }
    .end annotation
.end field

.field private final stringParts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/box/boxjavalibv2/jsonentities/IBoxJSONStringEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const/16 v0, 0x12c

    sput v0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->onProgressUpdateThreshold:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/entity/mime/HttpMultipartMode;)V
    .registers 4
    .param p1, "mode"    # Lorg/apache/http/entity/mime/HttpMultipartMode;

    .prologue
    .line 48
    const/4 v0, 0x0

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->parts:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->stringParts:Ljava/util/HashMap;

    .line 49
    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 25
    sget v0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->onProgressUpdateThreshold:I

    return v0
.end method

.method public static setOnProgressUpdateThreshold(I)V
    .registers 1
    .param p0, "threshold"    # I

    .prologue
    .line 100
    sput p0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->onProgressUpdateThreshold:I

    .line 101
    return-void
.end method


# virtual methods
.method public addBoxJSONStringEntityPart(Ljava/lang/String;Lcom/box/boxjavalibv2/jsonentities/IBoxJSONStringEntity;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "entity"    # Lcom/box/boxjavalibv2/jsonentities/IBoxJSONStringEntity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->stringParts:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public addContentBodyPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "contentBody"    # Lorg/apache/http/entity/mime/content/ContentBody;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->parts:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public getContentBodyPart(Ljava/lang/String;)Lorg/apache/http/entity/mime/content/ContentBody;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->parts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/entity/mime/content/ContentBody;

    return-object v0
.end method

.method public getJSONStringEntityPart(Ljava/lang/String;)Lcom/box/boxjavalibv2/jsonentities/IBoxJSONStringEntity;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->stringParts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/jsonentities/IBoxJSONStringEntity;

    return-object v0
.end method

.method public prepareParts(Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)V
    .registers 9
    .param p1, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/box/boxjavalibv2/exceptions/BoxJSONException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v3, p0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->parts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 75
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/entity/mime/content/ContentBody;

    invoke-super {p0, v3, v4}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    goto :goto_a

    .line 77
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;>;"
    :cond_26
    iget-object v3, p0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->stringParts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 78
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/box/boxjavalibv2/jsonentities/IBoxJSONStringEntity;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/box/boxjavalibv2/jsonentities/IBoxJSONStringEntity;

    invoke-interface {v4, p1}, Lcom/box/boxjavalibv2/jsonentities/IBoxJSONStringEntity;->toJSONString(Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-super {p0, v3, v5}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    goto :goto_30

    .line 80
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/box/boxjavalibv2/jsonentities/IBoxJSONStringEntity;>;"
    :cond_5b
    return-void
.end method

.method public setListener(Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->mListener:Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

    .line 90
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 6
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->mCountingOutputStream:Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener$CountingOutputStream;

    if-nez v0, :cond_d

    .line 106
    new-instance v0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener$CountingOutputStream;

    iget-object v1, p0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->mListener:Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

    invoke-direct {v0, p1, v1}, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener$CountingOutputStream;-><init>(Ljava/io/OutputStream;Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;)V

    iput-object v0, p0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->mCountingOutputStream:Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener$CountingOutputStream;

    .line 108
    :cond_d
    iget-object v0, p0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->mCountingOutputStream:Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener$CountingOutputStream;

    invoke-super {p0, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 109
    iget-object v0, p0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->mListener:Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

    if-eqz v0, :cond_21

    .line 110
    iget-object v0, p0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->mListener:Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

    iget-object v1, p0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->mCountingOutputStream:Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener$CountingOutputStream;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener$CountingOutputStream;->getBytesTransferred()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;->onProgress(J)V

    .line 112
    :cond_21
    return-void
.end method
