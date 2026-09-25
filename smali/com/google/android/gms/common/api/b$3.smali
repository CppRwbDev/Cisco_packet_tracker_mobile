.class Lcom/google/android/gms/common/api/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Jj:Lcom/google/android/gms/common/api/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/b$3;->Jj:Lcom/google/android/gms/common/api/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fD()Landroid/os/Bundle;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public gr()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/b$3;->Jj:Lcom/google/android/gms/common/api/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/b;->g(Lcom/google/android/gms/common/api/b;)Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/b$3;->Jj:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->isConnected()Z

    move-result v0

    return v0
.end method
