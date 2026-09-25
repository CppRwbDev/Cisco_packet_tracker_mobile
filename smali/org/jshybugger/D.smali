.class public final Lorg/jshybugger/d;
.super Ljava/lang/Object;
.source "Deflate.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final n:[Lorg/jshybugger/e;

.field private static final o:[Ljava/lang/String;


# instance fields
.field private A:[S

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:[S

.field private U:[S

.field private V:[S

.field private W:Lorg/jshybugger/q;

.field private X:Lorg/jshybugger/q;

.field private Y:Lorg/jshybugger/q;

.field private Z:[B

.field a:[B

.field private aa:I

.field private ab:I

.field private ac:I

.field private ad:I

.field private ae:I

.field private af:S

.field private ag:I

.field private ah:Lorg/jshybugger/g;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:[S

.field g:[S

.field h:[I

.field i:I

.field j:I

.field k:[B

.field l:I

.field m:I

.field private p:Lorg/jshybugger/r;

.field private q:I

.field private r:I

.field private s:B

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:[B

.field private y:I

.field private z:[S


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/16 v12, 0x20

    const/16 v11, 0x8

    const/4 v1, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x4

    .line 68
    const/16 v0, 0xa

    new-array v6, v0, [Lorg/jshybugger/e;

    .line 70
    sput-object v6, Lorg/jshybugger/d;->n:[Lorg/jshybugger/e;

    new-instance v0, Lorg/jshybugger/e;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/jshybugger/e;-><init>(IIIII)V

    aput-object v0, v6, v1

    .line 71
    sget-object v0, Lorg/jshybugger/d;->n:[Lorg/jshybugger/e;

    const/4 v8, 0x1

    new-instance v2, Lorg/jshybugger/e;

    const/4 v7, 0x1

    move v3, v9

    move v4, v9

    move v5, v11

    move v6, v9

    invoke-direct/range {v2 .. v7}, Lorg/jshybugger/e;-><init>(IIIII)V

    aput-object v2, v0, v8

    .line 72
    sget-object v0, Lorg/jshybugger/d;->n:[Lorg/jshybugger/e;

    new-instance v2, Lorg/jshybugger/e;

    const/4 v4, 0x5

    const/16 v5, 0x10

    const/4 v7, 0x1

    move v3, v9

    move v6, v11

    invoke-direct/range {v2 .. v7}, Lorg/jshybugger/e;-><init>(IIIII)V

    aput-object v2, v0, v10

    .line 73
    sget-object v0, Lorg/jshybugger/d;->n:[Lorg/jshybugger/e;

    const/4 v8, 0x3

    new-instance v2, Lorg/jshybugger/e;

    const/4 v4, 0x6

    const/4 v7, 0x1

    move v3, v9

    move v5, v12

    move v6, v12

    invoke-direct/range {v2 .. v7}, Lorg/jshybugger/e;-><init>(IIIII)V

    aput-object v2, v0, v8

    .line 75
    sget-object v0, Lorg/jshybugger/d;->n:[Lorg/jshybugger/e;

    new-instance v2, Lorg/jshybugger/e;

    const/16 v5, 0x10

    const/16 v6, 0x10

    move v3, v9

    move v4, v9

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lorg/jshybugger/e;-><init>(IIIII)V

    aput-object v2, v0, v9

    .line 76
    sget-object v0, Lorg/jshybugger/d;->n:[Lorg/jshybugger/e;

    const/4 v8, 0x5

    new-instance v2, Lorg/jshybugger/e;

    const/16 v4, 0x10

    move v3, v11

    move v5, v12

    move v6, v12

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lorg/jshybugger/e;-><init>(IIIII)V

    aput-object v2, v0, v8

    .line 77
    sget-object v0, Lorg/jshybugger/d;->n:[Lorg/jshybugger/e;

    const/4 v8, 0x6

    new-instance v2, Lorg/jshybugger/e;

    const/16 v4, 0x10

    const/16 v5, 0x80

    const/16 v6, 0x80

    move v3, v11

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lorg/jshybugger/e;-><init>(IIIII)V

    aput-object v2, v0, v8

    .line 78
    sget-object v0, Lorg/jshybugger/d;->n:[Lorg/jshybugger/e;

    const/4 v8, 0x7

    new-instance v2, Lorg/jshybugger/e;

    const/16 v5, 0x80

    const/16 v6, 0x100

    move v3, v11

    move v4, v12

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lorg/jshybugger/e;-><init>(IIIII)V

    aput-object v2, v0, v8

    .line 79
    sget-object v0, Lorg/jshybugger/d;->n:[Lorg/jshybugger/e;

    new-instance v2, Lorg/jshybugger/e;

    const/16 v4, 0x80

    const/16 v5, 0x102

    const/16 v6, 0x400

    move v3, v12

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lorg/jshybugger/e;-><init>(IIIII)V

    aput-object v2, v0, v11

    .line 80
    sget-object v0, Lorg/jshybugger/d;->n:[Lorg/jshybugger/e;

    const/16 v8, 0x9

    new-instance v2, Lorg/jshybugger/e;

    const/16 v4, 0x102

    const/16 v5, 0x102

    const/16 v6, 0x1000

    move v3, v12

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lorg/jshybugger/e;-><init>(IIIII)V

    aput-object v2, v0, v8

    .line 83
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "need dictionary"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "stream end"

    aput-object v2, v0, v1

    const-string v1, ""

    aput-object v1, v0, v10

    const/4 v1, 0x3

    const-string v2, "file error"

    aput-object v2, v0, v1

    const-string v1, "stream error"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string v2, "data error"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "insufficient memory"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "buffer error"

    aput-object v2, v0, v1

    const-string v1, "incompatible version"

    aput-object v1, v0, v11

    const/16 v1, 0x9

    const-string v2, ""

    aput-object v2, v0, v1

    sput-object v0, Lorg/jshybugger/d;->o:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/jshybugger/r;)V
    .registers 5

    .prologue
    const/16 v2, 0x23d

    const/16 v1, 0x10

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/4 v0, 0x1

    iput v0, p0, Lorg/jshybugger/d;->d:I

    .line 260
    new-instance v0, Lorg/jshybugger/q;

    invoke-direct {v0}, Lorg/jshybugger/q;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/d;->W:Lorg/jshybugger/q;

    .line 261
    new-instance v0, Lorg/jshybugger/q;

    invoke-direct {v0}, Lorg/jshybugger/q;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/d;->X:Lorg/jshybugger/q;

    .line 262
    new-instance v0, Lorg/jshybugger/q;

    invoke-direct {v0}, Lorg/jshybugger/q;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/d;->Y:Lorg/jshybugger/q;

    .line 265
    new-array v0, v1, [S

    iput-object v0, p0, Lorg/jshybugger/d;->f:[S

    .line 267
    new-array v0, v1, [S

    iput-object v0, p0, Lorg/jshybugger/d;->g:[S

    .line 270
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/jshybugger/d;->h:[I

    .line 278
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/jshybugger/d;->k:[B

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jshybugger/d;->ah:Lorg/jshybugger/g;

    .line 325
    iput-object p1, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    .line 326
    const/16 v0, 0x47a

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/jshybugger/d;->T:[S

    .line 327
    const/16 v0, 0x7a

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/jshybugger/d;->U:[S

    .line 328
    const/16 v0, 0x4e

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/jshybugger/d;->V:[S

    .line 329
    return-void
.end method

.method private a(II)V
    .registers 6

    .prologue
    const v2, 0xffff

    .line 583
    iget v0, p0, Lorg/jshybugger/d;->ag:I

    rsub-int/lit8 v1, p2, 0x10

    if-le v0, v1, :cond_2a

    .line 585
    iget-short v0, p0, Lorg/jshybugger/d;->af:S

    iget v1, p0, Lorg/jshybugger/d;->ag:I

    shl-int v1, p1, v1

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/jshybugger/d;->af:S

    .line 588
    iget-short v0, p0, Lorg/jshybugger/d;->af:S

    invoke-virtual {p0, v0}, Lorg/jshybugger/d;->a(I)V

    .line 589
    iget v0, p0, Lorg/jshybugger/d;->ag:I

    rsub-int/lit8 v0, v0, 0x10

    ushr-int v0, p1, v0

    int-to-short v0, v0

    iput-short v0, p0, Lorg/jshybugger/d;->af:S

    .line 590
    iget v0, p0, Lorg/jshybugger/d;->ag:I

    add-int/lit8 v1, p2, -0x10

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jshybugger/d;->ag:I

    .line 596
    :goto_29
    return-void

    .line 593
    :cond_2a
    iget-short v0, p0, Lorg/jshybugger/d;->af:S

    iget v1, p0, Lorg/jshybugger/d;->ag:I

    shl-int v1, p1, v1

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/jshybugger/d;->af:S

    .line 594
    iget v0, p0, Lorg/jshybugger/d;->ag:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/jshybugger/d;->ag:I

    goto :goto_29
.end method

.method private a(IIZ)V
    .registers 6

    .prologue
    .line 846
    if-eqz p3, :cond_20

    const/4 v0, 0x1

    :goto_3
    add-int/lit8 v0, v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/jshybugger/d;->a(II)V

    .line 847
    invoke-direct {p0}, Lorg/jshybugger/d;->d()V

    const/16 v0, 0x8

    iput v0, p0, Lorg/jshybugger/d;->ae:I

    int-to-short v0, p2

    invoke-virtual {p0, v0}, Lorg/jshybugger/d;->a(I)V

    xor-int/lit8 v0, p2, -0x1

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lorg/jshybugger/d;->a(I)V

    iget-object v0, p0, Lorg/jshybugger/d;->x:[B

    invoke-virtual {p0, v0, p1, p2}, Lorg/jshybugger/d;->a([BII)V

    .line 848
    return-void

    .line 846
    :cond_20
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private a(I[S)V
    .registers 6

    .prologue
    const v2, 0xffff

    .line 578
    shl-int/lit8 v0, p1, 0x1

    .line 579
    aget-short v1, p2, v0

    and-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    aget-short v0, p2, v0

    and-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lorg/jshybugger/d;->a(II)V

    .line 580
    return-void
.end method

.method private a(Z)V
    .registers 14

    .prologue
    const/4 v11, 0x5

    const/4 v1, -0x1

    const/4 v4, 0x1

    const/4 v10, 0x3

    const/4 v3, 0x0

    .line 777
    iget v0, p0, Lorg/jshybugger/d;->G:I

    if-ltz v0, :cond_29

    iget v0, p0, Lorg/jshybugger/d;->G:I

    :goto_b
    iget v2, p0, Lorg/jshybugger/d;->K:I

    iget v5, p0, Lorg/jshybugger/d;->G:I

    sub-int v7, v2, v5

    iget v2, p0, Lorg/jshybugger/d;->e:I

    if-lez v2, :cond_c4

    iget-byte v2, p0, Lorg/jshybugger/d;->s:B

    const/4 v5, 0x2

    if-ne v2, v5, :cond_4f

    move v2, v3

    move v5, v3

    :goto_1c
    const/4 v6, 0x7

    if-ge v5, v6, :cond_12e

    iget-object v6, p0, Lorg/jshybugger/d;->T:[S

    shl-int/lit8 v8, v5, 0x1

    aget-short v6, v6, v8

    add-int/2addr v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_29
    move v0, v1

    goto :goto_b

    :goto_2b
    const/16 v8, 0x80

    if-ge v5, v8, :cond_39

    iget-object v8, p0, Lorg/jshybugger/d;->T:[S

    shl-int/lit8 v9, v5, 0x1

    aget-short v8, v8, v9

    add-int/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_39
    :goto_39
    const/16 v8, 0x100

    if-ge v5, v8, :cond_47

    iget-object v8, p0, Lorg/jshybugger/d;->T:[S

    shl-int/lit8 v9, v5, 0x1

    aget-short v8, v8, v9

    add-int/2addr v2, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    :cond_47
    ushr-int/lit8 v5, v6, 0x2

    if-le v2, v5, :cond_85

    move v2, v3

    :goto_4c
    int-to-byte v2, v2

    iput-byte v2, p0, Lorg/jshybugger/d;->s:B

    :cond_4f
    iget-object v2, p0, Lorg/jshybugger/d;->W:Lorg/jshybugger/q;

    invoke-virtual {v2, p0}, Lorg/jshybugger/q;->a(Lorg/jshybugger/d;)V

    iget-object v2, p0, Lorg/jshybugger/d;->X:Lorg/jshybugger/q;

    invoke-virtual {v2, p0}, Lorg/jshybugger/q;->a(Lorg/jshybugger/d;)V

    iget-object v2, p0, Lorg/jshybugger/d;->T:[S

    iget-object v5, p0, Lorg/jshybugger/d;->W:Lorg/jshybugger/q;

    iget v5, v5, Lorg/jshybugger/q;->i:I

    invoke-direct {p0, v2, v5}, Lorg/jshybugger/d;->b([SI)V

    iget-object v2, p0, Lorg/jshybugger/d;->U:[S

    iget-object v5, p0, Lorg/jshybugger/d;->X:Lorg/jshybugger/q;

    iget v5, v5, Lorg/jshybugger/q;->i:I

    invoke-direct {p0, v2, v5}, Lorg/jshybugger/d;->b([SI)V

    iget-object v2, p0, Lorg/jshybugger/d;->Y:Lorg/jshybugger/q;

    invoke-virtual {v2, p0}, Lorg/jshybugger/q;->a(Lorg/jshybugger/d;)V

    const/16 v2, 0x12

    :goto_72
    if-lt v2, v10, :cond_87

    iget-object v5, p0, Lorg/jshybugger/d;->V:[S

    sget-object v6, Lorg/jshybugger/q;->d:[B

    aget-byte v6, v6, v2

    shl-int/lit8 v6, v6, 0x1

    add-int/lit8 v6, v6, 0x1

    aget-short v5, v5, v6

    if-nez v5, :cond_87

    add-int/lit8 v2, v2, -0x1

    goto :goto_72

    :cond_85
    move v2, v4

    goto :goto_4c

    :cond_87
    iget v5, p0, Lorg/jshybugger/d;->l:I

    add-int/lit8 v6, v2, 0x1

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, 0x5

    add-int/lit8 v6, v6, 0x5

    add-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    iput v5, p0, Lorg/jshybugger/d;->l:I

    iget v5, p0, Lorg/jshybugger/d;->l:I

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x7

    ushr-int/lit8 v6, v5, 0x3

    iget v5, p0, Lorg/jshybugger/d;->m:I

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x7

    ushr-int/lit8 v5, v5, 0x3

    if-gt v5, v6, :cond_a9

    move v6, v5

    :cond_a9
    :goto_a9
    add-int/lit8 v8, v7, 0x4

    if-gt v8, v6, :cond_ca

    if-eq v0, v1, :cond_ca

    invoke-direct {p0, v0, v7, p1}, Lorg/jshybugger/d;->a(IIZ)V

    :goto_b2
    invoke-direct {p0}, Lorg/jshybugger/d;->b()V

    if-eqz p1, :cond_ba

    invoke-direct {p0}, Lorg/jshybugger/d;->d()V

    .line 780
    :cond_ba
    iget v0, p0, Lorg/jshybugger/d;->K:I

    iput v0, p0, Lorg/jshybugger/d;->G:I

    .line 781
    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    invoke-virtual {v0}, Lorg/jshybugger/r;->b()V

    .line 782
    return-void

    .line 777
    :cond_c4
    add-int/lit8 v2, v7, 0x5

    move v5, v2

    move v6, v2

    move v2, v3

    goto :goto_a9

    :cond_ca
    if-ne v5, v6, :cond_dd

    if-eqz p1, :cond_db

    :goto_ce
    add-int/lit8 v0, v4, 0x2

    invoke-direct {p0, v0, v10}, Lorg/jshybugger/d;->a(II)V

    sget-object v0, Lorg/jshybugger/p;->a:[S

    sget-object v1, Lorg/jshybugger/p;->b:[S

    invoke-direct {p0, v0, v1}, Lorg/jshybugger/d;->a([S[S)V

    goto :goto_b2

    :cond_db
    move v4, v3

    goto :goto_ce

    :cond_dd
    if-eqz p1, :cond_116

    :goto_df
    add-int/lit8 v0, v4, 0x4

    invoke-direct {p0, v0, v10}, Lorg/jshybugger/d;->a(II)V

    iget-object v0, p0, Lorg/jshybugger/d;->W:Lorg/jshybugger/q;

    iget v0, v0, Lorg/jshybugger/q;->i:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/jshybugger/d;->X:Lorg/jshybugger/q;

    iget v1, v1, Lorg/jshybugger/q;->i:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit16 v4, v0, -0x101

    invoke-direct {p0, v4, v11}, Lorg/jshybugger/d;->a(II)V

    add-int/lit8 v4, v1, -0x1

    invoke-direct {p0, v4, v11}, Lorg/jshybugger/d;->a(II)V

    add-int/lit8 v4, v2, -0x4

    const/4 v5, 0x4

    invoke-direct {p0, v4, v5}, Lorg/jshybugger/d;->a(II)V

    :goto_102
    if-ge v3, v2, :cond_118

    iget-object v4, p0, Lorg/jshybugger/d;->V:[S

    sget-object v5, Lorg/jshybugger/q;->d:[B

    aget-byte v5, v5, v3

    shl-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-short v4, v4, v5

    invoke-direct {p0, v4, v10}, Lorg/jshybugger/d;->a(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_102

    :cond_116
    move v4, v3

    goto :goto_df

    :cond_118
    iget-object v2, p0, Lorg/jshybugger/d;->T:[S

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v2, v0}, Lorg/jshybugger/d;->c([SI)V

    iget-object v0, p0, Lorg/jshybugger/d;->U:[S

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/jshybugger/d;->c([SI)V

    iget-object v0, p0, Lorg/jshybugger/d;->T:[S

    iget-object v1, p0, Lorg/jshybugger/d;->U:[S

    invoke-direct {p0, v0, v1}, Lorg/jshybugger/d;->a([S[S)V

    goto :goto_b2

    :cond_12e
    move v6, v3

    goto/16 :goto_2b
.end method

.method private a([S[S)V
    .registers 9

    .prologue
    .line 672
    const/4 v0, 0x0

    .line 676
    iget v1, p0, Lorg/jshybugger/d;->ab:I

    if-eqz v1, :cond_33

    .line 678
    :cond_5
    iget-object v1, p0, Lorg/jshybugger/d;->a:[B

    iget v2, p0, Lorg/jshybugger/d;->ac:I

    shl-int/lit8 v3, v0, 0x1

    add-int/2addr v2, v3

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    iget-object v2, p0, Lorg/jshybugger/d;->a:[B

    iget v3, p0, Lorg/jshybugger/d;->ac:I

    shl-int/lit8 v4, v0, 0x1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 680
    iget-object v2, p0, Lorg/jshybugger/d;->Z:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v0, v0, 0x1

    .line 682
    if-nez v1, :cond_3f

    .line 683
    invoke-direct {p0, v2, p1}, Lorg/jshybugger/d;->a(I[S)V

    .line 708
    :cond_2f
    :goto_2f
    iget v1, p0, Lorg/jshybugger/d;->ab:I

    if-lt v0, v1, :cond_5

    .line 711
    :cond_33
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Lorg/jshybugger/d;->a(I[S)V

    .line 712
    const/16 v0, 0x201

    aget-short v0, p1, v0

    iput v0, p0, Lorg/jshybugger/d;->ae:I

    .line 713
    return-void

    .line 687
    :cond_3f
    sget-object v3, Lorg/jshybugger/q;->e:[B

    aget-byte v3, v3, v2

    .line 689
    add-int/lit16 v4, v3, 0x100

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4, p1}, Lorg/jshybugger/d;->a(I[S)V

    .line 690
    sget-object v4, Lorg/jshybugger/q;->a:[I

    aget v4, v4, v3

    .line 691
    if-eqz v4, :cond_58

    .line 692
    sget-object v5, Lorg/jshybugger/q;->f:[I

    aget v3, v5, v3

    sub-int/2addr v2, v3

    .line 693
    invoke-direct {p0, v2, v4}, Lorg/jshybugger/d;->a(II)V

    .line 695
    :cond_58
    add-int/lit8 v1, v1, -0x1

    .line 696
    invoke-static {v1}, Lorg/jshybugger/q;->a(I)I

    move-result v2

    .line 698
    invoke-direct {p0, v2, p2}, Lorg/jshybugger/d;->a(I[S)V

    .line 699
    sget-object v3, Lorg/jshybugger/q;->b:[I

    aget v3, v3, v2

    .line 700
    if-eqz v3, :cond_2f

    .line 701
    sget-object v4, Lorg/jshybugger/q;->g:[I

    aget v2, v4, v2

    sub-int/2addr v1, v2

    .line 702
    invoke-direct {p0, v1, v3}, Lorg/jshybugger/d;->a(II)V

    goto :goto_2f
.end method

.method private static a([SII[B)Z
    .registers 6

    .prologue
    .line 411
    shl-int/lit8 v0, p1, 0x1

    aget-short v0, p0, v0

    .line 412
    shl-int/lit8 v1, p2, 0x1

    aget-short v1, p0, v1

    .line 413
    if-lt v0, v1, :cond_12

    if-ne v0, v1, :cond_14

    aget-byte v0, p3, p1

    aget-byte v1, p3, p2

    if-gt v0, v1, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static a([B)[B
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1736
    array-length v0, p0

    new-array v0, v0, [B

    .line 1737
    array-length v1, v0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1738
    return-object v0
.end method

.method private static a([S)[S
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1741
    array-length v0, p0

    new-array v0, v0, [S

    .line 1742
    array-length v1, v0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1743
    return-object v0
.end method

.method private b()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 375
    move v0, v1

    :goto_2
    const/16 v2, 0x11e

    if-ge v0, v2, :cond_f

    iget-object v2, p0, Lorg/jshybugger/d;->T:[S

    shl-int/lit8 v3, v0, 0x1

    aput-short v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_f
    move v0, v1

    .line 376
    :goto_10
    const/16 v2, 0x1e

    if-ge v0, v2, :cond_1d

    iget-object v2, p0, Lorg/jshybugger/d;->U:[S

    shl-int/lit8 v3, v0, 0x1

    aput-short v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1d
    move v0, v1

    .line 377
    :goto_1e
    const/16 v2, 0x13

    if-ge v0, v2, :cond_2b

    iget-object v2, p0, Lorg/jshybugger/d;->V:[S

    shl-int/lit8 v3, v0, 0x1

    aput-short v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 379
    :cond_2b
    iget-object v0, p0, Lorg/jshybugger/d;->T:[S

    const/16 v2, 0x200

    const/4 v3, 0x1

    aput-short v3, v0, v2

    .line 380
    iput v1, p0, Lorg/jshybugger/d;->m:I

    iput v1, p0, Lorg/jshybugger/d;->l:I

    .line 381
    iput v1, p0, Lorg/jshybugger/d;->ad:I

    iput v1, p0, Lorg/jshybugger/d;->ab:I

    .line 382
    return-void
.end method

.method private b([SI)V
    .registers 14

    .prologue
    const/4 v4, 0x7

    const/4 v2, 0x4

    const/4 v7, -0x1

    const/4 v1, 0x3

    const/4 v6, 0x0

    .line 423
    .line 425
    const/4 v0, 0x1

    aget-short v8, p1, v0

    .line 430
    if-nez v8, :cond_86

    const/16 v0, 0x8a

    move v3, v0

    move v0, v1

    .line 431
    :goto_e
    add-int/lit8 v5, p2, 0x1

    shl-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1

    aput-short v7, p1, v5

    move v5, v6

    move v10, v6

    .line 433
    :goto_18
    if-gt v10, p2, :cond_85

    .line 434
    add-int/lit8 v9, v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    add-int/lit8 v9, v9, 0x1

    aget-short v9, p1, v9

    .line 435
    add-int/lit8 v5, v5, 0x1

    if-ge v5, v3, :cond_28

    if-eq v8, v9, :cond_3c

    .line 436
    :cond_28
    if-ge v5, v0, :cond_41

    .line 439
    iget-object v0, p0, Lorg/jshybugger/d;->V:[S

    shl-int/lit8 v3, v8, 0x1

    aget-short v7, v0, v3

    add-int/2addr v5, v7

    int-to-short v5, v5

    aput-short v5, v0, v3

    .line 452
    :goto_34
    if-nez v9, :cond_78

    .line 453
    const/16 v0, 0x8a

    move v3, v0

    move v5, v6

    move v7, v8

    move v0, v1

    .line 433
    :cond_3c
    :goto_3c
    add-int/lit8 v8, v10, 0x1

    move v10, v8

    move v8, v9

    goto :goto_18

    .line 441
    :cond_41
    if-eqz v8, :cond_5c

    .line 442
    if-eq v8, v7, :cond_50

    iget-object v0, p0, Lorg/jshybugger/d;->V:[S

    shl-int/lit8 v3, v8, 0x1

    aget-short v5, v0, v3

    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    aput-short v5, v0, v3

    .line 443
    :cond_50
    iget-object v0, p0, Lorg/jshybugger/d;->V:[S

    const/16 v3, 0x20

    aget-short v5, v0, v3

    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    aput-short v5, v0, v3

    goto :goto_34

    .line 445
    :cond_5c
    const/16 v0, 0xa

    if-gt v5, v0, :cond_6c

    .line 446
    iget-object v0, p0, Lorg/jshybugger/d;->V:[S

    const/16 v3, 0x22

    aget-short v5, v0, v3

    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    aput-short v5, v0, v3

    goto :goto_34

    .line 449
    :cond_6c
    iget-object v0, p0, Lorg/jshybugger/d;->V:[S

    const/16 v3, 0x24

    aget-short v5, v0, v3

    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    aput-short v5, v0, v3

    goto :goto_34

    .line 455
    :cond_78
    if-ne v8, v9, :cond_80

    .line 456
    const/4 v0, 0x6

    move v3, v0

    move v5, v6

    move v7, v8

    move v0, v1

    goto :goto_3c

    :cond_80
    move v0, v2

    move v3, v4

    move v5, v6

    move v7, v8

    .line 459
    goto :goto_3c

    .line 462
    :cond_85
    return-void

    :cond_86
    move v0, v2

    move v3, v4

    goto :goto_e
.end method

.method private b(II)Z
    .registers 15

    .prologue
    .line 632
    iget-object v0, p0, Lorg/jshybugger/d;->a:[B

    iget v1, p0, Lorg/jshybugger/d;->ac:I

    iget v2, p0, Lorg/jshybugger/d;->ab:I

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 633
    iget-object v0, p0, Lorg/jshybugger/d;->a:[B

    iget v1, p0, Lorg/jshybugger/d;->ac:I

    iget v2, p0, Lorg/jshybugger/d;->ab:I

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 635
    iget-object v0, p0, Lorg/jshybugger/d;->Z:[B

    iget v1, p0, Lorg/jshybugger/d;->ab:I

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    iget v0, p0, Lorg/jshybugger/d;->ab:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jshybugger/d;->ab:I

    .line 637
    if-nez p1, :cond_66

    .line 639
    iget-object v0, p0, Lorg/jshybugger/d;->T:[S

    shl-int/lit8 v1, p2, 0x1

    aget-short v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    aput-short v2, v0, v1

    .line 649
    :goto_36
    iget v0, p0, Lorg/jshybugger/d;->ab:I

    and-int/lit16 v0, v0, 0x1fff

    if-nez v0, :cond_a1

    iget v0, p0, Lorg/jshybugger/d;->e:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_a1

    .line 651
    iget v0, p0, Lorg/jshybugger/d;->ab:I

    shl-int/lit8 v1, v0, 0x3

    .line 652
    iget v0, p0, Lorg/jshybugger/d;->K:I

    iget v2, p0, Lorg/jshybugger/d;->G:I

    sub-int v2, v0, v2

    .line 654
    const/4 v0, 0x0

    :goto_4c
    const/16 v3, 0x1e

    if-ge v0, v3, :cond_91

    .line 655
    int-to-long v4, v1

    iget-object v1, p0, Lorg/jshybugger/d;->U:[S

    shl-int/lit8 v3, v0, 0x1

    aget-short v1, v1, v3

    int-to-long v6, v1

    const-wide/16 v8, 0x5

    sget-object v1, Lorg/jshybugger/q;->b:[I

    aget v1, v1, v0

    int-to-long v10, v1

    add-long/2addr v8, v10

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    long-to-int v1, v4

    .line 654
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 642
    :cond_66
    iget v0, p0, Lorg/jshybugger/d;->ad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jshybugger/d;->ad:I

    .line 644
    add-int/lit8 v0, p1, -0x1

    .line 645
    iget-object v1, p0, Lorg/jshybugger/d;->T:[S

    sget-object v2, Lorg/jshybugger/q;->e:[B

    aget-byte v2, v2, p2

    add-int/lit16 v2, v2, 0x100

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x1

    aget-short v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    aput-short v3, v1, v2

    .line 646
    iget-object v1, p0, Lorg/jshybugger/d;->U:[S

    invoke-static {v0}, Lorg/jshybugger/q;->a(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    aget-short v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    aput-short v2, v1, v0

    goto :goto_36

    .line 658
    :cond_91
    ushr-int/lit8 v0, v1, 0x3

    .line 659
    iget v1, p0, Lorg/jshybugger/d;->ad:I

    iget v3, p0, Lorg/jshybugger/d;->ab:I

    div-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_a1

    div-int/lit8 v1, v2, 0x2

    if-ge v0, v1, :cond_a1

    const/4 v0, 0x1

    .line 662
    :goto_a0
    return v0

    :cond_a1
    iget v0, p0, Lorg/jshybugger/d;->ab:I

    iget v1, p0, Lorg/jshybugger/d;->aa:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_ab

    const/4 v0, 0x1

    goto :goto_a0

    :cond_ab
    const/4 v0, 0x0

    goto :goto_a0
.end method

.method private c()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 731
    iget v0, p0, Lorg/jshybugger/d;->ag:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_11

    .line 732
    iget-short v0, p0, Lorg/jshybugger/d;->af:S

    invoke-virtual {p0, v0}, Lorg/jshybugger/d;->a(I)V

    .line 733
    iput-short v2, p0, Lorg/jshybugger/d;->af:S

    .line 734
    iput v2, p0, Lorg/jshybugger/d;->ag:I

    .line 741
    :cond_10
    :goto_10
    return-void

    .line 736
    :cond_11
    iget v0, p0, Lorg/jshybugger/d;->ag:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_10

    .line 737
    iget-short v0, p0, Lorg/jshybugger/d;->af:S

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/jshybugger/d;->a(B)V

    .line 738
    iget-short v0, p0, Lorg/jshybugger/d;->af:S

    ushr-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    iput-short v0, p0, Lorg/jshybugger/d;->af:S

    .line 739
    iget v0, p0, Lorg/jshybugger/d;->ag:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lorg/jshybugger/d;->ag:I

    goto :goto_10
.end method

.method private c(I)V
    .registers 3

    .prologue
    .line 573
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/jshybugger/d;->a(B)V

    .line 574
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lorg/jshybugger/d;->a(B)V

    .line 575
    return-void
.end method

.method private c([SI)V
    .registers 16

    .prologue
    const/16 v4, 0x8a

    const/4 v2, 0x4

    const/4 v5, 0x7

    const/4 v7, 0x0

    const/4 v1, 0x3

    .line 513
    const/4 v8, -0x1

    .line 515
    const/4 v0, 0x1

    aget-short v9, p1, v0

    .line 520
    if-nez v9, :cond_86

    move v0, v1

    move v3, v4

    :goto_e
    move v6, v3

    move v11, v7

    move v3, v0

    move v0, v7

    .line 522
    :goto_12
    if-gt v11, p2, :cond_80

    .line 523
    add-int/lit8 v10, v11, 0x1

    shl-int/lit8 v10, v10, 0x1

    add-int/lit8 v10, v10, 0x1

    aget-short v10, p1, v10

    .line 524
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v6, :cond_22

    if-eq v9, v10, :cond_81

    .line 525
    :cond_22
    if-ge v0, v3, :cond_3c

    .line 528
    :cond_24
    iget-object v3, p0, Lorg/jshybugger/d;->V:[S

    invoke-direct {p0, v9, v3}, Lorg/jshybugger/d;->a(I[S)V

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_24

    .line 546
    :goto_2d
    if-nez v10, :cond_73

    move v0, v1

    move v3, v4

    move v6, v7

    move v8, v9

    .line 522
    :goto_33
    add-int/lit8 v9, v11, 0x1

    move v11, v9

    move v9, v10

    move v12, v6

    move v6, v3

    move v3, v0

    move v0, v12

    goto :goto_12

    .line 530
    :cond_3c
    if-eqz v9, :cond_55

    .line 531
    if-eq v9, v8, :cond_47

    .line 532
    iget-object v3, p0, Lorg/jshybugger/d;->V:[S

    invoke-direct {p0, v9, v3}, Lorg/jshybugger/d;->a(I[S)V

    add-int/lit8 v0, v0, -0x1

    .line 534
    :cond_47
    const/16 v3, 0x10

    iget-object v6, p0, Lorg/jshybugger/d;->V:[S

    invoke-direct {p0, v3, v6}, Lorg/jshybugger/d;->a(I[S)V

    .line 535
    add-int/lit8 v0, v0, -0x3

    const/4 v3, 0x2

    invoke-direct {p0, v0, v3}, Lorg/jshybugger/d;->a(II)V

    goto :goto_2d

    .line 537
    :cond_55
    const/16 v3, 0xa

    if-gt v0, v3, :cond_66

    .line 538
    const/16 v3, 0x11

    iget-object v6, p0, Lorg/jshybugger/d;->V:[S

    invoke-direct {p0, v3, v6}, Lorg/jshybugger/d;->a(I[S)V

    .line 539
    add-int/lit8 v0, v0, -0x3

    invoke-direct {p0, v0, v1}, Lorg/jshybugger/d;->a(II)V

    goto :goto_2d

    .line 542
    :cond_66
    const/16 v3, 0x12

    iget-object v6, p0, Lorg/jshybugger/d;->V:[S

    invoke-direct {p0, v3, v6}, Lorg/jshybugger/d;->a(I[S)V

    .line 543
    add-int/lit8 v0, v0, -0xb

    invoke-direct {p0, v0, v5}, Lorg/jshybugger/d;->a(II)V

    goto :goto_2d

    .line 549
    :cond_73
    if-ne v9, v10, :cond_7b

    .line 550
    const/4 v0, 0x6

    move v3, v0

    move v6, v7

    move v8, v9

    move v0, v1

    goto :goto_33

    :cond_7b
    move v0, v2

    move v3, v5

    move v6, v7

    move v8, v9

    .line 553
    goto :goto_33

    .line 556
    :cond_80
    return-void

    :cond_81
    move v12, v3

    move v3, v6

    move v6, v0

    move v0, v12

    goto :goto_33

    :cond_86
    move v0, v2

    move v3, v5

    goto :goto_e
.end method

.method private d(I)I
    .registers 16

    .prologue
    .line 1242
    iget v1, p0, Lorg/jshybugger/d;->O:I

    .line 1243
    iget v6, p0, Lorg/jshybugger/d;->K:I

    .line 1246
    iget v5, p0, Lorg/jshybugger/d;->N:I

    .line 1247
    iget v0, p0, Lorg/jshybugger/d;->K:I

    iget v2, p0, Lorg/jshybugger/d;->u:I

    add-int/lit16 v2, v2, -0x106

    if-le v0, v2, :cond_112

    iget v0, p0, Lorg/jshybugger/d;->K:I

    iget v2, p0, Lorg/jshybugger/d;->u:I

    add-int/lit16 v2, v2, -0x106

    sub-int/2addr v0, v2

    .line 1249
    :goto_15
    iget v4, p0, Lorg/jshybugger/d;->S:I

    .line 1254
    iget v8, p0, Lorg/jshybugger/d;->w:I

    .line 1256
    iget v2, p0, Lorg/jshybugger/d;->K:I

    add-int/lit16 v9, v2, 0x102

    .line 1257
    iget-object v2, p0, Lorg/jshybugger/d;->x:[B

    add-int v3, v6, v5

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v2, v3

    .line 1258
    iget-object v2, p0, Lorg/jshybugger/d;->x:[B

    add-int v7, v6, v5

    aget-byte v2, v2, v7

    .line 1264
    iget v7, p0, Lorg/jshybugger/d;->N:I

    iget v10, p0, Lorg/jshybugger/d;->R:I

    if-lt v7, v10, :cond_33

    .line 1265
    shr-int/lit8 v1, v1, 0x2

    .line 1270
    :cond_33
    iget v7, p0, Lorg/jshybugger/d;->M:I

    if-le v4, v7, :cond_11c

    iget v4, p0, Lorg/jshybugger/d;->M:I

    move v13, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v1

    move v1, v13

    .line 1277
    :cond_40
    :goto_40
    iget-object v7, p0, Lorg/jshybugger/d;->x:[B

    add-int v10, p1, v4

    aget-byte v7, v7, v10

    if-ne v7, v1, :cond_fc

    iget-object v7, p0, Lorg/jshybugger/d;->x:[B

    add-int v10, p1, v4

    add-int/lit8 v10, v10, -0x1

    aget-byte v7, v7, v10

    if-ne v7, v2, :cond_fc

    iget-object v7, p0, Lorg/jshybugger/d;->x:[B

    aget-byte v7, v7, p1

    iget-object v10, p0, Lorg/jshybugger/d;->x:[B

    aget-byte v10, v10, v5

    if-ne v7, v10, :cond_fc

    iget-object v7, p0, Lorg/jshybugger/d;->x:[B

    add-int/lit8 v10, p1, 0x1

    aget-byte v7, v7, v10

    iget-object v11, p0, Lorg/jshybugger/d;->x:[B

    add-int/lit8 v12, v5, 0x1

    aget-byte v11, v11, v12

    if-ne v7, v11, :cond_fc

    .line 1280
    add-int/lit8 v7, v5, 0x2

    add-int/lit8 v5, v10, 0x1

    .line 1300
    :cond_6e
    iget-object v10, p0, Lorg/jshybugger/d;->x:[B

    add-int/lit8 v7, v7, 0x1

    aget-byte v10, v10, v7

    iget-object v11, p0, Lorg/jshybugger/d;->x:[B

    add-int/lit8 v5, v5, 0x1

    aget-byte v11, v11, v5

    if-ne v10, v11, :cond_e0

    iget-object v10, p0, Lorg/jshybugger/d;->x:[B

    add-int/lit8 v7, v7, 0x1

    aget-byte v10, v10, v7

    iget-object v11, p0, Lorg/jshybugger/d;->x:[B

    add-int/lit8 v5, v5, 0x1

    aget-byte v11, v11, v5

    if-ne v10, v11, :cond_e0

    iget-object v10, p0, Lorg/jshybugger/d;->x:[B

    add-int/lit8 v7, v7, 0x1

    aget-byte v10, v10, v7

    iget-object v11, p0, Lorg/jshybugger/d;->x:[B

    add-int/lit8 v5, v5, 0x1

    aget-byte v11, v11, v5

    if-ne v10, v11, :cond_e0

    iget-object v10, p0, Lorg/jshybugger/d;->x:[B

    add-int/lit8 v7, v7, 0x1

    aget-byte v10, v10, v7

    iget-object v11, p0, Lorg/jshybugger/d;->x:[B

    add-int/lit8 v5, v5, 0x1

    aget-byte v11, v11, v5

    if-ne v10, v11, :cond_e0

    iget-object v10, p0, Lorg/jshybugger/d;->x:[B

    add-int/lit8 v7, v7, 0x1

    aget-byte v10, v10, v7

    iget-object v11, p0, Lorg/jshybugger/d;->x:[B

    add-int/lit8 v5, v5, 0x1

    aget-byte v11, v11, v5

    if-ne v10, v11, :cond_e0

    iget-object v10, p0, Lorg/jshybugger/d;->x:[B

    add-int/lit8 v7, v7, 0x1

    aget-byte v10, v10, v7

    iget-object v11, p0, Lorg/jshybugger/d;->x:[B

    add-int/lit8 v5, v5, 0x1

    aget-byte v11, v11, v5

    if-ne v10, v11, :cond_e0

    iget-object v10, p0, Lorg/jshybugger/d;->x:[B

    add-int/lit8 v7, v7, 0x1

    aget-byte v10, v10, v7

    iget-object v11, p0, Lorg/jshybugger/d;->x:[B

    add-int/lit8 v5, v5, 0x1

    aget-byte v11, v11, v5

    if-ne v10, v11, :cond_e0

    iget-object v10, p0, Lorg/jshybugger/d;->x:[B

    add-int/lit8 v7, v7, 0x1

    aget-byte v10, v10, v7

    iget-object v11, p0, Lorg/jshybugger/d;->x:[B

    add-int/lit8 v5, v5, 0x1

    aget-byte v11, v11, v5

    if-ne v10, v11, :cond_e0

    if-lt v7, v9, :cond_6e

    .line 1302
    :cond_e0
    sub-int v5, v9, v7

    rsub-int v5, v5, 0x102

    .line 1303
    add-int/lit16 v7, v9, -0x102

    .line 1305
    if-le v5, v4, :cond_11a

    .line 1306
    iput p1, p0, Lorg/jshybugger/d;->L:I

    .line 1308
    if-ge v5, v3, :cond_118

    .line 1309
    iget-object v1, p0, Lorg/jshybugger/d;->x:[B

    add-int v2, v7, v5

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v1, v2

    .line 1310
    iget-object v1, p0, Lorg/jshybugger/d;->x:[B

    add-int v4, v7, v5

    aget-byte v1, v1, v4

    move v4, v5

    move v5, v7

    .line 1314
    :cond_fc
    :goto_fc
    iget-object v7, p0, Lorg/jshybugger/d;->z:[S

    and-int v10, p1, v8

    aget-short v7, v7, v10

    const v10, 0xffff

    and-int p1, v7, v10

    if-le p1, v0, :cond_10d

    add-int/lit8 v6, v6, -0x1

    if-nez v6, :cond_40

    .line 1316
    :cond_10d
    :goto_10d
    iget v0, p0, Lorg/jshybugger/d;->M:I

    if-gt v4, v0, :cond_115

    .line 1317
    :goto_111
    return v4

    .line 1247
    :cond_112
    const/4 v0, 0x0

    goto/16 :goto_15

    .line 1317
    :cond_115
    iget v4, p0, Lorg/jshybugger/d;->M:I

    goto :goto_111

    :cond_118
    move v4, v5

    goto :goto_10d

    :cond_11a
    move v5, v7

    goto :goto_fc

    :cond_11c
    move v13, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v1

    move v1, v13

    goto/16 :goto_40
.end method

.method private d()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 745
    iget v0, p0, Lorg/jshybugger/d;->ag:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_11

    .line 746
    iget-short v0, p0, Lorg/jshybugger/d;->af:S

    invoke-virtual {p0, v0}, Lorg/jshybugger/d;->a(I)V

    .line 750
    :cond_c
    :goto_c
    iput-short v2, p0, Lorg/jshybugger/d;->af:S

    .line 751
    iput v2, p0, Lorg/jshybugger/d;->ag:I

    .line 752
    return-void

    .line 747
    :cond_11
    iget v0, p0, Lorg/jshybugger/d;->ag:I

    if-lez v0, :cond_c

    .line 748
    iget-short v0, p0, Lorg/jshybugger/d;->af:S

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/jshybugger/d;->a(B)V

    goto :goto_c
.end method

.method private e()V
    .registers 10

    .prologue
    const v8, 0xffff

    const/4 v3, 0x0

    .line 929
    :cond_4
    iget v0, p0, Lorg/jshybugger/d;->y:I

    iget v1, p0, Lorg/jshybugger/d;->M:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/jshybugger/d;->K:I

    sub-int v4, v0, v1

    .line 932
    if-nez v4, :cond_20

    iget v0, p0, Lorg/jshybugger/d;->K:I

    if-nez v0, :cond_20

    iget v0, p0, Lorg/jshybugger/d;->M:I

    if-nez v0, :cond_20

    .line 933
    iget v0, p0, Lorg/jshybugger/d;->u:I

    .line 975
    :goto_19
    iget-object v1, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    iget v1, v1, Lorg/jshybugger/r;->c:I

    if-nez v1, :cond_8d

    .line 1000
    :cond_1f
    :goto_1f
    return-void

    .line 935
    :cond_20
    const/4 v0, -0x1

    if-ne v4, v0, :cond_26

    .line 938
    add-int/lit8 v0, v4, -0x1

    goto :goto_19

    .line 943
    :cond_26
    iget v0, p0, Lorg/jshybugger/d;->K:I

    iget v1, p0, Lorg/jshybugger/d;->u:I

    iget v2, p0, Lorg/jshybugger/d;->u:I

    add-int/2addr v1, v2

    add-int/lit16 v1, v1, -0x106

    if-lt v0, v1, :cond_fd

    .line 944
    iget-object v0, p0, Lorg/jshybugger/d;->x:[B

    iget v1, p0, Lorg/jshybugger/d;->u:I

    iget-object v2, p0, Lorg/jshybugger/d;->x:[B

    iget v5, p0, Lorg/jshybugger/d;->u:I

    invoke-static {v0, v1, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 945
    iget v0, p0, Lorg/jshybugger/d;->L:I

    iget v1, p0, Lorg/jshybugger/d;->u:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jshybugger/d;->L:I

    .line 946
    iget v0, p0, Lorg/jshybugger/d;->K:I

    iget v1, p0, Lorg/jshybugger/d;->u:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jshybugger/d;->K:I

    .line 947
    iget v0, p0, Lorg/jshybugger/d;->G:I

    iget v1, p0, Lorg/jshybugger/d;->u:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jshybugger/d;->G:I

    .line 955
    iget v0, p0, Lorg/jshybugger/d;->C:I

    move v1, v0

    .line 958
    :cond_54
    iget-object v2, p0, Lorg/jshybugger/d;->A:[S

    add-int/lit8 v0, v0, -0x1

    aget-short v2, v2, v0

    and-int/2addr v2, v8

    .line 959
    iget-object v5, p0, Lorg/jshybugger/d;->A:[S

    iget v6, p0, Lorg/jshybugger/d;->u:I

    if-lt v2, v6, :cond_89

    iget v6, p0, Lorg/jshybugger/d;->u:I

    sub-int/2addr v2, v6

    int-to-short v2, v2

    :goto_65
    aput-short v2, v5, v0

    .line 961
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_54

    .line 963
    iget v0, p0, Lorg/jshybugger/d;->u:I

    move v1, v0

    .line 966
    :cond_6e
    iget-object v2, p0, Lorg/jshybugger/d;->z:[S

    add-int/lit8 v0, v0, -0x1

    aget-short v2, v2, v0

    and-int/2addr v2, v8

    .line 967
    iget-object v5, p0, Lorg/jshybugger/d;->z:[S

    iget v6, p0, Lorg/jshybugger/d;->u:I

    if-lt v2, v6, :cond_8b

    iget v6, p0, Lorg/jshybugger/d;->u:I

    sub-int/2addr v2, v6

    int-to-short v2, v2

    :goto_7f
    aput-short v2, v5, v0

    .line 971
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_6e

    .line 972
    iget v0, p0, Lorg/jshybugger/d;->u:I

    add-int/2addr v0, v4

    goto :goto_19

    :cond_89
    move v2, v3

    .line 959
    goto :goto_65

    :cond_8b
    move v2, v3

    .line 967
    goto :goto_7f

    .line 988
    :cond_8d
    iget-object v2, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    iget-object v4, p0, Lorg/jshybugger/d;->x:[B

    iget v1, p0, Lorg/jshybugger/d;->K:I

    iget v5, p0, Lorg/jshybugger/d;->M:I

    add-int/2addr v5, v1

    iget v1, v2, Lorg/jshybugger/r;->c:I

    if-le v1, v0, :cond_fb

    :goto_9a
    if-nez v0, :cond_d4

    move v0, v3

    .line 989
    :goto_9d
    iget v1, p0, Lorg/jshybugger/d;->M:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jshybugger/d;->M:I

    .line 992
    iget v0, p0, Lorg/jshybugger/d;->M:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_c6

    .line 993
    iget-object v0, p0, Lorg/jshybugger/d;->x:[B

    iget v1, p0, Lorg/jshybugger/d;->K:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/jshybugger/d;->B:I

    .line 994
    iget v0, p0, Lorg/jshybugger/d;->B:I

    iget v1, p0, Lorg/jshybugger/d;->F:I

    shl-int/2addr v0, v1

    iget-object v1, p0, Lorg/jshybugger/d;->x:[B

    iget v2, p0, Lorg/jshybugger/d;->K:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/jshybugger/d;->E:I

    and-int/2addr v0, v1

    iput v0, p0, Lorg/jshybugger/d;->B:I

    .line 999
    :cond_c6
    iget v0, p0, Lorg/jshybugger/d;->M:I

    const/16 v1, 0x106

    if-ge v0, v1, :cond_1f

    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    iget v0, v0, Lorg/jshybugger/r;->c:I

    if-nez v0, :cond_4

    goto/16 :goto_1f

    .line 988
    :cond_d4
    iget v1, v2, Lorg/jshybugger/r;->c:I

    sub-int/2addr v1, v0

    iput v1, v2, Lorg/jshybugger/r;->c:I

    iget-object v1, v2, Lorg/jshybugger/r;->j:Lorg/jshybugger/d;

    iget v1, v1, Lorg/jshybugger/d;->d:I

    if-eqz v1, :cond_e8

    iget-object v1, v2, Lorg/jshybugger/r;->l:Lorg/jshybugger/c;

    iget-object v6, v2, Lorg/jshybugger/r;->a:[B

    iget v7, v2, Lorg/jshybugger/r;->b:I

    invoke-interface {v1, v6, v7, v0}, Lorg/jshybugger/c;->a([BII)V

    :cond_e8
    iget-object v1, v2, Lorg/jshybugger/r;->a:[B

    iget v6, v2, Lorg/jshybugger/r;->b:I

    invoke-static {v1, v6, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v2, Lorg/jshybugger/r;->b:I

    add-int/2addr v1, v0

    iput v1, v2, Lorg/jshybugger/r;->b:I

    iget-wide v4, v2, Lorg/jshybugger/r;->d:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, v2, Lorg/jshybugger/r;->d:J

    goto :goto_9d

    :cond_fb
    move v0, v1

    goto :goto_9a

    :cond_fd
    move v0, v4

    goto/16 :goto_19
.end method

.method private declared-synchronized f()Lorg/jshybugger/g;
    .registers 2

    .prologue
    .line 1752
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/jshybugger/d;->ah:Lorg/jshybugger/g;

    if-nez v0, :cond_c

    .line 1753
    new-instance v0, Lorg/jshybugger/g;

    invoke-direct {v0}, Lorg/jshybugger/g;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/d;->ah:Lorg/jshybugger/g;

    .line 1755
    :cond_c
    iget-object v0, p0, Lorg/jshybugger/d;->ah:Lorg/jshybugger/g;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 1752
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final a()I
    .registers 5

    .prologue
    const/16 v3, 0x71

    const/4 v2, 0x0

    .line 1420
    iget v0, p0, Lorg/jshybugger/d;->q:I

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_15

    iget v0, p0, Lorg/jshybugger/d;->q:I

    if-eq v0, v3, :cond_15

    iget v0, p0, Lorg/jshybugger/d;->q:I

    const/16 v1, 0x29a

    if-eq v0, v1, :cond_15

    .line 1421
    const/4 v0, -0x2

    .line 1431
    :goto_14
    return v0

    .line 1424
    :cond_15
    iput-object v2, p0, Lorg/jshybugger/d;->a:[B

    .line 1425
    iput-object v2, p0, Lorg/jshybugger/d;->Z:[B

    .line 1426
    iput-object v2, p0, Lorg/jshybugger/d;->A:[S

    .line 1427
    iput-object v2, p0, Lorg/jshybugger/d;->z:[S

    .line 1428
    iput-object v2, p0, Lorg/jshybugger/d;->x:[B

    .line 1431
    iget v0, p0, Lorg/jshybugger/d;->q:I

    if-ne v0, v3, :cond_25

    const/4 v0, -0x3

    goto :goto_14

    :cond_25
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public final a(III)I
    .registers 11

    .prologue
    const/16 v6, 0xf

    const/4 v2, 0x2

    const/16 v5, 0x9

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1321
    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    const/4 v4, 0x0

    iput-object v4, v0, Lorg/jshybugger/r;->i:Ljava/lang/String;

    const/4 v0, -0x1

    if-ne p1, v0, :cond_10

    const/4 p1, 0x6

    :cond_10
    if-gez p2, :cond_22

    neg-int p2, p2

    move v0, v1

    :goto_14
    if-lez p3, :cond_20

    if-gt p3, v5, :cond_20

    if-lt p2, v5, :cond_20

    if-gt p2, v6, :cond_20

    if-ltz p1, :cond_20

    if-le p1, v5, :cond_31

    :cond_20
    const/4 v1, -0x2

    :goto_21
    return v1

    :cond_22
    if-le p2, v6, :cond_14a

    add-int/lit8 p2, p2, -0x10

    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    new-instance v4, Lorg/jshybugger/b;

    invoke-direct {v4}, Lorg/jshybugger/b;-><init>()V

    iput-object v4, v0, Lorg/jshybugger/r;->l:Lorg/jshybugger/c;

    move v0, v2

    goto :goto_14

    :cond_31
    iget-object v4, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    iput-object p0, v4, Lorg/jshybugger/r;->j:Lorg/jshybugger/d;

    iput v0, p0, Lorg/jshybugger/d;->d:I

    iput p2, p0, Lorg/jshybugger/d;->v:I

    iget v0, p0, Lorg/jshybugger/d;->v:I

    shl-int v0, v3, v0

    iput v0, p0, Lorg/jshybugger/d;->u:I

    iget v0, p0, Lorg/jshybugger/d;->u:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jshybugger/d;->w:I

    add-int/lit8 v0, p3, 0x7

    iput v0, p0, Lorg/jshybugger/d;->D:I

    iget v0, p0, Lorg/jshybugger/d;->D:I

    shl-int v0, v3, v0

    iput v0, p0, Lorg/jshybugger/d;->C:I

    iget v0, p0, Lorg/jshybugger/d;->C:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jshybugger/d;->E:I

    iget v0, p0, Lorg/jshybugger/d;->D:I

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/jshybugger/d;->F:I

    iget v0, p0, Lorg/jshybugger/d;->u:I

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jshybugger/d;->x:[B

    iget v0, p0, Lorg/jshybugger/d;->u:I

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/jshybugger/d;->z:[S

    iget v0, p0, Lorg/jshybugger/d;->C:I

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/jshybugger/d;->A:[S

    add-int/lit8 v0, p3, 0x6

    shl-int v0, v3, v0

    iput v0, p0, Lorg/jshybugger/d;->aa:I

    iget v0, p0, Lorg/jshybugger/d;->aa:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jshybugger/d;->a:[B

    iget v0, p0, Lorg/jshybugger/d;->aa:I

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/jshybugger/d;->r:I

    iget v0, p0, Lorg/jshybugger/d;->aa:I

    iput v0, p0, Lorg/jshybugger/d;->ac:I

    iget v0, p0, Lorg/jshybugger/d;->aa:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jshybugger/d;->Z:[B

    iput p1, p0, Lorg/jshybugger/d;->e:I

    iput v1, p0, Lorg/jshybugger/d;->Q:I

    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    iget-object v3, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lorg/jshybugger/r;->h:J

    iput-wide v4, v0, Lorg/jshybugger/r;->d:J

    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    const/4 v3, 0x0

    iput-object v3, v0, Lorg/jshybugger/r;->i:Ljava/lang/String;

    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    iput v1, p0, Lorg/jshybugger/d;->c:I

    iput v1, p0, Lorg/jshybugger/d;->b:I

    iget v0, p0, Lorg/jshybugger/d;->d:I

    if-gez v0, :cond_b3

    iget v0, p0, Lorg/jshybugger/d;->d:I

    neg-int v0, v0

    iput v0, p0, Lorg/jshybugger/d;->d:I

    :cond_b3
    iget v0, p0, Lorg/jshybugger/d;->d:I

    if-nez v0, :cond_10f

    const/16 v0, 0x71

    :goto_b9
    iput v0, p0, Lorg/jshybugger/d;->q:I

    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    iget-object v0, v0, Lorg/jshybugger/r;->l:Lorg/jshybugger/c;

    invoke-interface {v0}, Lorg/jshybugger/c;->a()V

    iput v1, p0, Lorg/jshybugger/d;->t:I

    iget-object v0, p0, Lorg/jshybugger/d;->W:Lorg/jshybugger/q;

    iget-object v3, p0, Lorg/jshybugger/d;->T:[S

    iput-object v3, v0, Lorg/jshybugger/q;->h:[S

    iget-object v0, p0, Lorg/jshybugger/d;->W:Lorg/jshybugger/q;

    sget-object v3, Lorg/jshybugger/p;->c:Lorg/jshybugger/p;

    iput-object v3, v0, Lorg/jshybugger/q;->j:Lorg/jshybugger/p;

    iget-object v0, p0, Lorg/jshybugger/d;->X:Lorg/jshybugger/q;

    iget-object v3, p0, Lorg/jshybugger/d;->U:[S

    iput-object v3, v0, Lorg/jshybugger/q;->h:[S

    iget-object v0, p0, Lorg/jshybugger/d;->X:Lorg/jshybugger/q;

    sget-object v3, Lorg/jshybugger/p;->d:Lorg/jshybugger/p;

    iput-object v3, v0, Lorg/jshybugger/q;->j:Lorg/jshybugger/p;

    iget-object v0, p0, Lorg/jshybugger/d;->Y:Lorg/jshybugger/q;

    iget-object v3, p0, Lorg/jshybugger/d;->V:[S

    iput-object v3, v0, Lorg/jshybugger/q;->h:[S

    iget-object v0, p0, Lorg/jshybugger/d;->Y:Lorg/jshybugger/q;

    sget-object v3, Lorg/jshybugger/p;->e:Lorg/jshybugger/p;

    iput-object v3, v0, Lorg/jshybugger/q;->j:Lorg/jshybugger/p;

    iput-short v1, p0, Lorg/jshybugger/d;->af:S

    iput v1, p0, Lorg/jshybugger/d;->ag:I

    const/16 v0, 0x8

    iput v0, p0, Lorg/jshybugger/d;->ae:I

    invoke-direct {p0}, Lorg/jshybugger/d;->b()V

    iget v0, p0, Lorg/jshybugger/d;->u:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/jshybugger/d;->y:I

    iget-object v0, p0, Lorg/jshybugger/d;->A:[S

    iget v3, p0, Lorg/jshybugger/d;->C:I

    add-int/lit8 v3, v3, -0x1

    aput-short v1, v0, v3

    move v0, v1

    :goto_102
    iget v3, p0, Lorg/jshybugger/d;->C:I

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_112

    iget-object v3, p0, Lorg/jshybugger/d;->A:[S

    aput-short v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_102

    :cond_10f
    const/16 v0, 0x2a

    goto :goto_b9

    :cond_112
    sget-object v0, Lorg/jshybugger/d;->n:[Lorg/jshybugger/e;

    iget v3, p0, Lorg/jshybugger/d;->e:I

    aget-object v0, v0, v3

    iget v0, v0, Lorg/jshybugger/e;->b:I

    iput v0, p0, Lorg/jshybugger/d;->P:I

    sget-object v0, Lorg/jshybugger/d;->n:[Lorg/jshybugger/e;

    iget v3, p0, Lorg/jshybugger/d;->e:I

    aget-object v0, v0, v3

    iget v0, v0, Lorg/jshybugger/e;->a:I

    iput v0, p0, Lorg/jshybugger/d;->R:I

    sget-object v0, Lorg/jshybugger/d;->n:[Lorg/jshybugger/e;

    iget v3, p0, Lorg/jshybugger/d;->e:I

    aget-object v0, v0, v3

    iget v0, v0, Lorg/jshybugger/e;->c:I

    iput v0, p0, Lorg/jshybugger/d;->S:I

    sget-object v0, Lorg/jshybugger/d;->n:[Lorg/jshybugger/e;

    iget v3, p0, Lorg/jshybugger/d;->e:I

    aget-object v0, v0, v3

    iget v0, v0, Lorg/jshybugger/e;->d:I

    iput v0, p0, Lorg/jshybugger/d;->O:I

    iput v1, p0, Lorg/jshybugger/d;->K:I

    iput v1, p0, Lorg/jshybugger/d;->G:I

    iput v1, p0, Lorg/jshybugger/d;->M:I

    iput v2, p0, Lorg/jshybugger/d;->N:I

    iput v2, p0, Lorg/jshybugger/d;->H:I

    iput v1, p0, Lorg/jshybugger/d;->J:I

    iput v1, p0, Lorg/jshybugger/d;->B:I

    goto/16 :goto_21

    :cond_14a
    move v0, v3

    goto/16 :goto_14
.end method

.method final a(B)V
    .registers 5

    .prologue
    .line 566
    iget-object v0, p0, Lorg/jshybugger/d;->a:[B

    iget v1, p0, Lorg/jshybugger/d;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jshybugger/d;->c:I

    aput-byte p1, v0, v1

    .line 567
    return-void
.end method

.method final a(I)V
    .registers 3

    .prologue
    .line 569
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lorg/jshybugger/d;->a(B)V

    .line 570
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/jshybugger/d;->a(B)V

    .line 571
    return-void
.end method

.method final a([BII)V
    .registers 6

    .prologue
    .line 561
    iget-object v0, p0, Lorg/jshybugger/d;->a:[B

    iget v1, p0, Lorg/jshybugger/d;->c:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 562
    iget v0, p0, Lorg/jshybugger/d;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/jshybugger/d;->c:I

    .line 563
    return-void
.end method

.method final a([SI)V
    .registers 8

    .prologue
    .line 391
    iget-object v0, p0, Lorg/jshybugger/d;->h:[I

    aget v2, v0, p2

    .line 392
    shl-int/lit8 v0, p2, 0x1

    .line 393
    :goto_6
    iget v1, p0, Lorg/jshybugger/d;->i:I

    if-gt v0, v1, :cond_3b

    .line 395
    iget v1, p0, Lorg/jshybugger/d;->i:I

    if-ge v0, v1, :cond_40

    iget-object v1, p0, Lorg/jshybugger/d;->h:[I

    add-int/lit8 v3, v0, 0x1

    aget v1, v1, v3

    iget-object v3, p0, Lorg/jshybugger/d;->h:[I

    aget v3, v3, v0

    iget-object v4, p0, Lorg/jshybugger/d;->k:[B

    invoke-static {p1, v1, v3, v4}, Lorg/jshybugger/d;->a([SII[B)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 397
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    .line 400
    :goto_23
    iget-object v0, p0, Lorg/jshybugger/d;->h:[I

    aget v0, v0, v1

    iget-object v3, p0, Lorg/jshybugger/d;->k:[B

    invoke-static {p1, v2, v0, v3}, Lorg/jshybugger/d;->a([SII[B)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 403
    iget-object v0, p0, Lorg/jshybugger/d;->h:[I

    iget-object v3, p0, Lorg/jshybugger/d;->h:[I

    aget v3, v3, v1

    aput v3, v0, p2

    .line 405
    shl-int/lit8 v0, v1, 0x1

    move p2, v1

    goto :goto_6

    .line 407
    :cond_3b
    iget-object v0, p0, Lorg/jshybugger/d;->h:[I

    aput v2, v0, p2

    .line 408
    return-void

    :cond_40
    move v1, v0

    goto :goto_23
.end method

.method final b(I)I
    .registers 15

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 1498
    if-gt p1, v1, :cond_9

    if-gez p1, :cond_b

    .line 1499
    :cond_9
    const/4 v2, -0x2

    .line 1659
    :cond_a
    :goto_a
    return v2

    .line 1502
    :cond_b
    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    iget-object v0, v0, Lorg/jshybugger/r;->e:[B

    if-eqz v0, :cond_25

    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    iget-object v0, v0, Lorg/jshybugger/r;->a:[B

    if-nez v0, :cond_1d

    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    iget v0, v0, Lorg/jshybugger/r;->c:I

    if-nez v0, :cond_25

    :cond_1d
    iget v0, p0, Lorg/jshybugger/d;->q:I

    const/16 v3, 0x29a

    if-ne v0, v3, :cond_2f

    if-eq p1, v1, :cond_2f

    .line 1505
    :cond_25
    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    sget-object v2, Lorg/jshybugger/d;->o:[Ljava/lang/String;

    aget-object v1, v2, v1

    iput-object v1, v0, Lorg/jshybugger/r;->i:Ljava/lang/String;

    .line 1506
    const/4 v2, -0x2

    goto :goto_a

    .line 1508
    :cond_2f
    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    iget v0, v0, Lorg/jshybugger/r;->g:I

    if-nez v0, :cond_40

    .line 1509
    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    sget-object v1, Lorg/jshybugger/d;->o:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    iput-object v1, v0, Lorg/jshybugger/r;->i:Ljava/lang/String;

    .line 1510
    const/4 v2, -0x5

    goto :goto_a

    .line 1513
    :cond_40
    iget v7, p0, Lorg/jshybugger/d;->t:I

    .line 1514
    iput p1, p0, Lorg/jshybugger/d;->t:I

    .line 1517
    iget v0, p0, Lorg/jshybugger/d;->q:I

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_d1

    .line 1518
    iget v0, p0, Lorg/jshybugger/d;->d:I

    if-ne v0, v4, :cond_ee

    .line 1519
    invoke-direct {p0}, Lorg/jshybugger/d;->f()Lorg/jshybugger/g;

    move-result-object v8

    iget-object v0, v8, Lorg/jshybugger/g;->b:[B

    if-eqz v0, :cond_600

    move v0, v1

    :goto_57
    iget-object v3, v8, Lorg/jshybugger/g;->c:[B

    if-eqz v3, :cond_5d

    or-int/lit8 v0, v0, 0x8

    :cond_5d
    iget-object v3, v8, Lorg/jshybugger/g;->d:[B

    if-eqz v3, :cond_63

    or-int/lit8 v0, v0, 0x10

    :cond_63
    iget v3, p0, Lorg/jshybugger/d;->e:I

    if-ne v3, v6, :cond_e5

    move v3, v1

    :goto_68
    const/16 v9, -0x74e1

    invoke-virtual {p0, v9}, Lorg/jshybugger/d;->a(I)V

    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lorg/jshybugger/d;->a(B)V

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/jshybugger/d;->a(B)V

    invoke-virtual {p0, v2}, Lorg/jshybugger/d;->a(B)V

    invoke-virtual {p0, v2}, Lorg/jshybugger/d;->a(B)V

    invoke-virtual {p0, v2}, Lorg/jshybugger/d;->a(B)V

    invoke-virtual {p0, v2}, Lorg/jshybugger/d;->a(B)V

    int-to-byte v0, v3

    invoke-virtual {p0, v0}, Lorg/jshybugger/d;->a(B)V

    iget v0, v8, Lorg/jshybugger/g;->a:I

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/jshybugger/d;->a(B)V

    iget-object v0, v8, Lorg/jshybugger/g;->b:[B

    if-eqz v0, :cond_a8

    iget-object v0, v8, Lorg/jshybugger/g;->b:[B

    array-length v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/jshybugger/d;->a(B)V

    iget-object v0, v8, Lorg/jshybugger/g;->b:[B

    array-length v0, v0

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/jshybugger/d;->a(B)V

    iget-object v0, v8, Lorg/jshybugger/g;->b:[B

    iget-object v3, v8, Lorg/jshybugger/g;->b:[B

    array-length v3, v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/jshybugger/d;->a([BII)V

    :cond_a8
    iget-object v0, v8, Lorg/jshybugger/g;->c:[B

    if-eqz v0, :cond_b7

    iget-object v0, v8, Lorg/jshybugger/g;->c:[B

    iget-object v3, v8, Lorg/jshybugger/g;->c:[B

    array-length v3, v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/jshybugger/d;->a([BII)V

    invoke-virtual {p0, v2}, Lorg/jshybugger/d;->a(B)V

    :cond_b7
    iget-object v0, v8, Lorg/jshybugger/g;->d:[B

    if-eqz v0, :cond_c6

    iget-object v0, v8, Lorg/jshybugger/g;->d:[B

    iget-object v3, v8, Lorg/jshybugger/g;->d:[B

    array-length v3, v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/jshybugger/d;->a([BII)V

    invoke-virtual {p0, v2}, Lorg/jshybugger/d;->a(B)V

    .line 1520
    :cond_c6
    const/16 v0, 0x71

    iput v0, p0, Lorg/jshybugger/d;->q:I

    .line 1542
    :cond_ca
    :goto_ca
    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    iget-object v0, v0, Lorg/jshybugger/r;->l:Lorg/jshybugger/c;

    invoke-interface {v0}, Lorg/jshybugger/c;->a()V

    .line 1547
    :cond_d1
    iget v0, p0, Lorg/jshybugger/d;->c:I

    if-eqz v0, :cond_135

    .line 1548
    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    invoke-virtual {v0}, Lorg/jshybugger/r;->b()V

    .line 1549
    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    iget v0, v0, Lorg/jshybugger/r;->g:I

    if-nez v0, :cond_14b

    .line 1555
    const/4 v0, -0x1

    iput v0, p0, Lorg/jshybugger/d;->t:I

    goto/16 :goto_a

    .line 1519
    :cond_e5
    iget v3, p0, Lorg/jshybugger/d;->e:I

    const/16 v9, 0x9

    if-ne v3, v9, :cond_5fd

    move v3, v4

    goto/16 :goto_68

    .line 1524
    :cond_ee
    iget v0, p0, Lorg/jshybugger/d;->v:I

    add-int/lit8 v0, v0, -0x8

    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    shl-int/lit8 v3, v0, 0x8

    .line 1525
    iget v0, p0, Lorg/jshybugger/d;->e:I

    add-int/lit8 v0, v0, -0x1

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v0, v0, 0x1

    .line 1527
    if-le v0, v5, :cond_103

    move v0, v5

    .line 1528
    :cond_103
    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v0, v3

    .line 1529
    iget v3, p0, Lorg/jshybugger/d;->K:I

    if-eqz v3, :cond_10c

    or-int/lit8 v0, v0, 0x20

    .line 1530
    :cond_10c
    rem-int/lit8 v3, v0, 0x1f

    rsub-int/lit8 v3, v3, 0x1f

    add-int/2addr v0, v3

    .line 1532
    const/16 v3, 0x71

    iput v3, p0, Lorg/jshybugger/d;->q:I

    .line 1533
    invoke-direct {p0, v0}, Lorg/jshybugger/d;->c(I)V

    .line 1537
    iget v0, p0, Lorg/jshybugger/d;->K:I

    if-eqz v0, :cond_ca

    .line 1538
    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    iget-object v0, v0, Lorg/jshybugger/r;->l:Lorg/jshybugger/c;

    invoke-interface {v0}, Lorg/jshybugger/c;->b()J

    move-result-wide v8

    .line 1539
    const/16 v0, 0x10

    ushr-long v10, v8, v0

    long-to-int v0, v10

    invoke-direct {p0, v0}, Lorg/jshybugger/d;->c(I)V

    .line 1540
    const-wide/32 v10, 0xffff

    and-long/2addr v8, v10

    long-to-int v0, v8

    invoke-direct {p0, v0}, Lorg/jshybugger/d;->c(I)V

    goto :goto_ca

    .line 1563
    :cond_135
    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    iget v0, v0, Lorg/jshybugger/r;->c:I

    if-nez v0, :cond_14b

    if-gt p1, v7, :cond_14b

    if-eq p1, v1, :cond_14b

    .line 1565
    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    sget-object v1, Lorg/jshybugger/d;->o:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    iput-object v1, v0, Lorg/jshybugger/r;->i:Ljava/lang/String;

    .line 1566
    const/4 v2, -0x5

    goto/16 :goto_a

    .line 1570
    :cond_14b
    iget v0, p0, Lorg/jshybugger/d;->q:I

    const/16 v3, 0x29a

    if-ne v0, v3, :cond_163

    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    iget v0, v0, Lorg/jshybugger/r;->c:I

    if-eqz v0, :cond_163

    .line 1571
    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    sget-object v1, Lorg/jshybugger/d;->o:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    iput-object v1, v0, Lorg/jshybugger/r;->i:Ljava/lang/String;

    .line 1572
    const/4 v2, -0x5

    goto/16 :goto_a

    .line 1576
    :cond_163
    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    iget v0, v0, Lorg/jshybugger/r;->c:I

    if-nez v0, :cond_175

    iget v0, p0, Lorg/jshybugger/d;->M:I

    if-nez v0, :cond_175

    if-eqz p1, :cond_550

    iget v0, p0, Lorg/jshybugger/d;->q:I

    const/16 v3, 0x29a

    if-eq v0, v3, :cond_550

    .line 1578
    :cond_175
    const/4 v0, -0x1

    .line 1579
    sget-object v3, Lorg/jshybugger/d;->n:[Lorg/jshybugger/e;

    iget v7, p0, Lorg/jshybugger/d;->e:I

    aget-object v3, v3, v7

    iget v3, v3, Lorg/jshybugger/e;->e:I

    packed-switch v3, :pswitch_data_604

    .line 1588
    :goto_181
    if-eq v0, v4, :cond_185

    if-ne v0, v5, :cond_189

    .line 1593
    :cond_185
    const/16 v3, 0x29a

    iput v3, p0, Lorg/jshybugger/d;->q:I

    .line 1595
    :cond_189
    if-eqz v0, :cond_18d

    if-ne v0, v4, :cond_501

    .line 1596
    :cond_18d
    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    iget v0, v0, Lorg/jshybugger/r;->g:I

    if-nez v0, :cond_a

    .line 1597
    const/4 v0, -0x1

    iput v0, p0, Lorg/jshybugger/d;->t:I

    goto/16 :goto_a

    .line 1581
    :pswitch_198
    const v0, 0xffff

    const v3, 0xffff

    iget v7, p0, Lorg/jshybugger/d;->r:I

    add-int/lit8 v7, v7, -0x5

    if-le v3, v7, :cond_1a8

    iget v0, p0, Lorg/jshybugger/d;->r:I

    add-int/lit8 v0, v0, -0x5

    :cond_1a8
    iget v3, p0, Lorg/jshybugger/d;->M:I

    if-gt v3, v6, :cond_1bb

    invoke-direct {p0}, Lorg/jshybugger/d;->e()V

    iget v3, p0, Lorg/jshybugger/d;->M:I

    if-nez v3, :cond_1b7

    if-nez p1, :cond_1b7

    move v0, v2

    goto :goto_181

    :cond_1b7
    iget v3, p0, Lorg/jshybugger/d;->M:I

    if-eqz v3, :cond_1f7

    :cond_1bb
    iget v3, p0, Lorg/jshybugger/d;->K:I

    iget v7, p0, Lorg/jshybugger/d;->M:I

    add-int/2addr v3, v7

    iput v3, p0, Lorg/jshybugger/d;->K:I

    iput v2, p0, Lorg/jshybugger/d;->M:I

    iget v3, p0, Lorg/jshybugger/d;->G:I

    add-int/2addr v3, v0

    iget v7, p0, Lorg/jshybugger/d;->K:I

    if-eqz v7, :cond_1cf

    iget v7, p0, Lorg/jshybugger/d;->K:I

    if-lt v7, v3, :cond_1e1

    :cond_1cf
    iget v7, p0, Lorg/jshybugger/d;->K:I

    sub-int/2addr v7, v3

    iput v7, p0, Lorg/jshybugger/d;->M:I

    iput v3, p0, Lorg/jshybugger/d;->K:I

    invoke-direct {p0, v2}, Lorg/jshybugger/d;->a(Z)V

    iget-object v3, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    iget v3, v3, Lorg/jshybugger/r;->g:I

    if-nez v3, :cond_1e1

    move v0, v2

    goto :goto_181

    :cond_1e1
    iget v3, p0, Lorg/jshybugger/d;->K:I

    iget v7, p0, Lorg/jshybugger/d;->G:I

    sub-int/2addr v3, v7

    iget v7, p0, Lorg/jshybugger/d;->u:I

    add-int/lit16 v7, v7, -0x106

    if-lt v3, v7, :cond_1a8

    invoke-direct {p0, v2}, Lorg/jshybugger/d;->a(Z)V

    iget-object v3, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    iget v3, v3, Lorg/jshybugger/r;->g:I

    if-nez v3, :cond_1a8

    move v0, v2

    goto :goto_181

    :cond_1f7
    if-ne p1, v1, :cond_208

    move v0, v6

    :goto_1fa
    invoke-direct {p0, v0}, Lorg/jshybugger/d;->a(Z)V

    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    iget v0, v0, Lorg/jshybugger/r;->g:I

    if-nez v0, :cond_20d

    if-ne p1, v1, :cond_20a

    move v0, v4

    goto/16 :goto_181

    :cond_208
    move v0, v2

    goto :goto_1fa

    :cond_20a
    move v0, v2

    goto/16 :goto_181

    :cond_20d
    if-ne p1, v1, :cond_212

    move v0, v5

    goto/16 :goto_181

    :cond_212
    move v0, v6

    goto/16 :goto_181

    :pswitch_215
    move v0, v2

    .line 1584
    :cond_216
    iget v3, p0, Lorg/jshybugger/d;->M:I

    const/16 v7, 0x106

    if-ge v3, v7, :cond_22e

    invoke-direct {p0}, Lorg/jshybugger/d;->e()V

    iget v3, p0, Lorg/jshybugger/d;->M:I

    const/16 v7, 0x106

    if-ge v3, v7, :cond_22a

    if-nez p1, :cond_22a

    move v0, v2

    goto/16 :goto_181

    :cond_22a
    iget v3, p0, Lorg/jshybugger/d;->M:I

    if-eqz v3, :cond_353

    :cond_22e
    iget v3, p0, Lorg/jshybugger/d;->M:I

    if-lt v3, v5, :cond_5fa

    iget v0, p0, Lorg/jshybugger/d;->B:I

    iget v3, p0, Lorg/jshybugger/d;->F:I

    shl-int/2addr v0, v3

    iget-object v3, p0, Lorg/jshybugger/d;->x:[B

    iget v7, p0, Lorg/jshybugger/d;->K:I

    add-int/lit8 v7, v7, 0x2

    aget-byte v3, v3, v7

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v0, v3

    iget v3, p0, Lorg/jshybugger/d;->E:I

    and-int/2addr v0, v3

    iput v0, p0, Lorg/jshybugger/d;->B:I

    iget-object v0, p0, Lorg/jshybugger/d;->A:[S

    iget v3, p0, Lorg/jshybugger/d;->B:I

    aget-short v0, v0, v3

    const v3, 0xffff

    and-int/2addr v3, v0

    iget-object v0, p0, Lorg/jshybugger/d;->z:[S

    iget v7, p0, Lorg/jshybugger/d;->K:I

    iget v8, p0, Lorg/jshybugger/d;->w:I

    and-int/2addr v7, v8

    iget-object v8, p0, Lorg/jshybugger/d;->A:[S

    iget v9, p0, Lorg/jshybugger/d;->B:I

    aget-short v8, v8, v9

    aput-short v8, v0, v7

    iget-object v0, p0, Lorg/jshybugger/d;->A:[S

    iget v7, p0, Lorg/jshybugger/d;->B:I

    iget v8, p0, Lorg/jshybugger/d;->K:I

    int-to-short v8, v8

    aput-short v8, v0, v7

    :goto_269
    int-to-long v8, v3

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-eqz v0, :cond_287

    iget v0, p0, Lorg/jshybugger/d;->K:I

    sub-int/2addr v0, v3

    const v7, 0xffff

    and-int/2addr v0, v7

    iget v7, p0, Lorg/jshybugger/d;->u:I

    add-int/lit16 v7, v7, -0x106

    if-gt v0, v7, :cond_287

    iget v0, p0, Lorg/jshybugger/d;->Q:I

    if-eq v0, v4, :cond_287

    invoke-direct {p0, v3}, Lorg/jshybugger/d;->d(I)I

    move-result v0

    iput v0, p0, Lorg/jshybugger/d;->H:I

    :cond_287
    iget v0, p0, Lorg/jshybugger/d;->H:I

    if-lt v0, v5, :cond_337

    iget v0, p0, Lorg/jshybugger/d;->K:I

    iget v7, p0, Lorg/jshybugger/d;->L:I

    sub-int/2addr v0, v7

    iget v7, p0, Lorg/jshybugger/d;->H:I

    add-int/lit8 v7, v7, -0x3

    invoke-direct {p0, v0, v7}, Lorg/jshybugger/d;->b(II)Z

    move-result v0

    iget v7, p0, Lorg/jshybugger/d;->M:I

    iget v8, p0, Lorg/jshybugger/d;->H:I

    sub-int/2addr v7, v8

    iput v7, p0, Lorg/jshybugger/d;->M:I

    iget v7, p0, Lorg/jshybugger/d;->H:I

    iget v8, p0, Lorg/jshybugger/d;->P:I

    if-gt v7, v8, :cond_30b

    iget v7, p0, Lorg/jshybugger/d;->M:I

    if-lt v7, v5, :cond_30b

    iget v3, p0, Lorg/jshybugger/d;->H:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/jshybugger/d;->H:I

    :cond_2af
    iget v3, p0, Lorg/jshybugger/d;->K:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/jshybugger/d;->K:I

    iget v3, p0, Lorg/jshybugger/d;->B:I

    iget v7, p0, Lorg/jshybugger/d;->F:I

    shl-int/2addr v3, v7

    iget-object v7, p0, Lorg/jshybugger/d;->x:[B

    iget v8, p0, Lorg/jshybugger/d;->K:I

    add-int/lit8 v8, v8, 0x2

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    xor-int/2addr v3, v7

    iget v7, p0, Lorg/jshybugger/d;->E:I

    and-int/2addr v3, v7

    iput v3, p0, Lorg/jshybugger/d;->B:I

    iget-object v3, p0, Lorg/jshybugger/d;->A:[S

    iget v7, p0, Lorg/jshybugger/d;->B:I

    aget-short v3, v3, v7

    const v7, 0xffff

    and-int/2addr v3, v7

    iget-object v7, p0, Lorg/jshybugger/d;->z:[S

    iget v8, p0, Lorg/jshybugger/d;->K:I

    iget v9, p0, Lorg/jshybugger/d;->w:I

    and-int/2addr v8, v9

    iget-object v9, p0, Lorg/jshybugger/d;->A:[S

    iget v10, p0, Lorg/jshybugger/d;->B:I

    aget-short v9, v9, v10

    aput-short v9, v7, v8

    iget-object v7, p0, Lorg/jshybugger/d;->A:[S

    iget v8, p0, Lorg/jshybugger/d;->B:I

    iget v9, p0, Lorg/jshybugger/d;->K:I

    int-to-short v9, v9

    aput-short v9, v7, v8

    iget v7, p0, Lorg/jshybugger/d;->H:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/jshybugger/d;->H:I

    if-nez v7, :cond_2af

    iget v7, p0, Lorg/jshybugger/d;->K:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/jshybugger/d;->K:I

    move v12, v0

    move v0, v3

    move v3, v12

    :goto_2fd
    if-eqz v3, :cond_216

    invoke-direct {p0, v2}, Lorg/jshybugger/d;->a(Z)V

    iget-object v3, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    iget v3, v3, Lorg/jshybugger/r;->g:I

    if-nez v3, :cond_216

    move v0, v2

    goto/16 :goto_181

    :cond_30b
    iget v7, p0, Lorg/jshybugger/d;->K:I

    iget v8, p0, Lorg/jshybugger/d;->H:I

    add-int/2addr v7, v8

    iput v7, p0, Lorg/jshybugger/d;->K:I

    iput v2, p0, Lorg/jshybugger/d;->H:I

    iget-object v7, p0, Lorg/jshybugger/d;->x:[B

    iget v8, p0, Lorg/jshybugger/d;->K:I

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    iput v7, p0, Lorg/jshybugger/d;->B:I

    iget v7, p0, Lorg/jshybugger/d;->B:I

    iget v8, p0, Lorg/jshybugger/d;->F:I

    shl-int/2addr v7, v8

    iget-object v8, p0, Lorg/jshybugger/d;->x:[B

    iget v9, p0, Lorg/jshybugger/d;->K:I

    add-int/lit8 v9, v9, 0x1

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    xor-int/2addr v7, v8

    iget v8, p0, Lorg/jshybugger/d;->E:I

    and-int/2addr v7, v8

    iput v7, p0, Lorg/jshybugger/d;->B:I

    move v12, v0

    move v0, v3

    move v3, v12

    goto :goto_2fd

    :cond_337
    iget-object v0, p0, Lorg/jshybugger/d;->x:[B

    iget v7, p0, Lorg/jshybugger/d;->K:I

    aget-byte v0, v0, v7

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v2, v0}, Lorg/jshybugger/d;->b(II)Z

    move-result v0

    iget v7, p0, Lorg/jshybugger/d;->M:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/jshybugger/d;->M:I

    iget v7, p0, Lorg/jshybugger/d;->K:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/jshybugger/d;->K:I

    move v12, v0

    move v0, v3

    move v3, v12

    goto :goto_2fd

    :cond_353
    if-ne p1, v1, :cond_364

    move v0, v6

    :goto_356
    invoke-direct {p0, v0}, Lorg/jshybugger/d;->a(Z)V

    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    iget v0, v0, Lorg/jshybugger/r;->g:I

    if-nez v0, :cond_369

    if-ne p1, v1, :cond_366

    move v0, v4

    goto/16 :goto_181

    :cond_364
    move v0, v2

    goto :goto_356

    :cond_366
    move v0, v2

    goto/16 :goto_181

    :cond_369
    if-ne p1, v1, :cond_36e

    move v0, v5

    goto/16 :goto_181

    :cond_36e
    move v0, v6

    goto/16 :goto_181

    :pswitch_371
    move v0, v2

    .line 1587
    :cond_372
    :goto_372
    iget v3, p0, Lorg/jshybugger/d;->M:I

    const/16 v7, 0x106

    if-ge v3, v7, :cond_38a

    invoke-direct {p0}, Lorg/jshybugger/d;->e()V

    iget v3, p0, Lorg/jshybugger/d;->M:I

    const/16 v7, 0x106

    if-ge v3, v7, :cond_386

    if-nez p1, :cond_386

    move v0, v2

    goto/16 :goto_181

    :cond_386
    iget v3, p0, Lorg/jshybugger/d;->M:I

    if-eqz v3, :cond_4d0

    :cond_38a
    iget v3, p0, Lorg/jshybugger/d;->M:I

    if-lt v3, v5, :cond_3c5

    iget v0, p0, Lorg/jshybugger/d;->B:I

    iget v3, p0, Lorg/jshybugger/d;->F:I

    shl-int/2addr v0, v3

    iget-object v3, p0, Lorg/jshybugger/d;->x:[B

    iget v7, p0, Lorg/jshybugger/d;->K:I

    add-int/lit8 v7, v7, 0x2

    aget-byte v3, v3, v7

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v0, v3

    iget v3, p0, Lorg/jshybugger/d;->E:I

    and-int/2addr v0, v3

    iput v0, p0, Lorg/jshybugger/d;->B:I

    iget-object v0, p0, Lorg/jshybugger/d;->A:[S

    iget v3, p0, Lorg/jshybugger/d;->B:I

    aget-short v0, v0, v3

    const v3, 0xffff

    and-int/2addr v0, v3

    iget-object v3, p0, Lorg/jshybugger/d;->z:[S

    iget v7, p0, Lorg/jshybugger/d;->K:I

    iget v8, p0, Lorg/jshybugger/d;->w:I

    and-int/2addr v7, v8

    iget-object v8, p0, Lorg/jshybugger/d;->A:[S

    iget v9, p0, Lorg/jshybugger/d;->B:I

    aget-short v8, v8, v9

    aput-short v8, v3, v7

    iget-object v3, p0, Lorg/jshybugger/d;->A:[S

    iget v7, p0, Lorg/jshybugger/d;->B:I

    iget v8, p0, Lorg/jshybugger/d;->K:I

    int-to-short v8, v8

    aput-short v8, v3, v7

    :cond_3c5
    iget v3, p0, Lorg/jshybugger/d;->H:I

    iput v3, p0, Lorg/jshybugger/d;->N:I

    iget v3, p0, Lorg/jshybugger/d;->L:I

    iput v3, p0, Lorg/jshybugger/d;->I:I

    iput v4, p0, Lorg/jshybugger/d;->H:I

    if-eqz v0, :cond_406

    iget v3, p0, Lorg/jshybugger/d;->N:I

    iget v7, p0, Lorg/jshybugger/d;->P:I

    if-ge v3, v7, :cond_406

    iget v3, p0, Lorg/jshybugger/d;->K:I

    sub-int/2addr v3, v0

    const v7, 0xffff

    and-int/2addr v3, v7

    iget v7, p0, Lorg/jshybugger/d;->u:I

    add-int/lit16 v7, v7, -0x106

    if-gt v3, v7, :cond_406

    iget v3, p0, Lorg/jshybugger/d;->Q:I

    if-eq v3, v4, :cond_3ee

    invoke-direct {p0, v0}, Lorg/jshybugger/d;->d(I)I

    move-result v3

    iput v3, p0, Lorg/jshybugger/d;->H:I

    :cond_3ee
    iget v3, p0, Lorg/jshybugger/d;->H:I

    const/4 v7, 0x5

    if-gt v3, v7, :cond_406

    iget v3, p0, Lorg/jshybugger/d;->Q:I

    if-eq v3, v6, :cond_404

    iget v3, p0, Lorg/jshybugger/d;->H:I

    if-ne v3, v5, :cond_406

    iget v3, p0, Lorg/jshybugger/d;->K:I

    iget v7, p0, Lorg/jshybugger/d;->L:I

    sub-int/2addr v3, v7

    const/16 v7, 0x1000

    if-le v3, v7, :cond_406

    :cond_404
    iput v4, p0, Lorg/jshybugger/d;->H:I

    :cond_406
    iget v3, p0, Lorg/jshybugger/d;->N:I

    if-lt v3, v5, :cond_494

    iget v3, p0, Lorg/jshybugger/d;->H:I

    iget v7, p0, Lorg/jshybugger/d;->N:I

    if-gt v3, v7, :cond_494

    iget v3, p0, Lorg/jshybugger/d;->K:I

    iget v7, p0, Lorg/jshybugger/d;->M:I

    add-int/2addr v3, v7

    add-int/lit8 v3, v3, -0x3

    iget v7, p0, Lorg/jshybugger/d;->K:I

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Lorg/jshybugger/d;->I:I

    sub-int/2addr v7, v8

    iget v8, p0, Lorg/jshybugger/d;->N:I

    add-int/lit8 v8, v8, -0x3

    invoke-direct {p0, v7, v8}, Lorg/jshybugger/d;->b(II)Z

    move-result v7

    iget v8, p0, Lorg/jshybugger/d;->M:I

    iget v9, p0, Lorg/jshybugger/d;->N:I

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v8, v9

    iput v8, p0, Lorg/jshybugger/d;->M:I

    iget v8, p0, Lorg/jshybugger/d;->N:I

    add-int/lit8 v8, v8, -0x2

    iput v8, p0, Lorg/jshybugger/d;->N:I

    :cond_435
    iget v8, p0, Lorg/jshybugger/d;->K:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/jshybugger/d;->K:I

    if-gt v8, v3, :cond_474

    iget v0, p0, Lorg/jshybugger/d;->B:I

    iget v8, p0, Lorg/jshybugger/d;->F:I

    shl-int/2addr v0, v8

    iget-object v8, p0, Lorg/jshybugger/d;->x:[B

    iget v9, p0, Lorg/jshybugger/d;->K:I

    add-int/lit8 v9, v9, 0x2

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    xor-int/2addr v0, v8

    iget v8, p0, Lorg/jshybugger/d;->E:I

    and-int/2addr v0, v8

    iput v0, p0, Lorg/jshybugger/d;->B:I

    iget-object v0, p0, Lorg/jshybugger/d;->A:[S

    iget v8, p0, Lorg/jshybugger/d;->B:I

    aget-short v0, v0, v8

    const v8, 0xffff

    and-int/2addr v0, v8

    iget-object v8, p0, Lorg/jshybugger/d;->z:[S

    iget v9, p0, Lorg/jshybugger/d;->K:I

    iget v10, p0, Lorg/jshybugger/d;->w:I

    and-int/2addr v9, v10

    iget-object v10, p0, Lorg/jshybugger/d;->A:[S

    iget v11, p0, Lorg/jshybugger/d;->B:I

    aget-short v10, v10, v11

    aput-short v10, v8, v9

    iget-object v8, p0, Lorg/jshybugger/d;->A:[S

    iget v9, p0, Lorg/jshybugger/d;->B:I

    iget v10, p0, Lorg/jshybugger/d;->K:I

    int-to-short v10, v10

    aput-short v10, v8, v9

    :cond_474
    iget v8, p0, Lorg/jshybugger/d;->N:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lorg/jshybugger/d;->N:I

    if-nez v8, :cond_435

    iput v2, p0, Lorg/jshybugger/d;->J:I

    iput v4, p0, Lorg/jshybugger/d;->H:I

    iget v3, p0, Lorg/jshybugger/d;->K:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/jshybugger/d;->K:I

    if-eqz v7, :cond_372

    invoke-direct {p0, v2}, Lorg/jshybugger/d;->a(Z)V

    iget-object v3, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    iget v3, v3, Lorg/jshybugger/r;->g:I

    if-nez v3, :cond_372

    move v0, v2

    goto/16 :goto_181

    :cond_494
    iget v3, p0, Lorg/jshybugger/d;->J:I

    if-eqz v3, :cond_4c0

    iget-object v3, p0, Lorg/jshybugger/d;->x:[B

    iget v7, p0, Lorg/jshybugger/d;->K:I

    add-int/lit8 v7, v7, -0x1

    aget-byte v3, v3, v7

    and-int/lit16 v3, v3, 0xff

    invoke-direct {p0, v2, v3}, Lorg/jshybugger/d;->b(II)Z

    move-result v3

    if-eqz v3, :cond_4ab

    invoke-direct {p0, v2}, Lorg/jshybugger/d;->a(Z)V

    :cond_4ab
    iget v3, p0, Lorg/jshybugger/d;->K:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/jshybugger/d;->K:I

    iget v3, p0, Lorg/jshybugger/d;->M:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/jshybugger/d;->M:I

    iget-object v3, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    iget v3, v3, Lorg/jshybugger/r;->g:I

    if-nez v3, :cond_372

    move v0, v2

    goto/16 :goto_181

    :cond_4c0
    iput v6, p0, Lorg/jshybugger/d;->J:I

    iget v3, p0, Lorg/jshybugger/d;->K:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/jshybugger/d;->K:I

    iget v3, p0, Lorg/jshybugger/d;->M:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/jshybugger/d;->M:I

    goto/16 :goto_372

    :cond_4d0
    iget v0, p0, Lorg/jshybugger/d;->J:I

    if-eqz v0, :cond_4e3

    iget-object v0, p0, Lorg/jshybugger/d;->x:[B

    iget v3, p0, Lorg/jshybugger/d;->K:I

    add-int/lit8 v3, v3, -0x1

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v2, v0}, Lorg/jshybugger/d;->b(II)Z

    iput v2, p0, Lorg/jshybugger/d;->J:I

    :cond_4e3
    if-ne p1, v1, :cond_4f4

    move v0, v6

    :goto_4e6
    invoke-direct {p0, v0}, Lorg/jshybugger/d;->a(Z)V

    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    iget v0, v0, Lorg/jshybugger/r;->g:I

    if-nez v0, :cond_4f9

    if-ne p1, v1, :cond_4f6

    move v0, v4

    goto/16 :goto_181

    :cond_4f4
    move v0, v2

    goto :goto_4e6

    :cond_4f6
    move v0, v2

    goto/16 :goto_181

    :cond_4f9
    if-ne p1, v1, :cond_4fe

    move v0, v5

    goto/16 :goto_181

    :cond_4fe
    move v0, v6

    goto/16 :goto_181

    .line 1608
    :cond_501
    if-ne v0, v6, :cond_550

    .line 1609
    if-ne p1, v6, :cond_53f

    .line 1610
    invoke-direct {p0, v4, v5}, Lorg/jshybugger/d;->a(II)V

    const/16 v0, 0x100

    sget-object v3, Lorg/jshybugger/p;->a:[S

    invoke-direct {p0, v0, v3}, Lorg/jshybugger/d;->a(I[S)V

    invoke-direct {p0}, Lorg/jshybugger/d;->c()V

    iget v0, p0, Lorg/jshybugger/d;->ae:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0xa

    iget v3, p0, Lorg/jshybugger/d;->ag:I

    sub-int/2addr v0, v3

    const/16 v3, 0x9

    if-ge v0, v3, :cond_52c

    invoke-direct {p0, v4, v5}, Lorg/jshybugger/d;->a(II)V

    const/16 v0, 0x100

    sget-object v3, Lorg/jshybugger/p;->a:[S

    invoke-direct {p0, v0, v3}, Lorg/jshybugger/d;->a(I[S)V

    invoke-direct {p0}, Lorg/jshybugger/d;->c()V

    :cond_52c
    const/4 v0, 0x7

    iput v0, p0, Lorg/jshybugger/d;->ae:I

    .line 1622
    :cond_52f
    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    invoke-virtual {v0}, Lorg/jshybugger/r;->b()V

    .line 1623
    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    iget v0, v0, Lorg/jshybugger/r;->g:I

    if-nez v0, :cond_550

    .line 1624
    const/4 v0, -0x1

    iput v0, p0, Lorg/jshybugger/d;->t:I

    goto/16 :goto_a

    .line 1613
    :cond_53f
    invoke-direct {p0, v2, v2, v2}, Lorg/jshybugger/d;->a(IIZ)V

    .line 1616
    if-ne p1, v5, :cond_52f

    move v0, v2

    .line 1618
    :goto_545
    iget v3, p0, Lorg/jshybugger/d;->C:I

    if-ge v0, v3, :cond_52f

    .line 1619
    iget-object v3, p0, Lorg/jshybugger/d;->A:[S

    aput-short v2, v3, v0

    .line 1618
    add-int/lit8 v0, v0, 0x1

    goto :goto_545

    .line 1630
    :cond_550
    if-ne p1, v1, :cond_a

    .line 1631
    iget v0, p0, Lorg/jshybugger/d;->d:I

    if-gtz v0, :cond_559

    move v2, v6

    goto/16 :goto_a

    .line 1633
    :cond_559
    iget v0, p0, Lorg/jshybugger/d;->d:I

    if-ne v0, v4, :cond_5e1

    .line 1634
    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    iget-object v0, v0, Lorg/jshybugger/r;->l:Lorg/jshybugger/c;

    invoke-interface {v0}, Lorg/jshybugger/c;->b()J

    move-result-wide v0

    .line 1635
    const-wide/16 v4, 0xff

    and-long/2addr v4, v0

    long-to-int v3, v4

    int-to-byte v3, v3

    invoke-virtual {p0, v3}, Lorg/jshybugger/d;->a(B)V

    .line 1636
    const/16 v3, 0x8

    shr-long v4, v0, v3

    const-wide/16 v8, 0xff

    and-long/2addr v4, v8

    long-to-int v3, v4

    int-to-byte v3, v3

    invoke-virtual {p0, v3}, Lorg/jshybugger/d;->a(B)V

    .line 1637
    const/16 v3, 0x10

    shr-long v4, v0, v3

    const-wide/16 v8, 0xff

    and-long/2addr v4, v8

    long-to-int v3, v4

    int-to-byte v3, v3

    invoke-virtual {p0, v3}, Lorg/jshybugger/d;->a(B)V

    .line 1638
    const/16 v3, 0x18

    shr-long/2addr v0, v3

    const-wide/16 v4, 0xff

    and-long/2addr v0, v4

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/jshybugger/d;->a(B)V

    .line 1639
    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    iget-wide v0, v0, Lorg/jshybugger/r;->d:J

    const-wide/16 v4, 0xff

    and-long/2addr v0, v4

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/jshybugger/d;->a(B)V

    .line 1640
    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    iget-wide v0, v0, Lorg/jshybugger/r;->d:J

    const/16 v3, 0x8

    shr-long/2addr v0, v3

    const-wide/16 v4, 0xff

    and-long/2addr v0, v4

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/jshybugger/d;->a(B)V

    .line 1641
    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    iget-wide v0, v0, Lorg/jshybugger/r;->d:J

    const/16 v3, 0x10

    shr-long/2addr v0, v3

    const-wide/16 v4, 0xff

    and-long/2addr v0, v4

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/jshybugger/d;->a(B)V

    .line 1642
    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    iget-wide v0, v0, Lorg/jshybugger/r;->d:J

    const/16 v3, 0x18

    shr-long/2addr v0, v3

    const-wide/16 v4, 0xff

    and-long/2addr v0, v4

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/jshybugger/d;->a(B)V

    .line 1644
    invoke-direct {p0}, Lorg/jshybugger/d;->f()Lorg/jshybugger/g;

    .line 1653
    :goto_5cc
    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    invoke-virtual {v0}, Lorg/jshybugger/r;->b()V

    .line 1658
    iget v0, p0, Lorg/jshybugger/d;->d:I

    if-lez v0, :cond_5da

    iget v0, p0, Lorg/jshybugger/d;->d:I

    neg-int v0, v0

    iput v0, p0, Lorg/jshybugger/d;->d:I

    .line 1659
    :cond_5da
    iget v0, p0, Lorg/jshybugger/d;->c:I

    if-nez v0, :cond_a

    move v2, v6

    goto/16 :goto_a

    .line 1648
    :cond_5e1
    iget-object v0, p0, Lorg/jshybugger/d;->p:Lorg/jshybugger/r;

    iget-object v0, v0, Lorg/jshybugger/r;->l:Lorg/jshybugger/c;

    invoke-interface {v0}, Lorg/jshybugger/c;->b()J

    move-result-wide v0

    .line 1649
    const/16 v3, 0x10

    ushr-long v4, v0, v3

    long-to-int v3, v4

    invoke-direct {p0, v3}, Lorg/jshybugger/d;->c(I)V

    .line 1650
    const-wide/32 v4, 0xffff

    and-long/2addr v0, v4

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lorg/jshybugger/d;->c(I)V

    goto :goto_5cc

    :cond_5fa
    move v3, v0

    goto/16 :goto_269

    :cond_5fd
    move v3, v2

    goto/16 :goto_68

    :cond_600
    move v0, v2

    goto/16 :goto_57

    .line 1579
    nop

    :pswitch_data_604
    .packed-switch 0x0
        :pswitch_198
        :pswitch_215
        :pswitch_371
    .end packed-switch
.end method

.method public final clone()Ljava/lang/Object;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1700
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/d;

    .line 1702
    iget-object v1, v0, Lorg/jshybugger/d;->a:[B

    invoke-static {v1}, Lorg/jshybugger/d;->a([B)[B

    move-result-object v1

    iput-object v1, v0, Lorg/jshybugger/d;->a:[B

    .line 1703
    iget-object v1, v0, Lorg/jshybugger/d;->Z:[B

    invoke-static {v1}, Lorg/jshybugger/d;->a([B)[B

    move-result-object v1

    iput-object v1, v0, Lorg/jshybugger/d;->Z:[B

    .line 1705
    iget-object v1, v0, Lorg/jshybugger/d;->x:[B

    invoke-static {v1}, Lorg/jshybugger/d;->a([B)[B

    move-result-object v1

    iput-object v1, v0, Lorg/jshybugger/d;->x:[B

    .line 1707
    iget-object v1, v0, Lorg/jshybugger/d;->z:[S

    invoke-static {v1}, Lorg/jshybugger/d;->a([S)[S

    move-result-object v1

    iput-object v1, v0, Lorg/jshybugger/d;->z:[S

    .line 1708
    iget-object v1, v0, Lorg/jshybugger/d;->A:[S

    invoke-static {v1}, Lorg/jshybugger/d;->a([S)[S

    move-result-object v1

    iput-object v1, v0, Lorg/jshybugger/d;->A:[S

    .line 1709
    iget-object v1, v0, Lorg/jshybugger/d;->T:[S

    invoke-static {v1}, Lorg/jshybugger/d;->a([S)[S

    move-result-object v1

    iput-object v1, v0, Lorg/jshybugger/d;->T:[S

    .line 1710
    iget-object v1, v0, Lorg/jshybugger/d;->U:[S

    invoke-static {v1}, Lorg/jshybugger/d;->a([S)[S

    move-result-object v1

    iput-object v1, v0, Lorg/jshybugger/d;->U:[S

    .line 1711
    iget-object v1, v0, Lorg/jshybugger/d;->V:[S

    invoke-static {v1}, Lorg/jshybugger/d;->a([S)[S

    move-result-object v1

    iput-object v1, v0, Lorg/jshybugger/d;->V:[S

    .line 1713
    iget-object v1, v0, Lorg/jshybugger/d;->f:[S

    invoke-static {v1}, Lorg/jshybugger/d;->a([S)[S

    move-result-object v1

    iput-object v1, v0, Lorg/jshybugger/d;->f:[S

    .line 1714
    iget-object v1, v0, Lorg/jshybugger/d;->g:[S

    invoke-static {v1}, Lorg/jshybugger/d;->a([S)[S

    move-result-object v1

    iput-object v1, v0, Lorg/jshybugger/d;->g:[S

    .line 1715
    iget-object v1, v0, Lorg/jshybugger/d;->h:[I

    array-length v2, v1

    new-array v2, v2, [I

    array-length v3, v2

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, v0, Lorg/jshybugger/d;->h:[I

    .line 1716
    iget-object v1, v0, Lorg/jshybugger/d;->k:[B

    invoke-static {v1}, Lorg/jshybugger/d;->a([B)[B

    move-result-object v1

    iput-object v1, v0, Lorg/jshybugger/d;->k:[B

    .line 1718
    iget-object v1, v0, Lorg/jshybugger/d;->W:Lorg/jshybugger/q;

    iget-object v2, v0, Lorg/jshybugger/d;->T:[S

    iput-object v2, v1, Lorg/jshybugger/q;->h:[S

    .line 1719
    iget-object v1, v0, Lorg/jshybugger/d;->X:Lorg/jshybugger/q;

    iget-object v2, v0, Lorg/jshybugger/d;->U:[S

    iput-object v2, v1, Lorg/jshybugger/q;->h:[S

    .line 1720
    iget-object v1, v0, Lorg/jshybugger/d;->Y:Lorg/jshybugger/q;

    iget-object v2, v0, Lorg/jshybugger/d;->V:[S

    iput-object v2, v1, Lorg/jshybugger/q;->h:[S

    .line 1728
    iget-object v1, v0, Lorg/jshybugger/d;->ah:Lorg/jshybugger/g;

    if-eqz v1, :cond_8a

    .line 1729
    iget-object v1, v0, Lorg/jshybugger/d;->ah:Lorg/jshybugger/g;

    invoke-virtual {v1}, Lorg/jshybugger/g;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jshybugger/g;

    iput-object v1, v0, Lorg/jshybugger/d;->ah:Lorg/jshybugger/g;

    .line 1732
    :cond_8a
    return-object v0
.end method
