.class public Lcom/google/android/gms/internal/cg;
.super Lcom/google/android/gms/common/internal/d;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ez;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/d",
        "<",
        "Lcom/google/android/gms/internal/ch;",
        ">;"
    }
.end annotation


# instance fields
.field final pP:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;I)V
    .registers 6

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/internal/d;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    iput p4, p0, Lcom/google/android/gms/internal/cg;->pP:I

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/internal/k;Lcom/google/android/gms/common/internal/d$e;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/google/android/gms/internal/cg;->pP:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cg;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/common/internal/k;->g(Lcom/google/android/gms/common/internal/j;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public bC()Lcom/google/android/gms/internal/ch;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/common/internal/d;->gS()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ch;

    return-object v0
.end method

.method protected getServiceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.gservice.IGservicesValueService"

    return-object v0
.end method

.method protected getStartServiceAction()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.ads.gservice.START"

    return-object v0
.end method

.method protected i(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ch;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/ch$a;->k(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ch;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic j(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cg;->i(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ch;

    move-result-object v0

    return-object v0
.end method
