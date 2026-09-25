.class public Lcom/dropbox/client2/RESTUtility;
.super Ljava/lang/Object;
.source "RESTUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/client2/RESTUtility$RequestMethod;
    }
.end annotation


# static fields
.field private static final dateFormat:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 85
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy kk:mm:ss ZZZZZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/dropbox/client2/RESTUtility;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildURL(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "apiVersion"    # I
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/String;

    .prologue
    .line 460
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 467
    :cond_1b
    :try_start_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 468
    const-string v1, "%2F"

    const-string v2, "/"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 470
    if-eqz p3, :cond_60

    array-length v1, p3

    if-lez v1, :cond_60

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/dropbox/client2/RESTUtility;->urlencode([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 475
    :cond_60
    const-string v1, "+"

    const-string v2, "%20"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "*"

    const-string v3, "%2A"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_6f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1b .. :try_end_6f} :catch_8e

    move-result-object p2

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":443"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_8d
    return-object v1

    .line 476
    :catch_8e
    move-exception v0

    .line 477
    .local v0, "uce":Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    goto :goto_8d
.end method

.method public static execute(Lcom/dropbox/client2/session/Session;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 3
    .param p0, "session"    # Lcom/dropbox/client2/session/Session;
    .param p1, "req"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 339
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/dropbox/client2/RESTUtility;->execute(Lcom/dropbox/client2/session/Session;Lorg/apache/http/client/methods/HttpUriRequest;I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public static execute(Lcom/dropbox/client2/session/Session;Lorg/apache/http/client/methods/HttpUriRequest;I)Lorg/apache/http/HttpResponse;
    .registers 12
    .param p0, "session"    # Lcom/dropbox/client2/session/Session;
    .param p1, "req"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "socketTimeoutOverrideMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 365
    invoke-static {p0}, Lcom/dropbox/client2/RESTUtility;->updatedHttpClient(Lcom/dropbox/client2/session/Session;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 368
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    invoke-interface {p0, p1}, Lcom/dropbox/client2/session/Session;->setRequestTimeout(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 369
    if-ltz p2, :cond_10

    .line 370
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    .line 371
    .local v3, "reqParams":Lorg/apache/http/params/HttpParams;
    invoke-static {v3, p2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 374
    .end local v3    # "reqParams":Lorg/apache/http/params/HttpParams;
    :cond_10
    invoke-static {p1}, Lcom/dropbox/client2/RESTUtility;->isRequestRepeatable(Lorg/apache/http/HttpRequest;)Z

    move-result v2

    .line 377
    .local v2, "repeatable":Z
    const/4 v4, 0x0

    .line 378
    .local v4, "response":Lorg/apache/http/HttpResponse;
    const/4 v5, 0x0

    .local v5, "retries":I
    :goto_16
    const/4 v7, 0x5

    if-ge v5, v7, :cond_1f

    .line 387
    :try_start_19
    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1c
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_1c} :catch_60
    .catch Ljavax/net/ssl/SSLException; {:try_start_19 .. :try_end_1c} :catch_29
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_3b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_19 .. :try_end_1c} :catch_59

    move-result-object v4

    .line 392
    :goto_1d
    if-eqz v4, :cond_30

    .line 406
    :cond_1f
    if-nez v4, :cond_45

    .line 408
    :try_start_21
    new-instance v7, Lcom/dropbox/client2/exception/DropboxIOException;

    const-string v8, "Apache HTTPClient encountered an error. No response, try again."

    invoke-direct {v7, v8}, Lcom/dropbox/client2/exception/DropboxIOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_29
    .catch Ljavax/net/ssl/SSLException; {:try_start_21 .. :try_end_29} :catch_29
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_29} :catch_3b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_21 .. :try_end_29} :catch_59

    .line 419
    :catch_29
    move-exception v1

    .line 420
    .local v1, "e":Ljavax/net/ssl/SSLException;
    new-instance v7, Lcom/dropbox/client2/exception/DropboxSSLException;

    invoke-direct {v7, v1}, Lcom/dropbox/client2/exception/DropboxSSLException;-><init>(Ljavax/net/ssl/SSLException;)V

    throw v7

    .line 399
    .end local v1    # "e":Ljavax/net/ssl/SSLException;
    :cond_30
    :try_start_30
    invoke-static {v0, p0}, Lcom/dropbox/client2/RESTUtility;->updateClientProxy(Lorg/apache/http/client/HttpClient;Lcom/dropbox/client2/session/Session;)V

    .line 401
    if-nez v2, :cond_42

    .line 402
    new-instance v7, Lcom/dropbox/client2/exception/DropboxProxyChangeException;

    invoke-direct {v7}, Lcom/dropbox/client2/exception/DropboxProxyChangeException;-><init>()V

    throw v7
    :try_end_3b
    .catch Ljavax/net/ssl/SSLException; {:try_start_30 .. :try_end_3b} :catch_29
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_3b} :catch_3b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_30 .. :try_end_3b} :catch_59

    .line 421
    :catch_3b
    move-exception v1

    .line 424
    .local v1, "e":Ljava/io/IOException;
    new-instance v7, Lcom/dropbox/client2/exception/DropboxIOException;

    invoke-direct {v7, v1}, Lcom/dropbox/client2/exception/DropboxIOException;-><init>(Ljava/io/IOException;)V

    throw v7

    .line 378
    .end local v1    # "e":Ljava/io/IOException;
    :cond_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 411
    :cond_45
    :try_start_45
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 412
    .local v6, "statusCode":I
    const/16 v7, 0xc8

    if-eq v6, v7, :cond_58

    const/16 v7, 0xce

    if-eq v6, v7, :cond_58

    .line 415
    invoke-static {v4}, Lcom/dropbox/client2/RESTUtility;->parseAsJSON(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    :try_end_58
    .catch Ljavax/net/ssl/SSLException; {:try_start_45 .. :try_end_58} :catch_29
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_58} :catch_3b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_45 .. :try_end_58} :catch_59

    .line 418
    :cond_58
    return-object v4

    .line 425
    .end local v6    # "statusCode":I
    :catch_59
    move-exception v1

    .line 426
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    new-instance v7, Lcom/dropbox/client2/exception/DropboxException;

    invoke-direct {v7, v1}, Lcom/dropbox/client2/exception/DropboxException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 388
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_60
    move-exception v7

    goto :goto_1d
.end method

.method private static isRequestRepeatable(Lorg/apache/http/HttpRequest;)Z
    .registers 4
    .param p0, "req"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 433
    instance-of v2, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v2, :cond_15

    move-object v1, p0

    .line 434
    check-cast v1, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 435
    .local v1, "ereq":Lorg/apache/http/HttpEntityEnclosingRequest;
    invoke-interface {v1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 436
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_15

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v2

    if-nez v2, :cond_15

    .line 437
    const/4 v2, 0x0

    .line 440
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .end local v1    # "ereq":Lorg/apache/http/HttpEntityEnclosingRequest;
    :goto_14
    return v2

    :cond_15
    const/4 v2, 0x1

    goto :goto_14
.end method

.method public static parseAsJSON(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .registers 11
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 221
    const/4 v6, 0x0

    .line 223
    .local v6, "result":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 225
    .local v0, "bin":Ljava/io/BufferedReader;
    :try_start_2
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 226
    .local v3, "ent":Lorg/apache/http/HttpEntity;
    if-eqz v3, :cond_27

    .line 227
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 233
    .local v4, "in":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v8, 0x4000

    invoke-direct {v1, v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_18} :catch_42
    .catch Lorg/json/simple/parser/ParseException; {:try_start_2 .. :try_end_18} :catch_50
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_18} :catch_63
    .catchall {:try_start_2 .. :try_end_18} :catchall_49

    .line 234
    .end local v0    # "bin":Ljava/io/BufferedReader;
    .local v1, "bin":Ljava/io/BufferedReader;
    const/16 v8, 0x4000

    :try_start_1a
    invoke-virtual {v1, v8}, Ljava/io/BufferedReader;->mark(I)V

    .line 236
    new-instance v5, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v5}, Lorg/json/simple/parser/JSONParser;-><init>()V

    .line 237
    .local v5, "parser":Lorg/json/simple/parser/JSONParser;
    invoke-virtual {v5, v1}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/io/Reader;)Ljava/lang/Object;
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_25} :catch_7e
    .catch Lorg/json/simple/parser/ParseException; {:try_start_1a .. :try_end_25} :catch_7b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1a .. :try_end_25} :catch_78
    .catchall {:try_start_1a .. :try_end_25} :catchall_75

    move-result-object v6

    move-object v0, v1

    .line 252
    .end local v1    # "bin":Ljava/io/BufferedReader;
    .end local v4    # "in":Ljava/io/InputStreamReader;
    .end local v5    # "parser":Lorg/json/simple/parser/JSONParser;
    .end local v6    # "result":Ljava/lang/Object;
    .restart local v0    # "bin":Ljava/io/BufferedReader;
    :cond_27
    if-eqz v0, :cond_2c

    .line 254
    :try_start_29
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_70

    .line 260
    :cond_2c
    :goto_2c
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 261
    .local v7, "statusCode":I
    const/16 v8, 0xc8

    if-eq v7, v8, :cond_74

    .line 262
    const/16 v8, 0x191

    if-ne v7, v8, :cond_6a

    .line 263
    new-instance v8, Lcom/dropbox/client2/exception/DropboxUnlinkedException;

    invoke-direct {v8}, Lcom/dropbox/client2/exception/DropboxUnlinkedException;-><init>()V

    throw v8

    .line 239
    .end local v3    # "ent":Lorg/apache/http/HttpEntity;
    .end local v7    # "statusCode":I
    .restart local v6    # "result":Ljava/lang/Object;
    :catch_42
    move-exception v2

    .line 240
    .local v2, "e":Ljava/io/IOException;
    :goto_43
    :try_start_43
    new-instance v8, Lcom/dropbox/client2/exception/DropboxIOException;

    invoke-direct {v8, v2}, Lcom/dropbox/client2/exception/DropboxIOException;-><init>(Ljava/io/IOException;)V

    throw v8
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_49

    .line 252
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_49
    move-exception v8

    :goto_4a
    if-eqz v0, :cond_4f

    .line 254
    :try_start_4c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_72

    .line 256
    :cond_4f
    :goto_4f
    throw v8

    .line 241
    :catch_50
    move-exception v2

    .line 242
    .local v2, "e":Lorg/json/simple/parser/ParseException;
    :goto_51
    :try_start_51
    invoke-static {p0}, Lcom/dropbox/client2/exception/DropboxServerException;->isValidWithNullBody(Lorg/apache/http/HttpResponse;)Z

    move-result v8

    if-eqz v8, :cond_5d

    .line 244
    new-instance v8, Lcom/dropbox/client2/exception/DropboxServerException;

    invoke-direct {v8, p0}, Lcom/dropbox/client2/exception/DropboxServerException;-><init>(Lorg/apache/http/HttpResponse;)V

    throw v8

    .line 247
    :cond_5d
    new-instance v8, Lcom/dropbox/client2/exception/DropboxParseException;

    invoke-direct {v8, v0}, Lcom/dropbox/client2/exception/DropboxParseException;-><init>(Ljava/io/BufferedReader;)V

    throw v8

    .line 249
    .end local v2    # "e":Lorg/json/simple/parser/ParseException;
    :catch_63
    move-exception v2

    .line 250
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    :goto_64
    new-instance v8, Lcom/dropbox/client2/exception/DropboxException;

    invoke-direct {v8, v2}, Lcom/dropbox/client2/exception/DropboxException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_6a
    .catchall {:try_start_51 .. :try_end_6a} :catchall_49

    .line 265
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    .end local v6    # "result":Ljava/lang/Object;
    .restart local v3    # "ent":Lorg/apache/http/HttpEntity;
    .restart local v7    # "statusCode":I
    :cond_6a
    new-instance v8, Lcom/dropbox/client2/exception/DropboxServerException;

    invoke-direct {v8, p0, v6}, Lcom/dropbox/client2/exception/DropboxServerException;-><init>(Lorg/apache/http/HttpResponse;Ljava/lang/Object;)V

    throw v8

    .line 255
    .end local v7    # "statusCode":I
    :catch_70
    move-exception v8

    goto :goto_2c

    .end local v3    # "ent":Lorg/apache/http/HttpEntity;
    .restart local v6    # "result":Ljava/lang/Object;
    :catch_72
    move-exception v9

    goto :goto_4f

    .line 269
    .end local v6    # "result":Ljava/lang/Object;
    .restart local v3    # "ent":Lorg/apache/http/HttpEntity;
    .restart local v7    # "statusCode":I
    :cond_74
    return-object v6

    .line 252
    .end local v0    # "bin":Ljava/io/BufferedReader;
    .end local v7    # "statusCode":I
    .restart local v1    # "bin":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/InputStreamReader;
    .restart local v6    # "result":Ljava/lang/Object;
    :catchall_75
    move-exception v8

    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedReader;
    .restart local v0    # "bin":Ljava/io/BufferedReader;
    goto :goto_4a

    .line 249
    .end local v0    # "bin":Ljava/io/BufferedReader;
    .restart local v1    # "bin":Ljava/io/BufferedReader;
    :catch_78
    move-exception v2

    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedReader;
    .restart local v0    # "bin":Ljava/io/BufferedReader;
    goto :goto_64

    .line 241
    .end local v0    # "bin":Ljava/io/BufferedReader;
    .restart local v1    # "bin":Ljava/io/BufferedReader;
    :catch_7b
    move-exception v2

    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedReader;
    .restart local v0    # "bin":Ljava/io/BufferedReader;
    goto :goto_51

    .line 239
    .end local v0    # "bin":Ljava/io/BufferedReader;
    .restart local v1    # "bin":Ljava/io/BufferedReader;
    :catch_7e
    move-exception v2

    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedReader;
    .restart local v0    # "bin":Ljava/io/BufferedReader;
    goto :goto_43
.end method

.method public static parseAsQueryString(Lorg/apache/http/HttpResponse;)Ljava/util/Map;
    .registers 9
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 293
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-nez v1, :cond_e

    .line 294
    new-instance v6, Lcom/dropbox/client2/exception/DropboxParseException;

    const-string v7, "Bad response from Dropbox."

    invoke-direct {v6, v7}, Lcom/dropbox/client2/exception/DropboxParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 299
    :cond_e
    :try_start_e
    new-instance v6, Ljava/util/Scanner;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1c} :catch_3e

    move-result-object v5

    .line 304
    .local v5, "scanner":Ljava/util/Scanner;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 306
    .local v4, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_22
    invoke-virtual {v5}, Ljava/util/Scanner;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 307
    invoke-virtual {v5}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "nameValue":Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 309
    .local v3, "parts":[Ljava/lang/String;
    array-length v6, v3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_45

    .line 310
    new-instance v6, Lcom/dropbox/client2/exception/DropboxParseException;

    const-string v7, "Bad query string from Dropbox."

    invoke-direct {v6, v7}, Lcom/dropbox/client2/exception/DropboxParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 300
    .end local v2    # "nameValue":Ljava/lang/String;
    .end local v3    # "parts":[Ljava/lang/String;
    .end local v4    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "scanner":Ljava/util/Scanner;
    :catch_3e
    move-exception v0

    .line 301
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Lcom/dropbox/client2/exception/DropboxIOException;

    invoke-direct {v6, v0}, Lcom/dropbox/client2/exception/DropboxIOException;-><init>(Ljava/io/IOException;)V

    throw v6

    .line 312
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "nameValue":Ljava/lang/String;
    .restart local v3    # "parts":[Ljava/lang/String;
    .restart local v4    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "scanner":Ljava/util/Scanner;
    :cond_45
    const/4 v6, 0x0

    aget-object v6, v3, v6

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 315
    .end local v2    # "nameValue":Ljava/lang/String;
    .end local v3    # "parts":[Ljava/lang/String;
    :cond_4f
    return-object v4
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 3
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    .line 493
    :try_start_0
    sget-object v1, Lcom/dropbox/client2/RESTUtility;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 495
    :goto_6
    return-object v1

    .line 494
    :catch_7
    move-exception v0

    .line 495
    .local v0, "e":Ljava/text/ParseException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public static request(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Ljava/lang/Object;
    .registers 8
    .param p0, "method"    # Lcom/dropbox/client2/RESTUtility$RequestMethod;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "apiVersion"    # I
    .param p4, "params"    # [Ljava/lang/String;
    .param p5, "session"    # Lcom/dropbox/client2/session/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-static/range {p0 .. p5}, Lcom/dropbox/client2/RESTUtility;->streamRequest(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;

    move-result-object v1

    iget-object v0, v1, Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;->response:Lorg/apache/http/HttpResponse;

    .line 126
    .local v0, "resp":Lorg/apache/http/HttpResponse;
    invoke-static {v0}, Lcom/dropbox/client2/RESTUtility;->parseAsJSON(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static streamRequest(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;
    .registers 16
    .param p0, "method"    # Lcom/dropbox/client2/RESTUtility$RequestMethod;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "apiVersion"    # I
    .param p4, "params"    # [Ljava/lang/String;
    .param p5, "session"    # Lcom/dropbox/client2/session/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 164
    sget-object v7, Lcom/dropbox/client2/RESTUtility$RequestMethod;->GET:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    if-ne p0, v7, :cond_1a

    .line 165
    invoke-static {p1, p3, p2, p4}, Lcom/dropbox/client2/RESTUtility;->buildURL(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 166
    .local v6, "target":Ljava/lang/String;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 193
    .local v4, "req":Lorg/apache/http/client/methods/HttpUriRequest;
    :goto_d
    invoke-interface {p5, v4}, Lcom/dropbox/client2/session/Session;->sign(Lorg/apache/http/HttpRequest;)V

    .line 194
    invoke-static {p5, v4}, Lcom/dropbox/client2/RESTUtility;->execute(Lcom/dropbox/client2/session/Session;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 196
    .local v5, "resp":Lorg/apache/http/HttpResponse;
    new-instance v7, Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;

    invoke-direct {v7, v4, v5}, Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)V

    return-object v7

    .line 168
    .end local v4    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v5    # "resp":Lorg/apache/http/HttpResponse;
    .end local v6    # "target":Ljava/lang/String;
    :cond_1a
    const/4 v7, 0x0

    invoke-static {p1, p3, p2, v7}, Lcom/dropbox/client2/RESTUtility;->buildURL(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 169
    .restart local v6    # "target":Ljava/lang/String;
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 171
    .local v3, "post":Lorg/apache/http/client/methods/HttpPost;
    if-eqz p4, :cond_61

    array-length v7, p4

    const/4 v8, 0x2

    if-lt v7, v8, :cond_61

    .line 172
    array-length v7, p4

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_37

    .line 173
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Params must have an even number of elements."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 175
    :cond_37
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v2, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3d
    array-length v7, p4

    if-ge v1, v7, :cond_57

    .line 178
    add-int/lit8 v7, v1, 0x1

    aget-object v7, p4, v7

    if-eqz v7, :cond_54

    .line 179
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    aget-object v8, p4, v1

    add-int/lit8 v9, v1, 0x1

    aget-object v9, p4, v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_54
    add-int/lit8 v1, v1, 0x2

    goto :goto_3d

    .line 184
    :cond_57
    :try_start_57
    new-instance v7, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v8, "UTF-8"

    invoke-direct {v7, v2, v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_61
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_57 .. :try_end_61} :catch_63

    .line 190
    .end local v1    # "i":I
    .end local v2    # "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_61
    move-object v4, v3

    .restart local v4    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_d

    .line 185
    .end local v4    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v1    # "i":I
    .restart local v2    # "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :catch_63
    move-exception v0

    .line 186
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v7, Lcom/dropbox/client2/exception/DropboxException;

    invoke-direct {v7, v0}, Lcom/dropbox/client2/exception/DropboxException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method private static updateClientProxy(Lorg/apache/http/client/HttpClient;Lcom/dropbox/client2/session/Session;)V
    .registers 6
    .param p0, "client"    # Lorg/apache/http/client/HttpClient;
    .param p1, "session"    # Lcom/dropbox/client2/session/Session;

    .prologue
    .line 512
    invoke-interface {p1}, Lcom/dropbox/client2/session/Session;->getProxyInfo()Lcom/dropbox/client2/session/Session$ProxyInfo;

    move-result-object v1

    .line 513
    .local v1, "proxyInfo":Lcom/dropbox/client2/session/Session$ProxyInfo;
    if-eqz v1, :cond_33

    iget-object v2, v1, Lcom/dropbox/client2/session/Session$ProxyInfo;->host:Ljava/lang/String;

    if-eqz v2, :cond_33

    iget-object v2, v1, Lcom/dropbox/client2/session/Session$ProxyInfo;->host:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 515
    iget v2, v1, Lcom/dropbox/client2/session/Session$ProxyInfo;->port:I

    if-gez v2, :cond_29

    .line 516
    new-instance v0, Lorg/apache/http/HttpHost;

    iget-object v2, v1, Lcom/dropbox/client2/session/Session$ProxyInfo;->host:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    .line 520
    .local v0, "proxy":Lorg/apache/http/HttpHost;
    :goto_1f
    invoke-interface {p0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.route.default-proxy"

    invoke-interface {v2, v3, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 524
    .end local v0    # "proxy":Lorg/apache/http/HttpHost;
    :goto_28
    return-void

    .line 518
    :cond_29
    new-instance v0, Lorg/apache/http/HttpHost;

    iget-object v2, v1, Lcom/dropbox/client2/session/Session$ProxyInfo;->host:Ljava/lang/String;

    iget v3, v1, Lcom/dropbox/client2/session/Session$ProxyInfo;->port:I

    invoke-direct {v0, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .restart local v0    # "proxy":Lorg/apache/http/HttpHost;
    goto :goto_1f

    .line 522
    .end local v0    # "proxy":Lorg/apache/http/HttpHost;
    :cond_33
    invoke-interface {p0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.route.default-proxy"

    invoke-interface {v2, v3}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    goto :goto_28
.end method

.method private static declared-synchronized updatedHttpClient(Lcom/dropbox/client2/session/Session;)Lorg/apache/http/client/HttpClient;
    .registers 4
    .param p0, "session"    # Lcom/dropbox/client2/session/Session;

    .prologue
    .line 503
    const-class v2, Lcom/dropbox/client2/RESTUtility;

    monitor-enter v2

    :try_start_3
    invoke-interface {p0}, Lcom/dropbox/client2/session/Session;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 504
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    invoke-static {v0, p0}, Lcom/dropbox/client2/RESTUtility;->updateClientProxy(Lorg/apache/http/client/HttpClient;Lcom/dropbox/client2/session/Session;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 505
    monitor-exit v2

    return-object v0

    .line 503
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    :catchall_c
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static urlencode([Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "params"    # [Ljava/lang/String;

    .prologue
    .line 530
    array-length v4, p0

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_d

    .line 531
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Params must have an even number of elements."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 534
    :cond_d
    const-string v3, ""

    .line 536
    .local v3, "result":Ljava/lang/String;
    const/4 v1, 0x1

    .line 537
    .local v1, "firstTime":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    :try_start_11
    array-length v4, p0

    if-ge v2, v4, :cond_64

    .line 538
    add-int/lit8 v4, v2, 0x1

    aget-object v4, p0, v4

    if-eqz v4, :cond_4a

    .line 539
    if-eqz v1, :cond_4d

    .line 540
    const/4 v1, 0x0

    .line 544
    :goto_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p0, v2

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    aget-object v5, p0, v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 537
    :cond_4a
    add-int/lit8 v2, v2, 0x2

    goto :goto_11

    .line 542
    :cond_4d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_5f} :catch_61

    move-result-object v3

    goto :goto_1d

    .line 548
    :catch_61
    move-exception v0

    .line 549
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v4, 0x0

    .line 551
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_63
    return-object v4

    :cond_64
    move-object v4, v3

    goto :goto_63
.end method
