.class public final Lorg/jshybugger/cl;
.super Lorg/jshybugger/bF;
.source "NioEventLoop.java"


# static fields
.field private static final d:Lorg/jshybugger/gX;

.field private static final e:Z

.field private static final f:I


# instance fields
.field a:Ljava/nio/channels/Selector;

.field private g:Lorg/jshybugger/cp;

.field private final h:Ljava/nio/channels/spi/SelectorProvider;

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private j:Z

.field private volatile k:I

.field private l:I

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 52
    const-class v1, Lorg/jshybugger/cl;

    invoke-static {v1}, Lorg/jshybugger/gY;->a(Ljava/lang/Class;)Lorg/jshybugger/gX;

    move-result-object v1

    sput-object v1, Lorg/jshybugger/cl;->d:Lorg/jshybugger/gX;

    .line 56
    const-string v1, "io.netty.noKeySetOptimization"

    invoke-static {v1, v0}, Lorg/jshybugger/gu;->a(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lorg/jshybugger/cl;->e:Z

    .line 68
    const-string v2, "sun.nio.ch.bugLevel"

    .line 70
    :try_start_13
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    if-nez v1, :cond_1e

    .line 72
    const-string v1, ""

    invoke-static {v2, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_1e} :catch_4e

    .line 80
    :cond_1e
    :goto_1e
    const-string v1, "io.netty.selectorAutoRebuildThreshold"

    const/16 v2, 0x200

    invoke-static {v1, v2}, Lorg/jshybugger/gu;->a(Ljava/lang/String;I)I

    move-result v1

    .line 81
    const/4 v2, 0x3

    if-ge v1, v2, :cond_5f

    .line 85
    :goto_29
    sput v0, Lorg/jshybugger/cl;->f:I

    .line 87
    sget-object v0, Lorg/jshybugger/cl;->d:Lorg/jshybugger/gX;

    invoke-interface {v0}, Lorg/jshybugger/gX;->a()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 88
    sget-object v0, Lorg/jshybugger/cl;->d:Lorg/jshybugger/gX;

    const-string v1, "-Dio.netty.noKeySetOptimization: {}"

    sget-boolean v2, Lorg/jshybugger/cl;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    sget-object v0, Lorg/jshybugger/cl;->d:Lorg/jshybugger/gX;

    const-string v1, "-Dio.netty.selectorAutoRebuildThreshold: {}"

    sget v2, Lorg/jshybugger/cl;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    :cond_4d
    return-void

    .line 74
    :catch_4e
    move-exception v1

    .line 75
    sget-object v3, Lorg/jshybugger/cl;->d:Lorg/jshybugger/gX;

    invoke-interface {v3}, Lorg/jshybugger/gX;->a()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 76
    sget-object v3, Lorg/jshybugger/cl;->d:Lorg/jshybugger/gX;

    const-string v4, "Unable to get/set System Property: {}"

    invoke-interface {v3, v4, v2, v1}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1e

    :cond_5f
    move v0, v1

    goto :goto_29
.end method

.method constructor <init>(Lorg/jshybugger/cn;Ljava/util/concurrent/ThreadFactory;Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 6

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jshybugger/bF;-><init>(Lorg/jshybugger/bv;Ljava/util/concurrent/ThreadFactory;Z)V

    .line 107
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/cl;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    const/16 v0, 0x32

    iput v0, p0, Lorg/jshybugger/cl;->k:I

    .line 116
    if-nez p3, :cond_19

    .line 117
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "selectorProvider"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_19
    iput-object p3, p0, Lorg/jshybugger/cl;->h:Ljava/nio/channels/spi/SelectorProvider;

    .line 120
    invoke-direct {p0}, Lorg/jshybugger/cl;->p()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/cl;->a:Ljava/nio/channels/Selector;

    .line 121
    return-void
.end method

.method private static a(Ljava/nio/channels/SelectionKey;Lorg/jshybugger/ce;)V
    .registers 5

    .prologue
    .line 473
    invoke-virtual {p1}, Lorg/jshybugger/ce;->F()Lorg/jshybugger/ci;

    move-result-object v0

    .line 474
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_12

    .line 476
    invoke-interface {v0}, Lorg/jshybugger/ci;->h()Lorg/jshybugger/aM;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jshybugger/ci;->b(Lorg/jshybugger/aM;)V

    .line 507
    :cond_11
    :goto_11
    return-void

    .line 481
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v1

    .line 484
    and-int/lit8 v2, v1, 0x11

    if-nez v2, :cond_1c

    if-nez v1, :cond_25

    .line 485
    :cond_1c
    invoke-interface {v0}, Lorg/jshybugger/ci;->j()V

    .line 486
    invoke-virtual {p1}, Lorg/jshybugger/ce;->B()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 491
    :cond_25
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_30

    .line 493
    invoke-virtual {p1}, Lorg/jshybugger/ce;->F()Lorg/jshybugger/ci;

    move-result-object v2

    invoke-interface {v2}, Lorg/jshybugger/ci;->l()V

    .line 495
    :cond_30
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_11

    .line 498
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    .line 499
    and-int/lit8 v1, v1, -0x9

    .line 500
    invoke-virtual {p0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 502
    invoke-interface {v0}, Lorg/jshybugger/ci;->k()V
    :try_end_40
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_12 .. :try_end_40} :catch_41

    goto :goto_11

    .line 505
    :catch_41
    move-exception v1

    invoke-interface {v0}, Lorg/jshybugger/ci;->h()Lorg/jshybugger/aM;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jshybugger/ci;->b(Lorg/jshybugger/aM;)V

    goto :goto_11
.end method

.method private static a(Ljava/nio/channels/SelectionKey;Lorg/jshybugger/co;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/SelectionKey;",
            "Lorg/jshybugger/co",
            "<",
            "Ljava/nio/channels/SelectableChannel;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 510
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_e
    .catchall {:try_start_1 .. :try_end_4} :catchall_16

    .line 513
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-nez v0, :cond_d

    .line 526
    invoke-static {p1, p0, v1}, Lorg/jshybugger/cl;->a(Lorg/jshybugger/co;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V

    .line 530
    :cond_d
    :goto_d
    return-void

    .line 514
    :catch_e
    move-exception v0

    .line 515
    :try_start_f
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 516
    invoke-static {p1, p0, v0}, Lorg/jshybugger/cl;->a(Lorg/jshybugger/co;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_16

    goto :goto_d

    .line 519
    :catchall_16
    move-exception v0

    .line 521
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 522
    invoke-static {p1, p0, v1}, Lorg/jshybugger/cl;->a(Lorg/jshybugger/co;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V

    .line 523
    throw v0
.end method

.method private a(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 406
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 440
    :cond_6
    return-void

    .line 410
    :cond_7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, v0

    .line 412
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 413
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    .line 414
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 416
    instance-of v3, v1, Lorg/jshybugger/ce;

    if-eqz v3, :cond_41

    .line 417
    check-cast v1, Lorg/jshybugger/ce;

    invoke-static {v0, v1}, Lorg/jshybugger/cl;->a(Ljava/nio/channels/SelectionKey;Lorg/jshybugger/ce;)V

    .line 424
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 425
    iget-boolean v0, p0, Lorg/jshybugger/cl;->m:Z

    if-eqz v0, :cond_47

    .line 429
    invoke-direct {p0}, Lorg/jshybugger/cl;->r()V

    .line 430
    iget-object v0, p0, Lorg/jshybugger/cl;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    .line 433
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 434
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3f
    move-object v2, v0

    .line 439
    goto :goto_c

    .line 420
    :cond_41
    check-cast v1, Lorg/jshybugger/co;

    .line 421
    invoke-static {v0, v1}, Lorg/jshybugger/cl;->a(Ljava/nio/channels/SelectionKey;Lorg/jshybugger/co;)V

    goto :goto_22

    :cond_47
    move-object v0, v2

    goto :goto_3f
.end method

.method private static a(Lorg/jshybugger/co;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/co",
            "<",
            "Ljava/nio/channels/SelectableChannel;",
            ">;",
            "Ljava/nio/channels/SelectionKey;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 556
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 560
    :goto_3
    return-void

    .line 557
    :catch_4
    move-exception v0

    .line 558
    sget-object v1, Lorg/jshybugger/cl;->d:Lorg/jshybugger/gX;

    const-string v2, "Unexpected exception while running NioTask.channelUnregistered()"

    invoke-interface {v1, v2, v0}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private a([Ljava/nio/channels/SelectionKey;)V
    .registers 6

    .prologue
    .line 443
    const/4 v0, 0x0

    move v1, v0

    .line 444
    :goto_2
    aget-object v2, p1, v1

    .line 445
    if-eqz v2, :cond_2b

    .line 446
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    .line 451
    instance-of v3, v0, Lorg/jshybugger/ce;

    if-eqz v3, :cond_25

    .line 452
    check-cast v0, Lorg/jshybugger/ce;

    invoke-static {v2, v0}, Lorg/jshybugger/cl;->a(Ljava/nio/channels/SelectionKey;Lorg/jshybugger/ce;)V

    .line 459
    :goto_13
    iget-boolean v0, p0, Lorg/jshybugger/cl;->m:Z

    if-eqz v0, :cond_21

    .line 460
    invoke-direct {p0}, Lorg/jshybugger/cl;->r()V

    .line 466
    iget-object v0, p0, Lorg/jshybugger/cl;->g:Lorg/jshybugger/cp;

    invoke-virtual {v0}, Lorg/jshybugger/cp;->a()[Ljava/nio/channels/SelectionKey;

    move-result-object p1

    .line 467
    const/4 v1, -0x1

    .line 443
    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 455
    :cond_25
    check-cast v0, Lorg/jshybugger/co;

    .line 456
    invoke-static {v2, v0}, Lorg/jshybugger/cl;->a(Ljava/nio/channels/SelectionKey;Lorg/jshybugger/co;)V

    goto :goto_13

    .line 470
    :cond_2b
    return-void
.end method

.method private p()Ljava/nio/channels/Selector;
    .registers 6

    .prologue
    .line 126
    :try_start_0
    iget-object v0, p0, Lorg/jshybugger/cl;->h:Ljava/nio/channels/spi/SelectorProvider;

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_b

    move-result-object v0

    .line 131
    sget-boolean v1, Lorg/jshybugger/cl;->e:Z

    if-eqz v1, :cond_14

    .line 162
    :cond_a
    :goto_a
    return-object v0

    .line 127
    :catch_b
    move-exception v0

    .line 128
    new-instance v1, Lorg/jshybugger/an;

    const-string v2, "failed to open a new selector"

    invoke-direct {v1, v2, v0}, Lorg/jshybugger/an;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 136
    :cond_14
    :try_start_14
    new-instance v1, Lorg/jshybugger/cp;

    invoke-direct {v1}, Lorg/jshybugger/cp;-><init>()V

    .line 138
    const-string v2, "sun.nio.ch.SelectorImpl"

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 142
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 146
    const-string v3, "selectedKeys"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 147
    const-string v4, "publicSelectedKeys"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 149
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 150
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 152
    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    iput-object v1, p0, Lorg/jshybugger/cl;->g:Lorg/jshybugger/cp;

    .line 156
    sget-object v1, Lorg/jshybugger/cl;->d:Lorg/jshybugger/gX;

    const-string v2, "Instrumented an optimized java.util.Set into: {}"

    invoke-interface {v1, v2, v0}, Lorg/jshybugger/gX;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_51} :catch_52

    goto :goto_a

    .line 157
    :catch_52
    move-exception v1

    .line 158
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/jshybugger/cl;->g:Lorg/jshybugger/cp;

    .line 159
    sget-object v2, Lorg/jshybugger/cl;->d:Lorg/jshybugger/gX;

    const-string v3, "Failed to instrument an optimized java.util.Set into: {}"

    invoke-interface {v2, v3, v0, v1}, Lorg/jshybugger/gX;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a
.end method

.method private q()V
    .registers 6

    .prologue
    .line 534
    invoke-direct {p0}, Lorg/jshybugger/cl;->r()V

    .line 535
    iget-object v0, p0, Lorg/jshybugger/cl;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    .line 536
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 537
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 538
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    .line 539
    instance-of v4, v1, Lorg/jshybugger/ce;

    if-eqz v4, :cond_31

    move-object v0, v1

    .line 540
    check-cast v0, Lorg/jshybugger/ce;

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 542
    :cond_31
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 544
    check-cast v1, Lorg/jshybugger/co;

    .line 545
    const/4 v4, 0x0

    invoke-static {v1, v0, v4}, Lorg/jshybugger/cl;->a(Lorg/jshybugger/co;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V

    goto :goto_16

    .line 549
    :cond_3b
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/ce;

    .line 550
    invoke-virtual {v0}, Lorg/jshybugger/ce;->F()Lorg/jshybugger/ci;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jshybugger/ce;->F()Lorg/jshybugger/ci;

    move-result-object v0

    invoke-interface {v0}, Lorg/jshybugger/ci;->h()Lorg/jshybugger/aM;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/jshybugger/ci;->b(Lorg/jshybugger/aM;)V

    goto :goto_3f

    .line 552
    :cond_5b
    return-void
.end method

.method private r()V
    .registers 4

    .prologue
    .line 640
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jshybugger/cl;->m:Z

    .line 642
    :try_start_3
    iget-object v0, p0, Lorg/jshybugger/cl;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_9

    .line 646
    :goto_8
    return-void

    .line 643
    :catch_9
    move-exception v0

    .line 644
    sget-object v1, Lorg/jshybugger/cl;->d:Lorg/jshybugger/gX;

    const-string v2, "Failed to update SelectionKeys."

    invoke-interface {v1, v2, v0}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8
.end method


# virtual methods
.method protected final a()Ljava/util/Queue;
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
    .line 168
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    return-object v0
.end method

.method public final a(I)V
    .registers 5

    .prologue
    .line 214
    if-lez p1, :cond_6

    const/16 v0, 0x64

    if-lt p1, v0, :cond_21

    .line 215
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ioRatio: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 0 < ioRatio < 100)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_21
    iput p1, p0, Lorg/jshybugger/cl;->k:I

    .line 218
    return-void
.end method

.method final a(Ljava/nio/channels/SelectionKey;)V
    .registers 4

    .prologue
    .line 385
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 386
    iget v0, p0, Lorg/jshybugger/cl;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jshybugger/cl;->l:I

    .line 387
    iget v0, p0, Lorg/jshybugger/cl;->l:I

    const/16 v1, 0x100

    if-lt v0, v1, :cond_15

    .line 388
    const/4 v0, 0x0

    iput v0, p0, Lorg/jshybugger/cl;->l:I

    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jshybugger/cl;->m:Z

    .line 391
    :cond_15
    return-void
.end method

.method protected final a(Z)V
    .registers 5

    .prologue
    .line 564
    if-nez p1, :cond_11

    iget-object v0, p0, Lorg/jshybugger/cl;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 565
    iget-object v0, p0, Lorg/jshybugger/cl;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 567
    :cond_11
    return-void
.end method

.method public final e()V
    .registers 11

    .prologue
    .line 225
    invoke-virtual {p0}, Lorg/jshybugger/cl;->d()Z

    move-result v1

    if-nez v1, :cond_f

    .line 226
    new-instance v1, Lorg/jshybugger/cm;

    invoke-direct {v1, p0}, Lorg/jshybugger/cm;-><init>(Lorg/jshybugger/cl;)V

    invoke-virtual {p0, v1}, Lorg/jshybugger/cl;->execute(Ljava/lang/Runnable;)V

    .line 296
    :cond_e
    :goto_e
    return-void

    .line 235
    :cond_f
    iget-object v5, p0, Lorg/jshybugger/cl;->a:Ljava/nio/channels/Selector;

    .line 238
    if-eqz v5, :cond_e

    .line 243
    :try_start_13
    invoke-direct {p0}, Lorg/jshybugger/cl;->p()Ljava/nio/channels/Selector;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_4c

    move-result-object v6

    .line 250
    const/4 v1, 0x0

    .line 253
    :goto_18
    :try_start_18
    invoke-virtual {v5}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_1f
    .catch Ljava/util/ConcurrentModificationException; {:try_start_18 .. :try_end_1f} :catch_b0

    move-result-object v7

    move v4, v1

    :cond_21
    :goto_21
    :try_start_21
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 254
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;
    :try_end_30
    .catch Ljava/util/ConcurrentModificationException; {:try_start_21 .. :try_end_30} :catch_75

    move-result-object v2

    .line 256
    :try_start_31
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    if-nez v3, :cond_21

    .line 260
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v3

    .line 261
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 262
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v8

    invoke-virtual {v8, v6, v3, v2}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_49} :catch_55
    .catch Ljava/util/ConcurrentModificationException; {:try_start_31 .. :try_end_49} :catch_75

    .line 263
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 244
    :catch_4c
    move-exception v1

    .line 245
    sget-object v2, Lorg/jshybugger/cl;->d:Lorg/jshybugger/gX;

    const-string v3, "Failed to create a new Selector."

    invoke-interface {v2, v3, v1}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    .line 264
    :catch_55
    move-exception v3

    .line 265
    :try_start_56
    sget-object v8, Lorg/jshybugger/cl;->d:Lorg/jshybugger/gX;

    const-string v9, "Failed to re-register a Channel to the new Selector."

    invoke-interface {v8, v9, v3}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    instance-of v8, v2, Lorg/jshybugger/ce;

    if-eqz v8, :cond_78

    .line 267
    move-object v0, v2

    check-cast v0, Lorg/jshybugger/ce;

    move-object v1, v0

    .line 268
    invoke-virtual {v1}, Lorg/jshybugger/ce;->F()Lorg/jshybugger/ci;

    move-result-object v2

    invoke-virtual {v1}, Lorg/jshybugger/ce;->F()Lorg/jshybugger/ci;

    move-result-object v1

    invoke-interface {v1}, Lorg/jshybugger/ci;->h()Lorg/jshybugger/aM;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/jshybugger/ci;->b(Lorg/jshybugger/aM;)V

    goto :goto_21

    .line 278
    :catch_75
    move-exception v1

    move v1, v4

    goto :goto_18

    .line 271
    :cond_78
    check-cast v2, Lorg/jshybugger/co;

    .line 272
    invoke-static {v2, v1, v3}, Lorg/jshybugger/cl;->a(Lorg/jshybugger/co;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V
    :try_end_7d
    .catch Ljava/util/ConcurrentModificationException; {:try_start_56 .. :try_end_7d} :catch_75

    goto :goto_21

    .line 284
    :cond_7e
    iput-object v6, p0, Lorg/jshybugger/cl;->a:Ljava/nio/channels/Selector;

    .line 288
    :try_start_80
    invoke-virtual {v5}, Ljava/nio/channels/Selector;->close()V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_83} :catch_9f

    .line 295
    :cond_83
    :goto_83
    sget-object v1, Lorg/jshybugger/cl;->d:Lorg/jshybugger/gX;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Migrated "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " channel(s) to the new Selector."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jshybugger/gX;->b(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 289
    :catch_9f
    move-exception v1

    .line 290
    sget-object v2, Lorg/jshybugger/cl;->d:Lorg/jshybugger/gX;

    invoke-interface {v2}, Lorg/jshybugger/gX;->b()Z

    move-result v2

    if-eqz v2, :cond_83

    .line 291
    sget-object v2, Lorg/jshybugger/cl;->d:Lorg/jshybugger/gX;

    const-string v3, "Failed to close the old Selector."

    invoke-interface {v2, v3, v1}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_83

    .line 278
    :catch_b0
    move-exception v2

    goto/16 :goto_18
.end method

.method protected final f()V
    .registers 13

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 301
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/jshybugger/cl;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jshybugger/cl;->j:Z

    .line 303
    :try_start_a
    invoke-virtual {p0}, Lorg/jshybugger/cl;->k()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 304
    invoke-virtual {p0}, Lorg/jshybugger/cl;->i()V

    .line 341
    :cond_13
    :goto_13
    const/4 v0, 0x0

    iput v0, p0, Lorg/jshybugger/cl;->l:I

    .line 343
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 344
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/jshybugger/cl;->m:Z

    .line 345
    iget-object v4, p0, Lorg/jshybugger/cl;->g:Lorg/jshybugger/cp;

    if-eqz v4, :cond_11a

    .line 346
    iget-object v4, p0, Lorg/jshybugger/cl;->g:Lorg/jshybugger/cp;

    invoke-virtual {v4}, Lorg/jshybugger/cp;->a()[Ljava/nio/channels/SelectionKey;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/jshybugger/cl;->a([Ljava/nio/channels/SelectionKey;)V

    .line 350
    :goto_2a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v0, v4, v0

    .line 352
    iget v4, p0, Lorg/jshybugger/cl;->k:I

    .line 353
    rsub-int/lit8 v5, v4, 0x64

    int-to-long v6, v5

    mul-long/2addr v0, v6

    int-to-long v4, v4

    div-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Lorg/jshybugger/cl;->a(J)Z

    .line 355
    invoke-virtual {p0}, Lorg/jshybugger/cl;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    invoke-direct {p0}, Lorg/jshybugger/cl;->q()V

    .line 357
    invoke-virtual {p0}, Lorg/jshybugger/cl;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    return-void

    .line 306
    :cond_4b
    iget-object v6, p0, Lorg/jshybugger/cl;->a:Ljava/nio/channels/Selector;
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_4d} :catch_9d

    :try_start_4d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-object v0, p0, Lorg/jshybugger/ge;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/gd;

    if-nez v0, :cond_af

    sget-wide v0, Lorg/jshybugger/ge;->c:J

    :goto_5d
    add-long v8, v4, v0

    move v0, v3

    :goto_60
    sub-long v4, v8, v4

    const-wide/32 v10, 0x7a120

    add-long/2addr v4, v10

    const-wide/32 v10, 0xf4240

    div-long/2addr v4, v10

    const-wide/16 v10, 0x0

    cmp-long v1, v4, v10

    if-gtz v1, :cond_b4

    if-nez v0, :cond_76

    invoke-virtual {v6}, Ljava/nio/channels/Selector;->selectNow()I

    move v0, v2

    :cond_76
    :goto_76
    const/4 v1, 0x3

    if-le v0, v1, :cond_8e

    sget-object v1, Lorg/jshybugger/cl;->d:Lorg/jshybugger/gX;

    invoke-interface {v1}, Lorg/jshybugger/gX;->a()Z

    move-result v1

    if-eqz v1, :cond_8e

    sget-object v1, Lorg/jshybugger/cl;->d:Lorg/jshybugger/gX;

    const-string v4, "Selector.select() returned prematurely {} times in a row."

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8e
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_4d .. :try_end_8e} :catch_f1
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_8e} :catch_9d

    .line 336
    :cond_8e
    :goto_8e
    :try_start_8e
    iget-object v0, p0, Lorg/jshybugger/cl;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 337
    iget-object v0, p0, Lorg/jshybugger/cl;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_9b
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_9b} :catch_9d

    goto/16 :goto_13

    .line 361
    :catch_9d
    move-exception v0

    .line 362
    sget-object v1, Lorg/jshybugger/cl;->d:Lorg/jshybugger/gX;

    const-string v4, "Unexpected exception in the selector loop."

    invoke-interface {v1, v4, v0}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 367
    const-wide/16 v0, 0x3e8

    :try_start_a7
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_aa
    .catch Ljava/lang/InterruptedException; {:try_start_a7 .. :try_end_aa} :catch_ac

    goto/16 :goto_2

    .line 371
    :catch_ac
    move-exception v0

    goto/16 :goto_2

    .line 306
    :cond_af
    :try_start_af
    invoke-virtual {v0, v4, v5}, Lorg/jshybugger/gd;->c(J)J

    move-result-wide v0

    goto :goto_5d

    :cond_b4
    invoke-virtual {v6, v4, v5}, Ljava/nio/channels/Selector;->select(J)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    if-nez v1, :cond_76

    iget-boolean v1, p0, Lorg/jshybugger/cl;->j:Z

    if-nez v1, :cond_76

    iget-object v1, p0, Lorg/jshybugger/cl;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_76

    invoke-virtual {p0}, Lorg/jshybugger/cl;->k()Z

    move-result v1

    if-nez v1, :cond_76

    sget v1, Lorg/jshybugger/cl;->f:I

    if-lez v1, :cond_eb

    sget v1, Lorg/jshybugger/cl;->f:I

    if-lt v0, v1, :cond_eb

    sget-object v1, Lorg/jshybugger/cl;->d:Lorg/jshybugger/gX;

    const-string v4, "Selector.select() returned prematurely {} times in a row; rebuilding selector."

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Lorg/jshybugger/gX;->c(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/jshybugger/cl;->e()V

    iget-object v0, p0, Lorg/jshybugger/cl;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I

    move v0, v2

    goto :goto_76

    :cond_eb
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_ee
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_af .. :try_end_ee} :catch_f1
    .catch Ljava/lang/Throwable; {:try_start_af .. :try_end_ee} :catch_9d

    move-result-wide v4

    goto/16 :goto_60

    :catch_f1
    move-exception v0

    :try_start_f2
    sget-object v1, Lorg/jshybugger/cl;->d:Lorg/jshybugger/gX;

    invoke-interface {v1}, Lorg/jshybugger/gX;->a()Z

    move-result v1

    if-eqz v1, :cond_8e

    sget-object v1, Lorg/jshybugger/cl;->d:Lorg/jshybugger/gX;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Ljava/nio/channels/CancelledKeyException;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " raised by a Selector - JDK bug?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Lorg/jshybugger/gX;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8e

    .line 348
    :cond_11a
    iget-object v4, p0, Lorg/jshybugger/cl;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/jshybugger/cl;->a(Ljava/util/Set;)V
    :try_end_123
    .catch Ljava/lang/Throwable; {:try_start_f2 .. :try_end_123} :catch_9d

    goto/16 :goto_2a
.end method

.method protected final g()V
    .registers 4

    .prologue
    .line 378
    :try_start_0
    iget-object v0, p0, Lorg/jshybugger/cl;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 382
    :goto_5
    return-void

    .line 379
    :catch_6
    move-exception v0

    .line 380
    sget-object v1, Lorg/jshybugger/cl;->d:Lorg/jshybugger/gX;

    const-string v2, "Failed to close a selector."

    invoke-interface {v1, v2, v0}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method protected final h()Ljava/lang/Runnable;
    .registers 3

    .prologue
    .line 395
    invoke-super {p0}, Lorg/jshybugger/bF;->h()Ljava/lang/Runnable;

    move-result-object v0

    .line 396
    iget-boolean v1, p0, Lorg/jshybugger/cl;->m:Z

    if-eqz v1, :cond_b

    .line 397
    invoke-direct {p0}, Lorg/jshybugger/cl;->r()V

    .line 399
    :cond_b
    return-object v0
.end method

.method final i()V
    .registers 3

    .prologue
    .line 571
    :try_start_0
    iget-object v0, p0, Lorg/jshybugger/cl;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_13

    .line 574
    iget-object v0, p0, Lorg/jshybugger/cl;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 575
    iget-object v0, p0, Lorg/jshybugger/cl;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 578
    :cond_12
    return-void

    .line 574
    :catchall_13
    move-exception v0

    iget-object v1, p0, Lorg/jshybugger/cl;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 575
    iget-object v1, p0, Lorg/jshybugger/cl;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    :cond_21
    throw v0
.end method
