.class public Lorg/jshybugger/lv;
.super Lorg/jshybugger/kE;
.source "NativeJavaMethod.java"


# instance fields
.field private c:Ljava/lang/String;

.field private transient d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/jshybugger/lQ;",
            ">;"
        }
    .end annotation
.end field

.field e:[Lorg/jshybugger/ll;


# direct methods
.method constructor <init>(Lorg/jshybugger/ll;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/jshybugger/kE;-><init>()V

    .line 41
    iput-object p2, p0, Lorg/jshybugger/lv;->c:Ljava/lang/String;

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/jshybugger/ll;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/jshybugger/lv;->e:[Lorg/jshybugger/ll;

    .line 43
    return-void
.end method

.method constructor <init>([Lorg/jshybugger/ll;)V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/jshybugger/kE;-><init>()V

    .line 29
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lorg/jshybugger/ll;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/lv;->c:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lorg/jshybugger/lv;->e:[Lorg/jshybugger/ll;

    .line 31
    return-void
.end method

.method constructor <init>([Lorg/jshybugger/ll;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/jshybugger/kE;-><init>()V

    .line 35
    iput-object p2, p0, Lorg/jshybugger/lv;->c:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lorg/jshybugger/lv;->e:[Lorg/jshybugger/ll;

    .line 37
    return-void
.end method

.method private static a(Lorg/jshybugger/kK;[Lorg/jshybugger/ll;[Ljava/lang/Object;)I
    .registers 25

    .prologue
    .line 286
    move-object/from16 v0, p1

    array-length v2, v0

    if-nez v2, :cond_7

    .line 287
    const/4 v4, -0x1

    .line 443
    :cond_6
    :goto_6
    return v4

    .line 288
    :cond_7
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3b

    .line 289
    const/4 v2, 0x0

    aget-object v3, p1, v2

    .line 290
    iget-object v4, v3, Lorg/jshybugger/ll;->a:[Ljava/lang/Class;

    .line 291
    array-length v2, v4

    .line 293
    iget-boolean v3, v3, Lorg/jshybugger/ll;->c:Z

    if-eqz v3, :cond_20

    .line 294
    add-int/lit8 v2, v2, -0x1

    .line 295
    move-object/from16 v0, p2

    array-length v3, v0

    if-le v2, v3, :cond_27

    .line 296
    const/4 v4, -0x1

    goto :goto_6

    .line 299
    :cond_20
    move-object/from16 v0, p2

    array-length v3, v0

    if-eq v2, v3, :cond_27

    .line 300
    const/4 v4, -0x1

    goto :goto_6

    .line 303
    :cond_27
    const/4 v3, 0x0

    :goto_28
    if-eq v3, v2, :cond_39

    .line 304
    aget-object v5, p2, v3

    aget-object v6, v4, v3

    invoke-static {v5, v6}, Lorg/jshybugger/lw;->a(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_36

    .line 307
    const/4 v4, -0x1

    goto :goto_6

    .line 303
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 311
    :cond_39
    const/4 v4, 0x0

    goto :goto_6

    .line 314
    :cond_3b
    const/4 v4, -0x1

    .line 315
    const/4 v2, 0x0

    .line 316
    const/4 v3, 0x0

    .line 319
    const/4 v5, 0x0

    :goto_3f
    move-object/from16 v0, p1

    array-length v6, v0

    if-ge v5, v6, :cond_19d

    .line 320
    aget-object v13, p1, v5

    .line 321
    iget-object v14, v13, Lorg/jshybugger/ll;->a:[Ljava/lang/Class;

    .line 322
    array-length v6, v14

    .line 323
    iget-boolean v7, v13, Lorg/jshybugger/ll;->c:Z

    if-eqz v7, :cond_61

    .line 324
    add-int/lit8 v6, v6, -0x1

    .line 325
    move-object/from16 v0, p2

    array-length v7, v0

    if-le v6, v7, :cond_66

    move/from16 v21, v3

    move-object v3, v2

    move/from16 v2, v21

    .line 319
    :goto_59
    add-int/lit8 v5, v5, 0x1

    move/from16 v21, v2

    move-object v2, v3

    move/from16 v3, v21

    goto :goto_3f

    .line 329
    :cond_61
    move-object/from16 v0, p2

    array-length v7, v0

    if-ne v6, v7, :cond_1fb

    .line 330
    :cond_66
    const/4 v7, 0x0

    :goto_67
    if-ge v7, v6, :cond_76

    .line 334
    aget-object v8, p2, v7

    aget-object v9, v14, v7

    invoke-static {v8, v9}, Lorg/jshybugger/lw;->a(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_1fb

    .line 337
    add-int/lit8 v7, v7, 0x1

    goto :goto_67

    .line 340
    :cond_76
    if-gez v4, :cond_7f

    move v4, v5

    move-object/from16 v21, v2

    move v2, v3

    move-object/from16 v3, v21

    .line 342
    goto :goto_59

    .line 348
    :cond_7f
    const/4 v8, 0x0

    .line 350
    const/4 v9, 0x0

    .line 352
    const/4 v6, -0x1

    move v12, v6

    :goto_83
    if-eq v12, v3, :cond_178

    .line 354
    const/4 v6, -0x1

    if-ne v12, v6, :cond_c0

    move v6, v4

    .line 359
    :goto_89
    aget-object v15, p1, v6

    .line 360
    const/16 v6, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/jshybugger/kK;->a(I)Z

    move-result v6

    if-eqz v6, :cond_c8

    invoke-virtual {v15}, Lorg/jshybugger/ll;->b()Ljava/lang/reflect/Member;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    invoke-virtual {v13}, Lorg/jshybugger/ll;->b()Ljava/lang/reflect/Member;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-eq v6, v7, :cond_c8

    .line 367
    invoke-virtual {v15}, Lorg/jshybugger/ll;->b()Ljava/lang/reflect/Member;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_c3

    .line 368
    add-int/lit8 v6, v8, 0x1

    move v7, v9

    .line 352
    :goto_ba
    add-int/lit8 v8, v12, 0x1

    move v12, v8

    move v9, v7

    move v8, v6

    goto :goto_83

    .line 357
    :cond_c0
    aget v6, v2, v12

    goto :goto_89

    .line 370
    :cond_c3
    add-int/lit8 v6, v9, 0x1

    move v7, v6

    move v6, v8

    goto :goto_ba

    .line 372
    :cond_c8
    iget-boolean v0, v13, Lorg/jshybugger/ll;->c:Z

    move/from16 v16, v0

    iget-object v0, v15, Lorg/jshybugger/ll;->a:[Ljava/lang/Class;

    move-object/from16 v17, v0

    iget-boolean v0, v15, Lorg/jshybugger/ll;->c:Z

    move/from16 v18, v0

    const/4 v7, 0x0

    const/4 v6, 0x0

    :goto_d6
    move-object/from16 v0, p2

    array-length v10, v0

    if-ge v6, v10, :cond_137

    if-eqz v16, :cond_112

    array-length v10, v14

    if-lt v6, v10, :cond_112

    array-length v10, v14

    add-int/lit8 v10, v10, -0x1

    aget-object v10, v14, v10

    move-object v11, v10

    :goto_e6
    if-eqz v18, :cond_116

    move-object/from16 v0, v17

    array-length v10, v0

    if-lt v6, v10, :cond_116

    move-object/from16 v0, v17

    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    aget-object v10, v17, v10

    :goto_f4
    if-eq v11, v10, :cond_10f

    aget-object v19, p2, v6

    move-object/from16 v0, v19

    invoke-static {v0, v11}, Lorg/jshybugger/lw;->b(Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v20

    move-object/from16 v0, v19

    invoke-static {v0, v10}, Lorg/jshybugger/lw;->b(Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v19

    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_119

    const/4 v10, 0x1

    :goto_10b
    or-int/2addr v7, v10

    const/4 v10, 0x3

    if-eq v7, v10, :cond_137

    :cond_10f
    add-int/lit8 v6, v6, 0x1

    goto :goto_d6

    :cond_112
    aget-object v10, v14, v6

    move-object v11, v10

    goto :goto_e6

    :cond_116
    aget-object v10, v17, v6

    goto :goto_f4

    :cond_119
    move/from16 v0, v20

    move/from16 v1, v19

    if-le v0, v1, :cond_121

    const/4 v10, 0x2

    goto :goto_10b

    :cond_121
    if-nez v20, :cond_135

    invoke-virtual {v11, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v19

    if-eqz v19, :cond_12b

    const/4 v10, 0x2

    goto :goto_10b

    :cond_12b
    invoke-virtual {v10, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_133

    const/4 v10, 0x1

    goto :goto_10b

    :cond_133
    const/4 v10, 0x3

    goto :goto_10b

    :cond_135
    const/4 v10, 0x3

    goto :goto_10b

    .line 376
    :cond_137
    const/4 v6, 0x3

    if-eq v7, v6, :cond_178

    .line 377
    const/4 v6, 0x1

    if-ne v7, v6, :cond_142

    .line 379
    add-int/lit8 v6, v8, 0x1

    move v7, v9

    goto/16 :goto_ba

    .line 380
    :cond_142
    const/4 v6, 0x2

    if-ne v7, v6, :cond_14b

    .line 381
    add-int/lit8 v6, v9, 0x1

    move v7, v6

    move v6, v8

    goto/16 :goto_ba

    .line 383
    :cond_14b
    if-eqz v7, :cond_150

    invoke-static {}, Lorg/jshybugger/lh;->a()Ljava/lang/RuntimeException;

    .line 389
    :cond_150
    invoke-virtual {v15}, Lorg/jshybugger/ll;->e()Z

    move-result v6

    if-eqz v6, :cond_1fb

    invoke-virtual {v15}, Lorg/jshybugger/ll;->g()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v13}, Lorg/jshybugger/ll;->g()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1fb

    .line 400
    const/4 v6, -0x1

    if-ne v12, v6, :cond_16f

    move v4, v5

    move-object/from16 v21, v2

    move v2, v3

    move-object/from16 v3, v21

    .line 401
    goto/16 :goto_59

    .line 403
    :cond_16f
    aput v5, v2, v12

    move/from16 v21, v3

    move-object v3, v2

    move/from16 v2, v21

    goto/16 :goto_59

    .line 414
    :cond_178
    add-int/lit8 v6, v3, 0x1

    if-ne v8, v6, :cond_185

    .line 419
    const/4 v3, 0x0

    move v4, v5

    move-object/from16 v21, v2

    move v2, v3

    move-object/from16 v3, v21

    goto/16 :goto_59

    .line 420
    :cond_185
    add-int/lit8 v6, v3, 0x1

    if-eq v9, v6, :cond_1fb

    .line 428
    if-nez v2, :cond_192

    .line 430
    move-object/from16 v0, p1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [I

    .line 432
    :cond_192
    aput v5, v2, v3

    .line 433
    add-int/lit8 v3, v3, 0x1

    move/from16 v21, v3

    move-object v3, v2

    move/from16 v2, v21

    goto/16 :goto_59

    .line 438
    :cond_19d
    if-gez v4, :cond_1a2

    .line 440
    const/4 v4, -0x1

    goto/16 :goto_6

    .line 441
    :cond_1a2
    if-eqz v3, :cond_6

    .line 447
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 448
    const/4 v5, -0x1

    move v6, v5

    :goto_1ab
    if-eq v6, v3, :cond_1c6

    .line 450
    const/4 v5, -0x1

    if-ne v6, v5, :cond_1c3

    move v5, v4

    .line 455
    :goto_1b1
    const-string v8, "\n    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 456
    aget-object v5, p1, v5

    invoke-virtual {v5}, Lorg/jshybugger/ll;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 448
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_1ab

    .line 453
    :cond_1c3
    aget v5, v2, v6

    goto :goto_1b1

    .line 459
    :cond_1c6
    aget-object v2, p1, v4

    .line 460
    invoke-virtual {v2}, Lorg/jshybugger/ll;->f()Ljava/lang/String;

    move-result-object v3

    .line 461
    invoke-virtual {v2}, Lorg/jshybugger/ll;->g()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 463
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v4}, Lorg/jshybugger/ll;->d()Z

    move-result v4

    if-eqz v4, :cond_1ec

    .line 464
    const-string v2, "msg.constructor.ambiguous"

    invoke-static/range {p2 .. p2}, Lorg/jshybugger/lv;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lorg/jshybugger/kK;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/jshybugger/kT;

    move-result-object v2

    throw v2

    .line 468
    :cond_1ec
    const-string v4, "msg.method.ambiguous"

    invoke-static/range {p2 .. p2}, Lorg/jshybugger/lv;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v2, v3, v5, v6}, Lorg/jshybugger/kK;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/jshybugger/kT;

    move-result-object v2

    throw v2

    :cond_1fb
    move/from16 v21, v3

    move-object v3, v2

    move/from16 v2, v21

    goto/16 :goto_59
.end method

.method static a([Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 58
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 59
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    array-length v0, p0

    if-eq v1, v0, :cond_64

    .line 60
    aget-object v0, p0, v1

    .line 63
    if-nez v0, :cond_1e

    .line 64
    const-string v0, "null"

    .line 86
    :goto_10
    if-eqz v1, :cond_17

    .line 87
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 89
    :cond_17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 65
    :cond_1e
    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_25

    .line 66
    const-string v0, "boolean"

    goto :goto_10

    .line 67
    :cond_25
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_2c

    .line 68
    const-string v0, "string"

    goto :goto_10

    .line 69
    :cond_2c
    instance-of v3, v0, Ljava/lang/Number;

    if-eqz v3, :cond_33

    .line 70
    const-string v0, "number"

    goto :goto_10

    .line 71
    :cond_33
    instance-of v3, v0, Lorg/jshybugger/lU;

    if-eqz v3, :cond_5b

    .line 72
    instance-of v3, v0, Lorg/jshybugger/me;

    if-eqz v3, :cond_3e

    .line 73
    const-string v0, "undefined"

    goto :goto_10

    .line 74
    :cond_3e
    instance-of v3, v0, Lorg/jshybugger/mj;

    if-eqz v3, :cond_51

    .line 75
    check-cast v0, Lorg/jshybugger/mj;

    invoke-interface {v0}, Lorg/jshybugger/mj;->b()Ljava/lang/Object;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 77
    :cond_51
    instance-of v0, v0, Lorg/jshybugger/kV;

    if-eqz v0, :cond_58

    .line 78
    const-string v0, "function"

    goto :goto_10

    .line 80
    :cond_58
    const-string v0, "object"

    goto :goto_10

    .line 83
    :cond_5b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/jshybugger/lf;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 91
    :cond_64
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a(Lorg/jshybugger/kK;[Ljava/lang/Object;)I
    .registers 11

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 252
    iget-object v0, p0, Lorg/jshybugger/lv;->e:[Lorg/jshybugger/ll;

    array-length v0, v0

    if-le v0, v3, :cond_89

    .line 253
    iget-object v0, p0, Lorg/jshybugger/lv;->d:Ljava/util/LinkedList;

    if-eqz v0, :cond_55

    .line 254
    iget-object v0, p0, Lorg/jshybugger/lv;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/lQ;

    .line 255
    array-length v1, p2

    iget-object v4, v0, Lorg/jshybugger/lQ;->a:[Ljava/lang/Class;

    array-length v4, v4

    if-eq v1, v4, :cond_29

    move v1, v2

    :goto_24
    if-eqz v1, :cond_11

    .line 256
    iget v0, v0, Lorg/jshybugger/lQ;->b:I

    .line 275
    :cond_28
    :goto_28
    return v0

    .line 255
    :cond_29
    array-length v6, p2

    move v4, v2

    :goto_2b
    if-ge v4, v6, :cond_53

    aget-object v1, p2, v4

    instance-of v7, v1, Lorg/jshybugger/mj;

    if-eqz v7, :cond_39

    check-cast v1, Lorg/jshybugger/mj;

    invoke-interface {v1}, Lorg/jshybugger/mj;->b()Ljava/lang/Object;

    move-result-object v1

    :cond_39
    if-nez v1, :cond_43

    iget-object v1, v0, Lorg/jshybugger/lQ;->a:[Ljava/lang/Class;

    aget-object v1, v1, v4

    if-eqz v1, :cond_4f

    move v1, v2

    goto :goto_24

    :cond_43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v7, v0, Lorg/jshybugger/lQ;->a:[Ljava/lang/Class;

    aget-object v7, v7, v4

    if-eq v1, v7, :cond_4f

    move v1, v2

    goto :goto_24

    :cond_4f
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2b

    :cond_53
    move v1, v3

    goto :goto_24

    .line 260
    :cond_55
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/lv;->d:Ljava/util/LinkedList;

    .line 262
    :cond_5c
    iget-object v0, p0, Lorg/jshybugger/lv;->e:[Lorg/jshybugger/ll;

    invoke-static {p1, v0, p2}, Lorg/jshybugger/lv;->a(Lorg/jshybugger/kK;[Lorg/jshybugger/ll;[Ljava/lang/Object;)I

    move-result v0

    .line 265
    iget-object v1, p0, Lorg/jshybugger/lv;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget-object v2, p0, Lorg/jshybugger/lv;->e:[Lorg/jshybugger/ll;

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_28

    .line 266
    iget-object v1, p0, Lorg/jshybugger/lv;->d:Ljava/util/LinkedList;

    monitor-enter v1

    .line 267
    :try_start_72
    new-instance v2, Lorg/jshybugger/lQ;

    invoke-direct {v2, p2, v0}, Lorg/jshybugger/lQ;-><init>([Ljava/lang/Object;I)V

    .line 268
    iget-object v3, p0, Lorg/jshybugger/lv;->d:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_84

    .line 269
    iget-object v3, p0, Lorg/jshybugger/lv;->d:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 271
    :cond_84
    monitor-exit v1
    :try_end_85
    .catchall {:try_start_72 .. :try_end_85} :catchall_86

    goto :goto_28

    :catchall_86
    move-exception v0

    monitor-exit v1

    throw v0

    .line 275
    :cond_89
    iget-object v0, p0, Lorg/jshybugger/lv;->e:[Lorg/jshybugger/ll;

    invoke-static {p1, v0, p2}, Lorg/jshybugger/lv;->a(Lorg/jshybugger/kK;[Lorg/jshybugger/ll;[Ljava/lang/Object;)I

    move-result v0

    goto :goto_28
.end method

.method public final a(Lorg/jshybugger/kK;Lorg/jshybugger/lU;Lorg/jshybugger/lU;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 135
    iget-object v0, p0, Lorg/jshybugger/lv;->e:[Lorg/jshybugger/ll;

    array-length v0, v0

    if-nez v0, :cond_e

    .line 136
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No methods defined for call"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_e
    invoke-virtual {p0, p1, p4}, Lorg/jshybugger/lv;->a(Lorg/jshybugger/kK;[Ljava/lang/Object;)I

    move-result v0

    .line 140
    if-gez v0, :cond_5a

    .line 141
    iget-object v0, p0, Lorg/jshybugger/lv;->e:[Lorg/jshybugger/ll;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/jshybugger/ll;->a()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jshybugger/lv;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4}, Lorg/jshybugger/lv;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    const-string v1, "msg.java.no_such_method"

    invoke-static {v1, v0}, Lorg/jshybugger/kK;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/kT;

    move-result-object v0

    throw v0

    .line 147
    :cond_5a
    iget-object v2, p0, Lorg/jshybugger/lv;->e:[Lorg/jshybugger/ll;

    aget-object v3, v2, v0

    .line 148
    iget-object v4, v3, Lorg/jshybugger/ll;->a:[Ljava/lang/Class;

    .line 150
    iget-boolean v0, v3, Lorg/jshybugger/ll;->c:Z

    if-eqz v0, :cond_f6

    .line 152
    array-length v0, v4

    new-array v2, v0, [Ljava/lang/Object;

    move v0, v1

    .line 153
    :goto_68
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_7a

    .line 154
    aget-object v5, p4, v0

    aget-object v6, v4, v0

    invoke-static {v5, v6}, Lorg/jshybugger/kK;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v0

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    .line 161
    :cond_7a
    array-length v0, p4

    array-length v5, v4

    if-ne v0, v5, :cond_ce

    array-length v0, p4

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p4, v0

    if-eqz v0, :cond_97

    array-length v0, p4

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p4, v0

    instance-of v0, v0, Lorg/jshybugger/lm;

    if-nez v0, :cond_97

    array-length v0, p4

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p4, v0

    instance-of v0, v0, Lorg/jshybugger/ls;

    if-eqz v0, :cond_ce

    .line 167
    :cond_97
    array-length v0, p4

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p4, v0

    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v4, v1

    invoke-static {v0, v1}, Lorg/jshybugger/kK;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 183
    :cond_a5
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    aput-object v0, v2, v1

    .line 201
    :goto_aa
    invoke-virtual {v3}, Lorg/jshybugger/ll;->e()Z

    move-result v0

    if-eqz v0, :cond_111

    .line 202
    const/4 v0, 0x0

    .line 225
    :cond_b1
    invoke-virtual {v3, v0, v2}, Lorg/jshybugger/ll;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 226
    invoke-virtual {v3}, Lorg/jshybugger/ll;->a()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 236
    invoke-virtual {p1}, Lorg/jshybugger/kK;->g()Lorg/jshybugger/mh;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0, v1}, Lorg/jshybugger/mh;->a(Lorg/jshybugger/kK;Lorg/jshybugger/lU;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 245
    if-nez v0, :cond_cd

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_cd

    .line 246
    sget-object v0, Lorg/jshybugger/me;->a:Ljava/lang/Object;

    .line 248
    :cond_cd
    return-object v0

    .line 171
    :cond_ce
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    .line 173
    array-length v0, p4

    array-length v6, v4

    sub-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x1

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 175
    :goto_e0
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    if-ge v1, v6, :cond_a5

    .line 176
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v6, v1

    aget-object v6, p4, v6

    invoke-static {v6, v5}, Lorg/jshybugger/kK;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .line 178
    invoke-static {v0, v1, v6}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_e0

    :cond_f6
    move-object v0, p4

    .line 189
    :goto_f7
    array-length v2, v0

    if-ge v1, v2, :cond_141

    .line 190
    aget-object v2, v0, v1

    .line 191
    aget-object v5, v4, v1

    invoke-static {v2, v5}, Lorg/jshybugger/kK;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 192
    if-eq v5, v2, :cond_10e

    .line 193
    if-ne p4, v0, :cond_10c

    .line 194
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 196
    :cond_10c
    aput-object v5, v0, v1

    .line 189
    :cond_10e
    add-int/lit8 v1, v1, 0x1

    goto :goto_f7

    .line 205
    :cond_111
    invoke-virtual {v3}, Lorg/jshybugger/ll;->g()Ljava/lang/Class;

    move-result-object v4

    move-object v1, p3

    .line 207
    :goto_116
    if-nez v1, :cond_12b

    .line 208
    const-string v0, "msg.nonjava.method"

    invoke-virtual {p0}, Lorg/jshybugger/lv;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Lorg/jshybugger/lS;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/jshybugger/kK;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/jshybugger/kT;

    move-result-object v0

    throw v0

    .line 212
    :cond_12b
    instance-of v0, v1, Lorg/jshybugger/mj;

    if-eqz v0, :cond_13c

    move-object v0, v1

    .line 213
    check-cast v0, Lorg/jshybugger/mj;

    invoke-interface {v0}, Lorg/jshybugger/mj;->b()Ljava/lang/Object;

    move-result-object v0

    .line 214
    invoke-virtual {v4, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b1

    .line 215
    :cond_13c
    invoke-interface {v1}, Lorg/jshybugger/lU;->f_()Lorg/jshybugger/lU;

    move-result-object v1

    goto :goto_116

    :cond_141
    move-object v2, v0

    goto/16 :goto_aa
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lorg/jshybugger/lv;->c:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 113
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 114
    const/4 v0, 0x0

    iget-object v2, p0, Lorg/jshybugger/lv;->e:[Lorg/jshybugger/ll;

    array-length v2, v2

    :goto_9
    if-eq v0, v2, :cond_55

    .line 116
    iget-object v3, p0, Lorg/jshybugger/lv;->e:[Lorg/jshybugger/ll;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/jshybugger/ll;->c()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 117
    iget-object v3, p0, Lorg/jshybugger/lv;->e:[Lorg/jshybugger/ll;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/jshybugger/ll;->a()Ljava/lang/reflect/Method;

    move-result-object v3

    .line 118
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lorg/jshybugger/lf;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 120
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    :goto_34
    iget-object v3, p0, Lorg/jshybugger/lv;->e:[Lorg/jshybugger/ll;

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/jshybugger/ll;->a:[Ljava/lang/Class;

    invoke-static {v3}, Lorg/jshybugger/lf;->a([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 122
    :cond_49
    iget-object v3, p0, Lorg/jshybugger/lv;->e:[Lorg/jshybugger/ll;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/jshybugger/ll;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_34

    .line 127
    :cond_55
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
