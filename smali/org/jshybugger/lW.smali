.class public Lorg/jshybugger/lw;
.super Ljava/lang/Object;
.source "NativeJavaObject.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/jshybugger/lU;
.implements Lorg/jshybugger/mj;


# static fields
.field private static final i:Ljava/lang/Object;


# instance fields
.field protected a:Lorg/jshybugger/lU;

.field protected b:Lorg/jshybugger/lU;

.field protected transient c:Ljava/lang/Object;

.field protected transient d:Lorg/jshybugger/lf;

.field protected transient e:Z

.field private transient g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private transient h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jshybugger/kU;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 938
    const-string v0, "Coerced Interface"

    sput-object v0, Lorg/jshybugger/lw;->i:Ljava/lang/Object;

    .line 944
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    .line 945
    const-string v1, "org.jshybugger.le"

    invoke-static {v1}, Lorg/jshybugger/lh;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 946
    if-eqz v1, :cond_35

    .line 948
    const/4 v2, 0x0

    :try_start_10
    sget-object v3, Lorg/jshybugger/lS;->j:Ljava/lang/Class;

    aput-object v3, v0, v2

    .line 949
    const/4 v2, 0x1

    const-string v3, "java.io.ObjectOutputStream"

    invoke-static {v3}, Lorg/jshybugger/lh;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v2

    .line 950
    const-string v2, "writeAdapterObject"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 953
    const/4 v2, 0x0

    sget-object v3, Lorg/jshybugger/lS;->r:Ljava/lang/Class;

    aput-object v3, v0, v2

    .line 954
    const/4 v2, 0x1

    const-string v3, "java.io.ObjectInputStream"

    invoke-static {v3}, Lorg/jshybugger/lh;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v2

    .line 955
    const-string v2, "readAdapterObject"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_35
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_35} :catch_36

    .line 961
    :cond_35
    :goto_35
    return-void

    :catch_36
    move-exception v0

    goto :goto_35
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/jshybugger/lU;Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/lU;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jshybugger/lw;-><init>(Lorg/jshybugger/lU;Ljava/lang/Object;Ljava/lang/Class;Z)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/jshybugger/lU;Ljava/lang/Object;Ljava/lang/Class;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/lU;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/jshybugger/lw;->b:Lorg/jshybugger/lU;

    .line 41
    iput-object p2, p0, Lorg/jshybugger/lw;->c:Ljava/lang/Object;

    .line 42
    iput-object p3, p0, Lorg/jshybugger/lw;->g:Ljava/lang/Class;

    .line 43
    iput-boolean p4, p0, Lorg/jshybugger/lw;->e:Z

    .line 44
    invoke-virtual {p0}, Lorg/jshybugger/lw;->d()V

    .line 45
    return-void
.end method

.method private static a(Ljava/lang/Object;)I
    .registers 5

    .prologue
    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v0, 0x5

    .line 410
    if-nez p0, :cond_7

    .line 411
    const/4 v0, 0x1

    .line 448
    :cond_6
    :goto_6
    return v0

    .line 413
    :cond_7
    sget-object v3, Lorg/jshybugger/me;->a:Ljava/lang/Object;

    if-ne p0, v3, :cond_d

    .line 414
    const/4 v0, 0x0

    goto :goto_6

    .line 416
    :cond_d
    instance-of v3, p0, Ljava/lang/CharSequence;

    if-eqz v3, :cond_13

    .line 417
    const/4 v0, 0x4

    goto :goto_6

    .line 419
    :cond_13
    instance-of v3, p0, Ljava/lang/Number;

    if-eqz v3, :cond_19

    .line 420
    const/4 v0, 0x3

    goto :goto_6

    .line 422
    :cond_19
    instance-of v3, p0, Ljava/lang/Boolean;

    if-eqz v3, :cond_1f

    .line 423
    const/4 v0, 0x2

    goto :goto_6

    .line 425
    :cond_1f
    instance-of v3, p0, Lorg/jshybugger/lU;

    if-eqz v3, :cond_36

    .line 426
    instance-of v3, p0, Lorg/jshybugger/lt;

    if-nez v3, :cond_6

    .line 429
    instance-of v0, p0, Lorg/jshybugger/ls;

    if-eqz v0, :cond_2d

    move v0, v1

    .line 430
    goto :goto_6

    .line 432
    :cond_2d
    instance-of v0, p0, Lorg/jshybugger/mj;

    if-eqz v0, :cond_33

    move v0, v2

    .line 433
    goto :goto_6

    .line 436
    :cond_33
    const/16 v0, 0x8

    goto :goto_6

    .line 439
    :cond_36
    instance-of v3, p0, Ljava/lang/Class;

    if-nez v3, :cond_6

    .line 443
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 444
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_46

    move v0, v1

    .line 445
    goto :goto_6

    :cond_46
    move v0, v2

    .line 448
    goto :goto_6
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Class;DD)J
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;DD)J"
        }
    .end annotation

    .prologue
    .line 834
    invoke-static {p0}, Lorg/jshybugger/lw;->b(Ljava/lang/Object;)D

    move-result-wide v0

    .line 836
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 838
    :cond_10
    invoke-static {p0}, Lorg/jshybugger/lS;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/jshybugger/lw;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 841
    :cond_17
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_32

    .line 842
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 848
    :goto_21
    cmpg-double v2, v0, p2

    if-ltz v2, :cond_29

    cmpl-double v2, v0, p4

    if-lez v2, :cond_30

    .line 850
    :cond_29
    invoke-static {p0}, Lorg/jshybugger/lS;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/jshybugger/lw;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 852
    :cond_30
    double-to-long v0, v0

    return-wide v0

    .line 845
    :cond_32
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_21
.end method

.method static a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 470
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p0, :cond_a

    .line 650
    :cond_9
    :goto_9
    return-object p1

    .line 474
    :cond_a
    invoke-static {p1}, Lorg/jshybugger/lw;->a(Ljava/lang/Object;)I

    move-result v0

    packed-switch v0, :pswitch_data_1b8

    goto :goto_9

    .line 484
    :pswitch_12
    sget-object v0, Lorg/jshybugger/lS;->l:Ljava/lang/Class;

    if-eq p0, v0, :cond_1a

    sget-object v0, Lorg/jshybugger/lS;->j:Ljava/lang/Class;

    if-ne p0, v0, :cond_28

    .line 486
    :cond_1a
    const-string p1, "undefined"

    goto :goto_9

    .line 478
    :pswitch_1d
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 479
    invoke-static {p1, p0}, Lorg/jshybugger/lw;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 481
    :cond_26
    const/4 p1, 0x0

    goto :goto_9

    .line 489
    :cond_28
    const-string v0, "undefined"

    invoke-static {v0, p0}, Lorg/jshybugger/lw;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_9

    .line 495
    :pswitch_2e
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_9

    sget-object v0, Lorg/jshybugger/lS;->a:Ljava/lang/Class;

    if-eq p0, v0, :cond_9

    sget-object v0, Lorg/jshybugger/lS;->j:Ljava/lang/Class;

    if-eq p0, v0, :cond_9

    .line 500
    sget-object v0, Lorg/jshybugger/lS;->l:Ljava/lang/Class;

    if-ne p0, v0, :cond_43

    .line 501
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    .line 504
    :cond_43
    invoke-static {p1, p0}, Lorg/jshybugger/lw;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_9

    .line 509
    :pswitch_47
    sget-object v0, Lorg/jshybugger/lS;->l:Ljava/lang/Class;

    if-ne p0, v0, :cond_50

    .line 510
    invoke-static {p1}, Lorg/jshybugger/lS;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    .line 512
    :cond_50
    sget-object v0, Lorg/jshybugger/lS;->j:Ljava/lang/Class;

    if-ne p0, v0, :cond_5b

    .line 513
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p1}, Lorg/jshybugger/lw;->b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_9

    .line 515
    :cond_5b
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_65

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6d

    :cond_65
    sget-object v0, Lorg/jshybugger/lS;->i:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 517
    :cond_6d
    invoke-static {p0, p1}, Lorg/jshybugger/lw;->b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_9

    .line 520
    :cond_72
    invoke-static {p1, p0}, Lorg/jshybugger/lw;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_9

    .line 525
    :pswitch_76
    sget-object v0, Lorg/jshybugger/lS;->l:Ljava/lang/Class;

    if-eq p0, v0, :cond_80

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 526
    :cond_80
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    .line 528
    :cond_85
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_8d

    sget-object v0, Lorg/jshybugger/lS;->c:Ljava/lang/Class;

    if-ne p0, v0, :cond_a9

    :cond_8d
    move-object v0, p1

    .line 535
    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a3

    .line 536
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    goto/16 :goto_9

    .line 539
    :cond_a3
    invoke-static {p0, p1}, Lorg/jshybugger/lw;->b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_9

    .line 542
    :cond_a9
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_b3

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_bb

    :cond_b3
    sget-object v0, Lorg/jshybugger/lS;->i:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 545
    :cond_bb
    invoke-static {p0, p1}, Lorg/jshybugger/lw;->b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_9

    .line 548
    :cond_c1
    invoke-static {p1, p0}, Lorg/jshybugger/lw;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_9

    .line 553
    :pswitch_c6
    instance-of v0, p1, Lorg/jshybugger/mj;

    if-eqz v0, :cond_d0

    .line 554
    check-cast p1, Lorg/jshybugger/mj;

    invoke-interface {p1}, Lorg/jshybugger/mj;->b()Ljava/lang/Object;

    move-result-object p1

    .line 557
    :cond_d0
    sget-object v0, Lorg/jshybugger/lS;->d:Ljava/lang/Class;

    if-eq p0, v0, :cond_9

    sget-object v0, Lorg/jshybugger/lS;->j:Ljava/lang/Class;

    if-eq p0, v0, :cond_9

    .line 561
    sget-object v0, Lorg/jshybugger/lS;->l:Ljava/lang/Class;

    if-ne p0, v0, :cond_e2

    .line 562
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_9

    .line 565
    :cond_e2
    invoke-static {p1, p0}, Lorg/jshybugger/lw;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_9

    .line 571
    :pswitch_e7
    instance-of v0, p1, Lorg/jshybugger/mj;

    if-eqz v0, :cond_f1

    .line 572
    check-cast p1, Lorg/jshybugger/mj;

    invoke-interface {p1}, Lorg/jshybugger/mj;->b()Ljava/lang/Object;

    move-result-object p1

    .line 574
    :cond_f1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_104

    .line 575
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_fe

    .line 576
    invoke-static {p1, p0}, Lorg/jshybugger/lw;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 578
    :cond_fe
    invoke-static {p0, p1}, Lorg/jshybugger/lw;->b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_9

    .line 581
    :cond_104
    sget-object v0, Lorg/jshybugger/lS;->l:Ljava/lang/Class;

    if-ne p0, v0, :cond_10e

    .line 582
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_9

    .line 585
    :cond_10e
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 589
    invoke-static {p1, p0}, Lorg/jshybugger/lw;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_9

    .line 596
    :pswitch_119
    sget-object v0, Lorg/jshybugger/lS;->l:Ljava/lang/Class;

    if-ne p0, v0, :cond_123

    .line 597
    invoke-static {p1}, Lorg/jshybugger/lS;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_9

    .line 599
    :cond_123
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_136

    .line 600
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_130

    .line 601
    invoke-static {p1, p0}, Lorg/jshybugger/lw;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 603
    :cond_130
    invoke-static {p0, p1}, Lorg/jshybugger/lw;->b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_9

    .line 605
    :cond_136
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 608
    sget-object v0, Lorg/jshybugger/lS;->m:Ljava/lang/Class;

    if-ne p0, v0, :cond_152

    instance-of v0, p1, Lorg/jshybugger/lq;

    if-eqz v0, :cond_152

    .line 611
    check-cast p1, Lorg/jshybugger/lq;

    invoke-virtual {p1}, Lorg/jshybugger/lq;->e()D

    move-result-wide v0

    .line 613
    new-instance p1, Ljava/util/Date;

    double-to-long v0, v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_9

    .line 615
    :cond_152
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_187

    instance-of v0, p1, Lorg/jshybugger/lm;

    if-eqz v0, :cond_187

    move-object v0, p1

    .line 618
    check-cast v0, Lorg/jshybugger/lm;

    .line 619
    invoke-virtual {v0}, Lorg/jshybugger/lm;->e()J

    move-result-wide v4

    .line 620
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 621
    long-to-int v1, v4

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 622
    :goto_16c
    int-to-long v6, v2

    cmp-long v6, v6, v4

    if-gez v6, :cond_184

    .line 624
    :try_start_171
    invoke-virtual {v0, v2, v0}, Lorg/jshybugger/lm;->a(ILorg/jshybugger/lU;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v6}, Lorg/jshybugger/lw;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v1, v2, v6}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_17c
    .catch Lorg/jshybugger/kT; {:try_start_171 .. :try_end_17c} :catch_17f

    .line 622
    :goto_17c
    add-int/lit8 v2, v2, 0x1

    goto :goto_16c

    .line 628
    :catch_17f
    move-exception v6

    invoke-static {p1, p0}, Lorg/jshybugger/lw;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_17c

    :cond_184
    move-object p1, v1

    .line 632
    goto/16 :goto_9

    .line 634
    :cond_187
    instance-of v0, p1, Lorg/jshybugger/mj;

    if-eqz v0, :cond_19c

    .line 635
    check-cast p1, Lorg/jshybugger/mj;

    invoke-interface {p1}, Lorg/jshybugger/mj;->b()Ljava/lang/Object;

    move-result-object p1

    .line 636
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 638
    invoke-static {p1, p0}, Lorg/jshybugger/lw;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_9

    .line 640
    :cond_19c
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1b2

    instance-of v0, p1, Lorg/jshybugger/ly;

    if-nez v0, :cond_1aa

    instance-of v0, p1, Lorg/jshybugger/lr;

    if-eqz v0, :cond_1b2

    .line 643
    :cond_1aa
    check-cast p1, Lorg/jshybugger/lV;

    invoke-static {p0, p1}, Lorg/jshybugger/lw;->a(Ljava/lang/Class;Lorg/jshybugger/lV;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_9

    .line 645
    :cond_1b2
    invoke-static {p1, p0}, Lorg/jshybugger/lw;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_9

    .line 474
    nop

    :pswitch_data_1b8
    .packed-switch 0x0
        :pswitch_12
        :pswitch_1d
        :pswitch_2e
        :pswitch_47
        :pswitch_76
        :pswitch_c6
        :pswitch_e7
        :pswitch_e7
        :pswitch_119
    .end packed-switch
.end method

.method protected static a(Ljava/lang/Class;Lorg/jshybugger/lV;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/jshybugger/lV;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 660
    sget-object v0, Lorg/jshybugger/lw;->i:Ljava/lang/Object;

    invoke-static {v0, p0}, Lorg/jshybugger/lh;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 661
    invoke-virtual {p1, v1}, Lorg/jshybugger/lV;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 662
    if-eqz v0, :cond_d

    .line 670
    :goto_c
    return-object v0

    .line 666
    :cond_d
    invoke-static {}, Lorg/jshybugger/kK;->h()Lorg/jshybugger/kK;

    move-result-object v0

    .line 667
    invoke-static {v0, p0, p1}, Lorg/jshybugger/kZ;->a(Lorg/jshybugger/kK;Ljava/lang/Class;Lorg/jshybugger/lV;)Ljava/lang/Object;

    move-result-object v0

    .line 669
    invoke-virtual {p1, v1, v0}, Lorg/jshybugger/lV;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 205
    invoke-static {p0, p1}, Lorg/jshybugger/lw;->b(Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v0

    .line 207
    const/16 v1, 0x63

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static b(Ljava/lang/Object;)D
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 786
    move-object v0, p0

    :goto_2
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_d

    .line 787
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 827
    :goto_c
    return-wide v0

    .line 789
    :cond_d
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 790
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/jshybugger/lS;->a(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_c

    .line 792
    :cond_18
    instance-of v2, v0, Lorg/jshybugger/lU;

    if-eqz v2, :cond_2c

    .line 793
    instance-of v2, v0, Lorg/jshybugger/mj;

    if-eqz v2, :cond_27

    .line 795
    check-cast v0, Lorg/jshybugger/mj;

    invoke-interface {v0}, Lorg/jshybugger/mj;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 798
    :cond_27
    invoke-static {v0}, Lorg/jshybugger/lS;->b(Ljava/lang/Object;)D

    move-result-wide v0

    goto :goto_c

    .line 804
    :cond_2c
    :try_start_2c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "doubleValue"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_36
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2c .. :try_end_36} :catch_5d
    .catch Ljava/lang/SecurityException; {:try_start_2c .. :try_end_36} :catch_5b

    move-result-object v1

    .line 813
    :goto_37
    if-eqz v1, :cond_4b

    .line 815
    const/4 v2, 0x0

    :try_start_3a
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D
    :try_end_43
    .catch Ljava/lang/IllegalAccessException; {:try_start_3a .. :try_end_43} :catch_45
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3a .. :try_end_43} :catch_54

    move-result-wide v0

    goto :goto_c

    .line 820
    :catch_45
    move-exception v1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Lorg/jshybugger/lw;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 827
    :cond_4b
    :goto_4b
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jshybugger/lS;->a(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_c

    .line 824
    :catch_54
    move-exception v1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Lorg/jshybugger/lw;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_4b

    .line 811
    :catch_5b
    move-exception v2

    goto :goto_37

    .line 808
    :catch_5d
    move-exception v2

    goto :goto_37
.end method

.method private static b(Ljava/lang/Class;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 380
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 381
    const/4 v0, 0x1

    .line 405
    :goto_5
    return v0

    .line 383
    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_c

    .line 384
    const/4 v0, 0x2

    goto :goto_5

    .line 386
    :cond_c
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_12

    .line 387
    const/4 v0, 0x3

    goto :goto_5

    .line 389
    :cond_12
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_18

    .line 390
    const/4 v0, 0x4

    goto :goto_5

    .line 392
    :cond_18
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1e

    .line 393
    const/4 v0, 0x5

    goto :goto_5

    .line 395
    :cond_1e
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_24

    .line 396
    const/4 v0, 0x6

    goto :goto_5

    .line 398
    :cond_24
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2a

    .line 399
    const/4 v0, 0x7

    goto :goto_5

    .line 401
    :cond_2a
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_31

    .line 402
    const/16 v0, 0x63

    goto :goto_5

    .line 405
    :cond_31
    const/16 v0, 0x8

    goto :goto_5
.end method

.method static b(Ljava/lang/Object;Ljava/lang/Class;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    const/16 v4, 0x63

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 234
    invoke-static {p0}, Lorg/jshybugger/lw;->a(Ljava/lang/Object;)I

    move-result v5

    .line 236
    packed-switch v5, :pswitch_data_116

    :cond_d
    move v0, v4

    .line 376
    :cond_e
    :goto_e
    return v0

    .line 239
    :pswitch_f
    sget-object v1, Lorg/jshybugger/lS;->l:Ljava/lang/Class;

    if-eq p1, v1, :cond_e

    sget-object v1, Lorg/jshybugger/lS;->j:Ljava/lang/Class;

    if-ne p1, v1, :cond_d

    goto :goto_e

    .line 246
    :pswitch_18
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_e

    .line 253
    :pswitch_1f
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v5, :cond_e

    .line 256
    sget-object v0, Lorg/jshybugger/lS;->a:Ljava/lang/Class;

    if-ne p1, v0, :cond_29

    move v0, v1

    .line 257
    goto :goto_e

    .line 259
    :cond_29
    sget-object v0, Lorg/jshybugger/lS;->j:Ljava/lang/Class;

    if-ne p1, v0, :cond_2f

    move v0, v2

    .line 260
    goto :goto_e

    .line 262
    :cond_2f
    sget-object v0, Lorg/jshybugger/lS;->l:Ljava/lang/Class;

    if-ne p1, v0, :cond_d

    move v0, v3

    .line 263
    goto :goto_e

    .line 268
    :pswitch_35
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 269
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_e

    .line 272
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_d

    .line 273
    invoke-static {p1}, Lorg/jshybugger/lw;->b(Ljava/lang/Class;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 277
    :cond_4a
    sget-object v0, Lorg/jshybugger/lS;->l:Ljava/lang/Class;

    if-ne p1, v0, :cond_51

    .line 279
    const/16 v0, 0x9

    goto :goto_e

    .line 281
    :cond_51
    sget-object v0, Lorg/jshybugger/lS;->j:Ljava/lang/Class;

    if-ne p1, v0, :cond_58

    .line 282
    const/16 v0, 0xa

    goto :goto_e

    .line 284
    :cond_58
    sget-object v0, Lorg/jshybugger/lS;->i:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    .line 286
    goto :goto_e

    .line 292
    :pswitch_62
    sget-object v5, Lorg/jshybugger/lS;->l:Ljava/lang/Class;

    if-eq p1, v5, :cond_e

    .line 295
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    move v0, v1

    .line 296
    goto :goto_e

    .line 298
    :cond_6e
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 299
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7a

    move v0, v2

    .line 300
    goto :goto_e

    .line 301
    :cond_7a
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_d

    move v0, v3

    .line 302
    goto :goto_e

    .line 308
    :pswitch_80
    sget-object v1, Lorg/jshybugger/lS;->d:Ljava/lang/Class;

    if-eq p1, v1, :cond_e

    .line 311
    sget-object v0, Lorg/jshybugger/lS;->j:Ljava/lang/Class;

    if-ne p1, v0, :cond_8a

    move v0, v2

    .line 312
    goto :goto_e

    .line 314
    :cond_8a
    sget-object v0, Lorg/jshybugger/lS;->l:Ljava/lang/Class;

    if-ne p1, v0, :cond_d

    move v0, v3

    .line 315
    goto/16 :goto_e

    .line 322
    :pswitch_91
    instance-of v0, p0, Lorg/jshybugger/mj;

    if-eqz v0, :cond_9b

    .line 323
    check-cast p0, Lorg/jshybugger/mj;

    invoke-interface {p0}, Lorg/jshybugger/mj;->b()Ljava/lang/Object;

    move-result-object p0

    .line 325
    :cond_9b
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 326
    const/4 v0, 0x0

    goto/16 :goto_e

    .line 328
    :cond_a4
    sget-object v0, Lorg/jshybugger/lS;->l:Ljava/lang/Class;

    if-ne p1, v0, :cond_ab

    move v0, v1

    .line 329
    goto/16 :goto_e

    .line 331
    :cond_ab
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_d

    .line 332
    const/4 v0, 0x7

    if-ne v5, v0, :cond_bb

    move v0, v4

    goto/16 :goto_e

    :cond_bb
    invoke-static {p1}, Lorg/jshybugger/lw;->b(Ljava/lang/Class;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_e

    .line 339
    :pswitch_c3
    sget-object v5, Lorg/jshybugger/lS;->j:Ljava/lang/Class;

    if-eq p1, v5, :cond_cd

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 343
    :cond_cd
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_da

    .line 344
    instance-of v0, p0, Lorg/jshybugger/lm;

    if-eqz v0, :cond_d

    move v0, v1

    .line 348
    goto/16 :goto_e

    .line 351
    :cond_da
    sget-object v1, Lorg/jshybugger/lS;->j:Ljava/lang/Class;

    if-ne p1, v1, :cond_e1

    move v0, v2

    .line 352
    goto/16 :goto_e

    .line 354
    :cond_e1
    sget-object v1, Lorg/jshybugger/lS;->l:Ljava/lang/Class;

    if-ne p1, v1, :cond_e8

    move v0, v3

    .line 355
    goto/16 :goto_e

    .line 357
    :cond_e8
    sget-object v1, Lorg/jshybugger/lS;->m:Ljava/lang/Class;

    if-ne p1, v1, :cond_f2

    .line 358
    instance-of v1, p0, Lorg/jshybugger/lq;

    if-eqz v1, :cond_d

    goto/16 :goto_e

    .line 363
    :cond_f2
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_104

    .line 364
    instance-of v1, p0, Lorg/jshybugger/ly;

    if-nez v1, :cond_e

    instance-of v1, p0, Lorg/jshybugger/lr;

    if-nez v1, :cond_e

    .line 368
    const/16 v0, 0xc

    goto/16 :goto_e

    .line 370
    :cond_104
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_d

    .line 371
    invoke-static {p1}, Lorg/jshybugger/lw;->b(Ljava/lang/Class;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_e

    .line 236
    :pswitch_data_116
    .packed-switch 0x0
        :pswitch_f
        :pswitch_18
        :pswitch_1f
        :pswitch_35
        :pswitch_62
        :pswitch_80
        :pswitch_91
        :pswitch_91
        :pswitch_c3
    .end packed-switch
.end method

.method private static b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 675
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 678
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_e

    sget-object v1, Lorg/jshybugger/lS;->c:Ljava/lang/Class;

    if-ne p0, v1, :cond_26

    .line 679
    :cond_e
    sget-object v1, Lorg/jshybugger/lS;->c:Ljava/lang/Class;

    if-ne v0, v1, :cond_13

    .line 780
    :cond_12
    :goto_12
    return-object p1

    .line 682
    :cond_13
    sget-object v1, Lorg/jshybugger/lS;->c:Ljava/lang/Class;

    const-wide v4, 0x40efffe000000000L    # 65535.0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/jshybugger/lw;->a(Ljava/lang/Object;Ljava/lang/Class;DD)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    goto :goto_12

    .line 689
    :cond_26
    sget-object v1, Lorg/jshybugger/lS;->j:Ljava/lang/Class;

    if-eq p0, v1, :cond_32

    sget-object v1, Lorg/jshybugger/lS;->e:Ljava/lang/Class;

    if-eq p0, v1, :cond_32

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_41

    .line 691
    :cond_32
    sget-object v1, Lorg/jshybugger/lS;->e:Ljava/lang/Class;

    if-eq v0, v1, :cond_12

    new-instance v0, Ljava/lang/Double;

    invoke-static {p1}, Lorg/jshybugger/lw;->b(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    move-object p1, v0

    goto :goto_12

    .line 696
    :cond_41
    sget-object v1, Lorg/jshybugger/lS;->f:Ljava/lang/Class;

    if-eq p0, v1, :cond_49

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_a0

    .line 697
    :cond_49
    sget-object v1, Lorg/jshybugger/lS;->f:Ljava/lang/Class;

    if-eq v0, v1, :cond_12

    .line 701
    invoke-static {p1}, Lorg/jshybugger/lw;->b(Ljava/lang/Object;)D

    move-result-wide v0

    .line 702
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-nez v4, :cond_61

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_61

    cmpl-double v4, v0, v2

    if-nez v4, :cond_68

    .line 704
    :cond_61
    new-instance p1, Ljava/lang/Float;

    double-to-float v0, v0

    invoke-direct {p1, v0}, Ljava/lang/Float;-><init>(F)V

    goto :goto_12

    .line 707
    :cond_68
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 708
    const-wide/high16 v6, 0x36a0000000000000L    # 1.401298464324817E-45

    cmpg-double v6, v4, v6

    if-gez v6, :cond_7f

    .line 709
    new-instance p1, Ljava/lang/Float;

    cmpl-double v0, v0, v2

    if-lez v0, :cond_7c

    :goto_78
    invoke-direct {p1, v2, v3}, Ljava/lang/Float;-><init>(D)V

    goto :goto_12

    :cond_7c
    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_78

    .line 711
    :cond_7f
    const-wide v6, 0x47efffffe0000000L    # 3.4028234663852886E38

    cmpl-double v4, v4, v6

    if-lez v4, :cond_98

    .line 712
    new-instance p1, Ljava/lang/Float;

    cmpl-double v0, v0, v2

    if-lez v0, :cond_95

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    :goto_90
    invoke-direct {p1, v0}, Ljava/lang/Float;-><init>(F)V

    goto/16 :goto_12

    :cond_95
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    goto :goto_90

    .line 717
    :cond_98
    new-instance p1, Ljava/lang/Float;

    double-to-float v0, v0

    invoke-direct {p1, v0}, Ljava/lang/Float;-><init>(F)V

    goto/16 :goto_12

    .line 724
    :cond_a0
    sget-object v1, Lorg/jshybugger/lS;->g:Ljava/lang/Class;

    if-eq p0, v1, :cond_a8

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_c1

    .line 725
    :cond_a8
    sget-object v1, Lorg/jshybugger/lS;->g:Ljava/lang/Class;

    if-eq v0, v1, :cond_12

    .line 729
    sget-object v1, Lorg/jshybugger/lS;->g:Ljava/lang/Class;

    const-wide/high16 v2, -0x3e20000000000000L    # -2.147483648E9

    const-wide v4, 0x41dfffffffc00000L    # 2.147483647E9

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/jshybugger/lw;->a(Ljava/lang/Object;Ljava/lang/Class;DD)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_12

    .line 736
    :cond_c1
    sget-object v1, Lorg/jshybugger/lS;->h:Ljava/lang/Class;

    if-eq p0, v1, :cond_c9

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_e9

    .line 737
    :cond_c9
    sget-object v1, Lorg/jshybugger/lS;->h:Ljava/lang/Class;

    if-eq v0, v1, :cond_12

    .line 747
    const-wide v0, 0x43dfffffffffffffL    # 9.2233720368547748E18

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 748
    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 749
    sget-object v1, Lorg/jshybugger/lS;->h:Ljava/lang/Class;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/jshybugger/lw;->a(Ljava/lang/Object;Ljava/lang/Class;DD)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto/16 :goto_12

    .line 756
    :cond_e9
    sget-object v1, Lorg/jshybugger/lS;->k:Ljava/lang/Class;

    if-eq p0, v1, :cond_f1

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_10b

    .line 757
    :cond_f1
    sget-object v1, Lorg/jshybugger/lS;->k:Ljava/lang/Class;

    if-eq v0, v1, :cond_12

    .line 761
    sget-object v1, Lorg/jshybugger/lS;->k:Ljava/lang/Class;

    const-wide/high16 v2, -0x3f20000000000000L    # -32768.0

    const-wide v4, 0x40dfffc000000000L    # 32767.0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/jshybugger/lw;->a(Ljava/lang/Object;Ljava/lang/Class;DD)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto/16 :goto_12

    .line 768
    :cond_10b
    sget-object v1, Lorg/jshybugger/lS;->b:Ljava/lang/Class;

    if-eq p0, v1, :cond_113

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_12d

    .line 769
    :cond_113
    sget-object v1, Lorg/jshybugger/lS;->b:Ljava/lang/Class;

    if-eq v0, v1, :cond_12

    .line 773
    sget-object v1, Lorg/jshybugger/lS;->b:Ljava/lang/Class;

    const-wide/high16 v2, -0x3fa0000000000000L    # -128.0

    const-wide v4, 0x405fc00000000000L    # 127.0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/jshybugger/lw;->a(Ljava/lang/Object;Ljava/lang/Class;DD)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    goto/16 :goto_12

    .line 780
    :cond_12d
    new-instance v0, Ljava/lang/Double;

    invoke-static {p1}, Lorg/jshybugger/lw;->b(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    move-object p1, v0

    goto/16 :goto_12
.end method

.method private static c(Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 859
    const-string v0, "msg.conversion.not.allowed"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lorg/jshybugger/lf;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/jshybugger/kK;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/jshybugger/kT;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public a(ILorg/jshybugger/lU;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 81
    iget-object v0, p0, Lorg/jshybugger/lw;->d:Lorg/jshybugger/lf;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jshybugger/lf;->a(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 164
    if-nez p1, :cond_a

    .line 165
    iget-object v0, p0, Lorg/jshybugger/lw;->c:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 166
    sget-object p1, Lorg/jshybugger/lS;->a:Ljava/lang/Class;

    .line 169
    :cond_a
    if-eqz p1, :cond_10

    sget-object v0, Lorg/jshybugger/lS;->l:Ljava/lang/Class;

    if-ne p1, v0, :cond_17

    .line 170
    :cond_10
    iget-object v0, p0, Lorg/jshybugger/lw;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    :goto_16
    return-object v0

    .line 173
    :cond_17
    sget-object v0, Lorg/jshybugger/lS;->a:Ljava/lang/Class;

    if-ne p1, v0, :cond_36

    .line 174
    const-string v0, "booleanValue"

    .line 180
    :goto_1d
    invoke-virtual {p0, v0, p0}, Lorg/jshybugger/lw;->b(Ljava/lang/String;Lorg/jshybugger/lU;)Ljava/lang/Object;

    move-result-object v0

    .line 181
    instance-of v1, v0, Lorg/jshybugger/kV;

    if-eqz v1, :cond_44

    .line 182
    check-cast v0, Lorg/jshybugger/kV;

    .line 183
    invoke-static {}, Lorg/jshybugger/kK;->h()Lorg/jshybugger/kK;

    move-result-object v1

    invoke-interface {v0}, Lorg/jshybugger/kV;->g_()Lorg/jshybugger/lU;

    move-result-object v2

    sget-object v3, Lorg/jshybugger/lS;->v:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p0, v3}, Lorg/jshybugger/kV;->a(Lorg/jshybugger/kK;Lorg/jshybugger/lU;Lorg/jshybugger/lU;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_16

    .line 175
    :cond_36
    sget-object v0, Lorg/jshybugger/lS;->i:Ljava/lang/Class;

    if-ne p1, v0, :cond_3d

    .line 176
    const-string v0, "doubleValue"

    goto :goto_1d

    .line 178
    :cond_3d
    const-string v0, "msg.default.value"

    invoke-static {v0}, Lorg/jshybugger/kK;->b(Ljava/lang/String;)Lorg/jshybugger/kT;

    move-result-object v0

    throw v0

    .line 186
    :cond_44
    sget-object v0, Lorg/jshybugger/lS;->i:Ljava/lang/Class;

    if-ne p1, v0, :cond_62

    iget-object v0, p0, Lorg/jshybugger/lw;->c:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_62

    .line 189
    iget-object v0, p0, Lorg/jshybugger/lw;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 190
    if-eqz v0, :cond_5f

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_5a
    invoke-static {v0, v1}, Lorg/jshybugger/lS;->a(D)Ljava/lang/Number;

    move-result-object v0

    goto :goto_16

    :cond_5f
    const-wide/16 v0, 0x0

    goto :goto_5a

    .line 192
    :cond_62
    iget-object v0, p0, Lorg/jshybugger/lw;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 158
    const-string v0, "JavaObject"

    return-object v0
.end method

.method public a(Ljava/lang/String;Lorg/jshybugger/lU;Ljava/lang/Object;)V
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 88
    iget-object v0, p0, Lorg/jshybugger/lw;->a:Lorg/jshybugger/lU;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/jshybugger/lw;->d:Lorg/jshybugger/lf;

    invoke-virtual {v0, p1, v5}, Lorg/jshybugger/lf;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 89
    :cond_d
    iget-object v0, p0, Lorg/jshybugger/lw;->d:Lorg/jshybugger/lf;

    iget-object v3, p0, Lorg/jshybugger/lw;->c:Ljava/lang/Object;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/jshybugger/lf;->a(Lorg/jshybugger/lU;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 92
    :goto_17
    return-void

    .line 91
    :cond_18
    iget-object v0, p0, Lorg/jshybugger/lw;->a:Lorg/jshybugger/lU;

    iget-object v1, p0, Lorg/jshybugger/lw;->a:Lorg/jshybugger/lU;

    invoke-interface {v0, p1, v1, p3}, Lorg/jshybugger/lU;->a(Ljava/lang/String;Lorg/jshybugger/lU;Ljava/lang/Object;)V

    goto :goto_17
.end method

.method public final a(Lorg/jshybugger/lU;)V
    .registers 2

    .prologue
    .line 122
    iput-object p1, p0, Lorg/jshybugger/lw;->a:Lorg/jshybugger/lU;

    .line 123
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/jshybugger/lU;)Z
    .registers 5

    .prologue
    .line 61
    iget-object v0, p0, Lorg/jshybugger/lw;->d:Lorg/jshybugger/lf;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/jshybugger/lf;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lorg/jshybugger/lw;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public b(Ljava/lang/String;Lorg/jshybugger/lU;)Ljava/lang/Object;
    .registers 6

    .prologue
    .line 69
    iget-object v0, p0, Lorg/jshybugger/lw;->h:Ljava/util/Map;

    if-eqz v0, :cond_d

    .line 70
    iget-object v0, p0, Lorg/jshybugger/lw;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_d

    .line 77
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lorg/jshybugger/lw;->d:Lorg/jshybugger/lf;

    iget-object v1, p0, Lorg/jshybugger/lw;->c:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v1, v2}, Lorg/jshybugger/lf;->a(Lorg/jshybugger/lU;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c
.end method

.method public final b(Lorg/jshybugger/lU;)V
    .registers 2

    .prologue
    .line 136
    iput-object p1, p0, Lorg/jshybugger/lw;->b:Lorg/jshybugger/lU;

    .line 137
    return-void
.end method

.method public final c(I)V
    .registers 2

    .prologue
    .line 107
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 104
    return-void
.end method

.method protected d()V
    .registers 5

    .prologue
    .line 49
    iget-object v0, p0, Lorg/jshybugger/lw;->c:Ljava/lang/Object;

    if-eqz v0, :cond_22

    .line 50
    iget-object v0, p0, Lorg/jshybugger/lw;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 54
    :goto_a
    iget-object v1, p0, Lorg/jshybugger/lw;->b:Lorg/jshybugger/lU;

    iget-object v2, p0, Lorg/jshybugger/lw;->g:Ljava/lang/Class;

    iget-boolean v3, p0, Lorg/jshybugger/lw;->e:Z

    invoke-static {v1, v0, v2, v3}, Lorg/jshybugger/lf;->a(Lorg/jshybugger/lU;Ljava/lang/Class;Ljava/lang/Class;Z)Lorg/jshybugger/lf;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/lw;->d:Lorg/jshybugger/lf;

    .line 56
    iget-object v0, p0, Lorg/jshybugger/lw;->d:Lorg/jshybugger/lf;

    iget-object v1, p0, Lorg/jshybugger/lw;->c:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lorg/jshybugger/lf;->a(Lorg/jshybugger/lU;Ljava/lang/Object;Z)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/lw;->h:Ljava/util/Map;

    .line 58
    return-void

    .line 52
    :cond_22
    iget-object v0, p0, Lorg/jshybugger/lw;->g:Ljava/lang/Class;

    goto :goto_a
.end method

.method public f_()Lorg/jshybugger/lU;
    .registers 3

    .prologue
    .line 110
    iget-object v0, p0, Lorg/jshybugger/lw;->a:Lorg/jshybugger/lU;

    if-nez v0, :cond_17

    iget-object v0, p0, Lorg/jshybugger/lw;->c:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 111
    iget-object v0, p0, Lorg/jshybugger/lw;->b:Lorg/jshybugger/lU;

    invoke-static {v0}, Lorg/jshybugger/lV;->f(Lorg/jshybugger/lU;)Lorg/jshybugger/lU;

    move-result-object v0

    sget-object v1, Lorg/jshybugger/md;->d:Lorg/jshybugger/md;

    invoke-static {v0, v1}, Lorg/jshybugger/mc;->a(Lorg/jshybugger/lU;Lorg/jshybugger/md;)Lorg/jshybugger/lU;

    move-result-object v0

    .line 115
    :goto_16
    return-object v0

    :cond_17
    iget-object v0, p0, Lorg/jshybugger/lw;->a:Lorg/jshybugger/lU;

    goto :goto_16
.end method

.method public final g_()Lorg/jshybugger/lU;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lorg/jshybugger/lw;->b:Lorg/jshybugger/lU;

    return-object v0
.end method
