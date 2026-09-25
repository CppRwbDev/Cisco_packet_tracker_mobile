.class public Lcom/google/android/gms/internal/iq;
.super Lcom/google/android/gms/internal/ii;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/iq$1;,
        Lcom/google/android/gms/internal/iq$a;
    }
.end annotation


# static fields
.field private static final Hb:J

.field private static final Hc:J

.field private static final Hd:J

.field private static final He:J

.field private static final NAMESPACE:Ljava/lang/String;


# instance fields
.field private Hf:J

.field private Hg:Lcom/google/android/gms/cast/MediaStatus;

.field private final Hh:Lcom/google/android/gms/internal/it;

.field private final Hi:Lcom/google/android/gms/internal/it;

.field private final Hj:Lcom/google/android/gms/internal/it;

.field private final Hk:Lcom/google/android/gms/internal/it;

.field private final Hl:Lcom/google/android/gms/internal/it;

.field private final Hm:Lcom/google/android/gms/internal/it;

.field private final Hn:Lcom/google/android/gms/internal/it;

.field private final Ho:Lcom/google/android/gms/internal/it;

.field private final Hp:Lcom/google/android/gms/internal/it;

.field private final Hq:Lcom/google/android/gms/internal/it;

.field private final Hr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/it;",
            ">;"
        }
    .end annotation
.end field

.field private final Hs:Ljava/lang/Runnable;

.field private Ht:Z

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide/16 v2, 0x18

    const-string v0, "com.google.cast.media"

    invoke-static {v0}, Lcom/google/android/gms/internal/ik;->aG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/iq;->NAMESPACE:Ljava/lang/String;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/iq;->Hb:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/iq;->Hc:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/iq;->Hd:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/iq;->He:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/iq;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/iq;->NAMESPACE:Ljava/lang/String;

    const-string v1, "MediaControlChannel"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ii;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/iq;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/iq$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/iq$a;-><init>(Lcom/google/android/gms/internal/iq;Lcom/google/android/gms/internal/iq$1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/iq;->Hs:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/iq;->Hr:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/it;

    sget-wide v2, Lcom/google/android/gms/internal/iq;->Hc:J

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/it;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/iq;->Hh:Lcom/google/android/gms/internal/it;

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->Hr:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/iq;->Hh:Lcom/google/android/gms/internal/it;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/internal/it;

    sget-wide v2, Lcom/google/android/gms/internal/iq;->Hb:J

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/it;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/iq;->Hi:Lcom/google/android/gms/internal/it;

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->Hr:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/iq;->Hi:Lcom/google/android/gms/internal/it;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/internal/it;

    sget-wide v2, Lcom/google/android/gms/internal/iq;->Hb:J

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/it;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/iq;->Hj:Lcom/google/android/gms/internal/it;

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->Hr:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/iq;->Hj:Lcom/google/android/gms/internal/it;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/internal/it;

    sget-wide v2, Lcom/google/android/gms/internal/iq;->Hb:J

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/it;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/iq;->Hk:Lcom/google/android/gms/internal/it;

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->Hr:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/iq;->Hk:Lcom/google/android/gms/internal/it;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/internal/it;

    sget-wide v2, Lcom/google/android/gms/internal/iq;->Hd:J

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/it;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/iq;->Hl:Lcom/google/android/gms/internal/it;

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->Hr:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/iq;->Hl:Lcom/google/android/gms/internal/it;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/internal/it;

    sget-wide v2, Lcom/google/android/gms/internal/iq;->Hb:J

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/it;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/iq;->Hm:Lcom/google/android/gms/internal/it;

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->Hr:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/iq;->Hm:Lcom/google/android/gms/internal/it;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/internal/it;

    sget-wide v2, Lcom/google/android/gms/internal/iq;->Hb:J

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/it;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/iq;->Hn:Lcom/google/android/gms/internal/it;

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->Hr:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/iq;->Hn:Lcom/google/android/gms/internal/it;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/internal/it;

    sget-wide v2, Lcom/google/android/gms/internal/iq;->Hb:J

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/it;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/iq;->Ho:Lcom/google/android/gms/internal/it;

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->Hr:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/iq;->Ho:Lcom/google/android/gms/internal/it;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/internal/it;

    sget-wide v2, Lcom/google/android/gms/internal/iq;->Hb:J

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/it;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/iq;->Hp:Lcom/google/android/gms/internal/it;

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->Hr:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/iq;->Hp:Lcom/google/android/gms/internal/it;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/internal/it;

    sget-wide v2, Lcom/google/android/gms/internal/iq;->Hb:J

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/it;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/iq;->Hq:Lcom/google/android/gms/internal/it;

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->Hr:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/iq;->Hq:Lcom/google/android/gms/internal/it;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/iq;->fU()V

    return-void
.end method

.method private H(Z)V
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/iq;->Ht:Z

    if-eq v0, p1, :cond_11

    iput-boolean p1, p0, Lcom/google/android/gms/internal/iq;->Ht:Z

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/iq;->Hs:Ljava/lang/Runnable;

    sget-wide v2, Lcom/google/android/gms/internal/iq;->He:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/iq;->Hs:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_11
.end method

.method static synthetic a(Lcom/google/android/gms/internal/iq;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->Hr:Ljava/util/List;

    return-object v0
.end method

.method private a(JLorg/json/JSONObject;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->Hh:Lcom/google/android/gms/internal/it;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/it;->p(J)Z

    move-result v3

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->Hl:Lcom/google/android/gms/internal/it;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/it;->fW()Z

    move-result v0

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->Hl:Lcom/google/android/gms/internal/it;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/it;->p(J)Z

    move-result v0

    if-nez v0, :cond_8b

    move v0, v1

    :goto_19
    iget-object v4, p0, Lcom/google/android/gms/internal/iq;->Hm:Lcom/google/android/gms/internal/it;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/it;->fW()Z

    move-result v4

    if-eqz v4, :cond_29

    iget-object v4, p0, Lcom/google/android/gms/internal/iq;->Hm:Lcom/google/android/gms/internal/it;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/gms/internal/it;->p(J)Z

    move-result v4

    if-eqz v4, :cond_39

    :cond_29
    iget-object v4, p0, Lcom/google/android/gms/internal/iq;->Hn:Lcom/google/android/gms/internal/it;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/it;->fW()Z

    move-result v4

    if-eqz v4, :cond_8d

    iget-object v4, p0, Lcom/google/android/gms/internal/iq;->Hn:Lcom/google/android/gms/internal/it;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/gms/internal/it;->p(J)Z

    move-result v4

    if-nez v4, :cond_8d

    :cond_39
    :goto_39
    if-eqz v0, :cond_97

    const/4 v0, 0x2

    :goto_3c
    if-eqz v1, :cond_40

    or-int/lit8 v0, v0, 0x1

    :cond_40
    if-nez v3, :cond_46

    iget-object v1, p0, Lcom/google/android/gms/internal/iq;->Hg:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v1, :cond_8f

    :cond_46
    new-instance v0, Lcom/google/android/gms/cast/MediaStatus;

    invoke-direct {v0, p3}, Lcom/google/android/gms/cast/MediaStatus;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/iq;->Hg:Lcom/google/android/gms/cast/MediaStatus;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/iq;->Hf:J

    const/4 v0, 0x7

    :goto_54
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_61

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/iq;->Hf:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iq;->onStatusUpdated()V

    :cond_61
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_6e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/iq;->Hf:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iq;->onStatusUpdated()V

    :cond_6e
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_75

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iq;->onMetadataUpdated()V

    :cond_75
    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->Hr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/it;

    invoke-virtual {v0, p1, p2, v2}, Lcom/google/android/gms/internal/it;->d(JI)Z

    goto :goto_7b

    :cond_8b
    move v0, v2

    goto :goto_19

    :cond_8d
    move v1, v2

    goto :goto_39

    :cond_8f
    iget-object v1, p0, Lcom/google/android/gms/internal/iq;->Hg:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v1, p3, v0}, Lcom/google/android/gms/cast/MediaStatus;->a(Lorg/json/JSONObject;I)I

    move-result v0

    goto :goto_54

    :cond_96
    return-void

    :cond_97
    move v0, v2

    goto :goto_3c
.end method

.method static synthetic a(Lcom/google/android/gms/internal/iq;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/iq;->Ht:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/iq;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/iq;->H(Z)V

    return-void
.end method

.method private fU()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/iq;->H(Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/iq;->Hf:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/iq;->Hg:Lcom/google/android/gms/cast/MediaStatus;

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->Hh:Lcom/google/android/gms/internal/it;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/it;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->Hl:Lcom/google/android/gms/internal/it;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/it;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->Hm:Lcom/google/android/gms/internal/it;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/it;->clear()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/is;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iq;->fA()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/iq;->Ho:Lcom/google/android/gms/internal/it;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/it;->a(JLcom/google/android/gms/internal/is;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/iq;->H(Z)V

    :try_start_12
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "GET_STATUS"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/iq;->Hg:Lcom/google/android/gms/cast/MediaStatus;

    if-eqz v1, :cond_2d

    const-string v1, "mediaSessionId"

    iget-object v4, p0, Lcom/google/android/gms/internal/iq;->Hg:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v4}, Lcom/google/android/gms/cast/MediaStatus;->fx()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_2d} :catch_36

    :cond_2d
    :goto_2d
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/iq;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_36
    move-exception v1

    goto :goto_2d
.end method

.method public a(Lcom/google/android/gms/internal/is;DLorg/json/JSONObject;)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume cannot be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iq;->fA()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/iq;->Hm:Lcom/google/android/gms/internal/it;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/it;->a(JLcom/google/android/gms/internal/is;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/iq;->H(Z)V

    :try_start_37
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "SET_VOLUME"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iq;->fx()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "level"

    invoke-virtual {v1, v4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "volume"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p4, :cond_62

    const-string v1, "customData"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_62} :catch_6b

    :cond_62
    :goto_62
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/iq;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_6b
    move-exception v1

    goto :goto_62
.end method

.method public a(Lcom/google/android/gms/internal/is;JILorg/json/JSONObject;)J
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v6, 0x1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iq;->fA()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/iq;->Hl:Lcom/google/android/gms/internal/it;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/it;->a(JLcom/google/android/gms/internal/is;)V

    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/iq;->H(Z)V

    :try_start_12
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "SEEK"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iq;->fx()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "currentTime"

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ik;->o(J)D

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    if-ne p4, v6, :cond_49

    const-string v1, "resumeState"

    const-string v4, "PLAYBACK_START"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_39
    :goto_39
    if-eqz p5, :cond_40

    const-string v1, "customData"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_40} :catch_54

    :cond_40
    :goto_40
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/iq;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :cond_49
    const/4 v1, 0x2

    if-ne p4, v1, :cond_39

    :try_start_4c
    const-string v1, "resumeState"

    const-string v4, "PLAYBACK_PAUSE"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_4c .. :try_end_53} :catch_54

    goto :goto_39

    :catch_54
    move-exception v1

    goto :goto_40
.end method

.method public a(Lcom/google/android/gms/internal/is;Lcom/google/android/gms/cast/MediaInfo;ZJ[JLorg/json/JSONObject;)J
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iq;->fA()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->Hh:Lcom/google/android/gms/internal/it;

    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/internal/it;->a(JLcom/google/android/gms/internal/is;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/iq;->H(Z)V

    :try_start_12
    const-string v0, "requestId"

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "type"

    const-string v4, "LOAD"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "media"

    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaInfo;->bL()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "autoplay"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "currentTime"

    invoke-static {p4, p5}, Lcom/google/android/gms/internal/ik;->o(J)D

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    if-eqz p6, :cond_50

    array-length v0, p6

    if-lez v0, :cond_50

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_40
    array-length v5, p6

    if-ge v0, v5, :cond_4b

    aget-wide v6, p6, v0

    invoke-virtual {v4, v0, v6, v7}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_4b
    const-string v0, "activeTrackIds"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_50
    if-eqz p7, :cond_57

    const-string v0, "customData"

    invoke-virtual {v1, v0, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_57
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_57} :catch_60

    :cond_57
    :goto_57
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/iq;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_60
    move-exception v0

    goto :goto_57
.end method

.method public a(Lcom/google/android/gms/internal/is;Lcom/google/android/gms/cast/TextTrackStyle;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iq;->fA()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/iq;->Hq:Lcom/google/android/gms/internal/it;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/it;->a(JLcom/google/android/gms/internal/is;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/iq;->H(Z)V

    :try_start_12
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "EDIT_TRACKS_INFO"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_29

    const-string v1, "textTrackStyle"

    invoke-virtual {p2}, Lcom/google/android/gms/cast/TextTrackStyle;->bL()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_29
    const-string v1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iq;->fx()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_32} :catch_3b

    :goto_32
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/iq;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_3b
    move-exception v1

    goto :goto_32
.end method

.method public a(Lcom/google/android/gms/internal/is;Lorg/json/JSONObject;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iq;->fA()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/iq;->Hi:Lcom/google/android/gms/internal/it;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/it;->a(JLcom/google/android/gms/internal/is;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/iq;->H(Z)V

    :try_start_12
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "PAUSE"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iq;->fx()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_2e

    const-string v1, "customData"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_2e} :catch_37

    :cond_2e
    :goto_2e
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/iq;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_37
    move-exception v1

    goto :goto_2e
.end method

.method public a(Lcom/google/android/gms/internal/is;ZLorg/json/JSONObject;)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iq;->fA()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/iq;->Hn:Lcom/google/android/gms/internal/it;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/it;->a(JLcom/google/android/gms/internal/is;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/iq;->H(Z)V

    :try_start_12
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "SET_VOLUME"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iq;->fx()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "muted"

    invoke-virtual {v1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "volume"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_3d

    const-string v1, "customData"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_3d} :catch_46

    :cond_3d
    :goto_3d
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/iq;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_46
    move-exception v1

    goto :goto_3d
.end method

.method public a(Lcom/google/android/gms/internal/is;[J)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iq;->fA()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->Hp:Lcom/google/android/gms/internal/it;

    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/internal/it;->a(JLcom/google/android/gms/internal/is;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/iq;->H(Z)V

    :try_start_12
    const-string v0, "requestId"

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "type"

    const-string v4, "EDIT_TRACKS_INFO"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iq;->fx()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_2d
    array-length v5, p2

    if-ge v0, v5, :cond_38

    aget-wide v6, p2, v0

    invoke-virtual {v4, v0, v6, v7}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_38
    const-string v0, "activeTrackIds"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_3d} :catch_46

    :goto_3d
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/iq;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_46
    move-exception v0

    goto :goto_3d
.end method

.method public final aD(Ljava/lang/String;)V
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->Go:Lcom/google/android/gms/internal/ip;

    const-string v1, "message received: %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ip;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "requestId"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "MEDIA_STATUS"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_3d

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/gms/internal/iq;->a(JLorg/json/JSONObject;)V

    :cond_3c
    :goto_3c
    return-void

    :cond_3d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/iq;->Hg:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iq;->onStatusUpdated()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iq;->onMetadataUpdated()V

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->Ho:Lcom/google/android/gms/internal/it;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/it;->d(JI)Z
    :try_end_4c
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_4c} :catch_4d

    goto :goto_3c

    :catch_4d
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/iq;->Go:Lcom/google/android/gms/internal/ip;

    const-string v2, "Message is malformed (%s); ignoring: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    aput-object p1, v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ip;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3c

    :cond_61
    :try_start_61
    const-string v4, "INVALID_PLAYER_STATE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_91

    iget-object v1, p0, Lcom/google/android/gms/internal/iq;->Go:Lcom/google/android/gms/internal/ip;

    const-string v4, "received unexpected error: Invalid Player State."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ip;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "customData"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->Hr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/it;

    const/16 v5, 0x834

    invoke-virtual {v0, v2, v3, v5, v1}, Lcom/google/android/gms/internal/it;->b(JILorg/json/JSONObject;)Z

    goto :goto_7f

    :cond_91
    const-string v4, "LOAD_FAILED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a7

    const-string v1, "customData"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/iq;->Hh:Lcom/google/android/gms/internal/it;

    const/16 v4, 0x834

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/it;->b(JILorg/json/JSONObject;)Z

    goto :goto_3c

    :cond_a7
    const-string v4, "LOAD_CANCELLED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bd

    const-string v1, "customData"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/iq;->Hh:Lcom/google/android/gms/internal/it;

    const/16 v4, 0x835

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/it;->b(JILorg/json/JSONObject;)Z

    goto :goto_3c

    :cond_bd
    const-string v4, "INVALID_REQUEST"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/google/android/gms/internal/iq;->Go:Lcom/google/android/gms/internal/ip;

    const-string v4, "received unexpected error: Invalid Request."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ip;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "customData"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->Hr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_db
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/it;

    const/16 v5, 0x834

    invoke-virtual {v0, v2, v3, v5, v1}, Lcom/google/android/gms/internal/it;->b(JILorg/json/JSONObject;)Z
    :try_end_ec
    .catch Lorg/json/JSONException; {:try_start_61 .. :try_end_ec} :catch_4d

    goto :goto_db
.end method

.method public b(Lcom/google/android/gms/internal/is;Lorg/json/JSONObject;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iq;->fA()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/iq;->Hk:Lcom/google/android/gms/internal/it;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/it;->a(JLcom/google/android/gms/internal/is;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/iq;->H(Z)V

    :try_start_12
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "STOP"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iq;->fx()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_2e

    const-string v1, "customData"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_2e} :catch_37

    :cond_2e
    :goto_2e
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/iq;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_37
    move-exception v1

    goto :goto_2e
.end method

.method public b(JI)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->Hr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/it;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/it;->d(JI)Z

    goto :goto_6

    :cond_16
    return-void
.end method

.method public c(Lcom/google/android/gms/internal/is;Lorg/json/JSONObject;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iq;->fA()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/iq;->Hj:Lcom/google/android/gms/internal/it;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/it;->a(JLcom/google/android/gms/internal/is;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/iq;->H(Z)V

    :try_start_12
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "PLAY"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iq;->fx()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_2e

    const-string v1, "customData"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_2e} :catch_37

    :cond_2e
    :goto_2e
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/iq;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_37
    move-exception v1

    goto :goto_2e
.end method

.method public fB()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/iq;->fU()V

    return-void
.end method

.method public fx()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->Hg:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No current media session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->Hg:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->fx()J

    move-result-wide v0

    return-wide v0
.end method

.method public getApproximateStreamPosition()J
    .registers 13

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iq;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v8

    if-nez v8, :cond_9

    :cond_8
    :goto_8
    return-wide v2

    :cond_9
    iget-wide v0, p0, Lcom/google/android/gms/internal/iq;->Hf:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->Hg:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getPlaybackRate()D

    move-result-wide v10

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->Hg:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getStreamPosition()J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->Hg:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v0

    const-wide/16 v6, 0x0

    cmpl-double v1, v10, v6

    if-eqz v1, :cond_2a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2c

    :cond_2a
    move-wide v2, v4

    goto :goto_8

    :cond_2c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/google/android/gms/internal/iq;->Hf:J

    sub-long/2addr v0, v6

    cmp-long v6, v0, v2

    if-gez v6, :cond_58

    move-wide v6, v2

    :goto_38
    cmp-long v0, v6, v2

    if-nez v0, :cond_3e

    move-wide v2, v4

    goto :goto_8

    :cond_3e
    invoke-virtual {v8}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    move-result-wide v0

    long-to-double v6, v6

    mul-double/2addr v6, v10

    double-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v6, v0, v2

    if-lez v6, :cond_50

    cmp-long v6, v4, v0

    if-lez v6, :cond_50

    :goto_4e
    move-wide v2, v0

    goto :goto_8

    :cond_50
    cmp-long v0, v4, v2

    if-gez v0, :cond_56

    move-wide v0, v2

    goto :goto_4e

    :cond_56
    move-wide v0, v4

    goto :goto_4e

    :cond_58
    move-wide v6, v0

    goto :goto_38
.end method

.method public getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->Hg:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->Hg:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    goto :goto_5
.end method

.method public getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->Hg:Lcom/google/android/gms/cast/MediaStatus;

    return-object v0
.end method

.method public getStreamDuration()J
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iq;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method protected onMetadataUpdated()V
    .registers 1

    return-void
.end method

.method protected onStatusUpdated()V
    .registers 1

    return-void
.end method
