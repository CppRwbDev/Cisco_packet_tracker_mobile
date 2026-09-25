.class public Lorg/apache/commons/lang/BooleanUtils;
.super Ljava/lang/Object;
.source "BooleanUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static isFalse(Ljava/lang/Boolean;)Z
    .registers 3
    .param p0, "bool"    # Ljava/lang/Boolean;

    .prologue
    const/4 v0, 0x0

    .line 127
    if-nez p0, :cond_4

    .line 130
    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static isNotFalse(Ljava/lang/Boolean;)Z
    .registers 2
    .param p0, "bool"    # Ljava/lang/Boolean;

    .prologue
    .line 148
    invoke-static {p0}, Lorg/apache/commons/lang/BooleanUtils;->isFalse(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isNotTrue(Ljava/lang/Boolean;)Z
    .registers 2
    .param p0, "bool"    # Ljava/lang/Boolean;

    .prologue
    .line 109
    invoke-static {p0}, Lorg/apache/commons/lang/BooleanUtils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isTrue(Ljava/lang/Boolean;)Z
    .registers 3
    .param p0, "bool"    # Ljava/lang/Boolean;

    .prologue
    const/4 v0, 0x0

    .line 88
    if-nez p0, :cond_4

    .line 91
    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static negate(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "bool"    # Ljava/lang/Boolean;

    .prologue
    .line 65
    if-nez p0, :cond_4

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_d
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3
.end method

.method public static toBoolean(I)Z
    .registers 2
    .param p0, "value"    # I

    .prologue
    .line 227
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static toBoolean(III)Z
    .registers 5
    .param p0, "value"    # I
    .param p1, "trueValue"    # I
    .param p2, "falseValue"    # I

    .prologue
    .line 288
    if-ne p0, p1, :cond_4

    .line 289
    const/4 v0, 0x1

    .line 291
    :goto_3
    return v0

    .line 290
    :cond_4
    if-ne p0, p2, :cond_8

    .line 291
    const/4 v0, 0x0

    goto :goto_3

    .line 294
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Integer did not match either specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBoolean(Ljava/lang/Boolean;)Z
    .registers 3
    .param p0, "bool"    # Ljava/lang/Boolean;

    .prologue
    const/4 v0, 0x0

    .line 184
    if-nez p0, :cond_4

    .line 187
    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static toBoolean(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .registers 6
    .param p0, "value"    # Ljava/lang/Integer;
    .param p1, "trueValue"    # Ljava/lang/Integer;
    .param p2, "falseValue"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 317
    if-nez p0, :cond_b

    .line 318
    if-nez p1, :cond_7

    .line 326
    :cond_6
    :goto_6
    return v0

    .line 320
    :cond_7
    if-nez p2, :cond_19

    move v0, v1

    .line 321
    goto :goto_6

    .line 323
    :cond_b
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 325
    invoke-virtual {p0, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v1

    .line 326
    goto :goto_6

    .line 329
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Integer did not match either specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBoolean(Ljava/lang/String;)Z
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 729
    invoke-static {p0}, Lorg/apache/commons/lang/BooleanUtils;->toBooleanObject(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/BooleanUtils;->toBoolean(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static toBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "trueString"    # Ljava/lang/String;
    .param p2, "falseString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 751
    if-nez p0, :cond_b

    .line 752
    if-nez p1, :cond_7

    .line 760
    :cond_6
    :goto_6
    return v0

    .line 754
    :cond_7
    if-nez p2, :cond_19

    move v0, v1

    .line 755
    goto :goto_6

    .line 757
    :cond_b
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 759
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v1

    .line 760
    goto :goto_6

    .line 763
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The String did not match either specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBooleanDefaultIfNull(Ljava/lang/Boolean;Z)Z
    .registers 3
    .param p0, "bool"    # Ljava/lang/Boolean;
    .param p1, "valueIfNull"    # Z

    .prologue
    .line 204
    if-nez p0, :cond_3

    .line 207
    .end local p1    # "valueIfNull":Z
    :goto_2
    return p1

    .restart local p1    # "valueIfNull":Z
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    move p1, v0

    goto :goto_2

    :cond_c
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static toBooleanObject(I)Ljava/lang/Boolean;
    .registers 2
    .param p0, "value"    # I

    .prologue
    .line 245
    if-nez p0, :cond_5

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4
.end method

.method public static toBooleanObject(IIII)Ljava/lang/Boolean;
    .registers 6
    .param p0, "value"    # I
    .param p1, "trueValue"    # I
    .param p2, "falseValue"    # I
    .param p3, "nullValue"    # I

    .prologue
    .line 349
    if-ne p0, p1, :cond_5

    .line 350
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 354
    :goto_4
    return-object v0

    .line 351
    :cond_5
    if-ne p0, p2, :cond_a

    .line 352
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4

    .line 353
    :cond_a
    if-ne p0, p3, :cond_e

    .line 354
    const/4 v0, 0x0

    goto :goto_4

    .line 357
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Integer did not match any specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBooleanObject(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "value"    # Ljava/lang/Integer;

    .prologue
    .line 265
    if-nez p0, :cond_4

    .line 266
    const/4 v0, 0x0

    .line 268
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_d
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3
.end method

.method public static toBooleanObject(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 6
    .param p0, "value"    # Ljava/lang/Integer;
    .param p1, "trueValue"    # Ljava/lang/Integer;
    .param p2, "falseValue"    # Ljava/lang/Integer;
    .param p3, "nullValue"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x0

    .line 380
    if-nez p0, :cond_17

    .line 381
    if-nez p1, :cond_8

    .line 382
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 393
    :cond_7
    :goto_7
    return-object v0

    .line 383
    :cond_8
    if-nez p2, :cond_d

    .line 384
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7

    .line 385
    :cond_d
    if-eqz p3, :cond_7

    .line 396
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Integer did not match any specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_17
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 389
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    .line 390
    :cond_20
    invoke-virtual {p0, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 391
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7

    .line 392
    :cond_29
    invoke-virtual {p0, p3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_7
.end method

.method public static toBooleanObject(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 12
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/16 v9, 0x66

    const/16 v8, 0x46

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 570
    const-string v5, "true"

    if-ne p0, v5, :cond_e

    .line 571
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 656
    :goto_d
    return-object v5

    .line 573
    :cond_e
    if-nez p0, :cond_12

    .line 574
    const/4 v5, 0x0

    goto :goto_d

    .line 576
    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    packed-switch v5, :pswitch_data_11e

    .line 656
    :cond_19
    const/4 v5, 0x0

    goto :goto_d

    .line 578
    :pswitch_1b
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 579
    .local v0, "ch0":C
    const/16 v5, 0x79

    if-eq v0, v5, :cond_2f

    const/16 v5, 0x59

    if-eq v0, v5, :cond_2f

    const/16 v5, 0x74

    if-eq v0, v5, :cond_2f

    const/16 v5, 0x54

    if-ne v0, v5, :cond_32

    .line 582
    :cond_2f
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_d

    .line 584
    :cond_32
    const/16 v5, 0x6e

    if-eq v0, v5, :cond_3e

    const/16 v5, 0x4e

    if-eq v0, v5, :cond_3e

    if-eq v0, v9, :cond_3e

    if-ne v0, v8, :cond_19

    .line 587
    :cond_3e
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_d

    .line 592
    .end local v0    # "ch0":C
    :pswitch_41
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 593
    .restart local v0    # "ch0":C
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 594
    .local v1, "ch1":C
    const/16 v5, 0x6f

    if-eq v0, v5, :cond_51

    const/16 v5, 0x4f

    if-ne v0, v5, :cond_5c

    :cond_51
    const/16 v5, 0x6e

    if-eq v1, v5, :cond_59

    const/16 v5, 0x4e

    if-ne v1, v5, :cond_5c

    .line 597
    :cond_59
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_d

    .line 599
    :cond_5c
    const/16 v5, 0x6e

    if-eq v0, v5, :cond_64

    const/16 v5, 0x4e

    if-ne v0, v5, :cond_19

    :cond_64
    const/16 v5, 0x6f

    if-eq v1, v5, :cond_6c

    const/16 v5, 0x4f

    if-ne v1, v5, :cond_19

    .line 602
    :cond_6c
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_d

    .line 607
    .end local v0    # "ch0":C
    .end local v1    # "ch1":C
    :pswitch_6f
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 608
    .restart local v0    # "ch0":C
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 609
    .restart local v1    # "ch1":C
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 610
    .local v2, "ch2":C
    const/16 v5, 0x79

    if-eq v0, v5, :cond_83

    const/16 v5, 0x59

    if-ne v0, v5, :cond_97

    :cond_83
    const/16 v5, 0x65

    if-eq v1, v5, :cond_8b

    const/16 v5, 0x45

    if-ne v1, v5, :cond_97

    :cond_8b
    const/16 v5, 0x73

    if-eq v2, v5, :cond_93

    const/16 v5, 0x53

    if-ne v2, v5, :cond_97

    .line 614
    :cond_93
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_d

    .line 616
    :cond_97
    const/16 v5, 0x6f

    if-eq v0, v5, :cond_9f

    const/16 v5, 0x4f

    if-ne v0, v5, :cond_19

    :cond_9f
    if-eq v1, v9, :cond_a3

    if-ne v1, v8, :cond_19

    :cond_a3
    if-eq v2, v9, :cond_a7

    if-ne v2, v8, :cond_19

    .line 620
    :cond_a7
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_d

    .line 625
    .end local v0    # "ch0":C
    .end local v1    # "ch1":C
    .end local v2    # "ch2":C
    :pswitch_ab
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 626
    .restart local v0    # "ch0":C
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 627
    .restart local v1    # "ch1":C
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 628
    .restart local v2    # "ch2":C
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 629
    .local v3, "ch3":C
    const/16 v5, 0x74

    if-eq v0, v5, :cond_c4

    const/16 v5, 0x54

    if-ne v0, v5, :cond_19

    :cond_c4
    const/16 v5, 0x72

    if-eq v1, v5, :cond_cc

    const/16 v5, 0x52

    if-ne v1, v5, :cond_19

    :cond_cc
    const/16 v5, 0x75

    if-eq v2, v5, :cond_d4

    const/16 v5, 0x55

    if-ne v2, v5, :cond_19

    :cond_d4
    const/16 v5, 0x65

    if-eq v3, v5, :cond_dc

    const/16 v5, 0x45

    if-ne v3, v5, :cond_19

    .line 634
    :cond_dc
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_d

    .line 639
    .end local v0    # "ch0":C
    .end local v1    # "ch1":C
    .end local v2    # "ch2":C
    .end local v3    # "ch3":C
    :pswitch_e0
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 640
    .restart local v0    # "ch0":C
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 641
    .restart local v1    # "ch1":C
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 642
    .restart local v2    # "ch2":C
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 643
    .restart local v3    # "ch3":C
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 644
    .local v4, "ch4":C
    if-eq v0, v9, :cond_fa

    if-ne v0, v8, :cond_19

    :cond_fa
    const/16 v5, 0x61

    if-eq v1, v5, :cond_102

    const/16 v5, 0x41

    if-ne v1, v5, :cond_19

    :cond_102
    const/16 v5, 0x6c

    if-eq v2, v5, :cond_10a

    const/16 v5, 0x4c

    if-ne v2, v5, :cond_19

    :cond_10a
    const/16 v5, 0x73

    if-eq v3, v5, :cond_112

    const/16 v5, 0x53

    if-ne v3, v5, :cond_19

    :cond_112
    const/16 v5, 0x65

    if-eq v4, v5, :cond_11a

    const/16 v5, 0x45

    if-ne v4, v5, :cond_19

    .line 650
    :cond_11a
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_d

    .line 576
    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_41
        :pswitch_6f
        :pswitch_ab
        :pswitch_e0
    .end packed-switch
.end method

.method public static toBooleanObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "trueString"    # Ljava/lang/String;
    .param p2, "falseString"    # Ljava/lang/String;
    .param p3, "nullString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 682
    if-nez p0, :cond_17

    .line 683
    if-nez p1, :cond_8

    .line 684
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 695
    :cond_7
    :goto_7
    return-object v0

    .line 685
    :cond_8
    if-nez p2, :cond_d

    .line 686
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7

    .line 687
    :cond_d
    if-eqz p3, :cond_7

    .line 698
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The String did not match any specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 690
    :cond_17
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 691
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    .line 692
    :cond_20
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 693
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7

    .line 694
    :cond_29
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_7
.end method

.method public static toBooleanObject(Z)Ljava/lang/Boolean;
    .registers 2
    .param p0, "bool"    # Z

    .prologue
    .line 166
    if-eqz p0, :cond_5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4
.end method

.method public static toInteger(Ljava/lang/Boolean;III)I
    .registers 5
    .param p0, "bool"    # Ljava/lang/Boolean;
    .param p1, "trueValue"    # I
    .param p2, "falseValue"    # I
    .param p3, "nullValue"    # I

    .prologue
    .line 487
    if-nez p0, :cond_3

    .line 490
    .end local p1    # "trueValue":I
    .end local p3    # "nullValue":I
    :goto_2
    return p3

    .restart local p1    # "trueValue":I
    .restart local p3    # "nullValue":I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .end local p1    # "trueValue":I
    :goto_9
    move p3, p1

    goto :goto_2

    .restart local p1    # "trueValue":I
    :cond_b
    move p1, p2

    goto :goto_9
.end method

.method public static toInteger(Z)I
    .registers 2
    .param p0, "bool"    # Z

    .prologue
    .line 414
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static toInteger(ZII)I
    .registers 3
    .param p0, "bool"    # Z
    .param p1, "trueValue"    # I
    .param p2, "falseValue"    # I

    .prologue
    .line 468
    if-eqz p0, :cond_3

    .end local p1    # "trueValue":I
    :goto_2
    return p1

    .restart local p1    # "trueValue":I
    :cond_3
    move p1, p2

    goto :goto_2
.end method

.method public static toIntegerObject(Ljava/lang/Boolean;)Ljava/lang/Integer;
    .registers 2
    .param p0, "bool"    # Ljava/lang/Boolean;

    .prologue
    .line 448
    if-nez p0, :cond_4

    .line 449
    const/4 v0, 0x0

    .line 451
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lorg/apache/commons/lang/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    goto :goto_3

    :cond_d
    sget-object v0, Lorg/apache/commons/lang/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    goto :goto_3
.end method

.method public static toIntegerObject(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 5
    .param p0, "bool"    # Ljava/lang/Boolean;
    .param p1, "trueValue"    # Ljava/lang/Integer;
    .param p2, "falseValue"    # Ljava/lang/Integer;
    .param p3, "nullValue"    # Ljava/lang/Integer;

    .prologue
    .line 531
    if-nez p0, :cond_3

    .line 534
    .end local p1    # "trueValue":Ljava/lang/Integer;
    .end local p3    # "nullValue":Ljava/lang/Integer;
    :goto_2
    return-object p3

    .restart local p1    # "trueValue":Ljava/lang/Integer;
    .restart local p3    # "nullValue":Ljava/lang/Integer;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .end local p1    # "trueValue":Ljava/lang/Integer;
    :goto_9
    move-object p3, p1

    goto :goto_2

    .restart local p1    # "trueValue":Ljava/lang/Integer;
    :cond_b
    move-object p1, p2

    goto :goto_9
.end method

.method public static toIntegerObject(Z)Ljava/lang/Integer;
    .registers 2
    .param p0, "bool"    # Z

    .prologue
    .line 430
    if-eqz p0, :cond_5

    sget-object v0, Lorg/apache/commons/lang/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lorg/apache/commons/lang/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    goto :goto_4
.end method

.method public static toIntegerObject(ZLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 3
    .param p0, "bool"    # Z
    .param p1, "trueValue"    # Ljava/lang/Integer;
    .param p2, "falseValue"    # Ljava/lang/Integer;

    .prologue
    .line 509
    if-eqz p0, :cond_3

    .end local p1    # "trueValue":Ljava/lang/Integer;
    :goto_2
    return-object p1

    .restart local p1    # "trueValue":Ljava/lang/Integer;
    :cond_3
    move-object p1, p2

    goto :goto_2
.end method

.method public static toString(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "bool"    # Ljava/lang/Boolean;
    .param p1, "trueString"    # Ljava/lang/String;
    .param p2, "falseString"    # Ljava/lang/String;
    .param p3, "nullString"    # Ljava/lang/String;

    .prologue
    .line 841
    if-nez p0, :cond_3

    .line 844
    .end local p1    # "trueString":Ljava/lang/String;
    .end local p3    # "nullString":Ljava/lang/String;
    :goto_2
    return-object p3

    .restart local p1    # "trueString":Ljava/lang/String;
    .restart local p3    # "nullString":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .end local p1    # "trueString":Ljava/lang/String;
    :goto_9
    move-object p3, p1

    goto :goto_2

    .restart local p1    # "trueString":Ljava/lang/String;
    :cond_b
    move-object p1, p2

    goto :goto_9
.end method

.method public static toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "bool"    # Z
    .param p1, "trueString"    # Ljava/lang/String;
    .param p2, "falseString"    # Ljava/lang/String;

    .prologue
    .line 916
    if-eqz p0, :cond_3

    .end local p1    # "trueString":Ljava/lang/String;
    :goto_2
    return-object p1

    .restart local p1    # "trueString":Ljava/lang/String;
    :cond_3
    move-object p1, p2

    goto :goto_2
.end method

.method public static toStringOnOff(Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 4
    .param p0, "bool"    # Ljava/lang/Boolean;

    .prologue
    .line 801
    const-string v0, "on"

    const-string v1, "off"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/apache/commons/lang/BooleanUtils;->toString(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringOnOff(Z)Ljava/lang/String;
    .registers 3
    .param p0, "bool"    # Z

    .prologue
    .line 880
    const-string v0, "on"

    const-string v1, "off"

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang/BooleanUtils;->toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringTrueFalse(Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 4
    .param p0, "bool"    # Ljava/lang/Boolean;

    .prologue
    .line 783
    const-string v0, "true"

    const-string v1, "false"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/apache/commons/lang/BooleanUtils;->toString(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringTrueFalse(Z)Ljava/lang/String;
    .registers 3
    .param p0, "bool"    # Z

    .prologue
    .line 863
    const-string v0, "true"

    const-string v1, "false"

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang/BooleanUtils;->toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringYesNo(Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 4
    .param p0, "bool"    # Ljava/lang/Boolean;

    .prologue
    .line 819
    const-string v0, "yes"

    const-string v1, "no"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/apache/commons/lang/BooleanUtils;->toString(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringYesNo(Z)Ljava/lang/String;
    .registers 3
    .param p0, "bool"    # Z

    .prologue
    .line 897
    const-string v0, "yes"

    const-string v1, "no"

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang/BooleanUtils;->toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static xor([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 5
    .param p0, "array"    # [Ljava/lang/Boolean;

    .prologue
    .line 977
    if-nez p0, :cond_a

    .line 978
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 979
    :cond_a
    array-length v2, p0

    if-nez v2, :cond_15

    .line 980
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 982
    :cond_15
    const/4 v1, 0x0

    .line 984
    .local v1, "primitive":[Z
    :try_start_16
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->toPrimitive([Ljava/lang/Boolean;)[Z
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_19} :catch_23

    move-result-object v1

    .line 988
    invoke-static {v1}, Lorg/apache/commons/lang/BooleanUtils;->xor([Z)Z

    move-result v2

    if-eqz v2, :cond_2c

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_22
    return-object v2

    .line 985
    :catch_23
    move-exception v0

    .line 986
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The array must not contain any null elements"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 988
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :cond_2c
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_22
.end method

.method public static xor([Z)Z
    .registers 6
    .param p0, "array"    # [Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 937
    if-nez p0, :cond_c

    .line 938
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 939
    :cond_c
    array-length v4, p0

    if-nez v4, :cond_17

    .line 940
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 944
    :cond_17
    const/4 v1, 0x0

    .line 945
    .local v1, "trueCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    array-length v4, p0

    if-ge v0, v4, :cond_27

    .line 948
    aget-boolean v4, p0, v0

    if-eqz v4, :cond_24

    .line 949
    if-ge v1, v2, :cond_2a

    .line 950
    add-int/lit8 v1, v1, 0x1

    .line 945
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 958
    :cond_27
    if-ne v1, v2, :cond_2b

    :goto_29
    move v3, v2

    :cond_2a
    return v3

    :cond_2b
    move v2, v3

    goto :goto_29
.end method
