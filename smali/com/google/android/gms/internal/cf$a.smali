.class public final Lcom/google/android/gms/internal/cf$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/cf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final mw:Ljava/lang/Object;

.field private final pN:Lcom/google/android/gms/internal/cf$b;

.field private final pO:Lcom/google/android/gms/internal/cg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/cf$b;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/cf$a;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cf$b;Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/cf$b;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cf$a;->mw:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/cf$a;->pN:Lcom/google/android/gms/internal/cf$b;

    new-instance v0, Lcom/google/android/gms/internal/cg;

    const v1, 0x5d3f18

    invoke-direct {v0, p1, p0, p0, v1}, Lcom/google/android/gms/internal/cg;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cf$a;->pO:Lcom/google/android/gms/internal/cg;

    if-nez p3, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/cf$a;->pO:Lcom/google/android/gms/internal/cg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cg;->connect()V

    :cond_1d
    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    invoke-static {}, Lcom/google/android/gms/internal/bn;->bs()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/cf$a;->mw:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/cf$a;->pO:Lcom/google/android/gms/internal/cg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cg;->bC()Lcom/google/android/gms/internal/ch;

    move-result-object v0

    if-eqz v0, :cond_85

    invoke-interface {v0}, Lcom/google/android/gms/internal/ch;->bD()Landroid/os/Bundle;
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_12} :catch_2f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_4c
    .catchall {:try_start_7 .. :try_end_12} :catchall_69

    move-result-object v0

    :goto_13
    :try_start_13
    iget-object v1, p0, Lcom/google/android/gms/internal/cf$a;->pO:Lcom/google/android/gms/internal/cg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cg;->isConnected()Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/google/android/gms/internal/cf$a;->pO:Lcom/google/android/gms/internal/cg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cg;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_28

    :cond_23
    iget-object v1, p0, Lcom/google/android/gms/internal/cf$a;->pO:Lcom/google/android/gms/internal/cg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cg;->disconnect()V

    :cond_28
    :goto_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_13 .. :try_end_29} :catchall_80

    iget-object v1, p0, Lcom/google/android/gms/internal/cf$a;->pN:Lcom/google/android/gms/internal/cf$b;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/cf$b;->a(Landroid/os/Bundle;)V

    return-void

    :catch_2f
    move-exception v0

    :try_start_30
    const-string v3, "Error when get Gservice values"

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/gs;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_69

    :try_start_35
    iget-object v0, p0, Lcom/google/android/gms/internal/cf$a;->pO:Lcom/google/android/gms/internal/cg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cg;->isConnected()Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/google/android/gms/internal/cf$a;->pO:Lcom/google/android/gms/internal/cg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cg;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_83

    :cond_45
    iget-object v0, p0, Lcom/google/android/gms/internal/cf$a;->pO:Lcom/google/android/gms/internal/cg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cg;->disconnect()V
    :try_end_4a
    .catchall {:try_start_35 .. :try_end_4a} :catchall_80

    move-object v0, v1

    goto :goto_28

    :catch_4c
    move-exception v0

    :try_start_4d
    const-string v3, "Error when get Gservice values"

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/gs;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_69

    :try_start_52
    iget-object v0, p0, Lcom/google/android/gms/internal/cf$a;->pO:Lcom/google/android/gms/internal/cg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cg;->isConnected()Z

    move-result v0

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/google/android/gms/internal/cf$a;->pO:Lcom/google/android/gms/internal/cg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cg;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_83

    :cond_62
    iget-object v0, p0, Lcom/google/android/gms/internal/cf$a;->pO:Lcom/google/android/gms/internal/cg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cg;->disconnect()V

    move-object v0, v1

    goto :goto_28

    :catchall_69
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cf$a;->pO:Lcom/google/android/gms/internal/cg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cg;->isConnected()Z

    move-result v1

    if-nez v1, :cond_7a

    iget-object v1, p0, Lcom/google/android/gms/internal/cf$a;->pO:Lcom/google/android/gms/internal/cg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cg;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_7f

    :cond_7a
    iget-object v1, p0, Lcom/google/android/gms/internal/cf$a;->pO:Lcom/google/android/gms/internal/cg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cg;->disconnect()V

    :cond_7f
    throw v0

    :catchall_80
    move-exception v0

    monitor-exit v2
    :try_end_82
    .catchall {:try_start_52 .. :try_end_82} :catchall_80

    throw v0

    :cond_83
    move-object v0, v1

    goto :goto_28

    :cond_85
    move-object v0, v1

    goto :goto_13
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/cf$a;->pN:Lcom/google/android/gms/internal/cf$b;

    invoke-static {}, Lcom/google/android/gms/internal/bn;->bs()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/cf$b;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDisconnected()V
    .registers 2

    const-string v0, "Disconnected from remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/gs;->S(Ljava/lang/String;)V

    return-void
.end method
