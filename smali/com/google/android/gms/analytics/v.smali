.class Lcom/google/android/gms/analytics/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/i;


# instance fields
.field As:Ljava/lang/String;

.field At:I

.field Au:I

.field xL:Ljava/lang/String;

.field xM:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/android/gms/analytics/v;->At:I

    iput v0, p0, Lcom/google/android/gms/analytics/v;->Au:I

    return-void
.end method


# virtual methods
.method public eA()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/analytics/v;->At:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public eB()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/analytics/v;->At:I

    return v0
.end method

.method public eC()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/analytics/v;->Au:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public eD()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/analytics/v;->Au:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public eu()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/v;->xL:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public ev()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/v;->xL:Ljava/lang/String;

    return-object v0
.end method

.method public ew()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/v;->xM:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public ex()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/v;->xM:Ljava/lang/String;

    return-object v0
.end method

.method public ey()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/v;->As:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public ez()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/v;->As:Ljava/lang/String;

    return-object v0
.end method
