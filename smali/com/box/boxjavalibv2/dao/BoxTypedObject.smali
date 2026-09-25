.class public Lcom/box/boxjavalibv2/dao/BoxTypedObject;
.super Lcom/box/boxjavalibv2/dao/BoxObject;
.source "BoxTypedObject.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonTypeInfo;
    defaultImpl = Lcom/box/boxjavalibv2/dao/BoxTypedObject;
    include = .enum Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
    property = "type"
    use = .enum Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->NAME:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
.end annotation


# static fields
.field public static final FIELD_CREATED_AT:Ljava/lang/String; = "created_at"

.field public static final FIELD_ID:Ljava/lang/String; = "id"

.field public static final FIELD_MODIFIED_AT:Ljava/lang/String; = "modified_at"

.field public static final FIELD_TYPE:Ljava/lang/String; = "type"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/BoxTypedObject;)V
    .registers 2
    .param p1, "obj"    # Lcom/box/boxjavalibv2/dao/BoxTypedObject;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>(Lcom/box/boxjavalibv2/dao/BoxObject;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V
    .registers 2
    .param p1, "in"    # Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V

    .line 160
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
    .line 40
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>(Ljava/util/Map;)V

    .line 41
    return-void
.end method

.method private setCreatedAt(Ljava/lang/String;)V
    .registers 3
    .param p1, "createdAt"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created_at"
    .end annotation

    .prologue
    .line 124
    const-string v0, "created_at"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method private setId(Ljava/lang/String;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 93
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method private setModifiedAt(Ljava/lang/String;)V
    .registers 3
    .param p1, "modifiedAt"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "modified_at"
    .end annotation

    .prologue
    .line 155
    const-string v0, "modified_at"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    return-void
.end method


# virtual methods
.method public dateCreatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;->getCreatedAt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/box/boxjavalibv2/utils/ISO8601DateParser;->parseSilently(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public dateModifiedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;->getModifiedAt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/box/boxjavalibv2/utils/ISO8601DateParser;->parseSilently(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created_at"
    .end annotation

    .prologue
    .line 104
    const-string v0, "created_at"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;->getValue(Ljava/lang/String;)Ljava/lang/Object;

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
    .line 82
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedAt()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "modified_at"
    .end annotation

    .prologue
    .line 135
    const-string v0, "modified_at"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "type"
    .end annotation

    .prologue
    .line 61
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public resourceType()Lcom/box/boxjavalibv2/dao/BoxResourceType;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->getTypeFromLowercaseString(Ljava/lang/String;)Lcom/box/boxjavalibv2/dao/BoxResourceType;

    move-result-object v0

    return-object v0
.end method

.method public setType(Ljava/lang/String;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "type"
    .end annotation

    .prologue
    .line 72
    const-string v0, "type"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    return-void
.end method
