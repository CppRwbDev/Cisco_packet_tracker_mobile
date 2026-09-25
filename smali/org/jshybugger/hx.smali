.class public final Lorg/jshybugger/hX;
.super Lorg/jshybugger/if;
.source "HttpBrowserInterface.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lorg/jshybugger/aw;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 50
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lorg/jshybugger/if;-><init>(I)V

    .line 42
    iput-boolean v1, p0, Lorg/jshybugger/hX;->a:Z

    .line 43
    iput-boolean v1, p0, Lorg/jshybugger/hX;->b:Z

    .line 51
    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/aw;)Lorg/jshybugger/dX;
    .registers 6

    .prologue
    .line 69
    monitor-enter p0

    .line 71
    :try_start_1
    iget-object v0, p0, Lorg/jshybugger/hX;->c:Lorg/jshybugger/aw;

    if-eqz v0, :cond_f

    .line 72
    iget-object v0, p0, Lorg/jshybugger/hX;->c:Lorg/jshybugger/aw;

    sget-object v1, Lorg/jshybugger/ed;->a:Lorg/jshybugger/ed;

    invoke-interface {v0, v1}, Lorg/jshybugger/aw;->b(Ljava/lang/Object;)Lorg/jshybugger/ao;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jshybugger/hX;->c:Lorg/jshybugger/aw;

    .line 76
    :cond_f
    iget-boolean v0, p0, Lorg/jshybugger/hX;->a:Z

    if-eqz v0, :cond_3a

    .line 78
    new-instance v0, Lorg/jshybugger/dh;

    sget-object v1, Lorg/jshybugger/ec;->b:Lorg/jshybugger/ec;

    sget-object v2, Lorg/jshybugger/ea;->b:Lorg/jshybugger/ea;

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/dh;-><init>(Lorg/jshybugger/ec;Lorg/jshybugger/ea;)V

    .line 83
    const-string v1, "JsHybugger.processMessages(false);"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 84
    array-length v2, v1

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lorg/jshybugger/dJ;->b(Lorg/jshybugger/dL;J)V

    .line 85
    invoke-virtual {v0}, Lorg/jshybugger/dh;->a()Lorg/jshybugger/H;

    move-result-object v2

    invoke-static {v1}, Lorg/jshybugger/S;->b([B)Lorg/jshybugger/H;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jshybugger/H;->b(Lorg/jshybugger/H;)Lorg/jshybugger/H;

    .line 87
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jshybugger/hX;->b:Z

    .line 88
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jshybugger/hX;->a:Z

    .line 89
    monitor-exit p0

    .line 97
    :goto_39
    return-object v0

    .line 92
    :cond_3a
    new-instance v0, Lorg/jshybugger/dp;

    sget-object v1, Lorg/jshybugger/ec;->b:Lorg/jshybugger/ec;

    sget-object v2, Lorg/jshybugger/ea;->b:Lorg/jshybugger/ea;

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/dp;-><init>(Lorg/jshybugger/ec;Lorg/jshybugger/ea;)V

    .line 93
    invoke-static {v0}, Lorg/jshybugger/dJ;->f(Lorg/jshybugger/dL;)V

    .line 95
    iput-object p1, p0, Lorg/jshybugger/hX;->c:Lorg/jshybugger/aw;

    .line 97
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_4a

    goto :goto_39

    .line 99
    :catchall_4a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()V
    .registers 4

    .prologue
    .line 56
    monitor-enter p0

    .line 57
    :try_start_1
    iget-object v0, p0, Lorg/jshybugger/hX;->c:Lorg/jshybugger/aw;

    if-eqz v0, :cond_27

    .line 59
    new-instance v0, Lorg/jshybugger/di;

    const-string v1, "JsHybugger.processMessages(false);"

    const-string v2, "utf8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/jshybugger/S;->a(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jshybugger/H;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jshybugger/di;-><init>(Lorg/jshybugger/H;)V

    iget-object v1, p0, Lorg/jshybugger/hX;->c:Lorg/jshybugger/aw;

    invoke-interface {v1, v0}, Lorg/jshybugger/aw;->a(Ljava/lang/Object;)Lorg/jshybugger/ao;

    iget-object v0, p0, Lorg/jshybugger/hX;->c:Lorg/jshybugger/aw;

    sget-object v1, Lorg/jshybugger/ed;->a:Lorg/jshybugger/ed;

    invoke-interface {v0, v1}, Lorg/jshybugger/aw;->b(Ljava/lang/Object;)Lorg/jshybugger/ao;

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 64
    :goto_25
    monitor-exit p0

    return-void

    .line 62
    :cond_27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jshybugger/hX;->a:Z
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2b

    goto :goto_25

    .line 65
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lorg/jshybugger/du;Z)V
    .registers 7

    .prologue
    .line 128
    invoke-super {p0, p2}, Lorg/jshybugger/if;->getQueuedMessage(Z)Ljava/lang/String;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_1c

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sget-object v1, Lorg/jshybugger/ea;->b:Lorg/jshybugger/ea;

    invoke-interface {p1, v1}, Lorg/jshybugger/du;->a(Lorg/jshybugger/ea;)Lorg/jshybugger/du;

    array-length v1, v0

    int-to-long v2, v1

    invoke-static {p1, v2, v3}, Lorg/jshybugger/dJ;->b(Lorg/jshybugger/dL;J)V

    invoke-interface {p1}, Lorg/jshybugger/du;->a()Lorg/jshybugger/H;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jshybugger/H;->b([B)Lorg/jshybugger/H;

    .line 130
    :goto_1b
    return-void

    .line 129
    :cond_1c
    sget-object v0, Lorg/jshybugger/ea;->c:Lorg/jshybugger/ea;

    invoke-interface {p1, v0}, Lorg/jshybugger/du;->a(Lorg/jshybugger/ea;)Lorg/jshybugger/du;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_21} :catch_22

    goto :goto_1b

    :catch_22
    move-exception v0

    const-string v1, "JSDInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendMessage failed. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/jshybugger/jf;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public final b()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    const/4 v0, 0x0

    return-object v0
.end method
