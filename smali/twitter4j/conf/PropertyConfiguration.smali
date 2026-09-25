.class public final Ltwitter4j/conf/PropertyConfiguration;
.super Ltwitter4j/conf/ConfigurationBase;
.source "PropertyConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final APPLICATION_ONLY_AUTH_ENABLED:Ljava/lang/String; = "enableApplicationOnlyAuth"

.field private static final ASYNC_DAEMON_ENABLED:Ljava/lang/String; = "async.daemonEnabled"

.field private static final ASYNC_DISPATCHER_IMPL:Ljava/lang/String; = "async.dispatcherImpl"

.field private static final ASYNC_NUM_THREADS:Ljava/lang/String; = "async.numThreads"

.field private static final CONTRIBUTING_TO:Ljava/lang/String; = "contributingTo"

.field private static final DEBUG:Ljava/lang/String; = "debug"

.field private static final HTTP_CONNECTION_TIMEOUT:Ljava/lang/String; = "http.connectionTimeout"

.field private static final HTTP_GZIP:Ljava/lang/String; = "http.gzip"

.field private static final HTTP_PRETTY_DEBUG:Ljava/lang/String; = "http.prettyDebug"

.field private static final HTTP_PROXY_HOST:Ljava/lang/String; = "http.proxyHost"

.field private static final HTTP_PROXY_HOST_FALLBACK:Ljava/lang/String; = "http.proxyHost"

.field private static final HTTP_PROXY_PASSWORD:Ljava/lang/String; = "http.proxyPassword"

.field private static final HTTP_PROXY_PORT:Ljava/lang/String; = "http.proxyPort"

.field private static final HTTP_PROXY_PORT_FALLBACK:Ljava/lang/String; = "http.proxyPort"

.field private static final HTTP_PROXY_USER:Ljava/lang/String; = "http.proxyUser"

.field private static final HTTP_READ_TIMEOUT:Ljava/lang/String; = "http.readTimeout"

.field private static final HTTP_RETRY_COUNT:Ljava/lang/String; = "http.retryCount"

.field private static final HTTP_RETRY_INTERVAL_SECS:Ljava/lang/String; = "http.retryIntervalSecs"

.field private static final HTTP_STREAMING_READ_TIMEOUT:Ljava/lang/String; = "http.streamingReadTimeout"

.field private static final INCLUDE_ENTITIES:Ljava/lang/String; = "includeEntities"

.field private static final INCLUDE_MY_RETWEET:Ljava/lang/String; = "includeMyRetweet"

.field private static final JSON_STORE_ENABLED:Ljava/lang/String; = "jsonStoreEnabled"

.field private static final LOGGER_FACTORY:Ljava/lang/String; = "loggerFactory"

.field private static final MBEAN_ENABLED:Ljava/lang/String; = "mbeanEnabled"

.field private static final MEDIA_PROVIDER:Ljava/lang/String; = "media.provider"

.field private static final MEDIA_PROVIDER_API_KEY:Ljava/lang/String; = "media.providerAPIKey"

.field private static final MEDIA_PROVIDER_PARAMETERS:Ljava/lang/String; = "media.providerParameters"

.field private static final OAUTH2_ACCESS_TOKEN:Ljava/lang/String; = "oauth2.accessToken"

.field private static final OAUTH2_INVALIDATE_TOKEN_URL:Ljava/lang/String; = "oauth2.invalidateTokenURL"

.field private static final OAUTH2_TOKEN_TYPE:Ljava/lang/String; = "oauth2.tokenType"

.field private static final OAUTH2_TOKEN_URL:Ljava/lang/String; = "oauth2.tokenURL"

.field private static final OAUTH_ACCESS_TOKEN:Ljava/lang/String; = "oauth.accessToken"

.field private static final OAUTH_ACCESS_TOKEN_SECRET:Ljava/lang/String; = "oauth.accessTokenSecret"

.field private static final OAUTH_ACCESS_TOKEN_URL:Ljava/lang/String; = "oauth.accessTokenURL"

.field private static final OAUTH_AUTHENTICATION_URL:Ljava/lang/String; = "oauth.authenticationURL"

.field private static final OAUTH_AUTHORIZATION_URL:Ljava/lang/String; = "oauth.authorizationURL"

.field private static final OAUTH_CONSUMER_KEY:Ljava/lang/String; = "oauth.consumerKey"

.field private static final OAUTH_CONSUMER_SECRET:Ljava/lang/String; = "oauth.consumerSecret"

.field private static final OAUTH_REQUEST_TOKEN_URL:Ljava/lang/String; = "oauth.requestTokenURL"

.field private static final PASSWORD:Ljava/lang/String; = "password"

.field private static final REST_BASE_URL:Ljava/lang/String; = "restBaseURL"

.field private static final SITE_STREAM_BASE_URL:Ljava/lang/String; = "siteStreamBaseURL"

.field private static final STREAM_BASE_URL:Ljava/lang/String; = "streamBaseURL"

.field private static final STREAM_STALL_WARNINGS_ENABLED:Ljava/lang/String; = "stream.enableStallWarnings"

.field private static final STREAM_USER_REPLIES_ALL:Ljava/lang/String; = "stream.user.repliesAll"

.field private static final STREAM_USER_WITH_FOLLOWINGS:Ljava/lang/String; = "stream.user.withFollowings"

.field private static final USER:Ljava/lang/String; = "user"

.field private static final USER_STREAM_BASE_URL:Ljava/lang/String; = "userStreamBaseURL"

.field private static final serialVersionUID:J = -0x64c9fe16c8d3c6c4L


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 144
    const-string v0, "/"

    invoke-direct {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;-><init>(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 90
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;-><init>()V

    .line 91
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 92
    .local v0, "props":Ljava/util/Properties;
    invoke-direct {p0, v0, p1}, Ltwitter4j/conf/PropertyConfiguration;->loadProperties(Ljava/util/Properties;Ljava/io/InputStream;)Z

    .line 93
    const-string v1, "/"

    invoke-direct {p0, v0, v1}, Ltwitter4j/conf/PropertyConfiguration;->setFieldsWithTreePath(Ljava/util/Properties;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 9
    .param p1, "treePath"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;-><init>()V

    .line 110
    :try_start_3
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Properties;
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_d} :catch_77

    .line 112
    .local v4, "props":Ljava/util/Properties;
    :try_start_d
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v1

    .line 113
    .local v1, "envMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_19
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 114
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_2e} :catch_2f

    goto :goto_19

    .line 116
    .end local v1    # "envMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    :catch_2f
    move-exception v5

    .line 118
    :cond_30
    :try_start_30
    invoke-direct {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->normalize(Ljava/util/Properties;)V
    :try_end_33
    .catch Ljava/lang/SecurityException; {:try_start_30 .. :try_end_33} :catch_77

    .line 123
    :goto_33
    const-string v0, "twitter4j.properties"

    .line 125
    .local v0, "TWITTER4J_PROPERTIES":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-char v6, Ljava/io/File;->separatorChar:C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "twitter4j.properties"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Ltwitter4j/conf/PropertyConfiguration;->loadProperties(Ljava/util/Properties;Ljava/lang/String;)Z

    .line 127
    const-class v5, Ltwitter4j/conf/Configuration;

    const-string v6, "/twitter4j.properties"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Ltwitter4j/conf/PropertyConfiguration;->loadProperties(Ljava/util/Properties;Ljava/io/InputStream;)Z

    .line 129
    const-class v5, Ltwitter4j/conf/Configuration;

    const-string v6, "/WEB-INF/twitter4j.properties"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Ltwitter4j/conf/PropertyConfiguration;->loadProperties(Ljava/util/Properties;Ljava/io/InputStream;)Z

    .line 132
    :try_start_69
    new-instance v5, Ljava/io/FileInputStream;

    const-string v6, "WEB-INF/twitter4j.properties"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4, v5}, Ltwitter4j/conf/PropertyConfiguration;->loadProperties(Ljava/util/Properties;Ljava/io/InputStream;)Z
    :try_end_73
    .catch Ljava/lang/SecurityException; {:try_start_69 .. :try_end_73} :catch_80
    .catch Ljava/io/FileNotFoundException; {:try_start_69 .. :try_end_73} :catch_7e

    .line 137
    :goto_73
    invoke-direct {p0, v4, p1}, Ltwitter4j/conf/PropertyConfiguration;->setFieldsWithTreePath(Ljava/util/Properties;Ljava/lang/String;)V

    .line 138
    return-void

    .line 119
    .end local v0    # "TWITTER4J_PROPERTIES":Ljava/lang/String;
    .end local v4    # "props":Ljava/util/Properties;
    :catch_77
    move-exception v2

    .line 121
    .local v2, "ignore":Ljava/lang/SecurityException;
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .restart local v4    # "props":Ljava/util/Properties;
    goto :goto_33

    .line 134
    .end local v2    # "ignore":Ljava/lang/SecurityException;
    .restart local v0    # "TWITTER4J_PROPERTIES":Ljava/lang/String;
    :catch_7e
    move-exception v5

    goto :goto_73

    .line 133
    :catch_80
    move-exception v5

    goto :goto_73
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .registers 3
    .param p1, "props"    # Ljava/util/Properties;

    .prologue
    .line 97
    const-string v0, "/"

    invoke-direct {p0, p1, v0}, Ltwitter4j/conf/PropertyConfiguration;-><init>(Ljava/util/Properties;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;Ljava/lang/String;)V
    .registers 3
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "treePath"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;-><init>()V

    .line 102
    invoke-direct {p0, p1, p2}, Ltwitter4j/conf/PropertyConfiguration;->setFieldsWithTreePath(Ljava/util/Properties;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method private loadProperties(Ljava/util/Properties;Ljava/io/InputStream;)Z
    .registers 4
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "is"    # Ljava/io/InputStream;

    .prologue
    .line 176
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 177
    invoke-direct {p0, p1}, Ltwitter4j/conf/PropertyConfiguration;->normalize(Ljava/util/Properties;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_8

    .line 178
    const/4 v0, 0x1

    .line 181
    :goto_7
    return v0

    .line 179
    :catch_8
    move-exception v0

    .line 181
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private loadProperties(Ljava/util/Properties;Ljava/lang/String;)Z
    .registers 8
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 154
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 156
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_2c
    .catchall {:try_start_1 .. :try_end_17} :catchall_35

    .line 157
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_17
    invoke-virtual {p1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 158
    invoke-direct {p0, p1}, Ltwitter4j/conf/PropertyConfiguration;->normalize(Ljava/util/Properties;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1d} :catch_45
    .catchall {:try_start_17 .. :try_end_1d} :catchall_42

    .line 159
    const/4 v3, 0x1

    .line 164
    if-eqz v2, :cond_23

    .line 165
    :try_start_20
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_3c

    :cond_23
    :goto_23
    move-object v1, v2

    .line 171
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :goto_24
    return v3

    .line 164
    .restart local v0    # "file":Ljava/io/File;
    :cond_25
    if-eqz v1, :cond_2a

    .line 165
    :try_start_27
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_3e

    .line 171
    .end local v0    # "file":Ljava/io/File;
    :cond_2a
    :goto_2a
    const/4 v3, 0x0

    goto :goto_24

    .line 161
    :catch_2c
    move-exception v3

    .line 164
    :goto_2d
    if-eqz v1, :cond_2a

    .line 165
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_2a

    .line 167
    :catch_33
    move-exception v3

    goto :goto_2a

    .line 163
    :catchall_35
    move-exception v3

    .line 164
    :goto_36
    if-eqz v1, :cond_3b

    .line 165
    :try_start_38
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_40

    .line 169
    :cond_3b
    :goto_3b
    throw v3

    .line 167
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_3c
    move-exception v4

    goto :goto_23

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catch_3e
    move-exception v3

    goto :goto_2a

    .end local v0    # "file":Ljava/io/File;
    :catch_40
    move-exception v4

    goto :goto_3b

    .line 163
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_42
    move-exception v3

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_36

    .line 161
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_45
    move-exception v3

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_2d
.end method

.method private normalize(Ljava/util/Properties;)V
    .registers 12
    .param p1, "props"    # Ljava/util/Properties;

    .prologue
    .line 185
    invoke-virtual {p1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 186
    .local v3, "keys":Ljava/util/Set;
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 187
    .local v6, "toBeNormalized":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_f
    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_29

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v1

    .line 188
    check-cast v2, Ljava/lang/String;

    .line 189
    .local v2, "keyStr":Ljava/lang/String;
    const/4 v8, -0x1

    const-string v9, "twitter4j."

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v8, v9, :cond_f

    .line 190
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 193
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "keyStr":Ljava/lang/String;
    :cond_29
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_63

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 194
    .restart local v2    # "keyStr":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 195
    .local v5, "property":Ljava/lang/String;
    const-string v8, "twitter4j."

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 196
    .local v0, "index":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v0, 0xa

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 197
    .local v4, "newKey":Ljava/lang/String;
    invoke-virtual {p1, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2d

    .line 199
    .end local v0    # "index":I
    .end local v2    # "keyStr":Ljava/lang/String;
    .end local v4    # "newKey":Ljava/lang/String;
    .end local v5    # "property":Ljava/lang/String;
    :cond_63
    return-void
.end method

.method private notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private setFieldsWithPrefix(Ljava/util/Properties;Ljava/lang/String;)V
    .registers 12
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 227
    const-string v4, "debug"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 228
    const-string v4, "debug"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setDebug(Z)V

    .line 231
    :cond_12
    const-string v4, "user"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 232
    const-string v4, "user"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setUser(Ljava/lang/String;)V

    .line 234
    :cond_23
    const-string v4, "password"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 235
    const-string v4, "password"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setPassword(Ljava/lang/String;)V

    .line 237
    :cond_34
    const-string v4, "http.prettyDebug"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 238
    const-string v4, "http.prettyDebug"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setPrettyDebugEnabled(Z)V

    .line 240
    :cond_45
    const-string v4, "http.gzip"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 241
    const-string v4, "http.gzip"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setGZIPEnabled(Z)V

    .line 243
    :cond_56
    const-string v4, "http.proxyHost"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32e

    .line 244
    const-string v4, "http.proxyHost"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyHost(Ljava/lang/String;)V

    .line 248
    :cond_67
    :goto_67
    const-string v4, "http.proxyUser"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 249
    const-string v4, "http.proxyUser"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyUser(Ljava/lang/String;)V

    .line 251
    :cond_78
    const-string v4, "http.proxyPassword"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 252
    const-string v4, "http.proxyPassword"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyPassword(Ljava/lang/String;)V

    .line 254
    :cond_89
    const-string v4, "http.proxyPort"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_341

    .line 255
    const-string v4, "http.proxyPort"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyPort(I)V

    .line 259
    :cond_9a
    :goto_9a
    const-string v4, "http.connectionTimeout"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 260
    const-string v4, "http.connectionTimeout"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setHttpConnectionTimeout(I)V

    .line 262
    :cond_ab
    const-string v4, "http.readTimeout"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_bc

    .line 263
    const-string v4, "http.readTimeout"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setHttpReadTimeout(I)V

    .line 265
    :cond_bc
    const-string v4, "http.streamingReadTimeout"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_cd

    .line 266
    const-string v4, "http.streamingReadTimeout"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setHttpStreamingReadTimeout(I)V

    .line 268
    :cond_cd
    const-string v4, "http.retryCount"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_de

    .line 269
    const-string v4, "http.retryCount"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setHttpRetryCount(I)V

    .line 271
    :cond_de
    const-string v4, "http.retryIntervalSecs"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ef

    .line 272
    const-string v4, "http.retryIntervalSecs"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setHttpRetryIntervalSeconds(I)V

    .line 274
    :cond_ef
    const-string v4, "oauth.consumerKey"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_100

    .line 275
    const-string v4, "oauth.consumerKey"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthConsumerKey(Ljava/lang/String;)V

    .line 277
    :cond_100
    const-string v4, "oauth.consumerSecret"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_111

    .line 278
    const-string v4, "oauth.consumerSecret"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthConsumerSecret(Ljava/lang/String;)V

    .line 280
    :cond_111
    const-string v4, "oauth.accessToken"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_122

    .line 281
    const-string v4, "oauth.accessToken"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthAccessToken(Ljava/lang/String;)V

    .line 283
    :cond_122
    const-string v4, "oauth.accessTokenSecret"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_133

    .line 284
    const-string v4, "oauth.accessTokenSecret"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthAccessTokenSecret(Ljava/lang/String;)V

    .line 286
    :cond_133
    const-string v4, "oauth2.tokenType"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_144

    .line 287
    const-string v4, "oauth2.tokenType"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setOAuth2TokenType(Ljava/lang/String;)V

    .line 289
    :cond_144
    const-string v4, "oauth2.accessToken"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_155

    .line 290
    const-string v4, "oauth2.accessToken"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setOAuth2AccessToken(Ljava/lang/String;)V

    .line 292
    :cond_155
    const-string v4, "async.numThreads"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_166

    .line 293
    const-string v4, "async.numThreads"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setAsyncNumThreads(I)V

    .line 295
    :cond_166
    const-string v4, "async.daemonEnabled"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_177

    .line 296
    const-string v4, "async.daemonEnabled"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setDaemonEnabled(Z)V

    .line 298
    :cond_177
    const-string v4, "contributingTo"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_188

    .line 299
    const-string v4, "contributingTo"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getLongProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Ltwitter4j/conf/PropertyConfiguration;->setContributingTo(J)V

    .line 301
    :cond_188
    const-string v4, "async.dispatcherImpl"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_199

    .line 302
    const-string v4, "async.dispatcherImpl"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setDispatcherImpl(Ljava/lang/String;)V

    .line 305
    :cond_199
    const-string v4, "oauth.requestTokenURL"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1aa

    .line 306
    const-string v4, "oauth.requestTokenURL"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthRequestTokenURL(Ljava/lang/String;)V

    .line 309
    :cond_1aa
    const-string v4, "oauth.authorizationURL"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1bb

    .line 310
    const-string v4, "oauth.authorizationURL"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthAuthorizationURL(Ljava/lang/String;)V

    .line 313
    :cond_1bb
    const-string v4, "oauth.accessTokenURL"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1cc

    .line 314
    const-string v4, "oauth.accessTokenURL"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthAccessTokenURL(Ljava/lang/String;)V

    .line 317
    :cond_1cc
    const-string v4, "oauth.authenticationURL"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1dd

    .line 318
    const-string v4, "oauth.authenticationURL"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthAuthenticationURL(Ljava/lang/String;)V

    .line 321
    :cond_1dd
    const-string v4, "oauth2.tokenURL"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1ee

    .line 322
    const-string v4, "oauth2.tokenURL"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setOAuth2TokenURL(Ljava/lang/String;)V

    .line 325
    :cond_1ee
    const-string v4, "oauth2.invalidateTokenURL"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1ff

    .line 326
    const-string v4, "oauth2.invalidateTokenURL"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setOAuth2InvalidateTokenURL(Ljava/lang/String;)V

    .line 329
    :cond_1ff
    const-string v4, "restBaseURL"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_210

    .line 330
    const-string v4, "restBaseURL"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setRestBaseURL(Ljava/lang/String;)V

    .line 333
    :cond_210
    const-string v4, "streamBaseURL"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_221

    .line 334
    const-string v4, "streamBaseURL"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setStreamBaseURL(Ljava/lang/String;)V

    .line 336
    :cond_221
    const-string v4, "userStreamBaseURL"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_232

    .line 337
    const-string v4, "userStreamBaseURL"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setUserStreamBaseURL(Ljava/lang/String;)V

    .line 339
    :cond_232
    const-string v4, "siteStreamBaseURL"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_243

    .line 340
    const-string v4, "siteStreamBaseURL"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setSiteStreamBaseURL(Ljava/lang/String;)V

    .line 342
    :cond_243
    const-string v4, "includeMyRetweet"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_254

    .line 343
    const-string v4, "includeMyRetweet"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setIncludeMyRetweetEnabled(Z)V

    .line 345
    :cond_254
    const-string v4, "includeEntities"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_265

    .line 346
    const-string v4, "includeEntities"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setIncludeEntitiesEnabled(Z)V

    .line 348
    :cond_265
    const-string v4, "loggerFactory"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_276

    .line 349
    const-string v4, "loggerFactory"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setLoggerFactory(Ljava/lang/String;)V

    .line 351
    :cond_276
    const-string v4, "jsonStoreEnabled"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_287

    .line 352
    const-string v4, "jsonStoreEnabled"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setJSONStoreEnabled(Z)V

    .line 354
    :cond_287
    const-string v4, "mbeanEnabled"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_298

    .line 355
    const-string v4, "mbeanEnabled"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setMBeanEnabled(Z)V

    .line 357
    :cond_298
    const-string v4, "stream.user.repliesAll"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a9

    .line 358
    const-string v4, "stream.user.repliesAll"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setUserStreamRepliesAllEnabled(Z)V

    .line 360
    :cond_2a9
    const-string v4, "stream.user.withFollowings"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2ba

    .line 361
    const-string v4, "stream.user.withFollowings"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setUserStreamWithFollowingsEnabled(Z)V

    .line 363
    :cond_2ba
    const-string v4, "stream.enableStallWarnings"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2cb

    .line 364
    const-string v4, "stream.enableStallWarnings"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setStallWarningsEnabled(Z)V

    .line 366
    :cond_2cb
    const-string v4, "enableApplicationOnlyAuth"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2dc

    .line 367
    const-string v4, "enableApplicationOnlyAuth"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setApplicationOnlyAuthEnabled(Z)V

    .line 369
    :cond_2dc
    const-string v4, "media.provider"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2ed

    .line 370
    const-string v4, "media.provider"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setMediaProvider(Ljava/lang/String;)V

    .line 372
    :cond_2ed
    const-string v4, "media.providerAPIKey"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2fe

    .line 373
    const-string v4, "media.providerAPIKey"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setMediaProviderAPIKey(Ljava/lang/String;)V

    .line 375
    :cond_2fe
    const-string v4, "media.providerParameters"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_357

    .line 376
    const-string v4, "media.providerParameters"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 377
    .local v2, "propsAry":[Ljava/lang/String;
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 378
    .local v0, "p":Ljava/util/Properties;
    array-length v6, v2

    move v4, v5

    :goto_319
    if-ge v4, v6, :cond_354

    aget-object v3, v2, v4

    .line 379
    .local v3, "str":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, "parameter":[Ljava/lang/String;
    aget-object v7, v1, v5

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-virtual {v0, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 378
    add-int/lit8 v4, v4, 0x1

    goto :goto_319

    .line 245
    .end local v0    # "p":Ljava/util/Properties;
    .end local v1    # "parameter":[Ljava/lang/String;
    .end local v2    # "propsAry":[Ljava/lang/String;
    .end local v3    # "str":Ljava/lang/String;
    :cond_32e
    const-string v4, "http.proxyHost"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 246
    const-string v4, "http.proxyHost"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyHost(Ljava/lang/String;)V

    goto/16 :goto_67

    .line 256
    :cond_341
    const-string v4, "http.proxyPort"

    invoke-direct {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 257
    const-string v4, "http.proxyPort"

    invoke-virtual {p0, p1, p2, v4}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyPort(I)V

    goto/16 :goto_9a

    .line 382
    .restart local v0    # "p":Ljava/util/Properties;
    .restart local v2    # "propsAry":[Ljava/lang/String;
    :cond_354
    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setMediaProviderParameters(Ljava/util/Properties;)V

    .line 384
    .end local v0    # "p":Ljava/util/Properties;
    .end local v2    # "propsAry":[Ljava/lang/String;
    :cond_357
    invoke-virtual {p0}, Ltwitter4j/conf/PropertyConfiguration;->cacheInstance()V

    .line 385
    return-void
.end method

.method private setFieldsWithTreePath(Ljava/util/Properties;Ljava/lang/String;)V
    .registers 10
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "treePath"    # Ljava/lang/String;

    .prologue
    .line 211
    const-string v3, ""

    invoke-direct {p0, p1, v3}, Ltwitter4j/conf/PropertyConfiguration;->setFieldsWithPrefix(Ljava/util/Properties;Ljava/lang/String;)V

    .line 212
    const-string v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "splitArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 214
    .local v0, "prefix":Ljava/lang/String;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v4, :cond_4d

    aget-object v1, v2, v3

    .line 215
    .local v1, "split":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 216
    if-nez v0, :cond_35

    .line 217
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    :goto_2f
    invoke-direct {p0, p1, v0}, Ltwitter4j/conf/PropertyConfiguration;->setFieldsWithPrefix(Ljava/util/Properties;Ljava/lang/String;)V

    .line 214
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 219
    :cond_35
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    .line 224
    .end local v1    # "split":Ljava/lang/String;
    :cond_4d
    return-void
.end method


# virtual methods
.method public bridge synthetic dumpConfiguration()V
    .registers 1

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->dumpConfiguration()V

    return-void
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 28
    invoke-super {p0, p1}, Ltwitter4j/conf/ConfigurationBase;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public bridge synthetic getDispatcherImpl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getDispatcherImpl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHttpClientConfiguration()Ltwitter4j/HttpClientConfiguration;
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getHttpClientConfiguration()Ltwitter4j/HttpClientConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHttpStreamingReadTimeout()I
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getHttpStreamingReadTimeout()I

    move-result v0

    return v0
.end method

.method getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, "value":Ljava/lang/String;
    :try_start_15
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_18} :catch_1a

    move-result v2

    .line 397
    :goto_19
    return v2

    .line 396
    :catch_1a
    move-exception v0

    .line 397
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_19
.end method

.method public bridge synthetic getLoggerFactory()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getLoggerFactory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLongProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)J
    .registers 8
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, "value":Ljava/lang/String;
    :try_start_15
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_18} :catch_1a

    move-result-wide v2

    .line 406
    :goto_19
    return-wide v2

    .line 405
    :catch_1a
    move-exception v0

    .line 406
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const-wide/16 v2, -0x1

    goto :goto_19
.end method

.method public bridge synthetic getMediaProvider()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getMediaProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMediaProviderAPIKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getMediaProviderAPIKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMediaProviderParameters()Ljava/util/Properties;
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getMediaProviderParameters()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOAuth2AccessToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuth2AccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOAuth2InvalidateTokenURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuth2InvalidateTokenURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOAuth2TokenType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuth2TokenType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOAuth2TokenURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuth2TokenURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOAuthAccessToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOAuthAccessTokenSecret()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthAccessTokenSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOAuthAccessTokenURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthAccessTokenURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOAuthAuthenticationURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthAuthenticationURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOAuthAuthorizationURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthAuthorizationURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOAuthRequestTokenURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthRequestTokenURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRestBaseURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getRestBaseURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSiteStreamBaseURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getSiteStreamBaseURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStreamBaseURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getStreamBaseURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserStreamBaseURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getUserStreamBaseURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isApplicationOnlyAuthEnabled()Z
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isApplicationOnlyAuthEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isDaemonEnabled()Z
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isDaemonEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isIncludeEntitiesEnabled()Z
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isIncludeEntitiesEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isIncludeMyRetweetEnabled()Z
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isIncludeMyRetweetEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isJSONStoreEnabled()Z
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isJSONStoreEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isMBeanEnabled()Z
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isMBeanEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isStallWarningsEnabled()Z
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isStallWarningsEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isTrimUserEnabled()Z
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isTrimUserEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isUserStreamRepliesAllEnabled()Z
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isUserStreamRepliesAllEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isUserStreamWithFollowingsEnabled()Z
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isUserStreamWithFollowingsEnabled()Z

    move-result v0

    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 416
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->readResolve()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setIncludeMyRetweetEnabled(Z)V
    .registers 2

    .prologue
    .line 28
    invoke-super {p0, p1}, Ltwitter4j/conf/ConfigurationBase;->setIncludeMyRetweetEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setTrimUserEnabled(Z)V
    .registers 2

    .prologue
    .line 28
    invoke-super {p0, p1}, Ltwitter4j/conf/ConfigurationBase;->setTrimUserEnabled(Z)V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
