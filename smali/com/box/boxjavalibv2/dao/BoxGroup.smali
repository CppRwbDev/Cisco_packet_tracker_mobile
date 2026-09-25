.class public Lcom/box/boxjavalibv2/dao/BoxGroup;
.super Lcom/box/boxjavalibv2/dao/BoxUserBase;
.source "BoxGroup.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxUserBase;-><init>()V

    .line 16
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;->GROUP:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxGroup;->setType(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/BoxGroup;)V
    .registers 2
    .param p1, "obj"    # Lcom/box/boxjavalibv2/dao/BoxGroup;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxUserBase;-><init>(Lcom/box/boxjavalibv2/dao/BoxUserBase;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V
    .registers 2
    .param p1, "in"    # Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxUserBase;-><init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V

    .line 39
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
    .line 34
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxUserBase;-><init>(Ljava/util/Map;)V

    .line 35
    return-void
.end method
