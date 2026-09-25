.class public Lcom/box/boxjavalibv2/dao/BoxEventCollection;
.super Lcom/box/boxjavalibv2/dao/BoxCollectionBase;
.source "BoxEventCollection.java"


# static fields
.field public static final FIELD_CHUNK_SIZE:Ljava/lang/String; = "chunk_size"

.field public static final FIELD_NEXT_STREAM_POSITION:Ljava/lang/String; = "next_stream_position"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxCollectionBase;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/BoxEventCollection;)V
    .registers 2
    .param p1, "obj"    # Lcom/box/boxjavalibv2/dao/BoxEventCollection;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxCollectionBase;-><init>(Lcom/box/boxjavalibv2/dao/BoxCollectionBase;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V
    .registers 2
    .param p1, "in"    # Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxCollectionBase;-><init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V

    .line 69
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
    .line 30
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxCollectionBase;-><init>(Ljava/util/Map;)V

    .line 31
    return-void
.end method

.method private setChunkSize(Ljava/lang/Integer;)V
    .registers 3
    .param p1, "chunkSize"    # Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "chunk_size"
    .end annotation

    .prologue
    .line 47
    const-string v0, "chunk_size"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxEventCollection;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method private setNextStreamPosition(Ljava/lang/Long;)V
    .registers 3
    .param p1, "nextStreamPosition"    # Ljava/lang/Long;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "next_stream_position"
    .end annotation

    .prologue
    .line 64
    const-string v0, "next_stream_position"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxEventCollection;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    return-void
.end method


# virtual methods
.method public getChunkSize()Ljava/lang/Integer;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "chunk_size"
    .end annotation

    .prologue
    .line 38
    const-string v0, "chunk_size"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxEventCollection;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getNextStreamPosition()Ljava/lang/Long;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "next_stream_position"
    .end annotation

    .prologue
    .line 55
    const-string v0, "next_stream_position"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxEventCollection;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method
