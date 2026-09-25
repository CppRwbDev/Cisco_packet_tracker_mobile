.class public abstract Lcom/google/android/gms/internal/ii;
.super Ljava/lang/Object;


# instance fields
.field protected final Go:Lcom/google/android/gms/internal/ip;

.field private final Gp:Ljava/lang/String;

.field private Gq:Lcom/google/android/gms/internal/ir;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ik;->aF(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ii;->Gp:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ip;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ip;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ii;->Go:Lcom/google/android/gms/internal/ip;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/ii;->Go:Lcom/google/android/gms/internal/ip;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ip;->aK(Ljava/lang/String;)V

    :cond_1a
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ir;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ii;->Gq:Lcom/google/android/gms/internal/ir;

    iget-object v0, p0, Lcom/google/android/gms/internal/ii;->Gq:Lcom/google/android/gms/internal/ir;

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ii;->fB()V

    :cond_9
    return-void
.end method

.method protected final a(Ljava/lang/String;JLjava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ii;->Go:Lcom/google/android/gms/internal/ip;

    const-string v1, "Sending text message: %s to: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ip;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ii;->Gq:Lcom/google/android/gms/internal/ir;

    iget-object v2, p0, Lcom/google/android/gms/internal/ii;->Gp:Ljava/lang/String;

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ir;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public aD(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public b(JI)V
    .registers 4

    return-void
.end method

.method protected final fA()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ii;->Gq:Lcom/google/android/gms/internal/ir;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ir;->fy()J

    move-result-wide v0

    return-wide v0
.end method

.method public fB()V
    .registers 1

    return-void
.end method

.method public final getNamespace()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ii;->Gp:Ljava/lang/String;

    return-object v0
.end method
