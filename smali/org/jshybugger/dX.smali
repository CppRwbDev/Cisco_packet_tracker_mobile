.class public Lorg/jshybugger/dx;
.super Lorg/jshybugger/dB;
.source "HttpContentCompressor.java"


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/jshybugger/dx;-><init>(I)V

    .line 42
    return-void
.end method

.method private constructor <init>(I)V
    .registers 5

    .prologue
    .line 54
    const/4 v0, 0x6

    const/16 v1, 0xf

    const/16 v2, 0x8

    invoke-direct {p0, v0, v1, v2}, Lorg/jshybugger/dx;-><init>(III)V

    .line 55
    return-void
.end method

.method private constructor <init>(III)V
    .registers 7

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/jshybugger/dB;-><init>()V

    .line 77
    if-ltz p1, :cond_9

    const/16 v0, 0x9

    if-le p1, v0, :cond_24

    .line 78
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "compressionLevel: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 0-9)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_24
    iput p1, p0, Lorg/jshybugger/dx;->b:I

    .line 91
    const/16 v0, 0xf

    iput v0, p0, Lorg/jshybugger/dx;->c:I

    .line 92
    const/16 v0, 0x8

    iput v0, p0, Lorg/jshybugger/dx;->d:I

    .line 93
    return-void
.end method

.method private static a(Ljava/lang/String;)Lorg/jshybugger/de;
    .registers 14

    .prologue
    const/4 v1, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    .line 127
    .line 130
    const/16 v0, 0x2c

    invoke-static {p0, v0}, Lorg/jshybugger/gt;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v0, 0x0

    move v5, v0

    move v2, v6

    move v3, v6

    move v4, v6

    :goto_f
    if-ge v5, v8, :cond_62

    aget-object v9, v7, v5

    .line 131
    const/high16 v0, 0x3f800000    # 1.0f

    .line 132
    const/16 v10, 0x3d

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 133
    const/4 v11, -0x1

    if-eq v10, v11, :cond_2c

    .line 135
    add-int/lit8 v0, v10, 0x1

    :try_start_20
    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_2b} :catch_3f

    move-result v0

    .line 141
    :cond_2c
    :goto_2c
    const-string v10, "*"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_42

    move v12, v2

    move v2, v3

    move v3, v0

    move v0, v12

    .line 130
    :goto_38
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    goto :goto_f

    .line 138
    :catch_3f
    move-exception v0

    move v0, v1

    goto :goto_2c

    .line 143
    :cond_42
    const-string v10, "gzip"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_53

    cmpl-float v10, v0, v3

    if-lez v10, :cond_53

    move v3, v4

    move v12, v0

    move v0, v2

    move v2, v12

    .line 144
    goto :goto_38

    .line 145
    :cond_53
    const-string v10, "deflate"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_88

    cmpl-float v9, v0, v2

    if-lez v9, :cond_88

    move v2, v3

    move v3, v4

    .line 146
    goto :goto_38

    .line 149
    :cond_62
    cmpl-float v0, v3, v1

    if-gtz v0, :cond_6a

    cmpl-float v0, v2, v1

    if-lez v0, :cond_74

    .line 150
    :cond_6a
    cmpl-float v0, v3, v2

    if-ltz v0, :cond_71

    .line 151
    sget-object v0, Lorg/jshybugger/de;->b:Lorg/jshybugger/de;

    .line 164
    :goto_70
    return-object v0

    .line 153
    :cond_71
    sget-object v0, Lorg/jshybugger/de;->a:Lorg/jshybugger/de;

    goto :goto_70

    .line 156
    :cond_74
    cmpl-float v0, v4, v1

    if-lez v0, :cond_86

    .line 157
    cmpl-float v0, v3, v6

    if-nez v0, :cond_7f

    .line 158
    sget-object v0, Lorg/jshybugger/de;->b:Lorg/jshybugger/de;

    goto :goto_70

    .line 160
    :cond_7f
    cmpl-float v0, v2, v6

    if-nez v0, :cond_86

    .line 161
    sget-object v0, Lorg/jshybugger/de;->a:Lorg/jshybugger/de;

    goto :goto_70

    .line 164
    :cond_86
    const/4 v0, 0x0

    goto :goto_70

    :cond_88
    move v0, v2

    move v2, v3

    move v3, v4

    goto :goto_38
.end method


# virtual methods
.method protected final a(Lorg/jshybugger/dX;Ljava/lang/String;)Lorg/jshybugger/dD;
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-interface {p1}, Lorg/jshybugger/dX;->f()Lorg/jshybugger/dJ;

    move-result-object v1

    const-string v2, "Content-Encoding"

    invoke-virtual {v1, v2}, Lorg/jshybugger/dJ;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_16

    const-string v2, "identity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 120
    :cond_15
    :goto_15
    return-object v0

    .line 103
    :cond_16
    invoke-static {p2}, Lorg/jshybugger/dx;->a(Ljava/lang/String;)Lorg/jshybugger/de;

    move-result-object v2

    .line 104
    if-eqz v2, :cond_15

    .line 109
    sget-object v0, Lorg/jshybugger/dy;->a:[I

    invoke-virtual {v2}, Lorg/jshybugger/de;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4e

    .line 117
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 111
    :pswitch_2d
    const-string v0, "gzip"

    .line 120
    :goto_2f
    new-instance v1, Lorg/jshybugger/dD;

    new-instance v3, Lorg/jshybugger/bI;

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/jshybugger/at;

    const/4 v5, 0x0

    iget v6, p0, Lorg/jshybugger/dx;->b:I

    iget v7, p0, Lorg/jshybugger/dx;->c:I

    iget v8, p0, Lorg/jshybugger/dx;->d:I

    invoke-static {v2, v6, v7, v8}, Lorg/jshybugger/cZ;->a(Lorg/jshybugger/de;III)Lorg/jshybugger/dc;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-direct {v3, v4}, Lorg/jshybugger/bI;-><init>([Lorg/jshybugger/at;)V

    invoke-direct {v1, v0, v3}, Lorg/jshybugger/dD;-><init>(Ljava/lang/String;Lorg/jshybugger/bI;)V

    move-object v0, v1

    goto :goto_15

    .line 114
    :pswitch_4b
    const-string v0, "deflate"

    goto :goto_2f

    .line 109
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_4b
    .end packed-switch
.end method
