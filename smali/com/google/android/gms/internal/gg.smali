.class public abstract Lcom/google/android/gms/internal/gg;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ez;
.end annotation


# instance fields
.field private final mk:Ljava/lang/Runnable;

.field private volatile wf:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/gg$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gg$1;-><init>(Lcom/google/android/gms/internal/gg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gg;->mk:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/gg;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/gg;->wf:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gg;->onStop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gg;->wf:Ljava/lang/Thread;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/gg;->wf:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_c
    return-void
.end method

.method public abstract cp()V
.end method

.method public abstract onStop()V
.end method

.method public final start()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gg;->mk:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/google/android/gms/internal/gi;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
