.class public final Lorg/jshybugger/bl;
.super Ljava/lang/Object;
.source "DefaultChannelPipeline.java"

# interfaces
.implements Lorg/jshybugger/aJ;


# static fields
.field static final a:Lorg/jshybugger/gX;

.field private static final d:[Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static synthetic h:Z


# instance fields
.field final b:Lorg/jshybugger/Y;

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jshybugger/fL;",
            "Lorg/jshybugger/fK;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lorg/jshybugger/aS;

.field private f:Lorg/jshybugger/aS;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jshybugger/aS;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 44
    const-class v0, Lorg/jshybugger/bl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_31

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Lorg/jshybugger/bl;->h:Z

    .line 46
    const-class v0, Lorg/jshybugger/bl;

    invoke-static {v0}, Lorg/jshybugger/gY;->a(Ljava/lang/Class;)Lorg/jshybugger/gX;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/bl;->a:Lorg/jshybugger/gX;

    .line 49
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    new-array v0, v0, [Ljava/util/WeakHashMap;

    sput-object v0, Lorg/jshybugger/bl;->d:[Ljava/util/WeakHashMap;

    .line 53
    :goto_20
    sget-object v0, Lorg/jshybugger/bl;->d:[Ljava/util/WeakHashMap;

    array-length v0, v0

    if-ge v1, v0, :cond_33

    .line 54
    sget-object v0, Lorg/jshybugger/bl;->d:[Ljava/util/WeakHashMap;

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    aput-object v2, v0, v1

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_31
    move v0, v1

    .line 44
    goto :goto_a

    .line 56
    :cond_33
    return-void
.end method

.method public constructor <init>(Lorg/jshybugger/Y;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/jshybugger/bl;->g:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/bl;->c:Ljava/util/Map;

    .line 70
    if-nez p1, :cond_1d

    .line 71
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "channel"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1d
    iput-object p1, p0, Lorg/jshybugger/bl;->b:Lorg/jshybugger/Y;

    .line 75
    new-instance v0, Lorg/jshybugger/br;

    invoke-direct {v0}, Lorg/jshybugger/br;-><init>()V

    .line 76
    new-instance v1, Lorg/jshybugger/aS;

    invoke-direct {p0, v0}, Lorg/jshybugger/bl;->b(Lorg/jshybugger/at;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v3, v2, v0}, Lorg/jshybugger/aS;-><init>(Lorg/jshybugger/bl;Lorg/jshybugger/fL;Ljava/lang/String;Lorg/jshybugger/at;)V

    iput-object v1, p0, Lorg/jshybugger/bl;->f:Lorg/jshybugger/aS;

    .line 78
    new-instance v0, Lorg/jshybugger/bq;

    invoke-virtual {p1}, Lorg/jshybugger/Y;->n()Lorg/jshybugger/ak;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jshybugger/bq;-><init>(Lorg/jshybugger/ak;)V

    .line 79
    new-instance v1, Lorg/jshybugger/aS;

    invoke-direct {p0, v0}, Lorg/jshybugger/bl;->b(Lorg/jshybugger/at;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v3, v2, v0}, Lorg/jshybugger/aS;-><init>(Lorg/jshybugger/bl;Lorg/jshybugger/fL;Ljava/lang/String;Lorg/jshybugger/at;)V

    iput-object v1, p0, Lorg/jshybugger/bl;->e:Lorg/jshybugger/aS;

    .line 81
    iget-object v0, p0, Lorg/jshybugger/bl;->e:Lorg/jshybugger/aS;

    iget-object v1, p0, Lorg/jshybugger/bl;->f:Lorg/jshybugger/aS;

    iput-object v1, v0, Lorg/jshybugger/aS;->a:Lorg/jshybugger/aS;

    .line 82
    iget-object v0, p0, Lorg/jshybugger/bl;->f:Lorg/jshybugger/aS;

    iget-object v1, p0, Lorg/jshybugger/bl;->e:Lorg/jshybugger/aS;

    iput-object v1, v0, Lorg/jshybugger/aS;->b:Lorg/jshybugger/aS;

    .line 83
    return-void
.end method

.method private a(Lorg/jshybugger/fL;Ljava/lang/String;Ljava/lang/String;Lorg/jshybugger/at;)Lorg/jshybugger/aJ;
    .registers 8

    .prologue
    .line 159
    monitor-enter p0

    .line 160
    :try_start_1
    invoke-direct {p0, p2}, Lorg/jshybugger/bl;->e(Ljava/lang/String;)Lorg/jshybugger/aS;

    move-result-object v0

    .line 161
    invoke-direct {p0, p3}, Lorg/jshybugger/bl;->d(Ljava/lang/String;)V

    .line 162
    new-instance v1, Lorg/jshybugger/aS;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p3, p4}, Lorg/jshybugger/aS;-><init>(Lorg/jshybugger/bl;Lorg/jshybugger/fL;Ljava/lang/String;Lorg/jshybugger/at;)V

    .line 163
    invoke-static {v1}, Lorg/jshybugger/bl;->a(Lorg/jshybugger/aw;)V

    iget-object v2, v0, Lorg/jshybugger/aS;->b:Lorg/jshybugger/aS;

    iput-object v2, v1, Lorg/jshybugger/aS;->b:Lorg/jshybugger/aS;

    iput-object v0, v1, Lorg/jshybugger/aS;->a:Lorg/jshybugger/aS;

    iget-object v2, v0, Lorg/jshybugger/aS;->b:Lorg/jshybugger/aS;

    iput-object v1, v2, Lorg/jshybugger/aS;->a:Lorg/jshybugger/aS;

    iput-object v1, v0, Lorg/jshybugger/aS;->b:Lorg/jshybugger/aS;

    iget-object v0, p0, Lorg/jshybugger/bl;->g:Ljava/util/Map;

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lorg/jshybugger/bl;->b(Lorg/jshybugger/aw;)V

    .line 164
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_27

    .line 165
    return-object p0

    .line 164
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lorg/jshybugger/fL;Ljava/lang/String;Lorg/jshybugger/at;)Lorg/jshybugger/aJ;
    .registers 7

    .prologue
    .line 97
    monitor-enter p0

    .line 98
    :try_start_1
    invoke-direct {p0, p2}, Lorg/jshybugger/bl;->d(Ljava/lang/String;)V

    .line 99
    new-instance v0, Lorg/jshybugger/aS;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2, p3}, Lorg/jshybugger/aS;-><init>(Lorg/jshybugger/bl;Lorg/jshybugger/fL;Ljava/lang/String;Lorg/jshybugger/at;)V

    .line 100
    invoke-static {v0}, Lorg/jshybugger/bl;->a(Lorg/jshybugger/aw;)V

    iget-object v1, p0, Lorg/jshybugger/bl;->e:Lorg/jshybugger/aS;

    iget-object v1, v1, Lorg/jshybugger/aS;->a:Lorg/jshybugger/aS;

    iget-object v2, p0, Lorg/jshybugger/bl;->e:Lorg/jshybugger/aS;

    iput-object v2, v0, Lorg/jshybugger/aS;->b:Lorg/jshybugger/aS;

    iput-object v1, v0, Lorg/jshybugger/aS;->a:Lorg/jshybugger/aS;

    iget-object v2, p0, Lorg/jshybugger/bl;->e:Lorg/jshybugger/aS;

    iput-object v0, v2, Lorg/jshybugger/aS;->a:Lorg/jshybugger/aS;

    iput-object v0, v1, Lorg/jshybugger/aS;->b:Lorg/jshybugger/aS;

    iget-object v1, p0, Lorg/jshybugger/bl;->g:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/jshybugger/bl;->b(Lorg/jshybugger/aw;)V

    .line 101
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_27

    .line 103
    return-object p0

    .line 101
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lorg/jshybugger/aS;Ljava/lang/String;Lorg/jshybugger/at;)Lorg/jshybugger/at;
    .registers 7

    .prologue
    .line 389
    sget-boolean v0, Lorg/jshybugger/bl;->h:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/jshybugger/bl;->e:Lorg/jshybugger/aS;

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lorg/jshybugger/bl;->f:Lorg/jshybugger/aS;

    if-ne p1, v0, :cond_12

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 392
    :cond_12
    monitor-enter p0

    .line 393
    :try_start_13
    invoke-virtual {p1}, Lorg/jshybugger/aS;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 394
    if-nez v0, :cond_20

    .line 395
    invoke-direct {p0, p2}, Lorg/jshybugger/bl;->d(Ljava/lang/String;)V

    .line 398
    :cond_20
    new-instance v0, Lorg/jshybugger/aS;

    iget-object v1, p1, Lorg/jshybugger/aS;->c:Lorg/jshybugger/fK;

    invoke-direct {v0, p0, v1, p2, p3}, Lorg/jshybugger/aS;-><init>(Lorg/jshybugger/bl;Lorg/jshybugger/fL;Ljava/lang/String;Lorg/jshybugger/at;)V

    .line 401
    invoke-virtual {v0}, Lorg/jshybugger/aS;->a()Lorg/jshybugger/aj;

    move-result-object v1

    invoke-interface {v1}, Lorg/jshybugger/aj;->g()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {v0}, Lorg/jshybugger/aS;->d()Lorg/jshybugger/fK;

    move-result-object v1

    invoke-interface {v1}, Lorg/jshybugger/fK;->d()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 402
    :cond_3b
    invoke-direct {p0, p1, p2, v0}, Lorg/jshybugger/bl;->a(Lorg/jshybugger/aS;Ljava/lang/String;Lorg/jshybugger/aS;)V

    .line 403
    invoke-virtual {p1}, Lorg/jshybugger/aS;->f()Lorg/jshybugger/at;

    move-result-object v0

    monitor-exit p0

    .line 421
    :goto_43
    return-object v0

    .line 405
    :cond_44
    invoke-virtual {v0}, Lorg/jshybugger/aS;->d()Lorg/jshybugger/fK;

    move-result-object v1

    new-instance v2, Lorg/jshybugger/bn;

    invoke-direct {v2, p0, p1, p2, v0}, Lorg/jshybugger/bn;-><init>(Lorg/jshybugger/bl;Lorg/jshybugger/aS;Ljava/lang/String;Lorg/jshybugger/aS;)V

    invoke-interface {v1, v2}, Lorg/jshybugger/fK;->a(Ljava/lang/Runnable;)Lorg/jshybugger/fN;

    move-result-object v0

    .line 414
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_13 .. :try_end_52} :catchall_5a

    .line 419
    invoke-static {v0}, Lorg/jshybugger/bl;->a(Ljava/util/concurrent/Future;)V

    .line 421
    invoke-virtual {p1}, Lorg/jshybugger/aS;->f()Lorg/jshybugger/at;

    move-result-object v0

    goto :goto_43

    .line 414
    :catchall_5a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a(Ljava/util/concurrent/Future;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 549
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_d

    .line 557
    :goto_3
    return-void

    .line 550
    :catch_4
    move-exception v0

    .line 552
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lorg/jshybugger/gp;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 555
    :catch_d
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3
.end method

.method private a(Lorg/jshybugger/aS;Ljava/lang/String;Lorg/jshybugger/aS;)V
    .registers 6

    .prologue
    .line 426
    invoke-static {p3}, Lorg/jshybugger/bl;->a(Lorg/jshybugger/aw;)V

    .line 428
    iget-object v0, p1, Lorg/jshybugger/aS;->b:Lorg/jshybugger/aS;

    .line 429
    iget-object v1, p1, Lorg/jshybugger/aS;->a:Lorg/jshybugger/aS;

    .line 430
    iput-object v0, p3, Lorg/jshybugger/aS;->b:Lorg/jshybugger/aS;

    .line 431
    iput-object v1, p3, Lorg/jshybugger/aS;->a:Lorg/jshybugger/aS;

    .line 437
    iput-object p3, v0, Lorg/jshybugger/aS;->a:Lorg/jshybugger/aS;

    .line 438
    iput-object p3, v1, Lorg/jshybugger/aS;->b:Lorg/jshybugger/aS;

    .line 440
    invoke-virtual {p1}, Lorg/jshybugger/aS;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 441
    iget-object v0, p0, Lorg/jshybugger/bl;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/jshybugger/aS;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    :cond_22
    iget-object v0, p0, Lorg/jshybugger/bl;->g:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iput-object p3, p1, Lorg/jshybugger/aS;->b:Lorg/jshybugger/aS;

    .line 447
    iput-object p3, p1, Lorg/jshybugger/aS;->a:Lorg/jshybugger/aS;

    .line 452
    invoke-direct {p0, p3}, Lorg/jshybugger/bl;->b(Lorg/jshybugger/aw;)V

    .line 453
    invoke-direct {p0, p1}, Lorg/jshybugger/bl;->c(Lorg/jshybugger/aS;)V

    .line 454
    return-void
.end method

.method private static a(Lorg/jshybugger/aw;)V
    .registers 4

    .prologue
    .line 457
    invoke-interface {p0}, Lorg/jshybugger/aw;->f()Lorg/jshybugger/at;

    move-result-object v0

    .line 458
    instance-of v1, v0, Lorg/jshybugger/av;

    if-eqz v1, :cond_3e

    .line 459
    check-cast v0, Lorg/jshybugger/av;

    .line 460
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/jshybugger/au;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_3b

    iget-boolean v1, v0, Lorg/jshybugger/av;->a:Z

    if-eqz v1, :cond_3b

    .line 461
    new-instance v1, Lorg/jshybugger/aK;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not a @Sharable handler, so can\'t be added or removed multiple times."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jshybugger/aK;-><init>(Ljava/lang/String;)V

    throw v1

    .line 465
    :cond_3b
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/jshybugger/av;->a:Z

    .line 467
    :cond_3e
    return-void
.end method

.method static synthetic a(Lorg/jshybugger/bl;Lorg/jshybugger/aS;)V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/jshybugger/bl;->d(Lorg/jshybugger/aS;)V

    return-void
.end method

.method static synthetic a(Lorg/jshybugger/bl;Lorg/jshybugger/aS;Ljava/lang/String;Lorg/jshybugger/aS;)V
    .registers 4

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lorg/jshybugger/bl;->a(Lorg/jshybugger/aS;Ljava/lang/String;Lorg/jshybugger/aS;)V

    return-void
.end method

.method static synthetic a(Lorg/jshybugger/bl;Lorg/jshybugger/aw;)V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/jshybugger/bl;->c(Lorg/jshybugger/aw;)V

    return-void
.end method

.method private b(Lorg/jshybugger/at;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 265
    sget-object v0, Lorg/jshybugger/bl;->d:[Ljava/util/WeakHashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    sget-object v1, Lorg/jshybugger/bl;->d:[Ljava/util/WeakHashMap;

    array-length v1, v1

    int-to-long v4, v1

    rem-long/2addr v2, v4

    long-to-int v1, v2

    aget-object v1, v0, v1

    .line 266
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 268
    monitor-enter v1

    .line 269
    :try_start_17
    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 270
    if-nez v0, :cond_39

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lorg/jshybugger/gt;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-virtual {v1, v2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_17 .. :try_end_3a} :catchall_6b

    .line 276
    monitor-enter p0

    .line 279
    :try_start_3b
    iget-object v1, p0, Lorg/jshybugger/bl;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 280
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 281
    const/4 v0, 0x1

    move v1, v0

    .line 282
    :goto_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    iget-object v3, p0, Lorg/jshybugger/bl;->g:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6e

    .line 289
    :cond_69
    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_3b .. :try_end_6a} :catchall_72

    .line 291
    return-object v0

    .line 274
    :catchall_6b
    move-exception v0

    monitor-exit v1

    throw v0

    .line 281
    :cond_6e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_50

    .line 289
    :catchall_72
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Lorg/jshybugger/fL;Ljava/lang/String;Lorg/jshybugger/at;)Lorg/jshybugger/aJ;
    .registers 7

    .prologue
    .line 127
    monitor-enter p0

    .line 128
    :try_start_1
    invoke-direct {p0, p2}, Lorg/jshybugger/bl;->d(Ljava/lang/String;)V

    .line 130
    new-instance v0, Lorg/jshybugger/aS;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/jshybugger/aS;-><init>(Lorg/jshybugger/bl;Lorg/jshybugger/fL;Ljava/lang/String;Lorg/jshybugger/at;)V

    .line 131
    invoke-static {v0}, Lorg/jshybugger/bl;->a(Lorg/jshybugger/aw;)V

    iget-object v1, p0, Lorg/jshybugger/bl;->f:Lorg/jshybugger/aS;

    iget-object v1, v1, Lorg/jshybugger/aS;->b:Lorg/jshybugger/aS;

    iput-object v1, v0, Lorg/jshybugger/aS;->b:Lorg/jshybugger/aS;

    iget-object v2, p0, Lorg/jshybugger/bl;->f:Lorg/jshybugger/aS;

    iput-object v2, v0, Lorg/jshybugger/aS;->a:Lorg/jshybugger/aS;

    iput-object v0, v1, Lorg/jshybugger/aS;->a:Lorg/jshybugger/aS;

    iget-object v1, p0, Lorg/jshybugger/bl;->f:Lorg/jshybugger/aS;

    iput-object v0, v1, Lorg/jshybugger/aS;->b:Lorg/jshybugger/aS;

    iget-object v1, p0, Lorg/jshybugger/bl;->g:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/jshybugger/bl;->b(Lorg/jshybugger/aw;)V

    .line 132
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_26

    .line 134
    return-object p0

    .line 132
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Lorg/jshybugger/aS;)Lorg/jshybugger/aS;
    .registers 4

    .prologue
    .line 312
    sget-boolean v0, Lorg/jshybugger/bl;->h:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/jshybugger/bl;->e:Lorg/jshybugger/aS;

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lorg/jshybugger/bl;->f:Lorg/jshybugger/aS;

    if-ne p1, v0, :cond_12

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 317
    :cond_12
    monitor-enter p0

    .line 318
    :try_start_13
    invoke-virtual {p1}, Lorg/jshybugger/aS;->a()Lorg/jshybugger/aj;

    move-result-object v0

    invoke-interface {v0}, Lorg/jshybugger/aj;->g()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Lorg/jshybugger/aS;->d()Lorg/jshybugger/fK;

    move-result-object v0

    invoke-interface {v0}, Lorg/jshybugger/fK;->d()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 319
    :cond_27
    invoke-virtual {p0, p1}, Lorg/jshybugger/bl;->a(Lorg/jshybugger/aS;)V

    .line 320
    monitor-exit p0

    .line 339
    :goto_2b
    return-object p1

    .line 322
    :cond_2c
    invoke-virtual {p1}, Lorg/jshybugger/aS;->d()Lorg/jshybugger/fK;

    move-result-object v0

    new-instance v1, Lorg/jshybugger/bm;

    invoke-direct {v1, p0, p1}, Lorg/jshybugger/bm;-><init>(Lorg/jshybugger/bl;Lorg/jshybugger/aS;)V

    invoke-interface {v0, v1}, Lorg/jshybugger/fK;->a(Ljava/lang/Runnable;)Lorg/jshybugger/fN;

    move-result-object v0

    .line 332
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_13 .. :try_end_3a} :catchall_3e

    .line 337
    invoke-static {v0}, Lorg/jshybugger/bl;->a(Ljava/util/concurrent/Future;)V

    goto :goto_2b

    .line 332
    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Lorg/jshybugger/aw;)V
    .registers 4

    .prologue
    .line 470
    invoke-interface {p1}, Lorg/jshybugger/aw;->a()Lorg/jshybugger/aj;

    move-result-object v0

    invoke-interface {v0}, Lorg/jshybugger/aj;->g()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p1}, Lorg/jshybugger/aw;->d()Lorg/jshybugger/fK;

    move-result-object v0

    invoke-interface {v0}, Lorg/jshybugger/fK;->d()Z

    move-result v0

    if-nez v0, :cond_21

    .line 471
    invoke-interface {p1}, Lorg/jshybugger/aw;->d()Lorg/jshybugger/fK;

    move-result-object v0

    new-instance v1, Lorg/jshybugger/bo;

    invoke-direct {v1, p0, p1}, Lorg/jshybugger/bo;-><init>(Lorg/jshybugger/bl;Lorg/jshybugger/aw;)V

    invoke-interface {v0, v1}, Lorg/jshybugger/fK;->execute(Ljava/lang/Runnable;)V

    .line 480
    :goto_20
    return-void

    .line 479
    :cond_21
    invoke-direct {p0, p1}, Lorg/jshybugger/bl;->c(Lorg/jshybugger/aw;)V

    goto :goto_20
.end method

.method private c(Ljava/lang/String;)Lorg/jshybugger/aw;
    .registers 4

    .prologue
    .line 618
    if-nez p1, :cond_a

    .line 619
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_a
    monitor-enter p0

    .line 623
    :try_start_b
    iget-object v0, p0, Lorg/jshybugger/bl;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/aw;

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_15

    return-object v0

    .line 624
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Lorg/jshybugger/aS;)V
    .registers 4

    .prologue
    .line 509
    invoke-virtual {p1}, Lorg/jshybugger/aS;->a()Lorg/jshybugger/aj;

    move-result-object v0

    invoke-interface {v0}, Lorg/jshybugger/aj;->g()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lorg/jshybugger/aS;->d()Lorg/jshybugger/fK;

    move-result-object v0

    invoke-interface {v0}, Lorg/jshybugger/fK;->d()Z

    move-result v0

    if-nez v0, :cond_21

    .line 510
    invoke-virtual {p1}, Lorg/jshybugger/aS;->d()Lorg/jshybugger/fK;

    move-result-object v0

    new-instance v1, Lorg/jshybugger/bp;

    invoke-direct {v1, p0, p1}, Lorg/jshybugger/bp;-><init>(Lorg/jshybugger/bl;Lorg/jshybugger/aS;)V

    invoke-interface {v0, v1}, Lorg/jshybugger/fK;->execute(Ljava/lang/Runnable;)V

    .line 519
    :goto_20
    return-void

    .line 518
    :cond_21
    invoke-direct {p0, p1}, Lorg/jshybugger/bl;->d(Lorg/jshybugger/aS;)V

    goto :goto_20
.end method

.method private c(Lorg/jshybugger/aw;)V
    .registers 9

    .prologue
    .line 484
    :try_start_0
    invoke-interface {p1}, Lorg/jshybugger/aw;->f()Lorg/jshybugger/at;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/jshybugger/at;->c(Lorg/jshybugger/aw;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 506
    :goto_7
    return-void

    .line 485
    :catch_8
    move-exception v1

    move-object v2, v1

    .line 486
    const/4 v3, 0x0

    .line 488
    :try_start_b
    move-object v0, p1

    check-cast v0, Lorg/jshybugger/aS;

    move-object v1, v0

    invoke-direct {p0, v1}, Lorg/jshybugger/bl;->b(Lorg/jshybugger/aS;)Lorg/jshybugger/aS;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_12} :catch_3d

    .line 489
    const/4 v1, 0x1

    .line 496
    :goto_13
    if-eqz v1, :cond_60

    .line 497
    new-instance v1, Lorg/jshybugger/aK;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/jshybugger/aw;->f()Lorg/jshybugger/at;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".handlerAdded() has thrown an exception; removed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lorg/jshybugger/aK;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lorg/jshybugger/bl;->a(Ljava/lang/Throwable;)Lorg/jshybugger/aJ;

    goto :goto_7

    .line 490
    :catch_3d
    move-exception v1

    .line 491
    sget-object v4, Lorg/jshybugger/bl;->a:Lorg/jshybugger/gX;

    invoke-interface {v4}, Lorg/jshybugger/gX;->b()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 492
    sget-object v4, Lorg/jshybugger/bl;->a:Lorg/jshybugger/gX;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to remove a handler: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/jshybugger/aw;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5e
    move v1, v3

    goto :goto_13

    .line 501
    :cond_60
    new-instance v1, Lorg/jshybugger/aK;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/jshybugger/aw;->f()Lorg/jshybugger/at;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".handlerAdded() has thrown an exception; also failed to remove."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lorg/jshybugger/aK;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lorg/jshybugger/bl;->a(Ljava/lang/Throwable;)Lorg/jshybugger/aJ;

    goto :goto_7
.end method

.method private d(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 897
    iget-object v0, p0, Lorg/jshybugger/bl;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 898
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Duplicate handler name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 900
    :cond_1d
    return-void
.end method

.method private d(Lorg/jshybugger/aS;)V
    .registers 6

    .prologue
    .line 524
    :try_start_0
    invoke-virtual {p1}, Lorg/jshybugger/aS;->f()Lorg/jshybugger/at;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jshybugger/at;->d(Lorg/jshybugger/aw;)V

    .line 525
    invoke-virtual {p1}, Lorg/jshybugger/aS;->t()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    .line 530
    :goto_a
    return-void

    .line 526
    :catch_b
    move-exception v0

    .line 527
    new-instance v1, Lorg/jshybugger/aK;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/jshybugger/aS;->f()Lorg/jshybugger/at;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".handlerRemoved() has thrown an exception."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jshybugger/aK;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lorg/jshybugger/bl;->a(Ljava/lang/Throwable;)Lorg/jshybugger/aJ;

    goto :goto_a
.end method

.method private e(Ljava/lang/String;)Lorg/jshybugger/aS;
    .registers 3

    .prologue
    .line 903
    invoke-direct {p0, p1}, Lorg/jshybugger/bl;->c(Ljava/lang/String;)Lorg/jshybugger/aw;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/aS;

    .line 904
    if-nez v0, :cond_e

    .line 905
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 907
    :cond_e
    return-object v0
.end method


# virtual methods
.method public final a()Lorg/jshybugger/aJ;
    .registers 2

    .prologue
    .line 756
    iget-object v0, p0, Lorg/jshybugger/bl;->e:Lorg/jshybugger/aS;

    invoke-virtual {v0}, Lorg/jshybugger/aS;->m()Lorg/jshybugger/aw;

    .line 758
    iget-object v0, p0, Lorg/jshybugger/bl;->b:Lorg/jshybugger/Y;

    invoke-virtual {v0}, Lorg/jshybugger/Y;->A()Lorg/jshybugger/al;

    move-result-object v0

    invoke-interface {v0}, Lorg/jshybugger/al;->f()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 759
    iget-object v0, p0, Lorg/jshybugger/bl;->b:Lorg/jshybugger/Y;

    invoke-virtual {v0}, Lorg/jshybugger/Y;->j()Lorg/jshybugger/aj;

    .line 762
    :cond_16
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lorg/jshybugger/at;)Lorg/jshybugger/aJ;
    .registers 5

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/jshybugger/bl;->a(Lorg/jshybugger/fL;Ljava/lang/String;Ljava/lang/String;Lorg/jshybugger/at;)Lorg/jshybugger/aJ;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lorg/jshybugger/at;)Lorg/jshybugger/aJ;
    .registers 4

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/jshybugger/bl;->a(Lorg/jshybugger/fL;Ljava/lang/String;Lorg/jshybugger/at;)Lorg/jshybugger/aJ;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Throwable;)Lorg/jshybugger/aJ;
    .registers 3

    .prologue
    .line 773
    iget-object v0, p0, Lorg/jshybugger/bl;->e:Lorg/jshybugger/aS;

    invoke-virtual {v0, p1}, Lorg/jshybugger/aS;->b(Ljava/lang/Throwable;)Lorg/jshybugger/aw;

    .line 774
    return-object p0
.end method

.method public final a(Lorg/jshybugger/at;)Lorg/jshybugger/aJ;
    .registers 4

    .prologue
    .line 296
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lorg/jshybugger/bl;->e:Lorg/jshybugger/aS;

    iget-object v0, v0, Lorg/jshybugger/aS;->a:Lorg/jshybugger/aS;

    :goto_e
    if-nez v0, :cond_23

    const/4 v0, 0x0

    :cond_11
    check-cast v0, Lorg/jshybugger/aS;

    if-nez v0, :cond_2c

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    invoke-virtual {v0}, Lorg/jshybugger/aS;->f()Lorg/jshybugger/at;

    move-result-object v1

    if-eq v1, p1, :cond_11

    iget-object v0, v0, Lorg/jshybugger/aS;->a:Lorg/jshybugger/aS;

    goto :goto_e

    :cond_2c
    invoke-direct {p0, v0}, Lorg/jshybugger/bl;->b(Lorg/jshybugger/aS;)Lorg/jshybugger/aS;

    .line 297
    return-object p0
.end method

.method public final varargs a([Lorg/jshybugger/at;)Lorg/jshybugger/aJ;
    .registers 7

    .prologue
    .line 245
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handlers"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    array-length v1, p1

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_1d

    aget-object v2, p1, v0

    if-eqz v2, :cond_1d

    const/4 v3, 0x0

    invoke-direct {p0, v2}, Lorg/jshybugger/bl;->b(Lorg/jshybugger/at;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, v2}, Lorg/jshybugger/bl;->b(Lorg/jshybugger/fL;Ljava/lang/String;Lorg/jshybugger/at;)Lorg/jshybugger/aJ;

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1d
    return-object p0
.end method

.method public final a(Ljava/lang/Object;)Lorg/jshybugger/ao;
    .registers 3

    .prologue
    .line 878
    iget-object v0, p0, Lorg/jshybugger/bl;->f:Lorg/jshybugger/aS;

    invoke-virtual {v0, p1}, Lorg/jshybugger/aS;->a(Ljava/lang/Object;)Lorg/jshybugger/ao;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lorg/jshybugger/aM;)Lorg/jshybugger/ao;
    .registers 4

    .prologue
    .line 883
    iget-object v0, p0, Lorg/jshybugger/bl;->f:Lorg/jshybugger/aS;

    invoke-virtual {v0, p1, p2}, Lorg/jshybugger/aS;->a(Ljava/lang/Object;Lorg/jshybugger/aM;)Lorg/jshybugger/ao;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/jshybugger/aM;)Lorg/jshybugger/ao;
    .registers 5

    .prologue
    .line 852
    iget-object v0, p0, Lorg/jshybugger/bl;->f:Lorg/jshybugger/aS;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jshybugger/aS;->a(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/jshybugger/aM;)Lorg/jshybugger/ao;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/net/SocketAddress;Lorg/jshybugger/aM;)Lorg/jshybugger/ao;
    .registers 4

    .prologue
    .line 842
    iget-object v0, p0, Lorg/jshybugger/bl;->f:Lorg/jshybugger/aS;

    invoke-virtual {v0, p1, p2}, Lorg/jshybugger/aS;->a(Ljava/net/SocketAddress;Lorg/jshybugger/aM;)Lorg/jshybugger/ao;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/jshybugger/aM;)Lorg/jshybugger/ao;
    .registers 3

    .prologue
    .line 857
    iget-object v0, p0, Lorg/jshybugger/bl;->f:Lorg/jshybugger/aS;

    invoke-virtual {v0, p1}, Lorg/jshybugger/aS;->a(Lorg/jshybugger/aM;)Lorg/jshybugger/ao;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Class;)Lorg/jshybugger/at;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jshybugger/at;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Lorg/jshybugger/bl;->c(Ljava/lang/Class;)Lorg/jshybugger/aw;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/aS;

    if-nez v0, :cond_12

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    invoke-direct {p0, v0}, Lorg/jshybugger/bl;->b(Lorg/jshybugger/aS;)Lorg/jshybugger/aS;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/aS;->f()Lorg/jshybugger/at;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lorg/jshybugger/at;
    .registers 3

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lorg/jshybugger/bl;->e(Ljava/lang/String;)Lorg/jshybugger/aS;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jshybugger/bl;->b(Lorg/jshybugger/aS;)Lorg/jshybugger/aS;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/aS;->f()Lorg/jshybugger/at;

    move-result-object v0

    return-object v0
.end method

.method final a(Lorg/jshybugger/aS;)V
    .registers 4

    .prologue
    .line 343
    iget-object v0, p1, Lorg/jshybugger/aS;->b:Lorg/jshybugger/aS;

    .line 344
    iget-object v1, p1, Lorg/jshybugger/aS;->a:Lorg/jshybugger/aS;

    .line 345
    iput-object v1, v0, Lorg/jshybugger/aS;->a:Lorg/jshybugger/aS;

    .line 346
    iput-object v0, v1, Lorg/jshybugger/aS;->b:Lorg/jshybugger/aS;

    .line 347
    iget-object v0, p0, Lorg/jshybugger/bl;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/jshybugger/aS;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    invoke-direct {p0, p1}, Lorg/jshybugger/bl;->c(Lorg/jshybugger/aS;)V

    .line 349
    return-void
.end method

.method public final b()Lorg/jshybugger/aJ;
    .registers 2

    .prologue
    .line 791
    iget-object v0, p0, Lorg/jshybugger/bl;->e:Lorg/jshybugger/aS;

    invoke-virtual {v0}, Lorg/jshybugger/aS;->o()Lorg/jshybugger/aw;

    .line 792
    iget-object v0, p0, Lorg/jshybugger/bl;->b:Lorg/jshybugger/Y;

    invoke-virtual {v0}, Lorg/jshybugger/Y;->A()Lorg/jshybugger/al;

    move-result-object v0

    invoke-interface {v0}, Lorg/jshybugger/al;->f()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 793
    invoke-virtual {p0}, Lorg/jshybugger/bl;->i()Lorg/jshybugger/aJ;

    .line 795
    :cond_14
    return-object p0
.end method

.method public final b(Ljava/lang/String;Lorg/jshybugger/at;)Lorg/jshybugger/aJ;
    .registers 4

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/jshybugger/bl;->b(Lorg/jshybugger/fL;Ljava/lang/String;Lorg/jshybugger/at;)Lorg/jshybugger/aJ;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Lorg/jshybugger/ao;
    .registers 3

    .prologue
    .line 893
    iget-object v0, p0, Lorg/jshybugger/bl;->f:Lorg/jshybugger/aS;

    invoke-virtual {v0, p1}, Lorg/jshybugger/aS;->b(Ljava/lang/Object;)Lorg/jshybugger/ao;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Lorg/jshybugger/aM;)Lorg/jshybugger/ao;
    .registers 4

    .prologue
    .line 888
    iget-object v0, p0, Lorg/jshybugger/bl;->f:Lorg/jshybugger/aS;

    invoke-virtual {v0, p1, p2}, Lorg/jshybugger/aS;->b(Ljava/lang/Object;Lorg/jshybugger/aM;)Lorg/jshybugger/ao;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/net/SocketAddress;Lorg/jshybugger/aM;)Lorg/jshybugger/ao;
    .registers 4

    .prologue
    .line 847
    iget-object v0, p0, Lorg/jshybugger/bl;->f:Lorg/jshybugger/aS;

    invoke-virtual {v0, p1, p2}, Lorg/jshybugger/aS;->b(Ljava/net/SocketAddress;Lorg/jshybugger/aM;)Lorg/jshybugger/ao;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lorg/jshybugger/aM;)Lorg/jshybugger/ao;
    .registers 3

    .prologue
    .line 862
    iget-object v0, p0, Lorg/jshybugger/bl;->f:Lorg/jshybugger/aS;

    invoke-virtual {v0, p1}, Lorg/jshybugger/aS;->b(Lorg/jshybugger/aM;)Lorg/jshybugger/ao;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Class;)Lorg/jshybugger/at;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jshybugger/at;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 608
    invoke-virtual {p0, p1}, Lorg/jshybugger/bl;->c(Ljava/lang/Class;)Lorg/jshybugger/aw;

    move-result-object v0

    .line 609
    if-nez v0, :cond_8

    .line 610
    const/4 v0, 0x0

    .line 612
    :goto_7
    return-object v0

    :cond_8
    invoke-interface {v0}, Lorg/jshybugger/aw;->f()Lorg/jshybugger/at;

    move-result-object v0

    goto :goto_7
.end method

.method public final b(Ljava/lang/String;)Lorg/jshybugger/at;
    .registers 3

    .prologue
    .line 597
    invoke-direct {p0, p1}, Lorg/jshybugger/bl;->c(Ljava/lang/String;)Lorg/jshybugger/aw;

    move-result-object v0

    .line 598
    if-nez v0, :cond_8

    .line 599
    const/4 v0, 0x0

    .line 601
    :goto_7
    return-object v0

    :cond_8
    invoke-interface {v0}, Lorg/jshybugger/aw;->f()Lorg/jshybugger/at;

    move-result-object v0

    goto :goto_7
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lorg/jshybugger/at;)Lorg/jshybugger/at;
    .registers 5

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lorg/jshybugger/bl;->e(Ljava/lang/String;)Lorg/jshybugger/aS;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/jshybugger/bl;->a(Lorg/jshybugger/aS;Ljava/lang/String;Lorg/jshybugger/at;)Lorg/jshybugger/at;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lorg/jshybugger/aJ;
    .registers 2

    .prologue
    .line 800
    iget-object v0, p0, Lorg/jshybugger/bl;->e:Lorg/jshybugger/aS;

    invoke-virtual {v0}, Lorg/jshybugger/aS;->p()Lorg/jshybugger/aw;

    .line 801
    return-object p0
.end method

.method public final c(Ljava/lang/Object;)Lorg/jshybugger/aJ;
    .registers 3

    .prologue
    .line 779
    iget-object v0, p0, Lorg/jshybugger/bl;->e:Lorg/jshybugger/aS;

    invoke-virtual {v0, p1}, Lorg/jshybugger/aS;->c(Ljava/lang/Object;)Lorg/jshybugger/aw;

    .line 780
    return-object p0
.end method

.method public final c(Ljava/lang/Class;)Lorg/jshybugger/aw;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/jshybugger/at;",
            ">;)",
            "Lorg/jshybugger/aw;"
        }
    .end annotation

    .prologue
    .line 650
    if-nez p1, :cond_a

    .line 651
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handlerType"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 654
    :cond_a
    iget-object v0, p0, Lorg/jshybugger/bl;->e:Lorg/jshybugger/aS;

    iget-object v0, v0, Lorg/jshybugger/aS;->a:Lorg/jshybugger/aS;

    .line 656
    :goto_e
    if-nez v0, :cond_12

    .line 657
    const/4 v0, 0x0

    .line 660
    :cond_11
    return-object v0

    .line 659
    :cond_12
    invoke-virtual {v0}, Lorg/jshybugger/aS;->f()Lorg/jshybugger/at;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 662
    iget-object v0, v0, Lorg/jshybugger/aS;->a:Lorg/jshybugger/aS;

    goto :goto_e
.end method

.method public final d()Lorg/jshybugger/aJ;
    .registers 2

    .prologue
    .line 730
    iget-object v0, p0, Lorg/jshybugger/bl;->e:Lorg/jshybugger/aS;

    invoke-virtual {v0}, Lorg/jshybugger/aS;->i()Lorg/jshybugger/aw;

    .line 731
    return-object p0
.end method

.method public final d(Ljava/lang/Object;)Lorg/jshybugger/aJ;
    .registers 3

    .prologue
    .line 785
    iget-object v0, p0, Lorg/jshybugger/bl;->e:Lorg/jshybugger/aS;

    invoke-virtual {v0, p1}, Lorg/jshybugger/aS;->d(Ljava/lang/Object;)Lorg/jshybugger/aw;

    .line 786
    return-object p0
.end method

.method public final e()Lorg/jshybugger/aJ;
    .registers 2

    .prologue
    .line 736
    iget-object v0, p0, Lorg/jshybugger/bl;->e:Lorg/jshybugger/aS;

    invoke-virtual {v0}, Lorg/jshybugger/aS;->j()Lorg/jshybugger/aw;

    .line 739
    iget-object v0, p0, Lorg/jshybugger/bl;->b:Lorg/jshybugger/Y;

    invoke-virtual {v0}, Lorg/jshybugger/Y;->B()Z

    move-result v0

    if-nez v0, :cond_14

    .line 740
    iget-object v0, p0, Lorg/jshybugger/bl;->f:Lorg/jshybugger/aS;

    iget-object v0, v0, Lorg/jshybugger/aS;->b:Lorg/jshybugger/aS;

    invoke-virtual {v0}, Lorg/jshybugger/aS;->r()V

    .line 742
    :cond_14
    return-object p0
.end method

.method public final f()Lorg/jshybugger/aJ;
    .registers 2

    .prologue
    .line 767
    iget-object v0, p0, Lorg/jshybugger/bl;->e:Lorg/jshybugger/aS;

    invoke-virtual {v0}, Lorg/jshybugger/aS;->n()Lorg/jshybugger/aw;

    .line 768
    return-object p0
.end method

.method public final g()Lorg/jshybugger/aJ;
    .registers 2

    .prologue
    .line 836
    iget-object v0, p0, Lorg/jshybugger/bl;->f:Lorg/jshybugger/aS;

    invoke-virtual {v0}, Lorg/jshybugger/aS;->q()Lorg/jshybugger/aw;

    .line 837
    return-object p0
.end method

.method public final h()Lorg/jshybugger/ao;
    .registers 2

    .prologue
    .line 826
    iget-object v0, p0, Lorg/jshybugger/bl;->f:Lorg/jshybugger/aS;

    invoke-virtual {v0}, Lorg/jshybugger/aS;->h()Lorg/jshybugger/ao;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lorg/jshybugger/aJ;
    .registers 2

    .prologue
    .line 872
    iget-object v0, p0, Lorg/jshybugger/bl;->f:Lorg/jshybugger/aS;

    invoke-virtual {v0}, Lorg/jshybugger/aS;->s()Lorg/jshybugger/aw;

    .line 873
    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lorg/jshybugger/at;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 694
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v0, p0, Lorg/jshybugger/bl;->e:Lorg/jshybugger/aS;

    iget-object v0, v0, Lorg/jshybugger/aS;->a:Lorg/jshybugger/aS;

    :goto_9
    iget-object v2, p0, Lorg/jshybugger/bl;->f:Lorg/jshybugger/aS;

    if-ne v0, v2, :cond_16

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_16
    invoke-virtual {v0}, Lorg/jshybugger/aS;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jshybugger/aS;->f()Lorg/jshybugger/at;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lorg/jshybugger/aS;->a:Lorg/jshybugger/aS;

    goto :goto_9
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 703
    invoke-static {p0}, Lorg/jshybugger/gt;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 705
    iget-object v0, p0, Lorg/jshybugger/bl;->e:Lorg/jshybugger/aS;

    iget-object v0, v0, Lorg/jshybugger/aS;->a:Lorg/jshybugger/aS;

    .line 707
    :goto_15
    iget-object v2, p0, Lorg/jshybugger/bl;->f:Lorg/jshybugger/aS;

    if-eq v0, v2, :cond_4a

    .line 708
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 712
    invoke-virtual {v0}, Lorg/jshybugger/aS;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    invoke-virtual {v0}, Lorg/jshybugger/aS;->f()Lorg/jshybugger/at;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 717
    iget-object v0, v0, Lorg/jshybugger/aS;->a:Lorg/jshybugger/aS;

    .line 718
    iget-object v2, p0, Lorg/jshybugger/bl;->f:Lorg/jshybugger/aS;

    if-eq v0, v2, :cond_4a

    .line 719
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 724
    :cond_4a
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 725
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic y()Lorg/jshybugger/aI;
    .registers 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lorg/jshybugger/bl;->i()Lorg/jshybugger/aJ;

    move-result-object v0

    return-object v0
.end method
