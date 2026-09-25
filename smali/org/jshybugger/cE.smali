.class public abstract Lorg/jshybugger/ce;
.super Lorg/jshybugger/Y;
.source "AbstractNioChannel.java"


# static fields
.field private static final e:Lorg/jshybugger/gX;

.field private static synthetic l:Z


# instance fields
.field protected final d:I

.field private final f:Ljava/nio/channels/SelectableChannel;

.field private volatile g:Ljava/nio/channels/SelectionKey;

.field private volatile h:Z

.field private i:Lorg/jshybugger/aM;

.field private j:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private k:Ljava/net/SocketAddress;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-class v0, Lorg/jshybugger/ce;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jshybugger/ce;->l:Z

    .line 43
    const-class v0, Lorg/jshybugger/ce;

    invoke-static {v0}, Lorg/jshybugger/gY;->a(Ljava/lang/Class;)Lorg/jshybugger/gX;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/ce;->e:Lorg/jshybugger/gX;

    return-void

    .line 41
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected constructor <init>(Lorg/jshybugger/aj;Ljava/nio/channels/SelectableChannel;I)V
    .registers 8

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/jshybugger/Y;-><init>(Lorg/jshybugger/aj;)V

    .line 68
    iput-object p2, p0, Lorg/jshybugger/ce;->f:Ljava/nio/channels/SelectableChannel;

    .line 69
    iput p3, p0, Lorg/jshybugger/ce;->d:I

    .line 71
    const/4 v0, 0x0

    :try_start_8
    invoke-virtual {p2, v0}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_c

    .line 83
    return-void

    .line 72
    :catch_c
    move-exception v0

    .line 74
    :try_start_d
    invoke-virtual {p2}, Ljava/nio/channels/SelectableChannel;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_18

    .line 82
    :cond_10
    :goto_10
    new-instance v1, Lorg/jshybugger/an;

    const-string v2, "Failed to enter non-blocking mode."

    invoke-direct {v1, v2, v0}, Lorg/jshybugger/an;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 75
    :catch_18
    move-exception v1

    .line 76
    sget-object v2, Lorg/jshybugger/ce;->e:Lorg/jshybugger/gX;

    invoke-interface {v2}, Lorg/jshybugger/gX;->b()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 77
    sget-object v2, Lorg/jshybugger/ce;->e:Lorg/jshybugger/gX;

    const-string v3, "Failed to close a partially initialized socket."

    invoke-interface {v2, v3, v1}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method static synthetic a(Lorg/jshybugger/ce;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;
    .registers 2

    .prologue
    .line 41
    iput-object p1, p0, Lorg/jshybugger/ce;->k:Ljava/net/SocketAddress;

    return-object p1
.end method

.method static synthetic a(Lorg/jshybugger/ce;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .registers 2

    .prologue
    .line 41
    iput-object p1, p0, Lorg/jshybugger/ce;->j:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic a(Lorg/jshybugger/ce;)Lorg/jshybugger/aM;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lorg/jshybugger/ce;->i:Lorg/jshybugger/aM;

    return-object v0
.end method

.method static synthetic a(Lorg/jshybugger/ce;Lorg/jshybugger/aM;)Lorg/jshybugger/aM;
    .registers 2

    .prologue
    .line 41
    iput-object p1, p0, Lorg/jshybugger/ce;->i:Lorg/jshybugger/aM;

    return-object p1
.end method

.method static synthetic b(Lorg/jshybugger/ce;)Ljava/util/concurrent/ScheduledFuture;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lorg/jshybugger/ce;->j:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic c(Lorg/jshybugger/ce;)Ljava/net/SocketAddress;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lorg/jshybugger/ce;->k:Ljava/net/SocketAddress;

    return-object v0
.end method


# virtual methods
.method public final B()Z
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/jshybugger/ce;->f:Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public final F()Lorg/jshybugger/ci;
    .registers 2

    .prologue
    .line 93
    invoke-super {p0}, Lorg/jshybugger/Y;->n()Lorg/jshybugger/ak;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/ci;

    return-object v0
.end method

.method public G()Ljava/nio/channels/SelectableChannel;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lorg/jshybugger/ce;->f:Ljava/nio/channels/SelectableChannel;

    return-object v0
.end method

.method public final H()Lorg/jshybugger/cl;
    .registers 2

    .prologue
    .line 102
    invoke-super {p0}, Lorg/jshybugger/Y;->d()Lorg/jshybugger/bu;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/cl;

    return-object v0
.end method

.method protected final I()Ljava/nio/channels/SelectionKey;
    .registers 2

    .prologue
    .line 109
    sget-boolean v0, Lorg/jshybugger/ce;->l:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/jshybugger/ce;->g:Ljava/nio/channels/SelectionKey;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 110
    :cond_e
    iget-object v0, p0, Lorg/jshybugger/ce;->g:Ljava/nio/channels/SelectionKey;

    return-object v0
.end method

.method final J()V
    .registers 2

    .prologue
    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jshybugger/ce;->h:Z

    .line 125
    return-void
.end method

.method protected abstract K()V
.end method

.method protected abstract a(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z
.end method

.method protected final a(Lorg/jshybugger/bu;)Z
    .registers 3

    .prologue
    .line 277
    instance-of v0, p1, Lorg/jshybugger/cl;

    return v0
.end method

.method public final bridge synthetic d()Lorg/jshybugger/bu;
    .registers 2

    .prologue
    .line 41
    invoke-super {p0}, Lorg/jshybugger/Y;->d()Lorg/jshybugger/bu;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/cl;

    return-object v0
.end method

.method public final bridge synthetic n()Lorg/jshybugger/ak;
    .registers 2

    .prologue
    .line 41
    invoke-super {p0}, Lorg/jshybugger/Y;->n()Lorg/jshybugger/ak;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/ci;

    return-object v0
.end method

.method protected final t()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 282
    move v1, v0

    .line 285
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Lorg/jshybugger/ce;->G()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    invoke-super {p0}, Lorg/jshybugger/Y;->d()Lorg/jshybugger/bu;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/cl;

    iget-object v0, v0, Lorg/jshybugger/cl;->a:Ljava/nio/channels/Selector;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p0}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/ce;->g:Ljava/nio/channels/SelectionKey;
    :try_end_15
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_2 .. :try_end_15} :catch_16

    .line 286
    return-void

    .line 287
    :catch_16
    move-exception v0

    .line 288
    if-nez v1, :cond_25

    .line 291
    invoke-super {p0}, Lorg/jshybugger/Y;->d()Lorg/jshybugger/bu;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/cl;

    invoke-virtual {v0}, Lorg/jshybugger/cl;->i()V

    .line 292
    const/4 v0, 0x1

    move v1, v0

    goto :goto_2

    .line 296
    :cond_25
    throw v0
.end method

.method protected final w()V
    .registers 3

    .prologue
    .line 304
    invoke-super {p0}, Lorg/jshybugger/Y;->d()Lorg/jshybugger/bu;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/cl;

    invoke-virtual {p0}, Lorg/jshybugger/ce;->I()Ljava/nio/channels/SelectionKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jshybugger/cl;->a(Ljava/nio/channels/SelectionKey;)V

    .line 305
    return-void
.end method

.method protected final x()V
    .registers 4

    .prologue
    .line 309
    iget-boolean v0, p0, Lorg/jshybugger/ce;->h:Z

    if-eqz v0, :cond_5

    .line 322
    :cond_4
    :goto_4
    return-void

    .line 313
    :cond_5
    iget-object v0, p0, Lorg/jshybugger/ce;->g:Ljava/nio/channels/SelectionKey;

    .line 314
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 318
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    .line 319
    iget v2, p0, Lorg/jshybugger/ce;->d:I

    and-int/2addr v2, v1

    if-nez v2, :cond_4

    .line 320
    iget v2, p0, Lorg/jshybugger/ce;->d:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_4
.end method
