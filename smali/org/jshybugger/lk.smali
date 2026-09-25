.class public final Lorg/jshybugger/lK;
.super Ljava/lang/Object;
.source "ObjArray.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:I

.field private transient b:Ljava/lang/Object;

.field private transient c:Ljava/lang/Object;

.field private transient d:Ljava/lang/Object;

.field private transient e:Ljava/lang/Object;

.field private transient f:Ljava/lang/Object;

.field private transient g:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([Ljava/lang/Object;I)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 262
    iget v0, p0, Lorg/jshybugger/lK;->a:I

    .line 263
    packed-switch v0, :pswitch_data_28

    .line 265
    iget-object v1, p0, Lorg/jshybugger/lK;->g:[Ljava/lang/Object;

    const/4 v2, 0x5

    add-int/lit8 v0, v0, -0x5

    invoke-static {v1, v3, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    :pswitch_e
    const/4 v0, 0x4

    iget-object v1, p0, Lorg/jshybugger/lK;->f:Ljava/lang/Object;

    aput-object v1, p1, v0

    .line 268
    :pswitch_13
    const/4 v0, 0x3

    iget-object v1, p0, Lorg/jshybugger/lK;->e:Ljava/lang/Object;

    aput-object v1, p1, v0

    .line 269
    :pswitch_18
    const/4 v0, 0x2

    iget-object v1, p0, Lorg/jshybugger/lK;->d:Ljava/lang/Object;

    aput-object v1, p1, v0

    .line 270
    :pswitch_1d
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/jshybugger/lK;->c:Ljava/lang/Object;

    aput-object v1, p1, v0

    .line 271
    :pswitch_22
    iget-object v0, p0, Lorg/jshybugger/lK;->b:Ljava/lang/Object;

    aput-object v0, p1, v3

    .line 274
    :pswitch_26
    return-void

    .line 263
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_26
        :pswitch_22
        :pswitch_1d
        :pswitch_18
        :pswitch_13
        :pswitch_e
    .end packed-switch
.end method

.method private b(I)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 76
    packed-switch p1, :pswitch_data_1a

    .line 83
    iget-object v0, p0, Lorg/jshybugger/lK;->g:[Ljava/lang/Object;

    add-int/lit8 v1, p1, -0x5

    aget-object v0, v0, v1

    :goto_9
    return-object v0

    .line 77
    :pswitch_a
    iget-object v0, p0, Lorg/jshybugger/lK;->b:Ljava/lang/Object;

    goto :goto_9

    .line 78
    :pswitch_d
    iget-object v0, p0, Lorg/jshybugger/lK;->c:Ljava/lang/Object;

    goto :goto_9

    .line 79
    :pswitch_10
    iget-object v0, p0, Lorg/jshybugger/lK;->d:Ljava/lang/Object;

    goto :goto_9

    .line 80
    :pswitch_13
    iget-object v0, p0, Lorg/jshybugger/lK;->e:Ljava/lang/Object;

    goto :goto_9

    .line 81
    :pswitch_16
    iget-object v0, p0, Lorg/jshybugger/lK;->f:Ljava/lang/Object;

    goto :goto_9

    .line 76
    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_a
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
    .end packed-switch
.end method

.method private static c()Ljava/lang/RuntimeException;
    .registers 2

    .prologue
    .line 316
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Empty stack"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lorg/jshybugger/lK;->a:I

    return v0
.end method

.method public final a(I)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 63
    if-ltz p1, :cond_6

    iget v0, p0, Lorg/jshybugger/lK;->a:I

    if-lt p1, v0, :cond_2b

    :cond_6
    iget v0, p0, Lorg/jshybugger/lK;->a:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u2209 [0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_2b
    invoke-direct {p0, p1}, Lorg/jshybugger/lK;->b(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0xa

    const/4 v4, 0x5

    .line 158
    iget v2, p0, Lorg/jshybugger/lK;->a:I

    .line 160
    if-lt v2, v4, :cond_1e

    .line 161
    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v0, v0, -0x5

    if-gtz v0, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_14
    iget-object v3, p0, Lorg/jshybugger/lK;->g:[Ljava/lang/Object;

    if-nez v3, :cond_2c

    if-ge v1, v0, :cond_5b

    :goto_1a
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/jshybugger/lK;->g:[Ljava/lang/Object;

    .line 163
    :cond_1e
    :goto_1e
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lorg/jshybugger/lK;->a:I

    .line 164
    packed-switch v2, :pswitch_data_5e

    iget-object v0, p0, Lorg/jshybugger/lK;->g:[Ljava/lang/Object;

    add-int/lit8 v1, v2, -0x5

    aput-object p1, v0, v1

    .line 165
    :goto_2b
    return-void

    .line 161
    :cond_2c
    iget-object v3, p0, Lorg/jshybugger/lK;->g:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v3, v0, :cond_1e

    if-gt v3, v4, :cond_47

    :goto_33
    if-ge v1, v0, :cond_59

    :goto_35
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lorg/jshybugger/lK;->a:I

    if-le v1, v4, :cond_44

    iget-object v1, p0, Lorg/jshybugger/lK;->g:[Ljava/lang/Object;

    iget v3, p0, Lorg/jshybugger/lK;->a:I

    add-int/lit8 v3, v3, -0x5

    invoke-static {v1, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_44
    iput-object v0, p0, Lorg/jshybugger/lK;->g:[Ljava/lang/Object;

    goto :goto_1e

    :cond_47
    shl-int/lit8 v1, v3, 0x1

    goto :goto_33

    .line 164
    :pswitch_4a
    iput-object p1, p0, Lorg/jshybugger/lK;->b:Ljava/lang/Object;

    goto :goto_2b

    :pswitch_4d
    iput-object p1, p0, Lorg/jshybugger/lK;->c:Ljava/lang/Object;

    goto :goto_2b

    :pswitch_50
    iput-object p1, p0, Lorg/jshybugger/lK;->d:Ljava/lang/Object;

    goto :goto_2b

    :pswitch_53
    iput-object p1, p0, Lorg/jshybugger/lK;->e:Ljava/lang/Object;

    goto :goto_2b

    :pswitch_56
    iput-object p1, p0, Lorg/jshybugger/lK;->f:Ljava/lang/Object;

    goto :goto_2b

    :cond_59
    move v0, v1

    goto :goto_35

    :cond_5b
    move v0, v1

    goto :goto_1a

    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_4d
        :pswitch_50
        :pswitch_53
        :pswitch_56
    .end packed-switch
.end method

.method public final a([Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/lK;->a([Ljava/lang/Object;I)V

    .line 258
    return-void
.end method

.method public final b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 125
    iget v0, p0, Lorg/jshybugger/lK;->a:I

    .line 126
    if-nez v0, :cond_9

    invoke-static {}, Lorg/jshybugger/lK;->c()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 127
    :cond_9
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lorg/jshybugger/lK;->b(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
