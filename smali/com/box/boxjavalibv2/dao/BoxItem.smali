.class public Lcom/box/boxjavalibv2/dao/BoxItem;
.super Lcom/box/boxjavalibv2/dao/BoxTypedObject;
.source "BoxItem.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonTypeInfo;
    defaultImpl = Lcom/box/boxjavalibv2/dao/BoxItem;
    include = .enum Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
    property = "type"
    use = .enum Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->NAME:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
.end annotation


# static fields
.field public static final FIELD_ALLOWED_SHARED_LINK_ACCESS_LEVELS:Ljava/lang/String; = "allowed_shared_link_access_levels"

.field public static final FIELD_CREATED_BY:Ljava/lang/String; = "created_by"

.field public static final FIELD_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final FIELD_ETAG:Ljava/lang/String; = "etag"

.field public static final FIELD_ITEM_STATUS:Ljava/lang/String; = "item_status"

.field public static final FIELD_MODIFIED_BY:Ljava/lang/String; = "modified_by"

.field public static final FIELD_NAME:Ljava/lang/String; = "name"

.field public static final FIELD_OWNED_BY:Ljava/lang/String; = "owned_by"

.field public static final FIELD_PARENT:Ljava/lang/String; = "parent"

.field public static final FIELD_PATH_COLLECTION:Ljava/lang/String; = "path_collection"

.field public static final FIELD_PERMISSIONS:Ljava/lang/String; = "permissions"

.field public static final FIELD_SEQUENCE_ID:Ljava/lang/String; = "sequence_id"

.field public static final FIELD_SHARED_LINK:Ljava/lang/String; = "shared_link"

.field public static final FIELD_SIZE:Ljava/lang/String; = "size"

.field public static final FIELD_TAGS:Ljava/lang/String; = "tags"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/BoxItem;)V
    .registers 2
    .param p1, "obj"    # Lcom/box/boxjavalibv2/dao/BoxItem;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>(Lcom/box/boxjavalibv2/dao/BoxTypedObject;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V
    .registers 2
    .param p1, "in"    # Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V

    .line 352
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
    .line 48
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>(Ljava/util/Map;)V

    .line 49
    return-void
.end method

.method private setAllowedSharedLinkAccessLevels([Ljava/lang/String;)V
    .registers 3
    .param p1, "allowedSharedLinkAccessLevels"    # [Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "allowed_shared_link_access_levels"
    .end annotation

    .prologue
    .line 347
    const-string v0, "allowed_shared_link_access_levels"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxItem;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 348
    return-void
.end method

.method private setCreatedBy(Lcom/box/boxjavalibv2/dao/BoxUser;)V
    .registers 3
    .param p1, "createdBy"    # Lcom/box/boxjavalibv2/dao/BoxUser;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created_by"
    .end annotation

    .prologue
    .line 215
    const-string v0, "created_by"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxItem;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    return-void
.end method

.method private setDescription(Ljava/lang/String;)V
    .registers 3
    .param p1, "description"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "description"
    .end annotation

    .prologue
    .line 153
    const-string v0, "description"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxItem;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    return-void
.end method

.method private setEtag(Ljava/lang/String;)V
    .registers 3
    .param p1, "etag"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "etag"
    .end annotation

    .prologue
    .line 298
    const-string v0, "etag"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxItem;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 299
    return-void
.end method

.method private setItemStatus(Ljava/lang/String;)V
    .registers 3
    .param p1, "itemStatus"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "item_status"
    .end annotation

    .prologue
    .line 319
    const-string v0, "item_status"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxItem;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 320
    return-void
.end method

.method private setModifiedBy(Lcom/box/boxjavalibv2/dao/BoxUser;)V
    .registers 3
    .param p1, "modifiedBy"    # Lcom/box/boxjavalibv2/dao/BoxUser;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "modified_by"
    .end annotation

    .prologue
    .line 235
    const-string v0, "modified_by"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxItem;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 236
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "name"
    .end annotation

    .prologue
    .line 132
    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxItem;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method private setOwnedBy(Lcom/box/boxjavalibv2/dao/BoxUser;)V
    .registers 3
    .param p1, "ownedBy"    # Lcom/box/boxjavalibv2/dao/BoxUser;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "owned_by"
    .end annotation

    .prologue
    .line 256
    const-string v0, "owned_by"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxItem;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 257
    return-void
.end method

.method private setParent(Lcom/box/boxjavalibv2/dao/BoxFolder;)V
    .registers 3
    .param p1, "parent"    # Lcom/box/boxjavalibv2/dao/BoxFolder;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "parent"
    .end annotation

    .prologue
    .line 277
    const-string v0, "parent"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxItem;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    return-void
.end method

.method private setPathCollection(Lcom/box/boxjavalibv2/dao/BoxCollection;)V
    .registers 3
    .param p1, "pathCollection"    # Lcom/box/boxjavalibv2/dao/BoxCollection;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "path_collection"
    .end annotation

    .prologue
    .line 69
    const-string v0, "path_collection"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxItem;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method private setPermissions(Lcom/box/boxjavalibv2/dao/BoxItemPermissions;)V
    .registers 3
    .param p1, "permissions"    # Lcom/box/boxjavalibv2/dao/BoxItemPermissions;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "permissions"
    .end annotation

    .prologue
    .line 339
    const-string v0, "permissions"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxItem;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    return-void
.end method

.method private setSequenceId(Ljava/lang/String;)V
    .registers 3
    .param p1, "sequenceId"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "sequence_id"
    .end annotation

    .prologue
    .line 111
    const-string v0, "sequence_id"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxItem;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method private setSharedLink(Lcom/box/boxjavalibv2/dao/BoxSharedLink;)V
    .registers 3
    .param p1, "sharedLink"    # Lcom/box/boxjavalibv2/dao/BoxSharedLink;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "shared_link"
    .end annotation

    .prologue
    .line 194
    const-string v0, "shared_link"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxItem;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    return-void
.end method

.method private setSize(Ljava/lang/Double;)V
    .registers 3
    .param p1, "size"    # Ljava/lang/Double;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "size"
    .end annotation

    .prologue
    .line 173
    const-string v0, "size"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxItem;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    return-void
.end method

.method private setTags([Ljava/lang/String;)V
    .registers 3
    .param p1, "tags"    # [Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "tags"
    .end annotation

    .prologue
    .line 90
    const-string v0, "tags"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxItem;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    return-void
.end method


# virtual methods
.method public getAllowedSharedLinkAccessLevels()[Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "allowed_shared_link_access_levels"
    .end annotation

    .prologue
    .line 329
    const-string v0, "allowed_shared_link_access_levels"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxItem;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedBy()Lcom/box/boxjavalibv2/dao/BoxUser;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created_by"
    .end annotation

    .prologue
    .line 204
    const-string v0, "created_by"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxItem;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxUser;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "description"
    .end annotation

    .prologue
    .line 142
    const-string v0, "description"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxItem;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "etag"
    .end annotation

    .prologue
    .line 287
    const-string v0, "etag"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxItem;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemStatus()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "item_status"
    .end annotation

    .prologue
    .line 308
    const-string v0, "item_status"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxItem;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedBy()Lcom/box/boxjavalibv2/dao/BoxUser;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "modified_by"
    .end annotation

    .prologue
    .line 225
    const-string v0, "modified_by"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxItem;->getValue(Ljava/lang/String;)Ljava/lang/Object;

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
    .line 121
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxItem;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOwnedBy()Lcom/box/boxjavalibv2/dao/BoxUser;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "owned_by"
    .end annotation

    .prologue
    .line 245
    const-string v0, "owned_by"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxItem;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxUser;

    return-object v0
.end method

.method public getParent()Lcom/box/boxjavalibv2/dao/BoxFolder;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "parent"
    .end annotation

    .prologue
    .line 266
    const-string v0, "parent"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxItem;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxFolder;

    return-object v0
.end method

.method public getPathCollection()Lcom/box/boxjavalibv2/dao/BoxCollection;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "path_collection"
    .end annotation

    .prologue
    .line 58
    const-string v0, "path_collection"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxItem;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxCollection;

    return-object v0
.end method

.method public getPermissions()Lcom/box/boxjavalibv2/dao/BoxItemPermissions;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "permissions"
    .end annotation

    .prologue
    .line 334
    const-string v0, "permissions"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxItem;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxItemPermissions;

    return-object v0
.end method

.method public getSequenceId()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "sequence_id"
    .end annotation

    .prologue
    .line 100
    const-string v0, "sequence_id"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxItem;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSharedLink()Lcom/box/boxjavalibv2/dao/BoxSharedLink;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "shared_link"
    .end annotation

    .prologue
    .line 183
    const-string v0, "shared_link"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxItem;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxSharedLink;

    return-object v0
.end method

.method public getSize()Ljava/lang/Double;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "size"
    .end annotation

    .prologue
    .line 163
    const-string v0, "size"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxItem;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public getTags()[Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "tags"
    .end annotation

    .prologue
    .line 79
    const-string v0, "tags"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxItem;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
