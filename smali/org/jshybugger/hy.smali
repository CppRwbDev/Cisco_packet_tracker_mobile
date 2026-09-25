.class public final Lorg/jshybugger/hY;
.super Lorg/jshybugger/jz;
.source "InstrumentFilter.java"


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static final c:[B

.field private static final d:[B


# instance fields
.field private e:Lorg/jshybugger/iq;

.field private f:J

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    const-string v0, "<html"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/jshybugger/hY;->a:[B

    .line 69
    const-string v0, "<head"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/jshybugger/hY;->b:[B

    .line 70
    const-string v0, ">"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/jshybugger/hY;->c:[B

    .line 73
    const-string v0, "<script type=\"text/javascript\" src=\"/jshybugger/jshybugger.js\"></script>"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/jshybugger/hY;->d:[B

    return-void
.end method

.method public constructor <init>(Lorg/jshybugger/iq;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/iq;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/jshybugger/jz;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/jshybugger/hY;->e:Lorg/jshybugger/iq;

    .line 81
    iput-object p2, p0, Lorg/jshybugger/hY;->g:Ljava/util/Map;

    .line 82
    return-void
.end method

.method static synthetic a(Lorg/jshybugger/hY;Lorg/jshybugger/H;[BI)I
    .registers 14

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 58
    invoke-virtual {p1}, Lorg/jshybugger/H;->f()I

    move-result v5

    array-length v6, p2

    move v0, v3

    move v2, v1

    move v4, p3

    :goto_a
    if-ge v4, v5, :cond_31

    invoke-virtual {p1, v4}, Lorg/jshybugger/H;->e(I)B

    move-result v7

    aget-byte v8, p2, v0

    if-ne v7, v8, :cond_1b

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    move v0, v4

    :goto_18
    if-ne v2, v6, :cond_2b

    :goto_1a
    return v0

    :cond_1b
    invoke-virtual {p1, v4}, Lorg/jshybugger/H;->e(I)B

    move-result v0

    aget-byte v7, p2, v3

    if-ne v0, v7, :cond_28

    const/4 v0, 0x1

    move v9, v0

    move v0, v2

    move v2, v9

    goto :goto_18

    :cond_28
    move v2, v3

    move v0, v1

    goto :goto_18

    :cond_2b
    add-int/lit8 v4, v4, 0x1

    move v9, v2

    move v2, v0

    move v0, v9

    goto :goto_a

    :cond_31
    move v0, v1

    goto :goto_1a
.end method

.method static synthetic a(Lorg/jshybugger/hY;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lorg/jshybugger/hY;->g:Ljava/util/Map;

    return-object v0
.end method

.method private a(Lorg/jshybugger/dt;Lorg/jshybugger/aw;)Lorg/jshybugger/dX;
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 538
    invoke-interface {p1}, Lorg/jshybugger/dt;->h()Ljava/lang/String;

    move-result-object v2

    .line 542
    invoke-interface {p1}, Lorg/jshybugger/dt;->e()Lorg/jshybugger/dM;

    move-result-object v0

    sget-object v3, Lorg/jshybugger/dM;->a:Lorg/jshybugger/dM;

    invoke-virtual {v0, v3}, Lorg/jshybugger/dM;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 545
    const/4 v0, 0x0

    .line 626
    :goto_12
    return-object v0

    .line 548
    :cond_13
    new-instance v0, Lorg/jshybugger/dh;

    sget-object v3, Lorg/jshybugger/ec;->b:Lorg/jshybugger/ec;

    sget-object v4, Lorg/jshybugger/ea;->b:Lorg/jshybugger/ea;

    invoke-direct {v0, v3, v4}, Lorg/jshybugger/dh;-><init>(Lorg/jshybugger/ec;Lorg/jshybugger/ea;)V

    .line 549
    iget-object v3, v0, Lorg/jshybugger/dm;->b:Lorg/jshybugger/dJ;

    .line 550
    const-string v4, "Connection"

    const-string v5, "Keep-Alive"

    invoke-virtual {v3, v4, v5}, Lorg/jshybugger/dJ;->b(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/dJ;

    .line 553
    const-string v4, "/jshybugger.js"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 557
    :try_start_2d
    const-string v2, "Cache-Control"

    const-string v4, "no-cache, must-revalidate"

    invoke-virtual {v3, v2, v4}, Lorg/jshybugger/dJ;->b(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/dJ;

    .line 558
    const-string v2, "Content-Type"

    const-string v4, "application/javascript"

    invoke-virtual {v3, v2, v4}, Lorg/jshybugger/dJ;->b(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/dJ;

    .line 561
    invoke-static {}, Lorg/jshybugger/hC;->a()Ljava/io/InputStream;

    move-result-object v2

    .line 563
    const/16 v3, 0x200

    new-array v3, v3, [B

    .line 564
    :goto_43
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_53

    .line 565
    invoke-virtual {v0}, Lorg/jshybugger/dh;->a()Lorg/jshybugger/H;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6, v4}, Lorg/jshybugger/H;->b([BII)Lorg/jshybugger/H;

    .line 566
    add-int/2addr v1, v4

    goto :goto_43

    .line 569
    :cond_53
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 570
    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lorg/jshybugger/dJ;->b(Lorg/jshybugger/dL;J)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_5a} :catch_5b

    goto :goto_12

    .line 572
    :catch_5b
    move-exception v1

    .line 573
    const-string v2, "HttpFiltersAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Loading jsHybugger script failed. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/jshybugger/jf;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 578
    :cond_75
    const-string v3, "sendToDebugService"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d2

    .line 580
    new-instance v2, Lorg/jshybugger/hQ;

    invoke-interface {p1}, Lorg/jshybugger/dt;->a()Lorg/jshybugger/H;

    move-result-object v3

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jshybugger/H;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jshybugger/hQ;-><init>(Ljava/lang/String;)V

    .line 581
    const-string v3, "GlobalInitHybugger"

    const-string v4, "arg0"

    invoke-virtual {v2, v4}, Lorg/jshybugger/hQ;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-direct {p0, p1, v3}, Lorg/jshybugger/hY;->a(Lorg/jshybugger/dU;Z)Lorg/jshybugger/hX;

    move-result-object v3

    .line 582
    if-nez v3, :cond_a7

    .line 583
    sget-object v1, Lorg/jshybugger/ea;->d:Lorg/jshybugger/ea;

    invoke-virtual {v0, v1}, Lorg/jshybugger/dh;->a(Lorg/jshybugger/ea;)Lorg/jshybugger/du;

    goto/16 :goto_12

    .line 586
    :cond_a7
    const-string v4, "arg0"

    invoke-virtual {v2, v4}, Lorg/jshybugger/hQ;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "arg1"

    invoke-virtual {v2, v5}, Lorg/jshybugger/hQ;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2, v1}, Lorg/jshybugger/hX;->sendToDebugService(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 588
    if-eqz v1, :cond_cb

    .line 589
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 590
    array-length v2, v1

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lorg/jshybugger/dJ;->b(Lorg/jshybugger/dL;J)V

    .line 591
    invoke-virtual {v0}, Lorg/jshybugger/dh;->a()Lorg/jshybugger/H;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/jshybugger/H;->b([B)Lorg/jshybugger/H;

    goto/16 :goto_12

    .line 593
    :cond_cb
    sget-object v1, Lorg/jshybugger/ea;->c:Lorg/jshybugger/ea;

    invoke-virtual {v0, v1}, Lorg/jshybugger/dh;->a(Lorg/jshybugger/ea;)Lorg/jshybugger/du;

    goto/16 :goto_12

    .line 598
    :cond_d2
    invoke-direct {p0, p1, v1}, Lorg/jshybugger/hY;->a(Lorg/jshybugger/dU;Z)Lorg/jshybugger/hX;

    move-result-object v1

    .line 599
    if-nez v1, :cond_df

    .line 600
    sget-object v1, Lorg/jshybugger/ea;->d:Lorg/jshybugger/ea;

    invoke-virtual {v0, v1}, Lorg/jshybugger/dh;->a(Lorg/jshybugger/ea;)Lorg/jshybugger/du;

    goto/16 :goto_12

    .line 602
    :cond_df
    const-string v3, "sendReplyToDebugService"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10e

    .line 604
    new-instance v2, Lorg/jshybugger/hQ;

    invoke-interface {p1}, Lorg/jshybugger/dt;->a()Lorg/jshybugger/H;

    move-result-object v3

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jshybugger/H;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jshybugger/hQ;-><init>(Ljava/lang/String;)V

    .line 605
    const-string v3, "arg0"

    invoke-virtual {v2, v3}, Lorg/jshybugger/hQ;->d(Ljava/lang/String;)I

    move-result v3

    const-string v4, "arg1"

    invoke-virtual {v2, v4}, Lorg/jshybugger/hQ;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/jshybugger/hX;->sendReplyToDebugService(ILjava/lang/String;)V

    .line 606
    sget-object v1, Lorg/jshybugger/ea;->c:Lorg/jshybugger/ea;

    invoke-virtual {v0, v1}, Lorg/jshybugger/dh;->a(Lorg/jshybugger/ea;)Lorg/jshybugger/du;

    goto/16 :goto_12

    .line 608
    :cond_10e
    const-string v3, "getQueuedMessage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_132

    .line 610
    new-instance v2, Lorg/jshybugger/hQ;

    invoke-interface {p1}, Lorg/jshybugger/dt;->a()Lorg/jshybugger/H;

    move-result-object v3

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jshybugger/H;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jshybugger/hQ;-><init>(Ljava/lang/String;)V

    .line 611
    const-string v3, "arg0"

    invoke-virtual {v2, v3}, Lorg/jshybugger/hQ;->b(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/jshybugger/hX;->a(Lorg/jshybugger/du;Z)V

    goto/16 :goto_12

    .line 613
    :cond_132
    const-string v3, "pushChannel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_140

    .line 615
    invoke-virtual {v1, p2}, Lorg/jshybugger/hX;->a(Lorg/jshybugger/aw;)Lorg/jshybugger/dX;

    move-result-object v0

    goto/16 :goto_12

    .line 618
    :cond_140
    sget-object v1, Lorg/jshybugger/ea;->c:Lorg/jshybugger/ea;

    invoke-virtual {v0, v1}, Lorg/jshybugger/dh;->a(Lorg/jshybugger/ea;)Lorg/jshybugger/du;

    goto/16 :goto_12
.end method

.method static synthetic a(Lorg/jshybugger/hY;Lorg/jshybugger/dt;Lorg/jshybugger/aw;)Lorg/jshybugger/dX;
    .registers 4

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lorg/jshybugger/hY;->a(Lorg/jshybugger/dt;Lorg/jshybugger/aw;)Lorg/jshybugger/dX;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/jshybugger/dU;Z)Lorg/jshybugger/hX;
    .registers 11

    .prologue
    .line 631
    invoke-interface {p1}, Lorg/jshybugger/dU;->f()Lorg/jshybugger/dJ;

    move-result-object v0

    const-string v1, "jshybuggerid"

    invoke-virtual {v0, v1}, Lorg/jshybugger/dJ;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 632
    iget-object v0, p0, Lorg/jshybugger/hY;->e:Lorg/jshybugger/iq;

    invoke-virtual {v0, v1}, Lorg/jshybugger/iq;->a(Ljava/lang/String;)Lorg/jshybugger/iz;

    move-result-object v0

    .line 633
    if-nez v0, :cond_91

    .line 634
    if-eqz p2, :cond_7f

    .line 635
    new-instance v2, Lorg/jshybugger/hX;

    invoke-direct {v2}, Lorg/jshybugger/hX;-><init>()V

    .line 636
    new-instance v0, Lorg/jshybugger/iz;

    invoke-direct {v0, v1}, Lorg/jshybugger/iz;-><init>(Ljava/lang/String;)V

    .line 637
    invoke-virtual {v0, v2}, Lorg/jshybugger/iz;->a(Lorg/jshybugger/ii;)V

    .line 638
    iget-object v1, p0, Lorg/jshybugger/hY;->e:Lorg/jshybugger/iq;

    invoke-virtual {v1, v0}, Lorg/jshybugger/iq;->a(Lorg/jshybugger/iz;)V

    move-object v1, v0

    .line 644
    :goto_27
    invoke-interface {p1}, Lorg/jshybugger/dU;->f()Lorg/jshybugger/dJ;

    move-result-object v0

    const-string v2, "jshybugger_title"

    invoke-virtual {v0, v2}, Lorg/jshybugger/dJ;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 645
    if-eqz v0, :cond_87

    .line 646
    invoke-virtual {v1, v0}, Lorg/jshybugger/iz;->a(Ljava/lang/String;)V

    .line 647
    invoke-interface {p1}, Lorg/jshybugger/dU;->f()Lorg/jshybugger/dJ;

    move-result-object v0

    const-string v2, "jshybugger_url"

    invoke-virtual {v0, v2}, Lorg/jshybugger/dJ;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jshybugger/iz;->b(Ljava/lang/String;)V

    .line 649
    iget-wide v2, p0, Lorg/jshybugger/hY;->f:J

    const-wide/16 v4, 0x7530

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_87

    .line 650
    iget-object v0, p0, Lorg/jshybugger/hY;->e:Lorg/jshybugger/iq;

    invoke-virtual {v0}, Lorg/jshybugger/iq;->b()Ljava/util/Collection;

    move-result-object v0

    .line 651
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5a
    :goto_5a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/iz;

    .line 652
    invoke-virtual {v0}, Lorg/jshybugger/iz;->f()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/jshybugger/hY;->f:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_5a

    .line 653
    iget-object v3, p0, Lorg/jshybugger/hY;->e:Lorg/jshybugger/iq;

    iget-object v3, v3, Lorg/jshybugger/iq;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Lorg/jshybugger/iz;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/jshybugger/iz;->h()V

    goto :goto_5a

    .line 640
    :cond_7f
    const/4 v0, 0x0

    .line 660
    :goto_80
    return-object v0

    .line 656
    :cond_81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/jshybugger/hY;->f:J

    .line 659
    :cond_87
    invoke-virtual {v1}, Lorg/jshybugger/iz;->g()V

    .line 660
    invoke-virtual {v1}, Lorg/jshybugger/iz;->b()Lorg/jshybugger/ii;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/hX;

    goto :goto_80

    :cond_91
    move-object v1, v0

    goto :goto_27
.end method

.method static synthetic c()[B
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lorg/jshybugger/hY;->b:[B

    return-object v0
.end method

.method static synthetic d()[B
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lorg/jshybugger/hY;->c:[B

    return-object v0
.end method

.method static synthetic e()[B
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lorg/jshybugger/hY;->a:[B

    return-object v0
.end method

.method static synthetic f()[B
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lorg/jshybugger/hY;->d:[B

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 87
    const v0, 0x3e8000

    return v0
.end method

.method public final a(Lorg/jshybugger/dU;Lorg/jshybugger/aw;)Lorg/jshybugger/jx;
    .registers 4

    .prologue
    .line 97
    new-instance v0, Lorg/jshybugger/hZ;

    invoke-direct {v0, p0, p1, p2}, Lorg/jshybugger/hZ;-><init>(Lorg/jshybugger/hY;Lorg/jshybugger/dU;Lorg/jshybugger/aw;)V

    return-object v0
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 92
    const v0, 0x3e8000

    return v0
.end method
