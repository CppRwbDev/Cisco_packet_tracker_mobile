.class public final Lorg/jshybugger/kq;
.super Lorg/jshybugger/kd;
.source "ProxyToServerConnection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jshybugger/kd",
        "<",
        "Lorg/jshybugger/dX;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/jshybugger/au;
.end annotation


# instance fields
.field private A:Lorg/jshybugger/jR;

.field private B:Lorg/jshybugger/jR;

.field private final C:Lorg/jshybugger/kj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jshybugger/kd",
            "<",
            "Lorg/jshybugger/dX;",
            ">.org/jshybugger/kj;"
        }
    .end annotation
.end field

.field private D:Lorg/jshybugger/kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jshybugger/kd",
            "<",
            "Lorg/jshybugger/dX;",
            ">.org/jshybugger/kn;"
        }
    .end annotation
.end field

.field private E:Lorg/jshybugger/kk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jshybugger/kd",
            "<",
            "Lorg/jshybugger/dX;",
            ">.org/jshybugger/kk;"
        }
    .end annotation
.end field

.field private F:Lorg/jshybugger/km;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jshybugger/kd",
            "<",
            "Lorg/jshybugger/dX;",
            ">.org/jshybugger/km;"
        }
    .end annotation
.end field

.field volatile b:Ljava/net/InetSocketAddress;

.field volatile l:Lorg/jshybugger/jx;

.field volatile m:Lorg/jshybugger/dU;

.field private final n:Lorg/jshybugger/jG;

.field private final o:Lorg/jshybugger/kq;

.field private volatile p:Lorg/jshybugger/jE;

.field private volatile q:Ljava/net/InetSocketAddress;

.field private final r:Ljava/lang/String;

.field private volatile s:Lorg/jshybugger/js;

.field private final t:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/jshybugger/js;",
            ">;"
        }
    .end annotation
.end field

.field private volatile u:Lorg/jshybugger/jN;

.field private final v:Ljava/lang/Object;

.field private final w:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/jshybugger/dU;",
            ">;"
        }
    .end annotation
.end field

.field private volatile x:Lorg/jshybugger/dU;

.field private volatile y:Lorg/jshybugger/dX;

.field private z:Lorg/jshybugger/jR;


# direct methods
.method private constructor <init>(Lorg/jshybugger/jT;Lorg/jshybugger/jG;Ljava/lang/String;Lorg/jshybugger/js;Ljava/util/Queue;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/jT;",
            "Lorg/jshybugger/jG;",
            "Ljava/lang/String;",
            "Lorg/jshybugger/js;",
            "Ljava/util/Queue",
            "<",
            "Lorg/jshybugger/js;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    sget-object v0, Lorg/jshybugger/jS;->i:Lorg/jshybugger/jS;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lorg/jshybugger/kd;-><init>(Lorg/jshybugger/jS;Lorg/jshybugger/jT;Z)V

    .line 68
    iput-object p0, p0, Lorg/jshybugger/kq;->o:Lorg/jshybugger/kq;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/kq;->v:Ljava/lang/Object;

    .line 104
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/kq;->w:Ljava/util/Queue;

    .line 498
    new-instance v0, Lorg/jshybugger/kr;

    sget-object v1, Lorg/jshybugger/jS;->a:Lorg/jshybugger/jS;

    invoke-direct {v0, p0, p0, v1}, Lorg/jshybugger/kr;-><init>(Lorg/jshybugger/kq;Lorg/jshybugger/kd;Lorg/jshybugger/jS;)V

    iput-object v0, p0, Lorg/jshybugger/kq;->z:Lorg/jshybugger/jR;

    .line 542
    new-instance v0, Lorg/jshybugger/ku;

    sget-object v1, Lorg/jshybugger/jS;->d:Lorg/jshybugger/jS;

    invoke-direct {v0, p0, p0, v1}, Lorg/jshybugger/ku;-><init>(Lorg/jshybugger/kq;Lorg/jshybugger/kd;Lorg/jshybugger/jS;)V

    iput-object v0, p0, Lorg/jshybugger/kq;->A:Lorg/jshybugger/jR;

    .line 584
    new-instance v0, Lorg/jshybugger/kv;

    sget-object v1, Lorg/jshybugger/jS;->b:Lorg/jshybugger/jS;

    invoke-direct {v0, p0, p0, v1}, Lorg/jshybugger/kv;-><init>(Lorg/jshybugger/kq;Lorg/jshybugger/kd;Lorg/jshybugger/jS;)V

    iput-object v0, p0, Lorg/jshybugger/kq;->B:Lorg/jshybugger/jR;

    .line 777
    new-instance v0, Lorg/jshybugger/kx;

    invoke-direct {v0, p0}, Lorg/jshybugger/kx;-><init>(Lorg/jshybugger/kq;)V

    iput-object v0, p0, Lorg/jshybugger/kq;->C:Lorg/jshybugger/kj;

    .line 789
    new-instance v0, Lorg/jshybugger/ky;

    invoke-direct {v0, p0}, Lorg/jshybugger/ky;-><init>(Lorg/jshybugger/kq;)V

    iput-object v0, p0, Lorg/jshybugger/kq;->D:Lorg/jshybugger/kn;

    .line 801
    new-instance v0, Lorg/jshybugger/kz;

    invoke-direct {v0, p0}, Lorg/jshybugger/kz;-><init>(Lorg/jshybugger/kq;)V

    iput-object v0, p0, Lorg/jshybugger/kq;->E:Lorg/jshybugger/kk;

    .line 813
    new-instance v0, Lorg/jshybugger/kA;

    invoke-direct {v0, p0}, Lorg/jshybugger/kA;-><init>(Lorg/jshybugger/kq;)V

    iput-object v0, p0, Lorg/jshybugger/kq;->F:Lorg/jshybugger/km;

    .line 153
    iput-object p2, p0, Lorg/jshybugger/kq;->n:Lorg/jshybugger/jG;

    .line 154
    iput-object p3, p0, Lorg/jshybugger/kq;->r:Ljava/lang/String;

    .line 155
    iput-object p4, p0, Lorg/jshybugger/kq;->s:Lorg/jshybugger/js;

    .line 156
    iput-object p5, p0, Lorg/jshybugger/kq;->t:Ljava/util/Queue;

    .line 157
    invoke-direct {p0}, Lorg/jshybugger/kq;->i()V

    .line 158
    return-void
.end method

.method static a(Lorg/jshybugger/jT;Lorg/jshybugger/jG;Ljava/lang/String;Lorg/jshybugger/dU;)Lorg/jshybugger/kq;
    .registers 10

    .prologue
    .line 134
    new-instance v5, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 135
    invoke-virtual {p0}, Lorg/jshybugger/jT;->f()Lorg/jshybugger/ju;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_e

    .line 138
    invoke-virtual {v0, p3, v5}, Lorg/jshybugger/ju;->a(Lorg/jshybugger/dU;Ljava/util/Queue;)V

    .line 141
    :cond_e
    new-instance v0, Lorg/jshybugger/kq;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jshybugger/js;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/jshybugger/kq;-><init>(Lorg/jshybugger/jT;Lorg/jshybugger/jG;Ljava/lang/String;Lorg/jshybugger/js;Ljava/util/Queue;)V

    return-object v0
.end method

.method private a(Lorg/jshybugger/dU;)V
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 450
    iget-object v2, p0, Lorg/jshybugger/kq;->c:Lorg/jshybugger/kp;

    const-string v3, "Starting new connection to: {}"

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/jshybugger/kq;->b:Ljava/net/InetSocketAddress;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/jshybugger/kp;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    iput-object p1, p0, Lorg/jshybugger/kq;->m:Lorg/jshybugger/dU;

    .line 454
    new-instance v2, Lorg/jshybugger/jN;

    iget-object v3, p0, Lorg/jshybugger/kq;->n:Lorg/jshybugger/jG;

    iget-object v4, p0, Lorg/jshybugger/kq;->v:Ljava/lang/Object;

    invoke-direct {v2, v3, p0, v4}, Lorg/jshybugger/jN;-><init>(Lorg/jshybugger/jG;Lorg/jshybugger/kq;Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/jshybugger/kq;->z:Lorg/jshybugger/jR;

    invoke-virtual {v2, v3}, Lorg/jshybugger/jN;->a(Lorg/jshybugger/jR;)Lorg/jshybugger/jN;

    move-result-object v2

    iput-object v2, p0, Lorg/jshybugger/kq;->u:Lorg/jshybugger/jN;

    iget-object v2, p0, Lorg/jshybugger/kq;->s:Lorg/jshybugger/js;

    if-eqz v2, :cond_28

    iget-object v2, p0, Lorg/jshybugger/kq;->s:Lorg/jshybugger/js;

    :cond_28
    iget-object v2, p0, Lorg/jshybugger/kq;->m:Lorg/jshybugger/dU;

    invoke-static {v2}, Lorg/jshybugger/kD;->c(Lorg/jshybugger/dN;)Z

    move-result v2

    if-eqz v2, :cond_5c

    iget-object v2, p0, Lorg/jshybugger/kq;->d:Lorg/jshybugger/jT;

    invoke-virtual {v2}, Lorg/jshybugger/jT;->g()Lorg/jshybugger/jC;

    move-result-object v2

    if-eqz v2, :cond_62

    :goto_38
    if-eqz v0, :cond_64

    iget-object v0, p0, Lorg/jshybugger/kq;->u:Lorg/jshybugger/jN;

    iget-object v1, p0, Lorg/jshybugger/kq;->o:Lorg/jshybugger/kq;

    invoke-interface {v2}, Lorg/jshybugger/jC;->a()Ljavax/net/ssl/SSLEngine;

    move-result-object v2

    new-instance v3, Lorg/jshybugger/kf;

    sget-object v4, Lorg/jshybugger/jS;->b:Lorg/jshybugger/jS;

    invoke-direct {v3, v1, v1, v4, v2}, Lorg/jshybugger/kf;-><init>(Lorg/jshybugger/kd;Lorg/jshybugger/kd;Lorg/jshybugger/jS;Ljavax/net/ssl/SSLEngine;)V

    invoke-virtual {v0, v3}, Lorg/jshybugger/jN;->a(Lorg/jshybugger/jR;)Lorg/jshybugger/jN;

    move-result-object v0

    iget-object v1, p0, Lorg/jshybugger/kq;->n:Lorg/jshybugger/jG;

    iget-object v1, v1, Lorg/jshybugger/jG;->b:Lorg/jshybugger/jR;

    invoke-virtual {v0, v1}, Lorg/jshybugger/jN;->a(Lorg/jshybugger/jR;)Lorg/jshybugger/jN;

    move-result-object v0

    iget-object v1, p0, Lorg/jshybugger/kq;->o:Lorg/jshybugger/kq;

    iget-object v1, v1, Lorg/jshybugger/kq;->B:Lorg/jshybugger/jR;

    invoke-virtual {v0, v1}, Lorg/jshybugger/jN;->a(Lorg/jshybugger/jR;)Lorg/jshybugger/jN;

    .line 455
    :cond_5c
    :goto_5c
    iget-object v0, p0, Lorg/jshybugger/kq;->u:Lorg/jshybugger/jN;

    invoke-virtual {v0}, Lorg/jshybugger/jN;->a()V

    .line 456
    return-void

    :cond_62
    move v0, v1

    .line 454
    goto :goto_38

    :cond_64
    invoke-virtual {p0}, Lorg/jshybugger/kq;->e()Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lorg/jshybugger/kq;->u:Lorg/jshybugger/jN;

    iget-object v1, p0, Lorg/jshybugger/kq;->o:Lorg/jshybugger/kq;

    iget-object v1, v1, Lorg/jshybugger/kq;->A:Lorg/jshybugger/jR;

    invoke-virtual {v0, v1}, Lorg/jshybugger/jN;->a(Lorg/jshybugger/jR;)Lorg/jshybugger/jN;

    :cond_73
    iget-object v0, p0, Lorg/jshybugger/kq;->u:Lorg/jshybugger/jN;

    iget-object v1, p0, Lorg/jshybugger/kq;->o:Lorg/jshybugger/kq;

    iget-object v1, v1, Lorg/jshybugger/kq;->k:Lorg/jshybugger/jR;

    invoke-virtual {v0, v1}, Lorg/jshybugger/jN;->a(Lorg/jshybugger/jR;)Lorg/jshybugger/jN;

    move-result-object v0

    iget-object v1, p0, Lorg/jshybugger/kq;->n:Lorg/jshybugger/jG;

    iget-object v1, v1, Lorg/jshybugger/jG;->b:Lorg/jshybugger/jR;

    invoke-virtual {v0, v1}, Lorg/jshybugger/jN;->a(Lorg/jshybugger/jR;)Lorg/jshybugger/jN;

    move-result-object v0

    iget-object v1, p0, Lorg/jshybugger/kq;->n:Lorg/jshybugger/jG;

    iget-object v1, v1, Lorg/jshybugger/jG;->k:Lorg/jshybugger/jR;

    invoke-virtual {v0, v1}, Lorg/jshybugger/jN;->a(Lorg/jshybugger/jR;)Lorg/jshybugger/jN;

    goto :goto_5c
.end method

.method static synthetic a(Lorg/jshybugger/kq;)V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 66
    iget-object v0, p0, Lorg/jshybugger/kq;->c:Lorg/jshybugger/kp;

    const-string v1, "Remembering the current request."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/jshybugger/kp;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jshybugger/kq;->w:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lorg/jshybugger/kq;->w:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/dU;

    iput-object v0, p0, Lorg/jshybugger/kq;->x:Lorg/jshybugger/dU;

    iget-object v0, p0, Lorg/jshybugger/kq;->x:Lorg/jshybugger/dU;

    if-nez v0, :cond_29

    iget-object v0, p0, Lorg/jshybugger/kq;->c:Lorg/jshybugger/kp;

    const-string v1, "Got null HTTP request object."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/jshybugger/kp;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_29
    :goto_29
    return-void

    :cond_2a
    iget-object v0, p0, Lorg/jshybugger/kq;->c:Lorg/jshybugger/kp;

    const-string v1, "Request queue is empty!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/jshybugger/kp;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_29
.end method

.method static synthetic a(Lorg/jshybugger/kq;Lorg/jshybugger/aJ;Lorg/jshybugger/dU;)V
    .registers 8

    .prologue
    const/16 v4, 0x4000

    const/4 v3, 0x0

    .line 66
    const-string v0, "bytesReadMonitor"

    iget-object v1, p0, Lorg/jshybugger/kq;->C:Lorg/jshybugger/kj;

    invoke-interface {p1, v0, v1}, Lorg/jshybugger/aJ;->b(Ljava/lang/String;Lorg/jshybugger/at;)Lorg/jshybugger/aJ;

    const-string v0, "decoder"

    new-instance v1, Lorg/jshybugger/kC;

    const/16 v2, 0x2000

    invoke-direct {v1, p0, v2, v4, v4}, Lorg/jshybugger/kC;-><init>(Lorg/jshybugger/kq;III)V

    invoke-interface {p1, v0, v1}, Lorg/jshybugger/aJ;->b(Ljava/lang/String;Lorg/jshybugger/at;)Lorg/jshybugger/aJ;

    const-string v0, "responseReadMonitor"

    iget-object v1, p0, Lorg/jshybugger/kq;->D:Lorg/jshybugger/kn;

    invoke-interface {p1, v0, v1}, Lorg/jshybugger/aJ;->b(Ljava/lang/String;Lorg/jshybugger/at;)Lorg/jshybugger/aJ;

    iget-object v0, p0, Lorg/jshybugger/kq;->d:Lorg/jshybugger/jT;

    invoke-virtual {v0}, Lorg/jshybugger/jT;->g()Lorg/jshybugger/jC;

    move-result-object v0

    if-nez v0, :cond_2b

    invoke-static {p2}, Lorg/jshybugger/kD;->c(Lorg/jshybugger/dN;)Z

    move-result v0

    if-nez v0, :cond_3a

    :cond_2b
    iget-object v0, p0, Lorg/jshybugger/kq;->d:Lorg/jshybugger/jT;

    invoke-virtual {v0}, Lorg/jshybugger/jT;->i()Lorg/jshybugger/jz;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/jz;->a()I

    move-result v0

    if-lez v0, :cond_3a

    invoke-static {p1, v0}, Lorg/jshybugger/kq;->a(Lorg/jshybugger/aJ;I)V

    :cond_3a
    const-string v0, "bytesWrittenMonitor"

    iget-object v1, p0, Lorg/jshybugger/kq;->E:Lorg/jshybugger/kk;

    invoke-interface {p1, v0, v1}, Lorg/jshybugger/aJ;->b(Ljava/lang/String;Lorg/jshybugger/at;)Lorg/jshybugger/aJ;

    const-string v0, "encoder"

    new-instance v1, Lorg/jshybugger/dW;

    invoke-direct {v1}, Lorg/jshybugger/dW;-><init>()V

    invoke-interface {p1, v0, v1}, Lorg/jshybugger/aJ;->b(Ljava/lang/String;Lorg/jshybugger/at;)Lorg/jshybugger/aJ;

    const-string v0, "requestWrittenMonitor"

    iget-object v1, p0, Lorg/jshybugger/kq;->F:Lorg/jshybugger/km;

    invoke-interface {p1, v0, v1}, Lorg/jshybugger/aJ;->b(Ljava/lang/String;Lorg/jshybugger/at;)Lorg/jshybugger/aJ;

    const-string v0, "idle"

    new-instance v1, Lorg/jshybugger/eW;

    iget-object v2, p0, Lorg/jshybugger/kq;->d:Lorg/jshybugger/jT;

    invoke-virtual {v2}, Lorg/jshybugger/jT;->e()I

    move-result v2

    invoke-direct {v1, v3, v3, v2}, Lorg/jshybugger/eW;-><init>(III)V

    invoke-interface {p1, v0, v1}, Lorg/jshybugger/aJ;->b(Ljava/lang/String;Lorg/jshybugger/at;)Lorg/jshybugger/aJ;

    const-string v0, "handler"

    invoke-interface {p1, v0, p0}, Lorg/jshybugger/aJ;->b(Ljava/lang/String;Lorg/jshybugger/at;)Lorg/jshybugger/aJ;

    return-void
.end method

.method static synthetic b(Lorg/jshybugger/kq;)Lorg/jshybugger/dU;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/jshybugger/kq;->x:Lorg/jshybugger/dU;

    return-object v0
.end method

.method static synthetic c(Lorg/jshybugger/kq;)Lorg/jshybugger/jE;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/jshybugger/kq;->p:Lorg/jshybugger/jE;

    return-object v0
.end method

.method private c(Lorg/jshybugger/dN;)V
    .registers 8

    .prologue
    .line 439
    iget-object v0, p0, Lorg/jshybugger/kq;->n:Lorg/jshybugger/jG;

    iget-object v2, p0, Lorg/jshybugger/kq;->l:Lorg/jshybugger/jx;

    iget-object v3, p0, Lorg/jshybugger/kq;->x:Lorg/jshybugger/dU;

    iget-object v4, p0, Lorg/jshybugger/kq;->y:Lorg/jshybugger/dX;

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/jshybugger/jG;->a(Lorg/jshybugger/kq;Lorg/jshybugger/jx;Lorg/jshybugger/dU;Lorg/jshybugger/dX;Lorg/jshybugger/dN;)V

    .line 441
    return-void
.end method

.method static synthetic d(Lorg/jshybugger/kq;)Lorg/jshybugger/dU;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/jshybugger/kq;->m:Lorg/jshybugger/dU;

    return-object v0
.end method

.method static synthetic e(Lorg/jshybugger/kq;)Ljava/net/InetSocketAddress;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/jshybugger/kq;->q:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method static synthetic f(Lorg/jshybugger/kq;)Ljava/net/InetSocketAddress;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/jshybugger/kq;->b:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method static synthetic g(Lorg/jshybugger/kq;)Lorg/jshybugger/js;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/jshybugger/kq;->s:Lorg/jshybugger/js;

    return-object v0
.end method

.method static synthetic h(Lorg/jshybugger/kq;)Lorg/jshybugger/jG;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/jshybugger/kq;->n:Lorg/jshybugger/jG;

    return-object v0
.end method

.method private i()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 656
    iget-object v0, p0, Lorg/jshybugger/kq;->s:Lorg/jshybugger/js;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lorg/jshybugger/kq;->s:Lorg/jshybugger/js;

    sget-object v1, Lorg/jshybugger/jt;->a:Lorg/jshybugger/js;

    if-eq v0, v1, :cond_20

    .line 658
    iget-object v0, p0, Lorg/jshybugger/kq;->s:Lorg/jshybugger/js;

    invoke-interface {v0}, Lorg/jshybugger/js;->b()Lorg/jshybugger/jE;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/kq;->p:Lorg/jshybugger/jE;

    .line 659
    iget-object v0, p0, Lorg/jshybugger/kq;->s:Lorg/jshybugger/js;

    invoke-interface {v0}, Lorg/jshybugger/js;->a()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/kq;->b:Ljava/net/InetSocketAddress;

    .line 660
    iget-object v0, p0, Lorg/jshybugger/kq;->s:Lorg/jshybugger/js;

    iput-object v4, p0, Lorg/jshybugger/kq;->q:Ljava/net/InetSocketAddress;

    .line 666
    :goto_1f
    return-void

    .line 662
    :cond_20
    sget-object v0, Lorg/jshybugger/jE;->a:Lorg/jshybugger/jE;

    iput-object v0, p0, Lorg/jshybugger/kq;->p:Lorg/jshybugger/jE;

    .line 663
    iget-object v1, p0, Lorg/jshybugger/kq;->r:Ljava/lang/String;

    iget-object v2, p0, Lorg/jshybugger/kq;->d:Lorg/jshybugger/jT;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_53

    const-string v0, ":"

    invoke-static {v1, v0}, Lorg/jshybugger/hA;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ":"

    invoke-static {v1, v3}, Lorg/jshybugger/hA;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_40
    invoke-virtual {v2}, Lorg/jshybugger/jT;->c()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-virtual {v2}, Lorg/jshybugger/jT;->c()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/littleshoot/dnssec4j/VerifiedAddressFactory;->newInetSocketAddress(Ljava/lang/String;IZ)Ljava/net/InetSocketAddress;

    move-result-object v0

    :goto_4e
    iput-object v0, p0, Lorg/jshybugger/kq;->b:Ljava/net/InetSocketAddress;

    .line 664
    iput-object v4, p0, Lorg/jshybugger/kq;->q:Ljava/net/InetSocketAddress;

    goto :goto_1f

    .line 663
    :cond_53
    const/16 v0, 0x50

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    goto :goto_40

    :cond_59
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v2, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    goto :goto_4e
.end method


# virtual methods
.method protected final synthetic a(Lorg/jshybugger/dN;)Lorg/jshybugger/jS;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 65
    check-cast p1, Lorg/jshybugger/dX;

    iget-object v0, p0, Lorg/jshybugger/kq;->c:Lorg/jshybugger/kp;

    const-string v1, "Received raw response: {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/jshybugger/kp;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jshybugger/kq;->c:Lorg/jshybugger/kp;

    const-string v1, "Remembering the current response."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/jshybugger/kp;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/jshybugger/kD;->a(Lorg/jshybugger/dX;)Lorg/jshybugger/dX;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/kq;->y:Lorg/jshybugger/dX;

    invoke-direct {p0, p1}, Lorg/jshybugger/kq;->c(Lorg/jshybugger/dN;)V

    invoke-static {p1}, Lorg/jshybugger/kD;->b(Lorg/jshybugger/dN;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lorg/jshybugger/jS;->g:Lorg/jshybugger/jS;

    :goto_29
    return-object v0

    :cond_2a
    sget-object v0, Lorg/jshybugger/jS;->f:Lorg/jshybugger/jS;

    goto :goto_29
.end method

.method protected final a(Ljava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 335
    const-string v0, "Caught exception on proxy -> web connection"

    .line 336
    if-eqz p1, :cond_1b

    .line 338
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 339
    instance-of v2, p1, Ljava/net/ConnectException;

    if-nez v2, :cond_1b

    .line 340
    if-eqz v1, :cond_1b

    .line 342
    const-string v2, "Connection reset by peer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 343
    const-string v2, "event executor terminated"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 345
    :cond_1b
    iget-object v1, p0, Lorg/jshybugger/kq;->c:Lorg/jshybugger/kp;

    iget-object v2, v1, Lorg/jshybugger/kp;->a:Lorg/jshybugger/nS;

    invoke-interface {v2}, Lorg/jshybugger/nS;->b()Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v1, v1, Lorg/jshybugger/kp;->a:Lorg/jshybugger/nS;

    invoke-interface {v1, v0, p1}, Lorg/jshybugger/nS;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 351
    :cond_2a
    sget-object v0, Lorg/jshybugger/jS;->i:Lorg/jshybugger/jS;

    invoke-virtual {p0, v0}, Lorg/jshybugger/kq;->a(Lorg/jshybugger/jS;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 352
    iget-object v0, p0, Lorg/jshybugger/kq;->c:Lorg/jshybugger/kp;

    const-string v1, "Disconnecting open connection"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lorg/jshybugger/kp;->a:Lorg/jshybugger/nS;

    invoke-interface {v3}, Lorg/jshybugger/nS;->b()Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v0, v0, Lorg/jshybugger/kp;->a:Lorg/jshybugger/nS;

    invoke-interface {v0, v1, v2}, Lorg/jshybugger/nS;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    :cond_46
    invoke-virtual {p0}, Lorg/jshybugger/kq;->m()Lorg/jshybugger/fN;

    .line 359
    :cond_49
    return-void
.end method

.method protected final a(Lorg/jshybugger/H;)V
    .registers 3

    .prologue
    .line 194
    iget-object v0, p0, Lorg/jshybugger/kq;->n:Lorg/jshybugger/jG;

    invoke-virtual {v0, p1}, Lorg/jshybugger/jG;->c(Ljava/lang/Object;)V

    .line 195
    return-void
.end method

.method protected final a(Lorg/jshybugger/dw;)V
    .registers 2

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lorg/jshybugger/kq;->c(Lorg/jshybugger/dN;)V

    .line 190
    return-void
.end method

.method final a(Z)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 716
    sget-object v0, Lorg/jshybugger/jS;->f:Lorg/jshybugger/jS;

    iput-object v0, p0, Lorg/jshybugger/kd;->h:Lorg/jshybugger/jS;

    .line 717
    iget-object v0, p0, Lorg/jshybugger/kq;->s:Lorg/jshybugger/js;

    if-eqz v0, :cond_c

    .line 720
    :try_start_a
    iget-object v0, p0, Lorg/jshybugger/kq;->s:Lorg/jshybugger/js;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_c} :catch_26

    .line 725
    :cond_c
    :goto_c
    iget-object v0, p0, Lorg/jshybugger/kq;->n:Lorg/jshybugger/jG;

    invoke-virtual {v0, p0, p1}, Lorg/jshybugger/jG;->a(Lorg/jshybugger/kq;Z)V

    .line 728
    if-eqz p1, :cond_2f

    .line 729
    iget-object v0, p0, Lorg/jshybugger/kq;->c:Lorg/jshybugger/kp;

    const-string v1, "Writing initial request: {}"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/jshybugger/kq;->m:Lorg/jshybugger/dU;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/jshybugger/kp;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 730
    iget-object v0, p0, Lorg/jshybugger/kq;->m:Lorg/jshybugger/dU;

    invoke-virtual {p0, v0}, Lorg/jshybugger/kq;->c(Ljava/lang/Object;)V

    .line 734
    :goto_25
    return-void

    .line 721
    :catch_26
    move-exception v0

    .line 722
    iget-object v1, p0, Lorg/jshybugger/kq;->c:Lorg/jshybugger/kp;

    const-string v2, "Unable to record connectionSucceeded"

    invoke-virtual {v1, v2, v0}, Lorg/jshybugger/kp;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 732
    :cond_2f
    iget-object v0, p0, Lorg/jshybugger/kq;->c:Lorg/jshybugger/kp;

    const-string v1, "Dropping initial request: {}"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/jshybugger/kq;->m:Lorg/jshybugger/dU;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/jshybugger/kp;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_25
.end method

.method protected final b()V
    .registers 2

    .prologue
    .line 315
    invoke-super {p0}, Lorg/jshybugger/kd;->b()V

    .line 316
    iget-object v0, p0, Lorg/jshybugger/kq;->n:Lorg/jshybugger/jG;

    invoke-virtual {v0}, Lorg/jshybugger/jG;->b()V

    .line 317
    return-void
.end method

.method protected final b(Ljava/lang/Object;)V
    .registers 6

    .prologue
    .line 166
    iget-object v0, p0, Lorg/jshybugger/kd;->h:Lorg/jshybugger/jS;

    invoke-virtual {v0}, Lorg/jshybugger/jS;->b()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 167
    iget-object v0, p0, Lorg/jshybugger/kq;->c:Lorg/jshybugger/kp;

    const-string v1, "In the middle of connecting, forwarding message to connection flow: {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/jshybugger/kp;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lorg/jshybugger/kq;->u:Lorg/jshybugger/jN;

    iget-object v1, v0, Lorg/jshybugger/jN;->c:Lorg/jshybugger/jR;

    if-eqz v1, :cond_20

    iget-object v1, v0, Lorg/jshybugger/jN;->c:Lorg/jshybugger/jR;

    invoke-virtual {v1, v0, p1}, Lorg/jshybugger/jR;->a(Lorg/jshybugger/jN;Ljava/lang/Object;)V

    .line 174
    :cond_20
    :goto_20
    return-void

    .line 172
    :cond_21
    invoke-super {p0, p1}, Lorg/jshybugger/kd;->b(Ljava/lang/Object;)V

    goto :goto_20
.end method

.method protected final b(Lorg/jshybugger/dN;)V
    .registers 4

    .prologue
    .line 286
    iget-object v0, p0, Lorg/jshybugger/kq;->s:Lorg/jshybugger/js;

    if-eqz v0, :cond_6

    .line 287
    iget-object v0, p0, Lorg/jshybugger/kq;->s:Lorg/jshybugger/js;

    .line 289
    :cond_6
    instance-of v0, p1, Lorg/jshybugger/dU;

    if-eqz v0, :cond_12

    move-object v0, p1

    .line 290
    check-cast v0, Lorg/jshybugger/dU;

    .line 292
    iget-object v1, p0, Lorg/jshybugger/kq;->w:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_12
    invoke-super {p0, p1}, Lorg/jshybugger/kd;->b(Lorg/jshybugger/dN;)V

    .line 295
    return-void
.end method

.method protected final b(Ljava/lang/Throwable;)Z
    .registers 5

    .prologue
    .line 631
    iget-object v0, p0, Lorg/jshybugger/kq;->s:Lorg/jshybugger/js;

    if-eqz v0, :cond_6

    .line 634
    :try_start_4
    iget-object v0, p0, Lorg/jshybugger/kq;->s:Lorg/jshybugger/js;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6} :catch_1e

    .line 639
    :cond_6
    :goto_6
    iget-object v0, p0, Lorg/jshybugger/kq;->t:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/js;

    iput-object v0, p0, Lorg/jshybugger/kq;->s:Lorg/jshybugger/js;

    .line 640
    iget-object v0, p0, Lorg/jshybugger/kq;->s:Lorg/jshybugger/js;

    if-eqz v0, :cond_27

    .line 641
    invoke-direct {p0}, Lorg/jshybugger/kq;->i()V

    .line 642
    iget-object v0, p0, Lorg/jshybugger/kq;->m:Lorg/jshybugger/dU;

    invoke-direct {p0, v0}, Lorg/jshybugger/kq;->a(Lorg/jshybugger/dU;)V

    .line 643
    const/4 v0, 0x1

    .line 645
    :goto_1d
    return v0

    .line 635
    :catch_1e
    move-exception v0

    .line 636
    iget-object v1, p0, Lorg/jshybugger/kq;->c:Lorg/jshybugger/kp;

    const-string v2, "Unable to record connectionFailed"

    invoke-virtual {v1, v2, v0}, Lorg/jshybugger/kp;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 645
    :cond_27
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method protected final c()V
    .registers 4

    .prologue
    .line 321
    invoke-super {p0}, Lorg/jshybugger/kd;->c()V

    .line 322
    iget-object v0, p0, Lorg/jshybugger/kq;->s:Lorg/jshybugger/js;

    if-eqz v0, :cond_9

    .line 325
    :try_start_7
    iget-object v0, p0, Lorg/jshybugger/kq;->s:Lorg/jshybugger/js;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_9} :catch_f

    .line 330
    :cond_9
    :goto_9
    iget-object v0, p0, Lorg/jshybugger/kq;->n:Lorg/jshybugger/jG;

    invoke-virtual {v0}, Lorg/jshybugger/jG;->e()V

    .line 331
    return-void

    .line 326
    :catch_f
    move-exception v0

    .line 327
    iget-object v1, p0, Lorg/jshybugger/kq;->c:Lorg/jshybugger/kp;

    const-string v2, "Unable to record connectionFailed"

    invoke-virtual {v1, v2, v0}, Lorg/jshybugger/kp;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method final c(Ljava/lang/Object;)V
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 252
    iget-object v0, p0, Lorg/jshybugger/kq;->c:Lorg/jshybugger/kp;

    const-string v1, "Requested write of {}"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/jshybugger/kp;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    instance-of v0, p1, Lorg/jshybugger/fp;

    if-eqz v0, :cond_20

    .line 255
    iget-object v0, p0, Lorg/jshybugger/kq;->c:Lorg/jshybugger/kp;

    const-string v1, "Retaining reference counted message"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/jshybugger/kp;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, p1

    .line 256
    check-cast v0, Lorg/jshybugger/fp;

    invoke-interface {v0}, Lorg/jshybugger/fp;->w()Lorg/jshybugger/fp;

    .line 259
    :cond_20
    sget-object v0, Lorg/jshybugger/jS;->i:Lorg/jshybugger/jS;

    invoke-virtual {p0, v0}, Lorg/jshybugger/kq;->a(Lorg/jshybugger/jS;)Z

    move-result v0

    if-eqz v0, :cond_3b

    instance-of v0, p1, Lorg/jshybugger/dU;

    if-eqz v0, :cond_3b

    .line 260
    iget-object v0, p0, Lorg/jshybugger/kq;->c:Lorg/jshybugger/kp;

    const-string v1, "Currently disconnected, connect and then write the message"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/jshybugger/kp;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    check-cast p1, Lorg/jshybugger/dU;

    invoke-direct {p0, p1}, Lorg/jshybugger/kq;->a(Lorg/jshybugger/dU;)V

    .line 282
    :goto_3a
    return-void

    .line 263
    :cond_3b
    iget-object v1, p0, Lorg/jshybugger/kq;->v:Ljava/lang/Object;

    monitor-enter v1

    .line 264
    :try_start_3e
    iget-object v0, p0, Lorg/jshybugger/kd;->h:Lorg/jshybugger/jS;

    invoke-virtual {v0}, Lorg/jshybugger/jS;->b()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 265
    iget-object v0, p0, Lorg/jshybugger/kq;->c:Lorg/jshybugger/kp;

    const-string v2, "Attempted to write while still in the process of connecting, waiting for connection."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/jshybugger/kp;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    iget-object v0, p0, Lorg/jshybugger/kq;->n:Lorg/jshybugger/jG;

    invoke-virtual {v0}, Lorg/jshybugger/jG;->p()V
    :try_end_55
    .catchall {:try_start_3e .. :try_end_55} :catchall_70

    .line 268
    :try_start_55
    iget-object v0, p0, Lorg/jshybugger/kq;->v:Ljava/lang/Object;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_5c
    .catch Ljava/lang/InterruptedException; {:try_start_55 .. :try_end_5c} :catch_73
    .catchall {:try_start_55 .. :try_end_5c} :catchall_70

    .line 272
    :goto_5c
    :try_start_5c
    sget-object v0, Lorg/jshybugger/jS;->i:Lorg/jshybugger/jS;

    invoke-virtual {p0, v0}, Lorg/jshybugger/kq;->a(Lorg/jshybugger/jS;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 273
    iget-object v0, p0, Lorg/jshybugger/kq;->c:Lorg/jshybugger/kp;

    const-string v2, "Connection failed while we were waiting for it, don\'t write"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/jshybugger/kp;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_5c .. :try_end_6f} :catchall_70

    goto :goto_3a

    .line 277
    :catchall_70
    move-exception v0

    monitor-exit v1

    throw v0

    .line 270
    :catch_73
    move-exception v0

    :try_start_74
    iget-object v0, p0, Lorg/jshybugger/kq;->c:Lorg/jshybugger/kp;

    const-string v2, "Interrupted while waiting for connect monitor"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/jshybugger/kp;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7e
    .catchall {:try_start_74 .. :try_end_7e} :catchall_70

    goto :goto_5c

    .line 277
    :cond_7f
    monitor-exit v1

    .line 279
    iget-object v0, p0, Lorg/jshybugger/kq;->c:Lorg/jshybugger/kp;

    const-string v1, "Using existing connection to: {}"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/jshybugger/kq;->b:Ljava/net/InetSocketAddress;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/jshybugger/kp;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    invoke-virtual {p0, p1}, Lorg/jshybugger/kq;->d(Ljava/lang/Object;)V

    goto :goto_3a
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Lorg/jshybugger/kq;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic e(Lorg/jshybugger/aw;)V
    .registers 2

    .prologue
    .line 65
    invoke-super {p0, p1}, Lorg/jshybugger/kd;->e(Lorg/jshybugger/aw;)V

    return-void
.end method

.method public final e()Z
    .registers 2

    .prologue
    .line 377
    iget-object v0, p0, Lorg/jshybugger/kq;->s:Lorg/jshybugger/js;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lorg/jshybugger/kq;->s:Lorg/jshybugger/js;

    invoke-interface {v0}, Lorg/jshybugger/js;->a()Ljava/net/InetSocketAddress;

    move-result-object v0

    goto :goto_5

    :cond_10
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected final f()V
    .registers 2

    .prologue
    .line 303
    invoke-super {p0}, Lorg/jshybugger/kd;->f()V

    .line 304
    iget-object v0, p0, Lorg/jshybugger/kq;->n:Lorg/jshybugger/jG;

    invoke-virtual {v0, p0}, Lorg/jshybugger/jG;->a(Lorg/jshybugger/kq;)V

    .line 305
    return-void
.end method

.method protected final g()V
    .registers 2

    .prologue
    .line 309
    invoke-super {p0}, Lorg/jshybugger/kd;->g()V

    .line 310
    iget-object v0, p0, Lorg/jshybugger/kq;->n:Lorg/jshybugger/jG;

    invoke-virtual {v0}, Lorg/jshybugger/jG;->h()V

    .line 311
    return-void
.end method

.method public final h()Lorg/jshybugger/js;
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, Lorg/jshybugger/kq;->s:Lorg/jshybugger/js;

    return-object v0
.end method

.method public final bridge synthetic h(Lorg/jshybugger/aw;)V
    .registers 2

    .prologue
    .line 65
    invoke-super {p0, p1}, Lorg/jshybugger/kd;->h(Lorg/jshybugger/aw;)V

    return-void
.end method

.method public final bridge synthetic j()Ljavax/net/ssl/SSLEngine;
    .registers 2

    .prologue
    .line 65
    invoke-super {p0}, Lorg/jshybugger/kd;->j()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic k()Z
    .registers 2

    .prologue
    .line 65
    invoke-super {p0}, Lorg/jshybugger/kd;->k()Z

    move-result v0

    return v0
.end method
