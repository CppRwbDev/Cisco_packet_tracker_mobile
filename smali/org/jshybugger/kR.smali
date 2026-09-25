.class final Lorg/jshybugger/kr;
.super Lorg/jshybugger/jR;
.source "ProxyToServerConnection.java"


# instance fields
.field final synthetic c:Lorg/jshybugger/kq;


# direct methods
.method constructor <init>(Lorg/jshybugger/kq;Lorg/jshybugger/kd;Lorg/jshybugger/jS;)V
    .registers 4

    .prologue
    .line 499
    iput-object p1, p0, Lorg/jshybugger/kr;->c:Lorg/jshybugger/kq;

    invoke-direct {p0, p2, p3}, Lorg/jshybugger/jR;-><init>(Lorg/jshybugger/kd;Lorg/jshybugger/jS;)V

    return-void
.end method


# virtual methods
.method protected final b()Lorg/jshybugger/fN;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jshybugger/fN",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 507
    new-instance v0, Lorg/jshybugger/w;

    invoke-direct {v0}, Lorg/jshybugger/w;-><init>()V

    iget-object v1, p0, Lorg/jshybugger/kr;->c:Lorg/jshybugger/kq;

    iget-object v1, v1, Lorg/jshybugger/kq;->d:Lorg/jshybugger/jT;

    iget-object v2, p0, Lorg/jshybugger/kr;->c:Lorg/jshybugger/kq;

    invoke-static {v2}, Lorg/jshybugger/kq;->c(Lorg/jshybugger/kq;)Lorg/jshybugger/jE;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jshybugger/jT;->a(Lorg/jshybugger/jE;)Lorg/jshybugger/bv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jshybugger/w;->a(Lorg/jshybugger/bv;)Lorg/jshybugger/s;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/w;

    .line 510
    sget-object v1, Lorg/jshybugger/kB;->a:[I

    iget-object v2, p0, Lorg/jshybugger/kr;->c:Lorg/jshybugger/kq;

    invoke-static {v2}, Lorg/jshybugger/kq;->c(Lorg/jshybugger/kq;)Lorg/jshybugger/jE;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jshybugger/jE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_82

    .line 521
    new-instance v0, Lorg/jshybugger/jF;

    iget-object v1, p0, Lorg/jshybugger/kr;->c:Lorg/jshybugger/kq;

    invoke-static {v1}, Lorg/jshybugger/kq;->c(Lorg/jshybugger/kq;)Lorg/jshybugger/jE;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jshybugger/jF;-><init>(Lorg/jshybugger/jE;)V

    throw v0

    .line 512
    :pswitch_36
    iget-object v1, p0, Lorg/jshybugger/kr;->c:Lorg/jshybugger/kq;

    iget-object v1, v1, Lorg/jshybugger/kq;->c:Lorg/jshybugger/kp;

    const-string v2, "Connecting to server with TCP"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/jshybugger/kp;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    new-instance v1, Lorg/jshybugger/ks;

    invoke-direct {v1, p0}, Lorg/jshybugger/ks;-><init>(Lorg/jshybugger/kr;)V

    invoke-virtual {v0, v1}, Lorg/jshybugger/w;->a(Lorg/jshybugger/z;)Lorg/jshybugger/s;

    .line 524
    new-instance v1, Lorg/jshybugger/kt;

    invoke-direct {v1, p0}, Lorg/jshybugger/kt;-><init>(Lorg/jshybugger/kr;)V

    invoke-virtual {v0, v1}, Lorg/jshybugger/w;->a(Lorg/jshybugger/at;)Lorg/jshybugger/s;

    .line 529
    sget-object v1, Lorg/jshybugger/aB;->d:Lorg/jshybugger/aB;

    const v2, 0x9c40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jshybugger/w;->a(Lorg/jshybugger/aB;Ljava/lang/Object;)Lorg/jshybugger/s;

    .line 531
    iget-object v1, p0, Lorg/jshybugger/kr;->c:Lorg/jshybugger/kq;

    invoke-static {v1}, Lorg/jshybugger/kq;->e(Lorg/jshybugger/kq;)Ljava/net/InetSocketAddress;

    move-result-object v1

    if-eqz v1, :cond_77

    .line 532
    iget-object v1, p0, Lorg/jshybugger/kr;->c:Lorg/jshybugger/kq;

    invoke-static {v1}, Lorg/jshybugger/kq;->f(Lorg/jshybugger/kq;)Ljava/net/InetSocketAddress;

    move-result-object v1

    iget-object v2, p0, Lorg/jshybugger/kr;->c:Lorg/jshybugger/kq;

    invoke-static {v2}, Lorg/jshybugger/kq;->e(Lorg/jshybugger/kq;)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jshybugger/w;->a(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/jshybugger/ao;

    move-result-object v0

    .line 534
    :goto_76
    return-object v0

    :cond_77
    iget-object v1, p0, Lorg/jshybugger/kr;->c:Lorg/jshybugger/kq;

    invoke-static {v1}, Lorg/jshybugger/kq;->f(Lorg/jshybugger/kq;)Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jshybugger/w;->c(Ljava/net/SocketAddress;)Lorg/jshybugger/ao;

    move-result-object v0

    goto :goto_76

    .line 510
    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_36
    .end packed-switch
.end method

.method final c()Z
    .registers 2

    .prologue
    .line 502
    const/4 v0, 0x0

    return v0
.end method
