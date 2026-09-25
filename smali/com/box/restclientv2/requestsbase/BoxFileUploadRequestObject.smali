.class public Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;
.super Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
.source "BoxFileUploadRequestObject.java"


# static fields
.field private static final KEY_CONTENT_CREATED_AT:Ljava/lang/String; = "content_created_at"

.field private static final KEY_CONTENT_MODIFIED_AT:Ljava/lang/String; = "content_modified_at"

.field private static final KEY_FILE_NAME:Ljava/lang/String; = "filename"

.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_PARENT:Ljava/lang/String; = "parent"

.field private static final METADATA:Ljava/lang/String; = "metadata"


# instance fields
.field private entity:Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;->entity:Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;

    .line 38
    return-void
.end method

.method private static getMetadataBody(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/jsonentities/IBoxJSONStringEntity;
    .registers 5
    .param p0, "parentId"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxJSONException;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v1, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;

    invoke-direct {v1}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;-><init>()V

    .line 210
    .local v1, "parentEntity":Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;
    const-string v2, "id"

    invoke-virtual {v1, v2, p0}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    new-instance v0, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;-><init>()V

    .line 213
    .local v0, "entity":Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;
    const-string v2, "parent"

    invoke-virtual {v0, v2, v1}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v2, "name"

    invoke-virtual {v0, v2, p1}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    return-object v0
.end method

.method private static getNewFileMultipartEntity(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;
    .registers 6
    .param p0, "parentId"    # Ljava/lang/String;
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Ljava/io/UnsupportedEncodingException;,
            Lcom/box/boxjavalibv2/exceptions/BoxJSONException;
        }
    .end annotation

    .prologue
    .line 184
    new-instance v0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;

    sget-object v1, Lorg/apache/http/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lorg/apache/http/entity/mime/HttpMultipartMode;

    invoke-direct {v0, v1}, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;)V

    .line 185
    .local v0, "me":Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;
    const-string v1, "parent_id"

    new-instance v2, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v2, p0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->addContentBodyPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 186
    const-string v1, "metadata"

    invoke-static {p0, p2}, Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;->getMetadataBody(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/jsonentities/IBoxJSONStringEntity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->addBoxJSONStringEntityPart(Ljava/lang/String;Lcom/box/boxjavalibv2/jsonentities/IBoxJSONStringEntity;)V

    .line 188
    new-instance v1, Lorg/apache/http/entity/mime/content/InputStreamBody;

    const-string v2, "filename"

    invoke-direct {v1, p1, v2}, Lorg/apache/http/entity/mime/content/InputStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->addContentBodyPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 190
    return-object v0
.end method

.method private static getNewFileMultipartEntity(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;
    .registers 10
    .param p0, "parentId"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Ljava/io/UnsupportedEncodingException;,
            Lcom/box/boxjavalibv2/exceptions/BoxJSONException;
        }
    .end annotation

    .prologue
    .line 196
    new-instance v1, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;

    sget-object v2, Lorg/apache/http/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lorg/apache/http/entity/mime/HttpMultipartMode;

    invoke-direct {v1, v2}, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;)V

    .line 197
    .local v1, "me":Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;
    const-string v2, "parent_id"

    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v3, p0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->addContentBodyPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 198
    const-string v2, "filename"

    new-instance v3, Lorg/apache/http/entity/mime/content/FileBody;

    const-string v4, "filename"

    const-string v5, "*/*"

    const-string v6, "UTF-8"

    invoke-direct {v3, p2, v4, v5, v6}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->addContentBodyPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 199
    const-string v2, "metadata"

    invoke-static {p0, p1}, Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;->getMetadataBody(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/jsonentities/IBoxJSONStringEntity;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->addBoxJSONStringEntityPart(Ljava/lang/String;Lcom/box/boxjavalibv2/jsonentities/IBoxJSONStringEntity;)V

    .line 200
    const-string v2, "content_modified_at"

    invoke-virtual {v1, v2}, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->getContentBodyPart(Ljava/lang/String;)Lorg/apache/http/entity/mime/content/ContentBody;

    move-result-object v2

    if-nez v2, :cond_49

    .line 201
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lcom/box/boxjavalibv2/utils/ISO8601DateParser;->toString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "date":Ljava/lang/String;
    const-string v2, "content_modified_at"

    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v3, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->addContentBodyPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 205
    .end local v0    # "date":Ljava/lang/String;
    :cond_49
    return-object v1
.end method

.method private static getNewVersionMultipartEntity(Ljava/lang/String;Ljava/io/File;)Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;
    .registers 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 219
    new-instance v0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;

    sget-object v1, Lorg/apache/http/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lorg/apache/http/entity/mime/HttpMultipartMode;

    invoke-direct {v0, v1}, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;)V

    .line 220
    .local v0, "me":Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;
    new-instance v1, Lorg/apache/http/entity/mime/content/FileBody;

    const-string v2, "*/*"

    const-string v3, "UTF-8"

    invoke-direct {v1, p1, p0, v2, v3}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->addContentBodyPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 222
    const-string v1, "content_modified_at"

    invoke-virtual {v0, v1}, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->getContentBodyPart(Ljava/lang/String;)Lorg/apache/http/entity/mime/content/ContentBody;

    move-result-object v1

    if-nez v1, :cond_32

    .line 223
    const-string v1, "content_modified_at"

    new-instance v2, Lorg/apache/http/entity/mime/content/StringBody;

    new-instance v3, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v3}, Lcom/box/boxjavalibv2/utils/ISO8601DateParser;->toString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->addContentBodyPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 225
    :cond_32
    return-object v0
.end method

.method private static getNewVersionMultipartEntity(Ljava/lang/String;Ljava/io/InputStream;)Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;

    sget-object v1, Lorg/apache/http/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lorg/apache/http/entity/mime/HttpMultipartMode;

    invoke-direct {v0, v1}, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;)V

    .line 231
    .local v0, "me":Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;
    new-instance v1, Lorg/apache/http/entity/mime/content/InputStreamBody;

    invoke-direct {v1, p1, p0}, Lorg/apache/http/entity/mime/content/InputStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->addContentBodyPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 233
    return-object v0
.end method

.method public static uploadFileRequestObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;
    .registers 6
    .param p0, "parentId"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxJSONException;
        }
    .end annotation

    .prologue
    .line 56
    :try_start_0
    new-instance v1, Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;

    invoke-direct {v1}, Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;-><init>()V

    .line 57
    .local v1, "requestObject":Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;
    invoke-static {p0, p1, p2}, Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;->getNewFileMultipartEntity(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;->setMultipartMIME(Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;)Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v2

    return-object v2

    .line 58
    .end local v1    # "requestObject":Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;
    :catch_e
    move-exception v0

    .line 59
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/box/restclientv2/exceptions/BoxRestException;

    invoke-direct {v2, v0}, Lcom/box/restclientv2/exceptions/BoxRestException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public static uploadFileRequestObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;
    .registers 6
    .param p0, "parentId"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxJSONException;
        }
    .end annotation

    .prologue
    .line 79
    :try_start_0
    new-instance v1, Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;

    invoke-direct {v1}, Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;-><init>()V

    invoke-static {p0, p2, p1}, Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;->getNewFileMultipartEntity(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;->setMultipartMIME(Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;)Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v1

    return-object v1

    .line 80
    :catch_e
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/box/restclientv2/exceptions/BoxRestException;

    invoke-direct {v1, v0}, Lcom/box/restclientv2/exceptions/BoxRestException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static uploadNewVersionRequestObject(Ljava/lang/String;Ljava/io/File;)Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;
        }
    .end annotation

    .prologue
    .line 98
    :try_start_0
    new-instance v1, Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;

    invoke-direct {v1}, Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;-><init>()V

    invoke-static {p0, p1}, Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;->getNewVersionMultipartEntity(Ljava/lang/String;Ljava/io/File;)Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;->setMultipartMIME(Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;)Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v1

    return-object v1

    .line 99
    :catch_e
    move-exception v0

    .line 100
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/box/restclientv2/exceptions/BoxRestException;

    invoke-direct {v1, v0}, Lcom/box/restclientv2/exceptions/BoxRestException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static uploadNewVersionRequestObject(Ljava/lang/String;Ljava/io/InputStream;)Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;
        }
    .end annotation

    .prologue
    .line 117
    :try_start_0
    new-instance v1, Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;

    invoke-direct {v1}, Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;-><init>()V

    invoke-static {p0, p1}, Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;->getNewVersionMultipartEntity(Ljava/lang/String;Ljava/io/InputStream;)Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;->setMultipartMIME(Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;)Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v1

    return-object v1

    .line 118
    :catch_e
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/box/restclientv2/exceptions/BoxRestException;

    invoke-direct {v1, v0}, Lcom/box/restclientv2/exceptions/BoxRestException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public getEntity(Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Lorg/apache/http/HttpEntity;
    .registers 3
    .param p1, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/box/boxjavalibv2/exceptions/BoxJSONException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;->entity:Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;

    invoke-virtual {v0, p1}, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->prepareParts(Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)V

    .line 178
    iget-object v0, p0, Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;->entity:Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;

    return-object v0
.end method

.method public setContentMD5(Ljava/lang/String;)Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;
    .registers 4
    .param p1, "sha1"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;->getRequestExtras()Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    move-result-object v0

    const-string v1, "Content-MD5"

    invoke-virtual {v0, v1, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    .line 148
    return-object p0
.end method

.method public setListener(Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;)Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;
    .registers 3
    .param p1, "listener"    # Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;->entity:Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;

    invoke-virtual {v0, p1}, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->setListener(Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;)V

    .line 136
    return-object p0
.end method

.method public setLocalFileCreatedAt(Ljava/util/Date;)Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;
    .registers 6
    .param p1, "createdAt"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;->entity:Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;

    const-string v1, "content_created_at"

    new-instance v2, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-static {p1}, Lcom/box/boxjavalibv2/utils/ISO8601DateParser;->toString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->addContentBodyPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 160
    return-object p0
.end method

.method public setLocalFileLastModifiedAt(Ljava/util/Date;)Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;
    .registers 6
    .param p1, "modifiedAt"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;->entity:Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;

    const-string v1, "content_modified_at"

    new-instance v2, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-static {p1}, Lcom/box/boxjavalibv2/utils/ISO8601DateParser;->toString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;->addContentBodyPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 172
    return-object p0
.end method

.method public setMultipartMIME(Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;)Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;
    .registers 2
    .param p1, "mime"    # Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;
        }
    .end annotation

    .prologue
    .line 124
    iput-object p1, p0, Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;->entity:Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;

    .line 125
    return-object p0
.end method
