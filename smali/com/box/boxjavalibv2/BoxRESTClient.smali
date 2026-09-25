.class public Lcom/box/boxjavalibv2/BoxRESTClient;
.super Lcom/box/restclientv2/BoxBasicRestClient;
.source "BoxRESTClient.java"


# static fields
.field public static final ENTITY_CANNOT_BE_RETRIED:Ljava/lang/String; = "OAuth token expired, failed to re-send request after refreshing OAuth, the entity in the request cannot be reused, please retry manually"

.field public static final OAUTH_ERROR_HEADER:Ljava/lang/String; = "error"

.field public static final OAUTH_INVALID_TOKEN:Ljava/lang/String; = "invalid_token"

.field public static final WWW_AUTHENTICATE:Ljava/lang/String; = "WWW-Authenticate"

.field private static apiSequenceId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private clientTimeOut:I

.field private keepConnectionOpen:Z

.field private final visitors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/box/restclientv2/IBoxRestVisitor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/box/boxjavalibv2/BoxRESTClient;->apiSequenceId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/box/restclientv2/BoxBasicRestClient;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxRESTClient;->visitors:Ljava/util/List;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/box/boxjavalibv2/BoxRESTClient;->keepConnectionOpen:Z

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/box/boxjavalibv2/BoxRESTClient;->clientTimeOut:I

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;)V
    .registers 3
    .param p1, "connectionManager"    # Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/box/restclientv2/BoxBasicRestClient;-><init>(Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxRESTClient;->visitors:Ljava/util/List;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/box/boxjavalibv2/BoxRESTClient;->keepConnectionOpen:Z

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/box/boxjavalibv2/BoxRESTClient;->clientTimeOut:I

    .line 53
    return-void
.end method

.method private execute(Lcom/box/restclientv2/requestsbase/IBoxRequest;Z)Lcom/box/restclientv2/responses/IBoxResponse;
    .registers 11
    .param p1, "boxRequest"    # Lcom/box/restclientv2/requestsbase/IBoxRequest;
    .param p2, "usingOAuth"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-interface {p1}, Lcom/box/restclientv2/requestsbase/IBoxRequest;->prepareRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    .line 89
    .local v2, "httpRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    const/4 v4, 0x0

    .line 91
    .local v4, "response":Lorg/apache/http/HttpResponse;
    sget-object v7, Lcom/box/boxjavalibv2/BoxRESTClient;->apiSequenceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    .line 92
    .local v5, "sequenceId":I
    iget-object v7, p0, Lcom/box/boxjavalibv2/BoxRESTClient;->visitors:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/box/restclientv2/IBoxRestVisitor;

    .line 93
    .local v6, "v":Lcom/box/restclientv2/IBoxRestVisitor;
    invoke-interface {v6, v2, v5}, Lcom/box/restclientv2/IBoxRestVisitor;->visitRequestBeforeSend(Lorg/apache/http/HttpRequest;I)V

    goto :goto_11

    .line 98
    .end local v6    # "v":Lcom/box/restclientv2/IBoxRestVisitor;
    :cond_21
    :try_start_21
    invoke-virtual {p0, v2}, Lcom/box/boxjavalibv2/BoxRESTClient;->getResponse(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 99
    iget-object v7, p0, Lcom/box/boxjavalibv2/BoxRESTClient;->visitors:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/box/restclientv2/IBoxRestVisitor;

    .line 100
    .restart local v6    # "v":Lcom/box/restclientv2/IBoxRestVisitor;
    invoke-interface {v6, v4, v5}, Lcom/box/restclientv2/IBoxRestVisitor;->visitResponseUponReceiving(Lorg/apache/http/HttpResponse;I)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_3a} :catch_3b
    .catch Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedHttpStatusException; {:try_start_21 .. :try_end_3a} :catch_7d
    .catch Lcom/box/restclientv2/exceptions/BoxRestException; {:try_start_21 .. :try_end_3a} :catch_82

    goto :goto_2b

    .line 117
    .end local v6    # "v":Lcom/box/restclientv2/IBoxRestVisitor;
    :catch_3b
    move-exception v1

    .line 118
    .local v1, "e":Ljava/io/IOException;
    :try_start_3c
    invoke-direct {p0, v1, v5}, Lcom/box/boxjavalibv2/BoxRESTClient;->handleException(Ljava/lang/Exception;I)V
    :try_end_3f
    .catch Lcom/box/restclientv2/exceptions/BoxRestException; {:try_start_3c .. :try_end_3f} :catch_82

    .line 132
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3f
    :goto_3f
    new-instance v0, Lcom/box/restclientv2/responses/DefaultBoxResponse;

    invoke-direct {v0, v4}, Lcom/box/restclientv2/responses/DefaultBoxResponse;-><init>(Lorg/apache/http/HttpResponse;)V

    .line 133
    .local v0, "boxResponse":Lcom/box/restclientv2/responses/DefaultBoxResponse;
    invoke-interface {p1}, Lcom/box/restclientv2/requestsbase/IBoxRequest;->getExpectedResponseCode()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/box/restclientv2/responses/DefaultBoxResponse;->setExpectedResponseCode(I)V

    .line 134
    .end local v0    # "boxResponse":Lcom/box/restclientv2/responses/DefaultBoxResponse;
    :goto_4b
    return-object v0

    .line 103
    :cond_4c
    if-eqz p2, :cond_3f

    :try_start_4e
    invoke-direct {p0, v4}, Lcom/box/boxjavalibv2/BoxRESTClient;->oauthExpired(Lorg/apache/http/HttpResponse;)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 104
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-static {v7}, Lcom/box/boxjavalibv2/utils/Utils;->consumeHttpEntityQuietly(Lorg/apache/http/HttpEntity;)V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_5b} :catch_3b
    .catch Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedHttpStatusException; {:try_start_4e .. :try_end_5b} :catch_7d
    .catch Lcom/box/restclientv2/exceptions/BoxRestException; {:try_start_4e .. :try_end_5b} :catch_82

    .line 106
    :try_start_5b
    invoke-interface {p1}, Lcom/box/restclientv2/requestsbase/IBoxRequest;->getAuth()Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    move-result-object v7

    check-cast v7, Lcom/box/boxjavalibv2/authorization/IOAuthAuthorization;

    invoke-direct {p0, v7, p1}, Lcom/box/boxjavalibv2/BoxRESTClient;->handleOAuthTokenExpire(Lcom/box/boxjavalibv2/authorization/IOAuthAuthorization;Lcom/box/restclientv2/requestsbase/IBoxRequest;)Lcom/box/restclientv2/responses/IBoxResponse;
    :try_end_64
    .catch Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException; {:try_start_5b .. :try_end_64} :catch_66
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_64} :catch_3b
    .catch Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedHttpStatusException; {:try_start_5b .. :try_end_64} :catch_7d
    .catch Lcom/box/restclientv2/exceptions/BoxRestException; {:try_start_5b .. :try_end_64} :catch_82

    move-result-object v0

    goto :goto_4b

    .line 108
    :catch_66
    move-exception v1

    .line 110
    .local v1, "e":Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
    :try_start_67
    iget-object v7, p0, Lcom/box/boxjavalibv2/BoxRESTClient;->visitors:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/box/restclientv2/IBoxRestVisitor;

    .line 111
    .restart local v6    # "v":Lcom/box/restclientv2/IBoxRestVisitor;
    invoke-interface {v6, v1, v5}, Lcom/box/restclientv2/IBoxRestVisitor;->visitException(Ljava/lang/Exception;I)V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_7c} :catch_3b
    .catch Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedHttpStatusException; {:try_start_67 .. :try_end_7c} :catch_7d
    .catch Lcom/box/restclientv2/exceptions/BoxRestException; {:try_start_67 .. :try_end_7c} :catch_82

    goto :goto_6d

    .line 120
    .end local v1    # "e":Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
    .end local v6    # "v":Lcom/box/restclientv2/IBoxRestVisitor;
    :catch_7d
    move-exception v1

    .line 121
    .local v1, "e":Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedHttpStatusException;
    :try_start_7e
    invoke-direct {p0, v1, v5}, Lcom/box/boxjavalibv2/BoxRESTClient;->handleException(Ljava/lang/Exception;I)V
    :try_end_81
    .catch Lcom/box/restclientv2/exceptions/BoxRestException; {:try_start_7e .. :try_end_81} :catch_82

    goto :goto_3f

    .line 124
    .end local v1    # "e":Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedHttpStatusException;
    :catch_82
    move-exception v1

    .line 126
    .local v1, "e":Lcom/box/restclientv2/exceptions/BoxRestException;
    if-eqz v4, :cond_8c

    .line 127
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-static {v7}, Lcom/box/boxjavalibv2/utils/Utils;->consumeHttpEntityQuietly(Lorg/apache/http/HttpEntity;)V

    .line 129
    :cond_8c
    throw v1

    .line 113
    .local v1, "e":Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
    :cond_8d
    :try_start_8d
    throw v1
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_8e} :catch_3b
    .catch Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedHttpStatusException; {:try_start_8d .. :try_end_8e} :catch_7d
    .catch Lcom/box/restclientv2/exceptions/BoxRestException; {:try_start_8d .. :try_end_8e} :catch_82
.end method

.method private handleException(Ljava/lang/Exception;I)V
    .registers 6
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "sequenceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v2, p0, Lcom/box/boxjavalibv2/BoxRESTClient;->visitors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/box/restclientv2/IBoxRestVisitor;

    .line 181
    .local v1, "v":Lcom/box/restclientv2/IBoxRestVisitor;
    invoke-interface {v1, p1, p2}, Lcom/box/restclientv2/IBoxRestVisitor;->visitException(Ljava/lang/Exception;I)V

    goto :goto_6

    .line 183
    .end local v1    # "v":Lcom/box/restclientv2/IBoxRestVisitor;
    :cond_16
    new-instance v2, Lcom/box/restclientv2/exceptions/BoxRestException;

    invoke-direct {v2, p1}, Lcom/box/restclientv2/exceptions/BoxRestException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method private handleOAuthTokenExpire(Lcom/box/boxjavalibv2/authorization/IOAuthAuthorization;Lcom/box/restclientv2/requestsbase/IBoxRequest;)Lcom/box/restclientv2/responses/IBoxResponse;
    .registers 6
    .param p1, "auth"    # Lcom/box/boxjavalibv2/authorization/IOAuthAuthorization;
    .param p2, "boxRequest"    # Lcom/box/restclientv2/requestsbase/IBoxRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;,
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedHttpStatusException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-interface {p1}, Lcom/box/boxjavalibv2/authorization/IOAuthAuthorization;->refresh()V

    .line 202
    invoke-interface {p2}, Lcom/box/restclientv2/requestsbase/IBoxRequest;->getRequestEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 203
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_f

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 204
    :cond_f
    const/4 v1, 0x1

    invoke-direct {p0, p2, v1}, Lcom/box/boxjavalibv2/BoxRESTClient;->execute(Lcom/box/restclientv2/requestsbase/IBoxRequest;Z)Lcom/box/restclientv2/responses/IBoxResponse;

    move-result-object v1

    return-object v1

    .line 206
    :cond_15
    new-instance v1, Lcom/box/restclientv2/exceptions/BoxRestException;

    const-string v2, "OAuth token expired, failed to re-send request after refreshing OAuth, the entity in the request cannot be reused, please retry manually"

    invoke-direct {v1, v2}, Lcom/box/restclientv2/exceptions/BoxRestException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private isInvalidTokenError(Ljava/lang/String;)Z
    .registers 9
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 169
    const-string v3, "="

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "parts":[Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_39

    aget-object v3, v0, v2

    if-eqz v3, :cond_39

    aget-object v3, v0, v1

    if-eqz v3, :cond_39

    .line 171
    const-string v3, "error"

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    const-string v3, "invalid_token"

    aget-object v4, v0, v1

    const-string v5, "\""

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 176
    :goto_38
    return v1

    :cond_39
    move v1, v2

    goto :goto_38
.end method

.method private oauthExpired(Lorg/apache/http/HttpResponse;)Z
    .registers 12
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    const/4 v7, 0x0

    .line 152
    const/16 v8, 0x191

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    if-eq v8, v9, :cond_e

    .line 165
    :cond_d
    :goto_d
    return v7

    .line 155
    :cond_e
    const-string v8, "WWW-Authenticate"

    invoke-interface {p1, v8}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 156
    .local v3, "header":Lorg/apache/http/Header;
    if-eqz v3, :cond_d

    .line 157
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "authStr":Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "authStrs":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_23
    if-ge v4, v5, :cond_d

    aget-object v6, v0, v4

    .line 160
    .local v6, "str":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/box/boxjavalibv2/BoxRESTClient;->isInvalidTokenError(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 161
    const/4 v7, 0x1

    goto :goto_d

    .line 159
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_23
.end method


# virtual methods
.method public acceptRestVisitor(Lcom/box/restclientv2/IBoxRestVisitor;)V
    .registers 3
    .param p1, "visitor"    # Lcom/box/restclientv2/IBoxRestVisitor;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxRESTClient;->visitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public execute(Lcom/box/restclientv2/requestsbase/IBoxRequest;)Lcom/box/restclientv2/responses/IBoxResponse;
    .registers 4
    .param p1, "boxRequest"    # Lcom/box/restclientv2/requestsbase/IBoxRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-interface {p1}, Lcom/box/restclientv2/requestsbase/IBoxRequest;->getAuth()Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    move-result-object v0

    .line 72
    .local v0, "auth":Lcom/box/restclientv2/authorization/IBoxRequestAuth;
    instance-of v1, v0, Lcom/box/boxjavalibv2/authorization/IOAuthAuthorization;

    invoke-direct {p0, p1, v1}, Lcom/box/boxjavalibv2/BoxRESTClient;->execute(Lcom/box/restclientv2/requestsbase/IBoxRequest;Z)Lcom/box/restclientv2/responses/IBoxResponse;

    move-result-object v1

    return-object v1
.end method

.method protected getResponse(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 6
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/BoxRESTClient;->getRawHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 143
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    iget v2, p0, Lcom/box/boxjavalibv2/BoxRESTClient;->clientTimeOut:I

    if-lez v2, :cond_11

    .line 144
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 145
    .local v1, "params":Lorg/apache/http/params/HttpParams;
    iget v2, p0, Lcom/box/boxjavalibv2/BoxRESTClient;->clientTimeOut:I

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 147
    .end local v1    # "params":Lorg/apache/http/params/HttpParams;
    :cond_11
    const-string v3, "Connection"

    iget-boolean v2, p0, Lcom/box/boxjavalibv2/BoxRESTClient;->keepConnectionOpen:Z

    if-eqz v2, :cond_21

    const-string v2, "Keep-Alive"

    :goto_19
    invoke-interface {p1, v3, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    return-object v2

    .line 147
    :cond_21
    const-string v2, "close"

    goto :goto_19
.end method

.method public setConnectionOpen(Z)V
    .registers 2
    .param p1, "connectionOpen"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/box/boxjavalibv2/BoxRESTClient;->keepConnectionOpen:Z

    .line 67
    return-void
.end method

.method public setConnectionTimeOut(I)V
    .registers 2
    .param p1, "timeOut"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/box/boxjavalibv2/BoxRESTClient;->clientTimeOut:I

    .line 139
    return-void
.end method
