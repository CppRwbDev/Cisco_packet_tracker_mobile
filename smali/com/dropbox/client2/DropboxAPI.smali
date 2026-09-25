.class public Lcom/dropbox/client2/DropboxAPI;
.super Ljava/lang/Object;
.source "DropboxAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/client2/DropboxAPI$1;,
        Lcom/dropbox/client2/DropboxAPI$CreatedCopyRef;,
        Lcom/dropbox/client2/DropboxAPI$DeltaEntry;,
        Lcom/dropbox/client2/DropboxAPI$DeltaPage;,
        Lcom/dropbox/client2/DropboxAPI$ThumbFormat;,
        Lcom/dropbox/client2/DropboxAPI$ThumbSize;,
        Lcom/dropbox/client2/DropboxAPI$DropboxLink;,
        Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;,
        Lcom/dropbox/client2/DropboxAPI$BasicUploadRequest;,
        Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;,
        Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;,
        Lcom/dropbox/client2/DropboxAPI$UploadRequest;,
        Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;,
        Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;,
        Lcom/dropbox/client2/DropboxAPI$ChunkedUploadResponse;,
        Lcom/dropbox/client2/DropboxAPI$Entry;,
        Lcom/dropbox/client2/DropboxAPI$Account;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SESS_T::",
        "Lcom/dropbox/client2/session/Session;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final MAX_UPLOAD_SIZE:J = 0xb400000L

.field protected static final METADATA_DEFAULT_LIMIT:I = 0x61a8

.field private static final REVISION_DEFAULT_LIMIT:I = 0x3e8

.field public static final SDK_VERSION:Ljava/lang/String;

.field private static final SEARCH_DEFAULT_LIMIT:I = 0x2710

.field private static final UPLOAD_SO_TIMEOUT_MS:I = 0x2bf20

.field public static final VERSION:I = 0x1


# instance fields
.field protected final session:Lcom/dropbox/client2/session/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSESS_T;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    invoke-static {}, Lcom/dropbox/client2/SdkVersion;->get()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/client2/DropboxAPI;->SDK_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/client2/session/Session;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSESS_T;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    .local p1, "session":Lcom/dropbox/client2/session/Session;, "TSESS_T;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    if-nez p1, :cond_d

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_d
    iput-object p1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    .line 106
    return-void
.end method

.method static synthetic access$300(Lcom/dropbox/client2/DropboxAPI;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/dropbox/client2/DropboxAPI$Entry;
    .registers 6
    .param p0, "x0"    # Lcom/dropbox/client2/DropboxAPI;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dropbox/client2/DropboxAPI;->commitChunkedUpload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/dropbox/client2/DropboxAPI$Entry;

    move-result-object v0

    return-object v0
.end method

.method private commitChunkedUpload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/dropbox/client2/DropboxAPI$Entry;
    .registers 14
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uploadId"    # Ljava/lang/String;
    .param p3, "overwrite"    # Z
    .param p4, "parentRev"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v8, 0x1

    .line 2220
    if-eqz p1, :cond_b

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 2221
    :cond_b
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "path is null or empty."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2224
    :cond_13
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 2226
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_31

    .line 2227
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2230
    :cond_31
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/commit_chunked_upload/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v7}, Lcom/dropbox/client2/session/Session;->getAccessType()Lcom/dropbox/client2/session/Session$AccessType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2234
    .local v4, "target":Ljava/lang/String;
    const/16 v6, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "overwrite"

    aput-object v7, v2, v6

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v8

    const/4 v6, 0x2

    const-string v7, "parent_rev"

    aput-object v7, v2, v6

    const/4 v6, 0x3

    aput-object p4, v2, v6

    const/4 v6, 0x4

    const-string v7, "locale"

    aput-object v7, v2, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v7}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x6

    const-string v7, "upload_id"

    aput-object v7, v2, v6

    const/4 v6, 0x7

    aput-object p2, v2, v6

    .line 2241
    .local v2, "params":[Ljava/lang/String;
    iget-object v6, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v6}, Lcom/dropbox/client2/session/Session;->getContentServer()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8, v4, v2}, Lcom/dropbox/client2/RESTUtility;->buildURL(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2244
    .local v5, "url":Ljava/lang/String;
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 2246
    .local v3, "req":Lorg/apache/http/client/methods/HttpUriRequest;
    iget-object v6, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v6, v3}, Lcom/dropbox/client2/session/Session;->sign(Lorg/apache/http/HttpRequest;)V

    .line 2248
    iget-object v6, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static {v6, v3}, Lcom/dropbox/client2/RESTUtility;->execute(Lcom/dropbox/client2/session/Session;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 2250
    .local v0, "hresp":Lorg/apache/http/HttpResponse;
    invoke-static {v0}, Lcom/dropbox/client2/RESTUtility;->parseAsJSON(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 2251
    .local v1, "json":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v6, Lcom/dropbox/client2/DropboxAPI$Entry;

    invoke-direct {v6, v1}, Lcom/dropbox/client2/DropboxAPI$Entry;-><init>(Ljava/util/Map;)V

    return-object v6
.end method

.method protected static getFromMapAsBoolean(Ljava/util/Map;Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2124
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2125
    .local v0, "val":Ljava/lang/Object;
    if-eqz v0, :cond_11

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_11

    .line 2126
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "val":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2128
    :goto_10
    return v1

    .restart local v0    # "val":Ljava/lang/Object;
    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method protected static getFromMapAsLong(Ljava/util/Map;Ljava/lang/String;)J
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .prologue
    .line 2539
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2540
    .local v2, "val":Ljava/lang/Object;
    const-wide/16 v0, 0x0

    .line 2541
    .local v0, "ret":J
    if-eqz v2, :cond_12

    .line 2542
    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_13

    .line 2543
    check-cast v2, Ljava/lang/Number;

    .end local v2    # "val":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 2550
    :cond_12
    :goto_12
    return-wide v0

    .line 2544
    .restart local v2    # "val":Ljava/lang/Object;
    :cond_13
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_12

    .line 2547
    check-cast v2, Ljava/lang/String;

    .end local v2    # "val":Ljava/lang/Object;
    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    goto :goto_12
.end method

.method private putFileRequest(Ljava/lang/String;Ljava/io/InputStream;JZLjava/lang/String;Lcom/dropbox/client2/ProgressListener;)Lcom/dropbox/client2/DropboxAPI$UploadRequest;
    .registers 19
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .param p5, "overwrite"    # Z
    .param p6, "parentRev"    # Ljava/lang/String;
    .param p7, "listener"    # Lcom/dropbox/client2/ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 2173
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    if-eqz p1, :cond_a

    const-string v8, ""

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 2174
    :cond_a
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "path is null or empty."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2177
    :cond_12
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 2179
    const-string v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_30

    .line 2180
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2183
    :cond_30
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/files_put/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v9}, Lcom/dropbox/client2/session/Session;->getAccessType()Lcom/dropbox/client2/session/Session$AccessType;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2185
    .local v6, "target":Ljava/lang/String;
    if-nez p6, :cond_51

    .line 2186
    const-string p6, ""

    .line 2189
    :cond_51
    const/4 v8, 0x6

    new-array v4, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "overwrite"

    aput-object v9, v4, v8

    const/4 v8, 0x1

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x2

    const-string v9, "parent_rev"

    aput-object v9, v4, v8

    const/4 v8, 0x3

    aput-object p6, v4, v8

    const/4 v8, 0x4

    const-string v9, "locale"

    aput-object v9, v4, v8

    const/4 v8, 0x5

    iget-object v9, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v9}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    .line 2195
    .local v4, "params":[Ljava/lang/String;
    iget-object v8, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v8}, Lcom/dropbox/client2/session/Session;->getContentServer()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9, v6, v4}, Lcom/dropbox/client2/RESTUtility;->buildURL(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2198
    .local v7, "url":Ljava/lang/String;
    new-instance v5, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v5, v7}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 2199
    .local v5, "req":Lorg/apache/http/client/methods/HttpPut;
    iget-object v8, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v8, v5}, Lcom/dropbox/client2/session/Session;->sign(Lorg/apache/http/HttpRequest;)V

    .line 2201
    new-instance v3, Lorg/apache/http/entity/InputStreamEntity;

    invoke-direct {v3, p2, p3, p4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 2202
    .local v3, "isEntity":Lorg/apache/http/entity/InputStreamEntity;
    const-string v8, "application/octet-stream"

    invoke-virtual {v3, v8}, Lorg/apache/http/entity/InputStreamEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 2203
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lorg/apache/http/entity/InputStreamEntity;->setChunked(Z)V

    .line 2205
    move-object v1, v3

    .line 2207
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz p7, :cond_a8

    .line 2208
    new-instance v2, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity;

    move-object/from16 v0, p7

    invoke-direct {v2, v1, v0}, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity;-><init>(Lorg/apache/http/HttpEntity;Lcom/dropbox/client2/ProgressListener;)V

    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    move-object v1, v2

    .line 2211
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v1    # "entity":Lorg/apache/http/HttpEntity;
    :cond_a8
    invoke-virtual {v5, v1}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 2213
    new-instance v8, Lcom/dropbox/client2/DropboxAPI$BasicUploadRequest;

    iget-object v9, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-direct {v8, v5, v9}, Lcom/dropbox/client2/DropboxAPI$BasicUploadRequest;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/dropbox/client2/session/Session;)V

    return-object v8
.end method


# virtual methods
.method public accountInfo()Lcom/dropbox/client2/DropboxAPI$Account;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v3, 0x1

    .line 1272
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 1275
    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->GET:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAPIServer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/account/info"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "locale"

    aput-object v7, v4, v5

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v5}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/client2/RESTUtility;->request(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 1281
    .local v6, "accountInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/dropbox/client2/DropboxAPI$Account;

    invoke-direct {v0, v6}, Lcom/dropbox/client2/DropboxAPI$Account;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public addFromCopyRef(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/client2/DropboxAPI$Entry;
    .registers 10
    .param p1, "sourceCopyRef"    # Ljava/lang/String;
    .param p2, "targetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v3, 0x1

    .line 2496
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 2498
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 2499
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'targetPath\' doesn\'t start with \"/\": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2502
    :cond_25
    const/16 v0, 0x8

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "locale"

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v0}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v0, 0x2

    const-string v1, "root"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAccessType()Lcom/dropbox/client2/session/Session$AccessType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/client2/session/Session$AccessType;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string v1, "from_copy_ref"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    aput-object p1, v4, v0

    const/4 v0, 0x6

    const-string v1, "to_path"

    aput-object v1, v4, v0

    const/4 v0, 0x7

    aput-object p2, v4, v0

    .line 2509
    .local v4, "params":[Ljava/lang/String;
    const-string v2, "/fileops/copy"

    .line 2512
    .local v2, "url_path":Ljava/lang/String;
    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->GET:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAPIServer()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/client2/RESTUtility;->request(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 2516
    .local v6, "dirinfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/dropbox/client2/DropboxAPI$Entry;

    invoke-direct {v0, v6}, Lcom/dropbox/client2/DropboxAPI$Entry;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method protected assertAuthenticated()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxUnlinkedException;
        }
    .end annotation

    .prologue
    .line 2524
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v0}, Lcom/dropbox/client2/session/Session;->isLinked()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2525
    new-instance v0, Lcom/dropbox/client2/exception/DropboxUnlinkedException;

    invoke-direct {v0}, Lcom/dropbox/client2/exception/DropboxUnlinkedException;-><init>()V

    throw v0

    .line 2527
    :cond_e
    return-void
.end method

.method public chunkedUploadRequest(Ljava/io/InputStream;JLcom/dropbox/client2/ProgressListener;JLjava/lang/String;)Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;
    .registers 17
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "length"    # J
    .param p4, "listener"    # Lcom/dropbox/client2/ProgressListener;
    .param p5, "offset"    # J
    .param p7, "uploadId"    # Ljava/lang/String;

    .prologue
    .line 1004
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const-wide/16 v6, 0x0

    cmp-long v6, p5, v6

    if-nez v6, :cond_42

    .line 1005
    const/4 v6, 0x0

    new-array v3, v6, [Ljava/lang/String;

    .line 1009
    .local v3, "params":[Ljava/lang/String;
    :goto_9
    iget-object v6, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v6}, Lcom/dropbox/client2/session/Session;->getContentServer()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const-string v8, "/chunked_upload/"

    invoke-static {v6, v7, v8, v3}, Lcom/dropbox/client2/RESTUtility;->buildURL(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1010
    .local v5, "url":Ljava/lang/String;
    new-instance v4, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 1011
    .local v4, "req":Lorg/apache/http/client/methods/HttpPut;
    iget-object v6, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v6, v4}, Lcom/dropbox/client2/session/Session;->sign(Lorg/apache/http/HttpRequest;)V

    .line 1013
    new-instance v2, Lorg/apache/http/entity/InputStreamEntity;

    invoke-direct {v2, p1, p2, p3}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 1014
    .local v2, "ise":Lorg/apache/http/entity/InputStreamEntity;
    const-string v6, "application/octet-stream"

    invoke-virtual {v2, v6}, Lorg/apache/http/entity/InputStreamEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 1015
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lorg/apache/http/entity/InputStreamEntity;->setChunked(Z)V

    .line 1016
    move-object v0, v2

    .line 1018
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz p4, :cond_37

    .line 1019
    new-instance v1, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity;

    invoke-direct {v1, v0, p4}, Lcom/dropbox/client2/ProgressListener$ProgressHttpEntity;-><init>(Lorg/apache/http/HttpEntity;Lcom/dropbox/client2/ProgressListener;)V

    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    move-object v0, v1

    .line 1021
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v0    # "entity":Lorg/apache/http/HttpEntity;
    :cond_37
    invoke-virtual {v4, v0}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1023
    new-instance v6, Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;

    iget-object v7, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-direct {v6, v4, v7}, Lcom/dropbox/client2/DropboxAPI$ChunkedUploadRequest;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/dropbox/client2/session/Session;)V

    return-object v6

    .line 1007
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .end local v2    # "ise":Lorg/apache/http/entity/InputStreamEntity;
    .end local v3    # "params":[Ljava/lang/String;
    .end local v4    # "req":Lorg/apache/http/client/methods/HttpPut;
    .end local v5    # "url":Ljava/lang/String;
    :cond_42
    const/4 v6, 0x4

    new-array v3, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "upload_id"

    aput-object v7, v3, v6

    const/4 v6, 0x1

    aput-object p7, v3, v6

    const/4 v6, 0x2

    const-string v7, "offset"

    aput-object v7, v3, v6

    const/4 v6, 0x3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    .restart local v3    # "params":[Ljava/lang/String;
    goto :goto_9
.end method

.method public copy(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/client2/DropboxAPI$Entry;
    .registers 10
    .param p1, "fromPath"    # Ljava/lang/String;
    .param p2, "toPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v3, 0x1

    .line 1911
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 1913
    const/16 v0, 0x8

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "root"

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v0}, Lcom/dropbox/client2/session/Session;->getAccessType()Lcom/dropbox/client2/session/Session$AccessType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/client2/session/Session$AccessType;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v0, 0x2

    const-string v1, "from_path"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object p1, v4, v0

    const/4 v0, 0x4

    const-string v1, "to_path"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    aput-object p2, v4, v0

    const/4 v0, 0x6

    const-string v1, "locale"

    aput-object v1, v4, v0

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1919
    .local v4, "params":[Ljava/lang/String;
    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->POST:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAPIServer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/fileops/copy"

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/client2/RESTUtility;->request(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 1924
    .local v6, "resp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/dropbox/client2/DropboxAPI$Entry;

    invoke-direct {v0, v6}, Lcom/dropbox/client2/DropboxAPI$Entry;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public createCopyRef(Ljava/lang/String;)Lcom/dropbox/client2/DropboxAPI$CreatedCopyRef;
    .registers 10
    .param p1, "sourcePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v3, 0x1

    .line 2432
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 2434
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 2435
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'sourcePath\' must start with \"/\": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2438
    :cond_25
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "locale"

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v0}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 2442
    .local v4, "params":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/copy_ref/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAccessType()Lcom/dropbox/client2/session/Session$AccessType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2444
    .local v2, "url_path":Ljava/lang/String;
    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->GET:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAPIServer()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/client2/RESTUtility;->request(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Ljava/lang/Object;

    move-result-object v7

    .line 2448
    .local v7, "result":Ljava/lang/Object;
    :try_start_64
    new-instance v0, Lcom/dropbox/client2/jsonextract/JsonThing;

    invoke-direct {v0, v7}, Lcom/dropbox/client2/jsonextract/JsonThing;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/dropbox/client2/DropboxAPI$CreatedCopyRef;->extractFromJson(Lcom/dropbox/client2/jsonextract/JsonThing;)Lcom/dropbox/client2/DropboxAPI$CreatedCopyRef;
    :try_end_6c
    .catch Lcom/dropbox/client2/jsonextract/JsonExtractionException; {:try_start_64 .. :try_end_6c} :catch_6e

    move-result-object v0

    return-object v0

    .line 2449
    :catch_6e
    move-exception v6

    .line 2450
    .local v6, "ex":Lcom/dropbox/client2/jsonextract/JsonExtractionException;
    new-instance v0, Lcom/dropbox/client2/exception/DropboxParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing /copy_ref results: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/dropbox/client2/jsonextract/JsonExtractionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/client2/exception/DropboxParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createFolder(Ljava/lang/String;)Lcom/dropbox/client2/DropboxAPI$Entry;
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v3, 0x1

    .line 1948
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 1950
    const/4 v0, 0x6

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "root"

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v0}, Lcom/dropbox/client2/session/Session;->getAccessType()Lcom/dropbox/client2/session/Session$AccessType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/client2/session/Session$AccessType;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v0, 0x2

    const-string v1, "path"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object p1, v4, v0

    const/4 v0, 0x4

    const-string v1, "locale"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1955
    .local v4, "params":[Ljava/lang/String;
    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->POST:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAPIServer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/fileops/create_folder"

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/client2/RESTUtility;->request(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 1959
    .local v6, "resp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/dropbox/client2/DropboxAPI$Entry;

    invoke-direct {v0, v6}, Lcom/dropbox/client2/DropboxAPI$Entry;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public delete(Ljava/lang/String;)V
    .registers 8
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v3, 0x1

    .line 1983
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 1985
    const/4 v0, 0x6

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "root"

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v0}, Lcom/dropbox/client2/session/Session;->getAccessType()Lcom/dropbox/client2/session/Session$AccessType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/client2/session/Session$AccessType;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v0, 0x2

    const-string v1, "path"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object p1, v4, v0

    const/4 v0, 0x4

    const-string v1, "locale"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1989
    .local v4, "params":[Ljava/lang/String;
    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->POST:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAPIServer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/fileops/delete"

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/client2/RESTUtility;->request(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Ljava/lang/Object;

    .line 1991
    return-void
.end method

.method public delta(Ljava/lang/String;)Lcom/dropbox/client2/DropboxAPI$DeltaPage;
    .registers 10
    .param p1, "cursor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/client2/DropboxAPI$DeltaPage",
            "<",
            "Lcom/dropbox/client2/DropboxAPI$Entry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v3, 0x1

    .line 2279
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "cursor"

    aput-object v1, v4, v0

    aput-object p1, v4, v3

    const/4 v0, 0x2

    const-string v1, "locale"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 2284
    .local v4, "params":[Ljava/lang/String;
    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->POST:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAPIServer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/delta"

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/client2/RESTUtility;->request(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Ljava/lang/Object;

    move-result-object v7

    .line 2287
    .local v7, "json":Ljava/lang/Object;
    :try_start_2d
    new-instance v0, Lcom/dropbox/client2/jsonextract/JsonThing;

    invoke-direct {v0, v7}, Lcom/dropbox/client2/jsonextract/JsonThing;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lcom/dropbox/client2/DropboxAPI$Entry;->JsonExtractor:Lcom/dropbox/client2/jsonextract/JsonExtractor;

    invoke-static {v0, v1}, Lcom/dropbox/client2/DropboxAPI$DeltaPage;->extractFromJson(Lcom/dropbox/client2/jsonextract/JsonThing;Lcom/dropbox/client2/jsonextract/JsonExtractor;)Lcom/dropbox/client2/DropboxAPI$DeltaPage;
    :try_end_37
    .catch Lcom/dropbox/client2/jsonextract/JsonExtractionException; {:try_start_2d .. :try_end_37} :catch_39

    move-result-object v0

    return-object v0

    .line 2288
    :catch_39
    move-exception v6

    .line 2289
    .local v6, "ex":Lcom/dropbox/client2/jsonextract/JsonExtractionException;
    new-instance v0, Lcom/dropbox/client2/exception/DropboxParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing /delta results: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/dropbox/client2/jsonextract/JsonExtractionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/client2/exception/DropboxParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChunkedUploader(Ljava/io/InputStream;)Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;
    .registers 9
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lcom/dropbox/client2/DropboxAPI",
            "<TSESS_T;>.ChunkedUploader;"
        }
    .end annotation

    .prologue
    .line 727
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    new-instance v1, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;-><init>(Lcom/dropbox/client2/DropboxAPI;Ljava/io/InputStream;JLcom/dropbox/client2/DropboxAPI$1;)V

    return-object v1
.end method

.method public getChunkedUploader(Ljava/io/InputStream;J)Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;
    .registers 12
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "J)",
            "Lcom/dropbox/client2/DropboxAPI",
            "<TSESS_T;>.ChunkedUploader;"
        }
    .end annotation

    .prologue
    .line 735
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    new-instance v1, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;-><init>(Lcom/dropbox/client2/DropboxAPI;Ljava/io/InputStream;JLcom/dropbox/client2/DropboxAPI$1;)V

    return-object v1
.end method

.method public getChunkedUploader(Ljava/io/InputStream;JI)Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;
    .registers 13
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "length"    # J
    .param p4, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "JI)",
            "Lcom/dropbox/client2/DropboxAPI",
            "<TSESS_T;>.ChunkedUploader;"
        }
    .end annotation

    .prologue
    .line 749
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    new-instance v1, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/dropbox/client2/DropboxAPI$ChunkedUploader;-><init>(Lcom/dropbox/client2/DropboxAPI;Ljava/io/InputStream;JILcom/dropbox/client2/DropboxAPI$1;)V

    return-object v1
.end method

.method public getFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lcom/dropbox/client2/ProgressListener;)Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "rev"    # Ljava/lang/String;
    .param p3, "os"    # Ljava/io/OutputStream;
    .param p4, "listener"    # Lcom/dropbox/client2/ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 1336
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/client2/DropboxAPI;->getFileStream(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;

    move-result-object v0

    .line 1337
    .local v0, "dis":Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;
    invoke-virtual {v0, p3, p4}, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->copyStreamToOutput(Ljava/io/OutputStream;Lcom/dropbox/client2/ProgressListener;)V

    .line 1338
    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->getFileInfo()Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;

    move-result-object v1

    return-object v1
.end method

.method public getFileStream(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;
    .registers 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "rev"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v7, 0x1

    .line 1372
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 1374
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 1375
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1378
    :cond_1f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/files/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v6}, Lcom/dropbox/client2/session/Session;->getAccessType()Lcom/dropbox/client2/session/Session$AccessType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1379
    .local v4, "url":Ljava/lang/String;
    const/4 v5, 0x4

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "rev"

    aput-object v6, v0, v5

    aput-object p2, v0, v7

    const/4 v5, 0x2

    const-string v6, "locale"

    aput-object v6, v0, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v6}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 1383
    .local v0, "args":[Ljava/lang/String;
    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v5}, Lcom/dropbox/client2/session/Session;->getContentServer()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7, v4, v0}, Lcom/dropbox/client2/RESTUtility;->buildURL(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1385
    .local v3, "target":Ljava/lang/String;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1386
    .local v1, "req":Lorg/apache/http/client/methods/HttpGet;
    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v5, v1}, Lcom/dropbox/client2/session/Session;->sign(Lorg/apache/http/HttpRequest;)V

    .line 1388
    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static {v5, v1}, Lcom/dropbox/client2/RESTUtility;->execute(Lcom/dropbox/client2/session/Session;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 1390
    .local v2, "response":Lorg/apache/http/HttpResponse;
    new-instance v5, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;

    invoke-direct {v5, v1, v2}, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)V

    return-object v5
.end method

.method public getSession()Lcom/dropbox/client2/session/Session;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSESS_T;"
        }
    .end annotation

    .prologue
    .line 1252
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    return-object v0
.end method

.method public getThumbnail(Ljava/lang/String;Ljava/io/OutputStream;Lcom/dropbox/client2/DropboxAPI$ThumbSize;Lcom/dropbox/client2/DropboxAPI$ThumbFormat;Lcom/dropbox/client2/ProgressListener;)Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;
    .registers 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "size"    # Lcom/dropbox/client2/DropboxAPI$ThumbSize;
    .param p4, "format"    # Lcom/dropbox/client2/DropboxAPI$ThumbFormat;
    .param p5, "listener"    # Lcom/dropbox/client2/ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 1607
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    invoke-virtual {p0, p1, p3, p4}, Lcom/dropbox/client2/DropboxAPI;->getThumbnailStream(Ljava/lang/String;Lcom/dropbox/client2/DropboxAPI$ThumbSize;Lcom/dropbox/client2/DropboxAPI$ThumbFormat;)Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;

    move-result-object v0

    .line 1609
    .local v0, "thumb":Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;
    invoke-virtual {v0, p2, p5}, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->copyStreamToOutput(Ljava/io/OutputStream;Lcom/dropbox/client2/ProgressListener;)V

    .line 1611
    invoke-virtual {v0}, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;->getFileInfo()Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;

    move-result-object v1

    return-object v1
.end method

.method public getThumbnailStream(Ljava/lang/String;Lcom/dropbox/client2/DropboxAPI$ThumbSize;Lcom/dropbox/client2/DropboxAPI$ThumbFormat;)Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;
    .registers 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "size"    # Lcom/dropbox/client2/DropboxAPI$ThumbSize;
    .param p3, "format"    # Lcom/dropbox/client2/DropboxAPI$ThumbFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v3, 0x1

    .line 1647
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 1649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/thumbnails/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAccessType()Lcom/dropbox/client2/session/Session$AccessType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1650
    .local v2, "target":Ljava/lang/String;
    const/4 v0, 0x6

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "size"

    aput-object v1, v4, v0

    invoke-virtual {p2}, Lcom/dropbox/client2/DropboxAPI$ThumbSize;->toAPISize()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v0, 0x2

    const-string v1, "format"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    invoke-virtual {p3}, Lcom/dropbox/client2/DropboxAPI$ThumbFormat;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string v1, "locale"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1653
    .local v4, "params":[Ljava/lang/String;
    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->GET:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getContentServer()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/client2/RESTUtility;->streamRequest(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;

    move-result-object v6

    .line 1656
    .local v6, "rr":Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;
    new-instance v0, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;

    iget-object v1, v6, Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v3, v6, Lcom/dropbox/client2/DropboxAPI$RequestAndResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-direct {v0, v1, v3}, Lcom/dropbox/client2/DropboxAPI$DropboxInputStream;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)V

    return-object v0
.end method

.method public media(Ljava/lang/String;Z)Lcom/dropbox/client2/DropboxAPI$DropboxLink;
    .registers 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "ssl"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v3, 0x1

    .line 2059
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 2060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAccessType()Lcom/dropbox/client2/session/Session$AccessType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2063
    .local v2, "target":Ljava/lang/String;
    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->GET:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAPIServer()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "locale"

    aput-object v7, v4, v5

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v5}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/client2/RESTUtility;->request(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 2069
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/dropbox/client2/DropboxAPI$DropboxLink;

    const/4 v1, 0x0

    invoke-direct {v0, v6, p2, v1}, Lcom/dropbox/client2/DropboxAPI$DropboxLink;-><init>(Ljava/util/Map;ZLcom/dropbox/client2/DropboxAPI$1;)V

    return-object v0
.end method

.method public metadata(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Lcom/dropbox/client2/DropboxAPI$Entry;
    .registers 13
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileLimit"    # I
    .param p3, "hash"    # Ljava/lang/String;
    .param p4, "list"    # Z
    .param p5, "rev"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v3, 0x1

    .line 1713
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 1715
    if-gtz p2, :cond_8

    .line 1716
    const/16 p2, 0x61a8

    .line 1719
    :cond_8
    const/16 v0, 0xa

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "file_limit"

    aput-object v1, v4, v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v0, 0x2

    const-string v1, "hash"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object p3, v4, v0

    const/4 v0, 0x4

    const-string v1, "list"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x6

    const-string v1, "rev"

    aput-object v1, v4, v0

    const/4 v0, 0x7

    aput-object p5, v4, v0

    const/16 v0, 0x8

    const-string v1, "locale"

    aput-object v1, v4, v0

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1727
    .local v4, "params":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/metadata/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAccessType()Lcom/dropbox/client2/session/Session$AccessType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1730
    .local v2, "url_path":Ljava/lang/String;
    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->GET:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAPIServer()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/client2/RESTUtility;->request(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 1734
    .local v6, "dirinfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/dropbox/client2/DropboxAPI$Entry;

    invoke-direct {v0, v6}, Lcom/dropbox/client2/DropboxAPI$Entry;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public move(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/client2/DropboxAPI$Entry;
    .registers 10
    .param p1, "fromPath"    # Ljava/lang/String;
    .param p2, "toPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v3, 0x1

    .line 1871
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 1873
    const/16 v0, 0x8

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "root"

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v0}, Lcom/dropbox/client2/session/Session;->getAccessType()Lcom/dropbox/client2/session/Session$AccessType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/client2/session/Session$AccessType;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v0, 0x2

    const-string v1, "from_path"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object p1, v4, v0

    const/4 v0, 0x4

    const-string v1, "to_path"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    aput-object p2, v4, v0

    const/4 v0, 0x6

    const-string v1, "locale"

    aput-object v1, v4, v0

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1879
    .local v4, "params":[Ljava/lang/String;
    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->POST:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAPIServer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/fileops/move"

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/client2/RESTUtility;->request(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 1884
    .local v6, "resp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/dropbox/client2/DropboxAPI$Entry;

    invoke-direct {v0, v6}, Lcom/dropbox/client2/DropboxAPI$Entry;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public putFile(Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Lcom/dropbox/client2/ProgressListener;)Lcom/dropbox/client2/DropboxAPI$Entry;
    .registers 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .param p5, "parentRev"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/dropbox/client2/ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 1458
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    invoke-virtual/range {p0 .. p6}, Lcom/dropbox/client2/DropboxAPI;->putFileRequest(Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Lcom/dropbox/client2/ProgressListener;)Lcom/dropbox/client2/DropboxAPI$UploadRequest;

    move-result-object v0

    .line 1460
    .local v0, "request":Lcom/dropbox/client2/DropboxAPI$UploadRequest;
    invoke-interface {v0}, Lcom/dropbox/client2/DropboxAPI$UploadRequest;->upload()Lcom/dropbox/client2/DropboxAPI$Entry;

    move-result-object v1

    return-object v1
.end method

.method public putFileOverwrite(Ljava/lang/String;Ljava/io/InputStream;JLcom/dropbox/client2/ProgressListener;)Lcom/dropbox/client2/DropboxAPI$Entry;
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .param p5, "listener"    # Lcom/dropbox/client2/ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 1537
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    invoke-virtual/range {p0 .. p5}, Lcom/dropbox/client2/DropboxAPI;->putFileOverwriteRequest(Ljava/lang/String;Ljava/io/InputStream;JLcom/dropbox/client2/ProgressListener;)Lcom/dropbox/client2/DropboxAPI$UploadRequest;

    move-result-object v0

    .line 1539
    .local v0, "request":Lcom/dropbox/client2/DropboxAPI$UploadRequest;
    invoke-interface {v0}, Lcom/dropbox/client2/DropboxAPI$UploadRequest;->upload()Lcom/dropbox/client2/DropboxAPI$Entry;

    move-result-object v1

    return-object v1
.end method

.method public putFileOverwriteRequest(Ljava/lang/String;Ljava/io/InputStream;JLcom/dropbox/client2/ProgressListener;)Lcom/dropbox/client2/DropboxAPI$UploadRequest;
    .registers 15
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .param p5, "listener"    # Lcom/dropbox/client2/ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 1571
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/dropbox/client2/DropboxAPI;->putFileRequest(Ljava/lang/String;Ljava/io/InputStream;JZLjava/lang/String;Lcom/dropbox/client2/ProgressListener;)Lcom/dropbox/client2/DropboxAPI$UploadRequest;

    move-result-object v0

    return-object v0
.end method

.method public putFileRequest(Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Lcom/dropbox/client2/ProgressListener;)Lcom/dropbox/client2/DropboxAPI$UploadRequest;
    .registers 16
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .param p5, "parentRev"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/dropbox/client2/ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 1498
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/dropbox/client2/DropboxAPI;->putFileRequest(Ljava/lang/String;Ljava/io/InputStream;JZLjava/lang/String;Lcom/dropbox/client2/ProgressListener;)Lcom/dropbox/client2/DropboxAPI$UploadRequest;

    move-result-object v0

    return-object v0
.end method

.method public restore(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/client2/DropboxAPI$Entry;
    .registers 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "rev"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v3, 0x1

    .line 2016
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 2018
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "rev"

    aput-object v1, v4, v0

    aput-object p2, v4, v3

    const/4 v0, 0x2

    const-string v1, "locale"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 2023
    .local v4, "params":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/restore/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAccessType()Lcom/dropbox/client2/session/Session$AccessType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2026
    .local v2, "target":Ljava/lang/String;
    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->GET:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAPIServer()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/client2/RESTUtility;->request(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 2030
    .local v6, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/dropbox/client2/DropboxAPI$Entry;

    invoke-direct {v0, v6}, Lcom/dropbox/client2/DropboxAPI$Entry;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public revisions(Ljava/lang/String;I)Ljava/util/List;
    .registers 13
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "revLimit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/client2/DropboxAPI$Entry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v3, 0x1

    .line 1763
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 1765
    if-gtz p2, :cond_8

    .line 1766
    const/16 p2, 0x3e8

    .line 1769
    :cond_8
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "rev_limit"

    aput-object v1, v4, v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v0, 0x2

    const-string v1, "locale"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1774
    .local v4, "params":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/revisions/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAccessType()Lcom/dropbox/client2/session/Session$AccessType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1776
    .local v2, "url_path":Ljava/lang/String;
    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->GET:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAPIServer()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/client2/RESTUtility;->request(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/simple/JSONArray;

    .line 1780
    .local v9, "revs":Lorg/json/simple/JSONArray;
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 1781
    .local v6, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/client2/DropboxAPI$Entry;>;"
    invoke-virtual {v9}, Lorg/json/simple/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_5e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 1782
    .local v8, "metadata":Ljava/lang/Object;
    new-instance v0, Lcom/dropbox/client2/DropboxAPI$Entry;

    check-cast v8, Ljava/util/Map;

    .end local v8    # "metadata":Ljava/lang/Object;
    invoke-direct {v0, v8}, Lcom/dropbox/client2/DropboxAPI$Entry;-><init>(Ljava/util/Map;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 1785
    :cond_73
    return-object v6
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/util/List;
    .registers 17
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "fileLimit"    # I
    .param p4, "includeDeleted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/client2/DropboxAPI$Entry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .line 1814
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 1816
    if-gtz p3, :cond_7

    .line 1817
    const/16 p3, 0x2710

    .line 1820
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/search/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAccessType()Lcom/dropbox/client2/session/Session$AccessType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1822
    .local v2, "target":Ljava/lang/String;
    const/16 v0, 0x8

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "query"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    const/4 v0, 0x2

    const-string v1, "file_limit"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string v1, "include_deleted"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x6

    const-string v1, "locale"

    aput-object v1, v4, v0

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1829
    .local v4, "params":[Ljava/lang/String;
    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->GET:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAPIServer()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/client2/RESTUtility;->request(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Ljava/lang/Object;

    move-result-object v10

    .line 1832
    .local v10, "response":Ljava/lang/Object;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1833
    .local v11, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/dropbox/client2/DropboxAPI$Entry;>;"
    instance-of v0, v10, Lorg/json/simple/JSONArray;

    if-eqz v0, :cond_92

    move-object v8, v10

    .line 1834
    check-cast v8, Lorg/json/simple/JSONArray;

    .line 1835
    .local v8, "jresp":Lorg/json/simple/JSONArray;
    invoke-virtual {v8}, Lorg/json/simple/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_79
    :goto_79
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 1836
    .local v9, "next":Ljava/lang/Object;
    instance-of v0, v9, Ljava/util/Map;

    if-eqz v0, :cond_79

    .line 1838
    new-instance v6, Lcom/dropbox/client2/DropboxAPI$Entry;

    check-cast v9, Ljava/util/Map;

    .end local v9    # "next":Ljava/lang/Object;
    invoke-direct {v6, v9}, Lcom/dropbox/client2/DropboxAPI$Entry;-><init>(Ljava/util/Map;)V

    .line 1839
    .local v6, "ent":Lcom/dropbox/client2/DropboxAPI$Entry;
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_79

    .line 1844
    .end local v6    # "ent":Lcom/dropbox/client2/DropboxAPI$Entry;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "jresp":Lorg/json/simple/JSONArray;
    :cond_92
    return-object v11
.end method

.method public share(Ljava/lang/String;)Lcom/dropbox/client2/DropboxAPI$DropboxLink;
    .registers 12
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/exception/DropboxException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<TSESS_T;>;"
    const/4 v3, 0x1

    .line 2093
    invoke-virtual {p0}, Lcom/dropbox/client2/DropboxAPI;->assertAuthenticated()V

    .line 2095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/shares/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAccessType()Lcom/dropbox/client2/session/Session$AccessType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2098
    .local v2, "target":Ljava/lang/String;
    sget-object v0, Lcom/dropbox/client2/RESTUtility$RequestMethod;->GET:Lcom/dropbox/client2/RESTUtility$RequestMethod;

    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v1}, Lcom/dropbox/client2/session/Session;->getAPIServer()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "locale"

    aput-object v9, v4, v5

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-interface {v5}, Lcom/dropbox/client2/session/Session;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v5, p0, Lcom/dropbox/client2/DropboxAPI;->session:Lcom/dropbox/client2/session/Session;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/client2/RESTUtility;->request(Lcom/dropbox/client2/RESTUtility$RequestMethod;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/dropbox/client2/session/Session;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 2104
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "url"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2105
    .local v8, "url":Ljava/lang/String;
    const-string v0, "expires"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/client2/RESTUtility;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 2107
    .local v6, "expires":Ljava/util/Date;
    if-eqz v8, :cond_5d

    if-nez v6, :cond_65

    .line 2108
    :cond_5d
    new-instance v0, Lcom/dropbox/client2/exception/DropboxParseException;

    const-string v1, "Could not parse share response."

    invoke-direct {v0, v1}, Lcom/dropbox/client2/exception/DropboxParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2111
    :cond_65
    new-instance v0, Lcom/dropbox/client2/DropboxAPI$DropboxLink;

    const/4 v1, 0x0

    invoke-direct {v0, v7, v1}, Lcom/dropbox/client2/DropboxAPI$DropboxLink;-><init>(Ljava/util/Map;Lcom/dropbox/client2/DropboxAPI$1;)V

    return-object v0
.end method
