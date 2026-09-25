.class public final Lcom/google/android/gms/internal/pf;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/pf$a;
    }
.end annotation


# instance fields
.field private final awx:I

.field private final buffer:[B

.field private position:I


# direct methods
.method private constructor <init>([BII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/pf;->buffer:[B

    iput p2, p0, Lcom/google/android/gms/internal/pf;->position:I

    add-int v0, p2, p3

    iput v0, p0, Lcom/google/android/gms/internal/pf;->awx:I

    return-void
.end method

.method public static D(J)I
    .registers 4

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/pf;->G(J)I

    move-result v0

    return v0
.end method

.method public static E(J)I
    .registers 4

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/pf;->I(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/pf;->G(J)I

    move-result v0

    return v0
.end method

.method public static G(J)I
    .registers 6

    const-wide/16 v2, 0x0

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    const/4 v0, 0x2

    goto :goto_a

    :cond_14
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    const/4 v0, 0x3

    goto :goto_a

    :cond_1e
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    const/4 v0, 0x4

    goto :goto_a

    :cond_28
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_34

    const/4 v0, 0x5

    goto :goto_a

    :cond_34
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_40

    const/4 v0, 0x6

    goto :goto_a

    :cond_40
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_49

    const/4 v0, 0x7

    goto :goto_a

    :cond_49
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_53

    const/16 v0, 0x8

    goto :goto_a

    :cond_53
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5d

    const/16 v0, 0x9

    goto :goto_a

    :cond_5d
    const/16 v0, 0xa

    goto :goto_a
.end method

.method public static I(J)J
    .registers 6

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static V(Z)I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public static b(ID)I
    .registers 6

    invoke-static {p0}, Lcom/google/android/gms/internal/pf;->gy(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/pf;->f(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILcom/google/android/gms/internal/pm;)I
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/pf;->gy(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Lcom/google/android/gms/internal/pf;->d(Lcom/google/android/gms/internal/pm;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(I[B)I
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/pf;->gy(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/pf;->s([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b([BII)Lcom/google/android/gms/internal/pf;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/pf;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/pf;-><init>([BII)V

    return-object v0
.end method

.method public static c(IF)I
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/pf;->gy(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/pf;->e(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static c(ILcom/google/android/gms/internal/pm;)I
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/pf;->gy(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/pf;->e(Lcom/google/android/gms/internal/pm;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static c(IZ)I
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/pf;->gy(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/pf;->V(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static d(IJ)I
    .registers 6

    invoke-static {p0}, Lcom/google/android/gms/internal/pf;->gy(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/pf;->D(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static d(Lcom/google/android/gms/internal/pm;)I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/pm;->qG()I

    move-result v0

    return v0
.end method

.method public static df(Ljava/lang/String;)I
    .registers 3

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v1}, Lcom/google/android/gms/internal/pf;->gA(I)I

    move-result v1

    array-length v0, v0
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_c} :catch_e

    add-int/2addr v0, v1

    return v0

    :catch_e
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static e(F)I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public static e(IJ)I
    .registers 6

    invoke-static {p0}, Lcom/google/android/gms/internal/pf;->gy(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/pf;->E(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static e(Lcom/google/android/gms/internal/pm;)I
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/pm;->qG()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/pf;->gA(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static f(D)I
    .registers 3

    const/16 v0, 0x8

    return v0
.end method

.method public static gA(I)I
    .registers 2

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    const/4 v0, 0x2

    goto :goto_5

    :cond_c
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    const/4 v0, 0x3

    goto :goto_5

    :cond_13
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_1a

    const/4 v0, 0x4

    goto :goto_5

    :cond_1a
    const/4 v0, 0x5

    goto :goto_5
.end method

.method public static gC(I)I
    .registers 3

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method public static gv(I)I
    .registers 2

    if-ltz p0, :cond_7

    invoke-static {p0}, Lcom/google/android/gms/internal/pf;->gA(I)I

    move-result v0

    :goto_6
    return v0

    :cond_7
    const/16 v0, 0xa

    goto :goto_6
.end method

.method public static gw(I)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/pf;->gC(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/pf;->gA(I)I

    move-result v0

    return v0
.end method

.method public static gy(I)I
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/pp;->x(II)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/pf;->gA(I)I

    move-result v0

    return v0
.end method

.method public static j(ILjava/lang/String;)I
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/pf;->gy(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/pf;->df(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static q([B)Lcom/google/android/gms/internal/pf;
    .registers 3

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/pf;->b([BII)Lcom/google/android/gms/internal/pf;

    move-result-object v0

    return-object v0
.end method

.method public static s([B)I
    .registers 3

    array-length v0, p0

    invoke-static {v0}, Lcom/google/android/gms/internal/pf;->gA(I)I

    move-result v0

    array-length v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method public static u(II)I
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/pf;->gy(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/pf;->gv(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static v(II)I
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/pf;->gy(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/pf;->gw(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public B(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/pf;->F(J)V

    return-void
.end method

.method public C(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/pf;->I(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/pf;->F(J)V

    return-void
.end method

.method public F(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/pf;->gx(I)V

    return-void

    :cond_e
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/pf;->gx(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public H(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/pf;->gx(I)V

    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/pf;->gx(I)V

    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/pf;->gx(I)V

    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/pf;->gx(I)V

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/pf;->gx(I)V

    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/pf;->gx(I)V

    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/pf;->gx(I)V

    const/16 v0, 0x38

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/pf;->gx(I)V

    return-void
.end method

.method public U(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/pf;->gx(I)V

    return-void

    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public a(ID)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/pf;->w(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/pf;->e(D)V

    return-void
.end method

.method public a(ILcom/google/android/gms/internal/pm;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/pf;->w(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/pf;->c(Lcom/google/android/gms/internal/pm;)V

    return-void
.end method

.method public a(I[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/pf;->w(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/pf;->r([B)V

    return-void
.end method

.method public b(B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/pf;->position:I

    iget v1, p0, Lcom/google/android/gms/internal/pf;->awx:I

    if-ne v0, v1, :cond_10

    new-instance v0, Lcom/google/android/gms/internal/pf$a;

    iget v1, p0, Lcom/google/android/gms/internal/pf;->position:I

    iget v2, p0, Lcom/google/android/gms/internal/pf;->awx:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/pf$a;-><init>(II)V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/pf;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/pf;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/pf;->position:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public b(IF)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/pf;->w(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/pf;->d(F)V

    return-void
.end method

.method public b(IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/pf;->w(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/pf;->B(J)V

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/pf;->w(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/pf;->de(Ljava/lang/String;)V

    return-void
.end method

.method public b(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/pf;->w(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/pf;->U(Z)V

    return-void
.end method

.method public b(Lcom/google/android/gms/internal/pm;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/pm;->a(Lcom/google/android/gms/internal/pf;)V

    return-void
.end method

.method public c(IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/pf;->w(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/pf;->C(J)V

    return-void
.end method

.method public c(Lcom/google/android/gms/internal/pm;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pm;->qF()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/pf;->gz(I)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/pm;->a(Lcom/google/android/gms/internal/pf;)V

    return-void
.end method

.method public c([BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/pf;->awx:I

    iget v1, p0, Lcom/google/android/gms/internal/pf;->position:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/pf;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/pf;->position:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/android/gms/internal/pf;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/gms/internal/pf;->position:I

    return-void

    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/pf$a;

    iget v1, p0, Lcom/google/android/gms/internal/pf;->position:I

    iget v2, p0, Lcom/google/android/gms/internal/pf;->awx:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/pf$a;-><init>(II)V

    throw v0
.end method

.method public d(F)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/pf;->gB(I)V

    return-void
.end method

.method public de(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/pf;->gz(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/pf;->t([B)V

    return-void
.end method

.method public e(D)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/pf;->H(J)V

    return-void
.end method

.method public gB(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/pf;->gx(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/pf;->gx(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/pf;->gx(I)V

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/pf;->gx(I)V

    return-void
.end method

.method public gt(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/pf;->gz(I)V

    :goto_5
    return-void

    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/pf;->F(J)V

    goto :goto_5
.end method

.method public gu(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/pf;->gC(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/pf;->gz(I)V

    return-void
.end method

.method public gx(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/pf;->b(B)V

    return-void
.end method

.method public gz(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_8

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/pf;->gx(I)V

    return-void

    :cond_8
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/pf;->gx(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public qv()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/pf;->awx:I

    iget v1, p0, Lcom/google/android/gms/internal/pf;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public qw()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/pf;->qv()I

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method

.method public r([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/pf;->gz(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/pf;->t([B)V

    return-void
.end method

.method public s(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/pf;->w(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/pf;->gt(I)V

    return-void
.end method

.method public t(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/pf;->w(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/pf;->gu(I)V

    return-void
.end method

.method public t([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/pf;->c([BII)V

    return-void
.end method

.method public w(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/pp;->x(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/pf;->gz(I)V

    return-void
.end method
