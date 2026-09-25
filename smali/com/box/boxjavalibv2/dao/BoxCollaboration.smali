.class public Lcom/box/boxjavalibv2/dao/BoxCollaboration;
.super Lcom/box/boxjavalibv2/dao/BoxTypedObject;
.source "BoxCollaboration.java"


# static fields
.field public static final FIELD_ACCESSIBLE_BY:Ljava/lang/String; = "accessible_by"

.field public static final FIELD_ACKNOWLEGED_AT:Ljava/lang/String; = "acknowledged_at"

.field public static final FIELD_CREATED_BY:Ljava/lang/String; = "created_by"

.field public static final FIELD_EXPIRES_AT:Ljava/lang/String; = "expires_at"

.field public static final FIELD_FOLDER:Ljava/lang/String; = "item"

.field public static final FIELD_ROLE:Ljava/lang/String; = "role"

.field public static final FIELD_STATUS:Ljava/lang/String; = "status"

.field public static final STATUS_ACCEPTED:Ljava/lang/String; = "accepted"

.field public static final STATUS_PENDING:Ljava/lang/String; = "pending"

.field public static final STATUS_REJECTED:Ljava/lang/String; = "rejected"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>()V

    .line 34
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;->COLLABORATION:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxCollaboration;->setType(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/BoxCollaboration;)V
    .registers 2
    .param p1, "obj"    # Lcom/box/boxjavalibv2/dao/BoxCollaboration;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>(Lcom/box/boxjavalibv2/dao/BoxTypedObject;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V
    .registers 2
    .param p1, "in"    # Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V

    .line 216
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
    .line 52
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>(Ljava/util/Map;)V

    .line 53
    return-void
.end method

.method private setAccessibleBy(Lcom/box/boxjavalibv2/dao/BoxUserBase;)V
    .registers 3
    .param p1, "accessibleBy"    # Lcom/box/boxjavalibv2/dao/BoxUserBase;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "accessible_by"
    .end annotation

    .prologue
    .line 84
    const-string v0, "accessible_by"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxCollaboration;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method private setAcknowledgedAt(Ljava/lang/String;)V
    .registers 3
    .param p1, "acknowledgedAt"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "acknowledged_at"
    .end annotation

    .prologue
    .line 190
    const-string v0, "acknowledged_at"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxCollaboration;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    return-void
.end method

.method private setCreatedBy(Lcom/box/boxjavalibv2/dao/BoxUser;)V
    .registers 3
    .param p1, "createdBy"    # Lcom/box/boxjavalibv2/dao/BoxUser;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created_by"
    .end annotation

    .prologue
    .line 73
    const-string v0, "created_by"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxCollaboration;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method private setExpiresAt(Ljava/lang/String;)V
    .registers 3
    .param p1, "expiresAt"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "expires_at"
    .end annotation

    .prologue
    .line 126
    const-string v0, "expires_at"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxCollaboration;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method private setFolder(Lcom/box/boxjavalibv2/dao/BoxFolder;)V
    .registers 3
    .param p1, "item"    # Lcom/box/boxjavalibv2/dao/BoxFolder;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "item"
    .end annotation

    .prologue
    .line 211
    const-string v0, "item"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxCollaboration;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    return-void
.end method

.method private setRole(Ljava/lang/String;)V
    .registers 3
    .param p1, "role"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "role"
    .end annotation

    .prologue
    .line 168
    const-string v0, "role"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxCollaboration;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method private setStatus(Ljava/lang/String;)V
    .registers 3
    .param p1, "status"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "status"
    .end annotation

    .prologue
    .line 147
    const-string v0, "status"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxCollaboration;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    return-void
.end method


# virtual methods
.method public dateExpiresAt()Ljava/util/Date;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxCollaboration;->getExpiresAt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/box/boxjavalibv2/utils/ISO8601DateParser;->parseSilently(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibleBy()Lcom/box/boxjavalibv2/dao/BoxUserBase;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "accessible_by"
    .end annotation

    .prologue
    .line 94
    const-string v0, "accessible_by"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxCollaboration;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxUserBase;

    return-object v0
.end method

.method public getAcknowledgedAt()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "acknowledged_at"
    .end annotation

    .prologue
    .line 179
    const-string v0, "acknowledged_at"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxCollaboration;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedBy()Lcom/box/boxjavalibv2/dao/BoxUser;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created_by"
    .end annotation

    .prologue
    .line 62
    const-string v0, "created_by"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxCollaboration;->getValue(Ljava/lang/String;)Ljava/lang/Object;

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
    .line 105
    const-string v0, "expires_at"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxCollaboration;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFolder()Lcom/box/boxjavalibv2/dao/BoxFolder;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "item"
    .end annotation

    .prologue
    .line 200
    const-string v0, "item"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxCollaboration;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxFolder;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "role"
    .end annotation

    .prologue
    .line 157
    const-string v0, "role"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxCollaboration;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "status"
    .end annotation

    .prologue
    .line 136
    const-string v0, "status"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxCollaboration;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
