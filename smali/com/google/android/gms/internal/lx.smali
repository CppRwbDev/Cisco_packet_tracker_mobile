.class public Lcom/google/android/gms/internal/lx;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/lx$a;,
        Lcom/google/android/gms/internal/lx$b;
    }
.end annotation


# instance fields
.field private final Dh:Lcom/google/android/gms/internal/md;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/md",
            "<",
            "Lcom/google/android/gms/internal/lw;",
            ">;"
        }
    .end annotation
.end field

.field private aeG:Landroid/content/ContentProviderClient;

.field private aeH:Z

.field private aeI:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/gms/location/LocationListener;",
            "Lcom/google/android/gms/internal/lx$b;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/md;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/md",
            "<",
            "Lcom/google/android/gms/internal/lw;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/lx;->aeG:Landroid/content/ContentProviderClient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/lx;->aeH:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/lx;->aeI:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/google/android/gms/internal/lx;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/lx;->Dh:Lcom/google/android/gms/internal/md;

    return-void
.end method

.method private a(Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)Lcom/google/android/gms/internal/lx$b;
    .registers 6

    if-nez p2, :cond_b

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "Can\'t create handler inside thread that has not called Looper.prepare()"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/lx;->aeI:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_e
    iget-object v0, p0, Lcom/google/android/gms/internal/lx;->aeI:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lx$b;

    if-nez v0, :cond_1d

    new-instance v0, Lcom/google/android/gms/internal/lx$b;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/lx$b;-><init>(Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V

    :cond_1d
    iget-object v2, p0, Lcom/google/android/gms/internal/lx;->aeI:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_24

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/lz;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/lx;->Dh:Lcom/google/android/gms/internal/md;

    invoke-interface {v0}, Lcom/google/android/gms/internal/md;->dK()V

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/lx;->a(Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)Lcom/google/android/gms/internal/lx$b;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/lx;->Dh:Lcom/google/android/gms/internal/md;

    invoke-interface {v0}, Lcom/google/android/gms/internal/md;->gS()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lw;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/lw;->a(Lcom/google/android/gms/internal/lz;Lcom/google/android/gms/location/a;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/internal/lz;Landroid/app/PendingIntent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/lx;->Dh:Lcom/google/android/gms/internal/md;

    invoke-interface {v0}, Lcom/google/android/gms/internal/md;->dK()V

    iget-object v0, p0, Lcom/google/android/gms/internal/lx;->Dh:Lcom/google/android/gms/internal/md;

    invoke-interface {v0}, Lcom/google/android/gms/internal/md;->gS()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lw;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/lw;->a(Lcom/google/android/gms/internal/lz;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public getLastLocation()Landroid/location/Location;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/lx;->Dh:Lcom/google/android/gms/internal/md;

    invoke-interface {v0}, Lcom/google/android/gms/internal/md;->dK()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/lx;->Dh:Lcom/google/android/gms/internal/md;

    invoke-interface {v0}, Lcom/google/android/gms/internal/md;->gS()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lw;

    iget-object v1, p0, Lcom/google/android/gms/internal/lx;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/lw;->bT(Ljava/lang/String;)Landroid/location/Location;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_16} :catch_18

    move-result-object v0

    return-object v0

    :catch_18
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public lW()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/lx;->aeH:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lx;->setMockMode(Z)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    :cond_8
    return-void

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeAllListeners()V
    .registers 5

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/lx;->aeI:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_2a

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/lx;->aeI:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lx$b;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/internal/lx;->Dh:Lcom/google/android/gms/internal/md;

    invoke-interface {v1}, Lcom/google/android/gms/internal/md;->gS()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/lw;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/lw;->a(Lcom/google/android/gms/location/a;)V

    goto :goto_d

    :catchall_27
    move-exception v0

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    :try_start_29
    throw v0
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2a} :catch_2a

    :catch_2a
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/google/android/gms/internal/lx;->aeI:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_27

    return-void
.end method

.method public removeLocationUpdates(Landroid/app/PendingIntent;)V
    .registers 3
    .param p1, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/lx;->Dh:Lcom/google/android/gms/internal/md;

    invoke-interface {v0}, Lcom/google/android/gms/internal/md;->dK()V

    iget-object v0, p0, Lcom/google/android/gms/internal/lx;->Dh:Lcom/google/android/gms/internal/md;

    invoke-interface {v0}, Lcom/google/android/gms/internal/md;->gS()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/lw;->a(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/google/android/gms/location/LocationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/lx;->Dh:Lcom/google/android/gms/internal/md;

    invoke-interface {v0}, Lcom/google/android/gms/internal/md;->dK()V

    const-string v0, "Invalid null listener"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/lx;->aeI:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/internal/lx;->aeI:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lx$b;

    iget-object v1, p0, Lcom/google/android/gms/internal/lx;->aeG:Landroid/content/ContentProviderClient;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/google/android/gms/internal/lx;->aeI:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/google/android/gms/internal/lx;->aeG:Landroid/content/ContentProviderClient;

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/lx;->aeG:Landroid/content/ContentProviderClient;

    :cond_29
    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lx$b;->release()V

    iget-object v1, p0, Lcom/google/android/gms/internal/lx;->Dh:Lcom/google/android/gms/internal/md;

    invoke-interface {v1}, Lcom/google/android/gms/internal/md;->gS()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/lw;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/lw;->a(Lcom/google/android/gms/location/a;)V

    :cond_39
    monitor-exit v2

    return-void

    :catchall_3b
    move-exception v0

    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_d .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
    .registers 4
    .param p1, "request"    # Lcom/google/android/gms/location/LocationRequest;
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/lx;->Dh:Lcom/google/android/gms/internal/md;

    invoke-interface {v0}, Lcom/google/android/gms/internal/md;->dK()V

    iget-object v0, p0, Lcom/google/android/gms/internal/lx;->Dh:Lcom/google/android/gms/internal/md;

    invoke-interface {v0}, Lcom/google/android/gms/internal/md;->gS()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lw;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/lw;->a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
    .registers 6
    .param p1, "request"    # Lcom/google/android/gms/location/LocationRequest;
    .param p2, "listener"    # Lcom/google/android/gms/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/lx;->Dh:Lcom/google/android/gms/internal/md;

    invoke-interface {v0}, Lcom/google/android/gms/internal/md;->dK()V

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/lx;->a(Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)Lcom/google/android/gms/internal/lx$b;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/lx;->Dh:Lcom/google/android/gms/internal/md;

    invoke-interface {v0}, Lcom/google/android/gms/internal/md;->gS()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lw;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/lw;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/a;)V

    return-void
.end method

.method public setMockLocation(Landroid/location/Location;)V
    .registers 3
    .param p1, "mockLocation"    # Landroid/location/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/lx;->Dh:Lcom/google/android/gms/internal/md;

    invoke-interface {v0}, Lcom/google/android/gms/internal/md;->dK()V

    iget-object v0, p0, Lcom/google/android/gms/internal/lx;->Dh:Lcom/google/android/gms/internal/md;

    invoke-interface {v0}, Lcom/google/android/gms/internal/md;->gS()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/lw;->setMockLocation(Landroid/location/Location;)V

    return-void
.end method

.method public setMockMode(Z)V
    .registers 3
    .param p1, "isMockMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/lx;->Dh:Lcom/google/android/gms/internal/md;

    invoke-interface {v0}, Lcom/google/android/gms/internal/md;->dK()V

    iget-object v0, p0, Lcom/google/android/gms/internal/lx;->Dh:Lcom/google/android/gms/internal/md;

    invoke-interface {v0}, Lcom/google/android/gms/internal/md;->gS()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/lw;->setMockMode(Z)V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/lx;->aeH:Z

    return-void
.end method
