.class public Lorg/apache/commons/lang/math/IEEE754rUtils;
.super Ljava/lang/Object;
.source "IEEE754rUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static max(DD)D
    .registers 6
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 222
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 228
    .end local p2    # "b":D
    :goto_6
    return-wide p2

    .line 225
    .restart local p2    # "b":D
    :cond_7
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_f

    move-wide p2, p0

    .line 226
    goto :goto_6

    .line 228
    :cond_f
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p2

    goto :goto_6
.end method

.method public static max(DDD)D
    .registers 8
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .prologue
    .line 209
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang/math/IEEE754rUtils;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Lorg/apache/commons/lang/math/IEEE754rUtils;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static max([D)D
    .registers 7
    .param p0, "array"    # [D

    .prologue
    .line 158
    if-nez p0, :cond_a

    .line 159
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "The Array must not be null"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :cond_a
    array-length v1, p0

    if-nez v1, :cond_15

    .line 161
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Array cannot be empty."

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    :cond_15
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    .line 166
    .local v2, "max":D
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_19
    array-length v1, p0

    if-ge v0, v1, :cond_25

    .line 167
    aget-wide v4, p0, v0

    invoke-static {v4, v5, v2, v3}, Lorg/apache/commons/lang/math/IEEE754rUtils;->max(DD)D

    move-result-wide v2

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 170
    :cond_25
    return-wide v2
.end method

.method public static max(FF)F
    .registers 3
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 256
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 262
    .end local p1    # "b":F
    :goto_6
    return p1

    .line 259
    .restart local p1    # "b":F
    :cond_7
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_f

    move p1, p0

    .line 260
    goto :goto_6

    .line 262
    :cond_f
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_6
.end method

.method public static max(FFF)F
    .registers 4
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .prologue
    .line 243
    invoke-static {p0, p1}, Lorg/apache/commons/lang/math/IEEE754rUtils;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Lorg/apache/commons/lang/math/IEEE754rUtils;->max(FF)F

    move-result v0

    return v0
.end method

.method public static max([F)F
    .registers 5
    .param p0, "array"    # [F

    .prologue
    .line 183
    if-nez p0, :cond_a

    .line 184
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 185
    :cond_a
    array-length v2, p0

    if-nez v2, :cond_15

    .line 186
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 190
    :cond_15
    const/4 v2, 0x0

    aget v1, p0, v2

    .line 191
    .local v1, "max":F
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_19
    array-length v2, p0

    if-ge v0, v2, :cond_25

    .line 192
    aget v2, p0, v0

    invoke-static {v2, v1}, Lorg/apache/commons/lang/math/IEEE754rUtils;->max(FF)F

    move-result v1

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 195
    :cond_25
    return v1
.end method

.method public static min(DD)D
    .registers 6
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 104
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 110
    .end local p2    # "b":D
    :goto_6
    return-wide p2

    .line 107
    .restart local p2    # "b":D
    :cond_7
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_f

    move-wide p2, p0

    .line 108
    goto :goto_6

    .line 110
    :cond_f
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p2

    goto :goto_6
.end method

.method public static min(DDD)D
    .registers 8
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .prologue
    .line 91
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang/math/IEEE754rUtils;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Lorg/apache/commons/lang/math/IEEE754rUtils;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static min([D)D
    .registers 7
    .param p0, "array"    # [D

    .prologue
    .line 40
    if-nez p0, :cond_a

    .line 41
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "The Array must not be null"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_a
    array-length v1, p0

    if-nez v1, :cond_15

    .line 43
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Array cannot be empty."

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_15
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    .line 48
    .local v2, "min":D
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_19
    array-length v1, p0

    if-ge v0, v1, :cond_25

    .line 49
    aget-wide v4, p0, v0

    invoke-static {v4, v5, v2, v3}, Lorg/apache/commons/lang/math/IEEE754rUtils;->min(DD)D

    move-result-wide v2

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 52
    :cond_25
    return-wide v2
.end method

.method public static min(FF)F
    .registers 3
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 138
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 144
    .end local p1    # "b":F
    :goto_6
    return p1

    .line 141
    .restart local p1    # "b":F
    :cond_7
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_f

    move p1, p0

    .line 142
    goto :goto_6

    .line 144
    :cond_f
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_6
.end method

.method public static min(FFF)F
    .registers 4
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .prologue
    .line 125
    invoke-static {p0, p1}, Lorg/apache/commons/lang/math/IEEE754rUtils;->min(FF)F

    move-result v0

    invoke-static {v0, p2}, Lorg/apache/commons/lang/math/IEEE754rUtils;->min(FF)F

    move-result v0

    return v0
.end method

.method public static min([F)F
    .registers 5
    .param p0, "array"    # [F

    .prologue
    .line 65
    if-nez p0, :cond_a

    .line 66
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_a
    array-length v2, p0

    if-nez v2, :cond_15

    .line 68
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_15
    const/4 v2, 0x0

    aget v1, p0, v2

    .line 73
    .local v1, "min":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_19
    array-length v2, p0

    if-ge v0, v2, :cond_25

    .line 74
    aget v2, p0, v0

    invoke-static {v2, v1}, Lorg/apache/commons/lang/math/IEEE754rUtils;->min(FF)F

    move-result v1

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 77
    :cond_25
    return v1
.end method
