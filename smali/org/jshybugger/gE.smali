.class public abstract Lorg/jshybugger/ge;
.super Lorg/jshybugger/fw;
.source "SingleThreadEventExecutor.java"


# static fields
.field private static final a:Lorg/jshybugger/gX;

.field public static final c:J

.field private static final d:Ljava/lang/Runnable;

.field private static synthetic q:Z


# instance fields
.field public final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/jshybugger/gd",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Thread;

.field private final g:Ljava/lang/Object;

.field private final h:Ljava/util/concurrent/Semaphore;

.field private final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Z

.field private k:J

.field private volatile l:I

.field private volatile m:J

.field private volatile n:J

.field private o:J

.field private final p:Lorg/jshybugger/fZ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jshybugger/fZ",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 41
    const-class v0, Lorg/jshybugger/ge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jshybugger/ge;->q:Z

    .line 43
    const-class v0, Lorg/jshybugger/ge;

    invoke-static {v0}, Lorg/jshybugger/gY;->a(Ljava/lang/Class;)Lorg/jshybugger/gX;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/ge;->a:Lorg/jshybugger/gX;

    .line 52
    new-instance v0, Lorg/jshybugger/gf;

    invoke-direct {v0}, Lorg/jshybugger/gf;-><init>()V

    sput-object v0, Lorg/jshybugger/ge;->d:Ljava/lang/Runnable;

    .line 708
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lorg/jshybugger/ge;->c:J

    return-void

    .line 41
    :cond_25
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lorg/jshybugger/fL;Ljava/util/concurrent/ThreadFactory;Z)V
    .registers 6

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/jshybugger/fw;-><init>()V

    .line 61
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/ge;->b:Ljava/util/Queue;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/ge;->g:Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lorg/jshybugger/ge;->h:Ljava/util/concurrent/Semaphore;

    .line 66
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/ge;->i:Ljava/util/Set;

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lorg/jshybugger/ge;->l:I

    .line 75
    new-instance v0, Lorg/jshybugger/fD;

    sget-object v1, Lorg/jshybugger/fQ;->a:Lorg/jshybugger/fQ;

    invoke-direct {v0, v1}, Lorg/jshybugger/fD;-><init>(Lorg/jshybugger/fK;)V

    iput-object v0, p0, Lorg/jshybugger/ge;->p:Lorg/jshybugger/fZ;

    .line 88
    if-nez p2, :cond_36

    .line 89
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "threadFactory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_36
    iput-boolean p3, p0, Lorg/jshybugger/ge;->j:Z

    .line 95
    new-instance v0, Lorg/jshybugger/gg;

    invoke-direct {v0, p0}, Lorg/jshybugger/gg;-><init>(Lorg/jshybugger/ge;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/ge;->f:Ljava/lang/Thread;

    .line 146
    invoke-virtual {p0}, Lorg/jshybugger/ge;->a()Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/ge;->e:Ljava/util/Queue;

    .line 147
    return-void
.end method

.method static synthetic a(Lorg/jshybugger/ge;)I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lorg/jshybugger/ge;->l:I

    return v0
.end method

.method static synthetic a(Lorg/jshybugger/ge;I)I
    .registers 2

    .prologue
    .line 41
    iput p1, p0, Lorg/jshybugger/ge;->l:I

    return p1
.end method

.method private a(Lorg/jshybugger/gd;)Lorg/jshybugger/gc;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jshybugger/gd",
            "<TV;>;)",
            "Lorg/jshybugger/gc",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 787
    if-nez p1, :cond_a

    .line 788
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "task"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 791
    :cond_a
    invoke-virtual {p0}, Lorg/jshybugger/ge;->d()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 792
    iget-object v0, p0, Lorg/jshybugger/ge;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 802
    :goto_15
    return-object p1

    .line 794
    :cond_16
    new-instance v0, Lorg/jshybugger/gh;

    invoke-direct {v0, p0, p1}, Lorg/jshybugger/gh;-><init>(Lorg/jshybugger/ge;Lorg/jshybugger/gd;)V

    invoke-virtual {p0, v0}, Lorg/jshybugger/ge;->execute(Ljava/lang/Runnable;)V

    goto :goto_15
.end method

.method static synthetic b(Lorg/jshybugger/ge;)J
    .registers 3

    .prologue
    .line 41
    iget-wide v0, p0, Lorg/jshybugger/ge;->o:J

    return-wide v0
.end method

.method private b(Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 292
    if-nez p1, :cond_a

    .line 293
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "task"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_a
    invoke-virtual {p0}, Lorg/jshybugger/ge;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 296
    invoke-static {}, Lorg/jshybugger/ge;->r()V

    .line 298
    :cond_13
    iget-object v0, p0, Lorg/jshybugger/ge;->e:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 299
    return-void
.end method

.method static synthetic c(Lorg/jshybugger/ge;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lorg/jshybugger/ge;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lorg/jshybugger/ge;)Ljava/util/concurrent/Semaphore;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lorg/jshybugger/ge;->h:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic e(Lorg/jshybugger/ge;)Ljava/util/Queue;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lorg/jshybugger/ge;->e:Ljava/util/Queue;

    return-object v0
.end method

.method private e()V
    .registers 9

    .prologue
    const-wide/16 v4, 0x0

    .line 241
    move-wide v2, v4

    .line 243
    :goto_3
    iget-object v0, p0, Lorg/jshybugger/ge;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/gd;

    .line 244
    if-eqz v0, :cond_28

    .line 245
    cmp-long v1, v2, v4

    if-nez v1, :cond_15

    .line 249
    invoke-static {}, Lorg/jshybugger/gd;->d()J

    move-result-wide v2

    .line 252
    :cond_15
    invoke-virtual {v0}, Lorg/jshybugger/gd;->e()J

    move-result-wide v6

    cmp-long v1, v6, v2

    if-gtz v1, :cond_28

    .line 253
    iget-object v1, p0, Lorg/jshybugger/ge;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 254
    iget-object v1, p0, Lorg/jshybugger/ge;->e:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 259
    :cond_28
    return-void
.end method

.method static synthetic f(Lorg/jshybugger/ge;)Lorg/jshybugger/fZ;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lorg/jshybugger/ge;->p:Lorg/jshybugger/fZ;

    return-object v0
.end method

.method private i()Z
    .registers 4

    .prologue
    .line 317
    invoke-direct {p0}, Lorg/jshybugger/ge;->e()V

    .line 318
    invoke-virtual {p0}, Lorg/jshybugger/ge;->h()Ljava/lang/Runnable;

    move-result-object v0

    .line 319
    if-nez v0, :cond_b

    .line 320
    const/4 v0, 0x0

    .line 333
    :goto_a
    return v0

    .line 325
    :cond_b
    :try_start_b
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_e} :catch_1c

    .line 330
    :goto_e
    invoke-virtual {p0}, Lorg/jshybugger/ge;->h()Ljava/lang/Runnable;

    move-result-object v0

    .line 331
    if-nez v0, :cond_b

    .line 332
    invoke-static {}, Lorg/jshybugger/gd;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jshybugger/ge;->k:J

    .line 333
    const/4 v0, 0x1

    goto :goto_a

    .line 326
    :catch_1c
    move-exception v0

    .line 327
    sget-object v1, Lorg/jshybugger/ge;->a:Lorg/jshybugger/gX;

    const-string v2, "A task raised an exception."

    invoke-interface {v1, v2, v0}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method static synthetic o()Lorg/jshybugger/gX;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lorg/jshybugger/ge;->a:Lorg/jshybugger/gX;

    return-object v0
.end method

.method private p()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 460
    const/4 v0, 0x0

    .line 462
    :cond_2
    iget-object v2, p0, Lorg/jshybugger/ge;->i:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_37

    .line 463
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/jshybugger/ge;->i:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 464
    iget-object v3, p0, Lorg/jshybugger/ge;->i:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 465
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 467
    :try_start_26
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_29} :catch_2b
    .catchall {:try_start_26 .. :try_end_29} :catchall_35

    move v0, v1

    .line 472
    goto :goto_1a

    .line 468
    :catch_2b
    move-exception v0

    .line 469
    :try_start_2c
    sget-object v3, Lorg/jshybugger/ge;->a:Lorg/jshybugger/gX;

    const-string v4, "Shutdown hook raised an exception."

    invoke-interface {v3, v4, v0}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_35

    move v0, v1

    .line 472
    goto :goto_1a

    .line 471
    :catchall_35
    move-exception v0

    throw v0

    .line 476
    :cond_37
    if-eqz v0, :cond_3f

    .line 477
    invoke-static {}, Lorg/jshybugger/gd;->d()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/jshybugger/ge;->k:J

    .line 480
    :cond_3f
    return v0
.end method

.method private q()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 649
    iget-object v0, p0, Lorg/jshybugger/ge;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 661
    :goto_9
    return-void

    .line 653
    :cond_a
    iget-object v0, p0, Lorg/jshybugger/ge;->b:Ljava/util/Queue;

    iget-object v1, p0, Lorg/jshybugger/ge;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jshybugger/gd;

    invoke-interface {v0, v1}, Ljava/util/Queue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jshybugger/gd;

    .line 656
    array-length v3, v0

    move v1, v2

    :goto_1c
    if-ge v1, v3, :cond_26

    aget-object v4, v0, v1

    .line 657
    invoke-virtual {v4, v2}, Lorg/jshybugger/gd;->cancel(Z)Z

    .line 656
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 660
    :cond_26
    iget-object v0, p0, Lorg/jshybugger/ge;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    goto :goto_9
.end method

.method private static r()V
    .registers 2

    .prologue
    .line 703
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "event executor terminated"

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected a()Ljava/util/Queue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    return-object v0
.end method

.method public final a(JJLjava/util/concurrent/TimeUnit;)Lorg/jshybugger/fN;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lorg/jshybugger/fN",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 485
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_21

    .line 486
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "quietPeriod: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected >= 0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_21
    cmp-long v0, p3, p1

    if-gez v0, :cond_4a

    .line 489
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "timeout: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected >= quietPeriod ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_4a
    if-nez p5, :cond_54

    .line 493
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_54
    invoke-virtual {p0}, Lorg/jshybugger/ge;->m()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 497
    iget-object v0, p0, Lorg/jshybugger/ge;->p:Lorg/jshybugger/fZ;

    .line 533
    :goto_5c
    return-object v0

    .line 500
    :cond_5d
    invoke-virtual {p0}, Lorg/jshybugger/ge;->d()Z

    move-result v1

    .line 501
    const/4 v0, 0x1

    .line 503
    iget-object v2, p0, Lorg/jshybugger/ge;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 504
    :try_start_65
    invoke-virtual {p0}, Lorg/jshybugger/ge;->m()Z

    move-result v3

    if-eqz v3, :cond_72

    .line 505
    iget-object v0, p0, Lorg/jshybugger/ge;->p:Lorg/jshybugger/fZ;

    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_6f

    goto :goto_5c

    .line 527
    :catchall_6f
    move-exception v0

    monitor-exit v2

    throw v0

    .line 508
    :cond_72
    :try_start_72
    invoke-virtual {p5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/jshybugger/ge;->m:J

    .line 509
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/jshybugger/ge;->n:J

    .line 511
    if-eqz v1, :cond_9b

    .line 512
    sget-boolean v3, Lorg/jshybugger/ge;->q:Z

    if-nez v3, :cond_8f

    iget v3, p0, Lorg/jshybugger/ge;->l:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_8f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 513
    :cond_8f
    const/4 v3, 0x3

    iput v3, p0, Lorg/jshybugger/ge;->l:I

    .line 527
    :goto_92
    monitor-exit v2
    :try_end_93
    .catchall {:try_start_72 .. :try_end_93} :catchall_6f

    .line 529
    if-eqz v0, :cond_98

    .line 530
    invoke-virtual {p0, v1}, Lorg/jshybugger/ge;->a(Z)V

    .line 533
    :cond_98
    iget-object v0, p0, Lorg/jshybugger/ge;->p:Lorg/jshybugger/fZ;

    goto :goto_5c

    .line 515
    :cond_9b
    :try_start_9b
    iget v3, p0, Lorg/jshybugger/ge;->l:I

    packed-switch v3, :pswitch_data_b0

    .line 524
    const/4 v0, 0x0

    goto :goto_92

    .line 517
    :pswitch_a2
    const/4 v3, 0x3

    iput v3, p0, Lorg/jshybugger/ge;->l:I

    .line 518
    iget-object v3, p0, Lorg/jshybugger/ge;->f:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_92

    .line 521
    :pswitch_ab
    const/4 v3, 0x3

    iput v3, p0, Lorg/jshybugger/ge;->l:I
    :try_end_ae
    .catchall {:try_start_9b .. :try_end_ae} :catchall_6f

    goto :goto_92

    .line 515
    nop

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_a2
        :pswitch_ab
    .end packed-switch
.end method

.method public final a(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lorg/jshybugger/gc;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lorg/jshybugger/gc",
            "<*>;"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 744
    if-nez p1, :cond_e

    .line 745
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "command"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 747
    :cond_e
    if-nez p6, :cond_18

    .line 748
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    :cond_18
    cmp-long v0, p2, v6

    if-gez v0, :cond_30

    .line 751
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "initialDelay: %d (expected: >= 0)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 754
    :cond_30
    cmp-long v0, p4, v6

    if-gtz v0, :cond_48

    .line 755
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "period: %d (expected: > 0)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :cond_48
    new-instance v0, Lorg/jshybugger/gd;

    iget-object v2, p0, Lorg/jshybugger/ge;->b:Ljava/util/Queue;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v3

    invoke-virtual {p6, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/jshybugger/gd;->b(J)J

    move-result-wide v4

    invoke-virtual {p6, p4, p5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/jshybugger/gd;-><init>(Lorg/jshybugger/fK;Ljava/util/Queue;Ljava/util/concurrent/Callable;JJ)V

    invoke-direct {p0, v0}, Lorg/jshybugger/ge;->a(Lorg/jshybugger/gd;)Lorg/jshybugger/gc;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lorg/jshybugger/gc;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lorg/jshybugger/gc",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 712
    if-nez p1, :cond_a

    .line 713
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "command"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 715
    :cond_a
    if-nez p4, :cond_14

    .line 716
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 718
    :cond_14
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_30

    .line 719
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delay: %d (expected: >= 0)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 722
    :cond_30
    new-instance v1, Lorg/jshybugger/gd;

    iget-object v3, p0, Lorg/jshybugger/ge;->b:Ljava/util/Queue;

    const/4 v5, 0x0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/jshybugger/gd;->b(J)J

    move-result-wide v6

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lorg/jshybugger/gd;-><init>(Lorg/jshybugger/fK;Ljava/util/Queue;Ljava/lang/Runnable;Ljava/lang/Object;J)V

    invoke-direct {p0, v1}, Lorg/jshybugger/ge;->a(Lorg/jshybugger/gd;)Lorg/jshybugger/gc;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lorg/jshybugger/gc;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lorg/jshybugger/gc",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 728
    if-nez p1, :cond_a

    .line 729
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callable"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 731
    :cond_a
    if-nez p4, :cond_14

    .line 732
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 734
    :cond_14
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_30

    .line 735
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delay: %d (expected: >= 0)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 738
    :cond_30
    new-instance v0, Lorg/jshybugger/gd;

    iget-object v2, p0, Lorg/jshybugger/ge;->b:Ljava/util/Queue;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/jshybugger/gd;->b(J)J

    move-result-wide v4

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/jshybugger/gd;-><init>(Lorg/jshybugger/fK;Ljava/util/Queue;Ljava/util/concurrent/Callable;J)V

    invoke-direct {p0, v0}, Lorg/jshybugger/ge;->a(Lorg/jshybugger/gd;)Lorg/jshybugger/gc;

    move-result-object v0

    return-object v0
.end method

.method protected a(Z)V
    .registers 4

    .prologue
    .line 417
    if-eqz p1, :cond_7

    iget v0, p0, Lorg/jshybugger/ge;->l:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    .line 418
    :cond_7
    iget-object v0, p0, Lorg/jshybugger/ge;->e:Ljava/util/Queue;

    sget-object v1, Lorg/jshybugger/ge;->d:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_e
    return-void
.end method

.method protected final a(J)Z
    .registers 14

    .prologue
    const-wide/16 v2, 0x0

    .line 343
    invoke-direct {p0}, Lorg/jshybugger/ge;->e()V

    .line 344
    invoke-virtual {p0}, Lorg/jshybugger/ge;->h()Ljava/lang/Runnable;

    move-result-object v0

    .line 345
    if-nez v0, :cond_d

    .line 346
    const/4 v0, 0x0

    .line 378
    :goto_c
    return v0

    .line 349
    :cond_d
    invoke-static {}, Lorg/jshybugger/gd;->d()J

    move-result-wide v4

    add-long v6, v4, p1

    move-object v4, v0

    move-wide v0, v2

    .line 354
    :goto_15
    :try_start_15
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_18} :catch_38

    .line 359
    :goto_18
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    .line 363
    const-wide/16 v0, 0x3f

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    .line 364
    invoke-static {}, Lorg/jshybugger/gd;->d()J

    move-result-wide v0

    .line 365
    cmp-long v8, v0, v6

    if-gez v8, :cond_34

    .line 366
    :cond_2a
    invoke-virtual {p0}, Lorg/jshybugger/ge;->h()Ljava/lang/Runnable;

    move-result-object v0

    .line 371
    if-nez v0, :cond_41

    .line 372
    invoke-static {}, Lorg/jshybugger/gd;->d()J

    move-result-wide v0

    .line 373
    :cond_34
    iput-wide v0, p0, Lorg/jshybugger/ge;->k:J

    .line 378
    const/4 v0, 0x1

    goto :goto_c

    .line 355
    :catch_38
    move-exception v4

    .line 356
    sget-object v5, Lorg/jshybugger/ge;->a:Lorg/jshybugger/gX;

    const-string v8, "A task raised an exception."

    invoke-interface {v5, v8, v4}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18

    :cond_41
    move-wide v9, v4

    move-object v4, v0

    move-wide v0, v9

    goto :goto_15
.end method

.method public final a(Ljava/lang/Thread;)Z
    .registers 3

    .prologue
    .line 424
    iget-object v0, p0, Lorg/jshybugger/ge;->f:Ljava/lang/Thread;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .registers 7

    .prologue
    .line 665
    if-nez p3, :cond_a

    .line 666
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 669
    :cond_a
    invoke-virtual {p0}, Lorg/jshybugger/ge;->d()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 670
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot await termination of the current thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 673
    :cond_18
    iget-object v0, p0, Lorg/jshybugger/ge;->h:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 674
    iget-object v0, p0, Lorg/jshybugger/ge;->h:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 677
    :cond_25
    invoke-virtual {p0}, Lorg/jshybugger/ge;->isTerminated()Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lorg/jshybugger/gc;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lorg/jshybugger/gc",
            "<*>;"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 766
    if-nez p1, :cond_e

    .line 767
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "command"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 769
    :cond_e
    if-nez p6, :cond_18

    .line 770
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 772
    :cond_18
    cmp-long v0, p2, v6

    if-gez v0, :cond_30

    .line 773
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "initialDelay: %d (expected: >= 0)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    :cond_30
    cmp-long v0, p4, v6

    if-gtz v0, :cond_48

    .line 777
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delay: %d (expected: > 0)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 781
    :cond_48
    new-instance v0, Lorg/jshybugger/gd;

    iget-object v2, p0, Lorg/jshybugger/ge;->b:Ljava/util/Queue;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v3

    invoke-virtual {p6, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/jshybugger/gd;->b(J)J

    move-result-wide v4

    invoke-virtual {p6, p4, p5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    neg-long v6, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/jshybugger/gd;-><init>(Lorg/jshybugger/fK;Ljava/util/Queue;Ljava/util/concurrent/Callable;JJ)V

    invoke-direct {p0, v0}, Lorg/jshybugger/ge;->a(Lorg/jshybugger/gd;)Lorg/jshybugger/gc;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lorg/jshybugger/fN;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jshybugger/fN",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 538
    iget-object v0, p0, Lorg/jshybugger/ge;->p:Lorg/jshybugger/fZ;

    return-object v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 13

    .prologue
    .line 682
    if-nez p1, :cond_a

    .line 683
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "task"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    :cond_a
    invoke-virtual {p0}, Lorg/jshybugger/ge;->d()Z

    move-result v8

    .line 687
    if-eqz v8, :cond_1b

    .line 688
    invoke-direct {p0, p1}, Lorg/jshybugger/ge;->b(Ljava/lang/Runnable;)V

    .line 697
    :cond_13
    :goto_13
    iget-boolean v0, p0, Lorg/jshybugger/ge;->j:Z

    if-nez v0, :cond_1a

    .line 698
    invoke-virtual {p0, v8}, Lorg/jshybugger/ge;->a(Z)V

    .line 700
    :cond_1a
    return-void

    .line 690
    :cond_1b
    iget-object v9, p0, Lorg/jshybugger/ge;->g:Ljava/lang/Object;

    monitor-enter v9

    :try_start_1e
    iget v0, p0, Lorg/jshybugger/ge;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4c

    const/4 v0, 0x2

    iput v0, p0, Lorg/jshybugger/ge;->l:I

    iget-object v10, p0, Lorg/jshybugger/ge;->b:Ljava/util/Queue;

    new-instance v0, Lorg/jshybugger/gd;

    iget-object v2, p0, Lorg/jshybugger/ge;->b:Ljava/util/Queue;

    new-instance v1, Lorg/jshybugger/gi;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/jshybugger/gi;-><init>(Lorg/jshybugger/ge;B)V

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v3

    sget-wide v4, Lorg/jshybugger/ge;->c:J

    invoke-static {v4, v5}, Lorg/jshybugger/gd;->b(J)J

    move-result-wide v4

    sget-wide v6, Lorg/jshybugger/ge;->c:J

    neg-long v6, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/jshybugger/gd;-><init>(Lorg/jshybugger/fK;Ljava/util/Queue;Ljava/util/concurrent/Callable;JJ)V

    invoke-interface {v10, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/jshybugger/ge;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_4c
    monitor-exit v9
    :try_end_4d
    .catchall {:try_start_1e .. :try_end_4d} :catchall_60

    .line 691
    invoke-direct {p0, p1}, Lorg/jshybugger/ge;->b(Ljava/lang/Runnable;)V

    .line 692
    invoke-virtual {p0}, Lorg/jshybugger/ge;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_13

    if-nez p1, :cond_63

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "task"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 690
    :catchall_60
    move-exception v0

    monitor-exit v9

    throw v0

    .line 692
    :cond_63
    iget-object v0, p0, Lorg/jshybugger/ge;->e:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 693
    invoke-static {}, Lorg/jshybugger/ge;->r()V

    goto :goto_13
.end method

.method protected abstract f()V
.end method

.method protected g()V
    .registers 1

    .prologue
    .line 414
    return-void
.end method

.method public h()Ljava/lang/Runnable;
    .registers 3

    .prologue
    .line 175
    sget-boolean v0, Lorg/jshybugger/ge;->q:Z

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lorg/jshybugger/ge;->d()Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 177
    :cond_10
    iget-object v0, p0, Lorg/jshybugger/ge;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 178
    sget-object v1, Lorg/jshybugger/ge;->d:Ljava/lang/Runnable;

    if-eq v0, v1, :cond_10

    .line 179
    return-object v0
.end method

.method public isShutdown()Z
    .registers 3

    .prologue
    .line 587
    iget v0, p0, Lorg/jshybugger/ge;->l:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isTerminated()Z
    .registers 3

    .prologue
    .line 592
    iget v0, p0, Lorg/jshybugger/ge;->l:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected final k()Z
    .registers 2

    .prologue
    .line 273
    sget-boolean v0, Lorg/jshybugger/ge;->q:Z

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lorg/jshybugger/ge;->d()Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 274
    :cond_10
    iget-object v0, p0, Lorg/jshybugger/ge;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method protected final l()V
    .registers 3

    .prologue
    .line 401
    invoke-static {}, Lorg/jshybugger/gd;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jshybugger/ge;->k:J

    .line 402
    return-void
.end method

.method public final m()Z
    .registers 3

    .prologue
    .line 582
    iget v0, p0, Lorg/jshybugger/ge;->l:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected final n()Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 599
    invoke-virtual {p0}, Lorg/jshybugger/ge;->m()Z

    move-result v2

    if-nez v2, :cond_9

    .line 645
    :goto_8
    return v0

    .line 603
    :cond_9
    invoke-virtual {p0}, Lorg/jshybugger/ge;->d()Z

    move-result v2

    if-nez v2, :cond_17

    .line 604
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must be invoked from an event loop"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :cond_17
    invoke-direct {p0}, Lorg/jshybugger/ge;->q()V

    .line 609
    iget-wide v2, p0, Lorg/jshybugger/ge;->o:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_28

    .line 610
    invoke-static {}, Lorg/jshybugger/gd;->d()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/jshybugger/ge;->o:J

    .line 613
    :cond_28
    invoke-direct {p0}, Lorg/jshybugger/ge;->i()Z

    move-result v2

    if-nez v2, :cond_34

    invoke-direct {p0}, Lorg/jshybugger/ge;->p()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 614
    :cond_34
    invoke-virtual {p0}, Lorg/jshybugger/ge;->isShutdown()Z

    move-result v2

    if-eqz v2, :cond_3c

    move v0, v1

    .line 616
    goto :goto_8

    .line 620
    :cond_3c
    invoke-virtual {p0, v1}, Lorg/jshybugger/ge;->a(Z)V

    goto :goto_8

    .line 624
    :cond_40
    invoke-static {}, Lorg/jshybugger/gd;->d()J

    move-result-wide v2

    .line 626
    invoke-virtual {p0}, Lorg/jshybugger/ge;->isShutdown()Z

    move-result v4

    if-nez v4, :cond_54

    iget-wide v4, p0, Lorg/jshybugger/ge;->o:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lorg/jshybugger/ge;->n:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_56

    :cond_54
    move v0, v1

    .line 627
    goto :goto_8

    .line 630
    :cond_56
    iget-wide v4, p0, Lorg/jshybugger/ge;->k:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lorg/jshybugger/ge;->m:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_6a

    .line 633
    invoke-virtual {p0, v1}, Lorg/jshybugger/ge;->a(Z)V

    .line 635
    const-wide/16 v2, 0x64

    :try_start_64
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_67
    .catch Ljava/lang/InterruptedException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_8

    :catch_68
    move-exception v1

    goto :goto_8

    :cond_6a
    move v0, v1

    .line 645
    goto :goto_8
.end method

.method public synthetic schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 7

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jshybugger/ge;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lorg/jshybugger/gc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 7

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jshybugger/ge;->a(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lorg/jshybugger/gc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 9

    .prologue
    .line 41
    invoke-virtual/range {p0 .. p6}, Lorg/jshybugger/ge;->a(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lorg/jshybugger/gc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 9

    .prologue
    .line 41
    invoke-virtual/range {p0 .. p6}, Lorg/jshybugger/ge;->b(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lorg/jshybugger/gc;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 544
    invoke-virtual {p0}, Lorg/jshybugger/ge;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 578
    :cond_6
    :goto_6
    return-void

    .line 548
    :cond_7
    invoke-virtual {p0}, Lorg/jshybugger/ge;->d()Z

    move-result v1

    .line 549
    const/4 v0, 0x1

    .line 551
    iget-object v2, p0, Lorg/jshybugger/ge;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 552
    :try_start_f
    invoke-virtual {p0}, Lorg/jshybugger/ge;->isShutdown()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 553
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_17

    goto :goto_6

    .line 573
    :catchall_17
    move-exception v0

    monitor-exit v2

    throw v0

    .line 556
    :cond_1a
    if-eqz v1, :cond_3a

    .line 557
    :try_start_1c
    sget-boolean v3, Lorg/jshybugger/ge;->q:Z

    if-nez v3, :cond_30

    iget v3, p0, Lorg/jshybugger/ge;->l:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_30

    iget v3, p0, Lorg/jshybugger/ge;->l:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_30

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 558
    :cond_30
    const/4 v3, 0x4

    iput v3, p0, Lorg/jshybugger/ge;->l:I

    .line 573
    :goto_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_1c .. :try_end_34} :catchall_17

    .line 575
    if-eqz v0, :cond_6

    .line 576
    invoke-virtual {p0, v1}, Lorg/jshybugger/ge;->a(Z)V

    goto :goto_6

    .line 560
    :cond_3a
    :try_start_3a
    iget v3, p0, Lorg/jshybugger/ge;->l:I

    packed-switch v3, :pswitch_data_4e

    .line 570
    const/4 v0, 0x0

    goto :goto_33

    .line 562
    :pswitch_41
    const/4 v3, 0x4

    iput v3, p0, Lorg/jshybugger/ge;->l:I

    .line 563
    iget-object v3, p0, Lorg/jshybugger/ge;->f:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_33

    .line 567
    :pswitch_4a
    const/4 v3, 0x4

    iput v3, p0, Lorg/jshybugger/ge;->l:I
    :try_end_4d
    .catchall {:try_start_3a .. :try_end_4d} :catchall_17

    goto :goto_33

    .line 560
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_41
        :pswitch_4a
        :pswitch_4a
    .end packed-switch
.end method
