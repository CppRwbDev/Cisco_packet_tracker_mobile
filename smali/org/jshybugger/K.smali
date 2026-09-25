.class public final Lorg/jshybugger/k;
.super Ljava/lang/Object;
.source "Inflate.java"


# instance fields
.field a:I

.field private b:I

.field private c:I

.field private d:J

.field private e:J

.field private f:I

.field private g:Lorg/jshybugger/h;

.field private final h:Lorg/jshybugger/r;

.field private i:I

.field private j:I

.field private k:[B

.field private l:Lorg/jshybugger/g;

.field private m:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 595
    const/4 v0, 0x4

    new-array v0, v0, [B

    aput-byte v2, v0, v2

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    aput-byte v3, v0, v1

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    return-void
.end method

.method constructor <init>(Lorg/jshybugger/r;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/jshybugger/k;->d:J

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lorg/jshybugger/k;->j:I

    .line 118
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jshybugger/k;->k:[B

    .line 120
    iput-object v2, p0, Lorg/jshybugger/k;->l:Lorg/jshybugger/g;

    .line 685
    iput-object v2, p0, Lorg/jshybugger/k;->m:Ljava/io/ByteArrayOutputStream;

    .line 141
    iput-object p1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    .line 142
    return-void
.end method

.method private a(II)I
    .registers 10

    .prologue
    const/4 v6, 0x1

    .line 687
    iget-object v0, p0, Lorg/jshybugger/k;->m:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_c

    .line 688
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/k;->m:Ljava/io/ByteArrayOutputStream;

    .line 690
    :cond_c
    :goto_c
    iget-object v0, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v0, v0, Lorg/jshybugger/r;->c:I

    if-nez v0, :cond_18

    new-instance v0, Lorg/jshybugger/l;

    invoke-direct {v0, p0, p1}, Lorg/jshybugger/l;-><init>(Lorg/jshybugger/k;I)V

    throw v0

    .line 693
    :cond_18
    iget-object v0, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v1, v0, Lorg/jshybugger/r;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/jshybugger/r;->c:I

    iget-object v0, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-wide v2, v0, Lorg/jshybugger/r;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lorg/jshybugger/r;->d:J

    .line 694
    iget-object v0, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-object v0, v0, Lorg/jshybugger/r;->a:[B

    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v1, v1, Lorg/jshybugger/r;->b:I

    aget-byte v0, v0, v1

    .line 695
    if-eqz v0, :cond_42

    iget-object v1, p0, Lorg/jshybugger/k;->m:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-object v2, v2, Lorg/jshybugger/r;->a:[B

    iget-object v3, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v3, v3, Lorg/jshybugger/r;->b:I

    invoke-virtual {v1, v2, v3, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 696
    :cond_42
    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-object v1, v1, Lorg/jshybugger/r;->l:Lorg/jshybugger/c;

    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-object v2, v2, Lorg/jshybugger/r;->a:[B

    iget-object v3, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v3, v3, Lorg/jshybugger/r;->b:I

    invoke-interface {v1, v2, v3, v6}, Lorg/jshybugger/c;->a([BII)V

    .line 697
    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v2, v1, Lorg/jshybugger/r;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/jshybugger/r;->b:I

    .line 698
    if-nez v0, :cond_5c

    .line 699
    return p2

    :cond_5c
    move p1, p2

    goto :goto_c
.end method

.method private a(III)I
    .registers 11

    .prologue
    const/4 v6, -0x1

    .line 660
    iget v0, p0, Lorg/jshybugger/k;->j:I

    if-ne v0, v6, :cond_b

    .line 661
    iput p1, p0, Lorg/jshybugger/k;->j:I

    .line 662
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jshybugger/k;->e:J

    .line 664
    :cond_b
    :goto_b
    iget v0, p0, Lorg/jshybugger/k;->j:I

    if-lez v0, :cond_51

    .line 665
    iget-object v0, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v0, v0, Lorg/jshybugger/r;->c:I

    if-nez v0, :cond_1b

    new-instance v0, Lorg/jshybugger/l;

    invoke-direct {v0, p0, p2}, Lorg/jshybugger/l;-><init>(Lorg/jshybugger/k;I)V

    throw v0

    .line 666
    :cond_1b
    iget-object v0, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v1, v0, Lorg/jshybugger/r;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/jshybugger/r;->c:I

    iget-object v0, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-wide v2, v0, Lorg/jshybugger/r;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lorg/jshybugger/r;->d:J

    .line 667
    iget-wide v0, p0, Lorg/jshybugger/k;->e:J

    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-object v2, v2, Lorg/jshybugger/r;->a:[B

    iget-object v3, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v4, v3, Lorg/jshybugger/r;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v3, Lorg/jshybugger/r;->b:I

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    iget v3, p0, Lorg/jshybugger/k;->j:I

    sub-int v3, p1, v3

    shl-int/lit8 v3, v3, 0x3

    shl-int/2addr v2, v3

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jshybugger/k;->e:J

    .line 669
    iget v0, p0, Lorg/jshybugger/k;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jshybugger/k;->j:I

    move p2, p3

    goto :goto_b

    .line 671
    :cond_51
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5f

    .line 672
    iget-wide v0, p0, Lorg/jshybugger/k;->e:J

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jshybugger/k;->e:J

    .line 677
    :cond_5c
    :goto_5c
    iput v6, p0, Lorg/jshybugger/k;->j:I

    .line 678
    return p2

    .line 674
    :cond_5f
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5c

    .line 675
    iget-wide v0, p0, Lorg/jshybugger/k;->e:J

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jshybugger/k;->e:J

    goto :goto_5c
.end method

.method private a(IJ)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 720
    move v0, v1

    :goto_2
    if-ge v0, p1, :cond_13

    .line 721
    iget-object v2, p0, Lorg/jshybugger/k;->k:[B

    const-wide/16 v4, 0xff

    and-long/2addr v4, p2

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 722
    const/16 v2, 0x8

    shr-long/2addr p2, v2

    .line 720
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 724
    :cond_13
    iget-object v0, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-object v0, v0, Lorg/jshybugger/r;->l:Lorg/jshybugger/c;

    iget-object v2, p0, Lorg/jshybugger/k;->k:[B

    invoke-interface {v0, v2, v1, p1}, Lorg/jshybugger/c;->a([BII)V

    .line 725
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lorg/jshybugger/k;->g:Lorg/jshybugger/h;

    if-eqz v0, :cond_9

    .line 135
    iget-object v0, p0, Lorg/jshybugger/k;->g:Lorg/jshybugger/h;

    invoke-virtual {v0}, Lorg/jshybugger/h;->b()V

    .line 137
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method final a(I)I
    .registers 9

    .prologue
    const/16 v3, 0x30

    const/4 v2, 0x4

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 145
    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iput-object v6, v1, Lorg/jshybugger/r;->i:Ljava/lang/String;

    .line 146
    iput-object v6, p0, Lorg/jshybugger/k;->g:Lorg/jshybugger/h;

    .line 149
    iput v0, p0, Lorg/jshybugger/k;->a:I

    .line 150
    if-gez p1, :cond_1d

    .line 151
    neg-int p1, p1

    .line 169
    :cond_10
    :goto_10
    const/16 v1, 0x8

    if-lt p1, v1, :cond_18

    const/16 v1, 0xf

    if-le p1, v1, :cond_41

    .line 170
    :cond_18
    invoke-virtual {p0}, Lorg/jshybugger/k;->a()I

    .line 171
    const/4 v0, -0x2

    .line 186
    :cond_1c
    :goto_1c
    return v0

    .line 153
    :cond_1d
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p1

    if-eqz v1, :cond_2d

    .line 154
    iput v2, p0, Lorg/jshybugger/k;->a:I

    .line 155
    const v1, -0x40000001    # -1.9999999f

    and-int/2addr p1, v1

    .line 156
    if-ge p1, v3, :cond_10

    .line 157
    and-int/lit8 p1, p1, 0xf

    goto :goto_10

    .line 159
    :cond_2d
    and-int/lit8 v1, p1, -0x20

    if-eqz v1, :cond_36

    .line 160
    iput v2, p0, Lorg/jshybugger/k;->a:I

    .line 161
    and-int/lit8 p1, p1, 0xf

    goto :goto_10

    .line 164
    :cond_36
    shr-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jshybugger/k;->a:I

    .line 165
    if-ge p1, v3, :cond_10

    .line 166
    and-int/lit8 p1, p1, 0xf

    goto :goto_10

    .line 173
    :cond_41
    iget-object v1, p0, Lorg/jshybugger/k;->g:Lorg/jshybugger/h;

    if-eqz v1, :cond_50

    iget v1, p0, Lorg/jshybugger/k;->f:I

    if-eq v1, p1, :cond_50

    .line 174
    iget-object v1, p0, Lorg/jshybugger/k;->g:Lorg/jshybugger/h;

    invoke-virtual {v1}, Lorg/jshybugger/h;->b()V

    .line 175
    iput-object v6, p0, Lorg/jshybugger/k;->g:Lorg/jshybugger/h;

    .line 179
    :cond_50
    iput p1, p0, Lorg/jshybugger/k;->f:I

    .line 181
    new-instance v1, Lorg/jshybugger/h;

    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    const/4 v3, 0x1

    shl-int/2addr v3, p1

    invoke-direct {v1, v2, v3}, Lorg/jshybugger/h;-><init>(Lorg/jshybugger/r;I)V

    iput-object v1, p0, Lorg/jshybugger/k;->g:Lorg/jshybugger/h;

    .line 184
    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lorg/jshybugger/r;->h:J

    iput-wide v4, v1, Lorg/jshybugger/r;->d:J

    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iput-object v6, v1, Lorg/jshybugger/r;->i:Ljava/lang/String;

    const/16 v1, 0xe

    iput v1, p0, Lorg/jshybugger/k;->b:I

    const/4 v1, -0x1

    iput v1, p0, Lorg/jshybugger/k;->j:I

    iget-object v1, p0, Lorg/jshybugger/k;->g:Lorg/jshybugger/h;

    invoke-virtual {v1}, Lorg/jshybugger/h;->a()V

    goto :goto_1c
.end method

.method public final b(I)I
    .registers 10

    .prologue
    .line 190
    iget-object v0, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-object v0, v0, Lorg/jshybugger/r;->a:[B

    if-nez v0, :cond_17

    .line 196
    :cond_a
    const/4 v0, 0x4

    if-ne p1, v0, :cond_15

    iget v0, p0, Lorg/jshybugger/k;->b:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_15

    .line 197
    const/4 v1, 0x0

    .line 562
    :cond_14
    :goto_14
    return v1

    .line 198
    :cond_15
    const/4 v1, -0x2

    goto :goto_14

    .line 201
    :cond_17
    const/4 v0, 0x4

    if-ne p1, v0, :cond_23

    const/4 v0, -0x5

    .line 202
    :goto_1b
    const/4 v1, -0x5

    .line 205
    :goto_1c
    iget v2, p0, Lorg/jshybugger/k;->b:I

    packed-switch v2, :pswitch_data_602

    .line 562
    const/4 v1, -0x2

    goto :goto_14

    .line 201
    :cond_23
    const/4 v0, 0x0

    goto :goto_1b

    .line 207
    :pswitch_25
    iget v2, p0, Lorg/jshybugger/k;->a:I

    if-nez v2, :cond_2d

    .line 208
    const/4 v2, 0x7

    iput v2, p0, Lorg/jshybugger/k;->b:I

    goto :goto_1c

    .line 212
    :cond_2d
    const/4 v2, 0x2

    :try_start_2e
    invoke-direct {p0, v2, v1, v0}, Lorg/jshybugger/k;->a(III)I
    :try_end_31
    .catch Lorg/jshybugger/l; {:try_start_2e .. :try_end_31} :catch_6d

    move-result v1

    .line 215
    iget v2, p0, Lorg/jshybugger/k;->a:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3d

    iget v2, p0, Lorg/jshybugger/k;->a:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_71

    :cond_3d
    iget-wide v2, p0, Lorg/jshybugger/k;->e:J

    const-wide/32 v4, 0x8b1f

    cmp-long v2, v2, v4

    if-nez v2, :cond_71

    .line 217
    iget v2, p0, Lorg/jshybugger/k;->a:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4e

    .line 218
    const/4 v2, 0x2

    iput v2, p0, Lorg/jshybugger/k;->a:I

    .line 220
    :cond_4e
    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    new-instance v3, Lorg/jshybugger/b;

    invoke-direct {v3}, Lorg/jshybugger/b;-><init>()V

    iput-object v3, v2, Lorg/jshybugger/r;->l:Lorg/jshybugger/c;

    .line 221
    const/4 v2, 0x2

    iget-wide v4, p0, Lorg/jshybugger/k;->e:J

    invoke-direct {p0, v2, v4, v5}, Lorg/jshybugger/k;->a(IJ)V

    .line 223
    iget-object v2, p0, Lorg/jshybugger/k;->l:Lorg/jshybugger/g;

    if-nez v2, :cond_68

    .line 224
    new-instance v2, Lorg/jshybugger/g;

    invoke-direct {v2}, Lorg/jshybugger/g;-><init>()V

    iput-object v2, p0, Lorg/jshybugger/k;->l:Lorg/jshybugger/g;

    .line 226
    :cond_68
    const/16 v2, 0x17

    iput v2, p0, Lorg/jshybugger/k;->b:I

    goto :goto_1c

    .line 213
    :catch_6d
    move-exception v0

    iget v1, v0, Lorg/jshybugger/l;->a:I

    goto :goto_14

    .line 230
    :cond_71
    iget v2, p0, Lorg/jshybugger/k;->a:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_82

    .line 231
    const/16 v2, 0xd

    iput v2, p0, Lorg/jshybugger/k;->b:I

    .line 232
    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    const-string v3, "incorrect header check"

    iput-object v3, v2, Lorg/jshybugger/r;->i:Ljava/lang/String;

    goto :goto_1c

    .line 236
    :cond_82
    const/4 v2, 0x0

    iput v2, p0, Lorg/jshybugger/k;->i:I

    .line 238
    iget-wide v2, p0, Lorg/jshybugger/k;->e:J

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lorg/jshybugger/k;->c:I

    .line 239
    iget-wide v2, p0, Lorg/jshybugger/k;->e:J

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    .line 241
    iget v3, p0, Lorg/jshybugger/k;->a:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_a3

    iget v3, p0, Lorg/jshybugger/k;->c:I

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v2

    rem-int/lit8 v3, v3, 0x1f

    if-eqz v3, :cond_dd

    :cond_a3
    iget v3, p0, Lorg/jshybugger/k;->c:I

    and-int/lit8 v3, v3, 0xf

    const/16 v4, 0x8

    if-eq v3, v4, :cond_dd

    .line 244
    iget v2, p0, Lorg/jshybugger/k;->a:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_d1

    .line 245
    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v3, v2, Lorg/jshybugger/r;->b:I

    add-int/lit8 v3, v3, -0x2

    iput v3, v2, Lorg/jshybugger/r;->b:I

    .line 246
    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v3, v2, Lorg/jshybugger/r;->c:I

    add-int/lit8 v3, v3, 0x2

    iput v3, v2, Lorg/jshybugger/r;->c:I

    .line 247
    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-wide v4, v2, Lorg/jshybugger/r;->d:J

    const-wide/16 v6, 0x2

    sub-long/2addr v4, v6

    iput-wide v4, v2, Lorg/jshybugger/r;->d:J

    .line 248
    const/4 v2, 0x0

    iput v2, p0, Lorg/jshybugger/k;->a:I

    .line 249
    const/4 v2, 0x7

    iput v2, p0, Lorg/jshybugger/k;->b:I

    goto/16 :goto_1c

    .line 252
    :cond_d1
    const/16 v2, 0xd

    iput v2, p0, Lorg/jshybugger/k;->b:I

    .line 253
    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    const-string v3, "incorrect header check"

    iput-object v3, v2, Lorg/jshybugger/r;->i:Ljava/lang/String;

    goto/16 :goto_1c

    .line 261
    :cond_dd
    iget v3, p0, Lorg/jshybugger/k;->c:I

    and-int/lit8 v3, v3, 0xf

    const/16 v4, 0x8

    if-eq v3, v4, :cond_f1

    .line 262
    const/16 v2, 0xd

    iput v2, p0, Lorg/jshybugger/k;->b:I

    .line 263
    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    const-string v3, "unknown compression method"

    iput-object v3, v2, Lorg/jshybugger/r;->i:Ljava/lang/String;

    goto/16 :goto_1c

    .line 271
    :cond_f1
    iget v3, p0, Lorg/jshybugger/k;->a:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_f9

    .line 272
    const/4 v3, 0x1

    iput v3, p0, Lorg/jshybugger/k;->a:I

    .line 275
    :cond_f9
    iget v3, p0, Lorg/jshybugger/k;->c:I

    shr-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x8

    iget v4, p0, Lorg/jshybugger/k;->f:I

    if-le v3, v4, :cond_10f

    .line 276
    const/16 v2, 0xd

    iput v2, p0, Lorg/jshybugger/k;->b:I

    .line 277
    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    const-string v3, "invalid window size"

    iput-object v3, v2, Lorg/jshybugger/r;->i:Ljava/lang/String;

    goto/16 :goto_1c

    .line 285
    :cond_10f
    iget-object v3, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    new-instance v4, Lorg/jshybugger/a;

    invoke-direct {v4}, Lorg/jshybugger/a;-><init>()V

    iput-object v4, v3, Lorg/jshybugger/r;->l:Lorg/jshybugger/c;

    .line 287
    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_121

    .line 288
    const/4 v2, 0x7

    iput v2, p0, Lorg/jshybugger/k;->b:I

    goto/16 :goto_1c

    .line 291
    :cond_121
    const/4 v2, 0x2

    iput v2, p0, Lorg/jshybugger/k;->b:I

    .line 294
    :pswitch_124
    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v2, v2, Lorg/jshybugger/r;->c:I

    if-eqz v2, :cond_14

    .line 296
    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v2, v1, Lorg/jshybugger/r;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lorg/jshybugger/r;->c:I

    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-wide v2, v1, Lorg/jshybugger/r;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/jshybugger/r;->d:J

    .line 297
    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-object v1, v1, Lorg/jshybugger/r;->a:[B

    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v3, v2, Lorg/jshybugger/r;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lorg/jshybugger/r;->b:I

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    int-to-long v2, v1

    const-wide v4, 0xff000000L

    and-long/2addr v2, v4

    iput-wide v2, p0, Lorg/jshybugger/k;->e:J

    .line 298
    const/4 v1, 0x3

    iput v1, p0, Lorg/jshybugger/k;->b:I

    move v1, v0

    .line 301
    :pswitch_15a
    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v2, v2, Lorg/jshybugger/r;->c:I

    if-eqz v2, :cond_14

    .line 303
    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v2, v1, Lorg/jshybugger/r;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lorg/jshybugger/r;->c:I

    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-wide v2, v1, Lorg/jshybugger/r;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/jshybugger/r;->d:J

    .line 304
    iget-wide v2, p0, Lorg/jshybugger/k;->e:J

    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-object v1, v1, Lorg/jshybugger/r;->a:[B

    iget-object v4, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v5, v4, Lorg/jshybugger/r;->b:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v4, Lorg/jshybugger/r;->b:I

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    int-to-long v4, v1

    const-wide/32 v6, 0xff0000

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/jshybugger/k;->e:J

    .line 305
    const/4 v1, 0x4

    iput v1, p0, Lorg/jshybugger/k;->b:I

    move v1, v0

    .line 308
    :pswitch_191
    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v2, v2, Lorg/jshybugger/r;->c:I

    if-eqz v2, :cond_14

    .line 310
    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v2, v1, Lorg/jshybugger/r;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lorg/jshybugger/r;->c:I

    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-wide v2, v1, Lorg/jshybugger/r;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/jshybugger/r;->d:J

    .line 311
    iget-wide v2, p0, Lorg/jshybugger/k;->e:J

    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-object v1, v1, Lorg/jshybugger/r;->a:[B

    iget-object v4, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v5, v4, Lorg/jshybugger/r;->b:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v4, Lorg/jshybugger/r;->b:I

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    int-to-long v4, v1

    const-wide/32 v6, 0xff00

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/jshybugger/k;->e:J

    .line 312
    const/4 v1, 0x5

    iput v1, p0, Lorg/jshybugger/k;->b:I

    .line 315
    :goto_1c7
    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v1, v1, Lorg/jshybugger/r;->c:I

    if-nez v1, :cond_1d0

    move v1, v0

    goto/16 :goto_14

    .line 317
    :cond_1d0
    iget-object v0, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v1, v0, Lorg/jshybugger/r;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/jshybugger/r;->c:I

    iget-object v0, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-wide v2, v0, Lorg/jshybugger/r;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lorg/jshybugger/r;->d:J

    .line 318
    iget-wide v0, p0, Lorg/jshybugger/k;->e:J

    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-object v2, v2, Lorg/jshybugger/r;->a:[B

    iget-object v3, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v4, v3, Lorg/jshybugger/r;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v3, Lorg/jshybugger/r;->b:I

    aget-byte v2, v2, v4

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jshybugger/k;->e:J

    .line 319
    iget-object v0, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-object v0, v0, Lorg/jshybugger/r;->l:Lorg/jshybugger/c;

    iget-wide v2, p0, Lorg/jshybugger/k;->e:J

    invoke-interface {v0, v2, v3}, Lorg/jshybugger/c;->a(J)V

    .line 320
    const/4 v0, 0x6

    iput v0, p0, Lorg/jshybugger/k;->b:I

    .line 321
    const/4 v1, 0x2

    goto/16 :goto_14

    .line 323
    :pswitch_207
    const/16 v0, 0xd

    iput v0, p0, Lorg/jshybugger/k;->b:I

    .line 324
    iget-object v0, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    const-string v1, "need dictionary"

    iput-object v1, v0, Lorg/jshybugger/r;->i:Ljava/lang/String;

    .line 325
    const/4 v1, -0x2

    goto/16 :goto_14

    .line 328
    :pswitch_214
    iget-object v2, p0, Lorg/jshybugger/k;->g:Lorg/jshybugger/h;

    invoke-virtual {v2, v1}, Lorg/jshybugger/h;->a(I)I

    move-result v1

    .line 329
    const/4 v2, -0x3

    if-ne v1, v2, :cond_223

    .line 330
    const/16 v2, 0xd

    iput v2, p0, Lorg/jshybugger/k;->b:I

    goto/16 :goto_1c

    .line 334
    :cond_223
    if-nez v1, :cond_226

    move v1, v0

    .line 337
    :cond_226
    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 341
    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-object v1, v1, Lorg/jshybugger/r;->l:Lorg/jshybugger/c;

    invoke-interface {v1}, Lorg/jshybugger/c;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/jshybugger/k;->d:J

    .line 342
    iget-object v1, p0, Lorg/jshybugger/k;->g:Lorg/jshybugger/h;

    invoke-virtual {v1}, Lorg/jshybugger/h;->a()V

    .line 343
    iget v1, p0, Lorg/jshybugger/k;->a:I

    if-nez v1, :cond_243

    .line 344
    const/16 v1, 0xc

    iput v1, p0, Lorg/jshybugger/k;->b:I

    move v1, v0

    .line 345
    goto/16 :goto_1c

    .line 347
    :cond_243
    const/16 v1, 0x8

    iput v1, p0, Lorg/jshybugger/k;->b:I

    move v1, v0

    .line 350
    :pswitch_248
    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v2, v2, Lorg/jshybugger/r;->c:I

    if-eqz v2, :cond_14

    .line 352
    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v2, v1, Lorg/jshybugger/r;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lorg/jshybugger/r;->c:I

    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-wide v2, v1, Lorg/jshybugger/r;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/jshybugger/r;->d:J

    .line 353
    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-object v1, v1, Lorg/jshybugger/r;->a:[B

    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v3, v2, Lorg/jshybugger/r;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lorg/jshybugger/r;->b:I

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    int-to-long v2, v1

    const-wide v4, 0xff000000L

    and-long/2addr v2, v4

    iput-wide v2, p0, Lorg/jshybugger/k;->e:J

    .line 354
    const/16 v1, 0x9

    iput v1, p0, Lorg/jshybugger/k;->b:I

    move v1, v0

    .line 357
    :pswitch_27f
    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v2, v2, Lorg/jshybugger/r;->c:I

    if-eqz v2, :cond_14

    .line 359
    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v2, v1, Lorg/jshybugger/r;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lorg/jshybugger/r;->c:I

    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-wide v2, v1, Lorg/jshybugger/r;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/jshybugger/r;->d:J

    .line 360
    iget-wide v2, p0, Lorg/jshybugger/k;->e:J

    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-object v1, v1, Lorg/jshybugger/r;->a:[B

    iget-object v4, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v5, v4, Lorg/jshybugger/r;->b:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v4, Lorg/jshybugger/r;->b:I

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    int-to-long v4, v1

    const-wide/32 v6, 0xff0000

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/jshybugger/k;->e:J

    .line 361
    const/16 v1, 0xa

    iput v1, p0, Lorg/jshybugger/k;->b:I

    move v1, v0

    .line 364
    :pswitch_2b7
    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v2, v2, Lorg/jshybugger/r;->c:I

    if-eqz v2, :cond_14

    .line 366
    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v2, v1, Lorg/jshybugger/r;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lorg/jshybugger/r;->c:I

    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-wide v2, v1, Lorg/jshybugger/r;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/jshybugger/r;->d:J

    .line 367
    iget-wide v2, p0, Lorg/jshybugger/k;->e:J

    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-object v1, v1, Lorg/jshybugger/r;->a:[B

    iget-object v4, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v5, v4, Lorg/jshybugger/r;->b:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v4, Lorg/jshybugger/r;->b:I

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    int-to-long v4, v1

    const-wide/32 v6, 0xff00

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/jshybugger/k;->e:J

    .line 368
    const/16 v1, 0xb

    iput v1, p0, Lorg/jshybugger/k;->b:I

    move v1, v0

    .line 371
    :pswitch_2ef
    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v2, v2, Lorg/jshybugger/r;->c:I

    if-eqz v2, :cond_14

    .line 373
    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v2, v1, Lorg/jshybugger/r;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lorg/jshybugger/r;->c:I

    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-wide v2, v1, Lorg/jshybugger/r;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/jshybugger/r;->d:J

    .line 374
    iget-wide v2, p0, Lorg/jshybugger/k;->e:J

    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-object v1, v1, Lorg/jshybugger/r;->a:[B

    iget-object v4, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v5, v4, Lorg/jshybugger/r;->b:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v4, Lorg/jshybugger/r;->b:I

    aget-byte v1, v1, v5

    int-to-long v4, v1

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/jshybugger/k;->e:J

    .line 376
    iget v1, p0, Lorg/jshybugger/k;->i:I

    if-eqz v1, :cond_350

    .line 377
    iget-wide v2, p0, Lorg/jshybugger/k;->e:J

    const-wide/32 v4, -0x1000000

    and-long/2addr v2, v4

    const/16 v1, 0x18

    shr-long/2addr v2, v1

    iget-wide v4, p0, Lorg/jshybugger/k;->e:J

    const-wide/32 v6, 0xff0000

    and-long/2addr v4, v6

    const/16 v1, 0x8

    shr-long/2addr v4, v1

    or-long/2addr v2, v4

    iget-wide v4, p0, Lorg/jshybugger/k;->e:J

    const-wide/32 v6, 0xff00

    and-long/2addr v4, v6

    const/16 v1, 0x8

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    iget-wide v4, p0, Lorg/jshybugger/k;->e:J

    const-wide/32 v6, 0xffff

    and-long/2addr v4, v6

    const/16 v1, 0x18

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    iput-wide v2, p0, Lorg/jshybugger/k;->e:J

    .line 383
    :cond_350
    iget-wide v2, p0, Lorg/jshybugger/k;->d:J

    long-to-int v1, v2

    iget-wide v2, p0, Lorg/jshybugger/k;->e:J

    long-to-int v2, v2

    if-eq v1, v2, :cond_388

    .line 384
    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    const-string v2, "incorrect data check"

    iput-object v2, v1, Lorg/jshybugger/r;->i:Ljava/lang/String;

    .line 396
    :cond_35e
    :goto_35e
    const/16 v1, 0xf

    iput v1, p0, Lorg/jshybugger/k;->b:I

    move v1, v0

    .line 398
    :pswitch_363
    iget v2, p0, Lorg/jshybugger/k;->a:I

    if-eqz v2, :cond_3c2

    iget v2, p0, Lorg/jshybugger/k;->i:I

    if-eqz v2, :cond_3c2

    .line 400
    const/4 v2, 0x4

    :try_start_36c
    invoke-direct {p0, v2, v1, v0}, Lorg/jshybugger/k;->a(III)I
    :try_end_36f
    .catch Lorg/jshybugger/l; {:try_start_36c .. :try_end_36f} :catch_395

    move-result v1

    .line 403
    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-object v2, v2, Lorg/jshybugger/r;->i:Ljava/lang/String;

    if-eqz v2, :cond_39a

    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-object v2, v2, Lorg/jshybugger/r;->i:Ljava/lang/String;

    const-string v3, "incorrect data check"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39a

    .line 404
    const/16 v2, 0xd

    iput v2, p0, Lorg/jshybugger/k;->b:I

    goto/16 :goto_1c

    .line 392
    :cond_388
    iget v1, p0, Lorg/jshybugger/k;->i:I

    if-eqz v1, :cond_35e

    iget-object v1, p0, Lorg/jshybugger/k;->l:Lorg/jshybugger/g;

    if-eqz v1, :cond_35e

    .line 393
    iget-object v1, p0, Lorg/jshybugger/k;->l:Lorg/jshybugger/g;

    iget-wide v2, p0, Lorg/jshybugger/k;->e:J

    goto :goto_35e

    .line 401
    :catch_395
    move-exception v0

    iget v1, v0, Lorg/jshybugger/l;->a:I

    goto/16 :goto_14

    .line 409
    :cond_39a
    iget-wide v2, p0, Lorg/jshybugger/k;->e:J

    iget-object v4, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-wide v4, v4, Lorg/jshybugger/r;->h:J

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3b6

    .line 410
    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    const-string v3, "incorrect length check"

    iput-object v3, v2, Lorg/jshybugger/r;->i:Ljava/lang/String;

    .line 411
    const/16 v2, 0xd

    iput v2, p0, Lorg/jshybugger/k;->b:I

    goto/16 :goto_1c

    .line 414
    :cond_3b6
    iget-object v0, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/jshybugger/r;->i:Ljava/lang/String;

    .line 424
    :cond_3bb
    const/16 v0, 0xc

    iput v0, p0, Lorg/jshybugger/k;->b:I

    .line 426
    :pswitch_3bf
    const/4 v1, 0x1

    goto/16 :goto_14

    .line 417
    :cond_3c2
    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-object v2, v2, Lorg/jshybugger/r;->i:Ljava/lang/String;

    if-eqz v2, :cond_3bb

    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-object v2, v2, Lorg/jshybugger/r;->i:Ljava/lang/String;

    const-string v3, "incorrect data check"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3bb

    .line 418
    const/16 v2, 0xd

    iput v2, p0, Lorg/jshybugger/k;->b:I

    goto/16 :goto_1c

    .line 428
    :pswitch_3da
    const/4 v1, -0x3

    goto/16 :goto_14

    .line 432
    :pswitch_3dd
    const/4 v2, 0x2

    :try_start_3de
    invoke-direct {p0, v2, v1, v0}, Lorg/jshybugger/k;->a(III)I
    :try_end_3e1
    .catch Lorg/jshybugger/l; {:try_start_3de .. :try_end_3e1} :catch_3ff

    move-result v1

    .line 435
    iget-wide v2, p0, Lorg/jshybugger/k;->e:J

    long-to-int v2, v2

    const v3, 0xffff

    and-int/2addr v2, v3

    iput v2, p0, Lorg/jshybugger/k;->i:I

    .line 437
    iget v2, p0, Lorg/jshybugger/k;->i:I

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x8

    if-eq v2, v3, :cond_404

    .line 438
    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    const-string v3, "unknown compression method"

    iput-object v3, v2, Lorg/jshybugger/r;->i:Ljava/lang/String;

    .line 439
    const/16 v2, 0xd

    iput v2, p0, Lorg/jshybugger/k;->b:I

    goto/16 :goto_1c

    .line 433
    :catch_3ff
    move-exception v0

    iget v1, v0, Lorg/jshybugger/l;->a:I

    goto/16 :goto_14

    .line 442
    :cond_404
    iget v2, p0, Lorg/jshybugger/k;->i:I

    const v3, 0xe000

    and-int/2addr v2, v3

    if-eqz v2, :cond_418

    .line 443
    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    const-string v3, "unknown header flags set"

    iput-object v3, v2, Lorg/jshybugger/r;->i:Ljava/lang/String;

    .line 444
    const/16 v2, 0xd

    iput v2, p0, Lorg/jshybugger/k;->b:I

    goto/16 :goto_1c

    .line 448
    :cond_418
    iget v2, p0, Lorg/jshybugger/k;->i:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_424

    .line 449
    const/4 v2, 0x2

    iget-wide v4, p0, Lorg/jshybugger/k;->e:J

    invoke-direct {p0, v2, v4, v5}, Lorg/jshybugger/k;->a(IJ)V

    .line 452
    :cond_424
    const/16 v2, 0x10

    iput v2, p0, Lorg/jshybugger/k;->b:I

    .line 455
    :pswitch_428
    const/4 v2, 0x4

    :try_start_429
    invoke-direct {p0, v2, v1, v0}, Lorg/jshybugger/k;->a(III)I
    :try_end_42c
    .catch Lorg/jshybugger/l; {:try_start_429 .. :try_end_42c} :catch_4c3

    move-result v1

    .line 457
    iget-object v2, p0, Lorg/jshybugger/k;->l:Lorg/jshybugger/g;

    if-eqz v2, :cond_435

    .line 458
    iget-object v2, p0, Lorg/jshybugger/k;->l:Lorg/jshybugger/g;

    iget-wide v2, p0, Lorg/jshybugger/k;->e:J

    .line 459
    :cond_435
    iget v2, p0, Lorg/jshybugger/k;->i:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_441

    .line 460
    const/4 v2, 0x4

    iget-wide v4, p0, Lorg/jshybugger/k;->e:J

    invoke-direct {p0, v2, v4, v5}, Lorg/jshybugger/k;->a(IJ)V

    .line 462
    :cond_441
    const/16 v2, 0x11

    iput v2, p0, Lorg/jshybugger/k;->b:I

    .line 464
    :pswitch_445
    const/4 v2, 0x2

    :try_start_446
    invoke-direct {p0, v2, v1, v0}, Lorg/jshybugger/k;->a(III)I
    :try_end_449
    .catch Lorg/jshybugger/l; {:try_start_446 .. :try_end_449} :catch_4c8

    move-result v1

    .line 466
    iget-object v2, p0, Lorg/jshybugger/k;->l:Lorg/jshybugger/g;

    if-eqz v2, :cond_45d

    .line 467
    iget-object v2, p0, Lorg/jshybugger/k;->l:Lorg/jshybugger/g;

    iget-wide v2, p0, Lorg/jshybugger/k;->e:J

    .line 468
    iget-object v2, p0, Lorg/jshybugger/k;->l:Lorg/jshybugger/g;

    iget-wide v4, p0, Lorg/jshybugger/k;->e:J

    long-to-int v3, v4

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    iput v3, v2, Lorg/jshybugger/g;->a:I

    .line 470
    :cond_45d
    iget v2, p0, Lorg/jshybugger/k;->i:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_469

    .line 471
    const/4 v2, 0x2

    iget-wide v4, p0, Lorg/jshybugger/k;->e:J

    invoke-direct {p0, v2, v4, v5}, Lorg/jshybugger/k;->a(IJ)V

    .line 473
    :cond_469
    const/16 v2, 0x12

    iput v2, p0, Lorg/jshybugger/k;->b:I

    .line 475
    :pswitch_46d
    iget v2, p0, Lorg/jshybugger/k;->i:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_4d2

    .line 476
    const/4 v2, 0x2

    :try_start_474
    invoke-direct {p0, v2, v1, v0}, Lorg/jshybugger/k;->a(III)I
    :try_end_477
    .catch Lorg/jshybugger/l; {:try_start_474 .. :try_end_477} :catch_4cd

    move-result v1

    .line 478
    iget-object v2, p0, Lorg/jshybugger/k;->l:Lorg/jshybugger/g;

    if-eqz v2, :cond_489

    .line 479
    iget-object v2, p0, Lorg/jshybugger/k;->l:Lorg/jshybugger/g;

    iget-wide v4, p0, Lorg/jshybugger/k;->e:J

    long-to-int v3, v4

    const v4, 0xffff

    and-int/2addr v3, v4

    new-array v3, v3, [B

    iput-object v3, v2, Lorg/jshybugger/g;->b:[B

    .line 481
    :cond_489
    iget v2, p0, Lorg/jshybugger/k;->i:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_495

    .line 482
    const/4 v2, 0x2

    iget-wide v4, p0, Lorg/jshybugger/k;->e:J

    invoke-direct {p0, v2, v4, v5}, Lorg/jshybugger/k;->a(IJ)V

    .line 488
    :cond_495
    :goto_495
    const/16 v2, 0x13

    iput v2, p0, Lorg/jshybugger/k;->b:I

    .line 491
    :pswitch_499
    iget v2, p0, Lorg/jshybugger/k;->i:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_5c2

    .line 493
    :try_start_49f
    iget-object v2, p0, Lorg/jshybugger/k;->m:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_4aa

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lorg/jshybugger/k;->m:Ljava/io/ByteArrayOutputStream;

    :cond_4aa
    :goto_4aa
    iget-wide v2, p0, Lorg/jshybugger/k;->e:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_524

    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v2, v2, Lorg/jshybugger/r;->c:I

    if-nez v2, :cond_4dc

    new-instance v0, Lorg/jshybugger/l;

    invoke-direct {v0, p0, v1}, Lorg/jshybugger/l;-><init>(Lorg/jshybugger/k;I)V

    throw v0
    :try_end_4be
    .catch Lorg/jshybugger/l; {:try_start_49f .. :try_end_4be} :catch_4be

    .line 507
    :catch_4be
    move-exception v0

    iget v1, v0, Lorg/jshybugger/l;->a:I

    goto/16 :goto_14

    .line 456
    :catch_4c3
    move-exception v0

    iget v1, v0, Lorg/jshybugger/l;->a:I

    goto/16 :goto_14

    .line 465
    :catch_4c8
    move-exception v0

    iget v1, v0, Lorg/jshybugger/l;->a:I

    goto/16 :goto_14

    .line 477
    :catch_4cd
    move-exception v0

    iget v1, v0, Lorg/jshybugger/l;->a:I

    goto/16 :goto_14

    .line 485
    :cond_4d2
    iget-object v2, p0, Lorg/jshybugger/k;->l:Lorg/jshybugger/g;

    if-eqz v2, :cond_495

    .line 486
    iget-object v2, p0, Lorg/jshybugger/k;->l:Lorg/jshybugger/g;

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/jshybugger/g;->b:[B

    goto :goto_495

    .line 493
    :cond_4dc
    :try_start_4dc
    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v2, v1, Lorg/jshybugger/r;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lorg/jshybugger/r;->c:I

    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-wide v2, v1, Lorg/jshybugger/r;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/jshybugger/r;->d:J

    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-object v1, v1, Lorg/jshybugger/r;->a:[B

    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v1, v1, Lorg/jshybugger/r;->b:I

    iget-object v1, p0, Lorg/jshybugger/k;->m:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-object v2, v2, Lorg/jshybugger/r;->a:[B

    iget-object v3, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v3, v3, Lorg/jshybugger/r;->b:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-object v1, v1, Lorg/jshybugger/r;->l:Lorg/jshybugger/c;

    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-object v2, v2, Lorg/jshybugger/r;->a:[B

    iget-object v3, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v3, v3, Lorg/jshybugger/r;->b:I

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lorg/jshybugger/c;->a([BII)V

    iget-object v1, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget v2, v1, Lorg/jshybugger/r;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/jshybugger/r;->b:I

    iget-wide v2, p0, Lorg/jshybugger/k;->e:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/jshybugger/k;->e:J

    move v1, v0

    goto :goto_4aa

    .line 494
    :cond_524
    iget-object v2, p0, Lorg/jshybugger/k;->l:Lorg/jshybugger/g;

    if-eqz v2, :cond_543

    .line 495
    iget-object v2, p0, Lorg/jshybugger/k;->m:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 496
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/jshybugger/k;->m:Ljava/io/ByteArrayOutputStream;

    .line 497
    array-length v3, v2

    iget-object v4, p0, Lorg/jshybugger/k;->l:Lorg/jshybugger/g;

    iget-object v4, v4, Lorg/jshybugger/g;->b:[B

    array-length v4, v4

    if-ne v3, v4, :cond_5b6

    .line 498
    const/4 v3, 0x0

    iget-object v4, p0, Lorg/jshybugger/k;->l:Lorg/jshybugger/g;

    iget-object v4, v4, Lorg/jshybugger/g;->b:[B

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_543
    .catch Lorg/jshybugger/l; {:try_start_4dc .. :try_end_543} :catch_4be

    .line 512
    :cond_543
    :goto_543
    const/16 v2, 0x14

    iput v2, p0, Lorg/jshybugger/k;->b:I

    .line 514
    :pswitch_547
    iget v2, p0, Lorg/jshybugger/k;->i:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_5d2

    .line 516
    :try_start_54d
    invoke-direct {p0, v1, v0}, Lorg/jshybugger/k;->a(II)I

    move-result v1

    .line 517
    iget-object v2, p0, Lorg/jshybugger/k;->l:Lorg/jshybugger/g;

    if-eqz v2, :cond_55f

    .line 518
    iget-object v2, p0, Lorg/jshybugger/k;->l:Lorg/jshybugger/g;

    iget-object v3, p0, Lorg/jshybugger/k;->m:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, v2, Lorg/jshybugger/g;->c:[B

    .line 520
    :cond_55f
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/jshybugger/k;->m:Ljava/io/ByteArrayOutputStream;
    :try_end_562
    .catch Lorg/jshybugger/l; {:try_start_54d .. :try_end_562} :catch_5cd

    .line 527
    :cond_562
    :goto_562
    const/16 v2, 0x15

    iput v2, p0, Lorg/jshybugger/k;->b:I

    .line 529
    :pswitch_566
    iget v2, p0, Lorg/jshybugger/k;->i:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_5e1

    .line 531
    :try_start_56c
    invoke-direct {p0, v1, v0}, Lorg/jshybugger/k;->a(II)I

    move-result v1

    .line 532
    iget-object v2, p0, Lorg/jshybugger/k;->l:Lorg/jshybugger/g;

    if-eqz v2, :cond_57e

    .line 533
    iget-object v2, p0, Lorg/jshybugger/k;->l:Lorg/jshybugger/g;

    iget-object v3, p0, Lorg/jshybugger/k;->m:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, v2, Lorg/jshybugger/g;->d:[B

    .line 535
    :cond_57e
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/jshybugger/k;->m:Ljava/io/ByteArrayOutputStream;
    :try_end_581
    .catch Lorg/jshybugger/l; {:try_start_56c .. :try_end_581} :catch_5dc

    .line 542
    :cond_581
    :goto_581
    const/16 v2, 0x16

    iput v2, p0, Lorg/jshybugger/k;->b:I

    .line 544
    :pswitch_585
    iget v2, p0, Lorg/jshybugger/k;->i:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_5f0

    .line 545
    const/4 v2, 0x2

    :try_start_58c
    invoke-direct {p0, v2, v1, v0}, Lorg/jshybugger/k;->a(III)I
    :try_end_58f
    .catch Lorg/jshybugger/l; {:try_start_58c .. :try_end_58f} :catch_5eb

    move-result v1

    .line 547
    iget-object v2, p0, Lorg/jshybugger/k;->l:Lorg/jshybugger/g;

    if-eqz v2, :cond_598

    .line 548
    iget-object v2, p0, Lorg/jshybugger/k;->l:Lorg/jshybugger/g;

    iget-wide v2, p0, Lorg/jshybugger/k;->e:J

    .line 550
    :cond_598
    iget-wide v2, p0, Lorg/jshybugger/k;->e:J

    iget-object v4, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    iget-object v4, v4, Lorg/jshybugger/r;->l:Lorg/jshybugger/c;

    invoke-interface {v4}, Lorg/jshybugger/c;->b()J

    move-result-wide v4

    const-wide/32 v6, 0xffff

    and-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5f0

    .line 551
    const/16 v2, 0xd

    iput v2, p0, Lorg/jshybugger/k;->b:I

    .line 552
    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    const-string v3, "header crc mismatch"

    iput-object v3, v2, Lorg/jshybugger/r;->i:Ljava/lang/String;

    goto/16 :goto_1c

    .line 501
    :cond_5b6
    :try_start_5b6
    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    const-string v3, "bad extra field length"

    iput-object v3, v2, Lorg/jshybugger/r;->i:Ljava/lang/String;

    .line 502
    const/16 v2, 0xd

    iput v2, p0, Lorg/jshybugger/k;->b:I
    :try_end_5c0
    .catch Lorg/jshybugger/l; {:try_start_5b6 .. :try_end_5c0} :catch_4be

    goto/16 :goto_1c

    .line 509
    :cond_5c2
    iget-object v2, p0, Lorg/jshybugger/k;->l:Lorg/jshybugger/g;

    if-eqz v2, :cond_543

    .line 510
    iget-object v2, p0, Lorg/jshybugger/k;->l:Lorg/jshybugger/g;

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/jshybugger/g;->b:[B

    goto/16 :goto_543

    .line 522
    :catch_5cd
    move-exception v0

    iget v1, v0, Lorg/jshybugger/l;->a:I

    goto/16 :goto_14

    .line 524
    :cond_5d2
    iget-object v2, p0, Lorg/jshybugger/k;->l:Lorg/jshybugger/g;

    if-eqz v2, :cond_562

    .line 525
    iget-object v2, p0, Lorg/jshybugger/k;->l:Lorg/jshybugger/g;

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/jshybugger/g;->c:[B

    goto :goto_562

    .line 537
    :catch_5dc
    move-exception v0

    iget v1, v0, Lorg/jshybugger/l;->a:I

    goto/16 :goto_14

    .line 539
    :cond_5e1
    iget-object v2, p0, Lorg/jshybugger/k;->l:Lorg/jshybugger/g;

    if-eqz v2, :cond_581

    .line 540
    iget-object v2, p0, Lorg/jshybugger/k;->l:Lorg/jshybugger/g;

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/jshybugger/g;->d:[B

    goto :goto_581

    .line 546
    :catch_5eb
    move-exception v0

    iget v1, v0, Lorg/jshybugger/l;->a:I

    goto/16 :goto_14

    .line 557
    :cond_5f0
    iget-object v2, p0, Lorg/jshybugger/k;->h:Lorg/jshybugger/r;

    new-instance v3, Lorg/jshybugger/b;

    invoke-direct {v3}, Lorg/jshybugger/b;-><init>()V

    iput-object v3, v2, Lorg/jshybugger/r;->l:Lorg/jshybugger/c;

    .line 559
    const/4 v2, 0x7

    iput v2, p0, Lorg/jshybugger/k;->b:I

    goto/16 :goto_1c

    :pswitch_5fe
    move v0, v1

    goto/16 :goto_1c7

    .line 205
    nop

    :pswitch_data_602
    .packed-switch 0x2
        :pswitch_124
        :pswitch_15a
        :pswitch_191
        :pswitch_5fe
        :pswitch_207
        :pswitch_214
        :pswitch_248
        :pswitch_27f
        :pswitch_2b7
        :pswitch_2ef
        :pswitch_3bf
        :pswitch_3da
        :pswitch_25
        :pswitch_363
        :pswitch_428
        :pswitch_445
        :pswitch_46d
        :pswitch_499
        :pswitch_547
        :pswitch_566
        :pswitch_585
        :pswitch_3dd
    .end packed-switch
.end method
