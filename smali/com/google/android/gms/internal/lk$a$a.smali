.class public final Lcom/google/android/gms/internal/lk$a$a;
.super Lcom/google/android/gms/internal/pg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/lk$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/pg",
        "<",
        "Lcom/google/android/gms/internal/lk$a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile adu:[Lcom/google/android/gms/internal/lk$a$a;


# instance fields
.field public adv:Ljava/lang/String;

.field public adw:Ljava/lang/String;

.field public viewId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/pg;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lk$a$a;->lP()Lcom/google/android/gms/internal/lk$a$a;

    return-void
.end method

.method public static lO()[Lcom/google/android/gms/internal/lk$a$a;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/lk$a$a;->adu:[Lcom/google/android/gms/internal/lk$a$a;

    if-nez v0, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/pk;->awI:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/lk$a$a;->adu:[Lcom/google/android/gms/internal/lk$a$a;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/lk$a$a;

    sput-object v0, Lcom/google/android/gms/internal/lk$a$a;->adu:[Lcom/google/android/gms/internal/lk$a$a;

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/lk$a$a;->adu:[Lcom/google/android/gms/internal/lk$a$a;

    return-object v0

    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/pf;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/lk$a$a;->adv:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/lk$a$a;->adv:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pf;->b(ILjava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/lk$a$a;->adw:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/lk$a$a;->adw:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pf;->b(ILjava/lang/String;)V

    :cond_20
    iget v0, p0, Lcom/google/android/gms/internal/lk$a$a;->viewId:I

    if-eqz v0, :cond_2a

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/internal/lk$a$a;->viewId:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pf;->s(II)V

    :cond_2a
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lk$a$a;->o(Lcom/google/android/gms/internal/pe;)Lcom/google/android/gms/internal/lk$a$a;

    move-result-object v0

    return-object v0
.end method

.method protected c()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/pg;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/lk$a$a;->adv:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/lk$a$a;->adv:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pf;->j(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/internal/lk$a$a;->adw:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/lk$a$a;->adw:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pf;->j(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_28
    iget v1, p0, Lcom/google/android/gms/internal/lk$a$a;->viewId:I

    if-eqz v1, :cond_34

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/lk$a$a;->viewId:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pf;->u(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_34
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
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
    instance-of v1, p1, Lcom/google/android/gms/internal/lk$a$a;

    if-eqz v1, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/lk$a$a;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/android/gms/internal/lk$a$a;->adv:Ljava/lang/String;

    if-nez v1, :cond_26

    iget-object v1, p1, Lcom/google/android/gms/internal/lk$a$a;->adv:Ljava/lang/String;

    if-nez v1, :cond_4

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/lk$a$a;->adw:Ljava/lang/String;

    if-nez v1, :cond_31

    iget-object v1, p1, Lcom/google/android/gms/internal/lk$a$a;->adw:Ljava/lang/String;

    if-nez v1, :cond_4

    :cond_1b
    iget v1, p0, Lcom/google/android/gms/internal/lk$a$a;->viewId:I

    iget v2, p1, Lcom/google/android/gms/internal/lk$a$a;->viewId:I

    if-ne v1, v2, :cond_4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lk$a$a;->a(Lcom/google/android/gms/internal/pg;)Z

    move-result v0

    goto :goto_4

    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/internal/lk$a$a;->adv:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/lk$a$a;->adv:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_4

    :cond_31
    iget-object v1, p0, Lcom/google/android/gms/internal/lk$a$a;->adw:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/lk$a$a;->adw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/lk$a$a;->adv:Ljava/lang/String;

    if-nez v0, :cond_1c

    move v0, v1

    :goto_6
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/lk$a$a;->adw:Ljava/lang/String;

    if-nez v2, :cond_23

    :goto_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/lk$a$a;->viewId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lk$a$a;->qx()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/lk$a$a;->adv:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_23
    iget-object v1, p0, Lcom/google/android/gms/internal/lk$a$a;->adw:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_e
.end method

.method public lP()Lcom/google/android/gms/internal/lk$a$a;
    .registers 2

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/lk$a$a;->adv:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/lk$a$a;->adw:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/lk$a$a;->viewId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/lk$a$a;->awy:Lcom/google/android/gms/internal/pi;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/lk$a$a;->awJ:I

    return-object p0
.end method

.method public o(Lcom/google/android/gms/internal/pe;)Lcom/google/android/gms/internal/lk$a$a;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pe;->qg()I

    move-result v0

    sparse-switch v0, :sswitch_data_24

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/lk$a$a;->a(Lcom/google/android/gms/internal/pe;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pe;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/lk$a$a;->adv:Ljava/lang/String;

    goto :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pe;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/lk$a$a;->adw:Ljava/lang/String;

    goto :goto_0

    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pe;->qj()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/lk$a$a;->viewId:I

    goto :goto_0

    nop

    :sswitch_data_24
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_15
        0x18 -> :sswitch_1c
    .end sparse-switch
.end method
