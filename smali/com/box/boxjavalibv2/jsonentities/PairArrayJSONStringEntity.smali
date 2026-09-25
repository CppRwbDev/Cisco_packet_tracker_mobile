.class public Lcom/box/boxjavalibv2/jsonentities/PairArrayJSONStringEntity;
.super Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;
.source "PairArrayJSONStringEntity.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public toJSONString(Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Ljava/lang/String;
    .registers 8
    .param p1, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/boxjavalibv2/exceptions/BoxJSONException;
        }
    .end annotation

    .prologue
    .line 18
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;>;"
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/jsonentities/PairArrayJSONStringEntity;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 20
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;-><init>()V

    .line 21
    .local v0, "entity":Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 24
    .end local v0    # "entity":Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2d
    invoke-interface {p1, v3}, Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;->convertBoxObjectToJSONStringQuietly(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
