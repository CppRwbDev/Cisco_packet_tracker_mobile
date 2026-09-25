.class public abstract Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/BaseImplementation$b;
.implements Lcom/google/android/gms/common/api/PendingResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/BaseImplementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractPendingResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/BaseImplementation$b",
        "<TR;>;",
        "Lcom/google/android/gms/common/api/PendingResult",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final Im:Ljava/lang/Object;

.field private final In:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/PendingResult$a;",
            ">;"
        }
    .end annotation
.end field

.field private Io:Lcom/google/android/gms/common/api/ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<TR;>;"
        }
    .end annotation
.end field

.field private volatile Ip:Lcom/google/android/gms/common/api/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private volatile Iq:Z

.field private Ir:Z

.field private Is:Z

.field private It:Lcom/google/android/gms/common/internal/i;

.field protected mHandler:Lcom/google/android/gms/common/api/BaseImplementation$CallbackHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/BaseImplementation$CallbackHandler",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final mg:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Im:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->mg:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->In:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;, "Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Im:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->mg:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->In:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/gms/common/api/BaseImplementation$CallbackHandler;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/BaseImplementation$CallbackHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->mHandler:Lcom/google/android/gms/common/api/BaseImplementation$CallbackHandler;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/BaseImplementation$CallbackHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$CallbackHandler",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;, "Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult<TR;>;"
    .local p1, "callbackHandler":Lcom/google/android/gms/common/api/BaseImplementation$CallbackHandler;, "Lcom/google/android/gms/common/api/BaseImplementation$CallbackHandler<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Im:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->mg:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->In:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->mHandler:Lcom/google/android/gms/common/api/BaseImplementation$CallbackHandler;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->gj()V

    return-void
.end method

.method private c(Lcom/google/android/gms/common/api/Result;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Ip:Lcom/google/android/gms/common/api/Result;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->It:Lcom/google/android/gms/common/internal/i;

    iget-object v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->mg:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Ip:Lcom/google/android/gms/common/api/Result;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Io:Lcom/google/android/gms/common/api/ResultCallback;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->mHandler:Lcom/google/android/gms/common/api/BaseImplementation$CallbackHandler;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/BaseImplementation$CallbackHandler;->removeTimeoutMessages()V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Ir:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->mHandler:Lcom/google/android/gms/common/api/BaseImplementation$CallbackHandler;

    iget-object v2, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Io:Lcom/google/android/gms/common/api/ResultCallback;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->gg()Lcom/google/android/gms/common/api/Result;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/api/BaseImplementation$CallbackHandler;->sendResultCallback(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->In:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/PendingResult$a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult$a;->n(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_2e

    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->In:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private gg()Lcom/google/android/gms/common/api/Result;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Im:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Iq:Z

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    :goto_8
    const-string v2, "Result has already been consumed."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/n;->a(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->isReady()Z

    move-result v0

    const-string v2, "Result is not ready."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/n;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Ip:Lcom/google/android/gms/common/api/Result;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->gh()V

    monitor-exit v1

    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_8

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method private gi()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Im:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->isReady()Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/google/android/gms/common/api/Status;->Jp:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->b(Lcom/google/android/gms/common/api/Result;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Is:Z

    :cond_15
    monitor-exit v1

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method private gj()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Im:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->isReady()Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/google/android/gms/common/api/Status;->Jr:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->b(Lcom/google/android/gms/common/api/Result;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Is:Z

    :cond_15
    monitor-exit v1

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/api/BaseImplementation$CallbackHandler;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$CallbackHandler",
            "<TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->mHandler:Lcom/google/android/gms/common/api/BaseImplementation$CallbackHandler;

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/PendingResult$a;)V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Iq:Z

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    :goto_5
    const-string v1, "Result has already been consumed."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->a(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Im:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->isReady()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Ip:Lcom/google/android/gms/common/api/Result;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/PendingResult$a;->n(Lcom/google/android/gms/common/api/Status;)V

    :goto_1c
    monitor-exit v1

    return-void

    :cond_1e
    const/4 v0, 0x0

    goto :goto_5

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->In:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_26

    throw v0
.end method

.method protected final a(Lcom/google/android/gms/common/internal/i;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Im:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->It:Lcom/google/android/gms/common/internal/i;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final await()Lcom/google/android/gms/common/api/Result;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v0, v3, :cond_2e

    move v0, v1

    :goto_d
    const-string v3, "await must not be called on the UI thread"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/n;->a(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Iq:Z

    if-nez v0, :cond_30

    :goto_16
    const-string v0, "Result has already been consumed"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/n;->a(ZLjava/lang/Object;)V

    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->mg:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_20} :catch_32

    :goto_20
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->isReady()Z

    move-result v0

    const-string v1, "Result is not ready."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->a(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->gg()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0

    :cond_2e
    move v0, v2

    goto :goto_d

    :cond_30
    move v1, v2

    goto :goto_16

    :catch_32
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->gi()V

    goto :goto_20
.end method

.method public final await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;
    .registers 11
    .param p1, "time"    # J
    .param p3, "units"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;, "Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult<TR;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-lez v0, :cond_12

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v0, v3, :cond_3a

    :cond_12
    move v0, v2

    :goto_13
    const-string v3, "await must not be called on the UI thread when time is greater than zero."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/n;->a(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Iq:Z

    if-nez v0, :cond_3c

    :goto_1c
    const-string v0, "Result has already been consumed."

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/n;->a(ZLjava/lang/Object;)V

    :try_start_21
    iget-object v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->mg:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-direct {p0}, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->gj()V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_2c} :catch_3e

    :cond_2c
    :goto_2c
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->isReady()Z

    move-result v0

    const-string v1, "Result is not ready."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->a(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->gg()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0

    :cond_3a
    move v0, v1

    goto :goto_13

    :cond_3c
    move v2, v1

    goto :goto_1c

    :catch_3e
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->gi()V

    goto :goto_2c
.end method

.method public final b(Lcom/google/android/gms/common/api/Result;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Im:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    iget-boolean v2, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Is:Z

    if-nez v2, :cond_d

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Ir:Z

    if-eqz v2, :cond_12

    :cond_d
    invoke-static {p1}, Lcom/google/android/gms/common/api/BaseImplementation;->a(Lcom/google/android/gms/common/api/Result;)V

    monitor-exit v3

    :goto_11
    return-void

    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->isReady()Z

    move-result v2

    if-nez v2, :cond_2f

    move v2, v0

    :goto_19
    const-string v4, "Results have already been set"

    invoke-static {v2, v4}, Lcom/google/android/gms/common/internal/n;->a(ZLjava/lang/Object;)V

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Iq:Z

    if-nez v2, :cond_31

    :goto_22
    const-string v1, "Result has already been consumed"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->a(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->c(Lcom/google/android/gms/common/api/Result;)V

    monitor-exit v3

    goto :goto_11

    :catchall_2c
    move-exception v0

    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2c

    throw v0

    :cond_2f
    move v2, v1

    goto :goto_19

    :cond_31
    move v0, v1

    goto :goto_22
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/common/api/Result;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method protected abstract c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")TR;"
        }
    .end annotation
.end method

.method public cancel()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Im:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Ir:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Iq:Z

    if-eqz v0, :cond_d

    :cond_b
    monitor-exit v1

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->It:Lcom/google/android/gms/common/internal/i;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_2c

    if-eqz v0, :cond_16

    :try_start_11
    iget-object v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->It:Lcom/google/android/gms/common/internal/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/internal/i;->cancel()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_2f
    .catchall {:try_start_11 .. :try_end_16} :catchall_2c

    :cond_16
    :goto_16
    :try_start_16
    iget-object v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Ip:Lcom/google/android/gms/common/api/Result;

    invoke-static {v0}, Lcom/google/android/gms/common/api/BaseImplementation;->a(Lcom/google/android/gms/common/api/Result;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Io:Lcom/google/android/gms/common/api/ResultCallback;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Ir:Z

    sget-object v0, Lcom/google/android/gms/common/api/Status;->Js:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->c(Lcom/google/android/gms/common/api/Result;)V

    monitor-exit v1

    goto :goto_c

    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_16 .. :try_end_2e} :catchall_2c

    throw v0

    :catch_2f
    move-exception v0

    goto :goto_16
.end method

.method protected gh()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Iq:Z

    iput-object v1, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Ip:Lcom/google/android/gms/common/api/Result;

    iput-object v1, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Io:Lcom/google/android/gms/common/api/ResultCallback;

    return-void
.end method

.method public isCanceled()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Im:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Ir:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final isReady()Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->mg:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;, "Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult<TR;>;"
    .local p1, "callback":Lcom/google/android/gms/common/api/ResultCallback;, "Lcom/google/android/gms/common/api/ResultCallback<TR;>;"
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Iq:Z

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_5
    const-string v1, "Result has already been consumed."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->a(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Im:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_17

    monitor-exit v1

    :goto_14
    return-void

    :cond_15
    const/4 v0, 0x0

    goto :goto_5

    :cond_17
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->mHandler:Lcom/google/android/gms/common/api/BaseImplementation$CallbackHandler;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->gg()Lcom/google/android/gms/common/api/Result;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/common/api/BaseImplementation$CallbackHandler;->sendResultCallback(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    :goto_26
    monitor-exit v1

    goto :goto_14

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_28

    throw v0

    :cond_2b
    :try_start_2b
    iput-object p1, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Io:Lcom/google/android/gms/common/api/ResultCallback;
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_28

    goto :goto_26
.end method

.method public final setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V
    .registers 9
    .param p2, "time"    # J
    .param p4, "units"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<TR;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;, "Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult<TR;>;"
    .local p1, "callback":Lcom/google/android/gms/common/api/ResultCallback;, "Lcom/google/android/gms/common/api/ResultCallback<TR;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Iq:Z

    if-nez v0, :cond_20

    move v0, v1

    :goto_7
    const-string v3, "Result has already been consumed."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/n;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->mHandler:Lcom/google/android/gms/common/api/BaseImplementation$CallbackHandler;

    if-eqz v0, :cond_22

    :goto_10
    const-string v0, "CallbackHandler has not been set before calling setResultCallback."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/n;->a(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Im:Ljava/lang/Object;

    monitor-enter v1

    :try_start_18
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_24

    monitor-exit v1

    :goto_1f
    return-void

    :cond_20
    move v0, v2

    goto :goto_7

    :cond_22
    move v1, v2

    goto :goto_10

    :cond_24
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->isReady()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->mHandler:Lcom/google/android/gms/common/api/BaseImplementation$CallbackHandler;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->gg()Lcom/google/android/gms/common/api/Result;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/common/api/BaseImplementation$CallbackHandler;->sendResultCallback(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    :goto_33
    monitor-exit v1

    goto :goto_1f

    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_18 .. :try_end_37} :catchall_35

    throw v0

    :cond_38
    :try_start_38
    iput-object p1, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->Io:Lcom/google/android/gms/common/api/ResultCallback;

    iget-object v0, p0, Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;->mHandler:Lcom/google/android/gms/common/api/BaseImplementation$CallbackHandler;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/google/android/gms/common/api/BaseImplementation$CallbackHandler;->sendTimeoutResultCallback(Lcom/google/android/gms/common/api/BaseImplementation$AbstractPendingResult;J)V
    :try_end_43
    .catchall {:try_start_38 .. :try_end_43} :catchall_35

    goto :goto_33
.end method
