.class Lcom/dropbox/client2/session/AbstractSession$DBConnectionReuseStrategy;
.super Lorg/apache/http/impl/DefaultConnectionReuseStrategy;
.source "AbstractSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/client2/session/AbstractSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DBConnectionReuseStrategy"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 449
    invoke-direct {p0}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/client2/session/AbstractSession$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/dropbox/client2/session/AbstractSession$1;

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/dropbox/client2/session/AbstractSession$DBConnectionReuseStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .registers 16
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 461
    if-nez p1, :cond_a

    .line 462
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "HTTP response may not be null."

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 465
    :cond_a
    if-nez p2, :cond_14

    .line 466
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "HTTP context may not be null."

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 473
    :cond_14
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v10

    .line 474
    .local v10, "ver":Lorg/apache/http/ProtocolVersion;
    const-string v11, "Transfer-Encoding"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v7

    .line 475
    .local v7, "teh":Lorg/apache/http/Header;
    if-eqz v7, :cond_32

    .line 476
    const-string v11, "chunked"

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_52

    .line 477
    const/4 v11, 0x0

    .line 555
    :goto_31
    return v11

    .line 480
    :cond_32
    const-string v11, "Content-Length"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    .line 482
    .local v1, "clhs":[Lorg/apache/http/Header;
    if-eqz v1, :cond_3e

    array-length v11, v1

    const/4 v12, 0x1

    if-eq v11, v12, :cond_40

    .line 483
    :cond_3e
    const/4 v11, 0x0

    goto :goto_31

    .line 485
    :cond_40
    const/4 v11, 0x0

    aget-object v0, v1, v11

    .line 487
    .local v0, "clh":Lorg/apache/http/Header;
    :try_start_43
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/NumberFormatException; {:try_start_43 .. :try_end_4a} :catch_4f

    move-result v2

    .line 488
    .local v2, "contentLen":I
    if-gez v2, :cond_52

    .line 489
    const/4 v11, 0x0

    goto :goto_31

    .line 491
    .end local v2    # "contentLen":I
    :catch_4f
    move-exception v3

    .line 492
    .local v3, "ex":Ljava/lang/NumberFormatException;
    const/4 v11, 0x0

    goto :goto_31

    .line 499
    .end local v0    # "clh":Lorg/apache/http/Header;
    .end local v1    # "clhs":[Lorg/apache/http/Header;
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    :cond_52
    const-string v11, "Connection"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v4

    .line 500
    .local v4, "hit":Lorg/apache/http/HeaderIterator;
    invoke-interface {v4}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_64

    .line 501
    const-string v11, "Proxy-Connection"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v4

    .line 527
    :cond_64
    invoke-interface {v4}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_94

    .line 529
    :try_start_6a
    invoke-virtual {p0, v4}, Lcom/dropbox/client2/session/AbstractSession$DBConnectionReuseStrategy;->createTokenIterator(Lorg/apache/http/HeaderIterator;)Lorg/apache/http/TokenIterator;

    move-result-object v8

    .line 530
    .local v8, "ti":Lorg/apache/http/TokenIterator;
    const/4 v5, 0x0

    .line 531
    .local v5, "keepalive":Z
    :cond_6f
    :goto_6f
    invoke-interface {v8}, Lorg/apache/http/TokenIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8d

    .line 532
    invoke-interface {v8}, Lorg/apache/http/TokenIterator;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 533
    .local v9, "token":Ljava/lang/String;
    const-string v11, "Close"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_83

    .line 534
    const/4 v11, 0x0

    goto :goto_31

    .line 535
    :cond_83
    const-string v11, "Keep-Alive"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_88
    .catch Lorg/apache/http/ParseException; {:try_start_6a .. :try_end_88} :catch_91

    move-result v11

    if-eqz v11, :cond_6f

    .line 538
    const/4 v5, 0x1

    goto :goto_6f

    .line 541
    .end local v9    # "token":Ljava/lang/String;
    :cond_8d
    if-eqz v5, :cond_94

    .line 542
    const/4 v11, 0x1

    goto :goto_31

    .line 545
    .end local v5    # "keepalive":Z
    .end local v8    # "ti":Lorg/apache/http/TokenIterator;
    :catch_91
    move-exception v6

    .line 549
    .local v6, "px":Lorg/apache/http/ParseException;
    const/4 v11, 0x0

    goto :goto_31

    .line 555
    .end local v6    # "px":Lorg/apache/http/ParseException;
    :cond_94
    sget-object v11, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {v10, v11}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v11

    if-nez v11, :cond_9e

    const/4 v11, 0x1

    goto :goto_31

    :cond_9e
    const/4 v11, 0x0

    goto :goto_31
.end method
