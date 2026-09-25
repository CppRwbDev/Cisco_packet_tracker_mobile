.class public Lorg/apache/commons/lang/math/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# static fields
.field public static final BYTE_MINUS_ONE:Ljava/lang/Byte;

.field public static final BYTE_ONE:Ljava/lang/Byte;

.field public static final BYTE_ZERO:Ljava/lang/Byte;

.field public static final DOUBLE_MINUS_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ZERO:Ljava/lang/Double;

.field public static final FLOAT_MINUS_ONE:Ljava/lang/Float;

.field public static final FLOAT_ONE:Ljava/lang/Float;

.field public static final FLOAT_ZERO:Ljava/lang/Float;

.field public static final INTEGER_MINUS_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ZERO:Ljava/lang/Integer;

.field public static final LONG_MINUS_ONE:Ljava/lang/Long;

.field public static final LONG_ONE:Ljava/lang/Long;

.field public static final LONG_ZERO:Ljava/lang/Long;

.field public static final SHORT_MINUS_ONE:Ljava/lang/Short;

.field public static final SHORT_ONE:Ljava/lang/Short;

.field public static final SHORT_ZERO:Ljava/lang/Short;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 41
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->LONG_ZERO:Ljava/lang/Long;

    .line 43
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->LONG_ONE:Ljava/lang/Long;

    .line 45
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->LONG_MINUS_ONE:Ljava/lang/Long;

    .line 47
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    .line 49
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    .line 51
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->INTEGER_MINUS_ONE:Ljava/lang/Integer;

    .line 53
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, v4}, Ljava/lang/Short;-><init>(S)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->SHORT_ZERO:Ljava/lang/Short;

    .line 55
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, v5}, Ljava/lang/Short;-><init>(S)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->SHORT_ONE:Ljava/lang/Short;

    .line 57
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->SHORT_MINUS_ONE:Ljava/lang/Short;

    .line 59
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v4}, Ljava/lang/Byte;-><init>(B)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->BYTE_ZERO:Ljava/lang/Byte;

    .line 61
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v5}, Ljava/lang/Byte;-><init>(B)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->BYTE_ONE:Ljava/lang/Byte;

    .line 63
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->BYTE_MINUS_ONE:Ljava/lang/Byte;

    .line 65
    new-instance v0, Ljava/lang/Double;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->DOUBLE_ZERO:Ljava/lang/Double;

    .line 67
    new-instance v0, Ljava/lang/Double;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->DOUBLE_ONE:Ljava/lang/Double;

    .line 69
    new-instance v0, Ljava/lang/Double;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->DOUBLE_MINUS_ONE:Ljava/lang/Double;

    .line 71
    new-instance v0, Ljava/lang/Float;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->FLOAT_ZERO:Ljava/lang/Float;

    .line 73
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    .line 75
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->FLOAT_MINUS_ONE:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method public static compare(DD)I
    .registers 12
    .param p0, "lhs"    # D
    .param p2, "rhs"    # D

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 1363
    cmpg-double v6, p0, p2

    if-gez v6, :cond_7

    .line 1387
    :cond_6
    :goto_6
    return v4

    .line 1366
    :cond_7
    cmpl-double v6, p0, p2

    if-lez v6, :cond_d

    move v4, v5

    .line 1367
    goto :goto_6

    .line 1373
    :cond_d
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 1374
    .local v0, "lhsBits":J
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 1375
    .local v2, "rhsBits":J
    cmp-long v6, v0, v2

    if-nez v6, :cond_1b

    .line 1376
    const/4 v4, 0x0

    goto :goto_6

    .line 1384
    :cond_1b
    cmp-long v6, v0, v2

    if-ltz v6, :cond_6

    move v4, v5

    .line 1387
    goto :goto_6
.end method

.method public static compare(FF)I
    .registers 7
    .param p0, "lhs"    # F
    .param p1, "rhs"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 1424
    cmpg-float v4, p0, p1

    if-gez v4, :cond_7

    .line 1448
    :cond_6
    :goto_6
    return v2

    .line 1427
    :cond_7
    cmpl-float v4, p0, p1

    if-lez v4, :cond_d

    move v2, v3

    .line 1428
    goto :goto_6

    .line 1434
    :cond_d
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 1435
    .local v0, "lhsBits":I
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1436
    .local v1, "rhsBits":I
    if-ne v0, v1, :cond_19

    .line 1437
    const/4 v2, 0x0

    goto :goto_6

    .line 1445
    :cond_19
    if-lt v0, v1, :cond_6

    move v2, v3

    .line 1448
    goto :goto_6
.end method

.method public static createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 761
    if-nez p0, :cond_4

    .line 762
    const/4 v0, 0x0

    .line 768
    :goto_3
    return-object v0

    .line 765
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 766
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "A blank string is not a valid number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 768
    :cond_12
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 745
    if-nez p0, :cond_4

    .line 746
    const/4 v0, 0x0

    .line 748
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static createDouble(Ljava/lang/String;)Ljava/lang/Double;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 695
    if-nez p0, :cond_4

    .line 696
    const/4 v0, 0x0

    .line 698
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_3
.end method

.method public static createFloat(Ljava/lang/String;)Ljava/lang/Float;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 679
    if-nez p0, :cond_4

    .line 680
    const/4 v0, 0x0

    .line 682
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    goto :goto_3
.end method

.method public static createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 712
    if-nez p0, :cond_4

    .line 713
    const/4 v0, 0x0

    .line 716
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3
.end method

.method public static createLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 729
    if-nez p0, :cond_4

    .line 730
    const/4 v0, 0x0

    .line 732
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3
.end method

.method public static createNumber(Ljava/lang/String;)Ljava/lang/Number;
    .registers 15
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 497
    if-nez p0, :cond_4

    .line 498
    const/4 v6, 0x0

    .line 642
    :cond_3
    :goto_3
    return-object v6

    .line 500
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 501
    new-instance v10, Ljava/lang/NumberFormatException;

    const-string v11, "A blank string is not a valid number"

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 503
    :cond_12
    const-string v10, "--"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 508
    const/4 v6, 0x0

    goto :goto_3

    .line 510
    :cond_1c
    const-string v10, "0x"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2c

    const-string v10, "-0x"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_31

    .line 511
    :cond_2c
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_3

    .line 513
    :cond_31
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 517
    .local v7, "lastChar":C
    const/16 v10, 0x2e

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 518
    .local v3, "decPos":I
    const/16 v10, 0x65

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/16 v11, 0x45

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v5, v10, 0x1

    .line 520
    .local v5, "expPos":I
    const/4 v10, -0x1

    if-le v3, v10, :cond_de

    .line 522
    const/4 v10, -0x1

    if-le v5, v10, :cond_d7

    .line 523
    if-lt v5, v3, :cond_5e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-le v5, v10, :cond_77

    .line 524
    :cond_5e
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

    .line 526
    :cond_77
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p0, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 530
    .local v2, "dec":Ljava/lang/String;
    :goto_7d
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 542
    .local v8, "mant":Ljava/lang/String;
    :goto_82
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_188

    const/16 v10, 0x2e

    if-eq v7, v10, :cond_188

    .line 543
    const/4 v10, -0x1

    if-le v5, v10, :cond_10a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v5, v10, :cond_10a

    .line 544
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 549
    .local v4, "exp":Ljava/lang/String;
    :goto_a3
    const/4 v10, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 550
    .local v9, "numeric":Ljava/lang/String;
    invoke-static {v8}, Lorg/apache/commons/lang/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10c

    invoke-static {v4}, Lorg/apache/commons/lang/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10c

    const/4 v0, 0x1

    .line 551
    .local v0, "allZeros":Z
    :goto_bb
    sparse-switch v7, :sswitch_data_204

    .line 597
    :goto_be
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

    .line 528
    .end local v0    # "allZeros":Z
    .end local v2    # "dec":Ljava/lang/String;
    .end local v4    # "exp":Ljava/lang/String;
    .end local v8    # "mant":Ljava/lang/String;
    .end local v9    # "numeric":Ljava/lang/String;
    :cond_d7
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "dec":Ljava/lang/String;
    goto :goto_7d

    .line 532
    .end local v2    # "dec":Ljava/lang/String;
    :cond_de
    const/4 v10, -0x1

    if-le v5, v10, :cond_108

    .line 533
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-le v5, v10, :cond_100

    .line 534
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

    .line 536
    :cond_100
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 540
    .restart local v8    # "mant":Ljava/lang/String;
    :goto_105
    const/4 v2, 0x0

    .restart local v2    # "dec":Ljava/lang/String;
    goto/16 :goto_82

    .line 538
    .end local v2    # "dec":Ljava/lang/String;
    .end local v8    # "mant":Ljava/lang/String;
    :cond_108
    move-object v8, p0

    .restart local v8    # "mant":Ljava/lang/String;
    goto :goto_105

    .line 546
    .restart local v2    # "dec":Ljava/lang/String;
    :cond_10a
    const/4 v4, 0x0

    .restart local v4    # "exp":Ljava/lang/String;
    goto :goto_a3

    .line 550
    .restart local v9    # "numeric":Ljava/lang/String;
    :cond_10c
    const/4 v0, 0x0

    goto :goto_bb

    .line 554
    .restart local v0    # "allZeros":Z
    :sswitch_10e
    if-nez v2, :cond_139

    if-nez v4, :cond_139

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_126

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/commons/lang/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_12c

    :cond_126
    invoke-static {v9}, Lorg/apache/commons/lang/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_139

    .line 558
    :cond_12c
    :try_start_12c
    invoke-static {v9}, Lorg/apache/commons/lang/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_12f
    .catch Ljava/lang/NumberFormatException; {:try_start_12c .. :try_end_12f} :catch_132

    move-result-object v6

    goto/16 :goto_3

    .line 559
    :catch_132
    move-exception v10

    .line 562
    invoke-static {v9}, Lorg/apache/commons/lang/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    goto/16 :goto_3

    .line 565
    :cond_139
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

    .line 569
    :sswitch_152
    :try_start_152
    invoke-static {v9}, Lorg/apache/commons/lang/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    .line 570
    .local v6, "f":Ljava/lang/Float;
    invoke-virtual {v6}, Ljava/lang/Float;->isInfinite()Z

    move-result v10

    if-nez v10, :cond_167

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F
    :try_end_15f
    .catch Ljava/lang/NumberFormatException; {:try_start_152 .. :try_end_15f} :catch_200

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_3

    if-nez v0, :cond_3

    .line 583
    .end local v6    # "f":Ljava/lang/Float;
    :cond_167
    :goto_167
    :sswitch_167
    :try_start_167
    invoke-static {v9}, Lorg/apache/commons/lang/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 584
    .local v1, "d":Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v10

    if-nez v10, :cond_182

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F
    :try_end_174
    .catch Ljava/lang/NumberFormatException; {:try_start_167 .. :try_end_174} :catch_181

    move-result v10

    float-to-double v10, v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_17e

    if-eqz v0, :cond_182

    :cond_17e
    move-object v6, v1

    .line 585
    goto/16 :goto_3

    .line 587
    .end local v1    # "d":Ljava/lang/Double;
    :catch_181
    move-exception v10

    .line 591
    :cond_182
    :try_start_182
    invoke-static {v9}, Lorg/apache/commons/lang/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    :try_end_185
    .catch Ljava/lang/NumberFormatException; {:try_start_182 .. :try_end_185} :catch_1fb

    move-result-object v6

    goto/16 :goto_3

    .line 603
    .end local v0    # "allZeros":Z
    .end local v4    # "exp":Ljava/lang/String;
    .end local v9    # "numeric":Ljava/lang/String;
    :cond_188
    const/4 v10, -0x1

    if-le v5, v10, :cond_1a7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v5, v10, :cond_1a7

    .line 604
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 608
    .restart local v4    # "exp":Ljava/lang/String;
    :goto_19d
    if-nez v2, :cond_1b7

    if-nez v4, :cond_1b7

    .line 611
    :try_start_1a1
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_1a4
    .catch Ljava/lang/NumberFormatException; {:try_start_1a1 .. :try_end_1a4} :catch_1a9

    move-result-object v6

    goto/16 :goto_3

    .line 606
    .end local v4    # "exp":Ljava/lang/String;
    :cond_1a7
    const/4 v4, 0x0

    .restart local v4    # "exp":Ljava/lang/String;
    goto :goto_19d

    .line 612
    :catch_1a9
    move-exception v10

    .line 616
    :try_start_1aa
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_1ad
    .catch Ljava/lang/NumberFormatException; {:try_start_1aa .. :try_end_1ad} :catch_1b0

    move-result-object v6

    goto/16 :goto_3

    .line 617
    :catch_1b0
    move-exception v10

    .line 620
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    goto/16 :goto_3

    .line 624
    :cond_1b7
    invoke-static {v8}, Lorg/apache/commons/lang/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1f2

    invoke-static {v4}, Lorg/apache/commons/lang/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1f2

    const/4 v0, 0x1

    .line 626
    .restart local v0    # "allZeros":Z
    :goto_1c4
    :try_start_1c4
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    .line 627
    .restart local v6    # "f":Ljava/lang/Float;
    invoke-virtual {v6}, Ljava/lang/Float;->isInfinite()Z

    move-result v10

    if-nez v10, :cond_1d9

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F
    :try_end_1d1
    .catch Ljava/lang/NumberFormatException; {:try_start_1c4 .. :try_end_1d1} :catch_1fe

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_3

    if-nez v0, :cond_3

    .line 634
    .end local v6    # "f":Ljava/lang/Float;
    :cond_1d9
    :goto_1d9
    :try_start_1d9
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 635
    .restart local v1    # "d":Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v10

    if-nez v10, :cond_1f5

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
    :try_end_1e6
    .catch Ljava/lang/NumberFormatException; {:try_start_1d9 .. :try_end_1e6} :catch_1f4

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_1ef

    if-eqz v0, :cond_1f5

    :cond_1ef
    move-object v6, v1

    .line 636
    goto/16 :goto_3

    .line 624
    .end local v0    # "allZeros":Z
    .end local v1    # "d":Ljava/lang/Double;
    :cond_1f2
    const/4 v0, 0x0

    goto :goto_1c4

    .line 638
    .restart local v0    # "allZeros":Z
    :catch_1f4
    move-exception v10

    .line 642
    :cond_1f5
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v6

    goto/16 :goto_3

    .line 592
    .restart local v9    # "numeric":Ljava/lang/String;
    :catch_1fb
    move-exception v10

    goto/16 :goto_be

    .line 630
    .end local v9    # "numeric":Ljava/lang/String;
    :catch_1fe
    move-exception v10

    goto :goto_1d9

    .line 576
    .restart local v9    # "numeric":Ljava/lang/String;
    :catch_200
    move-exception v10

    goto/16 :goto_167

    .line 551
    nop

    :sswitch_data_204
    .sparse-switch
        0x44 -> :sswitch_167
        0x46 -> :sswitch_152
        0x4c -> :sswitch_10e
        0x64 -> :sswitch_167
        0x66 -> :sswitch_152
        0x6c -> :sswitch_10e
    .end sparse-switch
.end method

.method private static isAllZeros(Ljava/lang/String;)Z
    .registers 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 657
    if-nez p0, :cond_5

    .line 665
    :cond_4
    :goto_4
    return v1

    .line 660
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_1a

    .line 661
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_17

    move v1, v2

    .line 662
    goto :goto_4

    .line 660
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 665
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

    .line 1464
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1472
    :cond_7
    :goto_7
    return v1

    .line 1467
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 1468
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1467
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1472
    :cond_1c
    const/4 v1, 0x1

    goto :goto_7
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

    .line 1489
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1589
    :cond_e
    :goto_e
    return v9

    .line 1492
    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1493
    .local v1, "chars":[C
    array-length v7, v1

    .line 1494
    .local v7, "sz":I
    const/4 v4, 0x0

    .line 1495
    .local v4, "hasExp":Z
    const/4 v3, 0x0

    .line 1496
    .local v3, "hasDecPoint":Z
    const/4 v0, 0x0

    .line 1497
    .local v0, "allowSigns":Z
    const/4 v2, 0x0

    .line 1499
    .local v2, "foundDigit":Z
    aget-char v10, v1, v9

    if-ne v10, v14, :cond_57

    move v6, v8

    .line 1500
    .local v6, "start":I
    :goto_1d
    add-int/lit8 v10, v6, 0x1

    if-le v7, v10, :cond_5b

    .line 1501
    aget-char v10, v1, v6

    if-ne v10, v12, :cond_5b

    add-int/lit8 v10, v6, 0x1

    aget-char v10, v1, v10

    const/16 v11, 0x78

    if-ne v10, v11, :cond_5b

    .line 1502
    add-int/lit8 v5, v6, 0x2

    .line 1503
    .local v5, "i":I
    if-eq v5, v7, :cond_e

    .line 1507
    :goto_31
    array-length v10, v1

    if-ge v5, v10, :cond_59

    .line 1508
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

    .line 1507
    :cond_54
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .end local v5    # "i":I
    .end local v6    # "start":I
    :cond_57
    move v6, v9

    .line 1499
    goto :goto_1d

    .restart local v5    # "i":I
    .restart local v6    # "start":I
    :cond_59
    move v9, v8

    .line 1514
    goto :goto_e

    .line 1517
    .end local v5    # "i":I
    :cond_5b
    add-int/lit8 v7, v7, -0x1

    .line 1519
    move v5, v6

    .line 1522
    .restart local v5    # "i":I
    :goto_5e
    if-lt v5, v7, :cond_68

    add-int/lit8 v10, v7, 0x1

    if-ge v5, v10, :cond_a3

    if-eqz v0, :cond_a3

    if-nez v2, :cond_a3

    .line 1523
    :cond_68
    aget-char v10, v1, v5

    if-lt v10, v12, :cond_75

    aget-char v10, v1, v5

    if-gt v10, v13, :cond_75

    .line 1524
    const/4 v2, 0x1

    .line 1525
    const/4 v0, 0x0

    .line 1553
    :goto_72
    add-int/lit8 v5, v5, 0x1

    goto :goto_5e

    .line 1527
    :cond_75
    aget-char v10, v1, v5

    const/16 v11, 0x2e

    if-ne v10, v11, :cond_81

    .line 1528
    if-nez v3, :cond_e

    if-nez v4, :cond_e

    .line 1532
    const/4 v3, 0x1

    goto :goto_72

    .line 1533
    :cond_81
    aget-char v10, v1, v5

    const/16 v11, 0x65

    if-eq v10, v11, :cond_8d

    aget-char v10, v1, v5

    const/16 v11, 0x45

    if-ne v10, v11, :cond_94

    .line 1535
    :cond_8d
    if-nez v4, :cond_e

    .line 1539
    if-eqz v2, :cond_e

    .line 1542
    const/4 v4, 0x1

    .line 1543
    const/4 v0, 0x1

    goto :goto_72

    .line 1544
    :cond_94
    aget-char v10, v1, v5

    const/16 v11, 0x2b

    if-eq v10, v11, :cond_9e

    aget-char v10, v1, v5

    if-ne v10, v14, :cond_e

    .line 1545
    :cond_9e
    if-eqz v0, :cond_e

    .line 1548
    const/4 v0, 0x0

    .line 1549
    const/4 v2, 0x0

    goto :goto_72

    .line 1555
    :cond_a3
    array-length v10, v1

    if-ge v5, v10, :cond_fc

    .line 1556
    aget-char v10, v1, v5

    if-lt v10, v12, :cond_b1

    aget-char v10, v1, v5

    if-gt v10, v13, :cond_b1

    move v9, v8

    .line 1558
    goto/16 :goto_e

    .line 1560
    :cond_b1
    aget-char v10, v1, v5

    const/16 v11, 0x65

    if-eq v10, v11, :cond_e

    aget-char v10, v1, v5

    const/16 v11, 0x45

    if-eq v10, v11, :cond_e

    .line 1564
    aget-char v10, v1, v5

    const/16 v11, 0x2e

    if-ne v10, v11, :cond_ca

    .line 1565
    if-nez v3, :cond_e

    if-nez v4, :cond_e

    move v9, v2

    .line 1570
    goto/16 :goto_e

    .line 1572
    :cond_ca
    if-nez v0, :cond_e7

    aget-char v10, v1, v5

    const/16 v11, 0x64

    if-eq v10, v11, :cond_e4

    aget-char v10, v1, v5

    const/16 v11, 0x44

    if-eq v10, v11, :cond_e4

    aget-char v10, v1, v5

    const/16 v11, 0x66

    if-eq v10, v11, :cond_e4

    aget-char v10, v1, v5

    const/16 v11, 0x46

    if-ne v10, v11, :cond_e7

    :cond_e4
    move v9, v2

    .line 1577
    goto/16 :goto_e

    .line 1579
    :cond_e7
    aget-char v10, v1, v5

    const/16 v11, 0x6c

    if-eq v10, v11, :cond_f3

    aget-char v10, v1, v5

    const/16 v11, 0x4c

    if-ne v10, v11, :cond_e

    .line 1582
    :cond_f3
    if-eqz v2, :cond_fa

    if-nez v4, :cond_fa

    :goto_f7
    move v9, v8

    goto/16 :goto_e

    :cond_fa
    move v8, v9

    goto :goto_f7

    .line 1589
    :cond_fc
    if-nez v0, :cond_103

    if-eqz v2, :cond_103

    :goto_100
    move v9, v8

    goto/16 :goto_e

    :cond_103
    move v8, v9

    goto :goto_100
.end method

.method public static max(BBB)B
    .registers 3
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "c"    # B

    .prologue
    .line 1286
    if-le p1, p0, :cond_3

    .line 1287
    move p0, p1

    .line 1289
    :cond_3
    if-le p2, p0, :cond_6

    .line 1290
    move p0, p2

    .line 1292
    :cond_6
    return p0
.end method

.method public static max([B)B
    .registers 5
    .param p0, "array"    # [B

    .prologue
    .line 1036
    if-nez p0, :cond_a

    .line 1037
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1038
    :cond_a
    array-length v2, p0

    if-nez v2, :cond_15

    .line 1039
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1043
    :cond_15
    const/4 v2, 0x0

    aget-byte v1, p0, v2

    .line 1044
    .local v1, "max":B
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_19
    array-length v2, p0

    if-ge v0, v2, :cond_25

    .line 1045
    aget-byte v2, p0, v0

    if-le v2, v1, :cond_22

    .line 1046
    aget-byte v1, p0, v0

    .line 1044
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 1050
    :cond_25
    return v1
.end method

.method public static max(DDD)D
    .registers 8
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .prologue
    .line 1308
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static max([D)D
    .registers 7
    .param p0, "array"    # [D

    .prologue
    .line 1064
    if-nez p0, :cond_a

    .line 1065
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "The Array must not be null"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1066
    :cond_a
    array-length v1, p0

    if-nez v1, :cond_15

    .line 1067
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Array cannot be empty."

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1071
    :cond_15
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    .line 1072
    .local v2, "max":D
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_19
    array-length v1, p0

    if-ge v0, v1, :cond_26

    .line 1073
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1074
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 1081
    .end local v2    # "max":D
    :cond_26
    return-wide v2

    .line 1076
    .restart local v2    # "max":D
    :cond_27
    aget-wide v4, p0, v0

    cmpl-double v1, v4, v2

    if-lez v1, :cond_2f

    .line 1077
    aget-wide v2, p0, v0

    .line 1072
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method

.method public static max(FFF)F
    .registers 4
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .prologue
    .line 1324
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static max([F)F
    .registers 5
    .param p0, "array"    # [F

    .prologue
    .line 1095
    if-nez p0, :cond_a

    .line 1096
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1097
    :cond_a
    array-length v2, p0

    if-nez v2, :cond_15

    .line 1098
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1102
    :cond_15
    const/4 v2, 0x0

    aget v1, p0, v2

    .line 1103
    .local v1, "max":F
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_19
    array-length v2, p0

    if-ge v0, v2, :cond_26

    .line 1104
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1105
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 1112
    .end local v1    # "max":F
    :cond_26
    return v1

    .line 1107
    .restart local v1    # "max":F
    :cond_27
    aget v2, p0, v0

    cmpl-float v2, v2, v1

    if-lez v2, :cond_2f

    .line 1108
    aget v1, p0, v0

    .line 1103
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method

.method public static max(III)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .prologue
    .line 1250
    if-le p1, p0, :cond_3

    .line 1251
    move p0, p1

    .line 1253
    :cond_3
    if-le p2, p0, :cond_6

    .line 1254
    move p0, p2

    .line 1256
    :cond_6
    return p0
.end method

.method public static max([I)I
    .registers 5
    .param p0, "array"    # [I

    .prologue
    .line 982
    if-nez p0, :cond_a

    .line 983
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 984
    :cond_a
    array-length v2, p0

    if-nez v2, :cond_15

    .line 985
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 989
    :cond_15
    const/4 v2, 0x0

    aget v1, p0, v2

    .line 990
    .local v1, "max":I
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_19
    array-length v2, p0

    if-ge v0, v2, :cond_25

    .line 991
    aget v2, p0, v0

    if-le v2, v1, :cond_22

    .line 992
    aget v1, p0, v0

    .line 990
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 996
    :cond_25
    return v1
.end method

.method public static max(JJJ)J
    .registers 8
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .prologue
    .line 1232
    cmp-long v0, p2, p0

    if-lez v0, :cond_5

    .line 1233
    move-wide p0, p2

    .line 1235
    :cond_5
    cmp-long v0, p4, p0

    if-lez v0, :cond_a

    .line 1236
    move-wide p0, p4

    .line 1238
    :cond_a
    return-wide p0
.end method

.method public static max([J)J
    .registers 7
    .param p0, "array"    # [J

    .prologue
    .line 955
    if-nez p0, :cond_a

    .line 956
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "The Array must not be null"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 957
    :cond_a
    array-length v1, p0

    if-nez v1, :cond_15

    .line 958
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Array cannot be empty."

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 962
    :cond_15
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    .line 963
    .local v2, "max":J
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_19
    array-length v1, p0

    if-ge v0, v1, :cond_27

    .line 964
    aget-wide v4, p0, v0

    cmp-long v1, v4, v2

    if-lez v1, :cond_24

    .line 965
    aget-wide v2, p0, v0

    .line 963
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 969
    :cond_27
    return-wide v2
.end method

.method public static max(SSS)S
    .registers 3
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "c"    # S

    .prologue
    .line 1268
    if-le p1, p0, :cond_3

    .line 1269
    move p0, p1

    .line 1271
    :cond_3
    if-le p2, p0, :cond_6

    .line 1272
    move p0, p2

    .line 1274
    :cond_6
    return p0
.end method

.method public static max([S)S
    .registers 5
    .param p0, "array"    # [S

    .prologue
    .line 1009
    if-nez p0, :cond_a

    .line 1010
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1011
    :cond_a
    array-length v2, p0

    if-nez v2, :cond_15

    .line 1012
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1016
    :cond_15
    const/4 v2, 0x0

    aget-short v1, p0, v2

    .line 1017
    .local v1, "max":S
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_19
    array-length v2, p0

    if-ge v0, v2, :cond_25

    .line 1018
    aget-short v2, p0, v0

    if-le v2, v1, :cond_22

    .line 1019
    aget-short v1, p0, v0

    .line 1017
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 1023
    :cond_25
    return v1
.end method

.method public static min(BBB)B
    .registers 3
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "c"    # B

    .prologue
    .line 1180
    if-ge p1, p0, :cond_3

    .line 1181
    move p0, p1

    .line 1183
    :cond_3
    if-ge p2, p0, :cond_6

    .line 1184
    move p0, p2

    .line 1186
    :cond_6
    return p0
.end method

.method public static min([B)B
    .registers 5
    .param p0, "array"    # [B

    .prologue
    .line 864
    if-nez p0, :cond_a

    .line 865
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 866
    :cond_a
    array-length v2, p0

    if-nez v2, :cond_15

    .line 867
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 871
    :cond_15
    const/4 v2, 0x0

    aget-byte v1, p0, v2

    .line 872
    .local v1, "min":B
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_19
    array-length v2, p0

    if-ge v0, v2, :cond_25

    .line 873
    aget-byte v2, p0, v0

    if-ge v2, v1, :cond_22

    .line 874
    aget-byte v1, p0, v0

    .line 872
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 878
    :cond_25
    return v1
.end method

.method public static min(DDD)D
    .registers 8
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .prologue
    .line 1202
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static min([D)D
    .registers 7
    .param p0, "array"    # [D

    .prologue
    .line 892
    if-nez p0, :cond_a

    .line 893
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "The Array must not be null"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 894
    :cond_a
    array-length v1, p0

    if-nez v1, :cond_15

    .line 895
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Array cannot be empty."

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 899
    :cond_15
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    .line 900
    .local v2, "min":D
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_19
    array-length v1, p0

    if-ge v0, v1, :cond_26

    .line 901
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 902
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 909
    .end local v2    # "min":D
    :cond_26
    return-wide v2

    .line 904
    .restart local v2    # "min":D
    :cond_27
    aget-wide v4, p0, v0

    cmpg-double v1, v4, v2

    if-gez v1, :cond_2f

    .line 905
    aget-wide v2, p0, v0

    .line 900
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method

.method public static min(FFF)F
    .registers 4
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .prologue
    .line 1218
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static min([F)F
    .registers 5
    .param p0, "array"    # [F

    .prologue
    .line 923
    if-nez p0, :cond_a

    .line 924
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 925
    :cond_a
    array-length v2, p0

    if-nez v2, :cond_15

    .line 926
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 930
    :cond_15
    const/4 v2, 0x0

    aget v1, p0, v2

    .line 931
    .local v1, "min":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_19
    array-length v2, p0

    if-ge v0, v2, :cond_26

    .line 932
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 933
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 940
    .end local v1    # "min":F
    :cond_26
    return v1

    .line 935
    .restart local v1    # "min":F
    :cond_27
    aget v2, p0, v0

    cmpg-float v2, v2, v1

    if-gez v2, :cond_2f

    .line 936
    aget v1, p0, v0

    .line 931
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method

.method public static min(III)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .prologue
    .line 1144
    if-ge p1, p0, :cond_3

    .line 1145
    move p0, p1

    .line 1147
    :cond_3
    if-ge p2, p0, :cond_6

    .line 1148
    move p0, p2

    .line 1150
    :cond_6
    return p0
.end method

.method public static min([I)I
    .registers 5
    .param p0, "array"    # [I

    .prologue
    .line 810
    if-nez p0, :cond_a

    .line 811
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 812
    :cond_a
    array-length v2, p0

    if-nez v2, :cond_15

    .line 813
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 817
    :cond_15
    const/4 v2, 0x0

    aget v1, p0, v2

    .line 818
    .local v1, "min":I
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_19
    array-length v2, p0

    if-ge v0, v2, :cond_25

    .line 819
    aget v2, p0, v0

    if-ge v2, v1, :cond_22

    .line 820
    aget v1, p0, v0

    .line 818
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 824
    :cond_25
    return v1
.end method

.method public static min(JJJ)J
    .registers 8
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .prologue
    .line 1126
    cmp-long v0, p2, p0

    if-gez v0, :cond_5

    .line 1127
    move-wide p0, p2

    .line 1129
    :cond_5
    cmp-long v0, p4, p0

    if-gez v0, :cond_a

    .line 1130
    move-wide p0, p4

    .line 1132
    :cond_a
    return-wide p0
.end method

.method public static min([J)J
    .registers 7
    .param p0, "array"    # [J

    .prologue
    .line 783
    if-nez p0, :cond_a

    .line 784
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "The Array must not be null"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 785
    :cond_a
    array-length v1, p0

    if-nez v1, :cond_15

    .line 786
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Array cannot be empty."

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 790
    :cond_15
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    .line 791
    .local v2, "min":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_19
    array-length v1, p0

    if-ge v0, v1, :cond_27

    .line 792
    aget-wide v4, p0, v0

    cmp-long v1, v4, v2

    if-gez v1, :cond_24

    .line 793
    aget-wide v2, p0, v0

    .line 791
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 797
    :cond_27
    return-wide v2
.end method

.method public static min(SSS)S
    .registers 3
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "c"    # S

    .prologue
    .line 1162
    if-ge p1, p0, :cond_3

    .line 1163
    move p0, p1

    .line 1165
    :cond_3
    if-ge p2, p0, :cond_6

    .line 1166
    move p0, p2

    .line 1168
    :cond_6
    return p0
.end method

.method public static min([S)S
    .registers 5
    .param p0, "array"    # [S

    .prologue
    .line 837
    if-nez p0, :cond_a

    .line 838
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 839
    :cond_a
    array-length v2, p0

    if-nez v2, :cond_15

    .line 840
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 844
    :cond_15
    const/4 v2, 0x0

    aget-short v1, p0, v2

    .line 845
    .local v1, "min":S
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_19
    array-length v2, p0

    if-ge v0, v2, :cond_25

    .line 846
    aget-short v2, p0, v0

    if-ge v2, v1, :cond_22

    .line 847
    aget-short v1, p0, v0

    .line 845
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 851
    :cond_25
    return v1
.end method

.method public static stringToInt(Ljava/lang/String;)I
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->toInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static stringToInt(Ljava/lang/String;I)I
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 151
    invoke-static {p0, p1}, Lorg/apache/commons/lang/math/NumberUtils;->toInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static toByte(Ljava/lang/String;)B
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/math/NumberUtils;->toByte(Ljava/lang/String;B)B

    move-result v0

    return v0
.end method

.method public static toByte(Ljava/lang/String;B)B
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # B

    .prologue
    .line 375
    if-nez p0, :cond_3

    .line 381
    .end local p1    # "defaultValue":B
    :goto_2
    return p1

    .line 379
    .restart local p1    # "defaultValue":B
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_8

    move-result p1

    goto :goto_2

    .line 380
    :catch_8
    move-exception v0

    .line 381
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_2
.end method

.method public static toDouble(Ljava/lang/String;)D
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 302
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang/math/NumberUtils;->toDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(Ljava/lang/String;D)D
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # D

    .prologue
    .line 325
    if-nez p0, :cond_3

    .line 331
    .end local p1    # "defaultValue":D
    :goto_2
    return-wide p1

    .line 329
    .restart local p1    # "defaultValue":D
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_8

    move-result-wide p1

    goto :goto_2

    .line 330
    :catch_8
    move-exception v0

    .line 331
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_2
.end method

.method public static toFloat(Ljava/lang/String;)F
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/math/NumberUtils;->toFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static toFloat(Ljava/lang/String;F)F
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # F

    .prologue
    .line 273
    if-nez p0, :cond_3

    .line 279
    .end local p1    # "defaultValue":F
    :goto_2
    return p1

    .line 277
    .restart local p1    # "defaultValue":F
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_8

    move-result p1

    goto :goto_2

    .line 278
    :catch_8
    move-exception v0

    .line 279
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_2
.end method

.method public static toInt(Ljava/lang/String;)I
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/math/NumberUtils;->toInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static toInt(Ljava/lang/String;I)I
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 172
    if-nez p0, :cond_3

    .line 178
    .end local p1    # "defaultValue":I
    :goto_2
    return p1

    .line 176
    .restart local p1    # "defaultValue":I
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_8

    move-result p1

    goto :goto_2

    .line 177
    :catch_8
    move-exception v0

    .line 178
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_2
.end method

.method public static toLong(Ljava/lang/String;)J
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 200
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang/math/NumberUtils;->toLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toLong(Ljava/lang/String;J)J
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .prologue
    .line 221
    if-nez p0, :cond_3

    .line 227
    .end local p1    # "defaultValue":J
    :goto_2
    return-wide p1

    .line 225
    .restart local p1    # "defaultValue":J
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_8

    move-result-wide p1

    goto :goto_2

    .line 226
    :catch_8
    move-exception v0

    .line 227
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_2
.end method

.method public static toShort(Ljava/lang/String;)S
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 403
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/math/NumberUtils;->toShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public static toShort(Ljava/lang/String;S)S
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # S

    .prologue
    .line 424
    if-nez p0, :cond_3

    .line 430
    .end local p1    # "defaultValue":S
    :goto_2
    return p1

    .line 428
    .restart local p1    # "defaultValue":S
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_8

    move-result p1

    goto :goto_2

    .line 429
    :catch_8
    move-exception v0

    .line 430
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_2
.end method
