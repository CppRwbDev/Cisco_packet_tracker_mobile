.class public final Lcom/google/android/gms/internal/ok$a;
.super Lcom/google/android/gms/internal/pg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ok;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/pg",
        "<",
        "Lcom/google/android/gms/internal/ok$a;",
        ">;"
    }
.end annotation


# instance fields
.field public asg:J

.field public ash:Lcom/google/android/gms/internal/c$j;

.field public gs:Lcom/google/android/gms/internal/c$f;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/pg;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ok$a;->pJ()Lcom/google/android/gms/internal/ok$a;

    return-void
.end method

.method public static l([B)Lcom/google/android/gms/internal/ok$a;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/pl;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ok$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ok$a;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/pm;->a(Lcom/google/android/gms/internal/pm;[B)Lcom/google/android/gms/internal/pm;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ok$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/pf;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ok$a;->asg:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/pf;->b(IJ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ok$a;->gs:Lcom/google/android/gms/internal/c$f;

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/ok$a;->gs:Lcom/google/android/gms/internal/c$f;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pf;->a(ILcom/google/android/gms/internal/pm;)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ok$a;->ash:Lcom/google/android/gms/internal/c$j;

    if-eqz v0, :cond_1a

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/ok$a;->ash:Lcom/google/android/gms/internal/c$j;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pf;->a(ILcom/google/android/gms/internal/pm;)V

    :cond_1a
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/pg;->a(Lcom/google/android/gms/internal/pf;)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/gms/internal/pe;)Lcom/google/android/gms/internal/pm;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ok$a;->p(Lcom/google/android/gms/internal/pe;)Lcom/google/android/gms/internal/ok$a;

    move-result-object v0

    return-object v0
.end method

.method protected c()I
    .registers 5

    invoke-super {p0}, Lcom/google/android/gms/internal/pg;->c()I

    move-result v0

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ok$a;->asg:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/pf;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ok$a;->gs:Lcom/google/android/gms/internal/c$f;

    if-eqz v1, :cond_18

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ok$a;->gs:Lcom/google/android/gms/internal/c$f;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pf;->c(ILcom/google/android/gms/internal/pm;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/ok$a;->ash:Lcom/google/android/gms/internal/c$j;

    if-eqz v1, :cond_24

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/ok$a;->ash:Lcom/google/android/gms/internal/c$j;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pf;->c(ILcom/google/android/gms/internal/pm;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_24
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    if-ne p1, p0, :cond_5

    const/4 v0, 0x1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_4
    :goto_4
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_5
    instance-of v1, p1, Lcom/google/android/gms/internal/ok$a;

    if-eqz v1, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/ok$a;

    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v2, p0, Lcom/google/android/gms/internal/ok$a;->asg:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ok$a;->asg:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ok$a;->gs:Lcom/google/android/gms/internal/c$f;

    if-nez v1, :cond_28

    iget-object v1, p1, Lcom/google/android/gms/internal/ok$a;->gs:Lcom/google/android/gms/internal/c$f;

    if-nez v1, :cond_4

    :cond_1b
    iget-object v1, p0, Lcom/google/android/gms/internal/ok$a;->ash:Lcom/google/android/gms/internal/c$j;

    if-nez v1, :cond_33

    iget-object v1, p1, Lcom/google/android/gms/internal/ok$a;->ash:Lcom/google/android/gms/internal/c$j;

    if-nez v1, :cond_4

    :cond_23
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ok$a;->a(Lcom/google/android/gms/internal/pg;)Z

    move-result v0

    goto :goto_4

    :cond_28
    iget-object v1, p0, Lcom/google/android/gms/internal/ok$a;->gs:Lcom/google/android/gms/internal/c$f;

    iget-object v2, p1, Lcom/google/android/gms/internal/ok$a;->gs:Lcom/google/android/gms/internal/c$f;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/c$f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_4

    :cond_33
    iget-object v1, p0, Lcom/google/android/gms/internal/ok$a;->ash:Lcom/google/android/gms/internal/c$j;

    iget-object v2, p1, Lcom/google/android/gms/internal/ok$a;->ash:Lcom/google/android/gms/internal/c$j;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/c$j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    goto :goto_4
.end method

.method public hashCode()I
    .registers 7

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ok$a;->asg:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ok$a;->asg:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ok$a;->gs:Lcom/google/android/gms/internal/c$f;

    if-nez v0, :cond_23

    move v0, v1

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ok$a;->ash:Lcom/google/android/gms/internal/c$j;

    if-nez v2, :cond_2a

    :goto_1a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ok$a;->qx()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/internal/ok$a;->gs:Lcom/google/android/gms/internal/c$f;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/c$f;->hashCode()I

    move-result v0

    goto :goto_13

    :cond_2a
    iget-object v1, p0, Lcom/google/android/gms/internal/ok$a;->ash:Lcom/google/android/gms/internal/c$j;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/c$j;->hashCode()I

    move-result v1

    goto :goto_1a
.end method

.method public p(Lcom/google/android/gms/internal/pe;)Lcom/google/android/gms/internal/ok$a;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pe;->qg()I

    move-result v0

    sparse-switch v0, :sswitch_data_38

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ok$a;->a(Lcom/google/android/gms/internal/pe;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pe;->qi()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ok$a;->asg:J

    goto :goto_0

    :sswitch_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ok$a;->gs:Lcom/google/android/gms/internal/c$f;

    if-nez v0, :cond_20

    new-instance v0, Lcom/google/android/gms/internal/c$f;

    invoke-direct {v0}, Lcom/google/android/gms/internal/c$f;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ok$a;->gs:Lcom/google/android/gms/internal/c$f;

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/ok$a;->gs:Lcom/google/android/gms/internal/c$f;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pe;->a(Lcom/google/android/gms/internal/pm;)V

    goto :goto_0

    :sswitch_26
    iget-object v0, p0, Lcom/google/android/gms/internal/ok$a;->ash:Lcom/google/android/gms/internal/c$j;

    if-nez v0, :cond_31

    new-instance v0, Lcom/google/android/gms/internal/c$j;

    invoke-direct {v0}, Lcom/google/android/gms/internal/c$j;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ok$a;->ash:Lcom/google/android/gms/internal/c$j;

    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/internal/ok$a;->ash:Lcom/google/android/gms/internal/c$j;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pe;->a(Lcom/google/android/gms/internal/pm;)V

    goto :goto_0

    nop

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_15
        0x1a -> :sswitch_26
    .end sparse-switch
.end method

.method public pJ()Lcom/google/android/gms/internal/ok$a;
    .registers 4

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ok$a;->asg:J

    iput-object v2, p0, Lcom/google/android/gms/internal/ok$a;->gs:Lcom/google/android/gms/internal/c$f;

    iput-object v2, p0, Lcom/google/android/gms/internal/ok$a;->ash:Lcom/google/android/gms/internal/c$j;

    iput-object v2, p0, Lcom/google/android/gms/internal/ok$a;->awy:Lcom/google/android/gms/internal/pi;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ok$a;->awJ:I

    return-object p0
.end method
