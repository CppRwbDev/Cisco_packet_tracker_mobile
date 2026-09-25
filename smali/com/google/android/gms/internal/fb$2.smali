.class Lcom/google/android/gms/internal/fb$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fb;->cp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ta:Lcom/google/android/gms/internal/fb;

.field final synthetic tb:Lcom/google/android/gms/internal/fz$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fb;Lcom/google/android/gms/internal/fz$a;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/fb$2;->ta:Lcom/google/android/gms/internal/fb;

    iput-object p2, p0, Lcom/google/android/gms/internal/fb$2;->tb:Lcom/google/android/gms/internal/fz$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/fb$2;->ta:Lcom/google/android/gms/internal/fb;

    invoke-static {v0}, Lcom/google/android/gms/internal/fb;->a(Lcom/google/android/gms/internal/fb;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/fb$2;->ta:Lcom/google/android/gms/internal/fb;

    invoke-static {v0}, Lcom/google/android/gms/internal/fb;->b(Lcom/google/android/gms/internal/fb;)Lcom/google/android/gms/internal/fa$a;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/fb$2;->tb:Lcom/google/android/gms/internal/fz$a;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/fa$a;->a(Lcom/google/android/gms/internal/fz$a;)V

    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v0
.end method
