.class Lcom/google/android/gms/tagmanager/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/bi;


# instance fields
.field private xW:I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/gms/tagmanager/x;->xW:I

    return-void
.end method


# virtual methods
.method public S(Ljava/lang/String;)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/tagmanager/x;->xW:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_a

    const-string v0, "GoogleTagManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method public T(Ljava/lang/String;)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/tagmanager/x;->xW:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_a

    const-string v0, "GoogleTagManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method public U(Ljava/lang/String;)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/tagmanager/x;->xW:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_a

    const-string v0, "GoogleTagManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method public V(Ljava/lang/String;)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/tagmanager/x;->xW:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_a

    const-string v0, "GoogleTagManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method public W(Ljava/lang/String;)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/tagmanager/x;->xW:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_a

    const-string v0, "GoogleTagManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    iget v0, p0, Lcom/google/android/gms/tagmanager/x;->xW:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_a

    const-string v0, "GoogleTagManager"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    iget v0, p0, Lcom/google/android/gms/tagmanager/x;->xW:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_a

    const-string v0, "GoogleTagManager"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    return-void
.end method

.method public setLogLevel(I)V
    .registers 2
    .param p1, "logLevel"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/tagmanager/x;->xW:I

    return-void
.end method
