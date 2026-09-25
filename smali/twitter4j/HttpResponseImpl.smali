.class public Ltwitter4j/HttpResponseImpl;
.super Ltwitter4j/HttpResponse;
.source "HttpResponseImpl.java"


# instance fields
.field private con:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0}, Ltwitter4j/HttpResponse;-><init>()V

    .line 61
    iput-object p1, p0, Ltwitter4j/HttpResponseImpl;->responseAsString:Ljava/lang/String;

    .line 62
    return-void
.end method

.method constructor <init>(Ljava/net/HttpURLConnection;Ltwitter4j/HttpClientConfiguration;)V
    .registers 6
    .param p1, "con"    # Ljava/net/HttpURLConnection;
    .param p2, "conf"    # Ltwitter4j/HttpClientConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p2}, Ltwitter4j/HttpResponse;-><init>(Ltwitter4j/HttpClientConfiguration;)V

    .line 33
    iput-object p1, p0, Ltwitter4j/HttpResponseImpl;->con:Ljava/net/HttpURLConnection;

    .line 35
    :try_start_5
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, p0, Ltwitter4j/HttpResponseImpl;->statusCode:I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_33

    .line 49
    :goto_b
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/HttpResponseImpl;->is:Ljava/io/InputStream;

    if-nez v1, :cond_19

    .line 50
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/HttpResponseImpl;->is:Ljava/io/InputStream;

    .line 52
    :cond_19
    iget-object v1, p0, Ltwitter4j/HttpResponseImpl;->is:Ljava/io/InputStream;

    if-eqz v1, :cond_32

    const-string v1, "gzip"

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 54
    new-instance v1, Ltwitter4j/StreamingGZIPInputStream;

    iget-object v2, p0, Ltwitter4j/HttpResponseImpl;->is:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ltwitter4j/StreamingGZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Ltwitter4j/HttpResponseImpl;->is:Ljava/io/InputStream;

    .line 56
    :cond_32
    return-void

    .line 36
    :catch_33
    move-exception v0

    .line 43
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Received authentication challenge is null"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 44
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, p0, Ltwitter4j/HttpResponseImpl;->statusCode:I

    goto :goto_b

    .line 46
    :cond_47
    throw v0
.end method


# virtual methods
.method public disconnect()V
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Ltwitter4j/HttpResponseImpl;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 80
    return-void
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Ltwitter4j/HttpResponseImpl;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseHeaderFields()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Ltwitter4j/HttpResponseImpl;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
