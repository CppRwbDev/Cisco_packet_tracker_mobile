.class public final Lorg/jshybugger/lb;
.super Lorg/jshybugger/kX;
.source "Interpreter.java"

# interfaces
.implements Lorg/jshybugger/kS;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/jshybugger/kX;-><init>()V

    .line 818
    return-void
.end method

.method private static a([BI)I
    .registers 4

    .prologue
    .line 229
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a(Lorg/jshybugger/kK;[I)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 651
    iget-object v0, p1, Lorg/jshybugger/kK;->d:Ljava/lang/Object;

    check-cast v0, Lorg/jshybugger/lc;

    .line 652
    iget-object v1, v0, Lorg/jshybugger/lc;->c:Lorg/jshybugger/ld;

    .line 653
    iget v2, v0, Lorg/jshybugger/lc;->d:I

    if-ltz v2, :cond_18

    .line 654
    iget-object v2, v1, Lorg/jshybugger/ld;->c:[B

    iget v0, v0, Lorg/jshybugger/lc;->d:I

    invoke-static {v2, v0}, Lorg/jshybugger/lb;->a([BI)I

    move-result v0

    aput v0, p2, v3

    .line 658
    :goto_15
    iget-object v0, v1, Lorg/jshybugger/ld;->b:Ljava/lang/String;

    return-object v0

    .line 656
    :cond_18
    aput v3, p2, v3

    goto :goto_15
.end method

.method public final a(Lorg/jshybugger/lR;Ljava/lang/String;)Ljava/lang/String;
    .registers 16

    .prologue
    .line 664
    const-string v5, "org.mozilla.javascript.Interpreter.interpretLoop"

    .line 665
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    invoke-direct {v6, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 666
    const-string v0, "line.separator"

    invoke-static {v0}, Lorg/jshybugger/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 668
    iget-object v0, p1, Lorg/jshybugger/lR;->a:Ljava/lang/Object;

    check-cast v0, [Lorg/jshybugger/lc;

    .line 669
    iget-object v8, p1, Lorg/jshybugger/lR;->b:[I

    .line 670
    array-length v2, v0

    .line 671
    array-length v3, v8

    .line 672
    const/4 v1, 0x0

    move v12, v1

    move v1, v2

    move v2, v12

    .line 673
    :goto_1f
    if-eqz v1, :cond_9c

    .line 674
    add-int/lit8 v4, v1, -0x1

    .line 675
    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 676
    if-ltz v1, :cond_9c

    .line 677
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v1, v9

    .line 683
    :goto_2e
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v1, v9, :cond_43

    .line 684
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 685
    const/16 v10, 0xa

    if-eq v9, v10, :cond_43

    const/16 v10, 0xd

    if-eq v9, v10, :cond_43

    .line 686
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 689
    :cond_43
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 692
    aget-object v2, v0, v4

    .line 693
    :goto_4c
    if-eqz v2, :cond_99

    .line 694
    if-nez v3, :cond_53

    invoke-static {}, Lorg/jshybugger/lh;->a()Ljava/lang/RuntimeException;

    .line 695
    :cond_53
    add-int/lit8 v3, v3, -0x1

    .line 696
    iget-object v9, v2, Lorg/jshybugger/lc;->c:Lorg/jshybugger/ld;

    .line 697
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 698
    const-string v10, "\tat script"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 699
    iget-object v10, v9, Lorg/jshybugger/ld;->a:Ljava/lang/String;

    if-eqz v10, :cond_75

    iget-object v10, v9, Lorg/jshybugger/ld;->a:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_75

    .line 700
    const/16 v10, 0x2e

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 701
    iget-object v10, v9, Lorg/jshybugger/ld;->a:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 703
    :cond_75
    const/16 v10, 0x28

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 704
    iget-object v10, v9, Lorg/jshybugger/ld;->b:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 705
    aget v10, v8, v3

    .line 706
    if-ltz v10, :cond_91

    .line 708
    const/16 v11, 0x3a

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 709
    iget-object v9, v9, Lorg/jshybugger/ld;->c:[B

    invoke-static {v9, v10}, Lorg/jshybugger/lb;->a([BI)I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 711
    :cond_91
    const/16 v9, 0x29

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 712
    iget-object v2, v2, Lorg/jshybugger/lc;->a:Lorg/jshybugger/lc;

    goto :goto_4c

    :cond_99
    move v2, v1

    move v1, v4

    .line 714
    goto :goto_1f

    .line 715
    :cond_9c
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 717
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/jshybugger/lR;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 596
    invoke-static {}, Lorg/jshybugger/kK;->a()Lorg/jshybugger/kK;

    move-result-object v3

    .line 597
    if-eqz v3, :cond_c

    iget-object v0, v3, Lorg/jshybugger/kK;->d:Ljava/lang/Object;

    if-nez v0, :cond_11

    .line 599
    :cond_c
    iput-object v1, p1, Lorg/jshybugger/lR;->a:Ljava/lang/Object;

    .line 600
    iput-object v1, p1, Lorg/jshybugger/lR;->b:[I

    .line 647
    :goto_10
    return-void

    .line 605
    :cond_11
    iget-object v0, v3, Lorg/jshybugger/kK;->e:Lorg/jshybugger/lK;

    if-eqz v0, :cond_1d

    iget-object v0, v3, Lorg/jshybugger/kK;->e:Lorg/jshybugger/lK;

    invoke-virtual {v0}, Lorg/jshybugger/lK;->a()I

    move-result v0

    if-nez v0, :cond_38

    .line 608
    :cond_1d
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/jshybugger/lc;

    move-object v1, v0

    .line 623
    :goto_21
    array-length v0, v1

    add-int/lit8 v4, v0, -0x1

    iget-object v0, v3, Lorg/jshybugger/kK;->d:Ljava/lang/Object;

    check-cast v0, Lorg/jshybugger/lc;

    aput-object v0, v1, v4

    move v0, v2

    .line 626
    :goto_2b
    array-length v3, v1

    if-eq v2, v3, :cond_55

    .line 627
    aget-object v3, v1, v2

    iget v3, v3, Lorg/jshybugger/lc;->b:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 626
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 610
    :cond_38
    iget-object v0, v3, Lorg/jshybugger/kK;->e:Lorg/jshybugger/lK;

    invoke-virtual {v0}, Lorg/jshybugger/lK;->a()I

    move-result v0

    .line 611
    iget-object v1, v3, Lorg/jshybugger/kK;->e:Lorg/jshybugger/lK;

    invoke-virtual {v1}, Lorg/jshybugger/lK;->b()Ljava/lang/Object;

    move-result-object v1

    iget-object v4, v3, Lorg/jshybugger/kK;->d:Ljava/lang/Object;

    if-ne v1, v4, :cond_4a

    .line 618
    add-int/lit8 v0, v0, -0x1

    .line 620
    :cond_4a
    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lorg/jshybugger/lc;

    .line 621
    iget-object v1, v3, Lorg/jshybugger/kK;->e:Lorg/jshybugger/lK;

    invoke-virtual {v1, v0}, Lorg/jshybugger/lK;->a([Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_21

    .line 630
    :cond_55
    new-array v4, v0, [I

    .line 634
    array-length v2, v1

    move v6, v2

    move v2, v0

    move v0, v6

    :goto_5b
    if-eqz v0, :cond_6e

    .line 635
    add-int/lit8 v3, v0, -0x1

    .line 636
    aget-object v0, v1, v3

    .line 637
    :goto_61
    if-eqz v0, :cond_6c

    .line 638
    add-int/lit8 v2, v2, -0x1

    .line 639
    iget v5, v0, Lorg/jshybugger/lc;->d:I

    aput v5, v4, v2

    .line 640
    iget-object v0, v0, Lorg/jshybugger/lc;->a:Lorg/jshybugger/lc;

    goto :goto_61

    :cond_6c
    move v0, v3

    .line 642
    goto :goto_5b

    .line 643
    :cond_6e
    if-eqz v2, :cond_73

    invoke-static {}, Lorg/jshybugger/lh;->a()Ljava/lang/RuntimeException;

    .line 645
    :cond_73
    iput-object v1, p1, Lorg/jshybugger/lR;->a:Ljava/lang/Object;

    .line 646
    iput-object v4, p1, Lorg/jshybugger/lR;->b:[I

    goto :goto_10
.end method
