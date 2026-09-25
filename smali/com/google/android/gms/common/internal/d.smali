.class public abstract Lcom/google/android/gms/common/internal/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$a;
.implements Lcom/google/android/gms/common/internal/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/d$e;,
        Lcom/google/android/gms/common/internal/d$h;,
        Lcom/google/android/gms/common/internal/d$g;,
        Lcom/google/android/gms/common/internal/d$c;,
        Lcom/google/android/gms/common/internal/d$d;,
        Lcom/google/android/gms/common/internal/d$b;,
        Lcom/google/android/gms/common/internal/d$a;,
        Lcom/google/android/gms/common/internal/d$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/Api$a;",
        "Lcom/google/android/gms/common/internal/e$b;"
    }
.end annotation


# static fields
.field public static final Lw:[Ljava/lang/String;


# instance fields
.field private final Ds:[Ljava/lang/String;

.field private final IB:Landroid/os/Looper;

.field private final IQ:Lcom/google/android/gms/common/internal/e;

.field private Lr:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final Ls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/internal/d",
            "<TT;>.b<*>;>;"
        }
    .end annotation
.end field

.field private Lt:Lcom/google/android/gms/common/internal/d$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/internal/d",
            "<TT;>.f;"
        }
    .end annotation
.end field

.field private volatile Lu:I

.field Lv:Z

.field private final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "service_esmobile"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_googleme"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/internal/d;->Lw:[Ljava/lang/String;

    return-void
.end method

.method protected varargs constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/d;->Ls:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/internal/d;->Lu:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/d;->Lv:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/n;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/d;->mContext:Landroid/content/Context;

    const-string v0, "Looper must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/d;->IB:Landroid/os/Looper;

    new-instance v0, Lcom/google/android/gms/common/internal/e;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/android/gms/common/internal/e;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/e$b;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/d;->IQ:Lcom/google/android/gms/common/internal/e;

    new-instance v0, Lcom/google/android/gms/common/internal/d$a;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/common/internal/d$a;-><init>(Lcom/google/android/gms/common/internal/d;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/d;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p5}, Lcom/google/android/gms/common/internal/d;->c([Ljava/lang/String;)V

    iput-object p5, p0, Lcom/google/android/gms/common/internal/d;->Ds:[Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/n;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/d;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    invoke-static {p4}, Lcom/google/android/gms/common/internal/n;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/d;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method protected varargs constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/common/internal/d$c;

    invoke-direct {v3, p2}, Lcom/google/android/gms/common/internal/d$c;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    new-instance v4, Lcom/google/android/gms/common/internal/d$g;

    invoke-direct {v4, p3}, Lcom/google/android/gms/common/internal/d$g;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/d;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/d;Landroid/os/IInterface;)Landroid/os/IInterface;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/d;->Lr:Landroid/os/IInterface;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/internal/d$f;)Lcom/google/android/gms/common/internal/d$f;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/d;->Lt:Lcom/google/android/gms/common/internal/d$f;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/d;)Lcom/google/android/gms/common/internal/e;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->IQ:Lcom/google/android/gms/common/internal/e;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/d;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/d;->az(I)V

    return-void
.end method

.method private az(I)V
    .registers 4

    const/4 v1, 0x3

    iget v0, p0, Lcom/google/android/gms/common/internal/d;->Lu:I

    iput p1, p0, Lcom/google/android/gms/common/internal/d;->Lu:I

    if-eq v0, p1, :cond_c

    if-ne p1, v1, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->onConnected()V

    :cond_c
    :goto_c
    return-void

    :cond_d
    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->onDisconnected()V

    goto :goto_c
.end method

.method static synthetic b(Lcom/google/android/gms/common/internal/d;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->Ls:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/common/internal/d;)Landroid/os/IInterface;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->Lr:Landroid/os/IInterface;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/common/internal/d;)Lcom/google/android/gms/common/internal/d$f;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->Lt:Lcom/google/android/gms/common/internal/d$f;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/common/internal/d;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected final N(Landroid/os/IBinder;)V
    .registers 4

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/k$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/k;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/internal/d$e;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/internal/d$e;-><init>(Lcom/google/android/gms/common/internal/d;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/common/internal/d;->a(Lcom/google/android/gms/common/internal/k;Lcom/google/android/gms/common/internal/d$e;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    const-string v0, "GmsClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/d;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/gms/common/internal/d$h;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/d$h;-><init>(Lcom/google/android/gms/common/internal/d;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/internal/d$b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/d",
            "<TT;>.b<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/internal/d;->Ls:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->Ls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_16

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/d;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method protected abstract a(Lcom/google/android/gms/common/internal/k;Lcom/google/android/gms/common/internal/d$e;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public aA(I)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/d;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected varargs c([Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public connect()V
    .registers 5

    const/4 v3, 0x3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/common/internal/d;->Lv:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/internal/d;->az(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_23

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/internal/d;->az(I)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/d;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/d;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_22
    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->Lt:Lcom/google/android/gms/common/internal/d$f;

    if-eqz v0, :cond_40

    const-string v0, "GmsClient"

    const-string v1, "Calling connect() while still connected, missing disconnect()."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/d;->Lr:Landroid/os/IInterface;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/f;->J(Landroid/content/Context;)Lcom/google/android/gms/common/internal/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->getStartServiceAction()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/d;->Lt:Lcom/google/android/gms/common/internal/d$f;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/f;->b(Ljava/lang/String;Lcom/google/android/gms/common/internal/d$f;)V

    :cond_40
    new-instance v0, Lcom/google/android/gms/common/internal/d$f;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/d$f;-><init>(Lcom/google/android/gms/common/internal/d;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/d;->Lt:Lcom/google/android/gms/common/internal/d$f;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/f;->J(Landroid/content/Context;)Lcom/google/android/gms/common/internal/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->getStartServiceAction()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/d;->Lt:Lcom/google/android/gms/common/internal/d$f;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/f;->a(Ljava/lang/String;Lcom/google/android/gms/common/internal/d$f;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "GmsClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to connect to service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->getStartServiceAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/d;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_22
.end method

.method protected final dK()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->isConnected()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method

.method public disconnect()V
    .registers 6

    const/4 v4, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/d;->Lv:Z

    iget-object v2, p0, Lcom/google/android/gms/common/internal/d;->Ls:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/common/internal/d;->Ls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_e
    if-ge v1, v3, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->Ls:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/d$b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/d$b;->gV()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->Ls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_41

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/internal/d;->az(I)V

    iput-object v4, p0, Lcom/google/android/gms/common/internal/d;->Lr:Landroid/os/IInterface;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->Lt:Lcom/google/android/gms/common/internal/d$f;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/f;->J(Landroid/content/Context;)Lcom/google/android/gms/common/internal/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->getStartServiceAction()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/d;->Lt:Lcom/google/android/gms/common/internal/d$f;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/f;->b(Ljava/lang/String;Lcom/google/android/gms/common/internal/d$f;)V

    iput-object v4, p0, Lcom/google/android/gms/common/internal/d;->Lt:Lcom/google/android/gms/common/internal/d$f;

    :cond_40
    return-void

    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v0
.end method

.method public fD()Landroid/os/Bundle;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final gR()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->Ds:[Ljava/lang/String;

    return-object v0
.end method

.method public final gS()Landroid/os/IInterface;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->dK()V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->Lr:Landroid/os/IInterface;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->IB:Landroid/os/Looper;

    return-object v0
.end method

.method protected abstract getServiceDescriptor()Ljava/lang/String;
.end method

.method protected abstract getStartServiceAction()Ljava/lang/String;
.end method

.method public gr()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/d;->Lv:Z

    return v0
.end method

.method public isConnected()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/common/internal/d;->Lu:I

    const/4 v1, 0x3

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

    iget v0, p0, Lcom/google/android/gms/common/internal/d;->Lu:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z
    .registers 4
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/internal/d;, "Lcom/google/android/gms/common/internal/d<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->IQ:Lcom/google/android/gms/common/internal/e;

    new-instance v1, Lcom/google/android/gms/common/internal/d$c;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/internal/d$c;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/e;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z

    move-result v0

    return v0
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z
    .registers 3
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/internal/d;, "Lcom/google/android/gms/common/internal/d<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->IQ:Lcom/google/android/gms/common/internal/e;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/e;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z

    move-result v0

    return v0
.end method

.method protected abstract j(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method protected onConnected()V
    .registers 1

    return-void
.end method

.method protected onDisconnected()V
    .registers 1

    return-void
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .registers 4
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/internal/d;, "Lcom/google/android/gms/common/internal/d<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->IQ:Lcom/google/android/gms/common/internal/e;

    new-instance v1, Lcom/google/android/gms/common/internal/d$c;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/internal/d$c;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/e;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/internal/d;, "Lcom/google/android/gms/common/internal/d<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->IQ:Lcom/google/android/gms/common/internal/e;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/e;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/internal/d;, "Lcom/google/android/gms/common/internal/d<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->IQ:Lcom/google/android/gms/common/internal/e;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/e;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/internal/d;, "Lcom/google/android/gms/common/internal/d<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->IQ:Lcom/google/android/gms/common/internal/e;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/e;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .registers 4
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/internal/d;, "Lcom/google/android/gms/common/internal/d<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->IQ:Lcom/google/android/gms/common/internal/e;

    new-instance v1, Lcom/google/android/gms/common/internal/d$c;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/internal/d$c;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/e;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/internal/d;, "Lcom/google/android/gms/common/internal/d<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->IQ:Lcom/google/android/gms/common/internal/e;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/e;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method
