.class public Lcom/box/boxjavalibv2/dao/BoxHashMap;
.super Ljava/util/HashMap;
.source "BoxHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    .local p0, "this":Lcom/box/boxjavalibv2/dao/BoxHashMap;, "Lcom/box/boxjavalibv2/dao/BoxHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 12
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/box/boxjavalibv2/dao/BoxHashMap;, "Lcom/box/boxjavalibv2/dao/BoxHashMap<TK;TV;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 15
    if-ne p1, p0, :cond_6

    move v6, v7

    .line 60
    :goto_5
    return v6

    .line 19
    :cond_6
    instance-of v6, p1, Ljava/util/HashMap;

    if-nez v6, :cond_c

    move v6, v8

    .line 20
    goto :goto_5

    :cond_c
    move-object v4, p1

    .line 23
    check-cast v4, Ljava/util/HashMap;

    .line 25
    .local v4, "mapObj":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;Ljava/lang/Object;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxHashMap;->size()I

    move-result v9

    if-eq v6, v9, :cond_1b

    move v6, v8

    .line 26
    goto :goto_5

    .line 30
    :cond_1b
    :try_start_1b
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 31
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/lang/Object;>;>;"
    :cond_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_71

    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 33
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 34
    .local v3, "key":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 35
    .local v5, "value":Ljava/lang/Object;
    if-nez v5, :cond_47

    .line 36
    invoke-virtual {p0, v3}, Lcom/box/boxjavalibv2/dao/BoxHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_45

    invoke-virtual {p0, v3}, Lcom/box/boxjavalibv2/dao/BoxHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_23

    :cond_45
    move v6, v8

    .line 37
    goto :goto_5

    .line 41
    :cond_47
    instance-of v6, v5, [Ljava/lang/Object;

    if-eqz v6, :cond_5f

    .line 42
    check-cast v5, [Ljava/lang/Object;

    .end local v5    # "value":Ljava/lang/Object;
    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/box/boxjavalibv2/dao/BoxHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_23

    move v6, v8

    .line 43
    goto :goto_5

    .line 46
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_5f
    invoke-virtual {p0, v3}, Lcom/box/boxjavalibv2/dao/BoxHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_66
    .catch Ljava/lang/ClassCastException; {:try_start_1b .. :try_end_66} :catch_6b
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_66} :catch_6e

    move-result v6

    if-nez v6, :cond_23

    move v6, v8

    .line 47
    goto :goto_5

    .line 54
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/lang/Object;>;"
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/lang/Object;>;>;"
    .end local v3    # "key":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    :catch_6b
    move-exception v0

    .local v0, "e":Ljava/lang/ClassCastException;
    move v6, v8

    .line 55
    goto :goto_5

    .line 57
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_6e
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    move v6, v8

    .line 58
    goto :goto_5

    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/lang/Object;>;>;"
    :cond_71
    move v6, v7

    .line 60
    goto :goto_5
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 66
    .local p0, "this":Lcom/box/boxjavalibv2/dao/BoxHashMap;, "Lcom/box/boxjavalibv2/dao/BoxHashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 67
    .local v1, "hashCode":I
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 68
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 71
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, [Ljava/lang/Object;

    if-nez v3, :cond_9

    .line 72
    invoke-interface {v0}, Ljava/util/Map$Entry;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_9

    .line 75
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_23
    return v1
.end method
