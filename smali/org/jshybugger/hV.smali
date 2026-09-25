.class public final Lorg/jshybugger/hv;
.super Lorg/jshybugger/hx;
.source "Base64.java"


# static fields
.field private static b:[B

.field private static final c:[B

.field private static final d:[B

.field private static final e:[B


# instance fields
.field private final f:[B

.field private final g:[B

.field private final h:[B

.field private final i:I

.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x40

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_22

    sput-object v0, Lorg/jshybugger/hv;->b:[B

    .line 80
    new-array v0, v1, [B

    fill-array-data v0, :array_28

    sput-object v0, Lorg/jshybugger/hv;->c:[B

    .line 93
    new-array v0, v1, [B

    fill-array-data v0, :array_4c

    sput-object v0, Lorg/jshybugger/hv;->d:[B

    .line 112
    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_70

    sput-object v0, Lorg/jshybugger/hv;->e:[B

    return-void

    .line 71
    :array_22
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 80
    nop

    :array_28
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 93
    :array_4c
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    .line 112
    :array_70
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        0x3et
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jshybugger/hv;-><init>(I)V

    .line 171
    return-void
.end method

.method private constructor <init>(I)V
    .registers 4

    .prologue
    .line 212
    const/4 v0, 0x0

    sget-object v1, Lorg/jshybugger/hv;->b:[B

    invoke-direct {p0, v0, v1}, Lorg/jshybugger/hv;-><init>(I[B)V

    .line 213
    return-void
.end method

.method private constructor <init>(I[B)V
    .registers 4

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jshybugger/hv;-><init>(I[BZ)V

    .line 240
    return-void
.end method

.method private constructor <init>(I[BZ)V
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x4

    const/4 v1, 0x0

    .line 269
    const/4 v3, 0x3

    if-nez p2, :cond_36

    move v0, v1

    :goto_7
    invoke-direct {p0, v3, v4, p1, v0}, Lorg/jshybugger/hx;-><init>(IIII)V

    .line 140
    sget-object v0, Lorg/jshybugger/hv;->e:[B

    iput-object v0, p0, Lorg/jshybugger/hv;->g:[B

    .line 274
    if-eqz p2, :cond_62

    .line 275
    invoke-virtual {p0, p2}, Lorg/jshybugger/hv;->a([B)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 276
    sget-object v1, Lorg/jshybugger/hu;->a:Ljava/nio/charset/Charset;

    if-nez p2, :cond_38

    move-object v0, v2

    .line 277
    :goto_1b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lineSeparator must not contain base64 characters: ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 269
    :cond_36
    array-length v0, p2

    goto :goto_7

    .line 276
    :cond_38
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_1b

    .line 279
    :cond_3e
    if-lez p1, :cond_5d

    .line 280
    array-length v0, p2

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/jshybugger/hv;->j:I

    .line 281
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jshybugger/hv;->h:[B

    .line 282
    iget-object v0, p0, Lorg/jshybugger/hv;->h:[B

    array-length v2, p2

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    :goto_50
    iget v0, p0, Lorg/jshybugger/hv;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jshybugger/hv;->i:I

    .line 292
    if-eqz p3, :cond_67

    sget-object v0, Lorg/jshybugger/hv;->d:[B

    :goto_5a
    iput-object v0, p0, Lorg/jshybugger/hv;->f:[B

    .line 293
    return-void

    .line 284
    :cond_5d
    iput v4, p0, Lorg/jshybugger/hv;->j:I

    .line 285
    iput-object v2, p0, Lorg/jshybugger/hv;->h:[B

    goto :goto_50

    .line 288
    :cond_62
    iput v4, p0, Lorg/jshybugger/hv;->j:I

    .line 289
    iput-object v2, p0, Lorg/jshybugger/hv;->h:[B

    goto :goto_50

    .line 292
    :cond_67
    sget-object v0, Lorg/jshybugger/hv;->c:[B

    goto :goto_5a
.end method

.method public constructor <init>(Z)V
    .registers 5

    .prologue
    .line 189
    const/16 v0, 0x4c

    sget-object v1, Lorg/jshybugger/hv;->b:[B

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/jshybugger/hv;-><init>(I[BZ)V

    .line 190
    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 681
    new-instance v1, Lorg/jshybugger/hv;

    invoke-direct {v1}, Lorg/jshybugger/hv;-><init>()V

    sget-object v0, Lorg/jshybugger/hu;->a:Ljava/nio/charset/Charset;

    if-nez p0, :cond_11

    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_10

    array-length v2, v0

    if-nez v2, :cond_16

    :cond_10
    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    goto :goto_b

    :cond_16
    new-instance v2, Lorg/jshybugger/hy;

    invoke-direct {v2}, Lorg/jshybugger/hy;-><init>()V

    array-length v3, v0

    invoke-virtual {v1, v0, v4, v3, v2}, Lorg/jshybugger/hx;->b([BIILorg/jshybugger/hy;)V

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v4, v3, v2}, Lorg/jshybugger/hx;->b([BIILorg/jshybugger/hy;)V

    iget v0, v2, Lorg/jshybugger/hy;->c:I

    new-array v0, v0, [B

    array-length v3, v0

    invoke-virtual {v1, v0, v4, v3, v2}, Lorg/jshybugger/hx;->c([BIILorg/jshybugger/hy;)I

    goto :goto_10
.end method


# virtual methods
.method final a([BIILorg/jshybugger/hy;)V
    .registers 12

    .prologue
    const/16 v6, 0x3d

    const/4 v2, 0x0

    .line 327
    iget-boolean v0, p4, Lorg/jshybugger/hy;->e:Z

    if-eqz v0, :cond_8

    .line 395
    :cond_7
    :goto_7
    return-void

    .line 332
    :cond_8
    if-gez p3, :cond_dd

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p4, Lorg/jshybugger/hy;->e:Z

    .line 334
    iget v0, p4, Lorg/jshybugger/hy;->g:I

    if-nez v0, :cond_15

    iget v0, p0, Lorg/jshybugger/hv;->a:I

    if-eqz v0, :cond_7

    .line 337
    :cond_15
    iget v0, p0, Lorg/jshybugger/hv;->j:I

    invoke-virtual {p0, v0, p4}, Lorg/jshybugger/hv;->a(ILorg/jshybugger/hy;)[B

    move-result-object v0

    .line 338
    iget v1, p4, Lorg/jshybugger/hy;->c:I

    .line 339
    iget v3, p4, Lorg/jshybugger/hy;->g:I

    packed-switch v3, :pswitch_data_172

    .line 364
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Impossible modulus "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p4, Lorg/jshybugger/hy;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :pswitch_39
    iget v3, p4, Lorg/jshybugger/hy;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lorg/jshybugger/hy;->c:I

    iget-object v4, p0, Lorg/jshybugger/hv;->f:[B

    iget v5, p4, Lorg/jshybugger/hy;->a:I

    shr-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    .line 346
    iget v3, p4, Lorg/jshybugger/hy;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lorg/jshybugger/hy;->c:I

    iget-object v4, p0, Lorg/jshybugger/hv;->f:[B

    iget v5, p4, Lorg/jshybugger/hy;->a:I

    shl-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    .line 348
    iget-object v3, p0, Lorg/jshybugger/hv;->f:[B

    sget-object v4, Lorg/jshybugger/hv;->c:[B

    if-ne v3, v4, :cond_73

    .line 349
    iget v3, p4, Lorg/jshybugger/hy;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lorg/jshybugger/hy;->c:I

    aput-byte v6, v0, v3

    .line 350
    iget v3, p4, Lorg/jshybugger/hy;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lorg/jshybugger/hy;->c:I

    aput-byte v6, v0, v3

    .line 366
    :cond_73
    :goto_73
    :pswitch_73
    iget v3, p4, Lorg/jshybugger/hy;->f:I

    iget v4, p4, Lorg/jshybugger/hy;->c:I

    sub-int v1, v4, v1

    add-int/2addr v1, v3

    iput v1, p4, Lorg/jshybugger/hy;->f:I

    .line 368
    iget v1, p0, Lorg/jshybugger/hv;->a:I

    if-lez v1, :cond_7

    iget v1, p4, Lorg/jshybugger/hy;->f:I

    if-lez v1, :cond_7

    .line 369
    iget-object v1, p0, Lorg/jshybugger/hv;->h:[B

    iget v3, p4, Lorg/jshybugger/hy;->c:I

    iget-object v4, p0, Lorg/jshybugger/hv;->h:[B

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    iget v0, p4, Lorg/jshybugger/hy;->c:I

    iget-object v1, p0, Lorg/jshybugger/hv;->h:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p4, Lorg/jshybugger/hy;->c:I

    goto/16 :goto_7

    .line 355
    :pswitch_98
    iget v3, p4, Lorg/jshybugger/hy;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lorg/jshybugger/hy;->c:I

    iget-object v4, p0, Lorg/jshybugger/hv;->f:[B

    iget v5, p4, Lorg/jshybugger/hy;->a:I

    shr-int/lit8 v5, v5, 0xa

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    .line 356
    iget v3, p4, Lorg/jshybugger/hy;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lorg/jshybugger/hy;->c:I

    iget-object v4, p0, Lorg/jshybugger/hv;->f:[B

    iget v5, p4, Lorg/jshybugger/hy;->a:I

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    .line 357
    iget v3, p4, Lorg/jshybugger/hy;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lorg/jshybugger/hy;->c:I

    iget-object v4, p0, Lorg/jshybugger/hv;->f:[B

    iget v5, p4, Lorg/jshybugger/hy;->a:I

    shl-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    .line 359
    iget-object v3, p0, Lorg/jshybugger/hv;->f:[B

    sget-object v4, Lorg/jshybugger/hv;->c:[B

    if-ne v3, v4, :cond_73

    .line 360
    iget v3, p4, Lorg/jshybugger/hy;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lorg/jshybugger/hy;->c:I

    aput-byte v6, v0, v3

    goto :goto_73

    :cond_dd
    move v1, v2

    .line 373
    :goto_de
    if-ge v1, p3, :cond_7

    .line 374
    iget v0, p0, Lorg/jshybugger/hv;->j:I

    invoke-virtual {p0, v0, p4}, Lorg/jshybugger/hv;->a(ILorg/jshybugger/hy;)[B

    move-result-object v4

    .line 375
    iget v0, p4, Lorg/jshybugger/hy;->g:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    iput v0, p4, Lorg/jshybugger/hy;->g:I

    .line 376
    add-int/lit8 v3, p2, 0x1

    aget-byte v0, p1, p2

    .line 377
    if-gez v0, :cond_f6

    .line 378
    add-int/lit16 v0, v0, 0x100

    .line 380
    :cond_f6
    iget v5, p4, Lorg/jshybugger/hy;->a:I

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v0, v5

    iput v0, p4, Lorg/jshybugger/hy;->a:I

    .line 381
    iget v0, p4, Lorg/jshybugger/hy;->g:I

    if-nez v0, :cond_16b

    .line 382
    iget v0, p4, Lorg/jshybugger/hy;->c:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p4, Lorg/jshybugger/hy;->c:I

    iget-object v5, p0, Lorg/jshybugger/hv;->f:[B

    iget v6, p4, Lorg/jshybugger/hy;->a:I

    shr-int/lit8 v6, v6, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v4, v0

    .line 383
    iget v0, p4, Lorg/jshybugger/hy;->c:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p4, Lorg/jshybugger/hy;->c:I

    iget-object v5, p0, Lorg/jshybugger/hv;->f:[B

    iget v6, p4, Lorg/jshybugger/hy;->a:I

    shr-int/lit8 v6, v6, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v4, v0

    .line 384
    iget v0, p4, Lorg/jshybugger/hy;->c:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p4, Lorg/jshybugger/hy;->c:I

    iget-object v5, p0, Lorg/jshybugger/hv;->f:[B

    iget v6, p4, Lorg/jshybugger/hy;->a:I

    shr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v4, v0

    .line 385
    iget v0, p4, Lorg/jshybugger/hy;->c:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p4, Lorg/jshybugger/hy;->c:I

    iget-object v5, p0, Lorg/jshybugger/hv;->f:[B

    iget v6, p4, Lorg/jshybugger/hy;->a:I

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v4, v0

    .line 386
    iget v0, p4, Lorg/jshybugger/hy;->f:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p4, Lorg/jshybugger/hy;->f:I

    .line 387
    iget v0, p0, Lorg/jshybugger/hv;->a:I

    if-lez v0, :cond_16b

    iget v0, p0, Lorg/jshybugger/hv;->a:I

    iget v5, p4, Lorg/jshybugger/hy;->f:I

    if-gt v0, v5, :cond_16b

    .line 388
    iget-object v0, p0, Lorg/jshybugger/hv;->h:[B

    iget v5, p4, Lorg/jshybugger/hy;->c:I

    iget-object v6, p0, Lorg/jshybugger/hv;->h:[B

    array-length v6, v6

    invoke-static {v0, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    iget v0, p4, Lorg/jshybugger/hy;->c:I

    iget-object v4, p0, Lorg/jshybugger/hv;->h:[B

    array-length v4, v4

    add-int/2addr v0, v4

    iput v0, p4, Lorg/jshybugger/hy;->c:I

    .line 390
    iput v2, p4, Lorg/jshybugger/hy;->f:I

    .line 373
    :cond_16b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move p2, v3

    goto/16 :goto_de

    .line 339
    nop

    :pswitch_data_172
    .packed-switch 0x0
        :pswitch_73
        :pswitch_39
        :pswitch_98
    .end packed-switch
.end method

.method protected final a(B)Z
    .registers 4

    .prologue
    .line 767
    if-ltz p1, :cond_10

    iget-object v0, p0, Lorg/jshybugger/hv;->g:[B

    array-length v0, v0

    if-ge p1, v0, :cond_10

    iget-object v0, p0, Lorg/jshybugger/hv;->g:[B

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method final b([BIILorg/jshybugger/hy;)V
    .registers 11

    .prologue
    const/4 v5, 0x1

    .line 424
    iget-boolean v0, p4, Lorg/jshybugger/hy;->e:Z

    if-eqz v0, :cond_6

    .line 479
    :cond_5
    :goto_5
    :pswitch_5
    return-void

    .line 427
    :cond_6
    if-gez p3, :cond_a

    .line 428
    iput-boolean v5, p4, Lorg/jshybugger/hy;->e:Z

    .line 430
    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-ge v0, p3, :cond_1d

    .line 431
    iget v1, p0, Lorg/jshybugger/hv;->i:I

    invoke-virtual {p0, v1, p4}, Lorg/jshybugger/hv;->a(ILorg/jshybugger/hy;)[B

    move-result-object v2

    .line 432
    add-int/lit8 v1, p2, 0x1

    aget-byte v3, p1, p2

    .line 433
    const/16 v4, 0x3d

    if-ne v3, v4, :cond_47

    .line 435
    iput-boolean v5, p4, Lorg/jshybugger/hy;->e:Z

    .line 456
    :cond_1d
    iget-boolean v0, p4, Lorg/jshybugger/hy;->e:Z

    if-eqz v0, :cond_5

    iget v0, p4, Lorg/jshybugger/hy;->g:I

    if-eqz v0, :cond_5

    .line 457
    iget v0, p0, Lorg/jshybugger/hv;->i:I

    invoke-virtual {p0, v0, p4}, Lorg/jshybugger/hv;->a(ILorg/jshybugger/hy;)[B

    move-result-object v0

    .line 461
    iget v1, p4, Lorg/jshybugger/hy;->g:I

    packed-switch v1, :pswitch_data_c4

    .line 476
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Impossible modulus "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p4, Lorg/jshybugger/hy;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_47
    if-ltz v3, :cond_8c

    sget-object v4, Lorg/jshybugger/hv;->e:[B

    array-length v4, v4

    if-ge v3, v4, :cond_8c

    .line 439
    sget-object v4, Lorg/jshybugger/hv;->e:[B

    aget-byte v3, v4, v3

    .line 440
    if-ltz v3, :cond_8c

    .line 441
    iget v4, p4, Lorg/jshybugger/hy;->g:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x4

    iput v4, p4, Lorg/jshybugger/hy;->g:I

    .line 442
    iget v4, p4, Lorg/jshybugger/hy;->a:I

    shl-int/lit8 v4, v4, 0x6

    add-int/2addr v3, v4

    iput v3, p4, Lorg/jshybugger/hy;->a:I

    .line 443
    iget v3, p4, Lorg/jshybugger/hy;->g:I

    if-nez v3, :cond_8c

    .line 444
    iget v3, p4, Lorg/jshybugger/hy;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lorg/jshybugger/hy;->c:I

    iget v4, p4, Lorg/jshybugger/hy;->a:I

    shr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 445
    iget v3, p4, Lorg/jshybugger/hy;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lorg/jshybugger/hy;->c:I

    iget v4, p4, Lorg/jshybugger/hy;->a:I

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 446
    iget v3, p4, Lorg/jshybugger/hy;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lorg/jshybugger/hy;->c:I

    iget v4, p4, Lorg/jshybugger/hy;->a:I

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 430
    :cond_8c
    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto/16 :goto_b

    .line 467
    :pswitch_91
    iget v1, p4, Lorg/jshybugger/hy;->a:I

    shr-int/lit8 v1, v1, 0x4

    iput v1, p4, Lorg/jshybugger/hy;->a:I

    .line 468
    iget v1, p4, Lorg/jshybugger/hy;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Lorg/jshybugger/hy;->c:I

    iget v2, p4, Lorg/jshybugger/hy;->a:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_5

    .line 471
    :pswitch_a4
    iget v1, p4, Lorg/jshybugger/hy;->a:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, p4, Lorg/jshybugger/hy;->a:I

    .line 472
    iget v1, p4, Lorg/jshybugger/hy;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Lorg/jshybugger/hy;->c:I

    iget v2, p4, Lorg/jshybugger/hy;->a:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 473
    iget v1, p4, Lorg/jshybugger/hy;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Lorg/jshybugger/hy;->c:I

    iget v2, p4, Lorg/jshybugger/hy;->a:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_5

    .line 461
    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_5
        :pswitch_91
        :pswitch_a4
    .end packed-switch
.end method
