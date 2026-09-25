.class public final Lcom/google/android/gms/internal/cf;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ez;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/cf$a;,
        Lcom/google/android/gms/internal/cf$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/cf$b;)V
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/google/android/gms/internal/bn;->bs()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/cf$b;->a(Landroid/os/Bundle;)V

    :goto_d
    return-void

    :cond_e
    new-instance v0, Lcom/google/android/gms/internal/cf$a;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/cf$a;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cf$b;)V

    goto :goto_d
.end method
