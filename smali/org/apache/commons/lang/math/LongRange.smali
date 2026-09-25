.class public final Lorg/apache/commons/lang/math/LongRange;
.super Lorg/apache/commons/lang/math/Range;
.source "LongRange.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4158bbcfe9f0L


# instance fields
.field private transient hashCode:I

.field private final max:J

.field private transient maxObject:Ljava/lang/Long;

.field private final min:J

.field private transient minObject:Ljava/lang/Long;

.field private transient toString:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .registers 6
    .param p1, "number"    # J

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    .line 51
    iput-object v1, p0, Lorg/apache/commons/lang/math/LongRange;->minObject:Ljava/lang/Long;

    .line 55
    iput-object v1, p0, Lorg/apache/commons/lang/math/LongRange;->maxObject:Ljava/lang/Long;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    .line 63
    iput-object v1, p0, Lorg/apache/commons/lang/math/LongRange;->toString:Ljava/lang/String;

    .line 73
    iput-wide p1, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    .line 74
    iput-wide p1, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    .line 75
    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 8
    .param p1, "number1"    # J
    .param p3, "number2"    # J

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    .line 51
    iput-object v1, p0, Lorg/apache/commons/lang/math/LongRange;->minObject:Ljava/lang/Long;

    .line 55
    iput-object v1, p0, Lorg/apache/commons/lang/math/LongRange;->maxObject:Ljava/lang/Long;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    .line 63
    iput-object v1, p0, Lorg/apache/commons/lang/math/LongRange;->toString:Ljava/lang/String;

    .line 110
    cmp-long v0, p3, p1

    if-gez v0, :cond_16

    .line 111
    iput-wide p3, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    .line 112
    iput-wide p1, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    .line 117
    :goto_15
    return-void

    .line 114
    :cond_16
    iput-wide p1, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    .line 115
    iput-wide p3, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    goto :goto_15
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 4
    .param p1, "number"    # Ljava/lang/Number;

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    .line 51
    iput-object v1, p0, Lorg/apache/commons/lang/math/LongRange;->minObject:Ljava/lang/Long;

    .line 55
    iput-object v1, p0, Lorg/apache/commons/lang/math/LongRange;->maxObject:Ljava/lang/Long;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    .line 63
    iput-object v1, p0, Lorg/apache/commons/lang/math/LongRange;->toString:Ljava/lang/String;

    .line 87
    if-nez p1, :cond_17

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_17
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    .line 91
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    .line 92
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_30

    move-object v0, p1

    .line 93
    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->minObject:Ljava/lang/Long;

    .line 94
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "number":Ljava/lang/Number;
    iput-object p1, p0, Lorg/apache/commons/lang/math/LongRange;->maxObject:Ljava/lang/Long;

    .line 96
    :cond_30
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;)V
    .registers 9
    .param p1, "number1"    # Ljava/lang/Number;
    .param p2, "number2"    # Ljava/lang/Number;

    .prologue
    const/4 v5, 0x0

    .line 131
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    .line 51
    iput-object v5, p0, Lorg/apache/commons/lang/math/LongRange;->minObject:Ljava/lang/Long;

    .line 55
    iput-object v5, p0, Lorg/apache/commons/lang/math/LongRange;->maxObject:Ljava/lang/Long;

    .line 59
    const/4 v4, 0x0

    iput v4, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    .line 63
    iput-object v5, p0, Lorg/apache/commons/lang/math/LongRange;->toString:Ljava/lang/String;

    .line 132
    if-eqz p1, :cond_11

    if-nez p2, :cond_19

    .line 133
    :cond_11
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The numbers must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 135
    :cond_19
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 136
    .local v0, "number1val":J
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 137
    .local v2, "number2val":J
    cmp-long v4, v2, v0

    if-gez v4, :cond_3a

    .line 138
    iput-wide v2, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    .line 139
    iput-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    .line 140
    instance-of v4, p2, Ljava/lang/Long;

    if-eqz v4, :cond_31

    .line 141
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "number2":Ljava/lang/Number;
    iput-object p2, p0, Lorg/apache/commons/lang/math/LongRange;->minObject:Ljava/lang/Long;

    .line 143
    :cond_31
    instance-of v4, p1, Ljava/lang/Long;

    if-eqz v4, :cond_39

    .line 144
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "number1":Ljava/lang/Number;
    iput-object p1, p0, Lorg/apache/commons/lang/math/LongRange;->maxObject:Ljava/lang/Long;

    .line 156
    :cond_39
    :goto_39
    return-void

    .line 147
    .restart local p1    # "number1":Ljava/lang/Number;
    .restart local p2    # "number2":Ljava/lang/Number;
    :cond_3a
    iput-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    .line 148
    iput-wide v2, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    .line 149
    instance-of v4, p1, Ljava/lang/Long;

    if-eqz v4, :cond_46

    .line 150
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "number1":Ljava/lang/Number;
    iput-object p1, p0, Lorg/apache/commons/lang/math/LongRange;->minObject:Ljava/lang/Long;

    .line 152
    :cond_46
    instance-of v4, p2, Ljava/lang/Long;

    if-eqz v4, :cond_39

    .line 153
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "number2":Ljava/lang/Number;
    iput-object p2, p0, Lorg/apache/commons/lang/math/LongRange;->maxObject:Ljava/lang/Long;

    goto :goto_39
.end method


# virtual methods
.method public containsLong(J)Z
    .registers 6
    .param p1, "value"    # J

    .prologue
    .line 300
    iget-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_e

    iget-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public containsNumber(Ljava/lang/Number;)Z
    .registers 4
    .param p1, "number"    # Ljava/lang/Number;

    .prologue
    .line 282
    if-nez p1, :cond_4

    .line 283
    const/4 v0, 0x0

    .line 285
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang/math/LongRange;->containsLong(J)Z

    move-result v0

    goto :goto_3
.end method

.method public containsRange(Lorg/apache/commons/lang/math/Range;)Z
    .registers 6
    .param p1, "range"    # Lorg/apache/commons/lang/math/Range;

    .prologue
    const/4 v0, 0x0

    .line 317
    if-nez p1, :cond_4

    .line 320
    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1}, Lorg/apache/commons/lang/math/Range;->getMinimumLong()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/lang/math/LongRange;->containsLong(J)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lorg/apache/commons/lang/math/Range;->getMaximumLong()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/lang/math/LongRange;->containsLong(J)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 354
    if-ne p1, p0, :cond_5

    .line 361
    :cond_4
    :goto_4
    return v1

    .line 357
    :cond_5
    instance-of v3, p1, Lorg/apache/commons/lang/math/LongRange;

    if-nez v3, :cond_b

    move v1, v2

    .line 358
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 360
    check-cast v0, Lorg/apache/commons/lang/math/LongRange;

    .line 361
    .local v0, "range":Lorg/apache/commons/lang/math/LongRange;
    iget-wide v4, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    iget-wide v6, v0, Lorg/apache/commons/lang/math/LongRange;->min:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_1e

    iget-wide v4, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    iget-wide v6, v0, Lorg/apache/commons/lang/math/LongRange;->max:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    :cond_1e
    move v1, v2

    goto :goto_4
.end method

.method public getMaximumDouble()D
    .registers 3

    .prologue
    .line 255
    iget-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public getMaximumFloat()F
    .registers 3

    .prologue
    .line 266
    iget-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    long-to-float v0, v0

    return v0
.end method

.method public getMaximumInteger()I
    .registers 3

    .prologue
    .line 244
    iget-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    long-to-int v0, v0

    return v0
.end method

.method public getMaximumLong()J
    .registers 3

    .prologue
    .line 233
    iget-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    return-wide v0
.end method

.method public getMaximumNumber()Ljava/lang/Number;
    .registers 5

    .prologue
    .line 221
    iget-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->maxObject:Ljava/lang/Long;

    if-nez v0, :cond_d

    .line 222
    new-instance v0, Ljava/lang/Long;

    iget-wide v2, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->maxObject:Ljava/lang/Long;

    .line 224
    :cond_d
    iget-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->maxObject:Ljava/lang/Long;

    return-object v0
.end method

.method public getMinimumDouble()D
    .registers 3

    .prologue
    .line 201
    iget-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public getMinimumFloat()F
    .registers 3

    .prologue
    .line 212
    iget-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    long-to-float v0, v0

    return v0
.end method

.method public getMinimumInteger()I
    .registers 3

    .prologue
    .line 190
    iget-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    long-to-int v0, v0

    return v0
.end method

.method public getMinimumLong()J
    .registers 3

    .prologue
    .line 179
    iget-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    return-wide v0
.end method

.method public getMinimumNumber()Ljava/lang/Number;
    .registers 5

    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->minObject:Ljava/lang/Long;

    if-nez v0, :cond_d

    .line 168
    new-instance v0, Ljava/lang/Long;

    iget-wide v2, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->minObject:Ljava/lang/Long;

    .line 170
    :cond_d
    iget-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->minObject:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .registers 8

    .prologue
    const/16 v6, 0x20

    .line 370
    iget v0, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    if-nez v0, :cond_35

    .line 371
    const/16 v0, 0x11

    iput v0, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    .line 372
    iget v0, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    .line 373
    iget v0, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    iget-wide v2, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    iget-wide v4, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    shr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    .line 374
    iget v0, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    iget-wide v2, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    iget-wide v4, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    shr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    .line 376
    :cond_35
    iget v0, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    return v0
.end method

.method public overlapsRange(Lorg/apache/commons/lang/math/Range;)Z
    .registers 6
    .param p1, "range"    # Lorg/apache/commons/lang/math/Range;

    .prologue
    const/4 v0, 0x0

    .line 334
    if-nez p1, :cond_4

    .line 337
    :cond_3
    :goto_3
    return v0

    :cond_4
    iget-wide v2, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    invoke-virtual {p1, v2, v3}, Lorg/apache/commons/lang/math/Range;->containsLong(J)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-wide v2, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    invoke-virtual {p1, v2, v3}, Lorg/apache/commons/lang/math/Range;->containsLong(J)Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {p1}, Lorg/apache/commons/lang/math/Range;->getMinimumLong()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/lang/math/LongRange;->containsLong(J)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1e
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public toArray()[J
    .registers 7

    .prologue
    .line 406
    iget-wide v2, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    iget-wide v4, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    long-to-int v2, v2

    new-array v0, v2, [J

    .line 407
    .local v0, "array":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v2, v0

    if-ge v1, v2, :cond_18

    .line 408
    iget-wide v2, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 407
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 410
    :cond_18
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 387
    iget-object v1, p0, Lorg/apache/commons/lang/math/LongRange;->toString:Ljava/lang/String;

    if-nez v1, :cond_2a

    .line 388
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 389
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    const-string v1, "Range["

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 390
    iget-wide v2, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/lang/text/StrBuilder;->append(J)Lorg/apache/commons/lang/text/StrBuilder;

    .line 391
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 392
    iget-wide v2, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/lang/text/StrBuilder;->append(J)Lorg/apache/commons/lang/text/StrBuilder;

    .line 393
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 394
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/lang/math/LongRange;->toString:Ljava/lang/String;

    .line 396
    .end local v0    # "buf":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_2a
    iget-object v1, p0, Lorg/apache/commons/lang/math/LongRange;->toString:Ljava/lang/String;

    return-object v1
.end method
