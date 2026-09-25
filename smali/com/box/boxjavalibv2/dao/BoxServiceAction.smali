.class public Lcom/box/boxjavalibv2/dao/BoxServiceAction;
.super Lcom/box/boxjavalibv2/dao/BoxObject;
.source "BoxServiceAction.java"


# static fields
.field public static final FIELD_ID:Ljava/lang/String; = "id"

.field public static final FIELD_NAME:Ljava/lang/String; = "name"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/BoxServiceAction;)V
    .registers 2
    .param p1, "obj"    # Lcom/box/boxjavalibv2/dao/BoxServiceAction;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>(Lcom/box/boxjavalibv2/dao/BoxObject;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V
    .registers 2
    .param p1, "in"    # Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V

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
    .line 33
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>(Ljava/util/Map;)V

    .line 34
    return-void
.end method

.method private setId(Ljava/lang/String;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 54
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxServiceAction;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getCreatedBy()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "name"
    .end annotation

    .prologue
    .line 59
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxServiceAction;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 43
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxServiceAction;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "name"
    .end annotation

    .prologue
    .line 64
    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxServiceAction;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    return-void
.end method
