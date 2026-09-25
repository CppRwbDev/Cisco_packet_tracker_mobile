.class final Lorg/jshybugger/h;
.super Ljava/lang/Object;
.source "InfBlocks.java"


# static fields
.field private static final g:[I

.field private static h:[I


# instance fields
.field private final A:Lorg/jshybugger/r;

.field a:I

.field b:I

.field c:[B

.field d:I

.field e:I

.field f:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:[I

.field private n:[I

.field private o:[I

.field private p:[I

.field private q:[I

.field private r:[[I

.field private s:[[I

.field private t:[I

.field private u:[I

.field private final v:Lorg/jshybugger/i;

.field private w:I

.field private x:[I

.field private y:Z

.field private final z:Lorg/jshybugger/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lorg/jshybugger/h;->g:[I

    .line 49
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_3a

    sput-object v0, Lorg/jshybugger/h;->h:[I

    return-void

    .line 41
    nop

    :array_14
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

    .line 49
    :array_3a
    .array-data 4
        0x10
        0x11
        0x12
        0x0
        0x8
        0x7
        0x9
        0x6
        0xa
        0x5
        0xb
        0x4
        0xc
        0x3
        0xd
        0x2
        0xe
        0x1
        0xf
    .end array-data
.end method

.method constructor <init>(Lorg/jshybugger/r;I)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-array v2, v0, [I

    iput-object v2, p0, Lorg/jshybugger/h;->n:[I

    .line 82
    new-array v2, v0, [I

    iput-object v2, p0, Lorg/jshybugger/h;->o:[I

    .line 84
    new-array v2, v0, [I

    iput-object v2, p0, Lorg/jshybugger/h;->p:[I

    .line 85
    new-array v2, v0, [I

    iput-object v2, p0, Lorg/jshybugger/h;->q:[I

    .line 87
    new-array v2, v0, [[I

    iput-object v2, p0, Lorg/jshybugger/h;->r:[[I

    .line 88
    new-array v2, v0, [[I

    iput-object v2, p0, Lorg/jshybugger/h;->s:[[I

    .line 89
    new-array v2, v0, [I

    iput-object v2, p0, Lorg/jshybugger/h;->t:[I

    .line 90
    new-array v2, v0, [I

    iput-object v2, p0, Lorg/jshybugger/h;->u:[I

    .line 106
    new-instance v2, Lorg/jshybugger/j;

    invoke-direct {v2}, Lorg/jshybugger/j;-><init>()V

    iput-object v2, p0, Lorg/jshybugger/h;->z:Lorg/jshybugger/j;

    .line 111
    iput-object p1, p0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    .line 112
    new-instance v2, Lorg/jshybugger/i;

    iget-object v3, p0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    invoke-direct {v2, v3, p0}, Lorg/jshybugger/i;-><init>(Lorg/jshybugger/r;Lorg/jshybugger/h;)V

    iput-object v2, p0, Lorg/jshybugger/h;->v:Lorg/jshybugger/i;

    .line 113
    const/16 v2, 0x10e0

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/jshybugger/h;->x:[I

    .line 114
    new-array v2, p2, [B

    iput-object v2, p0, Lorg/jshybugger/h;->c:[B

    .line 115
    iput p2, p0, Lorg/jshybugger/h;->d:I

    .line 116
    iget-object v2, p1, Lorg/jshybugger/r;->k:Lorg/jshybugger/k;

    iget v2, v2, Lorg/jshybugger/k;->a:I

    if-nez v2, :cond_4a

    move v0, v1

    :cond_4a
    iput-boolean v0, p0, Lorg/jshybugger/h;->y:Z

    .line 117
    iput v1, p0, Lorg/jshybugger/h;->i:I

    .line 118
    invoke-virtual {p0}, Lorg/jshybugger/h;->a()V

    .line 119
    return-void
.end method


# virtual methods
.method final a(I)I
    .registers 19

    .prologue
    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget v5, v2, Lorg/jshybugger/r;->b:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget v4, v2, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/jshybugger/h;->a:I

    .line 147
    move-object/from16 v0, p0

    iget v3, v0, Lorg/jshybugger/h;->f:I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/jshybugger/h;->e:I

    if-ge v3, v2, :cond_62

    move-object/from16 v0, p0

    iget v2, v0, Lorg/jshybugger/h;->e:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    :goto_25
    move v9, v2

    move v12, v3

    move v2, v4

    move v3, v5

    .line 151
    :goto_29
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jshybugger/h;->i:I

    packed-switch v4, :pswitch_data_910

    .line 523
    move-object/from16 v0, p0

    iput v7, v0, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iput v6, v0, Lorg/jshybugger/h;->a:I

    .line 526
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v2, v4, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget-wide v4, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget v6, v6, Lorg/jshybugger/r;->b:I

    sub-int v6, v3, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v3, v2, Lorg/jshybugger/r;->b:I

    .line 527
    move-object/from16 v0, p0

    iput v12, v0, Lorg/jshybugger/h;->f:I

    .line 528
    const/4 v2, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/jshybugger/h;->b(I)I

    move-result v2

    :goto_61
    return v2

    .line 147
    :cond_62
    move-object/from16 v0, p0

    iget v2, v0, Lorg/jshybugger/h;->d:I

    sub-int/2addr v2, v3

    goto :goto_25

    .line 154
    :goto_68
    const/4 v2, 0x3

    if-ge v13, v2, :cond_b2

    .line 155
    if-eqz v10, :cond_83

    .line 156
    const/16 p1, 0x0

    .line 165
    add-int/lit8 v10, v10, -0x1

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget-object v2, v2, Lorg/jshybugger/r;->a:[B

    add-int/lit8 v3, v11, 0x1

    aget-byte v2, v2, v11

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v13

    or-int/2addr v14, v2

    .line 167
    add-int/lit8 v13, v13, 0x8

    move v11, v3

    goto :goto_68

    .line 159
    :cond_83
    move-object/from16 v0, p0

    iput v14, v0, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iput v13, v0, Lorg/jshybugger/h;->a:I

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v10, v2, Lorg/jshybugger/r;->c:I

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget-wide v4, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget v3, v3, Lorg/jshybugger/r;->b:I

    sub-int v3, v11, v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v11, v2, Lorg/jshybugger/r;->b:I

    .line 162
    move-object/from16 v0, p0

    iput v12, v0, Lorg/jshybugger/h;->f:I

    .line 163
    invoke-virtual/range {p0 .. p1}, Lorg/jshybugger/h;->b(I)I

    move-result v2

    goto :goto_61

    .line 169
    :cond_b2
    and-int/lit8 v2, v14, 0x7

    .line 170
    and-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lorg/jshybugger/h;->w:I

    .line 172
    ushr-int/lit8 v2, v2, 0x1

    packed-switch v2, :pswitch_data_928

    move v2, v10

    move v3, v11

    move v6, v13

    move v7, v14

    .line 206
    goto/16 :goto_29

    .line 174
    :pswitch_c5
    ushr-int/lit8 v2, v14, 0x3

    add-int/lit8 v3, v13, -0x3

    .line 175
    and-int/lit8 v5, v3, 0x7

    .line 177
    ushr-int v4, v2, v5

    sub-int v2, v3, v5

    .line 178
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lorg/jshybugger/h;->i:I

    move v3, v11

    move v6, v2

    move v7, v4

    move v2, v10

    .line 179
    goto/16 :goto_29

    .line 181
    :pswitch_da
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->p:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/h;->q:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/h;->r:[[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jshybugger/h;->s:[[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    invoke-static {v2, v3, v4, v5}, Lorg/jshybugger/j;->a([I[I[[I[[I)I

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->v:Lorg/jshybugger/i;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/h;->p:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/h;->q:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jshybugger/h;->r:[[I

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jshybugger/h;->s:[[I

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/jshybugger/i;->a(II[II[II)V

    .line 184
    ushr-int/lit8 v4, v14, 0x3

    add-int/lit8 v2, v13, -0x3

    .line 186
    const/4 v3, 0x6

    move-object/from16 v0, p0

    iput v3, v0, Lorg/jshybugger/h;->i:I

    move v3, v11

    move v6, v2

    move v7, v4

    move v2, v10

    .line 187
    goto/16 :goto_29

    .line 190
    :pswitch_125
    ushr-int/lit8 v4, v14, 0x3

    add-int/lit8 v2, v13, -0x3

    .line 192
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/jshybugger/h;->i:I

    move v3, v11

    move v6, v2

    move v7, v4

    move v2, v10

    .line 193
    goto/16 :goto_29

    .line 196
    :pswitch_134
    ushr-int/lit8 v2, v14, 0x3

    add-int/lit8 v3, v13, -0x3

    .line 197
    const/16 v4, 0x9

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jshybugger/h;->i:I

    .line 198
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    const-string v5, "invalid block type"

    iput-object v5, v4, Lorg/jshybugger/r;->i:Ljava/lang/String;

    .line 199
    move-object/from16 v0, p0

    iput v2, v0, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iput v3, v0, Lorg/jshybugger/h;->a:I

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v10, v2, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget-wide v4, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget v3, v3, Lorg/jshybugger/r;->b:I

    sub-int v3, v11, v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v11, v2, Lorg/jshybugger/r;->b:I

    .line 203
    move-object/from16 v0, p0

    iput v12, v0, Lorg/jshybugger/h;->f:I

    .line 204
    const/4 v2, -0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/jshybugger/h;->b(I)I

    move-result v2

    goto/16 :goto_61

    .line 209
    :goto_179
    :pswitch_179
    const/16 v4, 0x20

    if-ge v6, v4, :cond_1c5

    .line 210
    if-eqz v2, :cond_195

    .line 211
    const/16 p1, 0x0

    .line 220
    add-int/lit8 v2, v2, -0x1

    .line 221
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget-object v5, v4, Lorg/jshybugger/r;->a:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v5, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v6

    or-int/2addr v7, v3

    .line 222
    add-int/lit8 v6, v6, 0x8

    move v3, v4

    goto :goto_179

    .line 214
    :cond_195
    move-object/from16 v0, p0

    iput v7, v0, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iput v6, v0, Lorg/jshybugger/h;->a:I

    .line 215
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v2, v4, Lorg/jshybugger/r;->c:I

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget-wide v4, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget v6, v6, Lorg/jshybugger/r;->b:I

    sub-int v6, v3, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v3, v2, Lorg/jshybugger/r;->b:I

    .line 217
    move-object/from16 v0, p0

    iput v12, v0, Lorg/jshybugger/h;->f:I

    .line 218
    invoke-virtual/range {p0 .. p1}, Lorg/jshybugger/h;->b(I)I

    move-result v2

    goto/16 :goto_61

    .line 225
    :cond_1c5
    xor-int/lit8 v4, v7, -0x1

    ushr-int/lit8 v4, v4, 0x10

    const v5, 0xffff

    and-int/2addr v4, v5

    const v5, 0xffff

    and-int/2addr v5, v7

    if-eq v4, v5, :cond_214

    .line 226
    const/16 v4, 0x9

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jshybugger/h;->i:I

    .line 227
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    const-string v5, "invalid stored block lengths"

    iput-object v5, v4, Lorg/jshybugger/r;->i:Ljava/lang/String;

    .line 228
    move-object/from16 v0, p0

    iput v7, v0, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iput v6, v0, Lorg/jshybugger/h;->a:I

    .line 231
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v2, v4, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget-wide v4, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget v6, v6, Lorg/jshybugger/r;->b:I

    sub-int v6, v3, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v3, v2, Lorg/jshybugger/r;->b:I

    .line 232
    move-object/from16 v0, p0

    iput v12, v0, Lorg/jshybugger/h;->f:I

    .line 233
    const/4 v2, -0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/jshybugger/h;->b(I)I

    move-result v2

    goto/16 :goto_61

    .line 235
    :cond_214
    const v4, 0xffff

    and-int/2addr v4, v7

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jshybugger/h;->j:I

    .line 236
    const/4 v4, 0x0

    .line 237
    move-object/from16 v0, p0

    iget v5, v0, Lorg/jshybugger/h;->j:I

    if-eqz v5, :cond_22c

    const/4 v5, 0x2

    :goto_224
    move-object/from16 v0, p0

    iput v5, v0, Lorg/jshybugger/h;->i:I

    move v6, v4

    move v7, v4

    .line 238
    goto/16 :goto_29

    .line 237
    :cond_22c
    move-object/from16 v0, p0

    iget v5, v0, Lorg/jshybugger/h;->w:I

    if-eqz v5, :cond_234

    const/4 v5, 0x7

    goto :goto_224

    :cond_234
    const/4 v5, 0x0

    goto :goto_224

    .line 240
    :pswitch_236
    if-nez v2, :cond_268

    .line 241
    move-object/from16 v0, p0

    iput v7, v0, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iput v6, v0, Lorg/jshybugger/h;->a:I

    .line 242
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v2, v4, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget-wide v4, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget v6, v6, Lorg/jshybugger/r;->b:I

    sub-int v6, v3, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v3, v2, Lorg/jshybugger/r;->b:I

    .line 243
    move-object/from16 v0, p0

    iput v12, v0, Lorg/jshybugger/h;->f:I

    .line 244
    invoke-virtual/range {p0 .. p1}, Lorg/jshybugger/h;->b(I)I

    move-result v2

    goto/16 :goto_61

    .line 247
    :cond_268
    if-nez v9, :cond_2fd

    .line 248
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jshybugger/h;->d:I

    if-ne v12, v4, :cond_284

    move-object/from16 v0, p0

    iget v4, v0, Lorg/jshybugger/h;->e:I

    if-eqz v4, :cond_284

    .line 249
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/jshybugger/h;->e:I

    if-lez v4, :cond_2ed

    move-object/from16 v0, p0

    iget v4, v0, Lorg/jshybugger/h;->e:I

    add-int/lit8 v4, v4, -0x1

    :goto_283
    move v9, v4

    .line 251
    :cond_284
    if-nez v9, :cond_2fd

    .line 252
    move-object/from16 v0, p0

    iput v12, v0, Lorg/jshybugger/h;->f:I

    .line 253
    invoke-virtual/range {p0 .. p1}, Lorg/jshybugger/h;->b(I)I

    move-result v5

    .line 254
    move-object/from16 v0, p0

    iget v12, v0, Lorg/jshybugger/h;->f:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/jshybugger/h;->e:I

    if-ge v12, v4, :cond_2f2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/jshybugger/h;->e:I

    sub-int/2addr v4, v12

    add-int/lit8 v4, v4, -0x1

    .line 255
    :goto_29f
    move-object/from16 v0, p0

    iget v8, v0, Lorg/jshybugger/h;->d:I

    if-ne v12, v8, :cond_8f0

    move-object/from16 v0, p0

    iget v8, v0, Lorg/jshybugger/h;->e:I

    if-eqz v8, :cond_8f0

    .line 256
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/jshybugger/h;->e:I

    if-lez v4, :cond_2f8

    move-object/from16 v0, p0

    iget v4, v0, Lorg/jshybugger/h;->e:I

    add-int/lit8 v4, v4, -0x1

    :goto_2b8
    move v9, v4

    .line 258
    :goto_2b9
    if-nez v9, :cond_2fd

    .line 259
    move-object/from16 v0, p0

    iput v7, v0, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iput v6, v0, Lorg/jshybugger/h;->a:I

    .line 260
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v2, v4, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget-wide v6, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget v4, v4, Lorg/jshybugger/r;->b:I

    sub-int v4, v3, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v3, v2, Lorg/jshybugger/r;->b:I

    .line 261
    move-object/from16 v0, p0

    iput v12, v0, Lorg/jshybugger/h;->f:I

    .line 262
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jshybugger/h;->b(I)I

    move-result v2

    goto/16 :goto_61

    .line 249
    :cond_2ed
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jshybugger/h;->d:I

    goto :goto_283

    .line 254
    :cond_2f2
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jshybugger/h;->d:I

    sub-int/2addr v4, v12

    goto :goto_29f

    .line 256
    :cond_2f8
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jshybugger/h;->d:I

    goto :goto_2b8

    .line 266
    :cond_2fd
    const/16 p1, 0x0

    .line 268
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jshybugger/h;->j:I

    .line 269
    if-le v4, v2, :cond_306

    move v4, v2

    .line 270
    :cond_306
    if-le v4, v9, :cond_8ed

    move v8, v9

    .line 271
    :goto_309
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget-object v4, v4, Lorg/jshybugger/r;->a:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jshybugger/h;->c:[B

    invoke-static {v4, v3, v5, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    add-int v5, v3, v8

    sub-int v4, v2, v8

    .line 273
    add-int v3, v12, v8

    sub-int v2, v9, v8

    .line 274
    move-object/from16 v0, p0

    iget v9, v0, Lorg/jshybugger/h;->j:I

    sub-int v8, v9, v8

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jshybugger/h;->j:I

    if-nez v8, :cond_8e7

    .line 275
    move-object/from16 v0, p0

    iget v8, v0, Lorg/jshybugger/h;->w:I

    if-eqz v8, :cond_33b

    const/4 v8, 0x7

    :goto_331
    move-object/from16 v0, p0

    iput v8, v0, Lorg/jshybugger/h;->i:I

    move v9, v2

    move v12, v3

    move v2, v4

    move v3, v5

    .line 277
    goto/16 :goto_29

    .line 275
    :cond_33b
    const/4 v8, 0x0

    goto :goto_331

    .line 280
    :goto_33d
    :pswitch_33d
    const/16 v4, 0xe

    if-ge v6, v4, :cond_389

    .line 281
    if-eqz v2, :cond_359

    .line 282
    const/16 p1, 0x0

    .line 291
    add-int/lit8 v2, v2, -0x1

    .line 292
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget-object v5, v4, Lorg/jshybugger/r;->a:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v5, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v6

    or-int/2addr v7, v3

    .line 293
    add-int/lit8 v6, v6, 0x8

    move v3, v4

    goto :goto_33d

    .line 285
    :cond_359
    move-object/from16 v0, p0

    iput v7, v0, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iput v6, v0, Lorg/jshybugger/h;->a:I

    .line 286
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v2, v4, Lorg/jshybugger/r;->c:I

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget-wide v4, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget v6, v6, Lorg/jshybugger/r;->b:I

    sub-int v6, v3, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v3, v2, Lorg/jshybugger/r;->b:I

    .line 288
    move-object/from16 v0, p0

    iput v12, v0, Lorg/jshybugger/h;->f:I

    .line 289
    invoke-virtual/range {p0 .. p1}, Lorg/jshybugger/h;->b(I)I

    move-result v2

    goto/16 :goto_61

    .line 296
    :cond_389
    and-int/lit16 v4, v7, 0x3fff

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jshybugger/h;->k:I

    .line 297
    and-int/lit8 v5, v4, 0x1f

    const/16 v8, 0x1d

    if-gt v5, v8, :cond_39d

    shr-int/lit8 v5, v4, 0x5

    and-int/lit8 v5, v5, 0x1f

    const/16 v8, 0x1d

    if-le v5, v8, :cond_3de

    .line 299
    :cond_39d
    const/16 v4, 0x9

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jshybugger/h;->i:I

    .line 300
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    const-string v5, "too many length or distance symbols"

    iput-object v5, v4, Lorg/jshybugger/r;->i:Ljava/lang/String;

    .line 301
    move-object/from16 v0, p0

    iput v7, v0, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iput v6, v0, Lorg/jshybugger/h;->a:I

    .line 304
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v2, v4, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget-wide v4, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget v6, v6, Lorg/jshybugger/r;->b:I

    sub-int v6, v3, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v3, v2, Lorg/jshybugger/r;->b:I

    .line 305
    move-object/from16 v0, p0

    iput v12, v0, Lorg/jshybugger/h;->f:I

    .line 306
    const/4 v2, -0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/jshybugger/h;->b(I)I

    move-result v2

    goto/16 :goto_61

    .line 308
    :cond_3de
    and-int/lit8 v5, v4, 0x1f

    add-int/lit16 v5, v5, 0x102

    shr-int/lit8 v4, v4, 0x5

    and-int/lit8 v4, v4, 0x1f

    add-int/2addr v5, v4

    .line 309
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/h;->m:[I

    if-eqz v4, :cond_3f4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/h;->m:[I

    array-length v4, v4

    if-ge v4, v5, :cond_437

    .line 310
    :cond_3f4
    new-array v4, v5, [I

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/jshybugger/h;->m:[I

    .line 316
    :cond_3fa
    ushr-int/lit8 v7, v7, 0xe

    add-int/lit8 v6, v6, -0xe

    .line 318
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jshybugger/h;->l:I

    .line 319
    const/4 v4, 0x4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jshybugger/h;->i:I

    :pswitch_408
    move v8, v2

    move v9, v3

    move v10, v6

    move v11, v7

    .line 321
    :goto_40c
    move-object/from16 v0, p0

    iget v2, v0, Lorg/jshybugger/h;->l:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/jshybugger/h;->k:I

    ushr-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x4

    if-ge v2, v3, :cond_494

    move v2, v8

    move v3, v9

    .line 322
    :goto_41c
    const/4 v4, 0x3

    if-ge v10, v4, :cond_474

    .line 323
    if-eqz v2, :cond_444

    .line 324
    const/16 p1, 0x0

    .line 333
    add-int/lit8 v2, v2, -0x1

    .line 334
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget-object v4, v4, Lorg/jshybugger/r;->a:[B

    add-int/lit8 v9, v3, 0x1

    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v10

    or-int/2addr v11, v3

    .line 335
    add-int/lit8 v10, v10, 0x8

    move v3, v9

    goto :goto_41c

    .line 313
    :cond_437
    const/4 v4, 0x0

    :goto_438
    if-ge v4, v5, :cond_3fa

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jshybugger/h;->m:[I

    const/4 v9, 0x0

    aput v9, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_438

    .line 327
    :cond_444
    move-object/from16 v0, p0

    iput v11, v0, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iput v10, v0, Lorg/jshybugger/h;->a:I

    .line 328
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v2, v4, Lorg/jshybugger/r;->c:I

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget-wide v4, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget v6, v6, Lorg/jshybugger/r;->b:I

    sub-int v6, v3, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v3, v2, Lorg/jshybugger/r;->b:I

    .line 330
    move-object/from16 v0, p0

    iput v12, v0, Lorg/jshybugger/h;->f:I

    .line 331
    invoke-virtual/range {p0 .. p1}, Lorg/jshybugger/h;->b(I)I

    move-result v2

    goto/16 :goto_61

    .line 338
    :cond_474
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/h;->m:[I

    sget-object v5, Lorg/jshybugger/h;->h:[I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/jshybugger/h;->l:I

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lorg/jshybugger/h;->l:I

    aget v5, v5, v6

    and-int/lit8 v6, v11, 0x7

    aput v6, v4, v5

    .line 340
    ushr-int/lit8 v7, v11, 0x3

    add-int/lit8 v6, v10, -0x3

    move v8, v2

    move v9, v3

    move v10, v6

    move v11, v7

    goto/16 :goto_40c

    .line 343
    :cond_494
    :goto_494
    move-object/from16 v0, p0

    iget v2, v0, Lorg/jshybugger/h;->l:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_4b2

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->m:[I

    sget-object v3, Lorg/jshybugger/h;->h:[I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/jshybugger/h;->l:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lorg/jshybugger/h;->l:I

    aget v3, v3, v4

    const/4 v4, 0x0

    aput v4, v2, v3

    goto :goto_494

    .line 347
    :cond_4b2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->n:[I

    const/4 v3, 0x0

    const/4 v4, 0x7

    aput v4, v2, v3

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->z:Lorg/jshybugger/j;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/h;->m:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/h;->n:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jshybugger/h;->o:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jshybugger/h;->x:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    invoke-virtual/range {v2 .. v7}, Lorg/jshybugger/j;->a([I[I[I[ILorg/jshybugger/r;)I

    move-result v2

    .line 349
    if-eqz v2, :cond_518

    .line 351
    const/4 v3, -0x3

    if-ne v2, v3, :cond_4e6

    .line 352
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/jshybugger/h;->m:[I

    .line 353
    const/16 v3, 0x9

    move-object/from16 v0, p0

    iput v3, v0, Lorg/jshybugger/h;->i:I

    .line 356
    :cond_4e6
    move-object/from16 v0, p0

    iput v11, v0, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iput v10, v0, Lorg/jshybugger/h;->a:I

    .line 357
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v8, v3, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget-wide v4, v3, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget v6, v6, Lorg/jshybugger/r;->b:I

    sub-int v6, v9, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v9, v3, Lorg/jshybugger/r;->b:I

    .line 358
    move-object/from16 v0, p0

    iput v12, v0, Lorg/jshybugger/h;->f:I

    .line 359
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/jshybugger/h;->b(I)I

    move-result v2

    goto/16 :goto_61

    .line 362
    :cond_518
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jshybugger/h;->l:I

    .line 363
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jshybugger/h;->i:I

    move v13, v8

    move v14, v9

    move v15, v10

    move/from16 v16, v11

    .line 366
    :goto_527
    move-object/from16 v0, p0

    iget v2, v0, Lorg/jshybugger/h;->k:I

    .line 367
    move-object/from16 v0, p0

    iget v3, v0, Lorg/jshybugger/h;->l:I

    and-int/lit8 v4, v2, 0x1f

    add-int/lit16 v4, v4, 0x102

    shr-int/lit8 v2, v2, 0x5

    and-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    if-ge v3, v2, :cond_6d3

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->n:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move v8, v13

    move v9, v14

    move v3, v15

    move/from16 v4, v16

    .line 376
    :goto_546
    if-ge v3, v2, :cond_590

    .line 377
    if-eqz v8, :cond_560

    .line 378
    const/16 p1, 0x0

    .line 387
    add-int/lit8 v8, v8, -0x1

    .line 388
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget-object v5, v5, Lorg/jshybugger/r;->a:[B

    add-int/lit8 v14, v9, 0x1

    aget-byte v5, v5, v9

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v3

    or-int/2addr v4, v5

    .line 389
    add-int/lit8 v3, v3, 0x8

    move v9, v14

    goto :goto_546

    .line 381
    :cond_560
    move-object/from16 v0, p0

    iput v4, v0, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iput v3, v0, Lorg/jshybugger/h;->a:I

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v8, v2, Lorg/jshybugger/r;->c:I

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget-wide v4, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget v3, v3, Lorg/jshybugger/r;->b:I

    sub-int v3, v9, v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v9, v2, Lorg/jshybugger/r;->b:I

    .line 384
    move-object/from16 v0, p0

    iput v12, v0, Lorg/jshybugger/h;->f:I

    .line 385
    invoke-virtual/range {p0 .. p1}, Lorg/jshybugger/h;->b(I)I

    move-result v2

    goto/16 :goto_61

    .line 392
    :cond_590
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jshybugger/h;->o:[I

    .line 396
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jshybugger/h;->x:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jshybugger/h;->o:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-object v7, Lorg/jshybugger/h;->g:[I

    aget v2, v7, v2

    and-int/2addr v2, v4

    add-int/2addr v2, v6

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x1

    aget v7, v5, v2

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->x:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jshybugger/h;->o:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    sget-object v6, Lorg/jshybugger/h;->g:[I

    aget v6, v6, v7

    and-int/2addr v6, v4

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x2

    aget v13, v2, v5

    .line 399
    const/16 v2, 0x10

    if-ge v13, v2, :cond_5e1

    .line 400
    ushr-int v11, v4, v7

    sub-int v10, v3, v7

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->m:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/jshybugger/h;->l:I

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jshybugger/h;->l:I

    aput v13, v2, v3

    move v13, v8

    move v14, v9

    move v15, v10

    move/from16 v16, v11

    goto/16 :goto_527

    .line 404
    :cond_5e1
    const/16 v2, 0x12

    if-ne v13, v2, :cond_60b

    const/4 v2, 0x7

    move v6, v2

    .line 405
    :goto_5e7
    const/16 v2, 0x12

    if-ne v13, v2, :cond_60f

    const/16 v2, 0xb

    :goto_5ed
    move v5, v4

    move v4, v3

    .line 407
    :goto_5ef
    add-int v3, v7, v6

    if-ge v4, v3, :cond_641

    .line 408
    if-eqz v8, :cond_611

    .line 409
    const/16 p1, 0x0

    .line 418
    add-int/lit8 v8, v8, -0x1

    .line 419
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget-object v10, v3, Lorg/jshybugger/r;->a:[B

    add-int/lit8 v3, v9, 0x1

    aget-byte v9, v10, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v4

    or-int/2addr v5, v9

    .line 420
    add-int/lit8 v4, v4, 0x8

    move v9, v3

    goto :goto_5ef

    .line 404
    :cond_60b
    add-int/lit8 v2, v13, -0xe

    move v6, v2

    goto :goto_5e7

    .line 405
    :cond_60f
    const/4 v2, 0x3

    goto :goto_5ed

    .line 412
    :cond_611
    move-object/from16 v0, p0

    iput v5, v0, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jshybugger/h;->a:I

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v8, v2, Lorg/jshybugger/r;->c:I

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget-wide v4, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget v3, v3, Lorg/jshybugger/r;->b:I

    sub-int v3, v9, v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v9, v2, Lorg/jshybugger/r;->b:I

    .line 415
    move-object/from16 v0, p0

    iput v12, v0, Lorg/jshybugger/h;->f:I

    .line 416
    invoke-virtual/range {p0 .. p1}, Lorg/jshybugger/h;->b(I)I

    move-result v2

    goto/16 :goto_61

    .line 423
    :cond_641
    ushr-int/2addr v5, v7

    sub-int/2addr v4, v7

    .line 425
    sget-object v3, Lorg/jshybugger/h;->g:[I

    aget v3, v3, v6

    and-int/2addr v3, v5

    add-int/2addr v3, v2

    .line 427
    ushr-int v11, v5, v6

    sub-int v10, v4, v6

    .line 429
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jshybugger/h;->l:I

    .line 430
    move-object/from16 v0, p0

    iget v2, v0, Lorg/jshybugger/h;->k:I

    .line 431
    add-int v5, v4, v3

    and-int/lit8 v6, v2, 0x1f

    add-int/lit16 v6, v6, 0x102

    shr-int/lit8 v2, v2, 0x5

    and-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v6

    if-gt v5, v2, :cond_668

    const/16 v2, 0x10

    if-ne v13, v2, :cond_6ae

    if-gtz v4, :cond_6ae

    .line 433
    :cond_668
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/jshybugger/h;->m:[I

    .line 434
    const/16 v2, 0x9

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jshybugger/h;->i:I

    .line 435
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    const-string v3, "invalid bit length repeat"

    iput-object v3, v2, Lorg/jshybugger/r;->i:Ljava/lang/String;

    .line 436
    move-object/from16 v0, p0

    iput v11, v0, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iput v10, v0, Lorg/jshybugger/h;->a:I

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v8, v2, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget-wide v4, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget v3, v3, Lorg/jshybugger/r;->b:I

    sub-int v3, v9, v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v9, v2, Lorg/jshybugger/r;->b:I

    .line 440
    move-object/from16 v0, p0

    iput v12, v0, Lorg/jshybugger/h;->f:I

    .line 441
    const/4 v2, -0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/jshybugger/h;->b(I)I

    move-result v2

    goto/16 :goto_61

    .line 444
    :cond_6ae
    const/16 v2, 0x10

    if-ne v13, v2, :cond_6d1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->m:[I

    add-int/lit8 v5, v4, -0x1

    aget v2, v2, v5

    .line 446
    :goto_6ba
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jshybugger/h;->m:[I

    add-int/lit8 v5, v4, 0x1

    aput v2, v6, v4

    .line 448
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_8e4

    .line 449
    move-object/from16 v0, p0

    iput v5, v0, Lorg/jshybugger/h;->l:I

    move v13, v8

    move v14, v9

    move v15, v10

    move/from16 v16, v11

    .line 451
    goto/16 :goto_527

    .line 444
    :cond_6d1
    const/4 v2, 0x0

    goto :goto_6ba

    .line 453
    :cond_6d3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->o:[I

    const/4 v3, 0x0

    const/4 v4, -0x1

    aput v4, v2, v3

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->p:[I

    const/4 v3, 0x0

    const/16 v4, 0x9

    aput v4, v2, v3

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->q:[I

    const/4 v3, 0x0

    const/4 v4, 0x6

    aput v4, v2, v3

    .line 457
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jshybugger/h;->k:I

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->z:Lorg/jshybugger/j;

    and-int/lit8 v3, v4, 0x1f

    add-int/lit16 v3, v3, 0x101

    shr-int/lit8 v4, v4, 0x5

    and-int/lit8 v4, v4, 0x1f

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jshybugger/h;->m:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jshybugger/h;->p:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jshybugger/h;->q:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jshybugger/h;->t:[I

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/jshybugger/h;->u:[I

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/jshybugger/h;->x:[I

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    invoke-virtual/range {v2 .. v11}, Lorg/jshybugger/j;->a(II[I[I[I[I[I[ILorg/jshybugger/r;)I

    move-result v2

    .line 462
    if-eqz v2, :cond_762

    .line 463
    const/4 v3, -0x3

    if-ne v2, v3, :cond_72e

    .line 464
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/jshybugger/h;->m:[I

    .line 465
    const/16 v3, 0x9

    move-object/from16 v0, p0

    iput v3, v0, Lorg/jshybugger/h;->i:I

    .line 469
    :cond_72e
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iput v15, v0, Lorg/jshybugger/h;->a:I

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v13, v3, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget-wide v4, v3, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget v6, v6, Lorg/jshybugger/r;->b:I

    sub-int v6, v14, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v14, v3, Lorg/jshybugger/r;->b:I

    .line 471
    move-object/from16 v0, p0

    iput v12, v0, Lorg/jshybugger/h;->f:I

    .line 472
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/jshybugger/h;->b(I)I

    move-result v2

    goto/16 :goto_61

    .line 474
    :cond_762
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->v:Lorg/jshybugger/i;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/h;->p:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/h;->q:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jshybugger/h;->x:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jshybugger/h;->t:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jshybugger/h;->x:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jshybugger/h;->u:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-virtual/range {v2 .. v8}, Lorg/jshybugger/i;->a(II[II[II)V

    .line 476
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jshybugger/h;->i:I

    .line 478
    :goto_792
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iput v15, v0, Lorg/jshybugger/h;->a:I

    .line 479
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v13, v2, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget-wide v4, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget v3, v3, Lorg/jshybugger/r;->b:I

    sub-int v3, v14, v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v14, v2, Lorg/jshybugger/r;->b:I

    .line 480
    move-object/from16 v0, p0

    iput v12, v0, Lorg/jshybugger/h;->f:I

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->v:Lorg/jshybugger/i;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/jshybugger/i;->a(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7d3

    .line 483
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/jshybugger/h;->b(I)I

    move-result v2

    goto/16 :goto_61

    .line 485
    :cond_7d3
    const/16 p1, 0x0

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->v:Lorg/jshybugger/i;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    invoke-static {}, Lorg/jshybugger/i;->a()V

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget v5, v2, Lorg/jshybugger/r;->b:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget v4, v2, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/jshybugger/h;->a:I

    .line 489
    move-object/from16 v0, p0

    iget v3, v0, Lorg/jshybugger/h;->f:I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/jshybugger/h;->e:I

    if-ge v3, v2, :cond_816

    move-object/from16 v0, p0

    iget v2, v0, Lorg/jshybugger/h;->e:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .line 491
    :goto_805
    move-object/from16 v0, p0

    iget v8, v0, Lorg/jshybugger/h;->w:I

    if-nez v8, :cond_81c

    .line 492
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jshybugger/h;->i:I

    move v9, v2

    move v12, v3

    move v2, v4

    move v3, v5

    .line 493
    goto/16 :goto_29

    .line 489
    :cond_816
    move-object/from16 v0, p0

    iget v2, v0, Lorg/jshybugger/h;->d:I

    sub-int/2addr v2, v3

    goto :goto_805

    .line 495
    :cond_81c
    const/4 v2, 0x7

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jshybugger/h;->i:I

    .line 497
    :goto_821
    move-object/from16 v0, p0

    iput v3, v0, Lorg/jshybugger/h;->f:I

    .line 498
    invoke-virtual/range {p0 .. p1}, Lorg/jshybugger/h;->b(I)I

    move-result v2

    .line 499
    move-object/from16 v0, p0

    iget v12, v0, Lorg/jshybugger/h;->f:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/jshybugger/h;->e:I

    if-ge v12, v3, :cond_873

    move-object/from16 v0, p0

    iget v3, v0, Lorg/jshybugger/h;->e:I

    .line 500
    :goto_837
    move-object/from16 v0, p0

    iget v3, v0, Lorg/jshybugger/h;->e:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/jshybugger/h;->f:I

    if-eq v3, v8, :cond_878

    .line 501
    move-object/from16 v0, p0

    iput v7, v0, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iput v6, v0, Lorg/jshybugger/h;->a:I

    .line 502
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v4, v3, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget-wide v6, v3, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget v4, v4, Lorg/jshybugger/r;->b:I

    sub-int v4, v5, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v3, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v5, v3, Lorg/jshybugger/r;->b:I

    .line 503
    move-object/from16 v0, p0

    iput v12, v0, Lorg/jshybugger/h;->f:I

    .line 504
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/jshybugger/h;->b(I)I

    move-result v2

    goto/16 :goto_61

    .line 499
    :cond_873
    move-object/from16 v0, p0

    iget v3, v0, Lorg/jshybugger/h;->d:I

    goto :goto_837

    .line 506
    :cond_878
    const/16 v2, 0x8

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jshybugger/h;->i:I

    .line 508
    :goto_87e
    move-object/from16 v0, p0

    iput v7, v0, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iput v6, v0, Lorg/jshybugger/h;->a:I

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v4, v2, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget-wide v6, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget v3, v3, Lorg/jshybugger/r;->b:I

    sub-int v3, v5, v3

    int-to-long v8, v3

    add-long/2addr v6, v8

    iput-wide v6, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v5, v2, Lorg/jshybugger/r;->b:I

    .line 512
    move-object/from16 v0, p0

    iput v12, v0, Lorg/jshybugger/h;->f:I

    .line 513
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/jshybugger/h;->b(I)I

    move-result v2

    goto/16 :goto_61

    .line 515
    :pswitch_8b1
    move-object/from16 v0, p0

    iput v7, v0, Lorg/jshybugger/h;->b:I

    move-object/from16 v0, p0

    iput v6, v0, Lorg/jshybugger/h;->a:I

    .line 518
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v2, v4, Lorg/jshybugger/r;->c:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget-wide v4, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget v6, v6, Lorg/jshybugger/r;->b:I

    sub-int v6, v3, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v2, Lorg/jshybugger/r;->d:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v3, v2, Lorg/jshybugger/r;->b:I

    .line 519
    move-object/from16 v0, p0

    iput v12, v0, Lorg/jshybugger/h;->f:I

    .line 520
    const/4 v2, -0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/jshybugger/h;->b(I)I

    move-result v2

    goto/16 :goto_61

    :cond_8e4
    move v4, v5

    goto/16 :goto_6ba

    :cond_8e7
    move v9, v2

    move v12, v3

    move v2, v4

    move v3, v5

    goto/16 :goto_29

    :cond_8ed
    move v8, v4

    goto/16 :goto_309

    :cond_8f0
    move v9, v4

    goto/16 :goto_2b9

    :pswitch_8f3
    move v13, v2

    move v14, v3

    move v15, v6

    move/from16 v16, v7

    goto/16 :goto_527

    :pswitch_8fa
    move v13, v2

    move v14, v3

    move v15, v6

    move/from16 v16, v7

    goto/16 :goto_792

    :pswitch_901
    move v4, v2

    move v5, v3

    move v3, v12

    goto/16 :goto_821

    :pswitch_906
    move v4, v2

    move v5, v3

    goto/16 :goto_87e

    :pswitch_90a
    move v10, v2

    move v11, v3

    move v13, v6

    move v14, v7

    goto/16 :goto_68

    .line 151
    :pswitch_data_910
    .packed-switch 0x0
        :pswitch_90a
        :pswitch_179
        :pswitch_236
        :pswitch_33d
        :pswitch_408
        :pswitch_8f3
        :pswitch_8fa
        :pswitch_901
        :pswitch_906
        :pswitch_8b1
    .end packed-switch

    .line 172
    :pswitch_data_928
    .packed-switch 0x0
        :pswitch_c5
        :pswitch_da
        :pswitch_125
        :pswitch_134
    .end packed-switch
.end method

.method final a()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 122
    iget v0, p0, Lorg/jshybugger/h;->i:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    iget v0, p0, Lorg/jshybugger/h;->i:I

    .line 124
    :cond_8
    iget v0, p0, Lorg/jshybugger/h;->i:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_14

    .line 125
    iget-object v0, p0, Lorg/jshybugger/h;->v:Lorg/jshybugger/i;

    iget-object v0, p0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    invoke-static {}, Lorg/jshybugger/i;->a()V

    .line 127
    :cond_14
    iput v2, p0, Lorg/jshybugger/h;->i:I

    .line 128
    iput v2, p0, Lorg/jshybugger/h;->a:I

    .line 129
    iput v2, p0, Lorg/jshybugger/h;->b:I

    .line 130
    iput v2, p0, Lorg/jshybugger/h;->f:I

    iput v2, p0, Lorg/jshybugger/h;->e:I

    .line 131
    iget-boolean v0, p0, Lorg/jshybugger/h;->y:Z

    if-eqz v0, :cond_29

    .line 132
    iget-object v0, p0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget-object v0, v0, Lorg/jshybugger/r;->l:Lorg/jshybugger/c;

    invoke-interface {v0}, Lorg/jshybugger/c;->a()V

    .line 134
    :cond_29
    return-void
.end method

.method final b(I)I
    .registers 13

    .prologue
    const/4 v10, -0x5

    const/4 v1, 0x0

    .line 558
    iget-object v0, p0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget v2, v0, Lorg/jshybugger/r;->f:I

    .line 559
    iget v3, p0, Lorg/jshybugger/h;->e:I

    .line 562
    iget v0, p0, Lorg/jshybugger/h;->f:I

    if-gt v3, v0, :cond_96

    iget v0, p0, Lorg/jshybugger/h;->f:I

    :goto_e
    sub-int/2addr v0, v3

    .line 563
    iget-object v4, p0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget v4, v4, Lorg/jshybugger/r;->g:I

    if-le v0, v4, :cond_19

    iget-object v0, p0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget v0, v0, Lorg/jshybugger/r;->g:I

    .line 564
    :cond_19
    if-eqz v0, :cond_1e

    if-ne p1, v10, :cond_1e

    move p1, v1

    .line 567
    :cond_1e
    iget-object v4, p0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget v5, v4, Lorg/jshybugger/r;->g:I

    sub-int/2addr v5, v0

    iput v5, v4, Lorg/jshybugger/r;->g:I

    .line 568
    iget-object v4, p0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget-wide v6, v4, Lorg/jshybugger/r;->h:J

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, v4, Lorg/jshybugger/r;->h:J

    .line 571
    iget-boolean v4, p0, Lorg/jshybugger/h;->y:Z

    if-eqz v4, :cond_3c

    if-lez v0, :cond_3c

    .line 572
    iget-object v4, p0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget-object v4, v4, Lorg/jshybugger/r;->l:Lorg/jshybugger/c;

    iget-object v5, p0, Lorg/jshybugger/h;->c:[B

    invoke-interface {v4, v5, v3, v0}, Lorg/jshybugger/c;->a([BII)V

    .line 576
    :cond_3c
    iget-object v4, p0, Lorg/jshybugger/h;->c:[B

    iget-object v5, p0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget-object v5, v5, Lorg/jshybugger/r;->e:[B

    invoke-static {v4, v3, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 577
    add-int/2addr v2, v0

    .line 578
    add-int/2addr v0, v3

    .line 581
    iget v3, p0, Lorg/jshybugger/h;->d:I

    if-ne v0, v3, :cond_9a

    .line 583
    iget v0, p0, Lorg/jshybugger/h;->f:I

    iget v3, p0, Lorg/jshybugger/h;->d:I

    if-ne v0, v3, :cond_53

    .line 585
    iput v1, p0, Lorg/jshybugger/h;->f:I

    .line 588
    :cond_53
    iget v0, p0, Lorg/jshybugger/h;->f:I

    .line 589
    iget-object v3, p0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget v3, v3, Lorg/jshybugger/r;->g:I

    if-le v0, v3, :cond_5f

    iget-object v0, p0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget v0, v0, Lorg/jshybugger/r;->g:I

    .line 590
    :cond_5f
    if-eqz v0, :cond_64

    if-ne p1, v10, :cond_64

    move p1, v1

    .line 593
    :cond_64
    iget-object v3, p0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget v4, v3, Lorg/jshybugger/r;->g:I

    sub-int/2addr v4, v0

    iput v4, v3, Lorg/jshybugger/r;->g:I

    .line 594
    iget-object v3, p0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget-wide v4, v3, Lorg/jshybugger/r;->h:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, v3, Lorg/jshybugger/r;->h:J

    .line 597
    iget-boolean v3, p0, Lorg/jshybugger/h;->y:Z

    if-eqz v3, :cond_82

    if-lez v0, :cond_82

    .line 598
    iget-object v3, p0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget-object v3, v3, Lorg/jshybugger/r;->l:Lorg/jshybugger/c;

    iget-object v4, p0, Lorg/jshybugger/h;->c:[B

    invoke-interface {v3, v4, v1, v0}, Lorg/jshybugger/c;->a([BII)V

    .line 602
    :cond_82
    iget-object v3, p0, Lorg/jshybugger/h;->c:[B

    iget-object v4, p0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iget-object v4, v4, Lorg/jshybugger/r;->e:[B

    invoke-static {v3, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 603
    add-int v1, v2, v0

    .line 604
    add-int/lit8 v0, v0, 0x0

    .line 608
    :goto_8f
    iget-object v2, p0, Lorg/jshybugger/h;->A:Lorg/jshybugger/r;

    iput v1, v2, Lorg/jshybugger/r;->f:I

    .line 609
    iput v0, p0, Lorg/jshybugger/h;->e:I

    .line 612
    return p1

    .line 562
    :cond_96
    iget v0, p0, Lorg/jshybugger/h;->d:I

    goto/16 :goto_e

    :cond_9a
    move v1, v2

    goto :goto_8f
.end method

.method final b()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 534
    invoke-virtual {p0}, Lorg/jshybugger/h;->a()V

    .line 535
    iput-object v0, p0, Lorg/jshybugger/h;->c:[B

    .line 536
    iput-object v0, p0, Lorg/jshybugger/h;->x:[I

    .line 538
    return-void
.end method
