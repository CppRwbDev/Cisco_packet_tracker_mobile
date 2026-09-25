.class public Lcom/box/boxjavalibv2/dao/BoxFolder;
.super Lcom/box/boxjavalibv2/dao/BoxItem;
.source "BoxFolder.java"


# static fields
.field public static final FIELD_FOLDER_UPLOAD_EMAIL:Ljava/lang/String; = "folder_upload_email"

.field public static final FIELD_HAS_COLLABORATIONS:Ljava/lang/String; = "has_collaborations"

.field public static final FIELD_ITEM_COLLECTION:Ljava/lang/String; = "item_collection"

.field public static final FIELD_SYNC_STATE:Ljava/lang/String; = "sync_state"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxItem;-><init>()V

    .line 21
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FOLDER:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxFolder;->setType(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/BoxFolder;)V
    .registers 2
    .param p1, "obj"    # Lcom/box/boxjavalibv2/dao/BoxFolder;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxItem;-><init>(Lcom/box/boxjavalibv2/dao/BoxItem;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V
    .registers 2
    .param p1, "in"    # Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxItem;-><init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V

    .line 131
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
    .line 39
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxItem;-><init>(Ljava/util/Map;)V

    .line 40
    return-void
.end method

.method private setSyncState(Ljava/lang/String;)V
    .registers 3
    .param p1, "syncState"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "sync_state"
    .end annotation

    .prologue
    .line 126
    const-string v0, "sync_state"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxFolder;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    return-void
.end method


# virtual methods
.method public getFolderUploadEmail()Lcom/box/boxjavalibv2/dao/BoxEmail;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "folder_upload_email"
    .end annotation

    .prologue
    .line 49
    const-string v0, "folder_upload_email"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxFolder;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxEmail;

    return-object v0
.end method

.method public getItemCollection()Lcom/box/boxjavalibv2/dao/BoxCollection;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "item_collection"
    .end annotation

    .prologue
    .line 69
    const-string v0, "item_collection"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxFolder;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxCollection;

    return-object v0
.end method

.method public getSyncState()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "sync_state"
    .end annotation

    .prologue
    .line 116
    const-string v0, "sync_state"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxFolder;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasCollaborations()Ljava/lang/Boolean;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "has_collaborations"
    .end annotation

    .prologue
    .line 90
    const-string v0, "has_collaborations"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxFolder;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public hasCollaborations(Z)Z
    .registers 3
    .param p1, "defaultValue"    # Z

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxFolder;->hasCollaborations()Ljava/lang/Boolean;

    move-result-object v0

    .line 95
    .local v0, "hasCollabs":Ljava/lang/Boolean;
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .end local p1    # "defaultValue":Z
    :cond_a
    return p1
.end method

.method protected setFolderUploadEmail(Lcom/box/boxjavalibv2/dao/BoxEmail;)V
    .registers 3
    .param p1, "folderUploadEmail"    # Lcom/box/boxjavalibv2/dao/BoxEmail;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "folder_upload_email"
    .end annotation

    .prologue
    .line 59
    const-string v0, "folder_upload_email"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxFolder;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method protected setHasCollaborations(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "hasCollaborations"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "has_collaborations"
    .end annotation

    .prologue
    .line 106
    const-string v0, "has_collaborations"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxFolder;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method protected setItemCollection(Lcom/box/boxjavalibv2/dao/BoxCollection;)V
    .registers 3
    .param p1, "itemCollection"    # Lcom/box/boxjavalibv2/dao/BoxCollection;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "item_collection"
    .end annotation

    .prologue
    .line 80
    const-string v0, "item_collection"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxFolder;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    return-void
.end method
