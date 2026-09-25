.class public Lcom/box/boxjavalibv2/dao/BoxCollectionBase;
.super Lcom/box/boxjavalibv2/dao/BoxObject;
.source "BoxCollectionBase.java"


# static fields
.field public static final FIELD_ENTRIES:Ljava/lang/String; = "entries"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/BoxCollectionBase;)V
    .registers 2
    .param p1, "obj"    # Lcom/box/boxjavalibv2/dao/BoxCollectionBase;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>(Lcom/box/boxjavalibv2/dao/BoxObject;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V
    .registers 2
    .param p1, "in"    # Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V

    .line 53
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
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>(Ljava/util/Map;)V

    .line 31
    return-void
.end method

.method private setEntries(Ljava/util/ArrayList;)V
    .registers 3
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "entries"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/box/boxjavalibv2/dao/BoxTypedObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/box/boxjavalibv2/dao/BoxTypedObject;>;"
    const-string v0, "entries"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxCollectionBase;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getEntries()Ljava/util/ArrayList;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "entries"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/box/boxjavalibv2/dao/BoxTypedObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    const-string v0, "entries"

    invoke-super {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxObject;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method
