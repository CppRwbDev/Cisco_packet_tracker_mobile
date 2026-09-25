.class final Lcom/google/android/gms/common/api/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/b$b;,
        Lcom/google/android/gms/common/api/b$c;,
        Lcom/google/android/gms/common/api/b$a;
    }
.end annotation


# instance fields
.field private final IB:Landroid/os/Looper;

.field private final IO:Ljava/util/concurrent/locks/Lock;

.field private final IP:Ljava/util/concurrent/locks/Condition;

.field private final IQ:Lcom/google/android/gms/common/internal/e;

.field private final IR:I

.field final IS:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/common/api/b$c",
            "<*>;>;"
        }
    .end annotation
.end field

.field private IT:Lcom/google/android/gms/common/ConnectionResult;

.field private IU:I

.field private volatile IV:I

.field private volatile IW:I

.field private IX:Z

.field private IY:I

.field private IZ:J

.field private final Iu:Lcom/google/android/gms/common/api/b$a;

.field final Ja:Landroid/os/Handler;

.field private final Jb:Landroid/os/Bundle;

.field private final Jc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$c",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$a;",
            ">;"
        }
    .end annotation
.end field

.field private final Jd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Je:Z

.field private final Jf:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/c",
            "<*>;>;"
        }
    .end annotation
.end field

.field final Jg:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/b$c",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final Jh:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

.field private final Ji:Lcom/google/android/gms/common/internal/e$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;I)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/internal/ClientSettings;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    iget-object v2, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/b;->IP:Ljava/util/concurrent/locks/Condition;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/b;->IS:Ljava/util/Queue;

    const/4 v2, 0x4

    iput v2, p0, Lcom/google/android/gms/common/api/b;->IV:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/common/api/b;->IX:Z

    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/google/android/gms/common/api/b;->IZ:J

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/b;->Jb:Landroid/os/Bundle;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/b;->Jc:Ljava/util/Map;

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/b;->Jf:Ljava/util/Set;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/b;->Jg:Ljava/util/Set;

    new-instance v2, Lcom/google/android/gms/common/api/b$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/b$1;-><init>(Lcom/google/android/gms/common/api/b;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/b;->Iu:Lcom/google/android/gms/common/api/b$a;

    new-instance v2, Lcom/google/android/gms/common/api/b$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/b$2;-><init>(Lcom/google/android/gms/common/api/b;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/b;->Jh:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    new-instance v2, Lcom/google/android/gms/common/api/b$3;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/b$3;-><init>(Lcom/google/android/gms/common/api/b;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/b;->Ji:Lcom/google/android/gms/common/internal/e$b;

    new-instance v2, Lcom/google/android/gms/common/internal/e;

    iget-object v3, p0, Lcom/google/android/gms/common/api/b;->Ji:Lcom/google/android/gms/common/internal/e$b;

    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/common/internal/e;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/e$b;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/b;->IQ:Lcom/google/android/gms/common/internal/e;

    iput-object p2, p0, Lcom/google/android/gms/common/api/b;->IB:Landroid/os/Looper;

    new-instance v2, Lcom/google/android/gms/common/api/b$b;

    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/common/api/b$b;-><init>(Lcom/google/android/gms/common/api/b;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/b;->Ja:Landroid/os/Handler;

    move/from16 v0, p7

    iput v0, p0, Lcom/google/android/gms/common/api/b;->IR:I

    invoke-interface/range {p5 .. p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_76
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_88

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    iget-object v4, p0, Lcom/google/android/gms/common/api/b;->IQ:Lcom/google/android/gms/common/internal/e;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/e;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    goto :goto_76

    :cond_88
    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    iget-object v4, p0, Lcom/google/android/gms/common/api/b;->IQ:Lcom/google/android/gms/common/internal/e;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/e;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    goto :goto_8c

    :cond_9e
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_a6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/Api;->gd()Lcom/google/android/gms/common/api/Api$b;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v10, p0, Lcom/google/android/gms/common/api/b;->Jc:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/Api;->gf()Lcom/google/android/gms/common/api/Api$c;

    move-result-object v11

    iget-object v7, p0, Lcom/google/android/gms/common/api/b;->Jh:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    new-instance v8, Lcom/google/android/gms/common/api/b$4;

    invoke-direct {v8, p0, v2}, Lcom/google/android/gms/common/api/b$4;-><init>(Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/common/api/Api$b;)V

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/Api$b;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;

    move-result-object v2

    invoke-interface {v10, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a6

    :cond_d5
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/ClientSettings;->getScopes()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/b;->Jd:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/b;->IT:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method

.method private static a(Lcom/google/android/gms/common/api/Api$b;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$a;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$b",
            "<TC;TO;>;",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/internal/ClientSettings;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ")TC;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/common/api/Api$b;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/b;)Ljava/util/concurrent/locks/Lock;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private a(Lcom/google/android/gms/common/api/b$c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$a;",
            ">(",
            "Lcom/google/android/gms/common/api/b$c",
            "<TA;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    invoke-interface {p1}, Lcom/google/android/gms/common/api/b$c;->gf()Lcom/google/android/gms/common/api/Api$c;

    move-result-object v0

    if-eqz v0, :cond_31

    const/4 v0, 0x1

    :goto_c
    const-string v1, "This task can not be executed or enqueued (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->Jg:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->Iu:Lcom/google/android/gms/common/api/b$a;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/b$c;->a(Lcom/google/android/gms/common/api/b$a;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/b;->gp()Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/b$c;->m(Lcom/google/android/gms/common/api/Status;)V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_44

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_30
    return-void

    :cond_31
    const/4 v0, 0x0

    goto :goto_c

    :cond_33
    :try_start_33
    invoke-interface {p1}, Lcom/google/android/gms/common/api/b$c;->gf()Lcom/google/android/gms/common/api/Api$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/b$c;->b(Lcom/google/android/gms/common/api/Api$a;)V
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_44

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_30

    :catchall_44
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/b;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;->aj(I)V

    return-void
.end method

.method private aj(I)V
    .registers 7

    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_8
    iget v0, p0, Lcom/google/android/gms/common/api/b;->IV:I

    if-eq v0, v1, :cond_d6

    if-ne p1, v4, :cond_8a

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IS:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/b$c;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/b$c;->gk()I

    move-result v2

    if-eq v2, v3, :cond_1a

    invoke-interface {v0}, Lcom/google/android/gms/common/api/b$c;->cancel()V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_33

    goto :goto_1a

    :catchall_33
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3a
    :try_start_3a
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IS:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :cond_3f
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->Jg:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/b$c;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/b$c;->cancel()V

    goto :goto_45

    :cond_55
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->Jg:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->Jf:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_60
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/c;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c;->clear()V

    goto :goto_60

    :cond_70
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->Jf:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IT:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v0, :cond_8a

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IS:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/b;->IX:Z
    :try_end_84
    .catchall {:try_start_3a .. :try_end_84} :catchall_33

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_89
    return-void

    :cond_8a
    :try_start_8a
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->isConnecting()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->isConnected()Z

    move-result v1

    const/4 v2, 0x3

    iput v2, p0, Lcom/google/android/gms/common/api/b;->IV:I

    if-eqz v0, :cond_a1

    if-ne p1, v4, :cond_9c

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/b;->IT:Lcom/google/android/gms/common/ConnectionResult;

    :cond_9c
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IP:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    :cond_a1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/b;->Je:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->Jc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_ae
    :goto_ae
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$a;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$a;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_ae

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$a;->disconnect()V

    goto :goto_ae

    :cond_c4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/b;->Je:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/common/api/b;->IV:I

    if-eqz v1, :cond_d6

    if-eq p1, v4, :cond_d3

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IQ:Lcom/google/android/gms/common/internal/e;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/e;->aB(I)V

    :cond_d3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/b;->Je:Z
    :try_end_d6
    .catchall {:try_start_8a .. :try_end_d6} :catchall_33

    :cond_d6
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_89
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/b;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/api/b;->IV:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/b;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/gms/common/api/b;->IW:I

    return p1
.end method

.method static synthetic c(Lcom/google/android/gms/common/api/b;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/gms/common/api/b;->IU:I

    return p1
.end method

.method static synthetic c(Lcom/google/android/gms/common/api/b;)Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->Jb:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/common/api/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/b;->gn()V

    return-void
.end method

.method static synthetic e(Lcom/google/android/gms/common/api/b;)Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/b;->gp()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/google/android/gms/common/api/b;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/common/api/b;->IZ:J

    return-wide v0
.end method

.method static synthetic g(Lcom/google/android/gms/common/api/b;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/b;->Je:Z

    return v0
.end method

.method private gn()V
    .registers 6

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/android/gms/common/api/b;->IY:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/api/b;->IY:I

    iget v0, p0, Lcom/google/android/gms/common/api/b;->IY:I

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IT:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_34

    iput-boolean v4, p0, Lcom/google/android/gms/common/api/b;->IX:Z

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/b;->aj(I)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/b;->gp()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->Ja:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->Ja:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/common/api/b;->IZ:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_29
    iput-boolean v4, p0, Lcom/google/android/gms/common/api/b;->Je:Z

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IQ:Lcom/google/android/gms/common/internal/e;

    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->IT:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/e;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_29

    :cond_34
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/api/b;->IV:I

    invoke-direct {p0}, Lcom/google/android/gms/common/api/b;->gq()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IP:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/b;->go()V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/b;->IX:Z

    if-eqz v0, :cond_4d

    iput-boolean v4, p0, Lcom/google/android/gms/common/api/b;->IX:Z

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/b;->aj(I)V

    goto :goto_2b

    :cond_4d
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->Jb:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5c

    const/4 v0, 0x0

    :goto_56
    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->IQ:Lcom/google/android/gms/common/internal/e;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/e;->d(Landroid/os/Bundle;)V

    goto :goto_2b

    :cond_5c
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->Jb:Landroid/os/Bundle;

    goto :goto_56
.end method

.method private go()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->isConnected()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-direct {p0}, Lcom/google/android/gms/common/api/b;->gp()Z

    move-result v0

    if-eqz v0, :cond_3b

    :cond_11
    const/4 v0, 0x1

    :goto_12
    const-string v1, "GoogleApiClient is not connected yet."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->a(ZLjava/lang/Object;)V

    :goto_17
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IS:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_34

    move-result v0

    if-nez v0, :cond_3d

    :try_start_1f
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IS:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/b$c;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/b$c;)V
    :try_end_2a
    .catch Landroid/os/DeadObjectException; {:try_start_1f .. :try_end_2a} :catch_2b
    .catchall {:try_start_1f .. :try_end_2a} :catchall_34

    goto :goto_17

    :catch_2b
    move-exception v0

    :try_start_2c
    const-string v1, "GoogleApiClientImpl"

    const-string v2, "Service died while flushing queue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_34

    goto :goto_17

    :catchall_34
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3b
    const/4 v0, 0x0

    goto :goto_12

    :cond_3d
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method private gp()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/api/b;->IW:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private gq()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    :try_start_6
    iput v0, p0, Lcom/google/android/gms/common/api/b;->IW:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->Ja:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_14

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_14
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic h(Lcom/google/android/gms/common/api/b;)I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/common/api/b;->IW:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/android/gms/common/api/b;->IW:I

    return v0
.end method

.method static synthetic i(Lcom/google/android/gms/common/api/b;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IT:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/gms/common/api/b;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/api/b;->IU:I

    return v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$a;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$c",
            "<TC;>;)TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->Jc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$a;

    const-string v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$a;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/common/api/BaseImplementation$a",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    new-instance v0, Lcom/google/android/gms/common/api/BaseImplementation$CallbackHandler;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/BaseImplementation$CallbackHandler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/BaseImplementation$a;->a(Lcom/google/android/gms/common/api/BaseImplementation$CallbackHandler;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/b;->b(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_26

    :goto_1a
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IS:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_26

    goto :goto_1a

    :catchall_26
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Lcom/google/android/gms/common/api/Scope;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->Jd:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Scope;->gt()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$a;",
            "T:",
            "Lcom/google/android/gms/common/api/BaseImplementation$a",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->isConnected()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/google/android/gms/common/api/b;->gp()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_d
    move v0, v1

    :goto_e
    const-string v2, "GoogleApiClient is not connected yet."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/n;->a(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/b;->go()V

    :try_start_16
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/b$c;)V
    :try_end_19
    .catch Landroid/os/DeadObjectException; {:try_start_16 .. :try_end_19} :catch_1c

    :goto_19
    return-object p1

    :cond_1a
    const/4 v0, 0x0

    goto :goto_e

    :catch_1c
    move-exception v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/b;->aj(I)V

    goto :goto_19
.end method

.method public blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .registers 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_3a

    const/4 v0, 0x1

    :goto_b
    const-string v1, "blockingConnect must not be called on the UI thread"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_15
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->connect()V

    :goto_18
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->isConnecting()Z
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_64

    move-result v0

    if-eqz v0, :cond_3c

    :try_start_1e
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IP:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_23} :catch_24
    .catchall {:try_start_1e .. :try_end_23} :catchall_64

    goto :goto_18

    :catch_24
    move-exception v0

    :try_start_25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_34
    .catchall {:try_start_25 .. :try_end_34} :catchall_64

    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_39
    return-object v0

    :cond_3a
    const/4 v0, 0x0

    goto :goto_b

    :cond_3c
    :try_start_3c
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4a

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->HE:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_64

    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_39

    :cond_4a
    :try_start_4a
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IT:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IT:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_64

    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_39

    :cond_56
    :try_start_56
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_5e
    .catchall {:try_start_56 .. :try_end_5e} :catchall_64

    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_39

    :catchall_64
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 9
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_3c

    const/4 v0, 0x1

    :goto_b
    const-string v1, "blockingConnect must not be called on the UI thread"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_15
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->connect()V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->isConnecting()Z
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_7c

    move-result v2

    if-eqz v2, :cond_54

    :try_start_22
    iget-object v2, p0, Lcom/google/android/gms/common/api/b;->IP:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1c

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_36} :catch_3e
    .catchall {:try_start_22 .. :try_end_36} :catchall_7c

    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_3b
    return-object v0

    :cond_3c
    const/4 v0, 0x0

    goto :goto_b

    :catch_3e
    move-exception v0

    :try_start_3f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_4e
    .catchall {:try_start_3f .. :try_end_4e} :catchall_7c

    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3b

    :cond_54
    :try_start_54
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_62

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->HE:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_5c
    .catchall {:try_start_54 .. :try_end_5c} :catchall_7c

    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3b

    :cond_62
    :try_start_62
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IT:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IT:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_7c

    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3b

    :cond_6e
    :try_start_6e
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_76
    .catchall {:try_start_6e .. :try_end_76} :catchall_7c

    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3b

    :catchall_7c
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public c(Ljava/lang/Object;)Lcom/google/android/gms/common/api/c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(T",
            "L;",
            ")",
            "Lcom/google/android/gms/common/api/c",
            "<T",
            "L;",
            ">;"
        }
    .end annotation

    const-string v0, "Listener must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_a
    new-instance v0, Lcom/google/android/gms/common/api/c;

    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->IB:Landroid/os/Looper;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/api/c;-><init>(Landroid/os/Looper;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->Jf:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_1c

    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_1c
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public connect()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/b;->IX:Z

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->isConnected()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->isConnecting()Z
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_4a

    move-result v0

    if-eqz v0, :cond_1a

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_19
    return-void

    :cond_1a
    const/4 v0, 0x1

    :try_start_1b
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/b;->Je:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/b;->IT:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/api/b;->IV:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->Jb:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->Jc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/b;->IY:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->Jc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$a;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$a;->connect()V
    :try_end_49
    .catchall {:try_start_1b .. :try_end_49} :catchall_4a

    goto :goto_3a

    :catchall_4a
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_51
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_19
.end method

.method public disconnect()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/b;->gq()V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/b;->aj(I)V

    return-void
.end method

.method public getLooper()Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IB:Landroid/os/Looper;

    return-object v0
.end method

.method public isConnected()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/common/api/b;->IV:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isConnecting()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/common/api/b;->IV:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z
    .registers 3
    .param p1, "listener"    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IQ:Lcom/google/android/gms/common/internal/e;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/e;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z

    move-result v0

    return v0
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z
    .registers 3
    .param p1, "listener"    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IQ:Lcom/google/android/gms/common/internal/e;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/e;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z

    move-result v0

    return v0
.end method

.method public reconnect()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->disconnect()V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->connect()V

    return-void
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IQ:Lcom/google/android/gms/common/internal/e;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/e;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IQ:Lcom/google/android/gms/common/internal/e;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/e;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public stopAutoManage(Landroid/support/v4/app/FragmentActivity;)V
    .registers 4
    .param p1, "lifecycleActivity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    iget v0, p0, Lcom/google/android/gms/common/api/b;->IR:I

    if-ltz v0, :cond_14

    const/4 v0, 0x1

    :goto_5
    const-string v1, "Called stopAutoManage but automatic lifecycle management is not enabled."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->a(ZLjava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/common/api/d;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/google/android/gms/common/api/d;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/common/api/b;->IR:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/d;->al(I)V

    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IQ:Lcom/google/android/gms/common/internal/e;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/e;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->IQ:Lcom/google/android/gms/common/internal/e;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/e;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method
