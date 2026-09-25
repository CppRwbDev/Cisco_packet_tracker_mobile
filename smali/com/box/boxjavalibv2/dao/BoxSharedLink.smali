.class public Lcom/box/boxjavalibv2/dao/BoxSharedLink;
.super Lcom/box/boxjavalibv2/dao/BoxObject;
.source "BoxSharedLink.java"


# static fields
.field public static final FIELD_ACCESS:Ljava/lang/String; = "access"

.field public static final FIELD_DOWNLOAD_COUNT:Ljava/lang/String; = "download_count"

.field public static final FIELD_DOWNLOAD_URL:Ljava/lang/String; = "download_url"

.field public static final FIELD_EFFECTIVE_ACCESS:Ljava/lang/String; = "effective_access"

.field public static final FIELD_IS_PASSWORD_ENABLED:Ljava/lang/String; = "is_password_enabled"

.field public static final FIELD_PERMISSIONS:Ljava/lang/String; = "permissions"

.field public static final FIELD_PREVIEW_COUNT:Ljava/lang/String; = "preview_count"

.field public static final FIELD_UNSHARED_AT:Ljava/lang/String; = "unshared_at"

.field public static final FIELD_URL:Ljava/lang/String; = "url"

.field public static final FIELD_VANITY_URL:Ljava/lang/String; = "vanity_url"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/BoxSharedLink;)V
    .registers 2
    .param p1, "obj"    # Lcom/box/boxjavalibv2/dao/BoxSharedLink;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>(Lcom/box/boxjavalibv2/dao/BoxObject;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V
    .registers 2
    .param p1, "in"    # Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V

    .line 258
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
    .line 42
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>(Ljava/util/Map;)V

    .line 43
    return-void
.end method

.method private setAccess(Ljava/lang/String;)V
    .registers 3
    .param p1, "accessLevel"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "access"
    .end annotation

    .prologue
    .line 190
    const-string v0, "access"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxSharedLink;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    return-void
.end method

.method private setDownloadCount(Ljava/lang/Integer;)V
    .registers 3
    .param p1, "downloadCount"    # Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "download_count"
    .end annotation

    .prologue
    .line 126
    const-string v0, "download_count"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxSharedLink;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method private setDownloadUrl(Ljava/lang/String;)V
    .registers 3
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "download_url"
    .end annotation

    .prologue
    .line 84
    const-string v0, "download_url"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxSharedLink;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method private setEffectiveAccess(Ljava/lang/String;)V
    .registers 3
    .param p1, "accessLevel"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "effective_access"
    .end annotation

    .prologue
    .line 219
    const-string v0, "effective_access"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxSharedLink;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    return-void
.end method

.method private setPasswordEnabled(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "passwordEnabled"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_password_enabled"
    .end annotation

    .prologue
    .line 105
    const-string v0, "is_password_enabled"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxSharedLink;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method private setPermissions(Lcom/box/boxjavalibv2/dao/BoxSharedLinkPermissions;)V
    .registers 3
    .param p1, "permissionsEntity"    # Lcom/box/boxjavalibv2/dao/BoxSharedLinkPermissions;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "permissions"
    .end annotation

    .prologue
    .line 253
    const-string v0, "permissions"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxSharedLink;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 254
    return-void
.end method

.method private setPreviewCount(Ljava/lang/Integer;)V
    .registers 3
    .param p1, "previewCount"    # Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "preview_count"
    .end annotation

    .prologue
    .line 169
    const-string v0, "preview_count"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxSharedLink;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    return-void
.end method

.method private setUnsharedAt(Ljava/lang/String;)V
    .registers 3
    .param p1, "unsharedAt"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "unshared_at"
    .end annotation

    .prologue
    .line 148
    const-string v0, "unshared_at"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxSharedLink;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method private setUrl(Ljava/lang/String;)V
    .registers 3
    .param p1, "theUrl"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "url"
    .end annotation

    .prologue
    .line 63
    const-string v0, "url"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxSharedLink;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method private setVanityUrl(Ljava/lang/String;)V
    .registers 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "vanity_url"
    .end annotation

    .prologue
    .line 231
    const-string v0, "vanity_url"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxSharedLink;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 233
    return-void
.end method


# virtual methods
.method public getAccess()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "access"
    .end annotation

    .prologue
    .line 179
    const-string v0, "access"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxSharedLink;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadCount()Ljava/lang/Integer;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "download_count"
    .end annotation

    .prologue
    .line 115
    const-string v0, "download_count"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxSharedLink;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "download_url"
    .end annotation

    .prologue
    .line 73
    const-string v0, "download_url"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxSharedLink;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEffectiveAccess()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "effective_access"
    .end annotation

    .prologue
    .line 210
    const-string v0, "effective_access"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxSharedLink;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()Lcom/box/boxjavalibv2/dao/BoxSharedLinkPermissions;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "permissions"
    .end annotation

    .prologue
    .line 242
    const-string v0, "permissions"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxSharedLink;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxSharedLinkPermissions;

    return-object v0
.end method

.method public getPreviewCount()Ljava/lang/Integer;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "preview_count"
    .end annotation

    .prologue
    .line 158
    const-string v0, "preview_count"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxSharedLink;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getUnsharedAt()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "unshared_at"
    .end annotation

    .prologue
    .line 137
    const-string v0, "unshared_at"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxSharedLink;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "url"
    .end annotation

    .prologue
    .line 52
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxSharedLink;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVanityUrl()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "vanity_url"
    .end annotation

    .prologue
    .line 200
    const-string v0, "vanity_url"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxSharedLink;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isPasswordEnabled()Ljava/lang/Boolean;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_password_enabled"
    .end annotation

    .prologue
    .line 94
    const-string v0, "is_password_enabled"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxSharedLink;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method
