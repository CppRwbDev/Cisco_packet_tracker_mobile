.class public final Lorg/jshybugger/hQ;
.super Ljava/lang/Object;
.source "JSONObject.java"


# static fields
.field public static final a:Ljava/lang/Object;

.field private static c:Ljava/text/DecimalFormat;


# instance fields
.field private final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 154
    new-instance v0, Lorg/jshybugger/hR;

    invoke-direct {v0, v3}, Lorg/jshybugger/hR;-><init>(B)V

    sput-object v0, Lorg/jshybugger/hQ;->a:Ljava/lang/Object;

    .line 156
    const/4 v0, 0x0

    sput-object v0, Lorg/jshybugger/hQ;->c:Ljava/text/DecimalFormat;

    .line 159
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,##0.0000"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 160
    sput-object v0, Lorg/jshybugger/hQ;->c:Ljava/text/DecimalFormat;

    invoke-virtual {v0, v3}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    .line 161
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/hQ;->b:Ljava/util/Map;

    .line 168
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 293
    invoke-direct {p0}, Lorg/jshybugger/hQ;-><init>()V

    .line 294
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_7a

    move v0, v3

    :goto_10
    if-eqz v0, :cond_7c

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    :goto_16
    array-length v2, v0

    if-ge v1, v2, :cond_c1

    :try_start_19
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_77

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v2, ""

    const-string v6, "get"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_87

    const-string v2, "getClass"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    const-string v2, "getDeclaringClass"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    :cond_43
    const-string v2, ""

    :cond_45
    :goto_45
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_77

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_77

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_77

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v3, :cond_95

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    :cond_67
    :goto_67
    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_77

    iget-object v5, p0, Lorg/jshybugger/hQ;->b:Ljava/util/Map;

    invoke-static {v4}, Lorg/jshybugger/hQ;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_77} :catch_c2

    :cond_77
    :goto_77
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_7a
    move v0, v1

    goto :goto_10

    :cond_7c
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_16

    :cond_81
    const/4 v2, 0x3

    :try_start_82
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_45

    :cond_87
    const-string v6, "is"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_45

    const/4 v2, 0x2

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_45

    :cond_95
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-nez v5, :cond_67

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_bf} :catch_c2

    move-result-object v2

    goto :goto_67

    .line 295
    :cond_c1
    return-void

    :catch_c2
    move-exception v2

    goto :goto_77
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 336
    new-instance v0, Lorg/jshybugger/hU;

    invoke-direct {v0, p1}, Lorg/jshybugger/hU;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/jshybugger/hQ;-><init>(Lorg/jshybugger/hU;)V

    .line 337
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .registers 6

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/hQ;->b:Ljava/util/Map;

    .line 259
    if-eqz p1, :cond_34

    .line 260
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 261
    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 262
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 263
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 264
    if-eqz v2, :cond_14

    .line 265
    iget-object v3, p0, Lorg/jshybugger/hQ;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Lorg/jshybugger/hQ;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 269
    :cond_34
    return-void
.end method

.method public constructor <init>(Lorg/jshybugger/hU;)V
    .registers 5

    .prologue
    .line 204
    invoke-direct {p0}, Lorg/jshybugger/hQ;-><init>()V

    .line 208
    invoke-virtual {p1}, Lorg/jshybugger/hU;->b()C

    move-result v0

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_15

    .line 209
    const-string v0, "A JSONObject text must begin with \'{\'"

    invoke-virtual {p1, v0}, Lorg/jshybugger/hU;->a(Ljava/lang/String;)Lorg/jshybugger/hP;

    move-result-object v0

    throw v0

    .line 239
    :cond_12
    invoke-virtual {p1}, Lorg/jshybugger/hU;->a()V

    .line 212
    :cond_15
    invoke-virtual {p1}, Lorg/jshybugger/hU;->b()C

    move-result v0

    .line 213
    sparse-switch v0, :sswitch_data_5c

    .line 219
    invoke-virtual {p1}, Lorg/jshybugger/hU;->a()V

    .line 220
    invoke-virtual {p1}, Lorg/jshybugger/hU;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-virtual {p1}, Lorg/jshybugger/hU;->b()C

    move-result v1

    .line 226
    const/16 v2, 0x3a

    if-eq v1, v2, :cond_3d

    .line 227
    const-string v0, "Expected a \':\' after a key"

    invoke-virtual {p1, v0}, Lorg/jshybugger/hU;->a(Ljava/lang/String;)Lorg/jshybugger/hP;

    move-result-object v0

    throw v0

    .line 215
    :sswitch_36
    const-string v0, "A JSONObject text must end with \'}\'"

    invoke-virtual {p1, v0}, Lorg/jshybugger/hU;->a(Ljava/lang/String;)Lorg/jshybugger/hP;

    move-result-object v0

    throw v0

    .line 229
    :cond_3d
    invoke-virtual {p1}, Lorg/jshybugger/hU;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jshybugger/hQ;->b(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    .line 233
    invoke-virtual {p1}, Lorg/jshybugger/hU;->b()C

    move-result v0

    sparse-switch v0, :sswitch_data_66

    .line 244
    const-string v0, "Expected a \',\' or \'}\'"

    invoke-virtual {p1, v0}, Lorg/jshybugger/hU;->a(Ljava/lang/String;)Lorg/jshybugger/hP;

    move-result-object v0

    throw v0

    .line 236
    :sswitch_52
    invoke-virtual {p1}, Lorg/jshybugger/hU;->b()C

    move-result v0

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_12

    .line 242
    :sswitch_5a
    return-void

    .line 213
    nop

    :sswitch_data_5c
    .sparse-switch
        0x0 -> :sswitch_36
        0x7d -> :sswitch_5a
    .end sparse-switch

    .line 233
    :sswitch_data_66
    .sparse-switch
        0x2c -> :sswitch_52
        0x3b -> :sswitch_52
        0x7d -> :sswitch_5a
    .end sparse-switch
.end method

.method private a(Ljava/io/Writer;II)Ljava/io/Writer;
    .registers 9

    .prologue
    const/4 v1, 0x1

    .line 1618
    const/4 v0, 0x0

    .line 1619
    :try_start_2
    iget-object v2, p0, Lorg/jshybugger/hQ;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    .line 1620
    iget-object v3, p0, Lorg/jshybugger/hQ;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1621
    const/16 v4, 0x7b

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(I)V

    .line 1623
    if-ne v2, v1, :cond_43

    .line 1624
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1625
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jshybugger/hQ;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1626
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 1627
    if-lez p2, :cond_34

    .line 1628
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 1630
    :cond_34
    iget-object v1, p0, Lorg/jshybugger/hQ;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0, p2, p3}, Lorg/jshybugger/hQ;->a(Ljava/io/Writer;Ljava/lang/Object;II)Ljava/io/Writer;

    .line 1656
    :cond_3d
    :goto_3d
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 1657
    return-object p1

    .line 1631
    :cond_43
    if-eqz v2, :cond_3d

    .line 1632
    add-int v2, p3, p2

    .line 1633
    :goto_47
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_84

    .line 1634
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1635
    if-eqz v0, :cond_58

    .line 1636
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 1638
    :cond_58
    if-lez p2, :cond_5f

    .line 1639
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 1641
    :cond_5f
    invoke-static {p1, v2}, Lorg/jshybugger/hQ;->a(Ljava/io/Writer;I)V

    .line 1642
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jshybugger/hQ;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1643
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 1644
    if-lez p2, :cond_79

    .line 1645
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 1647
    :cond_79
    iget-object v0, p0, Lorg/jshybugger/hQ;->b:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0, p2, v2}, Lorg/jshybugger/hQ;->a(Ljava/io/Writer;Ljava/lang/Object;II)Ljava/io/Writer;

    move v0, v1

    .line 1650
    goto :goto_47

    .line 1651
    :cond_84
    if-lez p2, :cond_8b

    .line 1652
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 1654
    :cond_8b
    invoke-static {p1, p3}, Lorg/jshybugger/hQ;->a(Ljava/io/Writer;I)V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_8e} :catch_8f

    goto :goto_3d

    .line 1658
    :catch_8f
    move-exception v0

    .line 1659
    new-instance v1, Lorg/jshybugger/hP;

    invoke-direct {v1, v0}, Lorg/jshybugger/hP;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static final a(Ljava/io/Writer;Ljava/lang/Object;II)Ljava/io/Writer;
    .registers 7

    .prologue
    .line 1569
    if-eqz p1, :cond_9

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1570
    :cond_9
    const-string v1, "null"

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1597
    :goto_e
    return-object p0

    .line 1571
    :cond_f
    instance-of v1, p1, Lorg/jshybugger/hQ;

    if-eqz v1, :cond_19

    .line 1572
    check-cast p1, Lorg/jshybugger/hQ;

    invoke-direct {p1, p0, p2, p3}, Lorg/jshybugger/hQ;->a(Ljava/io/Writer;II)Ljava/io/Writer;

    goto :goto_e

    .line 1573
    :cond_19
    instance-of v1, p1, Lorg/jshybugger/hO;

    if-eqz v1, :cond_23

    .line 1574
    check-cast p1, Lorg/jshybugger/hO;

    invoke-virtual {p1, p0, p2, p3}, Lorg/jshybugger/hO;->a(Ljava/io/Writer;II)Ljava/io/Writer;

    goto :goto_e

    .line 1575
    :cond_23
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_32

    .line 1576
    new-instance v1, Lorg/jshybugger/hQ;

    check-cast p1, Ljava/util/Map;

    invoke-direct {v1, p1}, Lorg/jshybugger/hQ;-><init>(Ljava/util/Map;)V

    invoke-direct {v1, p0, p2, p3}, Lorg/jshybugger/hQ;->a(Ljava/io/Writer;II)Ljava/io/Writer;

    goto :goto_e

    .line 1577
    :cond_32
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_41

    .line 1578
    new-instance v1, Lorg/jshybugger/hO;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v1, p1}, Lorg/jshybugger/hO;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p0, p2, p3}, Lorg/jshybugger/hO;->a(Ljava/io/Writer;II)Ljava/io/Writer;

    goto :goto_e

    .line 1580
    :cond_41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 1581
    new-instance v1, Lorg/jshybugger/hO;

    invoke-direct {v1, p1}, Lorg/jshybugger/hO;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p0, p2, p3}, Lorg/jshybugger/hO;->a(Ljava/io/Writer;II)Ljava/io/Writer;

    goto :goto_e

    .line 1582
    :cond_54
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_62

    .line 1583
    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lorg/jshybugger/hQ;->a(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_e

    .line 1584
    :cond_62
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_6e

    .line 1585
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_e

    .line 1586
    :cond_6e
    instance-of v1, p1, Lorg/jshybugger/hS;

    if-eqz v1, :cond_94

    .line 1589
    :try_start_72
    move-object v0, p1

    check-cast v0, Lorg/jshybugger/hS;

    move-object v1, v0

    invoke-interface {v1}, Lorg/jshybugger/hS;->a()Ljava/lang/String;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_79} :catch_84

    move-result-object v1

    .line 1593
    if-eqz v1, :cond_8b

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_80
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_e

    .line 1590
    :catch_84
    move-exception v1

    .line 1591
    new-instance v2, Lorg/jshybugger/hP;

    invoke-direct {v2, v1}, Lorg/jshybugger/hP;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1593
    :cond_8b
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jshybugger/hQ;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_80

    .line 1595
    :cond_94
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/io/Writer;)Ljava/io/Writer;

    goto/16 :goto_e
.end method

.method private static a(Ljava/lang/String;Ljava/io/Writer;)Ljava/io/Writer;
    .registers 11

    .prologue
    const/16 v8, 0x5c

    const/16 v7, 0x22

    const/4 v1, 0x0

    .line 1235
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_13

    .line 1236
    :cond_d
    const-string v0, "\"\""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1290
    :goto_12
    return-object p1

    .line 1244
    :cond_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 1246
    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(I)V

    move v0, v1

    move v2, v1

    .line 1247
    :goto_1c
    if-ge v0, v4, :cond_84

    .line 1249
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1250
    sparse-switch v3, :sswitch_data_88

    .line 1278
    const/16 v2, 0x20

    if-lt v3, v2, :cond_39

    const/16 v2, 0x80

    if-lt v3, v2, :cond_31

    const/16 v2, 0xa0

    if-lt v3, v2, :cond_39

    :cond_31
    const/16 v2, 0x2000

    if-lt v3, v2, :cond_57

    const/16 v2, 0x2100

    if-ge v3, v2, :cond_57

    .line 1280
    :cond_39
    const-string v2, "\\u"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1281
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 1282
    const-string v5, "0000"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x4

    invoke-virtual {p1, v5, v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1283
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1247
    :goto_50
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1c

    .line 1253
    :sswitch_54
    invoke-virtual {p1, v8}, Ljava/io/Writer;->write(I)V

    .line 1285
    :cond_57
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_50

    .line 1257
    :sswitch_5b
    const/16 v5, 0x3c

    if-ne v2, v5, :cond_62

    .line 1258
    invoke-virtual {p1, v8}, Ljava/io/Writer;->write(I)V

    .line 1260
    :cond_62
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_50

    .line 1263
    :sswitch_66
    const-string v2, "\\b"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_50

    .line 1266
    :sswitch_6c
    const-string v2, "\\t"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_50

    .line 1269
    :sswitch_72
    const-string v2, "\\n"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_50

    .line 1272
    :sswitch_78
    const-string v2, "\\f"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_50

    .line 1275
    :sswitch_7e
    const-string v2, "\\r"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_50

    .line 1289
    :cond_84
    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(I)V

    goto :goto_12

    .line 1250
    :sswitch_data_88
    .sparse-switch
        0x8 -> :sswitch_66
        0x9 -> :sswitch_6c
        0xa -> :sswitch_72
        0xc -> :sswitch_78
        0xd -> :sswitch_7e
        0x22 -> :sswitch_54
        0x2f -> :sswitch_5b
        0x5c -> :sswitch_54
    .end sparse-switch
.end method

.method private a(I)Ljava/lang/String;
    .registers 6

    .prologue
    .line 1439
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1440
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    monitor-enter v1

    .line 1441
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_c
    invoke-direct {p0, v0, v2, v3}, Lorg/jshybugger/hQ;->a(Ljava/io/Writer;II)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_16

    return-object v0

    .line 1442
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/Number;)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 783
    if-nez p0, :cond_b

    .line 784
    new-instance v0, Lorg/jshybugger/hP;

    const-string v1, "Null pointer"

    invoke-direct {v0, v1}, Lorg/jshybugger/hP;-><init>(Ljava/lang/String;)V

    throw v0

    .line 786
    :cond_b
    invoke-static {p0}, Lorg/jshybugger/hQ;->c(Ljava/lang/Object;)V

    .line 789
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_4a

    .line 791
    sget-object v1, Lorg/jshybugger/hQ;->c:Ljava/text/DecimalFormat;

    monitor-enter v1

    .line 792
    :try_start_15
    sget-object v0, Lorg/jshybugger/hQ;->c:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 793
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_47

    .line 797
    :goto_1c
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_61

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_61

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_61

    .line 799
    :goto_34
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 800
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    .line 793
    :catchall_47
    move-exception v0

    monitor-exit v1

    throw v0

    .line 795
    :cond_4a
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 802
    :cond_4f
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 803
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 806
    :cond_61
    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 1470
    if-eqz p0, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1471
    :cond_9
    const-string v0, "null"

    .line 1501
    :goto_b
    return-object v0

    .line 1473
    :cond_c
    instance-of v0, p0, Lorg/jshybugger/hS;

    if-eqz v0, :cond_39

    .line 1476
    :try_start_10
    check-cast p0, Lorg/jshybugger/hS;

    invoke-interface {p0}, Lorg/jshybugger/hS;->a()Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_1d

    move-result-object v0

    .line 1480
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_24

    .line 1481
    check-cast v0, Ljava/lang/String;

    goto :goto_b

    .line 1477
    :catch_1d
    move-exception v0

    .line 1478
    new-instance v1, Lorg/jshybugger/hP;

    invoke-direct {v1, v0}, Lorg/jshybugger/hP;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1483
    :cond_24
    new-instance v1, Lorg/jshybugger/hP;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad value from toJSONString: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jshybugger/hP;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1485
    :cond_39
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_44

    .line 1486
    check-cast p0, Ljava/lang/Number;

    invoke-static {p0}, Lorg/jshybugger/hQ;->a(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1488
    :cond_44
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_50

    instance-of v0, p0, Lorg/jshybugger/hQ;

    if-nez v0, :cond_50

    instance-of v0, p0, Lorg/jshybugger/hO;

    if-eqz v0, :cond_55

    .line 1490
    :cond_50
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1492
    :cond_55
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_65

    .line 1493
    new-instance v0, Lorg/jshybugger/hQ;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, Lorg/jshybugger/hQ;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/jshybugger/hQ;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1495
    :cond_65
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_75

    .line 1496
    new-instance v0, Lorg/jshybugger/hO;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Lorg/jshybugger/hO;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lorg/jshybugger/hO;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1498
    :cond_75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 1499
    new-instance v0, Lorg/jshybugger/hO;

    invoke-direct {v0, p0}, Lorg/jshybugger/hO;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/jshybugger/hO;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1501
    :cond_89
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jshybugger/hQ;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b
.end method

.method static final a(Ljava/io/Writer;I)V
    .registers 4

    .prologue
    .line 1601
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_b

    .line 1602
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(I)V

    .line 1601
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1604
    :cond_b
    return-void
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1518
    if-nez p0, :cond_5

    .line 1519
    :try_start_2
    sget-object p0, Lorg/jshybugger/hQ;->a:Ljava/lang/Object;

    .line 1550
    :cond_4
    :goto_4
    return-object p0

    .line 1521
    :cond_5
    instance-of v0, p0, Lorg/jshybugger/hQ;

    if-nez v0, :cond_4

    instance-of v0, p0, Lorg/jshybugger/hO;

    if-nez v0, :cond_4

    sget-object v0, Lorg/jshybugger/hQ;->a:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    instance-of v0, p0, Lorg/jshybugger/hS;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/lang/Character;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_4

    .line 1531
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_4a

    .line 1532
    new-instance v0, Lorg/jshybugger/hO;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Lorg/jshybugger/hO;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    goto :goto_4

    .line 1534
    :cond_4a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1535
    new-instance v0, Lorg/jshybugger/hO;

    invoke-direct {v0, p0}, Lorg/jshybugger/hO;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_4

    .line 1537
    :cond_5b
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_68

    .line 1538
    new-instance v0, Lorg/jshybugger/hQ;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, Lorg/jshybugger/hQ;-><init>(Ljava/util/Map;)V

    move-object p0, v0

    goto :goto_4

    .line 1540
    :cond_68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 1541
    if-eqz v0, :cond_96

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1543
    :goto_76
    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_90

    const-string v1, "javax."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_90

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_99

    .line 1546
    :cond_90
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 1541
    :cond_96
    const-string v0, ""

    goto :goto_76

    .line 1548
    :cond_99
    new-instance v0, Lorg/jshybugger/hQ;

    invoke-direct {v0, p0}, Lorg/jshybugger/hQ;-><init>(Ljava/lang/Object;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9e} :catch_a1

    move-object p0, v0

    goto/16 :goto_4

    .line 1550
    :catch_a1
    move-exception v0

    const/4 p0, 0x0

    goto/16 :goto_4
.end method

.method private static c(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 1367
    if-eqz p0, :cond_3c

    .line 1368
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1f

    move-object v0, p0

    .line 1369
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_17

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1370
    :cond_17
    new-instance v0, Lorg/jshybugger/hP;

    const-string v1, "JSON does not allow non-finite numbers."

    invoke-direct {v0, v1}, Lorg/jshybugger/hP;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1373
    :cond_1f
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_3c

    move-object v0, p0

    .line 1374
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_34

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1375
    :cond_34
    new-instance v0, Lorg/jshybugger/hP;

    const-string v1, "JSON does not allow non-finite numbers."

    invoke-direct {v0, v1}, Lorg/jshybugger/hP;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1380
    :cond_3c
    return-void
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 1223
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1224
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    monitor-enter v1

    .line 1226
    :try_start_a
    invoke-static {p0, v0}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_11} :catch_14
    .catchall {:try_start_a .. :try_end_11} :catchall_19

    move-result-object v0

    :try_start_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_19

    .line 1229
    :goto_13
    return-object v0

    :catch_14
    move-exception v0

    const-string v0, ""

    monitor-exit v1

    goto :goto_13

    .line 1231
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static j(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7

    .prologue
    .line 1315
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1355
    :cond_8
    :goto_8
    return-object p0

    .line 1318
    :cond_9
    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1319
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_8

    .line 1321
    :cond_14
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1322
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_8

    .line 1324
    :cond_1f
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1325
    sget-object p0, Lorg/jshybugger/hQ;->a:Ljava/lang/Object;

    goto :goto_8

    .line 1333
    :cond_2a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1334
    const/16 v1, 0x30

    if-lt v0, v1, :cond_37

    const/16 v1, 0x39

    if-le v0, v1, :cond_3b

    :cond_37
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_8

    .line 1336
    :cond_3b
    const/16 v0, 0x2e

    :try_start_3d
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_53

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_53

    const/16 v0, 0x45

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_65

    .line 1338
    :cond_53
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 1339
    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-nez v1, :cond_8

    move-object p0, v0

    .line 1340
    goto :goto_8

    .line 1343
    :cond_65
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 1344
    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1345
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-nez v0, :cond_8d

    .line 1346
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_8a} :catch_90

    move-object p0, v0

    goto/16 :goto_8

    :cond_8d
    move-object p0, v1

    .line 1348
    goto/16 :goto_8

    :catch_90
    move-exception v0

    goto/16 :goto_8
.end method

.method private k(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 817
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lorg/jshybugger/hQ;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 483
    if-nez p1, :cond_a

    .line 484
    new-instance v0, Lorg/jshybugger/hP;

    const-string v1, "Null key."

    invoke-direct {v0, v1}, Lorg/jshybugger/hP;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_a
    invoke-direct {p0, p1}, Lorg/jshybugger/hQ;->k(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 487
    if-nez v0, :cond_2f

    .line 488
    new-instance v0, Lorg/jshybugger/hP;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSONObject["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/jshybugger/hQ;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jshybugger/hP;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_2f
    return-object v0
.end method

.method public final a(Ljava/lang/String;D)Lorg/jshybugger/hQ;
    .registers 6

    .prologue
    .line 1091
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    .line 1092
    return-object p0
.end method

.method public final a(Ljava/lang/String;I)Lorg/jshybugger/hQ;
    .registers 4

    .prologue
    .line 1107
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    .line 1108
    return-object p0
.end method

.method public final a(Ljava/lang/String;J)Lorg/jshybugger/hQ;
    .registers 6

    .prologue
    .line 1123
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    .line 1124
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;
    .registers 5

    .prologue
    .line 1158
    if-nez p1, :cond_a

    .line 1159
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null key."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1161
    :cond_a
    if-eqz p2, :cond_15

    .line 1162
    invoke-static {p2}, Lorg/jshybugger/hQ;->c(Ljava/lang/Object;)V

    .line 1163
    iget-object v0, p0, Lorg/jshybugger/hQ;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    :goto_14
    return-object p0

    .line 1165
    :cond_15
    iget-object v0, p0, Lorg/jshybugger/hQ;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14
.end method

.method public final a(Ljava/lang/String;Ljava/util/Collection;)Lorg/jshybugger/hQ;
    .registers 4

    .prologue
    .line 1075
    new-instance v0, Lorg/jshybugger/hO;

    invoke-direct {v0, p2}, Lorg/jshybugger/hO;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    .line 1076
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)Lorg/jshybugger/hQ;
    .registers 4

    .prologue
    .line 1139
    new-instance v0, Lorg/jshybugger/hQ;

    invoke-direct {v0, p2}, Lorg/jshybugger/hQ;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v0}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    .line 1140
    return-object p0
.end method

.method public final a(Ljava/lang/String;Z)Lorg/jshybugger/hQ;
    .registers 4

    .prologue
    .line 1059
    if-eqz p2, :cond_8

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_4
    invoke-virtual {p0, p1, v0}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    .line 1060
    return-object p0

    .line 1059
    :cond_8
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;
    .registers 6

    .prologue
    .line 1182
    if-eqz p1, :cond_28

    if-eqz p2, :cond_28

    .line 1183
    invoke-direct {p0, p1}, Lorg/jshybugger/hQ;->k(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 1184
    new-instance v0, Lorg/jshybugger/hP;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Duplicate key \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jshybugger/hP;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1186
    :cond_25
    invoke-virtual {p0, p1, p2}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    .line 1188
    :cond_28
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 504
    invoke-virtual {p0, p1}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 505
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_1d

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 508
    :cond_1b
    const/4 v0, 0x0

    .line 512
    :goto_1c
    return v0

    .line 509
    :cond_1d
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_35

    check-cast v1, Ljava/lang/String;

    const-string v0, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 512
    :cond_33
    const/4 v0, 0x1

    goto :goto_1c

    .line 514
    :cond_35
    new-instance v0, Lorg/jshybugger/hP;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSONObject["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/jshybugger/hQ;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not a Boolean."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jshybugger/hP;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Ljava/lang/String;)D
    .registers 5

    .prologue
    .line 529
    invoke-virtual {p0, p1}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 531
    :try_start_4
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    :goto_e
    return-wide v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_16

    move-result-wide v0

    goto :goto_e

    .line 534
    :catch_16
    move-exception v0

    new-instance v0, Lorg/jshybugger/hP;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSONObject["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/jshybugger/hQ;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not a number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jshybugger/hP;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 550
    invoke-virtual {p0, p1}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 552
    :try_start_4
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_16

    move-result v0

    goto :goto_e

    .line 555
    :catch_16
    move-exception v0

    new-instance v0, Lorg/jshybugger/hP;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSONObject["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/jshybugger/hQ;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not an int."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jshybugger/hP;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(Ljava/lang/String;)Lorg/jshybugger/hO;
    .registers 5

    .prologue
    .line 570
    invoke-virtual {p0, p1}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 571
    instance-of v1, v0, Lorg/jshybugger/hO;

    if-eqz v1, :cond_b

    .line 572
    check-cast v0, Lorg/jshybugger/hO;

    return-object v0

    .line 574
    :cond_b
    new-instance v0, Lorg/jshybugger/hP;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSONObject["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/jshybugger/hQ;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not a JSONArray."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jshybugger/hP;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f(Ljava/lang/String;)Lorg/jshybugger/hQ;
    .registers 5

    .prologue
    .line 588
    invoke-virtual {p0, p1}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 589
    instance-of v1, v0, Lorg/jshybugger/hQ;

    if-eqz v1, :cond_b

    .line 590
    check-cast v0, Lorg/jshybugger/hQ;

    return-object v0

    .line 592
    :cond_b
    new-instance v0, Lorg/jshybugger/hP;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSONObject["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/jshybugger/hQ;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not a JSONObject."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jshybugger/hP;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 669
    invoke-virtual {p0, p1}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 670
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 671
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 673
    :cond_b
    new-instance v0, Lorg/jshybugger/hP;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSONObject["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/jshybugger/hQ;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not a string."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jshybugger/hP;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 684
    iget-object v0, p0, Lorg/jshybugger/hQ;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1418
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lorg/jshybugger/hQ;->a(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    .line 1420
    :goto_5
    return-object v0

    :catch_6
    move-exception v0

    const/4 v0, 0x0

    goto :goto_5
.end method
