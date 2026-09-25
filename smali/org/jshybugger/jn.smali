.class final Lorg/jshybugger/jN;
.super Ljava/lang/Object;
.source "ConnectionFlow.java"


# instance fields
.field final a:Lorg/jshybugger/jG;

.field final b:Lorg/jshybugger/kq;

.field volatile c:Lorg/jshybugger/jR;

.field final d:Ljava/lang/Object;

.field private e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/jshybugger/jR;",
            ">;"
        }
    .end annotation
.end field

.field private volatile f:Z


# direct methods
.method constructor <init>(Lorg/jshybugger/jG;Lorg/jshybugger/kq;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/jN;->e:Ljava/util/Queue;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jshybugger/jN;->f:Z

    .line 40
    iput-object p1, p0, Lorg/jshybugger/jN;->a:Lorg/jshybugger/jG;

    .line 41
    iput-object p2, p0, Lorg/jshybugger/jN;->b:Lorg/jshybugger/kq;

    .line 42
    iput-object p3, p0, Lorg/jshybugger/jN;->d:Ljava/lang/Object;

    .line 43
    return-void
.end method

.method static synthetic a(Lorg/jshybugger/jN;Lorg/jshybugger/kp;)V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lorg/jshybugger/jN;->a(Lorg/jshybugger/kp;)V

    return-void
.end method

.method private a(Lorg/jshybugger/kp;)V
    .registers 4

    .prologue
    .line 139
    iget-object v0, p0, Lorg/jshybugger/jN;->c:Lorg/jshybugger/jR;

    invoke-virtual {v0}, Lorg/jshybugger/jR;->b()Lorg/jshybugger/fN;

    move-result-object v0

    new-instance v1, Lorg/jshybugger/jP;

    invoke-direct {v1, p0, p1}, Lorg/jshybugger/jP;-><init>(Lorg/jshybugger/jN;Lorg/jshybugger/kp;)V

    invoke-interface {v0, v1}, Lorg/jshybugger/fN;->d(Lorg/jshybugger/fO;)Lorg/jshybugger/fN;

    .line 157
    return-void
.end method


# virtual methods
.method final a(Lorg/jshybugger/jR;)Lorg/jshybugger/jN;
    .registers 3

    .prologue
    .line 52
    iget-object v0, p0, Lorg/jshybugger/jN;->e:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 53
    return-object p0
.end method

.method final a()V
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Lorg/jshybugger/jN;->a:Lorg/jshybugger/jG;

    iget-object v1, p0, Lorg/jshybugger/jN;->b:Lorg/jshybugger/kq;

    invoke-virtual {v0}, Lorg/jshybugger/jG;->d()V

    .line 76
    invoke-virtual {p0}, Lorg/jshybugger/jN;->b()V

    .line 77
    return-void
.end method

.method final a(Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 178
    iget-object v0, p0, Lorg/jshybugger/jN;->b:Lorg/jshybugger/kq;

    invoke-virtual {v0}, Lorg/jshybugger/kq;->o()Lorg/jshybugger/jS;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lorg/jshybugger/jN;->b:Lorg/jshybugger/kq;

    invoke-virtual {v1}, Lorg/jshybugger/kq;->m()Lorg/jshybugger/fN;

    move-result-object v1

    new-instance v2, Lorg/jshybugger/jQ;

    invoke-direct {v2, p0, v0, p1}, Lorg/jshybugger/jQ;-><init>(Lorg/jshybugger/jN;Lorg/jshybugger/jS;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lorg/jshybugger/fN;->d(Lorg/jshybugger/fO;)Lorg/jshybugger/fN;

    .line 198
    return-void
.end method

.method final b()V
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 86
    iget-object v0, p0, Lorg/jshybugger/jN;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/jR;

    iput-object v0, p0, Lorg/jshybugger/jN;->c:Lorg/jshybugger/jR;

    .line 87
    iget-object v0, p0, Lorg/jshybugger/jN;->c:Lorg/jshybugger/jR;

    if-nez v0, :cond_3b

    .line 88
    iget-object v3, p0, Lorg/jshybugger/jN;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_13
    iget-object v0, p0, Lorg/jshybugger/jN;->b:Lorg/jshybugger/kq;

    invoke-virtual {v0}, Lorg/jshybugger/kq;->r()Lorg/jshybugger/kp;

    move-result-object v0

    const-string v4, "Connection flow completed successfully: {}"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/jshybugger/jN;->c:Lorg/jshybugger/jR;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Lorg/jshybugger/kp;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jshybugger/jN;->b:Lorg/jshybugger/kq;

    iget-boolean v4, p0, Lorg/jshybugger/jN;->f:Z

    if-nez v4, :cond_36

    :goto_2c
    invoke-virtual {v0, v2}, Lorg/jshybugger/kq;->a(Z)V

    iget-object v0, p0, Lorg/jshybugger/jN;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_35
    .catchall {:try_start_13 .. :try_end_35} :catchall_38

    .line 92
    :goto_35
    return-void

    :cond_36
    move v2, v1

    .line 88
    goto :goto_2c

    :catchall_38
    move-exception v0

    monitor-exit v3

    throw v0

    .line 90
    :cond_3b
    iget-object v0, p0, Lorg/jshybugger/jN;->c:Lorg/jshybugger/jR;

    iget-object v3, v0, Lorg/jshybugger/jR;->a:Lorg/jshybugger/kd;

    invoke-virtual {v3}, Lorg/jshybugger/kd;->r()Lorg/jshybugger/kp;

    move-result-object v4

    const-string v0, "Processing connection flow step: {}"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/jshybugger/jN;->c:Lorg/jshybugger/jR;

    aput-object v6, v5, v1

    invoke-virtual {v4, v0, v5}, Lorg/jshybugger/kp;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jshybugger/jN;->c:Lorg/jshybugger/jR;

    iget-object v0, v0, Lorg/jshybugger/jR;->b:Lorg/jshybugger/jS;

    invoke-virtual {v3, v0}, Lorg/jshybugger/kd;->b(Lorg/jshybugger/jS;)V

    iget-boolean v0, p0, Lorg/jshybugger/jN;->f:Z

    if-nez v0, :cond_61

    iget-object v0, p0, Lorg/jshybugger/jN;->c:Lorg/jshybugger/jR;

    invoke-virtual {v0}, Lorg/jshybugger/jR;->a()Z

    move-result v0

    if-eqz v0, :cond_7b

    :cond_61
    move v0, v2

    :goto_62
    iput-boolean v0, p0, Lorg/jshybugger/jN;->f:Z

    iget-object v0, p0, Lorg/jshybugger/jN;->c:Lorg/jshybugger/jR;

    invoke-virtual {v0}, Lorg/jshybugger/jR;->c()Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, v3, Lorg/jshybugger/kd;->f:Lorg/jshybugger/aw;

    invoke-interface {v0}, Lorg/jshybugger/aw;->d()Lorg/jshybugger/fK;

    move-result-object v0

    new-instance v1, Lorg/jshybugger/jO;

    invoke-direct {v1, p0, v4}, Lorg/jshybugger/jO;-><init>(Lorg/jshybugger/jN;Lorg/jshybugger/kp;)V

    invoke-interface {v0, v1}, Lorg/jshybugger/fK;->a(Ljava/lang/Runnable;)Lorg/jshybugger/fN;

    goto :goto_35

    :cond_7b
    move v0, v1

    goto :goto_62

    :cond_7d
    invoke-direct {p0, v4}, Lorg/jshybugger/jN;->a(Lorg/jshybugger/kp;)V

    goto :goto_35
.end method

.method final c()V
    .registers 2

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jshybugger/jN;->a(Ljava/lang/Throwable;)V

    .line 205
    return-void
.end method
