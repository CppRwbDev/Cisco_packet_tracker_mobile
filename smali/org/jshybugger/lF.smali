.class final Lorg/jshybugger/lf;
.super Ljava/lang/Object;
.source "JavaMembers.java"


# instance fields
.field a:Lorg/jshybugger/lv;

.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
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

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
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
.method private constructor <init>(Lorg/jshybugger/lU;Ljava/lang/Class;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/lU;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    :try_start_3
    invoke-static {}, Lorg/jshybugger/kM;->a()Lorg/jshybugger/kM;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/kM;->d()Lorg/jshybugger/kK;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lorg/jshybugger/kK;->f()Lorg/jshybugger/co;

    move-result-object v1

    .line 34
    if-eqz v1, :cond_2a

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    invoke-interface {v1}, Lorg/jshybugger/co;->b()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 35
    const-string v0, "msg.access.prohibited"

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jshybugger/kK;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/kT;

    move-result-object v0

    throw v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_25

    .line 45
    :catchall_25
    move-exception v0

    invoke-static {}, Lorg/jshybugger/kK;->b()V

    throw v0

    .line 38
    :cond_2a
    :try_start_2a
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/jshybugger/lf;->c:Ljava/util/Map;

    .line 39
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/jshybugger/lf;->e:Ljava/util/Map;

    .line 40
    iput-object p2, p0, Lorg/jshybugger/lf;->b:Ljava/lang/Class;

    .line 41
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lorg/jshybugger/kK;->a(I)Z

    move-result v0

    .line 43
    invoke-direct {p0, p1, p3, v0}, Lorg/jshybugger/lf;->a(Lorg/jshybugger/lU;ZZ)V
    :try_end_43
    .catchall {:try_start_2a .. :try_end_43} :catchall_25

    .line 45
    invoke-static {}, Lorg/jshybugger/kK;->b()V

    .line 46
    return-void
.end method

.method static a(Ljava/lang/Class;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_b

    .line 174
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 193
    :goto_a
    return-object v0

    .line 176
    :cond_b
    const/4 v0, 0x0

    .line 178
    :cond_c
    add-int/lit8 v0, v0, 0x1

    .line 179
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    .line 180
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_c

    .line 181
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 182
    const-string v2, "[]"

    .line 183
    const/4 v3, 0x1

    if-ne v0, v3, :cond_26

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 186
    :cond_26
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 188
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :goto_38
    if-eqz v0, :cond_40

    .line 190
    add-int/lit8 v0, v0, -0x1

    .line 191
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    .line 193
    :cond_40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method static a([Ljava/lang/Class;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 200
    array-length v1, p0

    .line 201
    if-nez v1, :cond_6

    const-string v0, "()"

    .line 211
    :goto_5
    return-object v0

    .line 202
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    const/16 v0, 0x28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    const/4 v0, 0x0

    :goto_11
    if-eq v0, v1, :cond_26

    .line 205
    if-eqz v0, :cond_1a

    .line 206
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    :cond_1a
    aget-object v3, p0, v0

    invoke-static {v3}, Lorg/jshybugger/lf;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 210
    :cond_26
    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method static a(Lorg/jshybugger/lU;Ljava/lang/Class;Ljava/lang/Class;Z)Lorg/jshybugger/lf;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/lU;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Lorg/jshybugger/lf;"
        }
    .end annotation

    .prologue
    .line 792
    invoke-static {p0}, Lorg/jshybugger/kH;->a(Lorg/jshybugger/lU;)Lorg/jshybugger/kH;

    move-result-object v4

    .line 793
    invoke-virtual {v4}, Lorg/jshybugger/kH;->b()Ljava/util/Map;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    .line 797
    :goto_a
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/lf;

    .line 798
    if-eqz v0, :cond_18

    .line 799
    if-eq v1, p1, :cond_17

    .line 802
    invoke-interface {v5, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    :cond_17
    :goto_17
    return-object v0

    .line 807
    :cond_18
    :try_start_18
    new-instance v0, Lorg/jshybugger/lf;

    invoke-virtual {v4}, Lorg/jshybugger/kH;->c()Lorg/jshybugger/lU;

    move-result-object v3

    invoke-direct {v0, v3, v1, p3}, Lorg/jshybugger/lf;-><init>(Lorg/jshybugger/lU;Ljava/lang/Class;Z)V
    :try_end_21
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_21} :catch_30

    .line 833
    invoke-virtual {v4}, Lorg/jshybugger/kH;->a()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 834
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    if-eq v1, p1, :cond_17

    .line 838
    invoke-interface {v5, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 810
    :catch_30
    move-exception v0

    move-object v3, v0

    .line 815
    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 817
    const/4 p2, 0x0

    move-object v1, v2

    move-object v2, p2

    goto :goto_a

    .line 819
    :cond_3e
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 820
    if-nez v0, :cond_4c

    .line 821
    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 823
    sget-object v0, Lorg/jshybugger/lS;->j:Ljava/lang/Class;

    :cond_4c
    move-object v1, v0

    .line 830
    goto :goto_a

    .line 825
    :cond_4e
    throw v3
.end method

.method private static a(Ljava/lang/Class;[Lorg/jshybugger/ll;Z)Lorg/jshybugger/ll;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lorg/jshybugger/ll;",
            "Z)",
            "Lorg/jshybugger/ll;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 733
    move v3, v4

    :goto_4
    if-gt v3, v8, :cond_35

    .line 734
    array-length v5, p1

    move v1, v2

    :goto_8
    if-ge v1, v5, :cond_31

    aget-object v0, p1, v1

    .line 735
    if-eqz p2, :cond_14

    invoke-virtual {v0}, Lorg/jshybugger/ll;->e()Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 736
    :cond_14
    iget-object v6, v0, Lorg/jshybugger/ll;->a:[Ljava/lang/Class;

    .line 737
    array-length v7, v6

    if-ne v7, v4, :cond_2d

    .line 738
    if-ne v3, v4, :cond_20

    .line 739
    aget-object v6, v6, v2

    if-ne v6, p0, :cond_2d

    .line 752
    :cond_1f
    :goto_1f
    return-object v0

    .line 743
    :cond_20
    if-eq v3, v8, :cond_25

    invoke-static {}, Lorg/jshybugger/lh;->a()Ljava/lang/RuntimeException;

    .line 744
    :cond_25
    aget-object v6, v6, v2

    invoke-virtual {v6, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 734
    :cond_2d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 733
    :cond_31
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    .line 752
    :cond_35
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private static a(ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/jshybugger/ll;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/jshybugger/ll;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 691
    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 692
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 694
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 695
    instance-of v2, v0, Lorg/jshybugger/lv;

    if-eqz v2, :cond_3e

    .line 696
    check-cast v0, Lorg/jshybugger/lv;

    .line 697
    iget-object v3, v0, Lorg/jshybugger/lv;->e:[Lorg/jshybugger/ll;

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1a
    if-ge v2, v4, :cond_3c

    aget-object v0, v3, v2

    iget-object v5, v0, Lorg/jshybugger/ll;->a:[Ljava/lang/Class;

    array-length v5, v5

    if-nez v5, :cond_38

    if-eqz p0, :cond_2b

    invoke-virtual {v0}, Lorg/jshybugger/ll;->e()Z

    move-result v5

    if-eqz v5, :cond_38

    :cond_2b
    invoke-virtual {v0}, Lorg/jshybugger/ll;->a()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_3c

    .line 700
    :goto_37
    return-object v0

    .line 697
    :cond_38
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1a

    :cond_3c
    move-object v0, v1

    goto :goto_37

    :cond_3e
    move-object v0, v1

    .line 700
    goto :goto_37
.end method

.method private static a([Lorg/jshybugger/ll;Z)Lorg/jshybugger/ll;
    .registers 7

    .prologue
    .line 759
    array-length v2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_26

    aget-object v0, p0, v1

    .line 760
    if-eqz p1, :cond_f

    invoke-virtual {v0}, Lorg/jshybugger/ll;->e()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 761
    :cond_f
    invoke-virtual {v0}, Lorg/jshybugger/ll;->a()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_22

    .line 762
    iget-object v3, v0, Lorg/jshybugger/ll;->a:[Ljava/lang/Class;

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_22

    .line 768
    :goto_21
    return-object v0

    .line 759
    :cond_22
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 768
    :cond_26
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private static a(Ljava/lang/Class;Ljava/util/Map;ZZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Lorg/jshybugger/lg;",
            "Ljava/lang/reflect/Method;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 310
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_d

    if-eqz p3, :cond_a5

    .line 312
    :cond_d
    if-nez p2, :cond_11

    if-eqz p3, :cond_6d

    .line 313
    :cond_11
    :goto_11
    if-eqz p0, :cond_bb

    .line 315
    :try_start_13
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 316
    array-length v3, v2

    move v0, v1

    :goto_19
    if-ge v0, v3, :cond_4c

    aget-object v4, v2, v0

    .line 317
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    .line 319
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-nez v6, :cond_2f

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v5

    if-nez v5, :cond_2f

    if-eqz p3, :cond_49

    .line 322
    :cond_2f
    new-instance v5, Lorg/jshybugger/lg;

    invoke-direct {v5, v4}, Lorg/jshybugger/lg;-><init>(Ljava/lang/reflect/Method;)V

    .line 323
    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_49

    .line 324
    if-eqz p3, :cond_46

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v6

    if-nez v6, :cond_46

    .line 325
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 326
    :cond_46
    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 330
    :cond_4c
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_4f
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_4f} :catch_51

    move-result-object p0

    goto :goto_11

    .line 335
    :catch_51
    move-exception v0

    :try_start_52
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 336
    array-length v3, v2

    move v0, v1

    :goto_58
    if-ge v0, v3, :cond_bb

    aget-object v4, v2, v0

    .line 337
    new-instance v5, Lorg/jshybugger/lg;

    invoke-direct {v5, v4}, Lorg/jshybugger/lg;-><init>(Ljava/lang/reflect/Method;)V

    .line 338
    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6a

    .line 339
    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_6a
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 346
    :cond_6d
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 347
    array-length v3, v2

    move v0, v1

    :goto_73
    if-ge v0, v3, :cond_bb

    aget-object v4, v2, v0

    .line 348
    new-instance v5, Lorg/jshybugger/lg;

    invoke-direct {v5, v4}, Lorg/jshybugger/lg;-><init>(Ljava/lang/reflect/Method;)V

    .line 350
    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_85

    .line 351
    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_85
    .catch Ljava/lang/SecurityException; {:try_start_52 .. :try_end_85} :catch_88

    .line 347
    :cond_85
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    .line 356
    :catch_88
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Could not discover accessible methods of class "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " due to lack of privileges, attemping superclasses/interfaces."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jshybugger/kK;->a(Ljava/lang/String;)V

    .line 365
    :cond_a5
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    .line 366
    array-length v3, v2

    move v0, v1

    :goto_ab
    if-ge v0, v3, :cond_b5

    aget-object v4, v2, v0

    .line 367
    invoke-static {v4, p1, p2, p3}, Lorg/jshybugger/lf;->a(Ljava/lang/Class;Ljava/util/Map;ZZ)V

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_ab

    .line 370
    :cond_b5
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 371
    if-nez p0, :cond_1

    .line 375
    :cond_bb
    return-void
.end method

.method private a(Lorg/jshybugger/lU;ZZ)V
    .registers 16

    .prologue
    .line 419
    iget-object v0, p0, Lorg/jshybugger/lf;->b:Ljava/lang/Class;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1, p2, p3}, Lorg/jshybugger/lf;->a(Ljava/lang/Class;Ljava/util/Map;ZZ)V

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Method;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Method;

    .line 421
    array-length v5, v0

    const/4 v1, 0x0

    move v4, v1

    :goto_1d
    if-ge v4, v5, :cond_61

    aget-object v6, v0, v4

    .line 422
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    .line 423
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    .line 424
    if-eqz v1, :cond_3f

    iget-object v1, p0, Lorg/jshybugger/lf;->e:Ljava/util/Map;

    move-object v2, v1

    .line 425
    :goto_2e
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    .line 426
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 427
    if-nez v1, :cond_43

    .line 428
    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    :goto_3b
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1d

    .line 424
    :cond_3f
    iget-object v1, p0, Lorg/jshybugger/lf;->c:Ljava/util/Map;

    move-object v2, v1

    goto :goto_2e

    .line 431
    :cond_43
    instance-of v3, v1, Lorg/jshybugger/lK;

    if-eqz v3, :cond_4d

    .line 432
    check-cast v1, Lorg/jshybugger/lK;

    .line 441
    :goto_49
    invoke-virtual {v1, v6}, Lorg/jshybugger/lK;->a(Ljava/lang/Object;)V

    goto :goto_3b

    .line 434
    :cond_4d
    instance-of v3, v1, Ljava/lang/reflect/Method;

    if-nez v3, :cond_54

    invoke-static {}, Lorg/jshybugger/lh;->a()Ljava/lang/RuntimeException;

    .line 437
    :cond_54
    new-instance v3, Lorg/jshybugger/lK;

    invoke-direct {v3}, Lorg/jshybugger/lK;-><init>()V

    .line 438
    invoke-virtual {v3, v1}, Lorg/jshybugger/lK;->a(Ljava/lang/Object;)V

    .line 439
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v3

    goto :goto_49

    .line 447
    :cond_61
    const/4 v0, 0x0

    move v5, v0

    :goto_63
    const/4 v0, 0x2

    if-eq v5, v0, :cond_d7

    .line 448
    if-nez v5, :cond_aa

    const/4 v0, 0x1

    .line 449
    :goto_69
    if-eqz v0, :cond_ac

    iget-object v0, p0, Lorg/jshybugger/lf;->e:Ljava/util/Map;

    move-object v4, v0

    .line 450
    :goto_6e
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_76
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 452
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 453
    instance-of v2, v1, Ljava/lang/reflect/Method;

    if-eqz v2, :cond_b0

    .line 454
    const/4 v2, 0x1

    new-array v2, v2, [Lorg/jshybugger/ll;

    .line 455
    const/4 v3, 0x0

    new-instance v6, Lorg/jshybugger/ll;

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-direct {v6, v1}, Lorg/jshybugger/ll;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v6, v2, v3

    move-object v1, v2

    .line 466
    :goto_98
    new-instance v2, Lorg/jshybugger/lv;

    invoke-direct {v2, v1}, Lorg/jshybugger/lv;-><init>([Lorg/jshybugger/ll;)V

    .line 467
    if-eqz p1, :cond_a2

    .line 468
    invoke-static {v2, p1}, Lorg/jshybugger/lS;->a(Lorg/jshybugger/kE;Lorg/jshybugger/lU;)V

    .line 470
    :cond_a2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_76

    .line 448
    :cond_aa
    const/4 v0, 0x0

    goto :goto_69

    .line 449
    :cond_ac
    iget-object v0, p0, Lorg/jshybugger/lf;->c:Ljava/util/Map;

    move-object v4, v0

    goto :goto_6e

    .line 457
    :cond_b0
    check-cast v1, Lorg/jshybugger/lK;

    .line 458
    invoke-virtual {v1}, Lorg/jshybugger/lK;->a()I

    move-result v8

    .line 459
    const/4 v2, 0x2

    if-ge v8, v2, :cond_bc

    invoke-static {}, Lorg/jshybugger/lh;->a()Ljava/lang/RuntimeException;

    .line 460
    :cond_bc
    new-array v3, v8, [Lorg/jshybugger/ll;

    .line 461
    const/4 v2, 0x0

    move v6, v2

    :goto_c0
    if-eq v6, v8, :cond_2c9

    .line 462
    invoke-virtual {v1, v6}, Lorg/jshybugger/lK;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 463
    new-instance v9, Lorg/jshybugger/ll;

    invoke-direct {v9, v2}, Lorg/jshybugger/ll;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v9, v3, v6

    .line 461
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_c0

    .line 447
    :cond_d3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_63

    .line 475
    :cond_d7
    invoke-direct {p0, p2, p3}, Lorg/jshybugger/lf;->a(ZZ)[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 476
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_de
    if-ge v2, v4, :cond_173

    aget-object v5, v3, v2

    .line 477
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    .line 478
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 480
    :try_start_ea
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    .line 481
    if-eqz v7, :cond_100

    iget-object v0, p0, Lorg/jshybugger/lf;->e:Ljava/util/Map;

    move-object v1, v0

    .line 482
    :goto_f3
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 483
    if-nez v0, :cond_104

    .line 484
    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    :cond_fc
    :goto_fc
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_de

    .line 481
    :cond_100
    iget-object v0, p0, Lorg/jshybugger/lf;->c:Ljava/util/Map;

    move-object v1, v0

    goto :goto_f3

    .line 485
    :cond_104
    instance-of v8, v0, Lorg/jshybugger/lv;

    if-eqz v8, :cond_157

    .line 486
    check-cast v0, Lorg/jshybugger/lv;

    .line 487
    new-instance v8, Lorg/jshybugger/kU;

    iget-object v0, v0, Lorg/jshybugger/lv;->e:[Lorg/jshybugger/ll;

    invoke-direct {v8, p1, v0, v5}, Lorg/jshybugger/kU;-><init>(Lorg/jshybugger/lU;[Lorg/jshybugger/ll;Ljava/lang/reflect/Field;)V

    .line 489
    if-eqz v7, :cond_151

    iget-object v0, p0, Lorg/jshybugger/lf;->f:Ljava/util/Map;

    .line 491
    :goto_115
    if-nez v0, :cond_120

    .line 492
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 493
    if-eqz v7, :cond_154

    .line 494
    iput-object v0, p0, Lorg/jshybugger/lf;->f:Ljava/util/Map;

    .line 499
    :cond_120
    :goto_120
    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    invoke-interface {v1, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_126
    .catch Ljava/lang/SecurityException; {:try_start_ea .. :try_end_126} :catch_127

    goto :goto_fc

    .line 520
    :catch_127
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not access field "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jshybugger/lf;->b:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " due to lack of privileges."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jshybugger/kK;->a(Ljava/lang/String;)V

    goto :goto_fc

    .line 489
    :cond_151
    :try_start_151
    iget-object v0, p0, Lorg/jshybugger/lf;->d:Ljava/util/Map;

    goto :goto_115

    .line 496
    :cond_154
    iput-object v0, p0, Lorg/jshybugger/lf;->d:Ljava/util/Map;

    goto :goto_120

    .line 501
    :cond_157
    instance-of v7, v0, Ljava/lang/reflect/Field;

    if-eqz v7, :cond_16f

    .line 502
    check-cast v0, Ljava/lang/reflect/Field;

    .line 509
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 512
    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_fc

    .line 516
    :cond_16f
    invoke-static {}, Lorg/jshybugger/lh;->a()Ljava/lang/RuntimeException;
    :try_end_172
    .catch Ljava/lang/SecurityException; {:try_start_151 .. :try_end_172} :catch_127

    goto :goto_fc

    .line 528
    :cond_173
    const/4 v0, 0x0

    move v8, v0

    :goto_175
    const/4 v0, 0x2

    if-eq v8, v0, :cond_297

    .line 529
    if-nez v8, :cond_23b

    const/4 v0, 0x1

    move v7, v0

    .line 530
    :goto_17c
    if-eqz v7, :cond_23f

    iget-object v0, p0, Lorg/jshybugger/lf;->e:Ljava/util/Map;

    move-object v6, v0

    .line 532
    :goto_181
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 535
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_18e
    :goto_18e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_276

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 537
    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 538
    const-string v2, "set"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 539
    const-string v3, "is"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 540
    if-nez v1, :cond_1b2

    if-nez v3, :cond_1b2

    if-eqz v2, :cond_18e

    .line 543
    :cond_1b2
    if-eqz v3, :cond_244

    const/4 v1, 0x2

    :goto_1b5
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 545
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_18e

    .line 550
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 551
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_2c6

    .line 552
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_247

    .line 553
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 565
    :goto_1d6
    invoke-interface {v9, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18e

    .line 566
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 568
    if-eqz v0, :cond_1f4

    .line 570
    if-eqz p3, :cond_18e

    instance-of v3, v0, Ljava/lang/reflect/Member;

    if-eqz v3, :cond_18e

    check-cast v0, Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    if-eqz v0, :cond_18e

    .line 574
    :cond_1f4
    const-string v0, "get"

    invoke-static {v7, v6, v0, v2}, Lorg/jshybugger/lf;->a(ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/jshybugger/ll;

    move-result-object v0

    .line 583
    if-nez v0, :cond_2c3

    .line 584
    const-string v0, "is"

    invoke-static {v7, v6, v0, v2}, Lorg/jshybugger/lf;->a(ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/jshybugger/ll;

    move-result-object v0

    move-object v3, v0

    .line 588
    :goto_203
    const/4 v5, 0x0

    .line 589
    const/4 v4, 0x0

    .line 590
    const-string v0, "set"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 592
    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2bf

    .line 594
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 595
    instance-of v2, v0, Lorg/jshybugger/lv;

    if-eqz v2, :cond_2bf

    .line 596
    check-cast v0, Lorg/jshybugger/lv;

    .line 597
    if-eqz v3, :cond_26f

    .line 600
    invoke-virtual {v3}, Lorg/jshybugger/ll;->a()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    .line 601
    iget-object v5, v0, Lorg/jshybugger/lv;->e:[Lorg/jshybugger/ll;

    invoke-static {v2, v5, v7}, Lorg/jshybugger/lf;->a(Ljava/lang/Class;[Lorg/jshybugger/ll;Z)Lorg/jshybugger/ll;

    move-result-object v2

    .line 608
    :goto_22b
    iget-object v5, v0, Lorg/jshybugger/lv;->e:[Lorg/jshybugger/ll;

    array-length v5, v5

    const/4 v11, 0x1

    if-le v5, v11, :cond_2bc

    .line 614
    :goto_231
    new-instance v4, Lorg/jshybugger/kF;

    invoke-direct {v4, v3, v2, v0}, Lorg/jshybugger/kF;-><init>(Lorg/jshybugger/ll;Lorg/jshybugger/ll;Lorg/jshybugger/lv;)V

    .line 616
    invoke-interface {v9, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_18e

    .line 529
    :cond_23b
    const/4 v0, 0x0

    move v7, v0

    goto/16 :goto_17c

    .line 530
    :cond_23f
    iget-object v0, p0, Lorg/jshybugger/lf;->c:Ljava/util/Map;

    move-object v6, v0

    goto/16 :goto_181

    .line 543
    :cond_244
    const/4 v1, 0x3

    goto/16 :goto_1b5

    .line 555
    :cond_247
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 556
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-nez v1, :cond_2c6

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1d6

    .line 605
    :cond_26f
    iget-object v2, v0, Lorg/jshybugger/lv;->e:[Lorg/jshybugger/ll;

    invoke-static {v2, v7}, Lorg/jshybugger/lf;->a([Lorg/jshybugger/ll;Z)Lorg/jshybugger/ll;

    move-result-object v2

    goto :goto_22b

    .line 621
    :cond_276
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_292

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 622
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 623
    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27e

    .line 528
    :cond_292
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto/16 :goto_175

    .line 628
    :cond_297
    invoke-direct {p0, p3}, Lorg/jshybugger/lf;->a(Z)[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 629
    array-length v0, v1

    new-array v2, v0, [Lorg/jshybugger/ll;

    .line 630
    const/4 v0, 0x0

    :goto_29f
    array-length v3, v1

    if-eq v0, v3, :cond_2ae

    .line 631
    new-instance v3, Lorg/jshybugger/ll;

    aget-object v4, v1, v0

    invoke-direct {v3, v4}, Lorg/jshybugger/ll;-><init>(Ljava/lang/reflect/Constructor;)V

    aput-object v3, v2, v0

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_29f

    .line 633
    :cond_2ae
    new-instance v0, Lorg/jshybugger/lv;

    iget-object v1, p0, Lorg/jshybugger/lf;->b:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/jshybugger/lv;-><init>([Lorg/jshybugger/ll;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jshybugger/lf;->a:Lorg/jshybugger/lv;

    .line 634
    return-void

    :cond_2bc
    move-object v0, v4

    goto/16 :goto_231

    :cond_2bf
    move-object v0, v4

    move-object v2, v5

    goto/16 :goto_231

    :cond_2c3
    move-object v3, v0

    goto/16 :goto_203

    :cond_2c6
    move-object v1, v2

    goto/16 :goto_1d6

    :cond_2c9
    move-object v1, v3

    goto/16 :goto_98
.end method

.method private a(Z)[Ljava/lang/reflect/Constructor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)[",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 640
    if-eqz p1, :cond_32

    iget-object v0, p0, Lorg/jshybugger/lf;->b:Ljava/lang/Class;

    sget-object v1, Lorg/jshybugger/lS;->d:Ljava/lang/Class;

    if-eq v0, v1, :cond_32

    .line 642
    :try_start_8
    iget-object v0, p0, Lorg/jshybugger/lf;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 643
    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_12} :catch_13

    .line 653
    :goto_12
    return-object v0

    .line 648
    :catch_13
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not access constructor  of class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jshybugger/lf;->b:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " due to lack of privileges."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jshybugger/kK;->a(Ljava/lang/String;)V

    .line 653
    :cond_32
    iget-object v0, p0, Lorg/jshybugger/lf;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    goto :goto_12
.end method

.method private a(ZZ)[Ljava/lang/reflect/Field;
    .registers 11

    .prologue
    .line 658
    if-nez p2, :cond_4

    if-eqz p1, :cond_4e

    .line 660
    :cond_4
    :try_start_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 661
    iget-object v0, p0, Lorg/jshybugger/lf;->b:Ljava/lang/Class;

    move-object v1, v0

    .line 663
    :goto_c
    if-eqz v1, :cond_40

    .line 666
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 667
    array-length v4, v3

    const/4 v0, 0x0

    :goto_14
    if-ge v0, v4, :cond_3a

    aget-object v5, v3, v0

    .line 668
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    .line 669
    if-nez p2, :cond_2a

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v7

    if-nez v7, :cond_2a

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 670
    :cond_2a
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v6

    if-nez v6, :cond_34

    .line 671
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 672
    :cond_34
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 677
    :cond_3a
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    .line 678
    goto :goto_c

    .line 680
    :cond_40
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Field;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;
    :try_end_4c
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4c} :catch_4d

    .line 685
    :goto_4c
    return-object v0

    :catch_4d
    move-exception v0

    :cond_4e
    iget-object v0, p0, Lorg/jshybugger/lf;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_4c
.end method

.method private b(Ljava/lang/String;Z)Lorg/jshybugger/ll;
    .registers 13

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 216
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 217
    if-gez v5, :cond_c

    move-object v0, v1

    .line 252
    :cond_b
    :goto_b
    return-object v0

    .line 219
    :cond_c
    if-eqz p2, :cond_44

    iget-object v0, p0, Lorg/jshybugger/lf;->e:Ljava/util/Map;

    move-object v2, v0

    .line 221
    :goto_11
    if-eqz p2, :cond_48

    if-nez v5, :cond_48

    const/4 v0, 0x1

    .line 223
    :goto_16
    if-eqz v0, :cond_4a

    .line 225
    iget-object v0, p0, Lorg/jshybugger/lf;->a:Lorg/jshybugger/lv;

    iget-object v0, v0, Lorg/jshybugger/lv;->e:[Lorg/jshybugger/ll;

    move-object v4, v0

    .line 240
    :goto_1d
    if-eqz v4, :cond_66

    .line 241
    array-length v6, v4

    move v2, v3

    :goto_21
    if-ge v2, v6, :cond_66

    aget-object v0, v4, v2

    .line 242
    iget-object v7, v0, Lorg/jshybugger/ll;->a:[Ljava/lang/Class;

    .line 243
    invoke-static {v7}, Lorg/jshybugger/lf;->a([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    .line 244
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_40

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v5, v7, v3, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_b

    .line 241
    :cond_40
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_21

    .line 219
    :cond_44
    iget-object v0, p0, Lorg/jshybugger/lf;->c:Ljava/util/Map;

    move-object v2, v0

    goto :goto_11

    :cond_48
    move v0, v3

    .line 221
    goto :goto_16

    .line 228
    :cond_4a
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 229
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 230
    if-nez p2, :cond_5c

    if-nez v0, :cond_5c

    .line 232
    iget-object v0, p0, Lorg/jshybugger/lf;->e:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 234
    :cond_5c
    instance-of v2, v0, Lorg/jshybugger/lv;

    if-eqz v2, :cond_68

    .line 235
    check-cast v0, Lorg/jshybugger/lv;

    .line 236
    iget-object v0, v0, Lorg/jshybugger/lv;->e:[Lorg/jshybugger/ll;

    move-object v4, v0

    goto :goto_1d

    :cond_66
    move-object v0, v1

    .line 252
    goto :goto_b

    :cond_68
    move-object v4, v1

    goto :goto_1d
.end method


# virtual methods
.method final a(Lorg/jshybugger/lU;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 12

    .prologue
    const/4 v3, 0x0

    .line 62
    if-eqz p4, :cond_3b

    iget-object v0, p0, Lorg/jshybugger/lf;->e:Ljava/util/Map;

    .line 63
    :goto_5
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    if-nez p4, :cond_13

    if-nez v0, :cond_13

    .line 66
    iget-object v0, p0, Lorg/jshybugger/lf;->e:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    :cond_13
    if-nez v0, :cond_64

    .line 69
    if-eqz p4, :cond_3e

    iget-object v0, p0, Lorg/jshybugger/lf;->e:Ljava/util/Map;

    move-object v2, v0

    :goto_1a
    invoke-direct {p0, p2, p4}, Lorg/jshybugger/lf;->b(Ljava/lang/String;Z)Lorg/jshybugger/ll;

    move-result-object v4

    if-eqz v4, :cond_ae

    invoke-static {p1}, Lorg/jshybugger/lV;->d(Lorg/jshybugger/lU;)Lorg/jshybugger/lU;

    move-result-object v5

    invoke-virtual {v4}, Lorg/jshybugger/ll;->d()Z

    move-result v0

    if-eqz v0, :cond_42

    new-instance v1, Lorg/jshybugger/lu;

    invoke-direct {v1, v4}, Lorg/jshybugger/lu;-><init>(Lorg/jshybugger/ll;)V

    invoke-virtual {v1, v5}, Lorg/jshybugger/lu;->a(Lorg/jshybugger/lU;)V

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 71
    :goto_36
    if-nez v0, :cond_64

    .line 72
    sget-object v0, Lorg/jshybugger/lU;->f:Ljava/lang/Object;

    .line 97
    :cond_3a
    :goto_3a
    return-object v0

    .line 62
    :cond_3b
    iget-object v0, p0, Lorg/jshybugger/lf;->c:Ljava/util/Map;

    goto :goto_5

    .line 69
    :cond_3e
    iget-object v0, p0, Lorg/jshybugger/lf;->c:Ljava/util/Map;

    move-object v2, v0

    goto :goto_1a

    :cond_42
    invoke-virtual {v4}, Lorg/jshybugger/ll;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Lorg/jshybugger/lv;

    if-eqz v0, :cond_ac

    move-object v0, v1

    check-cast v0, Lorg/jshybugger/lv;

    iget-object v0, v0, Lorg/jshybugger/lv;->e:[Lorg/jshybugger/ll;

    array-length v0, v0

    const/4 v6, 0x1

    if-le v0, v6, :cond_ac

    new-instance v1, Lorg/jshybugger/lv;

    invoke-direct {v1, v4, p2}, Lorg/jshybugger/lv;-><init>(Lorg/jshybugger/ll;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/jshybugger/lv;->a(Lorg/jshybugger/lU;)V

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_36

    .line 74
    :cond_64
    instance-of v1, v0, Lorg/jshybugger/lU;

    if-nez v1, :cond_3a

    .line 77
    invoke-static {}, Lorg/jshybugger/kK;->h()Lorg/jshybugger/kK;

    move-result-object v2

    .line 81
    :try_start_6c
    instance-of v1, v0, Lorg/jshybugger/kF;

    if-eqz v1, :cond_98

    .line 82
    check-cast v0, Lorg/jshybugger/kF;

    .line 83
    iget-object v1, v0, Lorg/jshybugger/kF;->a:Lorg/jshybugger/ll;

    if-nez v1, :cond_79

    .line 84
    sget-object v0, Lorg/jshybugger/lU;->f:Ljava/lang/Object;

    goto :goto_3a

    .line 85
    :cond_79
    iget-object v1, v0, Lorg/jshybugger/kF;->a:Lorg/jshybugger/ll;

    sget-object v3, Lorg/jshybugger/kK;->a:[Ljava/lang/Object;

    invoke-virtual {v1, p3, v3}, Lorg/jshybugger/ll;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 86
    iget-object v0, v0, Lorg/jshybugger/kF;->a:Lorg/jshybugger/ll;

    invoke-virtual {v0}, Lorg/jshybugger/ll;->a()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_8a} :catch_a6

    move-result-object v0

    .line 96
    :goto_8b
    invoke-static {p1}, Lorg/jshybugger/lV;->f(Lorg/jshybugger/lU;)Lorg/jshybugger/lU;

    move-result-object v3

    .line 97
    invoke-virtual {v2}, Lorg/jshybugger/kK;->g()Lorg/jshybugger/mh;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v1, v0}, Lorg/jshybugger/mh;->a(Lorg/jshybugger/kK;Lorg/jshybugger/lU;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3a

    .line 88
    :cond_98
    :try_start_98
    check-cast v0, Ljava/lang/reflect/Field;

    .line 89
    if-eqz p4, :cond_9d

    move-object p3, v3

    :cond_9d
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 90
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a4} :catch_a6

    move-result-object v0

    goto :goto_8b

    .line 92
    :catch_a6
    move-exception v0

    .line 93
    invoke-static {v0}, Lorg/jshybugger/kK;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_ac
    move-object v0, v1

    goto :goto_36

    :cond_ae
    move-object v0, v3

    goto :goto_36
.end method

.method final a(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .registers 4

    .prologue
    .line 846
    const-string v0, "msg.java.member.not.found"

    iget-object v1, p0, Lorg/jshybugger/lf;->b:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/jshybugger/kK;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/jshybugger/kT;

    move-result-object v0

    return-object v0
.end method

.method final a(Lorg/jshybugger/lU;Ljava/lang/Object;Z)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/lU;",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jshybugger/kU;",
            ">;"
        }
    .end annotation

    .prologue
    .line 774
    if-eqz p3, :cond_8

    iget-object v0, p0, Lorg/jshybugger/lf;->f:Ljava/util/Map;

    .line 775
    :goto_4
    if-nez v0, :cond_b

    .line 776
    const/4 v0, 0x0

    .line 785
    :goto_7
    return-object v0

    .line 774
    :cond_8
    iget-object v0, p0, Lorg/jshybugger/lf;->d:Ljava/util/Map;

    goto :goto_4

    .line 777
    :cond_b
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    .line 778
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 779
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/kU;

    .line 780
    new-instance v3, Lorg/jshybugger/kU;

    iget-object v4, v0, Lorg/jshybugger/kU;->e:[Lorg/jshybugger/ll;

    iget-object v5, v0, Lorg/jshybugger/kU;->c:Ljava/lang/reflect/Field;

    invoke-direct {v3, p1, v4, v5}, Lorg/jshybugger/kU;-><init>(Lorg/jshybugger/lU;[Lorg/jshybugger/ll;Ljava/lang/reflect/Field;)V

    .line 782
    iput-object p2, v3, Lorg/jshybugger/kU;->d:Ljava/lang/Object;

    .line 783
    iget-object v0, v0, Lorg/jshybugger/kU;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_3d
    move-object v0, v1

    .line 785
    goto :goto_7
.end method

.method final a(Lorg/jshybugger/lU;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .registers 11

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 103
    if-eqz p5, :cond_1b

    iget-object v0, p0, Lorg/jshybugger/lf;->e:Ljava/util/Map;

    .line 104
    :goto_6
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 105
    if-nez p5, :cond_14

    if-nez v1, :cond_14

    .line 107
    iget-object v1, p0, Lorg/jshybugger/lf;->e:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 109
    :cond_14
    if-nez v1, :cond_1e

    .line 110
    invoke-virtual {p0, p2}, Lorg/jshybugger/lf;->a(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 103
    :cond_1b
    iget-object v0, p0, Lorg/jshybugger/lf;->c:Ljava/util/Map;

    goto :goto_6

    .line 111
    :cond_1e
    instance-of v2, v1, Lorg/jshybugger/kU;

    if-eqz v2, :cond_af

    .line 112
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/kU;

    .line 113
    iget-object v0, v0, Lorg/jshybugger/kU;->c:Ljava/lang/reflect/Field;

    .line 117
    :goto_2a
    instance-of v1, v0, Lorg/jshybugger/kF;

    if-eqz v1, :cond_6b

    .line 118
    check-cast v0, Lorg/jshybugger/kF;

    .line 119
    iget-object v1, v0, Lorg/jshybugger/kF;->b:Lorg/jshybugger/ll;

    if-nez v1, :cond_39

    .line 120
    invoke-virtual {p0, p2}, Lorg/jshybugger/lf;->a(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 125
    :cond_39
    iget-object v1, v0, Lorg/jshybugger/kF;->c:Lorg/jshybugger/lv;

    if-eqz v1, :cond_3f

    if-nez p4, :cond_59

    .line 126
    :cond_3f
    iget-object v1, v0, Lorg/jshybugger/kF;->b:Lorg/jshybugger/ll;

    iget-object v1, v1, Lorg/jshybugger/ll;->a:[Ljava/lang/Class;

    aget-object v1, v1, v3

    .line 127
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p4, v1}, Lorg/jshybugger/kK;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v3

    .line 129
    :try_start_4d
    iget-object v0, v0, Lorg/jshybugger/kF;->b:Lorg/jshybugger/ll;

    invoke-virtual {v0, p3, v2}, Lorg/jshybugger/ll;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_52} :catch_53

    .line 161
    :cond_52
    :goto_52
    return-void

    .line 130
    :catch_53
    move-exception v0

    .line 131
    invoke-static {v0}, Lorg/jshybugger/kK;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 133
    :cond_59
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p4, v1, v3

    .line 135
    iget-object v0, v0, Lorg/jshybugger/kF;->c:Lorg/jshybugger/lv;

    invoke-static {}, Lorg/jshybugger/kK;->h()Lorg/jshybugger/kK;

    move-result-object v2

    invoke-static {p1}, Lorg/jshybugger/lV;->f(Lorg/jshybugger/lU;)Lorg/jshybugger/lU;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p1, v1}, Lorg/jshybugger/lv;->a(Lorg/jshybugger/kK;Lorg/jshybugger/lU;Lorg/jshybugger/lU;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 141
    :cond_6b
    instance-of v1, v0, Ljava/lang/reflect/Field;

    if-nez v1, :cond_7b

    .line 142
    if-nez v0, :cond_78

    const-string v0, "msg.java.internal.private"

    .line 144
    :goto_73
    invoke-static {v0, p2}, Lorg/jshybugger/kK;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/kT;

    move-result-object v0

    throw v0

    .line 142
    :cond_78
    const-string v0, "msg.java.method.assign"

    goto :goto_73

    .line 146
    :cond_7b
    check-cast v0, Ljava/lang/reflect/Field;

    .line 147
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p4, v1}, Lorg/jshybugger/kK;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 149
    :try_start_85
    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_88
    .catch Ljava/lang/IllegalAccessException; {:try_start_85 .. :try_end_88} :catch_89
    .catch Ljava/lang/IllegalArgumentException; {:try_start_85 .. :try_end_88} :catch_97

    goto :goto_52

    .line 150
    :catch_89
    move-exception v1

    .line 151
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_52

    .line 155
    invoke-static {v1}, Lorg/jshybugger/kK;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 157
    :catch_97
    move-exception v1

    const-string v1, "msg.java.internal.field.type"

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lorg/jshybugger/kK;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/jshybugger/kT;

    move-result-object v0

    throw v0

    :cond_af
    move-object v0, v1

    goto/16 :goto_2a
.end method

.method final a(Ljava/lang/String;Z)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 51
    if-eqz p2, :cond_d

    iget-object v0, p0, Lorg/jshybugger/lf;->e:Ljava/util/Map;

    .line 52
    :goto_5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_10

    move v0, v1

    .line 56
    :goto_c
    return v0

    .line 51
    :cond_d
    iget-object v0, p0, Lorg/jshybugger/lf;->c:Ljava/util/Map;

    goto :goto_5

    .line 56
    :cond_10
    invoke-direct {p0, p1, p2}, Lorg/jshybugger/lf;->b(Ljava/lang/String;Z)Lorg/jshybugger/ll;

    move-result-object v0

    if-eqz v0, :cond_18

    move v0, v1

    goto :goto_c

    :cond_18
    const/4 v0, 0x0

    goto :goto_c
.end method
