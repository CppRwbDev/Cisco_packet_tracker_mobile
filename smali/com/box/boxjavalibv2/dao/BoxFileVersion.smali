.class public Lcom/box/boxjavalibv2/dao/BoxFileVersion;
.super Lcom/box/boxjavalibv2/dao/BoxTypedObject;
.source "BoxFileVersion.java"


# static fields
.field public static final FIELD_MODIFIED_BY:Ljava/lang/String; = "modified_by"

.field public static final FIELD_NAME:Ljava/lang/String; = "name"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>()V

    .line 19
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FILE_VERSION:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxFileVersion;->setType(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/BoxFileVersion;)V
    .registers 2
    .param p1, "obj"    # Lcom/box/boxjavalibv2/dao/BoxFileVersion;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>(Lcom/box/boxjavalibv2/dao/BoxTypedObject;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V
    .registers 2
    .param p1, "in"    # Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V

    .line 84
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
    .line 37
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>(Ljava/util/Map;)V

    .line 38
    return-void
.end method

.method private setModifiedBy(Lcom/box/boxjavalibv2/dao/BoxUser;)V
    .registers 3
    .param p1, "modifiedBy"    # Lcom/box/boxjavalibv2/dao/BoxUser;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "modified_by"
    .end annotation

    .prologue
    .line 58
    const-string v0, "modified_by"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxFileVersion;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "name"
    .end annotation

    .prologue
    .line 79
    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxFileVersion;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    return-void
.end method


# virtual methods
.method public getModifiedBy()Lcom/box/boxjavalibv2/dao/BoxUser;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "modified_by"
    .end annotation

    .prologue
    .line 47
    const-string v0, "modified_by"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxFileVersion;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxUser;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "name"
    .end annotation

    .prologue
    .line 68
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxFileVersion;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
