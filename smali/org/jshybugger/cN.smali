.class public final Lorg/jshybugger/cn;
.super Lorg/jshybugger/bA;
.source "NioEventLoopGroup.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jshybugger/cn;-><init>(I)V

    .line 37
    return-void
.end method

.method private constructor <init>(I)V
    .registers 4

    .prologue
    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jshybugger/cn;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 45
    return-void
.end method

.method private constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .registers 5

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/jshybugger/cn;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/nio/channels/spi/SelectorProvider;)V

    .line 53
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 6

    .prologue
    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lorg/jshybugger/bA;-><init>(ILjava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)V

    .line 62
    return-void
.end method


# virtual methods
.method protected final varargs a(Ljava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)Lorg/jshybugger/fK;
    .registers 5

    .prologue
    .line 87
    new-instance v1, Lorg/jshybugger/cl;

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/nio/channels/spi/SelectorProvider;

    invoke-direct {v1, p0, p1, v0}, Lorg/jshybugger/cl;-><init>(Lorg/jshybugger/cn;Ljava/util/concurrent/ThreadFactory;Ljava/nio/channels/spi/SelectorProvider;)V

    return-object v1
.end method

.method public final a(I)V
    .registers 5

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/jshybugger/cn;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/fK;

    .line 70
    check-cast v0, Lorg/jshybugger/cl;

    const/16 v2, 0x5a

    invoke-virtual {v0, v2}, Lorg/jshybugger/cl;->a(I)V

    goto :goto_8

    .line 72
    :cond_1c
    return-void
.end method
