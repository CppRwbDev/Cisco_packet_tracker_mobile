.class public Lcom/box/boxjavalibv2/dao/BoxEvent;
.super Lcom/box/boxjavalibv2/dao/BoxItem;
.source "BoxEvent.java"


# static fields
.field public static final EVENT_TYPE_ADD_LOGIN_ACTIVITY_DEVICE:Ljava/lang/String; = "ADD_LOGIN_ACTIVITY_DEVICE"

.field public static final EVENT_TYPE_COLLAB_ADD_COLLABORATOR:Ljava/lang/String; = "COLLAB_ADD_COLLABORATOR"

.field public static final EVENT_TYPE_COLLAB_INVITE_COLLABORATOR:Ljava/lang/String; = "COLLAB_INVITE_COLLABORATOR"

.field public static final EVENT_TYPE_COMMENT_CREATE:Ljava/lang/String; = "COMMENT_CREATE"

.field public static final EVENT_TYPE_ITEM_COPY:Ljava/lang/String; = "ITEM_COPY"

.field public static final EVENT_TYPE_ITEM_CREATE:Ljava/lang/String; = "ITEM_CREATE"

.field public static final EVENT_TYPE_ITEM_DOWNLOAD:Ljava/lang/String; = "ITEM_DOWNLOAD"

.field public static final EVENT_TYPE_ITEM_MOVE:Ljava/lang/String; = "ITEM_MOVE"

.field public static final EVENT_TYPE_ITEM_PREVIEW:Ljava/lang/String; = "ITEM_PREVIEW"

.field public static final EVENT_TYPE_ITEM_RENAME:Ljava/lang/String; = "ITEM_RENAME"

.field public static final EVENT_TYPE_ITEM_SHARED:Ljava/lang/String; = "ITEM_SHARED"

.field public static final EVENT_TYPE_ITEM_SHARED_CREATE:Ljava/lang/String; = "ITEM_SHARED_CREATE"

.field public static final EVENT_TYPE_ITEM_SHARED_UNSHARE:Ljava/lang/String; = "ITEM_SHARED_UNSHARE"

.field public static final EVENT_TYPE_ITEM_SYNC:Ljava/lang/String; = "ITEM_SYNC"

.field public static final EVENT_TYPE_ITEM_TRASH:Ljava/lang/String; = "ITEM_TRASH"

.field public static final EVENT_TYPE_ITEM_UNDELETE_VIA_TRASH:Ljava/lang/String; = "ITEM_UNDELETE_VIA_TRASH"

.field public static final EVENT_TYPE_ITEM_UNSYNC:Ljava/lang/String; = "ITEM_UNSYNC"

.field public static final EVENT_TYPE_ITEM_UPLOAD:Ljava/lang/String; = "ITEM_UPLOAD"

.field public static final EVENT_TYPE_LOCK_CREATE:Ljava/lang/String; = "LOCK_CREATE"

.field public static final EVENT_TYPE_LOCK_DESTROY:Ljava/lang/String; = "LOCK_DESTROY"

.field public static final EVENT_TYPE_TAG_ITEM_CREATE:Ljava/lang/String; = "TAG_ITEM_CREATE"

.field public static final EVENT_TYPE_TASK_ASSIGNMENT_CREATE:Ljava/lang/String; = "TASK_ASSIGNMENT_CREATE"

.field public static final FIELD_EVENT_ID:Ljava/lang/String; = "event_id"

.field public static final FIELD_EVENT_TYPE:Ljava/lang/String; = "event_type"

.field public static final FIELD_SOURCE:Ljava/lang/String; = "source"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxItem;-><init>()V

    .line 42
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;->EVENT:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxEvent;->setType(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/BoxEvent;)V
    .registers 2
    .param p1, "obj"    # Lcom/box/boxjavalibv2/dao/BoxEvent;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxItem;-><init>(Lcom/box/boxjavalibv2/dao/BoxItem;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V
    .registers 2
    .param p1, "in"    # Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxItem;-><init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V

    .line 134
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
    .line 60
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxItem;-><init>(Ljava/util/Map;)V

    .line 61
    return-void
.end method

.method private setEventType(Ljava/lang/String;)V
    .registers 3
    .param p1, "eventType"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "event_type"
    .end annotation

    .prologue
    .line 103
    const-string v0, "event_type"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxEvent;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method private setId(Ljava/lang/String;)V
    .registers 3
    .param p1, "eventId"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "event_id"
    .end annotation

    .prologue
    .line 82
    const-string v0, "event_id"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxEvent;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method private setSource(Lcom/box/boxjavalibv2/dao/BoxTypedObject;)V
    .registers 3
    .param p1, "sourceItem"    # Lcom/box/boxjavalibv2/dao/BoxTypedObject;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "source"
    .end annotation

    .prologue
    .line 124
    const-string v0, "source"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxEvent;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    return-void
.end method


# virtual methods
.method public getEventType()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "event_type"
    .end annotation

    .prologue
    .line 92
    const-string v0, "event_type"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxEvent;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "event_id"
    .end annotation

    .prologue
    .line 71
    const-string v0, "event_id"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxEvent;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Lcom/box/boxjavalibv2/dao/BoxTypedObject;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "source"
    .end annotation

    .prologue
    .line 113
    const-string v0, "source"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxEvent;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxTypedObject;

    return-object v0
.end method
