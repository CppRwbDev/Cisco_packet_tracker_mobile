.class public final Lorg/apache/commons/lang/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static compare(DD)I
    .registers 12
    .param p0, "lhs"    # D
    .param p2, "rhs"    # D

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 494
    cmpg-double v6, p0, p2

    if-gez v6, :cond_7

    .line 518
    :cond_6
    :goto_6
    return v4

    .line 497
    :cond_7
    cmpl-double v6, p0, p2

    if-lez v6, :cond_d

    move v4, v5

    .line 498
    goto :goto_6

    .line 504
    :cond_d
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 505
    .local v0, "lhsBits":J
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 506
    .local v2, "rhsBits":J
    cmp-long v6, v0, v2

    if-nez v6, :cond_1b

    .line 507
    const/4 v4, 0x0

    goto :goto_6

    .line 515
    :cond_1b
    cmp-long v6, v0, v2

    if-ltz v6, :cond_6

    move v4, v5

    .line 518
    goto :goto_6
.end method

.method public static compare(FF)I
    .registers 7
    .param p0, "lhs"    # F
    .param p1, "rhs"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 555
    cmpg-float v4, p0, p1

    if-gez v4, :cond_7

    .line 579
    :cond_6
    :goto_6
    return v2

    .line 558
    :cond_7
    cmpl-float v4, p0, p1

    if-lez v4, :cond_d

    move v2, v3

    .line 559
    goto :goto_6

    .line 565
    :cond_d
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 566
    .local v0, "lhsBits":I
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 567
    .local v1, "rhsBits":I
    if-ne v0, v1, :cond_19

    .line 568
    const/4 v2, 0x0

    goto :goto_6

    .line 576
    :cond_19
    if-lt v0, v1, :cond_6

    move v2, v3

    .line 579
    goto :goto_6
.end method

.method public static createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 2
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    .line 379
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 380
    .local v0, "bd":Ljava/math/BigDecimal;
    return-object v0
.end method

.method public static createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 2
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    .line 367
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 368
    .local v0, "bi":Ljava/math/BigInteger;
    return-object v0
.end method

.method public static createDouble(Ljava/lang/String;)Ljava/lang/Double;
    .registers 2
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    .line 332
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static createFloat(Ljava/lang/String;)Ljava/lang/Float;
    .registers 2
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    .line 321
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public static createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    .line 345
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static createLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 2
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    .line 356
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static createNumber(Ljava/lang/String;)Ljava/lang/Number;
    .registers 15
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 139
    if-nez p0, :cond_4

    .line 140
    const/4 v6, 0x0

    .line 284
    :cond_3
    :goto_3
    return-object v6

    .line 142
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_12

    .line 143
    new-instance v10, Ljava/lang/NumberFormatException;

    const-string v11, "\"\" is not a valid number."

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 145
    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3d

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_3d

    .line 146
    new-instance v10, Ljava/lang/NumberFormatException;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " is not a valid number."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 148
    :cond_3d
    const-string v10, "--"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_47

    .line 153
    const/4 v6, 0x0

    goto :goto_3

    .line 155
    :cond_47
    const-string v10, "0x"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_57

    const-string v10, "-0x"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5c

    .line 156
    :cond_57
    invoke-static {p0}, Lorg/apache/commons/lang/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_3

    .line 158
    :cond_5c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 162
    .local v7, "lastChar":C
    const/16 v10, 0x2e

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 163
    .local v3, "decPos":I
    const/16 v10, 0x65

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/16 v11, 0x45

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v5, v10, 0x1

    .line 165
    .local v5, "expPos":I
    const/4 v10, -0x1

    if-le v3, v10, :cond_ff

    .line 167
    const/4 v10, -0x1

    if-le v5, v10, :cond_f8

    .line 168
    if-ge v5, v3, :cond_9c

    .line 169
    new-instance v10, Ljava/lang/NumberFormatException;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " is not a valid number."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 171
    :cond_9c
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p0, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "dec":Ljava/lang/String;
    :goto_a2
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 184
    .local v8, "mant":Ljava/lang/String;
    :goto_a7
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_189

    .line 185
    const/4 v10, -0x1

    if-le v5, v10, :cond_10b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v5, v10, :cond_10b

    .line 186
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, "exp":Ljava/lang/String;
    :goto_c4
    const/4 v10, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 192
    .local v9, "numeric":Ljava/lang/String;
    invoke-static {v8}, Lorg/apache/commons/lang/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10d

    invoke-static {v4}, Lorg/apache/commons/lang/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10d

    const/4 v0, 0x1

    .line 193
    .local v0, "allZeros":Z
    :goto_dc
    sparse-switch v7, :sswitch_data_204

    .line 239
    :goto_df
    new-instance v10, Ljava/lang/NumberFormatException;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " is not a valid number."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 173
    .end local v0    # "allZeros":Z
    .end local v2    # "dec":Ljava/lang/String;
    .end local v4    # "exp":Ljava/lang/String;
    .end local v8    # "mant":Ljava/lang/String;
    .end local v9    # "numeric":Ljava/lang/String;
    :cond_f8
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "dec":Ljava/lang/String;
    goto :goto_a2

    .line 177
    .end local v2    # "dec":Ljava/lang/String;
    :cond_ff
    const/4 v10, -0x1

    if-le v5, v10, :cond_109

    .line 178
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 182
    .restart local v8    # "mant":Ljava/lang/String;
    :goto_107
    const/4 v2, 0x0

    .restart local v2    # "dec":Ljava/lang/String;
    goto :goto_a7

    .line 180
    .end local v2    # "dec":Ljava/lang/String;
    .end local v8    # "mant":Ljava/lang/String;
    :cond_109
    move-object v8, p0

    .restart local v8    # "mant":Ljava/lang/String;
    goto :goto_107

    .line 188
    .restart local v2    # "dec":Ljava/lang/String;
    :cond_10b
    const/4 v4, 0x0

    .restart local v4    # "exp":Ljava/lang/String;
    goto :goto_c4

    .line 192
    .restart local v9    # "numeric":Ljava/lang/String;
    :cond_10d
    const/4 v0, 0x0

    goto :goto_dc

    .line 196
    .restart local v0    # "allZeros":Z
    :sswitch_10f
    if-nez v2, :cond_13a

    if-nez v4, :cond_13a

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_127

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/commons/lang/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_12d

    :cond_127
    invoke-static {v9}, Lorg/apache/commons/lang/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13a

    .line 200
    :cond_12d
    :try_start_12d
    invoke-static {v9}, Lorg/apache/commons/lang/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_130
    .catch Ljava/lang/NumberFormatException; {:try_start_12d .. :try_end_130} :catch_133

    move-result-object v6

    goto/16 :goto_3

    .line 201
    :catch_133
    move-exception v10

    .line 204
    invoke-static {v9}, Lorg/apache/commons/lang/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    goto/16 :goto_3

    .line 207
    :cond_13a
    new-instance v10, Ljava/lang/NumberFormatException;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " is not a valid number."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 211
    :sswitch_153
    :try_start_153
    invoke-static {v9}, Lorg/apache/commons/lang/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    .line 212
    .local v6, "f":Ljava/lang/Float;
    invoke-virtual {v6}, Ljava/lang/Float;->isInfinite()Z

    move-result v10

    if-nez v10, :cond_168

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F
    :try_end_160
    .catch Ljava/lang/NumberFormatException; {:try_start_153 .. :try_end_160} :catch_201

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_3

    if-nez v0, :cond_3

    .line 225
    .end local v6    # "f":Ljava/lang/Float;
    :cond_168
    :goto_168
    :sswitch_168
    :try_start_168
    invoke-static {v9}, Lorg/apache/commons/lang/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 226
    .local v1, "d":Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v10

    if-nez v10, :cond_183

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F
    :try_end_175
    .catch Ljava/lang/NumberFormatException; {:try_start_168 .. :try_end_175} :catch_182

    move-result v10

    float-to-double v10, v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_17f

    if-eqz v0, :cond_183

    :cond_17f
    move-object v6, v1

    .line 227
    goto/16 :goto_3

    .line 229
    .end local v1    # "d":Ljava/lang/Double;
    :catch_182
    move-exception v10

    .line 233
    :cond_183
    :try_start_183
    invoke-static {v9}, Lorg/apache/commons/lang/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    :try_end_186
    .catch Ljava/lang/NumberFormatException; {:try_start_183 .. :try_end_186} :catch_1fc

    move-result-object v6

    goto/16 :goto_3

    .line 245
    .end local v0    # "allZeros":Z
    .end local v4    # "exp":Ljava/lang/String;
    .end local v9    # "numeric":Ljava/lang/String;
    :cond_189
    const/4 v10, -0x1

    if-le v5, v10, :cond_1a8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v5, v10, :cond_1a8

    .line 246
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 250
    .restart local v4    # "exp":Ljava/lang/String;
    :goto_19e
    if-nez v2, :cond_1b8

    if-nez v4, :cond_1b8

    .line 253
    :try_start_1a2
    invoke-static {p0}, Lorg/apache/commons/lang/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_1a5
    .catch Ljava/lang/NumberFormatException; {:try_start_1a2 .. :try_end_1a5} :catch_1aa

    move-result-object v6

    goto/16 :goto_3

    .line 248
    .end local v4    # "exp":Ljava/lang/String;
    :cond_1a8
    const/4 v4, 0x0

    .restart local v4    # "exp":Ljava/lang/String;
    goto :goto_19e

    .line 254
    :catch_1aa
    move-exception v10

    .line 258
    :try_start_1ab
    invoke-static {p0}, Lorg/apache/commons/lang/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_1ae
    .catch Ljava/lang/NumberFormatException; {:try_start_1ab .. :try_end_1ae} :catch_1b1

    move-result-object v6

    goto/16 :goto_3

    .line 259
    :catch_1b1
    move-exception v10

    .line 262
    invoke-static {p0}, Lorg/apache/commons/lang/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    goto/16 :goto_3

    .line 266
    :cond_1b8
    invoke-static {v8}, Lorg/apache/commons/lang/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1f3

    invoke-static {v4}, Lorg/apache/commons/lang/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1f3

    const/4 v0, 0x1

    .line 268
    .restart local v0    # "allZeros":Z
    :goto_1c5
    :try_start_1c5
    invoke-static {p0}, Lorg/apache/commons/lang/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    .line 269
    .restart local v6    # "f":Ljava/lang/Float;
    invoke-virtual {v6}, Ljava/lang/Float;->isInfinite()Z

    move-result v10

    if-nez v10, :cond_1da

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F
    :try_end_1d2
    .catch Ljava/lang/NumberFormatException; {:try_start_1c5 .. :try_end_1d2} :catch_1ff

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_3

    if-nez v0, :cond_3

    .line 276
    .end local v6    # "f":Ljava/lang/Float;
    :cond_1da
    :goto_1da
    :try_start_1da
    invoke-static {p0}, Lorg/apache/commons/lang/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 277
    .restart local v1    # "d":Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v10

    if-nez v10, :cond_1f6

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
    :try_end_1e7
    .catch Ljava/lang/NumberFormatException; {:try_start_1da .. :try_end_1e7} :catch_1f5

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_1f0

    if-eqz v0, :cond_1f6

    :cond_1f0
    move-object v6, v1

    .line 278
    goto/16 :goto_3

    .line 266
    .end local v0    # "allZeros":Z
    .end local v1    # "d":Ljava/lang/Double;
    :cond_1f3
    const/4 v0, 0x0

    goto :goto_1c5

    .line 280
    .restart local v0    # "allZeros":Z
    :catch_1f5
    move-exception v10

    .line 284
    :cond_1f6
    invoke-static {p0}, Lorg/apache/commons/lang/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v6

    goto/16 :goto_3

    .line 234
    .restart local v9    # "numeric":Ljava/lang/String;
    :catch_1fc
    move-exception v10

    goto/16 :goto_df

    .line 272
    .end local v9    # "numeric":Ljava/lang/String;
    :catch_1ff
    move-exception v10

    goto :goto_1da

    .line 218
    .restart local v9    # "numeric":Ljava/lang/String;
    :catch_201
    move-exception v10

    goto/16 :goto_168

    .line 193
    :sswitch_data_204
    .sparse-switch
        0x44 -> :sswitch_168
        0x46 -> :sswitch_153
        0x4c -> :sswitch_10f
        0x64 -> :sswitch_168
        0x66 -> :sswitch_153
        0x6c -> :sswitch_10f
    .end sparse-switch
.end method

.method private static isAllZeros(Ljava/lang/String;)Z
    .registers 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 300
    if-nez p0, :cond_5

    .line 308
    :cond_4
    :goto_4
    return v1

    .line 303
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_1a

    .line 304
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_17

    move v1, v2

    .line 305
    goto :goto_4

    .line 303
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 308
    :cond_1a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public static isDigits(Ljava/lang/String;)Z
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 596
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    .line 604
    :cond_9
    :goto_9
    return v1

    .line 599
    :cond_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1e

    .line 600
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 604
    :cond_1e
    const/4 v1, 0x1

    goto :goto_9
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .registers 16
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v14, 0x2d

    const/16 v13, 0x39

    const/16 v12, 0x30

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 621
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 713
    :cond_e
    :goto_e
    return v9

    .line 624
    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 625
    .local v1, "chars":[C
    array-length v7, v1

    .line 626
    .local v7, "sz":I
    const/4 v4, 0x0

    .line 627
    .local v4, "hasExp":Z
    const/4 v3, 0x0

    .line 628
    .local v3, "hasDecPoint":Z
    const/4 v0, 0x0

    .line 629
    .local v0, "allowSigns":Z
    const/4 v2, 0x0

    .line 631
    .local v2, "foundDigit":Z
    aget-char v10, v1, v9

    if-ne v10, v14, :cond_57

    move v6, v8

    .line 632
    .local v6, "start":I
    :goto_1d
    add-int/lit8 v10, v6, 0x1

    if-le v7, v10, :cond_5b

    .line 633
    aget-char v10, v1, v6

    if-ne v10, v12, :cond_5b

    add-int/lit8 v10, v6, 0x1

    aget-char v10, v1, v10

    const/16 v11, 0x78

    if-ne v10, v11, :cond_5b

    .line 634
    add-int/lit8 v5, v6, 0x2

    .line 635
    .local v5, "i":I
    if-eq v5, v7, :cond_e

    .line 639
    :goto_31
    array-length v10, v1

    if-ge v5, v10, :cond_59

    .line 640
    aget-char v10, v1, v5

    if-lt v10, v12, :cond_3c

    aget-char v10, v1, v5

    if-le v10, v13, :cond_54

    :cond_3c
    aget-char v10, v1, v5

    const/16 v11, 0x61

    if-lt v10, v11, :cond_48

    aget-char v10, v1, v5

    const/16 v11, 0x66

    if-le v10, v11, :cond_54

    :cond_48
    aget-char v10, v1, v5

    const/16 v11, 0x41

    if-lt v10, v11, :cond_e

    aget-char v10, v1, v5

    const/16 v11, 0x46

    if-gt v10, v11, :cond_e

    .line 639
    :cond_54
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .end local v5    # "i":I
    .end local v6    # "start":I
    :cond_57
    move v6, v9

    .line 631
    goto :goto_1d

    .restart local v5    # "i":I
    .restart local v6    # "start":I
    :cond_59
    move v9, v8

    .line 646
    goto :goto_e

    .line 649
    .end local v5    # "i":I
    :cond_5b
    add-int/lit8 v7, v7, -0x1

    .line 651
    move v5, v6

    .line 654
    .restart local v5    # "i":I
    :goto_5e
    if-lt v5, v7, :cond_68

    add-int/lit8 v10, v7, 0x1

    if-ge v5, v10, :cond_a3

    if-eqz v0, :cond_a3

    if-nez v2, :cond_a3

    .line 655
    :cond_68
    aget-char v10, v1, v5

    if-lt v10, v12, :cond_75

    aget-char v10, v1, v5

    if-gt v10, v13, :cond_75

    .line 656
    const/4 v2, 0x1

    .line 657
    const/4 v0, 0x0

    .line 685
    :goto_72
    add-int/lit8 v5, v5, 0x1

    goto :goto_5e

    .line 659
    :cond_75
    aget-char v10, v1, v5

    const/16 v11, 0x2e

    if-ne v10, v11, :cond_81

    .line 660
    if-nez v3, :cond_e

    if-nez v4, :cond_e

    .line 664
    const/4 v3, 0x1

    goto :goto_72

    .line 665
    :cond_81
    aget-char v10, v1, v5

    const/16 v11, 0x65

    if-eq v10, v11, :cond_8d

    aget-char v10, v1, v5

    const/16 v11, 0x45

    if-ne v10, v11, :cond_94

    .line 667
    :cond_8d
    if-nez v4, :cond_e

    .line 671
    if-eqz v2, :cond_e

    .line 674
    const/4 v4, 0x1

    .line 675
    const/4 v0, 0x1

    goto :goto_72

    .line 676
    :cond_94
    aget-char v10, v1, v5

    const/16 v11, 0x2b

    if-eq v10, v11, :cond_9e

    aget-char v10, v1, v5

    if-ne v10, v14, :cond_e

    .line 677
    :cond_9e
    if-eqz v0, :cond_e

    .line 680
    const/4 v0, 0x0

    .line 681
    const/4 v2, 0x0

    goto :goto_72

    .line 687
    :cond_a3
    array-length v10, v1

    if-ge v5, v10, :cond_ef

    .line 688
    aget-char v10, v1, v5

    if-lt v10, v12, :cond_b1

    aget-char v10, v1, v5

    if-gt v10, v13, :cond_b1

    move v9, v8

    .line 690
    goto/16 :goto_e

    .line 692
    :cond_b1
    aget-char v10, v1, v5

    const/16 v11, 0x65

    if-eq v10, v11, :cond_e

    aget-char v10, v1, v5

    const/16 v11, 0x45

    if-eq v10, v11, :cond_e

    .line 696
    if-nez v0, :cond_da

    aget-char v10, v1, v5

    const/16 v11, 0x64

    if-eq v10, v11, :cond_d7

    aget-char v10, v1, v5

    const/16 v11, 0x44

    if-eq v10, v11, :cond_d7

    aget-char v10, v1, v5

    const/16 v11, 0x66

    if-eq v10, v11, :cond_d7

    aget-char v10, v1, v5

    const/16 v11, 0x46

    if-ne v10, v11, :cond_da

    :cond_d7
    move v9, v2

    .line 701
    goto/16 :goto_e

    .line 703
    :cond_da
    aget-char v10, v1, v5

    const/16 v11, 0x6c

    if-eq v10, v11, :cond_e6

    aget-char v10, v1, v5

    const/16 v11, 0x4c

    if-ne v10, v11, :cond_e

    .line 706
    :cond_e6
    if-eqz v2, :cond_ed

    if-nez v4, :cond_ed

    :goto_ea
    move v9, v8

    goto/16 :goto_e

    :cond_ed
    move v8, v9

    goto :goto_ea

    .line 713
    :cond_ef
    if-nez v0, :cond_f6

    if-eqz v2, :cond_f6

    :goto_f3
    move v9, v8

    goto/16 :goto_e

    :cond_f6
    move v8, v9

    goto :goto_f3
.end method

.method public static maximum(III)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .prologue
    .line 448
    if-le p1, p0, :cond_3

    .line 449
    move p0, p1

    .line 451
    :cond_3
    if-le p2, p0, :cond_6

    .line 452
    move p0, p2

    .line 454
    :cond_6
    return p0
.end method

.method public static maximum(JJJ)J
    .registers 8
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .prologue
    .line 430
    cmp-long v0, p2, p0

    if-lez v0, :cond_5

    .line 431
    move-wide p0, p2

    .line 433
    :cond_5
    cmp-long v0, p4, p0

    if-lez v0, :cond_a

    .line 434
    move-wide p0, p4

    .line 436
    :cond_a
    return-wide p0
.end method

.method public static minimum(III)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .prologue
    .line 412
    if-ge p1, p0, :cond_3

    .line 413
    move p0, p1

    .line 415
    :cond_3
    if-ge p2, p0, :cond_6

    .line 416
    move p0, p2

    .line 418
    :cond_6
    return p0
.end method

.method public static minimum(JJJ)J
    .registers 8
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .prologue
    .line 394
    cmp-long v0, p2, p0

    if-gez v0, :cond_5

    .line 395
    move-wide p0, p2

    .line 397
    :cond_5
    cmp-long v0, p4, p0

    if-gez v0, :cond_a

    .line 398
    move-wide p0, p4

    .line 400
    :cond_a
    return-wide p0
.end method

.method public static stringToInt(Ljava/lang/String;)I
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/NumberUtils;->stringToInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static stringToInt(Ljava/lang/String;I)I
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 74
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_5

    move-result p1

    .line 76
    .end local p1    # "defaultValue":I
    :goto_4
    return p1

    .line 75
    .restart local p1    # "defaultValue":I
    :catch_5
    move-exception v0

    .line 76
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_4
.end method
