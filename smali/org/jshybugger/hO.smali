.class public final Lorg/jshybugger/ho;
.super Ljava/lang/Object;
.source "Option.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 6

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "arg"

    iput-object v0, p0, Lorg/jshybugger/ho;->c:Ljava/lang/String;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lorg/jshybugger/ho;->e:I

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/ho;->f:Ljava/util/List;

    .line 123
    invoke-static {p1}, Lorg/jshybugger/a;->a(Ljava/lang/String;)V

    .line 125
    iput-object p1, p0, Lorg/jshybugger/ho;->a:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lorg/jshybugger/ho;->b:Ljava/lang/String;

    .line 129
    if-eqz p3, :cond_1d

    .line 131
    const/4 v0, 0x1

    iput v0, p0, Lorg/jshybugger/ho;->e:I

    .line 134
    :cond_1d
    iput-object p4, p0, Lorg/jshybugger/ho;->d:Ljava/lang/String;

    .line 135
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 425
    .line 428
    invoke-direct {p0, p1}, Lorg/jshybugger/ho;->c(Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 468
    iget v0, p0, Lorg/jshybugger/ho;->e:I

    if-lez v0, :cond_18

    iget-object v0, p0, Lorg/jshybugger/ho;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/jshybugger/ho;->e:I

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_18

    .line 470
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot add value, list full."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_18
    iget-object v0, p0, Lorg/jshybugger/ho;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lorg/jshybugger/ho;->a:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 159
    iget-object v0, p0, Lorg/jshybugger/ho;->b:Ljava/lang/String;

    .line 162
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/jshybugger/ho;->a:Ljava/lang/String;

    goto :goto_6
.end method

.method final a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 401
    iget v0, p0, Lorg/jshybugger/ho;->e:I

    packed-switch v0, :pswitch_data_12

    .line 407
    invoke-direct {p0, p1}, Lorg/jshybugger/ho;->b(Ljava/lang/String;)V

    .line 409
    return-void

    .line 404
    :pswitch_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NO_ARGS_ALLOWED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    nop

    :pswitch_data_12
    .packed-switch -0x1
        :pswitch_9
    .end packed-switch
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lorg/jshybugger/ho;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lorg/jshybugger/ho;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 641
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/ho;

    .line 642
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jshybugger/ho;->f:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/jshybugger/ho;->f:Ljava/util/List;
    :try_end_f
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_f} :catch_10

    .line 643
    return-object v0

    .line 645
    :catch_10
    move-exception v0

    .line 647
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "A CloneNotSupportedException was thrown: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lorg/jshybugger/ho;->b:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 595
    if-ne p0, p1, :cond_5

    .line 616
    :cond_4
    :goto_4
    return v0

    .line 599
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    .line 601
    goto :goto_4

    .line 604
    :cond_13
    check-cast p1, Lorg/jshybugger/ho;

    .line 607
    iget-object v2, p0, Lorg/jshybugger/ho;->a:Ljava/lang/String;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lorg/jshybugger/ho;->a:Ljava/lang/String;

    iget-object v3, p1, Lorg/jshybugger/ho;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    :cond_23
    move v0, v1

    .line 609
    goto :goto_4

    .line 607
    :cond_25
    iget-object v2, p1, Lorg/jshybugger/ho;->a:Ljava/lang/String;

    if-nez v2, :cond_23

    .line 611
    :cond_29
    iget-object v2, p0, Lorg/jshybugger/ho;->b:Ljava/lang/String;

    if-eqz v2, :cond_39

    iget-object v2, p0, Lorg/jshybugger/ho;->b:Ljava/lang/String;

    iget-object v3, p1, Lorg/jshybugger/ho;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_37
    move v0, v1

    .line 613
    goto :goto_4

    .line 611
    :cond_39
    iget-object v2, p1, Lorg/jshybugger/ho;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto :goto_37
.end method

.method public final f()Z
    .registers 3

    .prologue
    .line 256
    iget v0, p0, Lorg/jshybugger/ho;->e:I

    if-gtz v0, :cond_9

    iget v0, p0, Lorg/jshybugger/ho;->e:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_b

    :cond_9
    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lorg/jshybugger/ho;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Z
    .registers 2

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 622
    iget-object v0, p0, Lorg/jshybugger/ho;->a:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/jshybugger/ho;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 623
    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/jshybugger/ho;->b:Ljava/lang/String;

    if-eqz v2, :cond_17

    iget-object v1, p0, Lorg/jshybugger/ho;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_17
    add-int/2addr v0, v1

    .line 624
    return v0

    :cond_19
    move v0, v1

    .line 622
    goto :goto_b
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Lorg/jshybugger/ho;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Z
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, Lorg/jshybugger/ho;->c:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/jshybugger/ho;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final k()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 532
    iget-object v0, p0, Lorg/jshybugger/ho;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lorg/jshybugger/ho;->f:Ljava/util/List;

    iget-object v1, p0, Lorg/jshybugger/ho;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_9
.end method

.method public final l()Ljava/util/List;
    .registers 2

    .prologue
    .line 541
    iget-object v0, p0, Lorg/jshybugger/ho;->f:Ljava/util/List;

    return-object v0
.end method

.method final m()V
    .registers 2

    .prologue
    .line 659
    iget-object v0, p0, Lorg/jshybugger/ho;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 660
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 551
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "[ option: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 553
    iget-object v2, p0, Lorg/jshybugger/ho;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 555
    iget-object v2, p0, Lorg/jshybugger/ho;->b:Ljava/lang/String;

    if-eqz v2, :cond_1c

    .line 557
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/jshybugger/ho;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 560
    :cond_1c
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 562
    iget v2, p0, Lorg/jshybugger/ho;->e:I

    if-gt v2, v0, :cond_2a

    iget v2, p0, Lorg/jshybugger/ho;->e:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_46

    :cond_2a
    :goto_2a
    if-eqz v0, :cond_48

    .line 564
    const-string v0, "[ARG...]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 571
    :cond_31
    :goto_31
    const-string v0, " :: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lorg/jshybugger/ho;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 573
    const-string v0, " ]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 580
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 562
    :cond_46
    const/4 v0, 0x0

    goto :goto_2a

    .line 566
    :cond_48
    invoke-virtual {p0}, Lorg/jshybugger/ho;->f()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 568
    const-string v0, " [ARG]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_31
.end method
