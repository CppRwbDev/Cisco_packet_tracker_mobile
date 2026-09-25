.class public Lcom/box/boxjavalibv2/dao/BoxObject;
.super Lcom/box/boxjavalibv2/dao/BoxBase;
.source "BoxObject.java"

# interfaces
.implements Lcom/box/boxjavalibv2/dao/IBoxParcelable;


# static fields
.field private static primitiveWrapperSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final extraMap:Ljava/util/Map;
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

.field private final map:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/box/boxjavalibv2/dao/BoxObject;->primitiveWrapperSet:Ljava/util/HashSet;

    .line 21
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxObject;->primitiveWrapperSet:Ljava/util/HashSet;

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxObject;->primitiveWrapperSet:Ljava/util/HashSet;

    const-class v1, Ljava/lang/Byte;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxObject;->primitiveWrapperSet:Ljava/util/HashSet;

    const-class v1, Ljava/lang/Character;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxObject;->primitiveWrapperSet:Ljava/util/HashSet;

    const-class v1, Ljava/lang/Short;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxObject;->primitiveWrapperSet:Ljava/util/HashSet;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxObject;->primitiveWrapperSet:Ljava/util/HashSet;

    const-class v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxObject;->primitiveWrapperSet:Ljava/util/HashSet;

    const-class v1, Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxObject;->primitiveWrapperSet:Ljava/util/HashSet;

    const-class v1, Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxBase;-><init>()V

    .line 15
    new-instance v0, Lcom/box/boxjavalibv2/dao/BoxHashMap;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/dao/BoxHashMap;-><init>()V

    iput-object v0, p0, Lcom/box/boxjavalibv2/dao/BoxObject;->extraMap:Ljava/util/Map;

    .line 17
    new-instance v0, Lcom/box/boxjavalibv2/dao/BoxHashMap;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/dao/BoxHashMap;-><init>()V

    iput-object v0, p0, Lcom/box/boxjavalibv2/dao/BoxObject;->map:Ljava/util/Map;

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/BoxObject;)V
    .registers 4
    .param p1, "obj"    # Lcom/box/boxjavalibv2/dao/BoxObject;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxBase;-><init>()V

    .line 15
    new-instance v0, Lcom/box/boxjavalibv2/dao/BoxHashMap;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/dao/BoxHashMap;-><init>()V

    iput-object v0, p0, Lcom/box/boxjavalibv2/dao/BoxObject;->extraMap:Ljava/util/Map;

    .line 17
    new-instance v0, Lcom/box/boxjavalibv2/dao/BoxHashMap;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/dao/BoxHashMap;-><init>()V

    iput-object v0, p0, Lcom/box/boxjavalibv2/dao/BoxObject;->map:Ljava/util/Map;

    .line 74
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxObject;->properties()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/box/boxjavalibv2/dao/BoxObject;->properties()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/box/boxjavalibv2/dao/BoxObject;->cloneMap(Ljava/util/Map;Ljava/util/Map;)V

    .line 75
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxObject;->extraProperties()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/box/boxjavalibv2/dao/BoxObject;->extraProperties()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/box/boxjavalibv2/dao/BoxObject;->cloneMap(Ljava/util/Map;Ljava/util/Map;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V
    .registers 3
    .param p1, "in"    # Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxBase;-><init>()V

    .line 15
    new-instance v0, Lcom/box/boxjavalibv2/dao/BoxHashMap;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/dao/BoxHashMap;-><init>()V

    iput-object v0, p0, Lcom/box/boxjavalibv2/dao/BoxObject;->extraMap:Ljava/util/Map;

    .line 17
    new-instance v0, Lcom/box/boxjavalibv2/dao/BoxHashMap;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/dao/BoxHashMap;-><init>()V

    iput-object v0, p0, Lcom/box/boxjavalibv2/dao/BoxObject;->map:Ljava/util/Map;

    .line 153
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxObject;->properties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;->readMap(Ljava/util/Map;)V

    .line 154
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxObject;->extraProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;->readMap(Ljava/util/Map;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxBase;-><init>()V

    .line 15
    new-instance v0, Lcom/box/boxjavalibv2/dao/BoxHashMap;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/dao/BoxHashMap;-><init>()V

    iput-object v0, p0, Lcom/box/boxjavalibv2/dao/BoxObject;->extraMap:Ljava/util/Map;

    .line 17
    new-instance v0, Lcom/box/boxjavalibv2/dao/BoxHashMap;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/dao/BoxHashMap;-><init>()V

    iput-object v0, p0, Lcom/box/boxjavalibv2/dao/BoxObject;->map:Ljava/util/Map;

    .line 40
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxObject;->properties()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/box/boxjavalibv2/dao/BoxObject;->cloneMap(Ljava/util/Map;Ljava/util/Map;)V

    .line 41
    return-void
.end method

.method private static cloneArrayList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "destination":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .local p1, "source":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 192
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Lcom/box/boxjavalibv2/dao/BoxObject;

    if-eqz v2, :cond_34

    .line 194
    :try_start_12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_31} :catch_32

    goto :goto_4

    .line 195
    :catch_32
    move-exception v2

    goto :goto_4

    .line 199
    :cond_34
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 202
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_38
    return-void
.end method

.method private static cloneMap(Ljava/util/Map;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "destination":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p1, "source":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 166
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 167
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 168
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lcom/box/boxjavalibv2/dao/BoxObject;

    if-eqz v4, :cond_45

    .line 170
    :try_start_1f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_42} :catch_43

    goto :goto_b

    .line 171
    :catch_43
    move-exception v4

    goto :goto_b

    .line 174
    :cond_45
    instance-of v4, v3, Ljava/util/ArrayList;

    if-eqz v4, :cond_5b

    .line 175
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    check-cast v3, Ljava/util/ArrayList;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-static {v2, v3}, Lcom/box/boxjavalibv2/dao/BoxObject;->cloneArrayList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 177
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 179
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_5b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 182
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "value":Ljava/lang/Object;
    :cond_63
    return-void
.end method


# virtual methods
.method protected canBeHandledAsUnknown(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 124
    instance-of v5, p1, Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 143
    :cond_6
    :goto_6
    return v4

    .line 127
    :cond_7
    if-eqz p1, :cond_15

    sget-object v5, Lcom/box/boxjavalibv2/dao/BoxObject;->primitiveWrapperSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 130
    :cond_15
    if-eqz p1, :cond_41

    instance-of v5, p1, Ljava/util/ArrayList;

    if-eqz v5, :cond_41

    move-object v2, p1

    .line 132
    check-cast v2, Ljava/util/ArrayList;

    .line 133
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_41

    .line 134
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 135
    .local v0, "component":Ljava/lang/Object;
    instance-of v5, v0, Ljava/lang/String;

    if-nez v5, :cond_6

    .line 138
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 139
    .local v1, "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_3e

    sget-object v5, Lcom/box/boxjavalibv2/dao/BoxObject;->primitiveWrapperSet:Ljava/util/HashSet;

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    :cond_3e
    move v3, v4

    :cond_3f
    move v4, v3

    goto :goto_6

    .end local v0    # "component":Ljava/lang/Object;
    .end local v1    # "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    :cond_41
    move v4, v3

    .line 143
    goto :goto_6
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxObject;->properties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxObject;->extraProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 51
    if-eqz p1, :cond_6

    instance-of v1, p1, Lcom/box/boxjavalibv2/dao/BoxObject;

    if-nez v1, :cond_8

    .line 52
    :cond_6
    const/4 v1, 0x0

    .line 60
    :goto_7
    return v1

    .line 55
    :cond_8
    if-ne p0, p1, :cond_c

    .line 56
    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    move-object v0, p1

    .line 59
    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxObject;

    .line 60
    .local v0, "bObj":Lcom/box/boxjavalibv2/dao/BoxObject;
    new-instance v1, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v1}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxObject;->properties()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/dao/BoxObject;->properties()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxObject;->extraProperties()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/dao/BoxObject;->extraProperties()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result v1

    goto :goto_7
.end method

.method protected extraProperties()Ljava/util/Map;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonAnyGetter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/box/boxjavalibv2/dao/BoxObject;->extraMap:Ljava/util/Map;

    return-object v0
.end method

.method public getExtraData(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxObject;->extraProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxObject;->properties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected handleUnknown(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonAnySetter;
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0, p2}, Lcom/box/boxjavalibv2/dao/BoxObject;->canBeHandledAsUnknown(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 119
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxObject;->extraProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_d
    return-void
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 65
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxObject;->properties()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxObject;->extraProperties()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method protected properties()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/box/boxjavalibv2/dao/BoxObject;->map:Ljava/util/Map;

    return-object v0
.end method

.method protected put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxObject;->properties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public writeToParcel(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;I)V
    .registers 4
    .param p1, "parcelWrapper"    # Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;
    .param p2, "flags"    # I

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxObject;->properties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;->writeMap(Ljava/util/Map;)V

    .line 149
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxObject;->extraProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;->writeMap(Ljava/util/Map;)V

    .line 150
    return-void
.end method
