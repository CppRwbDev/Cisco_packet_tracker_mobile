.class public Lcom/box/boxjavalibv2/dao/BoxLock;
.super Lcom/box/boxjavalibv2/dao/BoxTypedObject;
.source "BoxLock.java"


# static fields
.field public static final FIELD_CREATED_BY:Ljava/lang/String; = "created_by"

.field public static final FIELD_EXPIRES_AT:Ljava/lang/String; = "expires_at"

.field public static final FIELD_FILE:Ljava/lang/String; = "file"

.field public static final FIELD_IS_DOWNLOAD_PREVENTED:Ljava/lang/String; = "is_download_prevented"

.field public static final FIELD_LOCK_TYPE:Ljava/lang/String; = "lock_type"

.field public static final FIELD_SERVICE_ACTION:Ljava/lang/String; = "service_action"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>()V

    .line 23
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;->LOCK:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxLock;->setType(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/BoxLock;)V
    .registers 2
    .param p1, "obj"    # Lcom/box/boxjavalibv2/dao/BoxLock;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>(Lcom/box/boxjavalibv2/dao/BoxTypedObject;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V
    .registers 2
    .param p1, "in"    # Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V

    .line 106
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
    .line 41
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>(Ljava/util/Map;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getCreatedBy()Lcom/box/boxjavalibv2/dao/BoxUser;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created_by"
    .end annotation

    .prologue
    .line 46
    const-string v0, "created_by"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxLock;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxUser;

    return-object v0
.end method

.method public getExpiresAt()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "expires_at"
    .end annotation

    .prologue
    .line 66
    const-string v0, "expires_at"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxLock;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Lcom/box/boxjavalibv2/dao/BoxItem;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "file"
    .end annotation

    .prologue
    .line 56
    const-string v0, "file"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxLock;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxItem;

    return-object v0
.end method

.method public getLockType()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "lock_type"
    .end annotation

    .prologue
    .line 76
    const-string v0, "lock_type"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxLock;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getServiceAction()Lcom/box/boxjavalibv2/dao/BoxServiceAction;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "service_action"
    .end annotation

    .prologue
    .line 96
    const-string v0, "service_action"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxLock;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxServiceAction;

    return-object v0
.end method

.method public isDownloadPrevented()Ljava/lang/Boolean;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_download_prevented"
    .end annotation

    .prologue
    .line 86
    const-string v0, "is_download_prevented"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxLock;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public setCreatedBy(Lcom/box/boxjavalibv2/dao/BoxUser;)V
    .registers 3
    .param p1, "createdBy"    # Lcom/box/boxjavalibv2/dao/BoxUser;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created_by"
    .end annotation

    .prologue
    .line 51
    const-string v0, "created_by"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxLock;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public setDownloadPrevented(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "lockType"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_download_prevented"
    .end annotation

    .prologue
    .line 91
    const-string v0, "is_download_prevented"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxLock;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public setExpiresAt(Ljava/lang/String;)V
    .registers 3
    .param p1, "expiresAt"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "expires_at"
    .end annotation

    .prologue
    .line 71
    const-string v0, "expires_at"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxLock;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public setFile(Lcom/box/boxjavalibv2/dao/BoxItem;)V
    .registers 3
    .param p1, "file"    # Lcom/box/boxjavalibv2/dao/BoxItem;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "file"
    .end annotation

    .prologue
    .line 61
    const-string v0, "file"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxLock;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public setLockType(Ljava/lang/String;)V
    .registers 3
    .param p1, "lockType"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "lock_type"
    .end annotation

    .prologue
    .line 81
    const-string v0, "lock_type"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxLock;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public setServiceAction(Lcom/box/boxjavalibv2/dao/BoxServiceAction;)V
    .registers 3
    .param p1, "serviceAction"    # Lcom/box/boxjavalibv2/dao/BoxServiceAction;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "service_action"
    .end annotation

    .prologue
    .line 101
    const-string v0, "service_action"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxLock;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    return-void
.end method
