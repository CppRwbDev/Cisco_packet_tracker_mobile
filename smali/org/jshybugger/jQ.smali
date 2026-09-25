.class public Lorg/jshybugger/jq;
.super Lorg/jshybugger/jl;
.source "WebSocketServerHandler.java"


# static fields
.field private static final b:Ljava/util/logging/Logger;


# instance fields
.field private c:Lorg/jshybugger/eC;

.field private d:Lorg/jshybugger/jn;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-class v0, Lorg/jshybugger/jq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/jq;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    const-string v0, "/devtools/page"

    invoke-direct {p0, v0}, Lorg/jshybugger/jl;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/aw;Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 132
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 133
    invoke-interface {p1}, Lorg/jshybugger/aw;->h()Lorg/jshybugger/ao;

    .line 134
    return-void
.end method

.method public a(Lorg/jshybugger/jn;)V
    .registers 2

    .prologue
    .line 153
    return-void
.end method

.method public a(Lorg/jshybugger/jn;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 159
    return-void
.end method

.method public final a(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 56
    instance-of v0, p1, Lorg/jshybugger/dt;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lorg/jshybugger/dt;

    invoke-interface {v0}, Lorg/jshybugger/dt;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/devtools/page"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_13
    instance-of v0, p1, Lorg/jshybugger/ey;

    if-eqz v0, :cond_19

    :cond_17
    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public b(Lorg/jshybugger/jn;)V
    .registers 2

    .prologue
    .line 156
    return-void
.end method

.method public final c(Lorg/jshybugger/aw;Ljava/lang/Object;)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 62
    instance-of v1, p2, Lorg/jshybugger/dt;

    if-eqz v1, :cond_10f

    .line 63
    check-cast p2, Lorg/jshybugger/dt;

    invoke-interface {p2}, Lorg/jshybugger/dt;->c()Lorg/jshybugger/cB;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jshybugger/cB;->a()Z

    move-result v1

    if-nez v1, :cond_20

    new-instance v0, Lorg/jshybugger/dh;

    sget-object v1, Lorg/jshybugger/ec;->b:Lorg/jshybugger/ec;

    sget-object v2, Lorg/jshybugger/ea;->g:Lorg/jshybugger/ea;

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/dh;-><init>(Lorg/jshybugger/ec;Lorg/jshybugger/ea;)V

    invoke-static {p1, p2, v0}, Lorg/jshybugger/jq;->a(Lorg/jshybugger/aw;Lorg/jshybugger/dt;Lorg/jshybugger/du;)V

    .line 67
    :cond_1f
    :goto_1f
    return-void

    .line 63
    :cond_20
    invoke-interface {p2}, Lorg/jshybugger/dt;->e()Lorg/jshybugger/dM;

    move-result-object v1

    sget-object v2, Lorg/jshybugger/dM;->b:Lorg/jshybugger/dM;

    if-eq v1, v2, :cond_35

    new-instance v0, Lorg/jshybugger/dh;

    sget-object v1, Lorg/jshybugger/ec;->b:Lorg/jshybugger/ec;

    sget-object v2, Lorg/jshybugger/ea;->h:Lorg/jshybugger/ea;

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/dh;-><init>(Lorg/jshybugger/ec;Lorg/jshybugger/ea;)V

    invoke-static {p1, p2, v0}, Lorg/jshybugger/jq;->a(Lorg/jshybugger/aw;Lorg/jshybugger/dt;Lorg/jshybugger/du;)V

    goto :goto_1f

    :cond_35
    new-instance v1, Lorg/jshybugger/eI;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ws://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/jshybugger/dt;->f()Lorg/jshybugger/dJ;

    move-result-object v3

    const-string v4, "Host"

    invoke-virtual {v3, v4}, Lorg/jshybugger/dJ;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lorg/jshybugger/dt;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v5}, Lorg/jshybugger/eI;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p2}, Lorg/jshybugger/dt;->f()Lorg/jshybugger/dJ;

    move-result-object v2

    const-string v3, "Sec-WebSocket-Protocol"

    invoke-virtual {v2, v3}, Lorg/jshybugger/dJ;->b(Ljava/lang/String;)Lorg/jshybugger/dJ;

    invoke-interface {p2}, Lorg/jshybugger/dU;->f()Lorg/jshybugger/dJ;

    move-result-object v2

    const-string v3, "Sec-WebSocket-Version"

    invoke-virtual {v2, v3}, Lorg/jshybugger/dJ;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e4

    sget-object v3, Lorg/jshybugger/eJ;->d:Lorg/jshybugger/eJ;

    invoke-virtual {v3}, Lorg/jshybugger/eJ;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b0

    new-instance v0, Lorg/jshybugger/eH;

    iget-object v2, v1, Lorg/jshybugger/eI;->a:Ljava/lang/String;

    iget-object v3, v1, Lorg/jshybugger/eI;->b:Ljava/lang/String;

    iget-boolean v4, v1, Lorg/jshybugger/eI;->c:Z

    iget v1, v1, Lorg/jshybugger/eI;->d:I

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/jshybugger/eH;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    :cond_89
    :goto_89
    iput-object v0, p0, Lorg/jshybugger/jq;->c:Lorg/jshybugger/eC;

    iget-object v0, p0, Lorg/jshybugger/jq;->c:Lorg/jshybugger/eC;

    if-nez v0, :cond_f0

    invoke-interface {p1}, Lorg/jshybugger/aw;->a()Lorg/jshybugger/aj;

    move-result-object v0

    new-instance v1, Lorg/jshybugger/dp;

    sget-object v2, Lorg/jshybugger/ec;->b:Lorg/jshybugger/ec;

    sget-object v3, Lorg/jshybugger/ea;->k:Lorg/jshybugger/ea;

    invoke-direct {v1, v2, v3}, Lorg/jshybugger/dp;-><init>(Lorg/jshybugger/ec;Lorg/jshybugger/ea;)V

    invoke-interface {v1}, Lorg/jshybugger/dX;->f()Lorg/jshybugger/dJ;

    move-result-object v2

    const-string v3, "Sec-WebSocket-Version"

    sget-object v4, Lorg/jshybugger/eJ;->d:Lorg/jshybugger/eJ;

    invoke-virtual {v4}, Lorg/jshybugger/eJ;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/jshybugger/dJ;->b(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/dJ;

    invoke-interface {v0, v1}, Lorg/jshybugger/aj;->a(Ljava/lang/Object;)Lorg/jshybugger/ao;

    goto/16 :goto_1f

    :cond_b0
    sget-object v3, Lorg/jshybugger/eJ;->c:Lorg/jshybugger/eJ;

    invoke-virtual {v3}, Lorg/jshybugger/eJ;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ca

    new-instance v0, Lorg/jshybugger/eG;

    iget-object v2, v1, Lorg/jshybugger/eI;->a:Ljava/lang/String;

    iget-object v3, v1, Lorg/jshybugger/eI;->b:Ljava/lang/String;

    iget-boolean v4, v1, Lorg/jshybugger/eI;->c:Z

    iget v1, v1, Lorg/jshybugger/eI;->d:I

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/jshybugger/eG;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_89

    :cond_ca
    sget-object v3, Lorg/jshybugger/eJ;->b:Lorg/jshybugger/eJ;

    invoke-virtual {v3}, Lorg/jshybugger/eJ;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    new-instance v0, Lorg/jshybugger/eF;

    iget-object v2, v1, Lorg/jshybugger/eI;->a:Ljava/lang/String;

    iget-object v3, v1, Lorg/jshybugger/eI;->b:Ljava/lang/String;

    iget-boolean v4, v1, Lorg/jshybugger/eI;->c:Z

    iget v1, v1, Lorg/jshybugger/eI;->d:I

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/jshybugger/eF;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_89

    :cond_e4
    new-instance v0, Lorg/jshybugger/eE;

    iget-object v2, v1, Lorg/jshybugger/eI;->a:Ljava/lang/String;

    iget-object v3, v1, Lorg/jshybugger/eI;->b:Ljava/lang/String;

    iget v1, v1, Lorg/jshybugger/eI;->d:I

    invoke-direct {v0, v2, v3, v1}, Lorg/jshybugger/eE;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_89

    :cond_f0
    iget-object v0, p0, Lorg/jshybugger/jq;->c:Lorg/jshybugger/eC;

    invoke-interface {p1}, Lorg/jshybugger/aw;->a()Lorg/jshybugger/aj;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/jshybugger/eC;->a(Lorg/jshybugger/aj;Lorg/jshybugger/dt;)Lorg/jshybugger/ao;

    move-result-object v0

    invoke-interface {v0}, Lorg/jshybugger/ao;->e()Lorg/jshybugger/ao;

    new-instance v0, Lorg/jshybugger/jn;

    invoke-interface {p1}, Lorg/jshybugger/aw;->a()Lorg/jshybugger/aj;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lorg/jshybugger/jn;-><init>(Lorg/jshybugger/dt;Lorg/jshybugger/aj;)V

    iput-object v0, p0, Lorg/jshybugger/jq;->d:Lorg/jshybugger/jn;

    iget-object v0, p0, Lorg/jshybugger/jq;->d:Lorg/jshybugger/jn;

    invoke-virtual {p0, v0}, Lorg/jshybugger/jq;->a(Lorg/jshybugger/jn;)V

    goto/16 :goto_1f

    .line 64
    :cond_10f
    instance-of v0, p2, Lorg/jshybugger/ey;

    if-eqz v0, :cond_1f

    .line 65
    check-cast p2, Lorg/jshybugger/ey;

    instance-of v0, p2, Lorg/jshybugger/eh;

    if-eqz v0, :cond_12a

    iget-object v1, p0, Lorg/jshybugger/jq;->c:Lorg/jshybugger/eC;

    invoke-interface {p1}, Lorg/jshybugger/aw;->a()Lorg/jshybugger/aj;

    move-result-object v2

    invoke-virtual {p2}, Lorg/jshybugger/ey;->c()Lorg/jshybugger/ey;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/eh;

    invoke-virtual {v1, v2, v0}, Lorg/jshybugger/eC;->a(Lorg/jshybugger/aj;Lorg/jshybugger/eh;)Lorg/jshybugger/ao;

    goto/16 :goto_1f

    :cond_12a
    instance-of v0, p2, Lorg/jshybugger/ej;

    if-eqz v0, :cond_144

    invoke-interface {p1}, Lorg/jshybugger/aw;->a()Lorg/jshybugger/aj;

    move-result-object v0

    new-instance v1, Lorg/jshybugger/ek;

    invoke-virtual {p2}, Lorg/jshybugger/ey;->a()Lorg/jshybugger/H;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jshybugger/H;->u()Lorg/jshybugger/H;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jshybugger/ek;-><init>(Lorg/jshybugger/H;)V

    invoke-interface {v0, v1}, Lorg/jshybugger/aj;->a(Ljava/lang/Object;)Lorg/jshybugger/ao;

    goto/16 :goto_1f

    :cond_144
    instance-of v0, p2, Lorg/jshybugger/el;

    if-nez v0, :cond_160

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "%s frame types not supported"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_160
    check-cast p2, Lorg/jshybugger/el;

    invoke-virtual {p2}, Lorg/jshybugger/el;->a()Lorg/jshybugger/H;

    move-result-object v0

    sget-object v1, Lorg/jshybugger/fe;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lorg/jshybugger/H;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/jshybugger/jq;->b:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_18c

    sget-object v1, Lorg/jshybugger/jq;->b:Ljava/util/logging/Logger;

    const-string v2, "%s received %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1}, Lorg/jshybugger/aw;->a()Lorg/jshybugger/aj;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_18c
    iget-object v1, p0, Lorg/jshybugger/jq;->d:Lorg/jshybugger/jn;

    iget-boolean v1, v1, Lorg/jshybugger/jn;->b:Z

    if-nez v1, :cond_1f

    iget-object v1, p0, Lorg/jshybugger/jq;->d:Lorg/jshybugger/jn;

    invoke-virtual {p0, v1, v0}, Lorg/jshybugger/jq;->a(Lorg/jshybugger/jn;Ljava/lang/String;)V

    goto/16 :goto_1f
.end method

.method public final h(Lorg/jshybugger/aw;)V
    .registers 3

    .prologue
    .line 139
    iget-object v0, p0, Lorg/jshybugger/jq;->d:Lorg/jshybugger/jn;

    if-eqz v0, :cond_12

    .line 140
    iget-object v0, p0, Lorg/jshybugger/jq;->d:Lorg/jshybugger/jn;

    iget-boolean v0, v0, Lorg/jshybugger/jn;->b:Z

    if-nez v0, :cond_f

    .line 141
    iget-object v0, p0, Lorg/jshybugger/jq;->d:Lorg/jshybugger/jn;

    invoke-virtual {p0, v0}, Lorg/jshybugger/jq;->b(Lorg/jshybugger/jn;)V

    .line 143
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jshybugger/jq;->d:Lorg/jshybugger/jn;

    .line 145
    :cond_12
    invoke-super {p0, p1}, Lorg/jshybugger/jl;->h(Lorg/jshybugger/aw;)V

    .line 146
    return-void
.end method

.method public final i(Lorg/jshybugger/aw;)V
    .registers 2

    .prologue
    .line 71
    invoke-interface {p1}, Lorg/jshybugger/aw;->q()Lorg/jshybugger/aw;

    .line 72
    return-void
.end method
