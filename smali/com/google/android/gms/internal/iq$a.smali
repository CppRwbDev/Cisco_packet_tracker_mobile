.class Lcom/google/android/gms/internal/iq$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/iq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic Hu:Lcom/google/android/gms/internal/iq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/iq;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/iq$a;->Hu:Lcom/google/android/gms/internal/iq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/iq;Lcom/google/android/gms/internal/iq$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/iq$a;-><init>(Lcom/google/android/gms/internal/iq;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/iq$a;->Hu:Lcom/google/android/gms/internal/iq;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/iq;->a(Lcom/google/android/gms/internal/iq;Z)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/iq$a;->Hu:Lcom/google/android/gms/internal/iq;

    invoke-static {v0}, Lcom/google/android/gms/internal/iq;->a(Lcom/google/android/gms/internal/iq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/it;

    const/16 v5, 0x836

    invoke-virtual {v0, v2, v3, v5}, Lcom/google/android/gms/internal/it;->e(JI)Z

    goto :goto_14

    :cond_26
    sget-object v2, Lcom/google/android/gms/internal/it;->Hz:Ljava/lang/Object;

    monitor-enter v2

    :try_start_29
    iget-object v0, p0, Lcom/google/android/gms/internal/iq$a;->Hu:Lcom/google/android/gms/internal/iq;

    invoke-static {v0}, Lcom/google/android/gms/internal/iq;->a(Lcom/google/android/gms/internal/iq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/it;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/it;->fW()Z

    move-result v0

    if-eqz v0, :cond_52

    const/4 v0, 0x1

    :goto_46
    move v1, v0

    goto :goto_33

    :cond_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_29 .. :try_end_49} :catchall_4f

    iget-object v0, p0, Lcom/google/android/gms/internal/iq$a;->Hu:Lcom/google/android/gms/internal/iq;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/iq;->b(Lcom/google/android/gms/internal/iq;Z)V

    return-void

    :catchall_4f
    move-exception v0

    :try_start_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v0

    :cond_52
    move v0, v1

    goto :goto_46
.end method
