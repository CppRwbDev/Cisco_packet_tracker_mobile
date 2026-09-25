.class public Lcom/box/boxjavalibv2/dao/BoxUserBase;
.super Lcom/box/boxjavalibv2/dao/BoxTypedObject;
.source "BoxUserBase.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonTypeInfo;
    defaultImpl = Lcom/box/boxjavalibv2/dao/BoxUserBase;
    include = .enum Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
    property = "type"
    use = .enum Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->NAME:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
.end annotation


# static fields
.field public static final FIELD_NAME:Ljava/lang/String; = "name"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/BoxUserBase;)V
    .registers 2
    .param p1, "obj"    # Lcom/box/boxjavalibv2/dao/BoxUserBase;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>(Lcom/box/boxjavalibv2/dao/BoxTypedObject;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V
    .registers 2
    .param p1, "in"    # Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V

    .line 31
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
    .line 26
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>(Ljava/util/Map;)V

    .line 27
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "name"
    .end annotation

    .prologue
    .line 51
    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxUserBase;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "name"
    .end annotation

    .prologue
    .line 40
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxUserBase;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
