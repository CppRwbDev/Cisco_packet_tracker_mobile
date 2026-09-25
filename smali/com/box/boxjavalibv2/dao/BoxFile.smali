.class public Lcom/box/boxjavalibv2/dao/BoxFile;
.super Lcom/box/boxjavalibv2/dao/BoxItem;
.source "BoxFile.java"


# static fields
.field public static final FIELD_COMMENT_COUNT:Ljava/lang/String; = "comment_count"

.field public static final FIELD_CONTENT_CREATED_AT:Ljava/lang/String; = "content_created_at"

.field public static final FIELD_CONTENT_MODIFIED_AT:Ljava/lang/String; = "content_modified_at"

.field public static final FIELD_EXTENSION:Ljava/lang/String; = "extension"

.field public static final FIELD_LOCK:Ljava/lang/String; = "lock"

.field public static final FIELD_PURGED_AT:Ljava/lang/String; = "purged_at"

.field public static final FIELD_SHA1:Ljava/lang/String; = "sha1"

.field public static final FIELD_TRASHED_AT:Ljava/lang/String; = "trashed_at"

.field public static final FIELD_VERSION_NUMBER:Ljava/lang/String; = "version_number"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxItem;-><init>()V

    .line 28
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FILE:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxFile;->setType(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/BoxFile;)V
    .registers 2
    .param p1, "obj"    # Lcom/box/boxjavalibv2/dao/BoxFile;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxItem;-><init>(Lcom/box/boxjavalibv2/dao/BoxItem;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V
    .registers 2
    .param p1, "in"    # Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxItem;-><init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V

    .line 232
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
    .line 46
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxItem;-><init>(Ljava/util/Map;)V

    .line 47
    return-void
.end method

.method private setCommentCount(Ljava/lang/Integer;)V
    .registers 3
    .param p1, "commentCount"    # Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "comment_count"
    .end annotation

    .prologue
    .line 147
    const-string v0, "comment_count"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxFile;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method private setContentCreatedAt(Ljava/lang/String;)V
    .registers 3
    .param p1, "createdAt"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "content_created_at"
    .end annotation

    .prologue
    .line 86
    const-string v0, "content_created_at"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxFile;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method private setContentModifiedAt(Ljava/lang/String;)V
    .registers 3
    .param p1, "modifiedAt"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "content_modified_at"
    .end annotation

    .prologue
    .line 105
    const-string v0, "content_modified_at"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxFile;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method private setExtension(Ljava/lang/String;)V
    .registers 3
    .param p1, "extension"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "extension"
    .end annotation

    .prologue
    .line 227
    const-string v0, "extension"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxFile;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    return-void
.end method

.method private setPurgedAt(Ljava/lang/String;)V
    .registers 3
    .param p1, "trashedAt"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "purged_at"
    .end annotation

    .prologue
    .line 176
    const-string v0, "purged_at"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxFile;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    return-void
.end method

.method private setSha1(Ljava/lang/String;)V
    .registers 3
    .param p1, "sha1"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "sha1"
    .end annotation

    .prologue
    .line 67
    const-string v0, "sha1"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxFile;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method private setTrashedAt(Ljava/lang/String;)V
    .registers 3
    .param p1, "trashedAt"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "trashed_at"
    .end annotation

    .prologue
    .line 157
    const-string v0, "trashed_at"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxFile;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method private setVersionNumber(Ljava/lang/String;)V
    .registers 3
    .param p1, "versionNumber"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "version_number"
    .end annotation

    .prologue
    .line 126
    const-string v0, "version_number"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxFile;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    return-void
.end method


# virtual methods
.method public dateContentCreatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxFile;->getContentCreatedAt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/box/boxjavalibv2/utils/ISO8601DateParser;->parseSilently(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public dateContentModifieddAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxFile;->getContentModifiedAt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/box/boxjavalibv2/utils/ISO8601DateParser;->parseSilently(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public datePurgedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxFile;->getPurgedAt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/box/boxjavalibv2/utils/ISO8601DateParser;->parseSilently(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public dateTrashedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxFile;->getTrashedAt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/box/boxjavalibv2/utils/ISO8601DateParser;->parseSilently(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getCommentCount()Ljava/lang/Integer;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "comment_count"
    .end annotation

    .prologue
    .line 136
    const-string v0, "comment_count"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxFile;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getContentCreatedAt()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "content_created_at"
    .end annotation

    .prologue
    .line 72
    const-string v0, "content_created_at"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxFile;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentModifiedAt()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "content_modified_at"
    .end annotation

    .prologue
    .line 91
    const-string v0, "content_modified_at"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxFile;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getExtension()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "extension"
    .end annotation

    .prologue
    .line 216
    const-string v0, "extension"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxFile;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLock()Lcom/box/boxjavalibv2/dao/BoxLock;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "lock"
    .end annotation

    .prologue
    .line 195
    const-string v0, "lock"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxFile;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxLock;

    return-object v0
.end method

.method public getPurgedAt()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "purged_at"
    .end annotation

    .prologue
    .line 171
    const-string v0, "purged_at"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxFile;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSha1()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "sha1"
    .end annotation

    .prologue
    .line 56
    const-string v0, "sha1"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxFile;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTrashedAt()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "trashed_at"
    .end annotation

    .prologue
    .line 152
    const-string v0, "trashed_at"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxFile;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVersionNumber()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "version_number"
    .end annotation

    .prologue
    .line 115
    const-string v0, "version_number"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxFile;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected setLock(Lcom/box/boxjavalibv2/dao/BoxLock;)V
    .registers 3
    .param p1, "lock"    # Lcom/box/boxjavalibv2/dao/BoxLock;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "lock"
    .end annotation

    .prologue
    .line 206
    const-string v0, "lock"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxFile;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    return-void
.end method
