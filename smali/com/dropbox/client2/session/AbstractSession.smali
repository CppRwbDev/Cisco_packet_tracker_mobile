.class public abstract Lcom/dropbox/client2/session/AbstractSession;
.super Ljava/lang/Object;
.source "AbstractSession.java"

# interfaces
.implements Lcom/dropbox/client2/session/Session;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/client2/session/AbstractSession$GzipDecompressingEntity;,
        Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;,
        Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;,
        Lcom/dropbox/client2/session/AbstractSession$DBConnectionReuseStrategy;,
        Lcom/dropbox/client2/session/AbstractSession$DBKeepAliveStrategy;
    }
.end annotation


# static fields
.field private static final API_SERVER:Ljava/lang/String; = "api.dropbox.com"

.field private static final CONTENT_SERVER:Ljava/lang/String; = "api-content.dropbox.com"

.field private static final DEFAULT_TIMEOUT_MILLIS:I = 0x7530

.field private static final KEEP_ALIVE_DURATION_SECS:I = 0x14

.field private static final KEEP_ALIVE_MONITOR_INTERVAL_SECS:I = 0x5

.field private static final WEB_SERVER:Ljava/lang/String; = "www.dropbox.com"


# instance fields
.field private final accessType:Lcom/dropbox/client2/session/Session$AccessType;

.field private final appKeyPair:Lcom/dropbox/client2/session/AppKeyPair;

.field private client:Lorg/apache/http/client/HttpClient;

.field private oauth1AccessToken:Lcom/dropbox/client2/session/AccessTokenPair;

.field private oauth2AccessToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dropbox/client2/session/AppKeyPair;)V
    .registers 3
    .param p1, "appKeyPair"    # Lcom/dropbox/client2/session/AppKeyPair;

    .prologue
    .line 112
    const/4 v0, 0x0

    check-cast v0, Lcom/dropbox/client2/session/AccessTokenPair;

    invoke-direct {p0, p1, v0}, Lcom/dropbox/client2/session/AbstractSession;-><init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/AccessTokenPair;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/AccessTokenPair;)V
    .registers 4
    .param p1, "appKeyPair"    # Lcom/dropbox/client2/session/AppKeyPair;
    .param p2, "oauth1AccessToken"    # Lcom/dropbox/client2/session/AccessTokenPair;

    .prologue
    .line 121
    sget-object v0, Lcom/dropbox/client2/session/Session$AccessType;->AUTO:Lcom/dropbox/client2/session/Session$AccessType;

    invoke-direct {p0, p1, v0, p2}, Lcom/dropbox/client2/session/AbstractSession;-><init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/Session$AccessType;Lcom/dropbox/client2/session/AccessTokenPair;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/Session$AccessType;)V
    .registers 4
    .param p1, "appKeyPair"    # Lcom/dropbox/client2/session/AppKeyPair;
    .param p2, "type"    # Lcom/dropbox/client2/session/Session$AccessType;

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/client2/session/AbstractSession;-><init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/Session$AccessType;Lcom/dropbox/client2/session/AccessTokenPair;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/Session$AccessType;Lcom/dropbox/client2/session/AccessTokenPair;)V
    .registers 6
    .param p1, "appKeyPair"    # Lcom/dropbox/client2/session/AppKeyPair;
    .param p2, "type"    # Lcom/dropbox/client2/session/Session$AccessType;
    .param p3, "oauth1AccessToken"    # Lcom/dropbox/client2/session/AccessTokenPair;

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth1AccessToken:Lcom/dropbox/client2/session/AccessTokenPair;

    .line 103
    iput-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth2AccessToken:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->client:Lorg/apache/http/client/HttpClient;

    .line 157
    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'appKeyPair\' must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_14
    if-nez p2, :cond_1e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'type\' must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1e
    iput-object p1, p0, Lcom/dropbox/client2/session/AbstractSession;->appKeyPair:Lcom/dropbox/client2/session/AppKeyPair;

    .line 161
    iput-object p2, p0, Lcom/dropbox/client2/session/AbstractSession;->accessType:Lcom/dropbox/client2/session/Session$AccessType;

    .line 162
    iput-object p3, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth1AccessToken:Lcom/dropbox/client2/session/AccessTokenPair;

    .line 163
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/client2/session/AppKeyPair;Ljava/lang/String;)V
    .registers 3
    .param p1, "appKeyPair"    # Lcom/dropbox/client2/session/AppKeyPair;
    .param p2, "oauth2AccessToken"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/dropbox/client2/session/AbstractSession;-><init>(Lcom/dropbox/client2/session/AppKeyPair;)V

    .line 131
    iput-object p2, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth2AccessToken:Ljava/lang/String;

    .line 132
    return-void
.end method

.method private static buildOAuth1Header(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/AccessTokenPair;)Ljava/lang/String;
    .registers 6
    .param p0, "appKeyPair"    # Lcom/dropbox/client2/session/AppKeyPair;
    .param p1, "signingTokenPair"    # Lcom/dropbox/client2/session/AccessTokenPair;

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v2, "OAuth oauth_version=\"1.0\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v2, ", oauth_signature_method=\"PLAINTEXT\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const-string v2, ", oauth_consumer_key=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/client2/session/AppKeyPair;->key:Ljava/lang/String;

    invoke-static {v3}, Lcom/dropbox/client2/session/AbstractSession;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    if-eqz p1, :cond_72

    .line 257
    const-string v2, ", oauth_token=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/dropbox/client2/session/AccessTokenPair;->key:Ljava/lang/String;

    invoke-static {v3}, Lcom/dropbox/client2/session/AbstractSession;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dropbox/client2/session/AppKeyPair;->secret:Ljava/lang/String;

    invoke-static {v3}, Lcom/dropbox/client2/session/AbstractSession;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/dropbox/client2/session/AccessTokenPair;->secret:Ljava/lang/String;

    invoke-static {v3}, Lcom/dropbox/client2/session/AbstractSession;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "sig":Ljava/lang/String;
    :goto_5e
    const-string v2, ", oauth_signature=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 262
    .end local v1    # "sig":Ljava/lang/String;
    :cond_72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dropbox/client2/session/AppKeyPair;->secret:Ljava/lang/String;

    invoke-static {v3}, Lcom/dropbox/client2/session/AbstractSession;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "sig":Ljava/lang/String;
    goto :goto_5e
.end method

.method private static encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 272
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {p0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v2

    return-object v2

    .line 273
    :catch_7
    move-exception v1

    .line 274
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v0, Ljava/lang/AssertionError;

    const-string v2, "UTF-8 isn\'t available"

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 275
    .local v0, "ae":Ljava/lang/AssertionError;
    invoke-virtual {v0, v1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 276
    throw v0
.end method


# virtual methods
.method public getAPIServer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 413
    const-string v0, "api.dropbox.com"

    return-object v0
.end method

.method public getAccessTokenPair()Lcom/dropbox/client2/session/AccessTokenPair;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth1AccessToken:Lcom/dropbox/client2/session/AccessTokenPair;

    return-object v0
.end method

.method public getAccessType()Lcom/dropbox/client2/session/Session$AccessType;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->accessType:Lcom/dropbox/client2/session/Session$AccessType;

    return-object v0
.end method

.method public getAppKeyPair()Lcom/dropbox/client2/session/AppKeyPair;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->appKeyPair:Lcom/dropbox/client2/session/AppKeyPair;

    return-object v0
.end method

.method public getContentServer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 418
    const-string v0, "api-content.dropbox.com"

    return-object v0
.end method

.method public declared-synchronized getHttpClient()Lorg/apache/http/client/HttpClient;
    .registers 12

    .prologue
    .line 300
    monitor-enter p0

    :try_start_1
    iget-object v7, p0, Lcom/dropbox/client2/session/AbstractSession;->client:Lorg/apache/http/client/HttpClient;

    if-nez v7, :cond_86

    .line 303
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 304
    .local v2, "connParams":Lorg/apache/http/params/HttpParams;
    new-instance v7, Lcom/dropbox/client2/session/AbstractSession$1;

    invoke-direct {v7, p0}, Lcom/dropbox/client2/session/AbstractSession$1;-><init>(Lcom/dropbox/client2/session/AbstractSession;)V

    invoke-static {v2, v7}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 310
    const/16 v7, 0x14

    invoke-static {v2, v7}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_91

    .line 313
    const/4 v6, 0x0

    .line 315
    .local v6, "sslSocketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :try_start_18
    new-instance v6, Lcom/dropbox/client2/SecureSSLSocketFactory;

    .end local v6    # "sslSocketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    invoke-direct {v6}, Lcom/dropbox/client2/SecureSSLSocketFactory;-><init>()V
    :try_end_1d
    .catch Ljava/security/KeyManagementException; {:try_start_18 .. :try_end_1d} :catch_8a
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_18 .. :try_end_1d} :catch_94
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_18 .. :try_end_1d} :catch_9b
    .catch Ljava/security/KeyStoreException; {:try_start_18 .. :try_end_1d} :catch_a2
    .catch Ljava/security/cert/CertificateException; {:try_start_18 .. :try_end_1d} :catch_a9
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_b0
    .catchall {:try_start_18 .. :try_end_1d} :catchall_91

    .line 331
    .restart local v6    # "sslSocketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :try_start_1d
    new-instance v5, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 332
    .local v5, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v7, Lorg/apache/http/conn/scheme/Scheme;

    const-string v8, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v9

    const/16 v10, 0x50

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v5, v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 334
    new-instance v7, Lorg/apache/http/conn/scheme/Scheme;

    const-string v8, "https"

    const/16 v9, 0x1bb

    invoke-direct {v7, v8, v6, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v5, v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 337
    new-instance v1, Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;

    invoke-direct {v1, v2, v5}, Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 341
    .local v1, "cm":Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 342
    .local v4, "httpParams":Lorg/apache/http/params/HttpParams;
    const/16 v7, 0x7530

    invoke-static {v4, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 343
    const/16 v7, 0x7530

    invoke-static {v4, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 344
    const/16 v7, 0x2000

    invoke-static {v4, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 345
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OfficialDropboxJavaSDK/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/dropbox/client2/DropboxAPI;->SDK_VERSION:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 348
    new-instance v0, Lcom/dropbox/client2/session/AbstractSession$2;

    invoke-direct {v0, p0, v1, v4}, Lcom/dropbox/client2/session/AbstractSession$2;-><init>(Lcom/dropbox/client2/session/AbstractSession;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 360
    .local v0, "c":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v7, Lcom/dropbox/client2/session/AbstractSession$3;

    invoke-direct {v7, p0}, Lcom/dropbox/client2/session/AbstractSession$3;-><init>(Lcom/dropbox/client2/session/AbstractSession;)V

    invoke-virtual {v0, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 371
    new-instance v7, Lcom/dropbox/client2/session/AbstractSession$4;

    invoke-direct {v7, p0}, Lcom/dropbox/client2/session/AbstractSession$4;-><init>(Lcom/dropbox/client2/session/AbstractSession;)V

    invoke-virtual {v0, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 393
    iput-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->client:Lorg/apache/http/client/HttpClient;

    .line 396
    .end local v0    # "c":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v1    # "cm":Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;
    .end local v2    # "connParams":Lorg/apache/http/params/HttpParams;
    .end local v4    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v5    # "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v6    # "sslSocketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :cond_86
    iget-object v7, p0, Lcom/dropbox/client2/session/AbstractSession;->client:Lorg/apache/http/client/HttpClient;
    :try_end_88
    .catchall {:try_start_1d .. :try_end_88} :catchall_91

    monitor-exit p0

    return-object v7

    .line 316
    .restart local v2    # "connParams":Lorg/apache/http/params/HttpParams;
    :catch_8a
    move-exception v3

    .line 317
    .local v3, "e":Ljava/security/KeyManagementException;
    :try_start_8b
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_91
    .catchall {:try_start_8b .. :try_end_91} :catchall_91

    .line 300
    .end local v2    # "connParams":Lorg/apache/http/params/HttpParams;
    .end local v3    # "e":Ljava/security/KeyManagementException;
    :catchall_91
    move-exception v7

    monitor-exit p0

    throw v7

    .line 318
    .restart local v2    # "connParams":Lorg/apache/http/params/HttpParams;
    :catch_94
    move-exception v3

    .line 319
    .local v3, "e":Ljava/security/UnrecoverableKeyException;
    :try_start_95
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 320
    .end local v3    # "e":Ljava/security/UnrecoverableKeyException;
    :catch_9b
    move-exception v3

    .line 321
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 322
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_a2
    move-exception v3

    .line 323
    .local v3, "e":Ljava/security/KeyStoreException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 324
    .end local v3    # "e":Ljava/security/KeyStoreException;
    :catch_a9
    move-exception v3

    .line 325
    .local v3, "e":Ljava/security/cert/CertificateException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 326
    .end local v3    # "e":Ljava/security/cert/CertificateException;
    :catch_b0
    move-exception v3

    .line 327
    .local v3, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_b7
    .catchall {:try_start_95 .. :try_end_b7} :catchall_91
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 210
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    return-object v0
.end method

.method public getOAuth2AccessToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth2AccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getProxyInfo()Lcom/dropbox/client2/session/Session$ProxyInfo;
    .registers 2

    .prologue
    .line 287
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public getWebServer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 423
    const-string v0, "www.dropbox.com"

    return-object v0
.end method

.method public isLinked()Z
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth1AccessToken:Lcom/dropbox/client2/session/AccessTokenPair;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth2AccessToken:Ljava/lang/String;

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public setAccessTokenPair(Lcom/dropbox/client2/session/AccessTokenPair;)V
    .registers 4
    .param p1, "accessTokenPair"    # Lcom/dropbox/client2/session/AccessTokenPair;

    .prologue
    .line 169
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'oauth1AccessToken\' must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_a
    iput-object p1, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth1AccessToken:Lcom/dropbox/client2/session/AccessTokenPair;

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth2AccessToken:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setOAuth2AccessToken(Ljava/lang/String;)V
    .registers 4
    .param p1, "oauth2AccessToken"    # Ljava/lang/String;

    .prologue
    .line 175
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'oauth2AccessToken\' must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_a
    iput-object p1, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth2AccessToken:Ljava/lang/String;

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth1AccessToken:Lcom/dropbox/client2/session/AccessTokenPair;

    .line 178
    return-void
.end method

.method public setRequestTimeout(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .registers 4
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .prologue
    const/16 v1, 0x7530

    .line 406
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 407
    .local v0, "reqParams":Lorg/apache/http/params/HttpParams;
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 408
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 409
    return-void
.end method

.method public sign(Lorg/apache/http/HttpRequest;)V
    .registers 5
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 233
    iget-object v1, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth2AccessToken:Ljava/lang/String;

    if-eqz v1, :cond_1f

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth2AccessToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "v":Ljava/lang/String;
    :goto_19
    const-string v1, "Authorization"

    invoke-interface {p1, v1, v0}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void

    .line 236
    .end local v0    # "v":Ljava/lang/String;
    :cond_1f
    iget-object v1, p0, Lcom/dropbox/client2/session/AbstractSession;->appKeyPair:Lcom/dropbox/client2/session/AppKeyPair;

    iget-object v2, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth1AccessToken:Lcom/dropbox/client2/session/AccessTokenPair;

    invoke-static {v1, v2}, Lcom/dropbox/client2/session/AbstractSession;->buildOAuth1Header(Lcom/dropbox/client2/session/AppKeyPair;Lcom/dropbox/client2/session/AccessTokenPair;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "v":Ljava/lang/String;
    goto :goto_19
.end method

.method public unlink()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth1AccessToken:Lcom/dropbox/client2/session/AccessTokenPair;

    .line 221
    iput-object v0, p0, Lcom/dropbox/client2/session/AbstractSession;->oauth2AccessToken:Ljava/lang/String;

    .line 222
    return-void
.end method
