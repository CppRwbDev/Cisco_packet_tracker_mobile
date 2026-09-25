.class public abstract Lorg/apache/commons/lang/enum/Enum;
.super Ljava/lang/Object;
.source "Enum.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/enum/Enum$Entry;
    }
.end annotation


# static fields
.field private static final EMPTY_MAP:Ljava/util/Map;

.field private static cEnumClasses:Ljava/util/Map; = null

.field static class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class; = null

.field static class$org$apache$commons$lang$enum$ValuedEnum:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = -0x6c255b64ccea986L


# instance fields
.field private final transient iHashCode:I

.field private final iName:Ljava/lang/String;

.field protected transient iToString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 254
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/enum/Enum;->EMPTY_MAP:Ljava/util/Map;

    .line 259
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/enum/Enum;->cEnumClasses:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/enum/Enum;->iToString:Ljava/lang/String;

    .line 322
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/enum/Enum;->init(Ljava/lang/String;)V

    .line 323
    iput-object p1, p0, Lorg/apache/commons/lang/enum/Enum;->iName:Ljava/lang/String;

    .line 324
    invoke-virtual {p0}, Lorg/apache/commons/lang/enum/Enum;->getEnumClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/enum/Enum;->iHashCode:I

    .line 326
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 346
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static createEntry(Ljava/lang/Class;)Lorg/apache/commons/lang/enum/Enum$Entry;
    .registers 6
    .param p0, "enumClass"    # Ljava/lang/Class;

    .prologue
    .line 510
    new-instance v1, Lorg/apache/commons/lang/enum/Enum$Entry;

    invoke-direct {v1}, Lorg/apache/commons/lang/enum/Enum$Entry;-><init>()V

    .line 511
    .local v1, "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 512
    .local v0, "cls":Ljava/lang/Class;
    :goto_9
    if-eqz v0, :cond_3f

    sget-object v3, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    if-nez v3, :cond_40

    const-string v3, "org.apache.commons.lang.enum.Enum"

    invoke-static {v3}, Lorg/apache/commons/lang/enum/Enum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    :goto_17
    if-eq v0, v3, :cond_3f

    sget-object v3, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$ValuedEnum:Ljava/lang/Class;

    if-nez v3, :cond_43

    const-string v3, "org.apache.commons.lang.enum.ValuedEnum"

    invoke-static {v3}, Lorg/apache/commons/lang/enum/Enum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$ValuedEnum:Ljava/lang/Class;

    :goto_25
    if-eq v0, v3, :cond_3f

    .line 513
    sget-object v3, Lorg/apache/commons/lang/enum/Enum;->cEnumClasses:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/lang/enum/Enum$Entry;

    .line 514
    .local v2, "loopEntry":Lorg/apache/commons/lang/enum/Enum$Entry;
    if-eqz v2, :cond_46

    .line 515
    iget-object v3, v1, Lorg/apache/commons/lang/enum/Enum$Entry;->list:Ljava/util/List;

    iget-object v4, v2, Lorg/apache/commons/lang/enum/Enum$Entry;->list:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 516
    iget-object v3, v1, Lorg/apache/commons/lang/enum/Enum$Entry;->map:Ljava/util/Map;

    iget-object v4, v2, Lorg/apache/commons/lang/enum/Enum$Entry;->map:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 521
    .end local v2    # "loopEntry":Lorg/apache/commons/lang/enum/Enum$Entry;
    :cond_3f
    return-object v1

    .line 512
    :cond_40
    sget-object v3, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    goto :goto_17

    :cond_43
    sget-object v3, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$ValuedEnum:Ljava/lang/Class;

    goto :goto_25

    .line 519
    .restart local v2    # "loopEntry":Lorg/apache/commons/lang/enum/Enum$Entry;
    :cond_46
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 520
    goto :goto_9
.end method

.method private static getEntry(Ljava/lang/Class;)Lorg/apache/commons/lang/enum/Enum$Entry;
    .registers 6
    .param p0, "enumClass"    # Ljava/lang/Class;

    .prologue
    .line 480
    if-nez p0, :cond_a

    .line 481
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Enum Class must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 483
    :cond_a
    sget-object v2, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    if-nez v2, :cond_24

    const-string v2, "org.apache.commons.lang.enum.Enum"

    invoke-static {v2}, Lorg/apache/commons/lang/enum/Enum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    :goto_16
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 484
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Class must be a subclass of Enum"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 483
    :cond_24
    sget-object v2, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    goto :goto_16

    .line 486
    :cond_27
    sget-object v2, Lorg/apache/commons/lang/enum/Enum;->cEnumClasses:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang/enum/Enum$Entry;

    .line 488
    .local v1, "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    if-nez v1, :cond_47

    .line 491
    :try_start_31
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 492
    sget-object v2, Lorg/apache/commons/lang/enum/Enum;->cEnumClasses:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/commons/lang/enum/Enum$Entry;

    move-object v1, v0
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_47} :catch_48

    .line 498
    :cond_47
    :goto_47
    return-object v1

    .line 493
    :catch_48
    move-exception v2

    goto :goto_47
.end method

.method protected static getEnum(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/commons/lang/enum/Enum;
    .registers 4
    .param p0, "enumClass"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 404
    invoke-static {p0}, Lorg/apache/commons/lang/enum/Enum;->getEntry(Ljava/lang/Class;)Lorg/apache/commons/lang/enum/Enum$Entry;

    move-result-object v0

    .line 405
    .local v0, "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    if-nez v0, :cond_8

    .line 406
    const/4 v1, 0x0

    .line 408
    :goto_7
    return-object v1

    :cond_8
    iget-object v1, v0, Lorg/apache/commons/lang/enum/Enum$Entry;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang/enum/Enum;

    goto :goto_7
.end method

.method protected static getEnumList(Ljava/lang/Class;)Ljava/util/List;
    .registers 3
    .param p0, "enumClass"    # Ljava/lang/Class;

    .prologue
    .line 447
    invoke-static {p0}, Lorg/apache/commons/lang/enum/Enum;->getEntry(Ljava/lang/Class;)Lorg/apache/commons/lang/enum/Enum$Entry;

    move-result-object v0

    .line 448
    .local v0, "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    if-nez v0, :cond_9

    .line 449
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 451
    :goto_8
    return-object v1

    :cond_9
    iget-object v1, v0, Lorg/apache/commons/lang/enum/Enum$Entry;->unmodifiableList:Ljava/util/List;

    goto :goto_8
.end method

.method protected static getEnumMap(Ljava/lang/Class;)Ljava/util/Map;
    .registers 3
    .param p0, "enumClass"    # Ljava/lang/Class;

    .prologue
    .line 425
    invoke-static {p0}, Lorg/apache/commons/lang/enum/Enum;->getEntry(Ljava/lang/Class;)Lorg/apache/commons/lang/enum/Enum$Entry;

    move-result-object v0

    .line 426
    .local v0, "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    if-nez v0, :cond_9

    .line 427
    sget-object v1, Lorg/apache/commons/lang/enum/Enum;->EMPTY_MAP:Ljava/util/Map;

    .line 429
    :goto_8
    return-object v1

    :cond_9
    iget-object v1, v0, Lorg/apache/commons/lang/enum/Enum$Entry;->unmodifiableMap:Ljava/util/Map;

    goto :goto_8
.end method

.method private getNameInOtherClassLoader(Ljava/lang/Object;)Ljava/lang/String;
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 627
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getName"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 628
    .local v0, "mth":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_12} :catch_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_12} :catch_1c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_12} :catch_13

    .line 629
    .local v1, "name":Ljava/lang/String;
    return-object v1

    .line 634
    .end local v0    # "mth":Ljava/lang/reflect/Method;
    .end local v1    # "name":Ljava/lang/String;
    :catch_13
    move-exception v2

    .line 637
    :goto_14
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "This should not happen"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 632
    :catch_1c
    move-exception v2

    goto :goto_14

    .line 630
    :catch_1e
    move-exception v2

    goto :goto_14
.end method

.method private init(Ljava/lang/String;)V
    .registers 10
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 336
    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 337
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The Enum name must not be empty or null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 340
    :cond_e
    invoke-virtual {p0}, Lorg/apache/commons/lang/enum/Enum;->getEnumClass()Ljava/lang/Class;

    move-result-object v2

    .line 341
    .local v2, "enumClass":Ljava/lang/Class;
    if-nez v2, :cond_1c

    .line 342
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "getEnumClass() must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 344
    :cond_1c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 345
    .local v0, "cls":Ljava/lang/Class;
    const/4 v4, 0x0

    .line 346
    .local v4, "ok":Z
    :goto_21
    if-eqz v0, :cond_42

    sget-object v5, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    if-nez v5, :cond_4c

    const-string v5, "org.apache.commons.lang.enum.Enum"

    invoke-static {v5}, Lorg/apache/commons/lang/enum/Enum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    :goto_2f
    if-eq v0, v5, :cond_42

    sget-object v5, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$ValuedEnum:Ljava/lang/Class;

    if-nez v5, :cond_4f

    const-string v5, "org.apache.commons.lang.enum.ValuedEnum"

    invoke-static {v5}, Lorg/apache/commons/lang/enum/Enum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$ValuedEnum:Ljava/lang/Class;

    :goto_3d
    if-eq v0, v5, :cond_42

    .line 347
    if-ne v0, v2, :cond_52

    .line 348
    const/4 v4, 0x1

    .line 353
    :cond_42
    if-nez v4, :cond_57

    .line 354
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "getEnumClass() must return a superclass of this class"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 346
    :cond_4c
    sget-object v5, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    goto :goto_2f

    :cond_4f
    sget-object v5, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$ValuedEnum:Ljava/lang/Class;

    goto :goto_3d

    .line 351
    :cond_52
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_21

    .line 358
    :cond_57
    sget-object v5, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    if-nez v5, :cond_a9

    const-string v5, "org.apache.commons.lang.enum.Enum"

    invoke-static {v5}, Lorg/apache/commons/lang/enum/Enum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    :goto_63
    monitor-enter v5

    .line 360
    :try_start_64
    sget-object v6, Lorg/apache/commons/lang/enum/Enum;->cEnumClasses:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang/enum/Enum$Entry;

    .line 361
    .local v1, "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    if-nez v1, :cond_81

    .line 362
    invoke-static {v2}, Lorg/apache/commons/lang/enum/Enum;->createEntry(Ljava/lang/Class;)Lorg/apache/commons/lang/enum/Enum$Entry;

    move-result-object v1

    .line 363
    new-instance v3, Ljava/util/WeakHashMap;

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    .line 364
    .local v3, "myMap":Ljava/util/Map;
    sget-object v6, Lorg/apache/commons/lang/enum/Enum;->cEnumClasses:Ljava/util/Map;

    invoke-interface {v3, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 365
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sput-object v3, Lorg/apache/commons/lang/enum/Enum;->cEnumClasses:Ljava/util/Map;

    .line 368
    .end local v3    # "myMap":Ljava/util/Map;
    :cond_81
    monitor-exit v5
    :try_end_82
    .catchall {:try_start_64 .. :try_end_82} :catchall_ac

    .line 369
    iget-object v5, v1, Lorg/apache/commons/lang/enum/Enum$Entry;->map:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_af

    .line 370
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "The Enum name must be unique, \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\' has already been added"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 358
    .end local v1    # "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    :cond_a9
    sget-object v5, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    goto :goto_63

    .line 368
    :catchall_ac
    move-exception v6

    :try_start_ad
    monitor-exit v5
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw v6

    .line 372
    .restart local v1    # "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    :cond_af
    iget-object v5, v1, Lorg/apache/commons/lang/enum/Enum$Entry;->map:Ljava/util/Map;

    invoke-interface {v5, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v5, v1, Lorg/apache/commons/lang/enum/Enum$Entry;->list:Ljava/util/List;

    invoke-interface {v5, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    return-void
.end method

.method protected static iterator(Ljava/lang/Class;)Ljava/util/Iterator;
    .registers 2
    .param p0, "enumClass"    # Ljava/lang/Class;

    .prologue
    .line 469
    invoke-static {p0}, Lorg/apache/commons/lang/enum/Enum;->getEnumList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 606
    if-ne p1, p0, :cond_4

    .line 607
    const/4 v0, 0x0

    .line 616
    .end local p1    # "other":Ljava/lang/Object;
    :goto_3
    return v0

    .line 609
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_56

    .line 610
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 611
    iget-object v0, p0, Lorg/apache/commons/lang/enum/Enum;->iName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/apache/commons/lang/enum/Enum;->getNameInOtherClassLoader(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    .line 613
    :cond_2f
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Different enum class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang/ClassUtils;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :cond_56
    iget-object v0, p0, Lorg/apache/commons/lang/enum/Enum;->iName:Ljava/lang/String;

    check-cast p1, Lorg/apache/commons/lang/enum/Enum;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lorg/apache/commons/lang/enum/Enum;->iName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_3
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 562
    if-ne p1, p0, :cond_5

    .line 563
    const/4 v0, 0x1

    .line 576
    .end local p1    # "other":Ljava/lang/Object;
    :cond_4
    :goto_4
    return v0

    .line 564
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_5
    if-eqz p1, :cond_4

    .line 566
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1c

    .line 570
    iget-object v0, p0, Lorg/apache/commons/lang/enum/Enum;->iName:Ljava/lang/String;

    check-cast p1, Lorg/apache/commons/lang/enum/Enum;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lorg/apache/commons/lang/enum/Enum;->iName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    .line 573
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 576
    iget-object v0, p0, Lorg/apache/commons/lang/enum/Enum;->iName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/apache/commons/lang/enum/Enum;->getNameInOtherClassLoader(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public getEnumClass()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 545
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 531
    iget-object v0, p0, Lorg/apache/commons/lang/enum/Enum;->iName:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 586
    iget v0, p0, Lorg/apache/commons/lang/enum/Enum;->iHashCode:I

    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 383
    sget-object v1, Lorg/apache/commons/lang/enum/Enum;->cEnumClasses:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/commons/lang/enum/Enum;->getEnumClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang/enum/Enum$Entry;

    .line 384
    .local v0, "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    if-nez v0, :cond_10

    .line 385
    const/4 v1, 0x0

    .line 387
    :goto_f
    return-object v1

    :cond_10
    iget-object v1, v0, Lorg/apache/commons/lang/enum/Enum$Entry;->map:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/commons/lang/enum/Enum;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_f
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 648
    iget-object v1, p0, Lorg/apache/commons/lang/enum/Enum;->iToString:Ljava/lang/String;

    if-nez v1, :cond_2f

    .line 649
    invoke-virtual {p0}, Lorg/apache/commons/lang/enum/Enum;->getEnumClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang/ClassUtils;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, "shortName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/lang/enum/Enum;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/lang/enum/Enum;->iToString:Ljava/lang/String;

    .line 652
    .end local v0    # "shortName":Ljava/lang/String;
    :cond_2f
    iget-object v1, p0, Lorg/apache/commons/lang/enum/Enum;->iToString:Ljava/lang/String;

    return-object v1
.end method
