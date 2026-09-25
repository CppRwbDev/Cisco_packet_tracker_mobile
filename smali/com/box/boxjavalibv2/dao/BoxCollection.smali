.class public Lcom/box/boxjavalibv2/dao/BoxCollection;
.super Lcom/box/boxjavalibv2/dao/BoxCollectionBase;
.source "BoxCollection.java"


# static fields
.field public static final FIELD_TOTAL_COUNT:Ljava/lang/String; = "total_count"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxCollectionBase;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/BoxCollection;)V
    .registers 2
    .param p1, "obj"    # Lcom/box/boxjavalibv2/dao/BoxCollection;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxCollectionBase;-><init>(Lcom/box/boxjavalibv2/dao/BoxCollectionBase;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V
    .registers 2
    .param p1, "in"    # Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxCollectionBase;-><init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
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
    .line 29
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxCollectionBase;-><init>(Ljava/util/Map;)V

    .line 30
    return-void
.end method

.method private setTotalCount(Ljava/lang/Integer;)V
    .registers 3
    .param p1, "totalCount"    # Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "total_count"
    .end annotation

    .prologue
    .line 46
    const-string v0, "total_count"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxCollection;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getTotalCount()Ljava/lang/Integer;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "total_count"
    .end annotation

    .prologue
    .line 37
    const-string v0, "total_count"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxCollection;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method
