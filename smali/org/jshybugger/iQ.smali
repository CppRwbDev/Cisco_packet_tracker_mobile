.class public final Lorg/jshybugger/iq;
.super Ljava/lang/Object;
.source "DebugServer.java"


# instance fields
.field public a:Lorg/jshybugger/jo;

.field public b:Lorg/jshybugger/iH;

.field public c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/jshybugger/iz;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 11

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/iq;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 90
    const-string v0, "DebugServer"

    const-string v1, "Initialize DebugServer version 4.5.6"

    invoke-static {v0, v1}, Lorg/jshybugger/jf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iput p1, p0, Lorg/jshybugger/iq;->e:I

    .line 92
    iput-object p2, p0, Lorg/jshybugger/iq;->f:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lorg/jshybugger/iq;->a()V

    .line 96
    :try_start_18
    const-string v0, "jsHybugger"

    const-string v1, "4.5.6"

    invoke-static {v0, v1}, Lorg/jshybugger/jk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1f
    .catch Lorg/jshybugger/je; {:try_start_18 .. :try_end_1f} :catch_48

    .line 98
    :goto_1f
    new-instance v3, Lorg/jshybugger/it;

    const-string v0, "/"

    invoke-direct {v3, p0, v0}, Lorg/jshybugger/it;-><init>(Lorg/jshybugger/iq;Ljava/lang/String;)V

    .line 99
    new-instance v4, Lorg/jshybugger/iu;

    const-string v0, "/json"

    invoke-direct {v4, p0, v0}, Lorg/jshybugger/iu;-><init>(Lorg/jshybugger/iq;Ljava/lang/String;)V

    .line 100
    new-instance v5, Lorg/jshybugger/iv;

    const-string v0, "/json/version"

    invoke-direct {v5, p0, v0}, Lorg/jshybugger/iv;-><init>(Lorg/jshybugger/iq;Ljava/lang/String;)V

    .line 101
    new-instance v7, Lorg/jshybugger/is;

    invoke-direct {v7, p0}, Lorg/jshybugger/is;-><init>(Lorg/jshybugger/iq;)V

    .line 102
    new-instance v6, Lorg/jshybugger/iw;

    invoke-direct {v6, p0}, Lorg/jshybugger/iw;-><init>(Lorg/jshybugger/iq;)V

    .line 104
    new-instance v0, Lorg/jshybugger/ir;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lorg/jshybugger/ir;-><init>(Lorg/jshybugger/iq;ILorg/jshybugger/jl;Lorg/jshybugger/jl;Lorg/jshybugger/jl;Lorg/jshybugger/jl;Lorg/jshybugger/jl;)V

    iput-object v0, p0, Lorg/jshybugger/iq;->a:Lorg/jshybugger/jo;

    .line 117
    return-void

    .line 96
    :catch_48
    move-exception v0

    const-string v1, "DebugServer"

    invoke-virtual {v0}, Lorg/jshybugger/je;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/jshybugger/jf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method

.method static b(Ljava/lang/String;)I
    .registers 7

    .prologue
    .line 509
    invoke-static {}, Lorg/jshybugger/jk;->a()Ljava/lang/String;

    move-result-object v1

    .line 510
    invoke-static {}, Lorg/jshybugger/jk;->g()Ljava/lang/String;

    move-result-object v0

    .line 512
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://www.jshybugger.com/stat/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/4.5.6"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v0, Lorg/jshybugger/jk;->a:Z

    if-eqz v0, :cond_79

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "?s="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/jshybugger/jk;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v5, 0xa

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 514
    invoke-static {}, Lorg/jshybugger/DebugService;->getInstance()Lorg/jshybugger/DebugService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/DebugService;->getInstrumentationProvider()Lorg/jshybugger/hE;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hE;->a()Ljava/net/Proxy;

    move-result-object v0

    .line 515
    if-nez v0, :cond_7c

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    :goto_69
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 520
    invoke-virtual {v0, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 521
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 522
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 524
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 525
    return v1

    .line 512
    :cond_79
    const-string v0, "0"

    goto :goto_2b

    .line 515
    :cond_7c
    invoke-virtual {v2, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_69
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lorg/jshybugger/iz;
    .registers 3

    .prologue
    .line 404
    iget-object v0, p0, Lorg/jshybugger/iq;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/iz;

    return-object v0
.end method

.method final a()V
    .registers 5

    .prologue
    .line 120
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/iq;->d:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lorg/jshybugger/hQ;)V
    .registers 7

    .prologue
    .line 529
    invoke-virtual {p0}, Lorg/jshybugger/iq;->b()Ljava/util/Collection;

    move-result-object v0

    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 531
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/iz;

    .line 532
    invoke-virtual {v0, v1, p3}, Lorg/jshybugger/iz;->b(Ljava/lang/String;Lorg/jshybugger/hQ;)V

    goto :goto_1f

    .line 534
    :cond_2f
    return-void
.end method

.method public final a(Lorg/jshybugger/iz;)V
    .registers 4

    .prologue
    .line 395
    iget-object v0, p0, Lorg/jshybugger/iq;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/jshybugger/iz;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    return-void
.end method

.method public final b()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jshybugger/iz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Lorg/jshybugger/iq;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
