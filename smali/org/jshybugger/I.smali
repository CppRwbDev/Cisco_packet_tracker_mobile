.class final Lorg/jshybugger/i;
.super Ljava/lang/Object;
.source "InfCodes.java"


# static fields
.field private static final a:[I


# instance fields
.field private b:I

.field private c:I

.field private d:[I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:B

.field private k:B

.field private l:[I

.field private m:I

.field private n:[I

.field private o:I

.field private final p:Lorg/jshybugger/r;

.field private final q:Lorg/jshybugger/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lorg/jshybugger/i;->a:[I

    return-void

    :array_a
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
    .end array-data
.end method

.method constructor <init>(Lorg/jshybugger/r;Lorg/jshybugger/h;)V
    .registers 4

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lorg/jshybugger/i;->e:I

    .line 95
    iput-object p1, p0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    .line 96
    iput-object p2, p0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    .line 97
    return-void
.end method

.method static a()V
    .registers 0

    .prologue
    .line 399
    return-void
.end method


# virtual methods
.method final a(I)I
    .registers 25

    .prologue
    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget v5, v2, Lorg/jshybugger/r;->b:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget v4, v2, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v7, v2, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v6, v2, Lorg/jshybugger/h;->a:I

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v3, v2, Lorg/jshybugger/h;->f:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v2, v2, Lorg/jshybugger/h;->e:I

    if-ge v3, v2, :cond_70

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v2, v2, Lorg/jshybugger/h;->e:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .line 131
    :goto_2f
    move-object/from16 v0, p0

    iget v8, v0, Lorg/jshybugger/i;->b:I

    packed-switch v8, :pswitch_data_a40

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v7, v2, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v6, v2, Lorg/jshybugger/h;->a:I

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iput v4, v2, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget-wide v6, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget v4, v4, Lorg/jshybugger/r;->b:I

    sub-int v4, v5, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iput v5, v2, Lorg/jshybugger/r;->b:I

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v3, v2, Lorg/jshybugger/h;->f:I

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lorg/jshybugger/h;->b(I)I

    move-result v2

    :goto_6f
    return v2

    .line 127
    :cond_70
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v2, v2, Lorg/jshybugger/h;->d:I

    sub-int/2addr v2, v3

    goto :goto_2f

    .line 134
    :pswitch_78
    const/16 v8, 0x102

    if-lt v2, v8, :cond_412

    const/16 v8, 0xa

    if-lt v4, v8, :cond_412

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v7, v2, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v6, v2, Lorg/jshybugger/h;->a:I

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iput v4, v2, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget-wide v6, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget v4, v4, Lorg/jshybugger/r;->b:I

    sub-int v4, v5, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iput v5, v2, Lorg/jshybugger/r;->b:I

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v3, v2, Lorg/jshybugger/h;->f:I

    .line 139
    move-object/from16 v0, p0

    iget-byte v8, v0, Lorg/jshybugger/i;->j:B

    move-object/from16 v0, p0

    iget-byte v9, v0, Lorg/jshybugger/i;->k:B

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jshybugger/i;->l:[I

    move-object/from16 v0, p0

    iget v15, v0, Lorg/jshybugger/i;->m:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jshybugger/i;->n:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jshybugger/i;->o:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v4, v0, Lorg/jshybugger/r;->b:I

    move-object/from16 v0, v19

    iget v3, v0, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, v18

    iget v6, v0, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, v18

    iget v5, v0, Lorg/jshybugger/h;->a:I

    move-object/from16 v0, v18

    iget v7, v0, Lorg/jshybugger/h;->f:I

    move-object/from16 v0, v18

    iget v2, v0, Lorg/jshybugger/h;->e:I

    if-ge v7, v2, :cond_11d

    move-object/from16 v0, v18

    iget v2, v0, Lorg/jshybugger/h;->e:I

    sub-int/2addr v2, v7

    add-int/lit8 v2, v2, -0x1

    :goto_f9
    sget-object v10, Lorg/jshybugger/i;->a:[I

    aget v20, v10, v8

    sget-object v8, Lorg/jshybugger/i;->a:[I

    aget v21, v8, v9

    move v8, v2

    move v9, v3

    move v10, v4

    move v3, v5

    move v4, v6

    :goto_106
    const/16 v2, 0x14

    if-ge v3, v2, :cond_123

    add-int/lit8 v2, v9, -0x1

    move-object/from16 v0, v19

    iget-object v6, v0, Lorg/jshybugger/r;->a:[B

    add-int/lit8 v5, v10, 0x1

    aget-byte v6, v6, v10

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v3

    or-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x8

    move v9, v2

    move v10, v5

    goto :goto_106

    :cond_11d
    move-object/from16 v0, v18

    iget v2, v0, Lorg/jshybugger/h;->d:I

    sub-int/2addr v2, v7

    goto :goto_f9

    :cond_123
    and-int v6, v4, v20

    add-int v2, v15, v6

    mul-int/lit8 v2, v2, 0x3

    aget v5, v14, v2

    if-nez v5, :cond_1c7

    add-int/lit8 v5, v2, 0x1

    aget v5, v14, v5

    shr-int v6, v4, v5

    add-int/lit8 v4, v2, 0x1

    aget v4, v14, v4

    sub-int v5, v3, v4

    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/jshybugger/h;->c:[B

    add-int/lit8 v4, v7, 0x1

    add-int/lit8 v2, v2, 0x2

    aget v2, v14, v2

    int-to-byte v2, v2

    aput-byte v2, v3, v7

    add-int/lit8 v2, v8, -0x1

    move v7, v4

    move v3, v9

    move v4, v10

    :goto_14b
    const/16 v8, 0x102

    if-lt v2, v8, :cond_153

    const/16 v8, 0xa

    if-ge v3, v8, :cond_a2a

    :cond_153
    move-object/from16 v0, v19

    iget v2, v0, Lorg/jshybugger/r;->c:I

    sub-int/2addr v2, v3

    shr-int/lit8 v8, v5, 0x3

    if-ge v8, v2, :cond_15e

    shr-int/lit8 v2, v5, 0x3

    :cond_15e
    add-int/2addr v3, v2

    sub-int/2addr v4, v2

    shl-int/lit8 v2, v2, 0x3

    sub-int v2, v5, v2

    move-object/from16 v0, v18

    iput v6, v0, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, v18

    iput v2, v0, Lorg/jshybugger/h;->a:I

    move-object/from16 v0, v19

    iput v3, v0, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, v19

    iget-wide v2, v0, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, v19

    iget v5, v0, Lorg/jshybugger/r;->b:I

    sub-int v5, v4, v5

    int-to-long v8, v5

    add-long/2addr v2, v8

    move-object/from16 v0, v19

    iput-wide v2, v0, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, v19

    iput v4, v0, Lorg/jshybugger/r;->b:I

    move-object/from16 v0, v18

    iput v7, v0, Lorg/jshybugger/h;->f:I

    const/16 p1, 0x0

    .line 144
    :goto_18a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget v5, v2, Lorg/jshybugger/r;->b:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget v4, v2, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v7, v2, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v6, v2, Lorg/jshybugger/h;->a:I

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v3, v2, Lorg/jshybugger/h;->f:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v2, v2, Lorg/jshybugger/h;->e:I

    if-ge v3, v2, :cond_405

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v2, v2, Lorg/jshybugger/h;->e:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .line 147
    :goto_1b9
    if-eqz p1, :cond_412

    .line 148
    const/4 v8, 0x1

    move/from16 v0, p1

    if-ne v0, v8, :cond_40e

    const/4 v8, 0x7

    :goto_1c1
    move-object/from16 v0, p0

    iput v8, v0, Lorg/jshybugger/i;->b:I

    goto/16 :goto_2f

    .line 139
    :cond_1c7
    add-int/lit8 v11, v2, 0x1

    aget v11, v14, v11

    shr-int/2addr v4, v11

    add-int/lit8 v11, v2, 0x1

    aget v11, v14, v11

    sub-int/2addr v3, v11

    and-int/lit8 v11, v5, 0x10

    if-eqz v11, :cond_34d

    and-int/lit8 v5, v5, 0xf

    add-int/lit8 v2, v2, 0x2

    aget v2, v14, v2

    sget-object v6, Lorg/jshybugger/i;->a:[I

    aget v6, v6, v5

    and-int/2addr v6, v4

    add-int v13, v2, v6

    shr-int/2addr v4, v5

    sub-int/2addr v3, v5

    :goto_1e4
    const/16 v2, 0xf

    if-ge v3, v2, :cond_1fa

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, v19

    iget-object v5, v0, Lorg/jshybugger/r;->a:[B

    add-int/lit8 v2, v10, 0x1

    aget-byte v5, v5, v10

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v3

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x8

    move v10, v2

    goto :goto_1e4

    :cond_1fa
    and-int v6, v4, v21

    add-int v2, v17, v6

    mul-int/lit8 v2, v2, 0x3

    aget v5, v16, v2

    :goto_202
    add-int/lit8 v11, v2, 0x1

    aget v11, v16, v11

    shr-int/2addr v4, v11

    add-int/lit8 v11, v2, 0x1

    aget v11, v16, v11

    sub-int/2addr v3, v11

    and-int/lit8 v11, v5, 0x10

    if-eqz v11, :cond_2f4

    and-int/lit8 v6, v5, 0xf

    move v5, v4

    move v4, v3

    :goto_214
    if-ge v4, v6, :cond_228

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, v19

    iget-object v11, v0, Lorg/jshybugger/r;->a:[B

    add-int/lit8 v3, v10, 0x1

    aget-byte v10, v11, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v4

    or-int/2addr v5, v10

    add-int/lit8 v4, v4, 0x8

    move v10, v3

    goto :goto_214

    :cond_228
    add-int/lit8 v2, v2, 0x2

    aget v2, v16, v2

    sget-object v3, Lorg/jshybugger/i;->a:[I

    aget v3, v3, v6

    and-int/2addr v3, v5

    add-int/2addr v2, v3

    shr-int v12, v5, v6

    sub-int v11, v4, v6

    sub-int/2addr v8, v13

    if-lt v7, v2, :cond_29e

    sub-int v2, v7, v2

    sub-int v3, v7, v2

    if-lez v3, :cond_28b

    const/4 v3, 0x2

    sub-int v4, v7, v2

    if-le v3, v4, :cond_28b

    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/jshybugger/h;->c:[B

    add-int/lit8 v5, v7, 0x1

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/jshybugger/h;->c:[B

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, v4, v2

    aput-byte v2, v3, v7

    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/jshybugger/h;->c:[B

    add-int/lit8 v3, v5, 0x1

    move-object/from16 v0, v18

    iget-object v7, v0, Lorg/jshybugger/h;->c:[B

    add-int/lit8 v4, v6, 0x1

    aget-byte v6, v7, v6

    aput-byte v6, v2, v5

    add-int/lit8 v2, v13, -0x2

    :goto_266
    sub-int v5, v3, v4

    if-lez v5, :cond_2e0

    sub-int v5, v3, v4

    if-le v2, v5, :cond_2e0

    move v5, v4

    :goto_26f
    move-object/from16 v0, v18

    iget-object v7, v0, Lorg/jshybugger/h;->c:[B

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, v18

    iget-object v13, v0, Lorg/jshybugger/h;->c:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v13, v5

    aput-byte v5, v7, v3

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_a31

    move v2, v8

    move v7, v4

    move v3, v9

    move v5, v11

    move v6, v12

    move v4, v10

    goto/16 :goto_14b

    :cond_28b
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/jshybugger/h;->c:[B

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/jshybugger/h;->c:[B

    const/4 v5, 0x2

    invoke-static {v3, v2, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v7, 0x2

    add-int/lit8 v4, v2, 0x2

    add-int/lit8 v2, v13, -0x2

    goto :goto_266

    :cond_29e
    sub-int v2, v7, v2

    :cond_2a0
    move-object/from16 v0, v18

    iget v3, v0, Lorg/jshybugger/h;->d:I

    add-int/2addr v2, v3

    if-ltz v2, :cond_2a0

    move-object/from16 v0, v18

    iget v3, v0, Lorg/jshybugger/h;->d:I

    sub-int/2addr v3, v2

    if-le v13, v3, :cond_a3a

    sub-int/2addr v13, v3

    sub-int v4, v7, v2

    if-lez v4, :cond_2d3

    sub-int v4, v7, v2

    if-le v3, v4, :cond_2d3

    move v4, v3

    move v5, v2

    move v2, v7

    :goto_2ba
    move-object/from16 v0, v18

    iget-object v7, v0, Lorg/jshybugger/h;->c:[B

    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jshybugger/h;->c:[B

    move-object/from16 v22, v0

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v22, v5

    aput-byte v5, v7, v2

    add-int/lit8 v2, v4, -0x1

    if-nez v2, :cond_a35

    :goto_2d0
    const/4 v4, 0x0

    move v2, v13

    goto :goto_266

    :cond_2d3
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/jshybugger/h;->c:[B

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/jshybugger/h;->c:[B

    invoke-static {v4, v2, v5, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v7

    goto :goto_2d0

    :cond_2e0
    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/jshybugger/h;->c:[B

    move-object/from16 v0, v18

    iget-object v6, v0, Lorg/jshybugger/h;->c:[B

    invoke-static {v5, v4, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v7, v3, v2

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    move v6, v12

    goto/16 :goto_14b

    :cond_2f4
    and-int/lit8 v11, v5, 0x40

    if-nez v11, :cond_30c

    add-int/lit8 v2, v2, 0x2

    aget v2, v16, v2

    add-int/2addr v2, v6

    sget-object v6, Lorg/jshybugger/i;->a:[I

    aget v5, v6, v5

    and-int/2addr v5, v4

    add-int v6, v2, v5

    add-int v2, v17, v6

    mul-int/lit8 v2, v2, 0x3

    aget v5, v16, v2

    goto/16 :goto_202

    :cond_30c
    const-string v2, "invalid distance code"

    move-object/from16 v0, v19

    iput-object v2, v0, Lorg/jshybugger/r;->i:Ljava/lang/String;

    move-object/from16 v0, v19

    iget v2, v0, Lorg/jshybugger/r;->c:I

    sub-int/2addr v2, v9

    shr-int/lit8 v5, v3, 0x3

    if-ge v5, v2, :cond_31d

    shr-int/lit8 v2, v3, 0x3

    :cond_31d
    add-int v5, v9, v2

    sub-int v6, v10, v2

    shl-int/lit8 v2, v2, 0x3

    sub-int v2, v3, v2

    move-object/from16 v0, v18

    iput v4, v0, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, v18

    iput v2, v0, Lorg/jshybugger/h;->a:I

    move-object/from16 v0, v19

    iput v5, v0, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, v19

    iget-wide v2, v0, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, v19

    iget v4, v0, Lorg/jshybugger/r;->b:I

    sub-int v4, v6, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, v19

    iput-wide v2, v0, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, v19

    iput v6, v0, Lorg/jshybugger/r;->b:I

    move-object/from16 v0, v18

    iput v7, v0, Lorg/jshybugger/h;->f:I

    const/16 p1, -0x3

    goto/16 :goto_18a

    :cond_34d
    and-int/lit8 v11, v5, 0x40

    if-nez v11, :cond_385

    add-int/lit8 v2, v2, 0x2

    aget v2, v14, v2

    add-int/2addr v2, v6

    sget-object v6, Lorg/jshybugger/i;->a:[I

    aget v5, v6, v5

    and-int/2addr v5, v4

    add-int v6, v2, v5

    add-int v2, v15, v6

    mul-int/lit8 v2, v2, 0x3

    aget v5, v14, v2

    if-nez v5, :cond_1c7

    add-int/lit8 v5, v2, 0x1

    aget v5, v14, v5

    shr-int v6, v4, v5

    add-int/lit8 v4, v2, 0x1

    aget v4, v14, v4

    sub-int v5, v3, v4

    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/jshybugger/h;->c:[B

    add-int/lit8 v4, v7, 0x1

    add-int/lit8 v2, v2, 0x2

    aget v2, v14, v2

    int-to-byte v2, v2

    aput-byte v2, v3, v7

    add-int/lit8 v2, v8, -0x1

    move v7, v4

    move v3, v9

    move v4, v10

    goto/16 :goto_14b

    :cond_385
    and-int/lit8 v2, v5, 0x20

    if-eqz v2, :cond_3c4

    move-object/from16 v0, v19

    iget v2, v0, Lorg/jshybugger/r;->c:I

    sub-int/2addr v2, v9

    shr-int/lit8 v5, v3, 0x3

    if-ge v5, v2, :cond_394

    shr-int/lit8 v2, v3, 0x3

    :cond_394
    add-int v5, v9, v2

    sub-int v6, v10, v2

    shl-int/lit8 v2, v2, 0x3

    sub-int v2, v3, v2

    move-object/from16 v0, v18

    iput v4, v0, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, v18

    iput v2, v0, Lorg/jshybugger/h;->a:I

    move-object/from16 v0, v19

    iput v5, v0, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, v19

    iget-wide v2, v0, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, v19

    iget v4, v0, Lorg/jshybugger/r;->b:I

    sub-int v4, v6, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, v19

    iput-wide v2, v0, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, v19

    iput v6, v0, Lorg/jshybugger/r;->b:I

    move-object/from16 v0, v18

    iput v7, v0, Lorg/jshybugger/h;->f:I

    const/16 p1, 0x1

    goto/16 :goto_18a

    :cond_3c4
    const-string v2, "invalid literal/length code"

    move-object/from16 v0, v19

    iput-object v2, v0, Lorg/jshybugger/r;->i:Ljava/lang/String;

    move-object/from16 v0, v19

    iget v2, v0, Lorg/jshybugger/r;->c:I

    sub-int/2addr v2, v9

    shr-int/lit8 v5, v3, 0x3

    if-ge v5, v2, :cond_3d5

    shr-int/lit8 v2, v3, 0x3

    :cond_3d5
    add-int v5, v9, v2

    sub-int v6, v10, v2

    shl-int/lit8 v2, v2, 0x3

    sub-int v2, v3, v2

    move-object/from16 v0, v18

    iput v4, v0, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, v18

    iput v2, v0, Lorg/jshybugger/h;->a:I

    move-object/from16 v0, v19

    iput v5, v0, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, v19

    iget-wide v2, v0, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, v19

    iget v4, v0, Lorg/jshybugger/r;->b:I

    sub-int v4, v6, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, v19

    iput-wide v2, v0, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, v19

    iput v6, v0, Lorg/jshybugger/r;->b:I

    move-object/from16 v0, v18

    iput v7, v0, Lorg/jshybugger/h;->f:I

    const/16 p1, -0x3

    goto/16 :goto_18a

    .line 145
    :cond_405
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v2, v2, Lorg/jshybugger/h;->d:I

    sub-int/2addr v2, v3

    goto/16 :goto_1b9

    .line 148
    :cond_40e
    const/16 v8, 0x9

    goto/16 :goto_1c1

    .line 152
    :cond_412
    move-object/from16 v0, p0

    iget-byte v8, v0, Lorg/jshybugger/i;->j:B

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jshybugger/i;->f:I

    .line 153
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jshybugger/i;->l:[I

    move-object/from16 v0, p0

    iput-object v8, v0, Lorg/jshybugger/i;->d:[I

    .line 154
    move-object/from16 v0, p0

    iget v8, v0, Lorg/jshybugger/i;->m:I

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jshybugger/i;->e:I

    .line 156
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jshybugger/i;->b:I

    .line 158
    :pswitch_42f
    move-object/from16 v0, p0

    iget v9, v0, Lorg/jshybugger/i;->f:I

    move v8, v6

    .line 160
    :goto_434
    if-ge v8, v9, :cond_48b

    .line 161
    if-eqz v4, :cond_44f

    const/16 p1, 0x0

    .line 169
    add-int/lit8 v4, v4, -0x1

    .line 170
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget-object v10, v6, Lorg/jshybugger/r;->a:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v10, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v8

    or-int/2addr v7, v5

    .line 171
    add-int/lit8 v5, v8, 0x8

    move v8, v5

    move v5, v6

    goto :goto_434

    .line 164
    :cond_44f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v7, v2, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v8, v2, Lorg/jshybugger/h;->a:I

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iput v4, v2, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget-wide v6, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget v4, v4, Lorg/jshybugger/r;->b:I

    sub-int v4, v5, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iput v5, v2, Lorg/jshybugger/r;->b:I

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v3, v2, Lorg/jshybugger/h;->f:I

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/jshybugger/h;->b(I)I

    move-result v2

    goto/16 :goto_6f

    .line 174
    :cond_48b
    move-object/from16 v0, p0

    iget v6, v0, Lorg/jshybugger/i;->e:I

    sget-object v10, Lorg/jshybugger/i;->a:[I

    aget v9, v10, v9

    and-int/2addr v9, v7

    add-int/2addr v6, v9

    mul-int/lit8 v9, v6, 0x3

    .line 176
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jshybugger/i;->d:[I

    add-int/lit8 v10, v9, 0x1

    aget v6, v6, v10

    ushr-int/2addr v7, v6

    .line 177
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jshybugger/i;->d:[I

    add-int/lit8 v10, v9, 0x1

    aget v6, v6, v10

    sub-int v6, v8, v6

    .line 179
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jshybugger/i;->d:[I

    aget v8, v8, v9

    .line 181
    if-nez v8, :cond_4c5

    .line 182
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jshybugger/i;->d:[I

    add-int/lit8 v9, v9, 0x2

    aget v8, v8, v9

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jshybugger/i;->g:I

    .line 183
    const/4 v8, 0x6

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jshybugger/i;->b:I

    goto/16 :goto_2f

    .line 186
    :cond_4c5
    and-int/lit8 v10, v8, 0x10

    if-eqz v10, :cond_4e2

    .line 187
    and-int/lit8 v8, v8, 0xf

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jshybugger/i;->h:I

    .line 188
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jshybugger/i;->d:[I

    add-int/lit8 v9, v9, 0x2

    aget v8, v8, v9

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jshybugger/i;->c:I

    .line 189
    const/4 v8, 0x2

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jshybugger/i;->b:I

    goto/16 :goto_2f

    .line 192
    :cond_4e2
    and-int/lit8 v10, v8, 0x40

    if-nez v10, :cond_4fb

    .line 193
    move-object/from16 v0, p0

    iput v8, v0, Lorg/jshybugger/i;->f:I

    .line 194
    div-int/lit8 v8, v9, 0x3

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/jshybugger/i;->d:[I

    add-int/lit8 v9, v9, 0x2

    aget v9, v10, v9

    add-int/2addr v8, v9

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jshybugger/i;->e:I

    goto/16 :goto_2f

    .line 197
    :cond_4fb
    and-int/lit8 v8, v8, 0x20

    if-eqz v8, :cond_506

    .line 198
    const/4 v8, 0x7

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jshybugger/i;->b:I

    goto/16 :goto_2f

    .line 201
    :cond_506
    const/16 v2, 0x9

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jshybugger/i;->b:I

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    const-string v8, "invalid literal/length code"

    iput-object v8, v2, Lorg/jshybugger/r;->i:Ljava/lang/String;

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v7, v2, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v6, v2, Lorg/jshybugger/h;->a:I

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iput v4, v2, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget-wide v6, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget v4, v4, Lorg/jshybugger/r;->b:I

    sub-int v4, v5, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iput v5, v2, Lorg/jshybugger/r;->b:I

    .line 207
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v3, v2, Lorg/jshybugger/h;->f:I

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    const/4 v3, -0x3

    invoke-virtual {v2, v3}, Lorg/jshybugger/h;->b(I)I

    move-result v2

    goto/16 :goto_6f

    .line 211
    :pswitch_54f
    move-object/from16 v0, p0

    iget v9, v0, Lorg/jshybugger/i;->h:I

    move v8, v6

    .line 213
    :goto_554
    if-ge v8, v9, :cond_5ab

    .line 214
    if-eqz v4, :cond_56f

    const/16 p1, 0x0

    .line 222
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget-object v10, v6, Lorg/jshybugger/r;->a:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v10, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v8

    or-int/2addr v7, v5

    .line 223
    add-int/lit8 v5, v8, 0x8

    move v8, v5

    move v5, v6

    goto :goto_554

    .line 217
    :cond_56f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v7, v2, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v8, v2, Lorg/jshybugger/h;->a:I

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iput v4, v2, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget-wide v6, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget v4, v4, Lorg/jshybugger/r;->b:I

    sub-int v4, v5, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iput v5, v2, Lorg/jshybugger/r;->b:I

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v3, v2, Lorg/jshybugger/h;->f:I

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/jshybugger/h;->b(I)I

    move-result v2

    goto/16 :goto_6f

    .line 226
    :cond_5ab
    move-object/from16 v0, p0

    iget v6, v0, Lorg/jshybugger/i;->c:I

    sget-object v10, Lorg/jshybugger/i;->a:[I

    aget v10, v10, v9

    and-int/2addr v10, v7

    add-int/2addr v6, v10

    move-object/from16 v0, p0

    iput v6, v0, Lorg/jshybugger/i;->c:I

    .line 228
    shr-int/2addr v7, v9

    .line 229
    sub-int v6, v8, v9

    .line 231
    move-object/from16 v0, p0

    iget-byte v8, v0, Lorg/jshybugger/i;->k:B

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jshybugger/i;->f:I

    .line 232
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jshybugger/i;->n:[I

    move-object/from16 v0, p0

    iput-object v8, v0, Lorg/jshybugger/i;->d:[I

    .line 233
    move-object/from16 v0, p0

    iget v8, v0, Lorg/jshybugger/i;->o:I

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jshybugger/i;->e:I

    .line 234
    const/4 v8, 0x3

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jshybugger/i;->b:I

    .line 236
    :pswitch_5d9
    move-object/from16 v0, p0

    iget v9, v0, Lorg/jshybugger/i;->f:I

    move v8, v6

    .line 238
    :goto_5de
    if-ge v8, v9, :cond_635

    .line 239
    if-eqz v4, :cond_5f9

    const/16 p1, 0x0

    .line 247
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget-object v10, v6, Lorg/jshybugger/r;->a:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v10, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v8

    or-int/2addr v7, v5

    .line 248
    add-int/lit8 v5, v8, 0x8

    move v8, v5

    move v5, v6

    goto :goto_5de

    .line 242
    :cond_5f9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v7, v2, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v8, v2, Lorg/jshybugger/h;->a:I

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iput v4, v2, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget-wide v6, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget v4, v4, Lorg/jshybugger/r;->b:I

    sub-int v4, v5, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iput v5, v2, Lorg/jshybugger/r;->b:I

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v3, v2, Lorg/jshybugger/h;->f:I

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/jshybugger/h;->b(I)I

    move-result v2

    goto/16 :goto_6f

    .line 251
    :cond_635
    move-object/from16 v0, p0

    iget v6, v0, Lorg/jshybugger/i;->e:I

    sget-object v10, Lorg/jshybugger/i;->a:[I

    aget v9, v10, v9

    and-int/2addr v9, v7

    add-int/2addr v6, v9

    mul-int/lit8 v9, v6, 0x3

    .line 253
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jshybugger/i;->d:[I

    add-int/lit8 v10, v9, 0x1

    aget v6, v6, v10

    shr-int/2addr v7, v6

    .line 254
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jshybugger/i;->d:[I

    add-int/lit8 v10, v9, 0x1

    aget v6, v6, v10

    sub-int v6, v8, v6

    .line 256
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jshybugger/i;->d:[I

    aget v8, v8, v9

    .line 257
    and-int/lit8 v10, v8, 0x10

    if-eqz v10, :cond_677

    .line 258
    and-int/lit8 v8, v8, 0xf

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jshybugger/i;->h:I

    .line 259
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jshybugger/i;->d:[I

    add-int/lit8 v9, v9, 0x2

    aget v8, v8, v9

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jshybugger/i;->i:I

    .line 260
    const/4 v8, 0x4

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jshybugger/i;->b:I

    goto/16 :goto_2f

    .line 263
    :cond_677
    and-int/lit8 v10, v8, 0x40

    if-nez v10, :cond_690

    .line 264
    move-object/from16 v0, p0

    iput v8, v0, Lorg/jshybugger/i;->f:I

    .line 265
    div-int/lit8 v8, v9, 0x3

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/jshybugger/i;->d:[I

    add-int/lit8 v9, v9, 0x2

    aget v9, v10, v9

    add-int/2addr v8, v9

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jshybugger/i;->e:I

    goto/16 :goto_2f

    .line 268
    :cond_690
    const/16 v2, 0x9

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jshybugger/i;->b:I

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    const-string v8, "invalid distance code"

    iput-object v8, v2, Lorg/jshybugger/r;->i:Ljava/lang/String;

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v7, v2, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v6, v2, Lorg/jshybugger/h;->a:I

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iput v4, v2, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget-wide v6, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget v4, v4, Lorg/jshybugger/r;->b:I

    sub-int v4, v5, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iput v5, v2, Lorg/jshybugger/r;->b:I

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v3, v2, Lorg/jshybugger/h;->f:I

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    const/4 v3, -0x3

    invoke-virtual {v2, v3}, Lorg/jshybugger/h;->b(I)I

    move-result v2

    goto/16 :goto_6f

    .line 278
    :pswitch_6d9
    move-object/from16 v0, p0

    iget v9, v0, Lorg/jshybugger/i;->h:I

    move v8, v6

    .line 280
    :goto_6de
    if-ge v8, v9, :cond_735

    .line 281
    if-eqz v4, :cond_6f9

    const/16 p1, 0x0

    .line 289
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget-object v10, v6, Lorg/jshybugger/r;->a:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v10, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v8

    or-int/2addr v7, v5

    .line 290
    add-int/lit8 v5, v8, 0x8

    move v8, v5

    move v5, v6

    goto :goto_6de

    .line 284
    :cond_6f9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v7, v2, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v8, v2, Lorg/jshybugger/h;->a:I

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iput v4, v2, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget-wide v6, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget v4, v4, Lorg/jshybugger/r;->b:I

    sub-int v4, v5, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iput v5, v2, Lorg/jshybugger/r;->b:I

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v3, v2, Lorg/jshybugger/h;->f:I

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/jshybugger/h;->b(I)I

    move-result v2

    goto/16 :goto_6f

    .line 293
    :cond_735
    move-object/from16 v0, p0

    iget v6, v0, Lorg/jshybugger/i;->i:I

    sget-object v10, Lorg/jshybugger/i;->a:[I

    aget v10, v10, v9

    and-int/2addr v10, v7

    add-int/2addr v6, v10

    move-object/from16 v0, p0

    iput v6, v0, Lorg/jshybugger/i;->i:I

    .line 295
    shr-int/2addr v7, v9

    .line 296
    sub-int v6, v8, v9

    .line 298
    const/4 v8, 0x5

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jshybugger/i;->b:I

    .line 300
    :pswitch_74b
    move-object/from16 v0, p0

    iget v8, v0, Lorg/jshybugger/i;->i:I

    sub-int v8, v3, v8

    .line 301
    :goto_751
    if-gez v8, :cond_785

    .line 302
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v9, v9, Lorg/jshybugger/h;->d:I

    add-int/2addr v8, v9

    goto :goto_751

    :cond_75b
    move v9, v3

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget-object v11, v3, Lorg/jshybugger/h;->c:[B

    add-int/lit8 v3, v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget-object v12, v10, Lorg/jshybugger/h;->c:[B

    add-int/lit8 v10, v8, 0x1

    aget-byte v8, v12, v8

    aput-byte v8, v11, v9

    add-int/lit8 v2, v2, -0x1

    .line 325
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v8, v8, Lorg/jshybugger/h;->d:I

    if-ne v10, v8, :cond_a27

    .line 326
    const/4 v8, 0x0

    .line 327
    :goto_77b
    move-object/from16 v0, p0

    iget v9, v0, Lorg/jshybugger/i;->c:I

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p0

    iput v9, v0, Lorg/jshybugger/i;->c:I

    .line 304
    :cond_785
    move-object/from16 v0, p0

    iget v9, v0, Lorg/jshybugger/i;->c:I

    if-eqz v9, :cond_84d

    .line 306
    if-nez v2, :cond_75b

    .line 307
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v9, v9, Lorg/jshybugger/h;->d:I

    if-ne v3, v9, :cond_7ae

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v9, v9, Lorg/jshybugger/h;->e:I

    if-eqz v9, :cond_7ae

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v2, v2, Lorg/jshybugger/h;->e:I

    if-lez v2, :cond_836

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v2, v2, Lorg/jshybugger/h;->e:I

    add-int/lit8 v2, v2, -0x1

    .line 308
    :cond_7ae
    :goto_7ae
    if-nez v2, :cond_75b

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v3, v2, Lorg/jshybugger/h;->f:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/jshybugger/h;->b(I)I

    move-result p1

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v3, v2, Lorg/jshybugger/h;->f:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v2, v2, Lorg/jshybugger/h;->e:I

    if-ge v3, v2, :cond_83e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v2, v2, Lorg/jshybugger/h;->e:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .line 312
    :goto_7d7
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v9, v9, Lorg/jshybugger/h;->d:I

    if-ne v3, v9, :cond_7f8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v9, v9, Lorg/jshybugger/h;->e:I

    if-eqz v9, :cond_7f8

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v2, v2, Lorg/jshybugger/h;->e:I

    if-lez v2, :cond_846

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v2, v2, Lorg/jshybugger/h;->e:I

    add-int/lit8 v2, v2, -0x1

    .line 314
    :cond_7f8
    :goto_7f8
    if-nez v2, :cond_75b

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v7, v2, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v6, v2, Lorg/jshybugger/h;->a:I

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iput v4, v2, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget-wide v6, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget v4, v4, Lorg/jshybugger/r;->b:I

    sub-int v4, v5, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iput v5, v2, Lorg/jshybugger/r;->b:I

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v3, v2, Lorg/jshybugger/h;->f:I

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/jshybugger/h;->b(I)I

    move-result v2

    goto/16 :goto_6f

    .line 307
    :cond_836
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v2, v2, Lorg/jshybugger/h;->d:I

    goto/16 :goto_7ae

    .line 310
    :cond_83e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v2, v2, Lorg/jshybugger/h;->d:I

    sub-int/2addr v2, v3

    goto :goto_7d7

    .line 312
    :cond_846
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v2, v2, Lorg/jshybugger/h;->d:I

    goto :goto_7f8

    .line 329
    :cond_84d
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jshybugger/i;->b:I

    goto/16 :goto_2f

    .line 332
    :pswitch_854
    if-nez v2, :cond_914

    .line 333
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v8, v8, Lorg/jshybugger/h;->d:I

    if-ne v3, v8, :cond_877

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v8, v8, Lorg/jshybugger/h;->e:I

    if-eqz v8, :cond_877

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v2, v2, Lorg/jshybugger/h;->e:I

    if-lez v2, :cond_8fd

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v2, v2, Lorg/jshybugger/h;->e:I

    add-int/lit8 v2, v2, -0x1

    .line 334
    :cond_877
    :goto_877
    if-nez v2, :cond_914

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v3, v2, Lorg/jshybugger/h;->f:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/jshybugger/h;->b(I)I

    move-result v8

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v3, v2, Lorg/jshybugger/h;->f:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v2, v2, Lorg/jshybugger/h;->e:I

    if-ge v3, v2, :cond_905

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v2, v2, Lorg/jshybugger/h;->e:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .line 338
    :goto_8a0
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v9, v9, Lorg/jshybugger/h;->d:I

    if-ne v3, v9, :cond_8c1

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v9, v9, Lorg/jshybugger/h;->e:I

    if-eqz v9, :cond_8c1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v2, v2, Lorg/jshybugger/h;->e:I

    if-lez v2, :cond_90d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v2, v2, Lorg/jshybugger/h;->e:I

    add-int/lit8 v2, v2, -0x1

    .line 339
    :cond_8c1
    :goto_8c1
    if-nez v2, :cond_914

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v7, v2, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v6, v2, Lorg/jshybugger/h;->a:I

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iput v4, v2, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget-wide v6, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget v4, v4, Lorg/jshybugger/r;->b:I

    sub-int v4, v5, v4

    int-to-long v10, v4

    add-long/2addr v6, v10

    iput-wide v6, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iput v5, v2, Lorg/jshybugger/r;->b:I

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v3, v2, Lorg/jshybugger/h;->f:I

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    invoke-virtual {v2, v8}, Lorg/jshybugger/h;->b(I)I

    move-result v2

    goto/16 :goto_6f

    .line 333
    :cond_8fd
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v2, v2, Lorg/jshybugger/h;->d:I

    goto/16 :goto_877

    .line 336
    :cond_905
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v2, v2, Lorg/jshybugger/h;->d:I

    sub-int/2addr v2, v3

    goto :goto_8a0

    .line 338
    :cond_90d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v2, v2, Lorg/jshybugger/h;->d:I

    goto :goto_8c1

    :cond_914
    move v8, v3

    .line 347
    const/16 p1, 0x0

    .line 349
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget-object v9, v3, Lorg/jshybugger/h;->c:[B

    add-int/lit8 v3, v8, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lorg/jshybugger/i;->g:I

    int-to-byte v10, v10

    aput-byte v10, v9, v8

    add-int/lit8 v2, v2, -0x1

    .line 351
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jshybugger/i;->b:I

    goto/16 :goto_2f

    .line 354
    :pswitch_92f
    const/4 v2, 0x7

    if-le v6, v2, :cond_938

    .line 355
    add-int/lit8 v6, v6, -0x8

    .line 356
    add-int/lit8 v4, v4, 0x1

    .line 357
    add-int/lit8 v5, v5, -0x1

    .line 360
    :cond_938
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v3, v2, Lorg/jshybugger/h;->f:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/jshybugger/h;->b(I)I

    move-result v2

    .line 361
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v3, v3, Lorg/jshybugger/h;->f:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v8, v8, Lorg/jshybugger/h;->e:I

    if-ge v3, v8, :cond_9a4

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v8, v8, Lorg/jshybugger/h;->e:I

    .line 363
    :goto_95c
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v8, v8, Lorg/jshybugger/h;->e:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v9, v9, Lorg/jshybugger/h;->f:I

    if-eq v8, v9, :cond_9ab

    .line 364
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v7, v8, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v6, v7, Lorg/jshybugger/h;->a:I

    .line 365
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iput v4, v6, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget-wide v6, v4, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget v8, v8, Lorg/jshybugger/r;->b:I

    sub-int v8, v5, v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, v4, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iput v5, v4, Lorg/jshybugger/r;->b:I

    .line 366
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v3, v4, Lorg/jshybugger/h;->f:I

    .line 367
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    invoke-virtual {v3, v2}, Lorg/jshybugger/h;->b(I)I

    move-result v2

    goto/16 :goto_6f

    .line 361
    :cond_9a4
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iget v8, v8, Lorg/jshybugger/h;->d:I

    goto :goto_95c

    .line 369
    :cond_9ab
    const/16 v2, 0x8

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jshybugger/i;->b:I

    .line 371
    :pswitch_9b1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v7, v2, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v6, v2, Lorg/jshybugger/h;->a:I

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iput v4, v2, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget-wide v6, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget v4, v4, Lorg/jshybugger/r;->b:I

    sub-int v4, v5, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iput v5, v2, Lorg/jshybugger/r;->b:I

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v3, v2, Lorg/jshybugger/h;->f:I

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/jshybugger/h;->b(I)I

    move-result v2

    goto/16 :goto_6f

    .line 379
    :pswitch_9ec
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v7, v2, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v6, v2, Lorg/jshybugger/h;->a:I

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iput v4, v2, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget-wide v6, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iget v4, v4, Lorg/jshybugger/r;->b:I

    sub-int v4, v5, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->p:Lorg/jshybugger/r;

    iput v5, v2, Lorg/jshybugger/r;->b:I

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    iput v3, v2, Lorg/jshybugger/h;->f:I

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/i;->q:Lorg/jshybugger/h;

    const/4 v3, -0x3

    invoke-virtual {v2, v3}, Lorg/jshybugger/h;->b(I)I

    move-result v2

    goto/16 :goto_6f

    :cond_a27
    move v8, v10

    goto/16 :goto_77b

    :cond_a2a
    move v8, v2

    move v9, v3

    move v10, v4

    move v3, v5

    move v4, v6

    goto/16 :goto_106

    :cond_a31
    move v3, v4

    move v5, v6

    goto/16 :goto_26f

    :cond_a35
    move v4, v2

    move v5, v6

    move v2, v3

    goto/16 :goto_2ba

    :cond_a3a
    move v3, v7

    move v4, v2

    move v2, v13

    goto/16 :goto_266

    .line 131
    nop

    :pswitch_data_a40
    .packed-switch 0x0
        :pswitch_78
        :pswitch_42f
        :pswitch_54f
        :pswitch_5d9
        :pswitch_6d9
        :pswitch_74b
        :pswitch_854
        :pswitch_92f
        :pswitch_9b1
        :pswitch_9ec
    .end packed-switch
.end method

.method final a(II[II[II)V
    .registers 8

    .prologue
    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lorg/jshybugger/i;->b:I

    .line 103
    int-to-byte v0, p1

    iput-byte v0, p0, Lorg/jshybugger/i;->j:B

    .line 104
    int-to-byte v0, p2

    iput-byte v0, p0, Lorg/jshybugger/i;->k:B

    .line 105
    iput-object p3, p0, Lorg/jshybugger/i;->l:[I

    .line 106
    iput p4, p0, Lorg/jshybugger/i;->m:I

    .line 107
    iput-object p5, p0, Lorg/jshybugger/i;->n:[I

    .line 108
    iput p6, p0, Lorg/jshybugger/i;->o:I

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jshybugger/i;->d:[I

    .line 110
    return-void
.end method
