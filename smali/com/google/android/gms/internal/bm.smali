.class public final Lcom/google/android/gms/internal/bm;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ez;
.end annotation


# instance fields
.field private oU:Ljava/lang/String;

.field private oV:Ljava/lang/String;

.field private oW:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/bm;->oU:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/bm;->oV:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/bm;->oW:Ljava/lang/String;

    const-string v0, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/sdk-core-v40.html"

    iput-object v0, p0, Lcom/google/android/gms/internal/bm;->oU:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/bm;->oV:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/bm;->oW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bm;->oU:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/bm;->oV:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/bm;->oW:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/sdk-core-v40.html"

    iput-object v0, p0, Lcom/google/android/gms/internal/bm;->oU:Ljava/lang/String;

    :goto_14
    iput-object p2, p0, Lcom/google/android/gms/internal/bm;->oV:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/bm;->oW:Ljava/lang/String;

    return-void

    :cond_19
    iput-object p1, p0, Lcom/google/android/gms/internal/bm;->oU:Ljava/lang/String;

    goto :goto_14
.end method


# virtual methods
.method public bp()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bm;->oU:Ljava/lang/String;

    return-object v0
.end method

.method public bq()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bm;->oV:Ljava/lang/String;

    return-object v0
.end method

.method public br()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bm;->oW:Ljava/lang/String;

    return-object v0
.end method
