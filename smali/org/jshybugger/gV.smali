.class public Lorg/jshybugger/gv;
.super Ljava/util/Random;
.source "ThreadLocalRandom.java"


# static fields
.field private static final a:Lorg/jshybugger/gX;

.field private static final b:Ljava/util/concurrent/atomic/AtomicLong;

.field private static volatile c:J

.field private static final f:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/jshybugger/gv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:J

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    const-class v0, Lorg/jshybugger/gv;

    invoke-static {v0}, Lorg/jshybugger/gY;->a(Ljava/lang/Class;)Lorg/jshybugger/gX;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/gv;->a:Lorg/jshybugger/gX;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lorg/jshybugger/gv;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 179
    new-instance v0, Lorg/jshybugger/gx;

    invoke-direct {v0}, Lorg/jshybugger/gx;-><init>()V

    sput-object v0, Lorg/jshybugger/gv;->f:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    .line 172
    invoke-static {}, Lorg/jshybugger/gv;->c()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jshybugger/gv;->e:Z

    .line 174
    return-void
.end method

.method public static a()Lorg/jshybugger/gv;
    .registers 1

    .prologue
    .line 192
    sget-object v0, Lorg/jshybugger/gv;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/gv;

    return-object v0
.end method

.method private static declared-synchronized b()J
    .registers 12

    .prologue
    const-wide/16 v10, 0x0

    .line 74
    const-class v4, Lorg/jshybugger/gv;

    monitor-enter v4

    :try_start_5
    sget-wide v2, Lorg/jshybugger/gv;->c:J

    .line 75
    cmp-long v0, v2, v10

    if-nez v0, :cond_15

    .line 77
    const-string v0, "io.netty.initialSeedUniquifier"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lorg/jshybugger/gu;->a(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lorg/jshybugger/gv;->c:J

    .line 82
    :cond_15
    cmp-long v0, v2, v10

    if-nez v0, :cond_73

    .line 85
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 86
    new-instance v0, Lorg/jshybugger/gw;

    const-string v5, "initialSeedUniquifierGenerator"

    invoke-direct {v0, v5, v1}, Lorg/jshybugger/gw;-><init>(Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    .line 93
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 96
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x3

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 99
    :cond_35
    :goto_35
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long v8, v6, v8

    .line 100
    cmp-long v0, v8, v10

    if-gtz v0, :cond_5f

    .line 101
    sget-object v0, Lorg/jshybugger/gv;->a:Lorg/jshybugger/gX;

    const-string v1, "Failed to get the secure random number from SecureRandom within {} seconds. Not enough entrophy?"

    const-wide/16 v6, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Lorg/jshybugger/gX;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    :goto_4c
    const-wide v0, 0x3255ecdc33bae119L    # 3.253008663204319E-66

    xor-long/2addr v0, v2

    .line 120
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->reverse(J)J

    move-result-wide v2

    xor-long/2addr v0, v2

    .line 122
    sput-wide v0, Lorg/jshybugger/gv;->c:J
    :try_end_5d
    .catchall {:try_start_5 .. :try_end_5d} :catchall_6e

    .line 125
    :goto_5d
    monitor-exit v4

    return-wide v0

    .line 108
    :cond_5f
    :try_start_5f
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v8, v9, v0}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 109
    if-eqz v0, :cond_35

    .line 110
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_6c
    .catch Ljava/lang/InterruptedException; {:try_start_5f .. :try_end_6c} :catch_71
    .catchall {:try_start_5f .. :try_end_6c} :catchall_6e

    move-result-wide v2

    goto :goto_4c

    .line 74
    :catchall_6e
    move-exception v0

    monitor-exit v4

    throw v0

    .line 116
    :catch_71
    move-exception v0

    goto :goto_35

    :cond_73
    move-wide v0, v2

    goto :goto_5d
.end method

.method private static c()J
    .registers 10

    .prologue
    const-wide/16 v8, 0x0

    .line 130
    :cond_2
    sget-object v0, Lorg/jshybugger/gv;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 131
    cmp-long v0, v2, v8

    if-eqz v0, :cond_42

    move-wide v0, v2

    .line 134
    :goto_d
    const-wide v4, 0x285d320ad33fdb5L

    mul-long/2addr v4, v0

    .line 136
    sget-object v6, Lorg/jshybugger/gv;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 137
    cmp-long v2, v2, v8

    if-nez v2, :cond_3c

    sget-object v2, Lorg/jshybugger/gv;->a:Lorg/jshybugger/gX;

    invoke-interface {v2}, Lorg/jshybugger/gX;->a()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 138
    sget-object v2, Lorg/jshybugger/gv;->a:Lorg/jshybugger/gX;

    const-string v3, "-Dio.netty.initialSeedUniquifier: 0x%016x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/jshybugger/gX;->a(Ljava/lang/String;)V

    .line 140
    :cond_3c
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    xor-long/2addr v0, v4

    return-wide v0

    .line 131
    :cond_42
    invoke-static {}, Lorg/jshybugger/gv;->b()J

    move-result-wide v0

    goto :goto_d
.end method


# virtual methods
.method protected next(I)I
    .registers 6

    .prologue
    .line 209
    iget-wide v0, p0, Lorg/jshybugger/gv;->d:J

    const-wide v2, 0x5deece66dL

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xb

    add-long/2addr v0, v2

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jshybugger/gv;->d:J

    .line 210
    iget-wide v0, p0, Lorg/jshybugger/gv;->d:J

    rsub-int/lit8 v2, p1, 0x30

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public setSeed(J)V
    .registers 8

    .prologue
    .line 202
    iget-boolean v0, p0, Lorg/jshybugger/gv;->e:Z

    if-eqz v0, :cond_a

    .line 203
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 205
    :cond_a
    const-wide v0, 0x5deece66dL

    xor-long/2addr v0, p1

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jshybugger/gv;->d:J

    .line 206
    return-void
.end method
