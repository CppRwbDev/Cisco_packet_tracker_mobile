.class Lcom/google/android/gms/tagmanager/ap;
.super Ljava/lang/Object;


# instance fields
.field private final AF:J

.field private final AG:J

.field private final apb:J

.field private apc:Ljava/lang/String;


# direct methods
.method constructor <init>(JJJ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/ap;->AF:J

    iput-wide p3, p0, Lcom/google/android/gms/tagmanager/ap;->AG:J

    iput-wide p5, p0, Lcom/google/android/gms/tagmanager/ap;->apb:J

    return-void
.end method


# virtual methods
.method ak(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ap;->apc:Ljava/lang/String;

    goto :goto_c
.end method

.method eH()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/ap;->AF:J

    return-wide v0
.end method

.method or()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/ap;->apb:J

    return-wide v0
.end method

.method os()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ap;->apc:Ljava/lang/String;

    return-object v0
.end method
