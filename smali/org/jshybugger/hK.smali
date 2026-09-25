.class public final Lorg/jshybugger/hk;
.super Ljava/lang/Object;
.source "HelpFormatter.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/16 v0, 0x4a

    iput v0, p0, Lorg/jshybugger/hk;->a:I

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Lorg/jshybugger/hk;->b:I

    .line 88
    const/4 v0, 0x3

    iput v0, p0, Lorg/jshybugger/hk;->c:I

    .line 96
    const-string v0, "usage: "

    iput-object v0, p0, Lorg/jshybugger/hk;->d:Ljava/lang/String;

    .line 104
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/hk;->e:Ljava/lang/String;

    .line 112
    const-string v0, "-"

    iput-object v0, p0, Lorg/jshybugger/hk;->f:Ljava/lang/String;

    .line 120
    const-string v0, "--"

    iput-object v0, p0, Lorg/jshybugger/hk;->g:Ljava/lang/String;

    .line 128
    new-instance v0, Lorg/jshybugger/hl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jshybugger/hl;-><init>(B)V

    iput-object v0, p0, Lorg/jshybugger/hk;->h:Ljava/util/Comparator;

    .line 962
    return-void
.end method

.method private static a(Ljava/lang/String;II)I
    .registers 9

    .prologue
    const/16 v5, 0x20

    const/16 v4, 0xd

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v1, -0x1

    .line 868
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-eq v0, v1, :cond_10

    if-le v0, p1, :cond_1a

    :cond_10
    const/16 v0, 0x9

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-eq v0, v1, :cond_1d

    if-gt v0, p1, :cond_1d

    .line 874
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    .line 909
    :cond_1c
    :goto_1c
    return v0

    .line 876
    :cond_1d
    add-int/lit8 v0, p1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_27

    move v0, v1

    .line 878
    goto :goto_1c

    .line 883
    :cond_27
    add-int/lit8 v0, p1, 0x0

    .line 888
    :goto_29
    if-ltz v0, :cond_38

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_38

    if-eq v2, v3, :cond_38

    if-eq v2, v4, :cond_38

    .line 890
    add-int/lit8 v0, v0, -0x1

    goto :goto_29

    .line 894
    :cond_38
    if-gtz v0, :cond_1c

    .line 901
    add-int/lit8 v0, p1, 0x0

    .line 904
    :goto_3c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v0, v2, :cond_4f

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_4f

    if-eq v2, v3, :cond_4f

    if-eq v2, v4, :cond_4f

    .line 906
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 909
    :cond_4f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_1c

    move v0, v1

    goto :goto_1c
.end method

.method private static a(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 921
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 923
    const/4 v0, 0x0

    :goto_6
    if-ge v0, p0, :cond_10

    .line 925
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 923
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 928
    :cond_10
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 940
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 952
    :cond_8
    :goto_8
    return-object p0

    .line 945
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 947
    :goto_d
    if-lez v0, :cond_1e

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 949
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 952
    :cond_1e
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_8
.end method

.method private a(Ljava/lang/StringBuffer;IILjava/lang/String;)Ljava/lang/StringBuffer;
    .registers 11

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 812
    invoke-static {p4, p2, v4}, Lorg/jshybugger/hk;->a(Ljava/lang/String;II)I

    move-result v0

    .line 814
    if-ne v0, v5, :cond_10

    .line 816
    invoke-static {p4}, Lorg/jshybugger/hk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 841
    :goto_f
    return-object p1

    .line 820
    :cond_10
    invoke-virtual {p4, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jshybugger/hk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/jshybugger/hk;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 822
    if-lt p3, p2, :cond_24

    .line 825
    const/4 p3, 0x1

    .line 830
    :cond_24
    invoke-static {p3}, Lorg/jshybugger/hk;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 834
    :goto_28
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p4

    .line 835
    invoke-static {p4, p2, v4}, Lorg/jshybugger/hk;->a(Ljava/lang/String;II)I

    move-result v0

    .line 837
    if-ne v0, v5, :cond_4b

    .line 839
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f

    .line 844
    :cond_4b
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, p2, :cond_56

    add-int/lit8 v2, p3, -0x1

    if-ne v0, v2, :cond_56

    move v0, p2

    .line 849
    :cond_56
    invoke-virtual {p4, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jshybugger/hk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/jshybugger/hk;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_28
.end method

.method private a(Ljava/lang/StringBuffer;ILorg/jshybugger/hq;II)Ljava/lang/StringBuffer;
    .registers 17

    .prologue
    .line 716
    invoke-static {p4}, Lorg/jshybugger/hk;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 717
    invoke-static/range {p5 .. p5}, Lorg/jshybugger/hk;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 723
    const/4 v1, 0x0

    .line 725
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 727
    invoke-virtual {p3}, Lorg/jshybugger/hq;->b()Ljava/util/List;

    move-result-object v3

    .line 729
    iget-object v0, p0, Lorg/jshybugger/hk;->h:Ljava/util/Comparator;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 731
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 733
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/ho;

    .line 734
    new-instance v7, Ljava/lang/StringBuffer;

    const/16 v8, 0x8

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 736
    invoke-virtual {v0}, Lorg/jshybugger/ho;->b()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_82

    .line 738
    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuffer;

    const-string v10, "   "

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lorg/jshybugger/hk;->g:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v0}, Lorg/jshybugger/ho;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 750
    :cond_54
    :goto_54
    invoke-virtual {v0}, Lorg/jshybugger/ho;->f()Z

    move-result v8

    if-eqz v8, :cond_73

    .line 752
    invoke-virtual {v0}, Lorg/jshybugger/ho;->j()Z

    move-result v8

    if-eqz v8, :cond_ad

    .line 754
    const-string v8, " <"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v0}, Lorg/jshybugger/ho;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v8, ">"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 762
    :cond_73
    :goto_73
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-le v0, v1, :cond_b3

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    :goto_80
    move v1, v0

    .line 764
    goto :goto_1b

    .line 742
    :cond_82
    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lorg/jshybugger/hk;->f:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v0}, Lorg/jshybugger/ho;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 744
    invoke-virtual {v0}, Lorg/jshybugger/ho;->e()Z

    move-result v8

    if-eqz v8, :cond_54

    .line 746
    const/16 v8, 0x2c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lorg/jshybugger/hk;->g:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v0}, Lorg/jshybugger/ho;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_54

    .line 758
    :cond_ad
    const/16 v0, 0x20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_73

    :cond_b3
    move v0, v1

    .line 763
    goto :goto_80

    .line 766
    :cond_b5
    const/4 v0, 0x0

    .line 768
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v0

    :goto_bb
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 770
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/ho;

    .line 771
    new-instance v7, Ljava/lang/StringBuffer;

    add-int/lit8 v3, v2, 0x1

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 773
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v2, v1, :cond_e9

    .line 775
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    sub-int v2, v1, v2

    invoke-static {v2}, Lorg/jshybugger/hk;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 778
    :cond_e9
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 780
    add-int v2, v1, p5

    .line 782
    invoke-virtual {v0}, Lorg/jshybugger/ho;->g()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_fb

    .line 784
    invoke-virtual {v0}, Lorg/jshybugger/ho;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 787
    :cond_fb
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v2, v0}, Lorg/jshybugger/hk;->a(Ljava/lang/StringBuffer;IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 789
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 791
    iget-object v0, p0, Lorg/jshybugger/hk;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10d
    move v2, v3

    .line 793
    goto :goto_bb

    .line 795
    :cond_10f
    return-object p1
.end method

.method private a(Ljava/io/PrintWriter;IILjava/lang/String;)V
    .registers 7

    .prologue
    .line 692
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 694
    invoke-direct {p0, v0, p2, p3, p4}, Lorg/jshybugger/hk;->a(Ljava/lang/StringBuffer;IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 695
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    return-void
.end method

.method private a(Ljava/io/PrintWriter;ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 679
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/jshybugger/hk;->a(Ljava/io/PrintWriter;IILjava/lang/String;)V

    .line 680
    return-void
.end method

.method private a(Ljava/io/PrintWriter;ILjava/lang/String;Lorg/jshybugger/hq;)V
    .registers 10

    .prologue
    .line 509
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/jshybugger/hk;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 512
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 517
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p4}, Lorg/jshybugger/hq;->a()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 518
    iget-object v3, p0, Lorg/jshybugger/hk;->h:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 520
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_28
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 523
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/ho;

    .line 526
    invoke-virtual {p4, v0}, Lorg/jshybugger/hq;->a(Lorg/jshybugger/ho;)Lorg/jshybugger/hp;

    move-result-object v4

    .line 529
    if-eqz v4, :cond_52

    .line 532
    invoke-interface {v2, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 535
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 539
    invoke-direct {p0, v1, v4}, Lorg/jshybugger/hk;->a(Ljava/lang/StringBuffer;Lorg/jshybugger/hp;)V

    .line 552
    :cond_46
    :goto_46
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 554
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_28

    .line 549
    :cond_52
    invoke-virtual {v0}, Lorg/jshybugger/ho;->h()Z

    move-result v4

    invoke-static {v1, v0, v4}, Lorg/jshybugger/hk;->a(Ljava/lang/StringBuffer;Lorg/jshybugger/ho;Z)V

    goto :goto_46

    .line 560
    :cond_5a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jshybugger/hk;->a(Ljava/io/PrintWriter;IILjava/lang/String;)V

    .line 561
    return-void
.end method

.method private static a(Ljava/lang/StringBuffer;Lorg/jshybugger/ho;Z)V
    .registers 5

    .prologue
    .line 607
    if-nez p2, :cond_7

    .line 609
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 612
    :cond_7
    invoke-virtual {p1}, Lorg/jshybugger/ho;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 614
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jshybugger/ho;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 622
    :goto_1a
    invoke-virtual {p1}, Lorg/jshybugger/ho;->f()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Lorg/jshybugger/ho;->j()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 624
    const-string v0, " <"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jshybugger/ho;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 628
    :cond_39
    if-nez p2, :cond_40

    .line 630
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 632
    :cond_40
    return-void

    .line 618
    :cond_41
    const-string v0, "--"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jshybugger/ho;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1a
.end method

.method private a(Ljava/lang/StringBuffer;Lorg/jshybugger/hp;)V
    .registers 6

    .prologue
    .line 573
    invoke-virtual {p2}, Lorg/jshybugger/hp;->b()Z

    move-result v0

    if-nez v0, :cond_b

    .line 575
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 578
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lorg/jshybugger/hp;->a()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 579
    iget-object v1, p0, Lorg/jshybugger/hk;->h:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 581
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 584
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/ho;

    const/4 v2, 0x1

    invoke-static {p1, v0, v2}, Lorg/jshybugger/hk;->a(Ljava/lang/StringBuffer;Lorg/jshybugger/ho;Z)V

    .line 586
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 588
    const-string v0, " | "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1d

    .line 592
    :cond_39
    invoke-virtual {p2}, Lorg/jshybugger/hp;->b()Z

    move-result v0

    if-nez v0, :cond_44

    .line 594
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 596
    :cond_44
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/jshybugger/hq;)V
    .registers 11

    .prologue
    const/4 v7, 0x0

    .line 334
    iget v2, p0, Lorg/jshybugger/hk;->a:I

    new-instance v6, Ljava/io/PrintWriter;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v6, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iget v4, p0, Lorg/jshybugger/hk;->b:I

    iget v5, p0, Lorg/jshybugger/hk;->c:I

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1e

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cmdLineSyntax not provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/jshybugger/hk;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lorg/jshybugger/hk;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v2, v0, v1}, Lorg/jshybugger/hk;->a(Ljava/io/PrintWriter;IILjava/lang/String;)V

    if-eqz v7, :cond_52

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_52

    invoke-direct {p0, v6, v2, v7}, Lorg/jshybugger/hk;->a(Ljava/io/PrintWriter;ILjava/lang/String;)V

    :cond_52
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/jshybugger/hk;->a(Ljava/lang/StringBuffer;ILorg/jshybugger/hq;II)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v7, :cond_72

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_72

    invoke-direct {p0, v6, v2, v7}, Lorg/jshybugger/hk;->a(Ljava/io/PrintWriter;ILjava/lang/String;)V

    :cond_72
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    .line 335
    return-void
.end method
