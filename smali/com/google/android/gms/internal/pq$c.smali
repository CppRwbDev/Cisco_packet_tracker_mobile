.class public final Lcom/google/android/gms/internal/pq$c;
.super Lcom/google/android/gms/internal/pg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/pq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/pg",
        "<",
        "Lcom/google/android/gms/internal/pq$c;",
        ">;"
    }
.end annotation


# instance fields
.field public awY:J

.field public awZ:I

.field public axa:I

.field public axb:Z

.field public axc:[Lcom/google/android/gms/internal/pq$d;

.field public axd:Lcom/google/android/gms/internal/pq$b;

.field public axe:[B

.field public axf:[B

.field public axg:[B

.field public axh:Lcom/google/android/gms/internal/pq$a;

.field public axi:Ljava/lang/String;

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/pg;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/pq$c;->qJ()Lcom/google/android/gms/internal/pq$c;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/pf;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/pq$c;->awY:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/pq$c;->awY:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/pf;->b(IJ)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/pq$c;->tag:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/pq$c;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pf;->b(ILjava/lang/String;)V

    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/pq$c;->axc:[Lcom/google/android/gms/internal/pq$d;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/gms/internal/pq$c;->axc:[Lcom/google/android/gms/internal/pq$d;

    array-length v0, v0

    if-lez v0, :cond_3a

    const/4 v0, 0x0

    :goto_28
    iget-object v1, p0, Lcom/google/android/gms/internal/pq$c;->axc:[Lcom/google/android/gms/internal/pq$d;

    array-length v1, v1

    if-ge v0, v1, :cond_3a

    iget-object v1, p0, Lcom/google/android/gms/internal/pq$c;->axc:[Lcom/google/android/gms/internal/pq$d;

    aget-object v1, v1, v0

    if-eqz v1, :cond_37

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/pf;->a(ILcom/google/android/gms/internal/pm;)V

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_3a
    iget-object v0, p0, Lcom/google/android/gms/internal/pq$c;->axe:[B

    sget-object v1, Lcom/google/android/gms/internal/pp;->awS:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4a

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/internal/pq$c;->axe:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pf;->a(I[B)V

    :cond_4a
    iget-object v0, p0, Lcom/google/android/gms/internal/pq$c;->axh:Lcom/google/android/gms/internal/pq$a;

    if-eqz v0, :cond_54

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/pq$c;->axh:Lcom/google/android/gms/internal/pq$a;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pf;->a(ILcom/google/android/gms/internal/pm;)V

    :cond_54
    iget-object v0, p0, Lcom/google/android/gms/internal/pq$c;->axf:[B

    sget-object v1, Lcom/google/android/gms/internal/pp;->awS:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_65

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/internal/pq$c;->axf:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pf;->a(I[B)V

    :cond_65
    iget-object v0, p0, Lcom/google/android/gms/internal/pq$c;->axd:Lcom/google/android/gms/internal/pq$b;

    if-eqz v0, :cond_70

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/gms/internal/pq$c;->axd:Lcom/google/android/gms/internal/pq$b;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pf;->a(ILcom/google/android/gms/internal/pm;)V

    :cond_70
    iget-boolean v0, p0, Lcom/google/android/gms/internal/pq$c;->axb:Z

    if-eqz v0, :cond_7b

    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/google/android/gms/internal/pq$c;->axb:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pf;->b(IZ)V

    :cond_7b
    iget v0, p0, Lcom/google/android/gms/internal/pq$c;->awZ:I

    if-eqz v0, :cond_86

    const/16 v0, 0xb

    iget v1, p0, Lcom/google/android/gms/internal/pq$c;->awZ:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pf;->s(II)V

    :cond_86
    iget v0, p0, Lcom/google/android/gms/internal/pq$c;->axa:I

    if-eqz v0, :cond_91

    const/16 v0, 0xc

    iget v1, p0, Lcom/google/android/gms/internal/pq$c;->axa:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pf;->s(II)V

    :cond_91
    iget-object v0, p0, Lcom/google/android/gms/internal/pq$c;->axg:[B

    sget-object v1, Lcom/google/android/gms/internal/pp;->awS:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_a2

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/android/gms/internal/pq$c;->axg:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pf;->a(I[B)V

    :cond_a2
    iget-object v0, p0, Lcom/google/android/gms/internal/pq$c;->axi:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/android/gms/internal/pq$c;->axi:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pf;->b(ILjava/lang/String;)V

    :cond_b3
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/pq$c;->x(Lcom/google/android/gms/internal/pe;)Lcom/google/android/gms/internal/pq$c;

    move-result-object v0

    return-object v0
.end method

.method protected c()I
    .registers 8

    invoke-super {p0}, Lcom/google/android/gms/internal/pg;->c()I

    move-result v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/pq$c;->awY:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/pq$c;->awY:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/pf;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/pq$c;->tag:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/pq$c;->tag:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pf;->j(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/internal/pq$c;->axc:[Lcom/google/android/gms/internal/pq$d;

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/google/android/gms/internal/pq$c;->axc:[Lcom/google/android/gms/internal/pq$d;

    array-length v1, v1

    if-lez v1, :cond_48

    const/4 v1, 0x0

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_33
    iget-object v2, p0, Lcom/google/android/gms/internal/pq$c;->axc:[Lcom/google/android/gms/internal/pq$d;

    array-length v2, v2

    if-ge v0, v2, :cond_47

    iget-object v2, p0, Lcom/google/android/gms/internal/pq$c;->axc:[Lcom/google/android/gms/internal/pq$d;

    aget-object v2, v2, v0

    if-eqz v2, :cond_44

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/pf;->c(ILcom/google/android/gms/internal/pm;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_47
    move v0, v1

    :cond_48
    iget-object v1, p0, Lcom/google/android/gms/internal/pq$c;->axe:[B

    sget-object v2, Lcom/google/android/gms/internal/pp;->awS:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_5a

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/pq$c;->axe:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pf;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5a
    iget-object v1, p0, Lcom/google/android/gms/internal/pq$c;->axh:Lcom/google/android/gms/internal/pq$a;

    if-eqz v1, :cond_66

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/pq$c;->axh:Lcom/google/android/gms/internal/pq$a;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pf;->c(ILcom/google/android/gms/internal/pm;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_66
    iget-object v1, p0, Lcom/google/android/gms/internal/pq$c;->axf:[B

    sget-object v2, Lcom/google/android/gms/internal/pp;->awS:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_79

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/pq$c;->axf:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pf;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_79
    iget-object v1, p0, Lcom/google/android/gms/internal/pq$c;->axd:Lcom/google/android/gms/internal/pq$b;

    if-eqz v1, :cond_86

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/pq$c;->axd:Lcom/google/android/gms/internal/pq$b;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pf;->c(ILcom/google/android/gms/internal/pm;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_86
    iget-boolean v1, p0, Lcom/google/android/gms/internal/pq$c;->axb:Z

    if-eqz v1, :cond_93

    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/android/gms/internal/pq$c;->axb:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pf;->c(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_93
    iget v1, p0, Lcom/google/android/gms/internal/pq$c;->awZ:I

    if-eqz v1, :cond_a0

    const/16 v1, 0xb

    iget v2, p0, Lcom/google/android/gms/internal/pq$c;->awZ:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pf;->u(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a0
    iget v1, p0, Lcom/google/android/gms/internal/pq$c;->axa:I

    if-eqz v1, :cond_ad

    const/16 v1, 0xc

    iget v2, p0, Lcom/google/android/gms/internal/pq$c;->axa:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pf;->u(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_ad
    iget-object v1, p0, Lcom/google/android/gms/internal/pq$c;->axg:[B

    sget-object v2, Lcom/google/android/gms/internal/pp;->awS:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_c0

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/pq$c;->axg:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pf;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c0
    iget-object v1, p0, Lcom/google/android/gms/internal/pq$c;->axi:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d3

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/pq$c;->axi:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pf;->j(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d3
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
    instance-of v1, p1, Lcom/google/android/gms/internal/pq$c;

    if-eqz v1, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/pq$c;

    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v2, p0, Lcom/google/android/gms/internal/pq$c;->awY:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/pq$c;->awY:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/pq$c;->tag:Ljava/lang/String;

    if-nez v1, :cond_72

    iget-object v1, p1, Lcom/google/android/gms/internal/pq$c;->tag:Ljava/lang/String;

    if-nez v1, :cond_4

    :cond_1b
    iget v1, p0, Lcom/google/android/gms/internal/pq$c;->awZ:I

    iget v2, p1, Lcom/google/android/gms/internal/pq$c;->awZ:I

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/google/android/gms/internal/pq$c;->axa:I

    iget v2, p1, Lcom/google/android/gms/internal/pq$c;->axa:I

    if-ne v1, v2, :cond_4

    iget-boolean v1, p0, Lcom/google/android/gms/internal/pq$c;->axb:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/pq$c;->axb:Z

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/pq$c;->axc:[Lcom/google/android/gms/internal/pq$d;

    iget-object v2, p1, Lcom/google/android/gms/internal/pq$c;->axc:[Lcom/google/android/gms/internal/pq$d;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pk;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/pq$c;->axd:Lcom/google/android/gms/internal/pq$b;

    if-nez v1, :cond_7d

    iget-object v1, p1, Lcom/google/android/gms/internal/pq$c;->axd:Lcom/google/android/gms/internal/pq$b;

    if-nez v1, :cond_4

    :cond_3f
    iget-object v1, p0, Lcom/google/android/gms/internal/pq$c;->axe:[B

    iget-object v2, p1, Lcom/google/android/gms/internal/pq$c;->axe:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/pq$c;->axf:[B

    iget-object v2, p1, Lcom/google/android/gms/internal/pq$c;->axf:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/pq$c;->axg:[B

    iget-object v2, p1, Lcom/google/android/gms/internal/pq$c;->axg:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/pq$c;->axh:Lcom/google/android/gms/internal/pq$a;

    if-nez v1, :cond_89

    iget-object v1, p1, Lcom/google/android/gms/internal/pq$c;->axh:Lcom/google/android/gms/internal/pq$a;

    if-nez v1, :cond_4

    :cond_65
    iget-object v1, p0, Lcom/google/android/gms/internal/pq$c;->axi:Ljava/lang/String;

    if-nez v1, :cond_95

    iget-object v1, p1, Lcom/google/android/gms/internal/pq$c;->axi:Ljava/lang/String;

    if-nez v1, :cond_4

    :cond_6d
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/pq$c;->a(Lcom/google/android/gms/internal/pg;)Z

    move-result v0

    goto :goto_4

    :cond_72
    iget-object v1, p0, Lcom/google/android/gms/internal/pq$c;->tag:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/pq$c;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_4

    :cond_7d
    iget-object v1, p0, Lcom/google/android/gms/internal/pq$c;->axd:Lcom/google/android/gms/internal/pq$b;

    iget-object v2, p1, Lcom/google/android/gms/internal/pq$c;->axd:Lcom/google/android/gms/internal/pq$b;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/pq$b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    goto/16 :goto_4

    :cond_89
    iget-object v1, p0, Lcom/google/android/gms/internal/pq$c;->axh:Lcom/google/android/gms/internal/pq$a;

    iget-object v2, p1, Lcom/google/android/gms/internal/pq$c;->axh:Lcom/google/android/gms/internal/pq$a;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/pq$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    goto/16 :goto_4

    :cond_95
    iget-object v1, p0, Lcom/google/android/gms/internal/pq$c;->axi:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/pq$c;->axi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    goto/16 :goto_4
.end method

.method public hashCode()I
    .registers 7

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/pq$c;->awY:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/pq$c;->awY:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/pq$c;->tag:Ljava/lang/String;

    if-nez v0, :cond_6a

    move v0, v1

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/pq$c;->awZ:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/pq$c;->axa:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/pq$c;->axb:Z

    if-eqz v0, :cond_71

    const/16 v0, 0x4cf

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/pq$c;->axc:[Lcom/google/android/gms/internal/pq$d;

    invoke-static {v2}, Lcom/google/android/gms/internal/pk;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/pq$c;->axd:Lcom/google/android/gms/internal/pq$b;

    if-nez v0, :cond_74

    move v0, v1

    :goto_37
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/pq$c;->axe:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/pq$c;->axf:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/pq$c;->axg:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/pq$c;->axh:Lcom/google/android/gms/internal/pq$a;

    if-nez v0, :cond_7b

    move v0, v1

    :goto_5a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/pq$c;->axi:Ljava/lang/String;

    if-nez v2, :cond_82

    :goto_61
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/pq$c;->qx()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_6a
    iget-object v0, p0, Lcom/google/android/gms/internal/pq$c;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_13

    :cond_71
    const/16 v0, 0x4d5

    goto :goto_26

    :cond_74
    iget-object v0, p0, Lcom/google/android/gms/internal/pq$c;->axd:Lcom/google/android/gms/internal/pq$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pq$b;->hashCode()I

    move-result v0

    goto :goto_37

    :cond_7b
    iget-object v0, p0, Lcom/google/android/gms/internal/pq$c;->axh:Lcom/google/android/gms/internal/pq$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pq$a;->hashCode()I

    move-result v0

    goto :goto_5a

    :cond_82
    iget-object v1, p0, Lcom/google/android/gms/internal/pq$c;->axi:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_61
.end method

.method public qJ()Lcom/google/android/gms/internal/pq$c;
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/pq$c;->awY:J

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/pq$c;->tag:Ljava/lang/String;

    iput v2, p0, Lcom/google/android/gms/internal/pq$c;->awZ:I

    iput v2, p0, Lcom/google/android/gms/internal/pq$c;->axa:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/pq$c;->axb:Z

    invoke-static {}, Lcom/google/android/gms/internal/pq$d;->qK()[Lcom/google/android/gms/internal/pq$d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/pq$c;->axc:[Lcom/google/android/gms/internal/pq$d;

    iput-object v3, p0, Lcom/google/android/gms/internal/pq$c;->axd:Lcom/google/android/gms/internal/pq$b;

    sget-object v0, Lcom/google/android/gms/internal/pp;->awS:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/pq$c;->axe:[B

    sget-object v0, Lcom/google/android/gms/internal/pp;->awS:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/pq$c;->axf:[B

    sget-object v0, Lcom/google/android/gms/internal/pp;->awS:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/pq$c;->axg:[B

    iput-object v3, p0, Lcom/google/android/gms/internal/pq$c;->axh:Lcom/google/android/gms/internal/pq$a;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/pq$c;->axi:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/internal/pq$c;->awy:Lcom/google/android/gms/internal/pi;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/pq$c;->awJ:I

    return-object p0
.end method

.method public x(Lcom/google/android/gms/internal/pe;)Lcom/google/android/gms/internal/pq$c;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pe;->qg()I

    move-result v0

    sparse-switch v0, :sswitch_data_b6

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/pq$c;->a(Lcom/google/android/gms/internal/pe;I)Z

    move-result v0

    if-nez v0, :cond_1

    :sswitch_e
    return-object p0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pe;->qi()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/pq$c;->awY:J

    goto :goto_1

    :sswitch_16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pe;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/pq$c;->tag:Ljava/lang/String;

    goto :goto_1

    :sswitch_1d
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/pp;->b(Lcom/google/android/gms/internal/pe;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/pq$c;->axc:[Lcom/google/android/gms/internal/pq$d;

    if-nez v0, :cond_49

    move v0, v1

    :goto_28
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/pq$d;

    if-eqz v0, :cond_32

    iget-object v3, p0, Lcom/google/android/gms/internal/pq$c;->axc:[Lcom/google/android/gms/internal/pq$d;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_32
    :goto_32
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4d

    new-instance v3, Lcom/google/android/gms/internal/pq$d;

    invoke-direct {v3}, Lcom/google/android/gms/internal/pq$d;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/pe;->a(Lcom/google/android/gms/internal/pm;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pe;->qg()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_49
    iget-object v0, p0, Lcom/google/android/gms/internal/pq$c;->axc:[Lcom/google/android/gms/internal/pq$d;

    array-length v0, v0

    goto :goto_28

    :cond_4d
    new-instance v3, Lcom/google/android/gms/internal/pq$d;

    invoke-direct {v3}, Lcom/google/android/gms/internal/pq$d;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pe;->a(Lcom/google/android/gms/internal/pm;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/pq$c;->axc:[Lcom/google/android/gms/internal/pq$d;

    goto :goto_1

    :sswitch_5c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pe;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/pq$c;->axe:[B

    goto :goto_1

    :sswitch_63
    iget-object v0, p0, Lcom/google/android/gms/internal/pq$c;->axh:Lcom/google/android/gms/internal/pq$a;

    if-nez v0, :cond_6e

    new-instance v0, Lcom/google/android/gms/internal/pq$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/pq$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/pq$c;->axh:Lcom/google/android/gms/internal/pq$a;

    :cond_6e
    iget-object v0, p0, Lcom/google/android/gms/internal/pq$c;->axh:Lcom/google/android/gms/internal/pq$a;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pe;->a(Lcom/google/android/gms/internal/pm;)V

    goto :goto_1

    :sswitch_74
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pe;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/pq$c;->axf:[B

    goto :goto_1

    :sswitch_7b
    iget-object v0, p0, Lcom/google/android/gms/internal/pq$c;->axd:Lcom/google/android/gms/internal/pq$b;

    if-nez v0, :cond_86

    new-instance v0, Lcom/google/android/gms/internal/pq$b;

    invoke-direct {v0}, Lcom/google/android/gms/internal/pq$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/pq$c;->axd:Lcom/google/android/gms/internal/pq$b;

    :cond_86
    iget-object v0, p0, Lcom/google/android/gms/internal/pq$c;->axd:Lcom/google/android/gms/internal/pq$b;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pe;->a(Lcom/google/android/gms/internal/pm;)V

    goto/16 :goto_1

    :sswitch_8d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pe;->qk()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/pq$c;->axb:Z

    goto/16 :goto_1

    :sswitch_95
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pe;->qj()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/pq$c;->awZ:I

    goto/16 :goto_1

    :sswitch_9d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pe;->qj()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/pq$c;->axa:I

    goto/16 :goto_1

    :sswitch_a5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pe;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/pq$c;->axg:[B

    goto/16 :goto_1

    :sswitch_ad
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pe;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/pq$c;->axi:Ljava/lang/String;

    goto/16 :goto_1

    nop

    :sswitch_data_b6
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_f
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1d
        0x32 -> :sswitch_5c
        0x3a -> :sswitch_63
        0x42 -> :sswitch_74
        0x4a -> :sswitch_7b
        0x50 -> :sswitch_8d
        0x58 -> :sswitch_95
        0x60 -> :sswitch_9d
        0x6a -> :sswitch_a5
        0x72 -> :sswitch_ad
    .end sparse-switch
.end method
