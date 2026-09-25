.class public Lorg/apache/commons/lang/WordUtils;
.super Ljava/lang/Object;
.source "WordUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static abbreviate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "lower"    # I
    .param p2, "upper"    # I
    .param p3, "appendToEnd"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 607
    if-nez p0, :cond_6

    .line 608
    const/4 v2, 0x0

    .line 644
    :goto_5
    return-object v2

    .line 610
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_f

    .line 611
    const-string v2, ""

    goto :goto_5

    .line 616
    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le p1, v2, :cond_19

    .line 617
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    .line 621
    :cond_19
    if-eq p2, v4, :cond_21

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le p2, v2, :cond_25

    .line 622
    :cond_21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    .line 625
    :cond_25
    if-ge p2, p1, :cond_28

    .line 626
    move p2, p1

    .line 629
    :cond_28
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 630
    .local v1, "result":Ljava/lang/StringBuffer;
    const-string v2, " "

    invoke-static {p0, v2, p1}, Lorg/apache/commons/lang/StringUtils;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 631
    .local v0, "index":I
    if-ne v0, v4, :cond_4e

    .line 632
    invoke-virtual {p0, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 634
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq p2, v2, :cond_49

    .line 635
    invoke-static {p3}, Lorg/apache/commons/lang/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 644
    :cond_49
    :goto_49
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 637
    :cond_4e
    if-le v0, p2, :cond_5f

    .line 638
    invoke-virtual {p0, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 639
    invoke-static {p3}, Lorg/apache/commons/lang/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_49

    .line 641
    :cond_5f
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 642
    invoke-static {p3}, Lorg/apache/commons/lang/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_49
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/WordUtils;->capitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static capitalize(Ljava/lang/String;[C)Ljava/lang/String;
    .registers 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delimiters"    # [C

    .prologue
    .line 276
    if-nez p1, :cond_e

    const/4 v3, -0x1

    .line 277
    .local v3, "delimLen":I
    :goto_3
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_d

    if-nez v3, :cond_10

    .line 296
    .end local p0    # "str":Ljava/lang/String;
    :cond_d
    :goto_d
    return-object p0

    .line 276
    .end local v3    # "delimLen":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_e
    array-length v3, p1

    goto :goto_3

    .line 280
    .restart local v3    # "delimLen":I
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 281
    .local v5, "strLen":I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 282
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .line 283
    .local v1, "capitalizeNext":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1b
    if-ge v4, v5, :cond_3d

    .line 284
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 286
    .local v2, "ch":C
    invoke-static {v2, p1}, Lorg/apache/commons/lang/WordUtils;->isDelimiter(C[C)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 287
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 288
    const/4 v1, 0x1

    .line 283
    :goto_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 289
    :cond_2e
    if-eqz v1, :cond_39

    .line 290
    invoke-static {v2}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 291
    const/4 v1, 0x0

    goto :goto_2b

    .line 293
    :cond_39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2b

    .line 296
    .end local v2    # "ch":C
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_d
.end method

.method public static capitalizeFully(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 320
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/WordUtils;->capitalizeFully(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static capitalizeFully(Ljava/lang/String;[C)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delimiters"    # [C

    .prologue
    .line 350
    if-nez p1, :cond_e

    const/4 v0, -0x1

    .line 351
    .local v0, "delimLen":I
    :goto_3
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_d

    if-nez v0, :cond_10

    .line 355
    .end local p0    # "str":Ljava/lang/String;
    :cond_d
    :goto_d
    return-object p0

    .line 350
    .end local v0    # "delimLen":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_e
    array-length v0, p1

    goto :goto_3

    .line 354
    .restart local v0    # "delimLen":I
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 355
    invoke-static {p0, p1}, Lorg/apache/commons/lang/WordUtils;->capitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    goto :goto_d
.end method

.method public static initials(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 508
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/WordUtils;->initials(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initials(Ljava/lang/String;[C)Ljava/lang/String;
    .registers 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delimiters"    # [C

    .prologue
    .line 539
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_9

    .line 561
    .end local p0    # "str":Ljava/lang/String;
    :cond_8
    :goto_8
    return-object p0

    .line 542
    .restart local p0    # "str":Ljava/lang/String;
    :cond_9
    if-eqz p1, :cond_11

    array-length v7, p1

    if-nez v7, :cond_11

    .line 543
    const-string p0, ""

    goto :goto_8

    .line 545
    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 546
    .local v6, "strLen":I
    div-int/lit8 v7, v6, 0x2

    add-int/lit8 v7, v7, 0x1

    new-array v0, v7, [C

    .line 547
    .local v0, "buf":[C
    const/4 v2, 0x0

    .line 548
    .local v2, "count":I
    const/4 v5, 0x1

    .line 549
    .local v5, "lastWasGap":Z
    const/4 v4, 0x0

    .local v4, "i":I
    move v3, v2

    .end local v2    # "count":I
    .local v3, "count":I
    :goto_1f
    if-ge v4, v6, :cond_39

    .line 550
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 552
    .local v1, "ch":C
    invoke-static {v1, p1}, Lorg/apache/commons/lang/WordUtils;->isDelimiter(C[C)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 553
    const/4 v5, 0x1

    move v2, v3

    .line 549
    .end local v3    # "count":I
    .restart local v2    # "count":I
    :goto_2d
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "count":I
    .restart local v3    # "count":I
    goto :goto_1f

    .line 554
    :cond_31
    if-eqz v5, :cond_40

    .line 555
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    aput-char v1, v0, v3

    .line 556
    const/4 v5, 0x0

    goto :goto_2d

    .line 561
    .end local v1    # "ch":C
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_39
    new-instance p0, Ljava/lang/String;

    .end local p0    # "str":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-direct {p0, v0, v7, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_8

    .restart local v1    # "ch":C
    .restart local p0    # "str":Ljava/lang/String;
    :cond_40
    move v2, v3

    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_2d
.end method

.method private static isDelimiter(C[C)Z
    .registers 5
    .param p0, "ch"    # C
    .param p1, "delimiters"    # [C

    .prologue
    .line 573
    if-nez p1, :cond_7

    .line 574
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    .line 581
    :goto_6
    return v2

    .line 576
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "isize":I
    :goto_9
    if-ge v0, v1, :cond_14

    .line 577
    aget-char v2, p1, v0

    if-ne p0, v2, :cond_11

    .line 578
    const/4 v2, 0x1

    goto :goto_6

    .line 576
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 581
    :cond_14
    const/4 v2, 0x0

    goto :goto_6
.end method

.method public static swapCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 454
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "strLen":I
    if-nez v3, :cond_9

    .line 481
    .end local v3    # "strLen":I
    .end local p0    # "str":Ljava/lang/String;
    :cond_8
    :goto_8
    return-object p0

    .line 457
    .restart local v3    # "strLen":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 459
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v5, 0x1

    .line 460
    .local v5, "whitespace":Z
    const/4 v1, 0x0

    .line 461
    .local v1, "ch":C
    const/4 v4, 0x0

    .line 463
    .local v4, "tmp":C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v3, :cond_4b

    .line 464
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 465
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 466
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    .line 478
    :goto_22
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 479
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    .line 463
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 467
    :cond_2c
    invoke-static {v1}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 468
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    goto :goto_22

    .line 469
    :cond_37
    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 470
    if-eqz v5, :cond_44

    .line 471
    invoke-static {v1}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v4

    goto :goto_22

    .line 473
    :cond_44
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    goto :goto_22

    .line 476
    :cond_49
    move v4, v1

    goto :goto_22

    .line 481
    :cond_4b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_8
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 377
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/WordUtils;->uncapitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static uncapitalize(Ljava/lang/String;[C)Ljava/lang/String;
    .registers 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delimiters"    # [C

    .prologue
    .line 406
    if-nez p1, :cond_e

    const/4 v2, -0x1

    .line 407
    .local v2, "delimLen":I
    :goto_3
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_d

    if-nez v2, :cond_10

    .line 426
    .end local p0    # "str":Ljava/lang/String;
    :cond_d
    :goto_d
    return-object p0

    .line 406
    .end local v2    # "delimLen":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_e
    array-length v2, p1

    goto :goto_3

    .line 410
    .restart local v2    # "delimLen":I
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 411
    .local v4, "strLen":I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 412
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v5, 0x1

    .line 413
    .local v5, "uncapitalizeNext":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    if-ge v3, v4, :cond_3d

    .line 414
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 416
    .local v1, "ch":C
    invoke-static {v1, p1}, Lorg/apache/commons/lang/WordUtils;->isDelimiter(C[C)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 417
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 418
    const/4 v5, 0x1

    .line 413
    :goto_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 419
    :cond_2e
    if-eqz v5, :cond_39

    .line 420
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 421
    const/4 v5, 0x0

    goto :goto_2b

    .line 423
    :cond_39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2b

    .line 426
    .end local v1    # "ch":C
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_d
.end method

.method public static wrap(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapLength"    # I

    .prologue
    .line 142
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/WordUtils;->wrap(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .registers 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapLength"    # I
    .param p2, "newLineStr"    # Ljava/lang/String;
    .param p3, "wrapLongWords"    # Z

    .prologue
    const/16 v5, 0x20

    .line 164
    if-nez p0, :cond_6

    .line 165
    const/4 v4, 0x0

    .line 215
    :goto_5
    return-object v4

    .line 167
    :cond_6
    if-nez p2, :cond_a

    .line 168
    sget-object p2, Lorg/apache/commons/lang/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 170
    :cond_a
    const/4 v4, 0x1

    if-ge p1, v4, :cond_e

    .line 171
    const/4 p1, 0x1

    .line 173
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 174
    .local v0, "inputLineLength":I
    const/4 v1, 0x0

    .line 175
    .local v1, "offset":I
    new-instance v3, Ljava/lang/StringBuffer;

    add-int/lit8 v4, v0, 0x20

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 177
    .local v3, "wrappedLine":Ljava/lang/StringBuffer;
    :goto_1a
    sub-int v4, v0, v1

    if-le v4, p1, :cond_6a

    .line 178
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_27

    .line 179
    add-int/lit8 v1, v1, 0x1

    .line 180
    goto :goto_1a

    .line 182
    :cond_27
    add-int v4, p1, v1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    .line 184
    .local v2, "spaceToWrapAt":I
    if-lt v2, v1, :cond_3c

    .line 186
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    add-int/lit8 v1, v2, 0x1

    goto :goto_1a

    .line 192
    :cond_3c
    if-eqz p3, :cond_4c

    .line 194
    add-int v4, p1, v1

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    add-int/2addr v1, p1

    goto :goto_1a

    .line 199
    :cond_4c
    add-int v4, p1, v1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 200
    if-ltz v2, :cond_61

    .line 201
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    add-int/lit8 v1, v2, 0x1

    goto :goto_1a

    .line 205
    :cond_61
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    move v1, v0

    goto :goto_1a

    .line 213
    .end local v2    # "spaceToWrapAt":I
    :cond_6a
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5
.end method
