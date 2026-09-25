.class public Lcom/google/android/gms/internal/v;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ez;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/v$b;,
        Lcom/google/android/gms/internal/v$a;
    }
.end annotation


# instance fields
.field private lZ:Lcom/google/android/gms/internal/v$a;

.field private ma:Z

.field private mb:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/gb;->bD()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_13

    const-string v2, "gads:block_autoclicks"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v0, 0x1

    :cond_13
    iput-boolean v0, p0, Lcom/google/android/gms/internal/v;->mb:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/v;->mb:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/v$a;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/v;->lZ:Lcom/google/android/gms/internal/v$a;

    return-void
.end method

.method public ar()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/v;->ma:Z

    return-void
.end method

.method public av()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/v;->mb:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/gms/internal/v;->ma:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public d(Ljava/lang/String;)V
    .registers 3

    const-string v0, "Action was blocked because no click was detected."

    invoke-static {v0}, Lcom/google/android/gms/internal/gs;->S(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->lZ:Lcom/google/android/gms/internal/v$a;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->lZ:Lcom/google/android/gms/internal/v$a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/v$a;->e(Ljava/lang/String;)V

    :cond_e
    return-void
.end method
