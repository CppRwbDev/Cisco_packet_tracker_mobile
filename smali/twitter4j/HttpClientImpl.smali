.class Ltwitter4j/HttpClientImpl;
.super Ltwitter4j/HttpClientBase;
.source "HttpClientImpl.java"

# interfaces
.implements Ltwitter4j/HttpResponseCode;
.implements Ljava/io/Serializable;


# static fields
.field private static final instanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ltwitter4j/HttpClientConfiguration;",
            "Ltwitter4j/HttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Ltwitter4j/Logger;

.field private static final serialVersionUID:J = -0x599855c36357ce6L


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 32
    const-class v0, Ltwitter4j/HttpClientImpl;

    invoke-static {v0}, Ltwitter4j/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    .line 40
    :try_start_8
    const-string v0, "dalvik.system.VMRuntime"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 44
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_14} :catch_1d

    .line 59
    :goto_14
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ltwitter4j/HttpClientImpl;->instanceMap:Ljava/util/Map;

    return-void

    .line 45
    :catch_1d
    move-exception v0

    goto :goto_14
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 52
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-interface {v0}, Ltwitter4j/conf/Configuration;->getHttpClientConfiguration()Ltwitter4j/HttpClientConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/HttpClientBase;-><init>(Ltwitter4j/HttpClientConfiguration;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ltwitter4j/HttpClientConfiguration;)V
    .registers 2
    .param p1, "conf"    # Ltwitter4j/HttpClientConfiguration;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Ltwitter4j/HttpClientBase;-><init>(Ltwitter4j/HttpClientConfiguration;)V

    .line 57
    return-void
.end method

.method public static getInstance(Ltwitter4j/HttpClientConfiguration;)Ltwitter4j/HttpClient;
    .registers 3
    .param p0, "conf"    # Ltwitter4j/HttpClientConfiguration;

    .prologue
    .line 62
    sget-object v1, Ltwitter4j/HttpClientImpl;->instanceMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/HttpClient;

    .line 63
    .local v0, "client":Ltwitter4j/HttpClient;
    if-nez v0, :cond_14

    .line 64
    new-instance v0, Ltwitter4j/HttpClientImpl;

    .end local v0    # "client":Ltwitter4j/HttpClient;
    invoke-direct {v0, p0}, Ltwitter4j/HttpClientImpl;-><init>(Ltwitter4j/HttpClientConfiguration;)V

    .line 65
    .restart local v0    # "client":Ltwitter4j/HttpClient;
    sget-object v1, Ltwitter4j/HttpClientImpl;->instanceMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_14
    return-object v0
.end method

.method private setHeaders(Ltwitter4j/HttpRequest;Ljava/net/HttpURLConnection;)V
    .registers 9
    .param p1, "req"    # Ltwitter4j/HttpRequest;
    .param p2, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 202
    sget-object v2, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    invoke-virtual {v2}, Ltwitter4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 203
    sget-object v2, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    const-string v3, "Request: "

    invoke-virtual {v2, v3}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    .line 204
    sget-object v2, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ltwitter4j/HttpRequest;->getMethod()Ltwitter4j/RequestMethod;

    move-result-object v4

    invoke-virtual {v4}, Ltwitter4j/RequestMethod;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ltwitter4j/HttpRequest;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ltwitter4j/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_33
    invoke-virtual {p1}, Ltwitter4j/HttpRequest;->getAuthorization()Ltwitter4j/auth/Authorization;

    move-result-object v2

    if-eqz v2, :cond_5f

    invoke-virtual {p1}, Ltwitter4j/HttpRequest;->getAuthorization()Ltwitter4j/auth/Authorization;

    move-result-object v2

    invoke-interface {v2, p1}, Ltwitter4j/auth/Authorization;->getAuthorizationHeader(Ltwitter4j/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    .local v0, "authorizationHeader":Ljava/lang/String;
    if-eqz v0, :cond_5f

    .line 209
    sget-object v2, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    invoke-virtual {v2}, Ltwitter4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 210
    sget-object v2, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    const-string v3, "Authorization: "

    const-string v4, "."

    const-string v5, "*"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ltwitter4j/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_5a
    const-string v2, "Authorization"

    invoke-virtual {p2, v2, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .end local v0    # "authorizationHeader":Ljava/lang/String;
    :cond_5f
    invoke-virtual {p1}, Ltwitter4j/HttpRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_b1

    .line 215
    invoke-virtual {p1}, Ltwitter4j/HttpRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_71
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 216
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Ltwitter4j/HttpRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    sget-object v4, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ltwitter4j/HttpRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_71

    .line 220
    .end local v1    # "key":Ljava/lang/String;
    :cond_b1
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ltwitter4j/HttpResponse;
    .registers 8
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 71
    new-instance v0, Ltwitter4j/HttpRequest;

    sget-object v1, Ltwitter4j/RequestMethod;->GET:Ltwitter4j/RequestMethod;

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/HttpRequest;-><init>(Ltwitter4j/RequestMethod;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Ltwitter4j/HttpClientImpl;->request(Ltwitter4j/HttpRequest;)Ltwitter4j/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method getConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 9
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-virtual {p0}, Ltwitter4j/HttpClientImpl;->isProxyConfigured()Z

    move-result v2

    if-eqz v2, :cond_f5

    .line 225
    iget-object v2, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v2}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_70

    iget-object v2, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v2}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    .line 226
    sget-object v2, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    invoke-virtual {v2}, Ltwitter4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 227
    sget-object v2, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy AuthUser: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v4}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    .line 228
    sget-object v2, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy AuthPassword: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v4}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPassword()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    const-string v6, "*"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    .line 230
    :cond_68
    new-instance v2, Ltwitter4j/HttpClientImpl$1;

    invoke-direct {v2, p0}, Ltwitter4j/HttpClientImpl$1;-><init>(Ltwitter4j/HttpClientImpl;)V

    invoke-static {v2}, Ljava/net/Authenticator;->setDefault(Ljava/net/Authenticator;)V

    .line 244
    :cond_70
    new-instance v1, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    iget-object v3, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    .line 245
    invoke-interface {v3}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v4}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPort()I

    move-result v4

    invoke-static {v3, v4}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 246
    .local v1, "proxy":Ljava/net/Proxy;
    sget-object v2, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    invoke-virtual {v2}, Ltwitter4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 247
    sget-object v2, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening proxied connection("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v4}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v4}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    .line 249
    :cond_c3
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 253
    .end local v1    # "proxy":Ljava/net/Proxy;
    .local v0, "con":Ljava/net/HttpURLConnection;
    :goto_ce
    iget-object v2, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v2}, Ltwitter4j/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v2

    if-lez v2, :cond_df

    .line 254
    iget-object v2, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v2}, Ltwitter4j/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 256
    :cond_df
    iget-object v2, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v2}, Ltwitter4j/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v2

    if-lez v2, :cond_f0

    .line 257
    iget-object v2, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v2}, Ltwitter4j/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 259
    :cond_f0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 260
    return-object v0

    .line 251
    .end local v0    # "con":Ljava/net/HttpURLConnection;
    :cond_f5
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .restart local v0    # "con":Ljava/net/HttpURLConnection;
    goto :goto_ce
.end method

.method public handleRequest(Ltwitter4j/HttpRequest;)Ltwitter4j/HttpResponse;
    .registers 31
    .param p1, "req"    # Ltwitter4j/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ltwitter4j/HttpClientConfiguration;->getHttpRetryCount()I

    move-result v24

    add-int/lit8 v21, v24, 0x1

    .line 82
    .local v21, "retry":I
    const/16 v16, 0x0

    .line 83
    .local v16, "res":Ltwitter4j/HttpResponse;
    const/16 v20, 0x0

    .local v20, "retriedCount":I
    move-object/from16 v17, v16

    .end local v16    # "res":Ltwitter4j/HttpResponse;
    .local v17, "res":Ltwitter4j/HttpResponse;
    :goto_12
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_409

    .line 84
    const/16 v18, -0x1

    .line 87
    .local v18, "responseCode":I
    const/4 v12, 0x0

    .line 89
    .local v12, "os":Ljava/io/OutputStream;
    :try_start_1b
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/HttpRequest;->getURL()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ltwitter4j/HttpClientImpl;->getConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v7

    .line 90
    .local v7, "con":Ljava/net/HttpURLConnection;
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 91
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Ltwitter4j/HttpClientImpl;->setHeaders(Ltwitter4j/HttpRequest;Ljava/net/HttpURLConnection;)V

    .line 92
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/HttpRequest;->getMethod()Ltwitter4j/RequestMethod;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ltwitter4j/RequestMethod;->name()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/HttpRequest;->getMethod()Ltwitter4j/RequestMethod;

    move-result-object v24

    sget-object v25, Ltwitter4j/RequestMethod;->POST:Ltwitter4j/RequestMethod;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_28b

    .line 94
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/HttpRequest;->getParameters()[Ltwitter4j/HttpParameter;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ltwitter4j/HttpParameter;->containsFile([Ltwitter4j/HttpParameter;)Z

    move-result v24

    if-eqz v24, :cond_305

    .line 95
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "----Twitter4J-upload"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "boundary":Ljava/lang/String;
    const-string v24, "Content-Type"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "multipart/form-data; boundary="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "--"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 98
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 99
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    .line 100
    new-instance v13, Ljava/io/DataOutputStream;

    invoke-direct {v13, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 101
    .local v13, "out":Ljava/io/DataOutputStream;
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/HttpRequest;->getParameters()[Ltwitter4j/HttpParameter;

    move-result-object v26

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    const/16 v24, 0x0

    move/from16 v25, v24

    :goto_c3
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_260

    aget-object v14, v26, v25

    .line 102
    .local v14, "param":Ltwitter4j/HttpParameter;
    invoke-virtual {v14}, Ltwitter4j/HttpParameter;->isFile()Z

    move-result v24

    if-eqz v24, :cond_1dc

    .line 103
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v28, "\r\n"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v13, v1}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 104
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Content-Disposition: form-data; name=\""

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v14}, Ltwitter4j/HttpParameter;->getName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v28, "\"; filename=\""

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v14}, Ltwitter4j/HttpParameter;->getFile()Ljava/io/File;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v28, "\"\r\n"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v13, v1}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 105
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Content-Type: "

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v14}, Ltwitter4j/HttpParameter;->getContentType()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v28, "\r\n\r\n"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v13, v1}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 106
    new-instance v8, Ljava/io/BufferedInputStream;

    .line 107
    invoke-virtual {v14}, Ltwitter4j/HttpParameter;->hasFileBody()Z

    move-result v24

    if-eqz v24, :cond_1bc

    invoke-virtual {v14}, Ltwitter4j/HttpParameter;->getFileBody()Ljava/io/InputStream;

    move-result-object v24

    :goto_177
    move-object/from16 v0, v24

    invoke-direct {v8, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 109
    .local v8, "in":Ljava/io/BufferedInputStream;
    const/16 v24, 0x400

    move/from16 v0, v24

    new-array v5, v0, [B

    .line 111
    .local v5, "buff":[B
    :goto_182
    invoke-virtual {v8, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v11

    .local v11, "length":I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v11, v0, :cond_1ca

    .line 112
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v13, v5, v0, v11}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_193
    .catchall {:try_start_1b .. :try_end_193} :catchall_194

    goto :goto_182

    .line 171
    .end local v4    # "boundary":Ljava/lang/String;
    .end local v5    # "buff":[B
    .end local v7    # "con":Ljava/net/HttpURLConnection;
    .end local v8    # "in":Ljava/io/BufferedInputStream;
    .end local v11    # "length":I
    .end local v13    # "out":Ljava/io/DataOutputStream;
    .end local v14    # "param":Ltwitter4j/HttpParameter;
    :catchall_194
    move-exception v24

    move-object/from16 v16, v17

    .line 172
    .end local v17    # "res":Ltwitter4j/HttpResponse;
    .restart local v16    # "res":Ltwitter4j/HttpResponse;
    :goto_197
    :try_start_197
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_19a
    .catch Ljava/lang/Exception; {:try_start_197 .. :try_end_19a} :catch_404
    .catch Ljava/io/IOException; {:try_start_197 .. :try_end_19a} :catch_19b

    .line 174
    :goto_19a
    :try_start_19a
    throw v24
    :try_end_19b
    .catch Ljava/io/IOException; {:try_start_19a .. :try_end_19b} :catch_19b

    .line 176
    :catch_19b
    move-exception v9

    .line 178
    .local v9, "ioe":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ltwitter4j/HttpClientConfiguration;->getHttpRetryCount()I

    move-result v24

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_3ad

    .line 179
    new-instance v24, Ltwitter4j/TwitterException;

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v18

    invoke-direct {v0, v1, v9, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v24

    .line 107
    .end local v9    # "ioe":Ljava/io/IOException;
    .end local v16    # "res":Ltwitter4j/HttpResponse;
    .restart local v4    # "boundary":Ljava/lang/String;
    .restart local v7    # "con":Ljava/net/HttpURLConnection;
    .restart local v13    # "out":Ljava/io/DataOutputStream;
    .restart local v14    # "param":Ltwitter4j/HttpParameter;
    .restart local v17    # "res":Ltwitter4j/HttpResponse;
    :cond_1bc
    :try_start_1bc
    new-instance v24, Ljava/io/FileInputStream;

    invoke-virtual {v14}, Ltwitter4j/HttpParameter;->getFile()Ljava/io/File;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_177

    .line 114
    .restart local v5    # "buff":[B
    .restart local v8    # "in":Ljava/io/BufferedInputStream;
    .restart local v11    # "length":I
    :cond_1ca
    const-string v24, "\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v13, v1}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V

    .line 101
    .end local v5    # "buff":[B
    .end local v8    # "in":Ljava/io/BufferedInputStream;
    .end local v11    # "length":I
    :goto_1d6
    add-int/lit8 v24, v25, 0x1

    move/from16 v25, v24

    goto/16 :goto_c3

    .line 117
    :cond_1dc
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v28, "\r\n"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v13, v1}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 118
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Content-Disposition: form-data; name=\""

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v14}, Ltwitter4j/HttpParameter;->getName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v28, "\"\r\n"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v13, v1}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 119
    const-string v24, "Content-Type: text/plain; charset=UTF-8\r\n\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v13, v1}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 120
    sget-object v24, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    invoke-virtual {v14}, Ltwitter4j/HttpParameter;->getValue()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v14}, Ltwitter4j/HttpParameter;->getValue()Ljava/lang/String;

    move-result-object v24

    const-string v28, "UTF-8"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 122
    const-string v24, "\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v13, v1}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    goto/16 :goto_1d6

    .line 125
    .end local v14    # "param":Ltwitter4j/HttpParameter;
    :cond_260
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "--\r\n"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v13, v1}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 126
    const-string v24, "\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v13, v1}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 140
    .end local v4    # "boundary":Ljava/lang/String;
    .end local v13    # "out":Ljava/io/DataOutputStream;
    :goto_285
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 141
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 143
    :cond_28b
    new-instance v16, Ltwitter4j/HttpResponseImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v0, v7, v1}, Ltwitter4j/HttpResponseImpl;-><init>(Ljava/net/HttpURLConnection;Ltwitter4j/HttpClientConfiguration;)V
    :try_end_29a
    .catchall {:try_start_1bc .. :try_end_29a} :catchall_194

    .line 144
    .end local v17    # "res":Ltwitter4j/HttpResponse;
    .restart local v16    # "res":Ltwitter4j/HttpResponse;
    :try_start_29a
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v18

    .line 145
    sget-object v24, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    invoke-virtual/range {v24 .. v24}, Ltwitter4j/Logger;->isDebugEnabled()Z

    move-result v24

    if-eqz v24, :cond_356

    .line 146
    sget-object v24, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    const-string v25, "Response: "

    invoke-virtual/range {v24 .. v25}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v19

    .line 148
    .local v19, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_2b9
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_356

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 149
    .local v10, "key":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/List;

    .line 150
    .local v23, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_2d1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_2b9

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 151
    .local v22, "value":Ljava/lang/String;
    if-eqz v10, :cond_34b

    .line 152
    sget-object v26, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ": "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_301
    .catchall {:try_start_29a .. :try_end_301} :catchall_302

    goto :goto_2d1

    .line 171
    .end local v10    # "key":Ljava/lang/String;
    .end local v19    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v22    # "value":Ljava/lang/String;
    .end local v23    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_302
    move-exception v24

    goto/16 :goto_197

    .line 129
    .end local v16    # "res":Ltwitter4j/HttpResponse;
    .restart local v17    # "res":Ltwitter4j/HttpResponse;
    :cond_305
    :try_start_305
    const-string v24, "Content-Type"

    const-string v25, "application/x-www-form-urlencoded"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/HttpRequest;->getParameters()[Ltwitter4j/HttpParameter;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ltwitter4j/HttpParameter;->encodeParameters([Ltwitter4j/HttpParameter;)Ljava/lang/String;

    move-result-object v15

    .line 132
    .local v15, "postParam":Ljava/lang/String;
    sget-object v24, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    const-string v25, "Post Params: "

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v15}, Ltwitter4j/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v24, "UTF-8"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 134
    .local v6, "bytes":[B
    const-string v24, "Content-Length"

    array-length v0, v6

    move/from16 v25, v0

    .line 135
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    .line 134
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 137
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    .line 138
    invoke-virtual {v12, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_349
    .catchall {:try_start_305 .. :try_end_349} :catchall_194

    goto/16 :goto_285

    .line 154
    .end local v6    # "bytes":[B
    .end local v15    # "postParam":Ljava/lang/String;
    .end local v17    # "res":Ltwitter4j/HttpResponse;
    .restart local v10    # "key":Ljava/lang/String;
    .restart local v16    # "res":Ltwitter4j/HttpResponse;
    .restart local v19    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v22    # "value":Ljava/lang/String;
    .restart local v23    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_34b
    :try_start_34b
    sget-object v26, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_2d1

    .line 159
    .end local v10    # "key":Ljava/lang/String;
    .end local v19    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v22    # "value":Ljava/lang/String;
    .end local v23    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_356
    const/16 v24, 0xc8

    move/from16 v0, v18

    move/from16 v1, v24

    if-lt v0, v1, :cond_36e

    const/16 v24, 0x12e

    move/from16 v0, v18

    move/from16 v1, v24

    if-eq v0, v1, :cond_3a6

    const/16 v24, 0x12c

    move/from16 v0, v24

    move/from16 v1, v18

    if-gt v0, v1, :cond_3a6

    .line 160
    :cond_36e
    const/16 v24, 0x1a4

    move/from16 v0, v18

    move/from16 v1, v24

    if-eq v0, v1, :cond_396

    const/16 v24, 0x190

    move/from16 v0, v18

    move/from16 v1, v24

    if-eq v0, v1, :cond_396

    const/16 v24, 0x1f4

    move/from16 v0, v18

    move/from16 v1, v24

    if-lt v0, v1, :cond_396

    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    move-object/from16 v24, v0

    .line 163
    invoke-interface/range {v24 .. v24}, Ltwitter4j/HttpClientConfiguration;->getHttpRetryCount()I

    move-result v24

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_3aa

    .line 164
    :cond_396
    new-instance v24, Ltwitter4j/TwitterException;

    invoke-virtual/range {v16 .. v16}, Ltwitter4j/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/HttpResponse;)V

    throw v24
    :try_end_3a6
    .catchall {:try_start_34b .. :try_end_3a6} :catchall_302

    .line 172
    :cond_3a6
    :try_start_3a6
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_3a9
    .catch Ljava/lang/Exception; {:try_start_3a6 .. :try_end_3a9} :catch_400
    .catch Ljava/io/IOException; {:try_start_3a6 .. :try_end_3a9} :catch_19b

    .line 192
    .end local v7    # "con":Ljava/net/HttpURLConnection;
    .end local v12    # "os":Ljava/io/OutputStream;
    .end local v18    # "responseCode":I
    :goto_3a9
    return-object v16

    .line 172
    .restart local v7    # "con":Ljava/net/HttpURLConnection;
    .restart local v12    # "os":Ljava/io/OutputStream;
    .restart local v18    # "responseCode":I
    :cond_3aa
    :try_start_3aa
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_3ad
    .catch Ljava/lang/Exception; {:try_start_3aa .. :try_end_3ad} :catch_402
    .catch Ljava/io/IOException; {:try_start_3aa .. :try_end_3ad} :catch_19b

    .line 183
    .end local v7    # "con":Ljava/net/HttpURLConnection;
    :cond_3ad
    :goto_3ad
    :try_start_3ad
    sget-object v24, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    invoke-virtual/range {v24 .. v24}, Ltwitter4j/Logger;->isDebugEnabled()Z

    move-result v24

    if-eqz v24, :cond_3ba

    if-eqz v16, :cond_3ba

    .line 184
    invoke-virtual/range {v16 .. v16}, Ltwitter4j/HttpResponse;->asString()Ljava/lang/String;

    .line 186
    :cond_3ba
    sget-object v24, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Sleeping "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ltwitter4j/HttpClientConfiguration;->getHttpRetryIntervalSeconds()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " seconds until the next retry."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ltwitter4j/HttpClientConfiguration;->getHttpRetryIntervalSeconds()I

    move-result v24

    move/from16 v0, v24

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3fa
    .catch Ljava/lang/InterruptedException; {:try_start_3ad .. :try_end_3fa} :catch_407

    .line 83
    :goto_3fa
    add-int/lit8 v20, v20, 0x1

    move-object/from16 v17, v16

    .end local v16    # "res":Ltwitter4j/HttpResponse;
    .restart local v17    # "res":Ltwitter4j/HttpResponse;
    goto/16 :goto_12

    .line 173
    .end local v17    # "res":Ltwitter4j/HttpResponse;
    .restart local v7    # "con":Ljava/net/HttpURLConnection;
    .restart local v16    # "res":Ltwitter4j/HttpResponse;
    :catch_400
    move-exception v24

    goto :goto_3a9

    :catch_402
    move-exception v24

    goto :goto_3ad

    .end local v7    # "con":Ljava/net/HttpURLConnection;
    :catch_404
    move-exception v25

    goto/16 :goto_19a

    .line 188
    :catch_407
    move-exception v24

    goto :goto_3fa

    .end local v12    # "os":Ljava/io/OutputStream;
    .end local v16    # "res":Ltwitter4j/HttpResponse;
    .end local v18    # "responseCode":I
    .restart local v17    # "res":Ltwitter4j/HttpResponse;
    :cond_409
    move-object/from16 v16, v17

    .end local v17    # "res":Ltwitter4j/HttpResponse;
    .restart local v16    # "res":Ltwitter4j/HttpResponse;
    goto :goto_3a9
.end method

.method public post(Ljava/lang/String;[Ltwitter4j/HttpParameter;)Ltwitter4j/HttpResponse;
    .registers 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # [Ltwitter4j/HttpParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 75
    new-instance v0, Ltwitter4j/HttpRequest;

    sget-object v1, Ltwitter4j/RequestMethod;->POST:Ltwitter4j/RequestMethod;

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Ltwitter4j/HttpRequest;-><init>(Ltwitter4j/RequestMethod;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Ltwitter4j/HttpClientImpl;->request(Ltwitter4j/HttpRequest;)Ltwitter4j/HttpResponse;

    move-result-object v0

    return-object v0
.end method
