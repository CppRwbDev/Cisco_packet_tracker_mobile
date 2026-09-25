.class public Lcom/google/android/gms/internal/fb;
.super Lcom/google/android/gms/internal/gg;

# interfaces
.implements Lcom/google/android/gms/internal/ff$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ez;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fb$a;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mw:Ljava/lang/Object;

.field private pR:Lcom/google/android/gms/internal/cm;

.field private final sU:Lcom/google/android/gms/internal/fa$a;

.field private final sV:Ljava/lang/Object;

.field private final sW:Lcom/google/android/gms/internal/fi$a;

.field private final sX:Lcom/google/android/gms/internal/k;

.field private sY:Lcom/google/android/gms/internal/gg;

.field private sZ:Lcom/google/android/gms/internal/fk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/fi$a;Lcom/google/android/gms/internal/k;Lcom/google/android/gms/internal/fa$a;)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/gg;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fb;->sV:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fb;->mw:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/fb;->sU:Lcom/google/android/gms/internal/fa$a;

    iput-object p1, p0, Lcom/google/android/gms/internal/fb;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/fb;->sW:Lcom/google/android/gms/internal/fi$a;

    iput-object p3, p0, Lcom/google/android/gms/internal/fb;->sX:Lcom/google/android/gms/internal/k;

    return-void
.end method

.method private a(Lcom/google/android/gms/internal/fi;)Lcom/google/android/gms/internal/ay;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/fb$a;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/fb;->sZ:Lcom/google/android/gms/internal/fk;

    iget-object v0, v0, Lcom/google/android/gms/internal/fk;->tL:Ljava/lang/String;

    if-nez v0, :cond_f

    new-instance v0, Lcom/google/android/gms/internal/fb$a;

    const-string v1, "The ad response must specify one of the supported ad sizes."

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/fb$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/fb;->sZ:Lcom/google/android/gms/internal/fk;

    iget-object v0, v0, Lcom/google/android/gms/internal/fk;->tL:Ljava/lang/String;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3a

    new-instance v0, Lcom/google/android/gms/internal/fb$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse the ad size from the ad response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fb;->sZ:Lcom/google/android/gms/internal/fk;

    iget-object v2, v2, Lcom/google/android/gms/internal/fk;->tL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/fb$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_3a
    const/4 v1, 0x0

    :try_start_3b
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_47} :catch_81

    move-result v5

    iget-object v0, p1, Lcom/google/android/gms/internal/fi;->lH:Lcom/google/android/gms/internal/ay;

    iget-object v6, v0, Lcom/google/android/gms/internal/ay;->oh:[Lcom/google/android/gms/internal/ay;

    array-length v7, v6

    move v2, v3

    :goto_4e
    if-ge v2, v7, :cond_a9

    aget-object v8, v6, v2

    iget-object v0, p0, Lcom/google/android/gms/internal/fb;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iget v0, v8, Lcom/google/android/gms/internal/ay;->width:I

    const/4 v9, -0x1

    if-ne v0, v9, :cond_9f

    iget v0, v8, Lcom/google/android/gms/internal/ay;->widthPixels:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    :goto_68
    iget v9, v8, Lcom/google/android/gms/internal/ay;->height:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_a2

    iget v9, v8, Lcom/google/android/gms/internal/ay;->heightPixels:I

    int-to-float v9, v9

    div-float v1, v9, v1

    float-to-int v1, v1

    :goto_73
    if-ne v4, v0, :cond_a5

    if-ne v5, v1, :cond_a5

    new-instance v0, Lcom/google/android/gms/internal/ay;

    iget-object v1, p1, Lcom/google/android/gms/internal/fi;->lH:Lcom/google/android/gms/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/internal/ay;->oh:[Lcom/google/android/gms/internal/ay;

    invoke-direct {v0, v8, v1}, Lcom/google/android/gms/internal/ay;-><init>(Lcom/google/android/gms/internal/ay;[Lcom/google/android/gms/internal/ay;)V

    return-object v0

    :catch_81
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/fb$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse the ad size from the ad response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fb;->sZ:Lcom/google/android/gms/internal/fk;

    iget-object v2, v2, Lcom/google/android/gms/internal/fk;->tL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/fb$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_9f
    iget v0, v8, Lcom/google/android/gms/internal/ay;->width:I

    goto :goto_68

    :cond_a2
    iget v1, v8, Lcom/google/android/gms/internal/ay;->height:I

    goto :goto_73

    :cond_a5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4e

    :cond_a9
    new-instance v0, Lcom/google/android/gms/internal/fb$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The ad size from the ad response was not one of the requested sizes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fb;->sZ:Lcom/google/android/gms/internal/fk;

    iget-object v2, v2, Lcom/google/android/gms/internal/fk;->tL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/fb$a;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/fb;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fb;->mw:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/fb;)Lcom/google/android/gms/internal/fa$a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fb;->sU:Lcom/google/android/gms/internal/fa$a;

    return-object v0
.end method

.method private c(J)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/fb$a;
        }
    .end annotation

    const-wide/32 v0, 0xea60

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_11

    const/4 v0, 0x0

    :goto_10
    return v0

    :cond_11
    :try_start_11
    iget-object v2, p0, Lcom/google/android/gms/internal/fb;->mw:Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_16} :catch_18

    const/4 v0, 0x1

    goto :goto_10

    :catch_18
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/fb$a;

    const-string v1, "Ad request cancelled."

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/fb$a;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private cy()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/fb$a;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fb;->sZ:Lcom/google/android/gms/internal/fk;

    iget v0, v0, Lcom/google/android/gms/internal/fk;->errorCode:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/fb;->sZ:Lcom/google/android/gms/internal/fk;

    iget-object v0, v0, Lcom/google/android/gms/internal/fk;->tG:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Lcom/google/android/gms/internal/fb$a;

    const-string v1, "No fill from ad server."

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/fb$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/fb;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/fb;->sZ:Lcom/google/android/gms/internal/fk;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/fk;->tF:Z

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gb;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fb;->sZ:Lcom/google/android/gms/internal/fk;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/fk;->tI:Z

    if-eqz v0, :cond_7

    :try_start_2a
    new-instance v0, Lcom/google/android/gms/internal/cm;

    iget-object v1, p0, Lcom/google/android/gms/internal/fb;->sZ:Lcom/google/android/gms/internal/fk;

    iget-object v1, v1, Lcom/google/android/gms/internal/fk;->tG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cm;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fb;->pR:Lcom/google/android/gms/internal/cm;
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_35} :catch_36

    goto :goto_7

    :catch_36
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/fb$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse mediation config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fb;->sZ:Lcom/google/android/gms/internal/fk;

    iget-object v2, v2, Lcom/google/android/gms/internal/fk;->tG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/fb$a;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private e(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/fb$a;
        }
    .end annotation

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/fb;->c(J)Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Lcom/google/android/gms/internal/fb$a;

    const-string v1, "Timed out waiting for ad response."

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/fb$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/fb;->sZ:Lcom/google/android/gms/internal/fk;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/fb;->sV:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_17
    iput-object v0, p0, Lcom/google/android/gms/internal/fb;->sY:Lcom/google/android/gms/internal/gg;

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_49

    iget-object v0, p0, Lcom/google/android/gms/internal/fb;->sZ:Lcom/google/android/gms/internal/fk;

    iget v0, v0, Lcom/google/android/gms/internal/fk;->errorCode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_4c

    iget-object v0, p0, Lcom/google/android/gms/internal/fb;->sZ:Lcom/google/android/gms/internal/fk;

    iget v0, v0, Lcom/google/android/gms/internal/fk;->errorCode:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_4c

    new-instance v0, Lcom/google/android/gms/internal/fb$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There was a problem getting an ad response. ErrorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fb;->sZ:Lcom/google/android/gms/internal/fk;

    iget v2, v2, Lcom/google/android/gms/internal/fk;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fb;->sZ:Lcom/google/android/gms/internal/fk;

    iget v2, v2, Lcom/google/android/gms/internal/fk;->errorCode:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/fb$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :catchall_49
    move-exception v0

    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v0

    :cond_4c
    return-void
.end method

.method private r(Z)V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/internal/gb;->cV()Lcom/google/android/gms/internal/gb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gb;->v(Z)V

    invoke-static {}, Lcom/google/android/gms/internal/gb;->cV()Lcom/google/android/gms/internal/gb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fb;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gb;->l(Landroid/content/Context;)Lcom/google/android/gms/internal/an;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/google/android/gms/internal/an;->isAlive()Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "start fetching content..."

    invoke-static {v1}, Lcom/google/android/gms/internal/gs;->S(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/an;->aV()V

    :cond_21
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/fk;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/fb;->mw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    const-string v0, "Received ad response."

    invoke-static {v0}, Lcom/google/android/gms/internal/gs;->S(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/fb;->sZ:Lcom/google/android/gms/internal/fk;

    iget-object v0, p0, Lcom/google/android/gms/internal/fb;->mw:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public cp()V
    .registers 13

    const/4 v8, 0x0

    iget-object v11, p0, Lcom/google/android/gms/internal/fb;->mw:Ljava/lang/Object;

    monitor-enter v11

    :try_start_4
    const-string v0, "AdLoaderBackgroundTask started."

    invoke-static {v0}, Lcom/google/android/gms/internal/gs;->S(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fb;->sX:Lcom/google/android/gms/internal/k;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/k;->z()Lcom/google/android/gms/internal/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fb;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/fi;

    iget-object v2, p0, Lcom/google/android/gms/internal/fb;->sW:Lcom/google/android/gms/internal/fi$a;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/fi;-><init>(Lcom/google/android/gms/internal/fi$a;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_b9

    const/4 v5, -0x2

    const-wide/16 v2, -0x1

    :try_start_1f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/android/gms/internal/fb;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ff;->a(Landroid/content/Context;Lcom/google/android/gms/internal/fi;Lcom/google/android/gms/internal/ff$a;)Lcom/google/android/gms/internal/gg;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/internal/fb;->sV:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2c
    .catch Lcom/google/android/gms/internal/fb$a; {:try_start_1f .. :try_end_2c} :catch_3e
    .catchall {:try_start_1f .. :try_end_2c} :catchall_b9

    :try_start_2c
    iput-object v0, p0, Lcom/google/android/gms/internal/fb;->sY:Lcom/google/android/gms/internal/gg;

    iget-object v0, p0, Lcom/google/android/gms/internal/fb;->sY:Lcom/google/android/gms/internal/gg;

    if-nez v0, :cond_93

    new-instance v0, Lcom/google/android/gms/internal/fb$a;

    const-string v5, "Could not start the ad request service."

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6}, Lcom/google/android/gms/internal/fb$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :catchall_3b
    move-exception v0

    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_2c .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw v0
    :try_end_3e
    .catch Lcom/google/android/gms/internal/fb$a; {:try_start_3d .. :try_end_3e} :catch_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_b9

    :catch_3e
    move-exception v0

    move-object v4, v8

    :goto_40
    :try_start_40
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fb$a;->getErrorCode()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4a

    const/4 v6, -0x1

    if-ne v5, v6, :cond_b1

    :cond_4a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fb$a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gs;->U(Ljava/lang/String;)V

    :goto_51
    iget-object v0, p0, Lcom/google/android/gms/internal/fb;->sZ:Lcom/google/android/gms/internal/fk;

    if-nez v0, :cond_bc

    new-instance v0, Lcom/google/android/gms/internal/fk;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/fk;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fb;->sZ:Lcom/google/android/gms/internal/fk;

    :goto_5c
    sget-object v0, Lcom/google/android/gms/internal/gr;->wC:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gms/internal/fb$1;

    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/fb$1;-><init>(Lcom/google/android/gms/internal/fb;)V

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide v6, v2

    :goto_67
    iget-object v0, p0, Lcom/google/android/gms/internal/fb;->sZ:Lcom/google/android/gms/internal/fk;

    iget-object v0, v0, Lcom/google/android/gms/internal/fk;->tQ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_6e
    .catchall {:try_start_40 .. :try_end_6e} :catchall_b9

    move-result v0

    if-nez v0, :cond_ce

    :try_start_71
    new-instance v10, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/internal/fb;->sZ:Lcom/google/android/gms/internal/fk;

    iget-object v0, v0, Lcom/google/android/gms/internal/fk;->tQ:Ljava/lang/String;

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_7a} :catch_c8
    .catchall {:try_start_71 .. :try_end_7a} :catchall_b9

    :goto_7a
    :try_start_7a
    new-instance v0, Lcom/google/android/gms/internal/fz$a;

    iget-object v2, p0, Lcom/google/android/gms/internal/fb;->sZ:Lcom/google/android/gms/internal/fk;

    iget-object v3, p0, Lcom/google/android/gms/internal/fb;->pR:Lcom/google/android/gms/internal/cm;

    iget-object v8, p0, Lcom/google/android/gms/internal/fb;->sZ:Lcom/google/android/gms/internal/fk;

    iget-wide v8, v8, Lcom/google/android/gms/internal/fk;->tM:J

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/fz$a;-><init>(Lcom/google/android/gms/internal/fi;Lcom/google/android/gms/internal/fk;Lcom/google/android/gms/internal/cm;Lcom/google/android/gms/internal/ay;IJJLorg/json/JSONObject;)V

    sget-object v1, Lcom/google/android/gms/internal/gr;->wC:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/fb$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/fb$2;-><init>(Lcom/google/android/gms/internal/fb;Lcom/google/android/gms/internal/fz$a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v11
    :try_end_92
    .catchall {:try_start_7a .. :try_end_92} :catchall_b9

    return-void

    :cond_93
    :try_start_93
    monitor-exit v4
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_3b

    :try_start_94
    invoke-direct {p0, v6, v7}, Lcom/google/android/gms/internal/fb;->e(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/fb;->cy()V

    iget-object v0, v1, Lcom/google/android/gms/internal/fi;->lH:Lcom/google/android/gms/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/internal/ay;->oh:[Lcom/google/android/gms/internal/ay;

    if-eqz v0, :cond_d3

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/fb;->a(Lcom/google/android/gms/internal/fi;)Lcom/google/android/gms/internal/ay;
    :try_end_a7
    .catch Lcom/google/android/gms/internal/fb$a; {:try_start_94 .. :try_end_a7} :catch_3e
    .catchall {:try_start_94 .. :try_end_a7} :catchall_b9

    move-result-object v4

    :goto_a8
    :try_start_a8
    iget-object v0, p0, Lcom/google/android/gms/internal/fb;->sZ:Lcom/google/android/gms/internal/fk;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/fk;->tT:Z

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fb;->r(Z)V
    :try_end_af
    .catch Lcom/google/android/gms/internal/fb$a; {:try_start_a8 .. :try_end_af} :catch_d0
    .catchall {:try_start_a8 .. :try_end_af} :catchall_b9

    move-wide v6, v2

    goto :goto_67

    :cond_b1
    :try_start_b1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fb$a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gs;->W(Ljava/lang/String;)V

    goto :goto_51

    :catchall_b9
    move-exception v0

    monitor-exit v11
    :try_end_bb
    .catchall {:try_start_b1 .. :try_end_bb} :catchall_b9

    throw v0

    :cond_bc
    :try_start_bc
    new-instance v0, Lcom/google/android/gms/internal/fk;

    iget-object v6, p0, Lcom/google/android/gms/internal/fb;->sZ:Lcom/google/android/gms/internal/fk;

    iget-wide v6, v6, Lcom/google/android/gms/internal/fk;->qj:J

    invoke-direct {v0, v5, v6, v7}, Lcom/google/android/gms/internal/fk;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fb;->sZ:Lcom/google/android/gms/internal/fk;

    goto :goto_5c

    :catch_c8
    move-exception v0

    const-string v2, "Error parsing the JSON for Active View."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/gs;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ce
    .catchall {:try_start_bc .. :try_end_ce} :catchall_b9

    :cond_ce
    move-object v10, v8

    goto :goto_7a

    :catch_d0
    move-exception v0

    goto/16 :goto_40

    :cond_d3
    move-object v4, v8

    goto :goto_a8
.end method

.method public onStop()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/fb;->sV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/fb;->sY:Lcom/google/android/gms/internal/gg;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/fb;->sY:Lcom/google/android/gms/internal/gg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gg;->cancel()V

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method
