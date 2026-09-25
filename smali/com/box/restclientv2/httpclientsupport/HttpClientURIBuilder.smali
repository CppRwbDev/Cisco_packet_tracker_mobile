.class public Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;
.super Ljava/lang/Object;
.source "HttpClientURIBuilder.java"


# instance fields
.field private encodedAuthority:Ljava/lang/String;

.field private encodedFragment:Ljava/lang/String;

.field private encodedPath:Ljava/lang/String;

.field private encodedQuery:Ljava/lang/String;

.field private encodedSchemeSpecificPart:Ljava/lang/String;

.field private encodedUserInfo:Ljava/lang/String;

.field private fragment:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private port:I

.field private queryParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private scheme:Ljava/lang/String;

.field private userInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->port:I

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->digestURI(Ljava/net/URI;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .registers 2
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-direct {p0, p1}, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->digestURI(Ljava/net/URI;)V

    .line 65
    return-void
.end method

.method private buildString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 88
    iget-object v1, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    :cond_14
    iget-object v1, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    if-eqz v1, :cond_31

    .line 91
    iget-object v1, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_1d
    :goto_1d
    iget-object v1, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedFragment:Ljava/lang/String;

    if-eqz v1, :cond_df

    .line 129
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedFragment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_2c
    :goto_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 94
    :cond_31
    iget-object v1, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedAuthority:Ljava/lang/String;

    if-eqz v1, :cond_5d

    .line 95
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_40
    :goto_40
    iget-object v1, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedPath:Ljava/lang/String;

    if-eqz v1, :cond_b8

    .line 116
    iget-object v1, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_4d
    :goto_4d
    iget-object v1, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedQuery:Ljava/lang/String;

    if-eqz v1, :cond_ca

    .line 122
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 97
    :cond_5d
    iget-object v1, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->host:Ljava/lang/String;

    if-eqz v1, :cond_40

    .line 98
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v1, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedUserInfo:Ljava/lang/String;

    if-eqz v1, :cond_9e

    .line 100
    iget-object v1, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedUserInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_75
    :goto_75
    iget-object v1, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->host:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 106
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :goto_8e
    iget v1, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->port:I

    if-ltz v1, :cond_40

    .line 112
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_40

    .line 102
    :cond_9e
    iget-object v1, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->userInfo:Ljava/lang/String;

    if-eqz v1, :cond_75

    .line 103
    iget-object v1, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->userInfo:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodeUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_75

    .line 109
    :cond_b2
    iget-object v1, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8e

    .line 118
    :cond_b8
    iget-object v1, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->path:Ljava/lang/String;

    if-eqz v1, :cond_4d

    .line 119
    iget-object v1, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->path:Ljava/lang/String;

    invoke-static {v1}, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4d

    .line 124
    :cond_ca
    iget-object v1, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->queryParams:Ljava/util/List;

    if-eqz v1, :cond_1d

    .line 125
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->queryParams:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodeQuery(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1d

    .line 131
    :cond_df
    iget-object v1, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_2c

    .line 132
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->fragment:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodeFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2c
.end method

.method private digestURI(Ljava/net/URI;)V
    .registers 4
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->scheme:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Ljava/net/URI;->getRawSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedAuthority:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->host:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    iput v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->port:I

    .line 143
    invoke-virtual {p1}, Ljava/net/URI;->getRawUserInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedUserInfo:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->userInfo:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedPath:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->path:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedQuery:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/box/restclientv2/httpclientsupport/HttpClientConsts;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->parseQuery(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->queryParams:Ljava/util/List;

    .line 149
    invoke-virtual {p1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedFragment:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->fragment:Ljava/lang/String;

    .line 151
    return-void
.end method

.method private encodeFragment(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "fragment"    # Ljava/lang/String;

    .prologue
    .line 166
    sget-object v0, Lcom/box/restclientv2/httpclientsupport/HttpClientConsts;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lcom/box/restclientv2/httpclientsupport/HttpClientURLEncodedUtils;->encFragment(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private encodePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 158
    sget-object v0, Lcom/box/restclientv2/httpclientsupport/HttpClientConsts;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lcom/box/restclientv2/httpclientsupport/HttpClientURLEncodedUtils;->encPath(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private encodeQuery(Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    sget-object v0, Lcom/box/restclientv2/httpclientsupport/HttpClientConsts;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lcom/box/restclientv2/httpclientsupport/HttpClientURLEncodedUtils;->format(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private encodeUserInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "userInfo"    # Ljava/lang/String;

    .prologue
    .line 154
    sget-object v0, Lcom/box/restclientv2/httpclientsupport/HttpClientConsts;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lcom/box/restclientv2/httpclientsupport/HttpClientURLEncodedUtils;->encUserInfo(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static normalizePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 332
    if-nez p0, :cond_4

    .line 333
    const/4 p0, 0x0

    .line 344
    .local v0, "n":I
    :cond_3
    :goto_3
    return-object p0

    .line 335
    .end local v0    # "n":I
    :cond_4
    const/4 v0, 0x0

    .line 336
    .restart local v0    # "n":I
    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 337
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1d

    .line 341
    :cond_13
    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 342
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 336
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private parseQuery(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;
    .registers 4
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 68
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_11

    .line 69
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/box/restclientv2/httpclientsupport/HttpClientURLEncodedUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 71
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method


# virtual methods
.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;
    .registers 6
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 253
    iget-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->queryParams:Ljava/util/List;

    if-nez v0, :cond_c

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->queryParams:Ljava/util/List;

    .line 256
    :cond_c
    iget-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->queryParams:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    iput-object v2, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedQuery:Ljava/lang/String;

    .line 258
    iput-object v2, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 259
    return-object p0
.end method

.method public build()Ljava/net/URI;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Ljava/net/URI;

    invoke-direct {p0}, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->buildString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 306
    iget v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->port:I

    return v0
.end method

.method public getQueryParams()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->queryParams:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->queryParams:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 318
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_b
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->userInfo:Ljava/lang/String;

    return-object v0
.end method

.method public removeQuery()Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->queryParams:Ljava/util/List;

    .line 230
    iput-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedQuery:Ljava/lang/String;

    .line 231
    iput-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 232
    return-object p0
.end method

.method public setFragment(Ljava/lang/String;)Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;
    .registers 3
    .param p1, "fragment"    # Ljava/lang/String;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->fragment:Ljava/lang/String;

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedFragment:Ljava/lang/String;

    .line 290
    return-object p0
.end method

.method public setHost(Ljava/lang/String;)Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;
    .registers 3
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 199
    iput-object p1, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->host:Ljava/lang/String;

    .line 200
    iput-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 201
    iput-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedAuthority:Ljava/lang/String;

    .line 202
    return-object p0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;
    .registers 8
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 267
    iget-object v2, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->queryParams:Ljava/util/List;

    if-nez v2, :cond_c

    .line 268
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->queryParams:Ljava/util/List;

    .line 270
    :cond_c
    iget-object v2, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->queryParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_34

    .line 271
    iget-object v2, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->queryParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/NameValuePair;>;"
    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 272
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 273
    .local v1, "nvp":Lorg/apache/http/NameValuePair;
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 274
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1a

    .line 278
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/NameValuePair;>;"
    .end local v1    # "nvp":Lorg/apache/http/NameValuePair;
    :cond_34
    iget-object v2, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->queryParams:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v3, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iput-object v4, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedQuery:Ljava/lang/String;

    .line 280
    iput-object v4, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 281
    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 219
    iput-object p1, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->path:Ljava/lang/String;

    .line 220
    iput-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 221
    iput-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedPath:Ljava/lang/String;

    .line 222
    return-object p0
.end method

.method public setPort(I)Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;
    .registers 3
    .param p1, "port"    # I

    .prologue
    const/4 v0, 0x0

    .line 209
    if-gez p1, :cond_4

    const/4 p1, -0x1

    .end local p1    # "port":I
    :cond_4
    iput p1, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->port:I

    .line 210
    iput-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 211
    iput-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedAuthority:Ljava/lang/String;

    .line 212
    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;
    .registers 4
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 243
    sget-object v0, Lcom/box/restclientv2/httpclientsupport/HttpClientConsts;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->parseQuery(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->queryParams:Ljava/util/List;

    .line 244
    iput-object v1, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedQuery:Ljava/lang/String;

    .line 245
    iput-object v1, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 246
    return-object p0
.end method

.method public setScheme(Ljava/lang/String;)Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;
    .registers 2
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->scheme:Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public setUserInfo(Ljava/lang/String;)Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;
    .registers 3
    .param p1, "userInfo"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 181
    iput-object p1, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->userInfo:Ljava/lang/String;

    .line 182
    iput-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 183
    iput-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedAuthority:Ljava/lang/String;

    .line 184
    iput-object v0, p0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->encodedUserInfo:Ljava/lang/String;

    .line 185
    return-object p0
.end method

.method public setUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;
    .registers 5
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->setUserInfo(Ljava/lang/String;)Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->buildString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
