.class public Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;
.super Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;
.source "BoxSharedLinkRequestEntity.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "accessLevel"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;->setAccess(Ljava/lang/String;)Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;

    .line 22
    return-void
.end method

.method private setPermissions(Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkPermissionsRequestEntity;)V
    .registers 3
    .param p1, "permissionsEntity"    # Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkPermissionsRequestEntity;

    .prologue
    .line 56
    const-string v0, "permissions"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method


# virtual methods
.method public setAccess(Ljava/lang/String;)Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;
    .registers 3
    .param p1, "accessLevel"    # Ljava/lang/String;

    .prologue
    .line 32
    const-string v0, "access"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-object p0
.end method

.method public setPermissions(Z)V
    .registers 4
    .param p1, "canDownload"    # Z

    .prologue
    .line 66
    new-instance v0, Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkPermissionsRequestEntity;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkPermissionsRequestEntity;-><init>()V

    .line 67
    .local v0, "perm":Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkPermissionsRequestEntity;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkPermissionsRequestEntity;->setCanDownload(Ljava/lang/Boolean;)V

    .line 68
    invoke-direct {p0, v0}, Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;->setPermissions(Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkPermissionsRequestEntity;)V

    .line 69
    return-void
.end method

.method public setUnshared_at(Ljava/util/Date;)V
    .registers 4
    .param p1, "unsharedAt"    # Ljava/util/Date;

    .prologue
    .line 44
    if-eqz p1, :cond_c

    invoke-static {p1}, Lcom/box/boxjavalibv2/utils/ISO8601DateParser;->toString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "date":Ljava/lang/String;
    :goto_6
    const-string v1, "unshared_at"

    invoke-virtual {p0, v1, v0}, Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkRequestEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void

    .line 44
    .end local v0    # "date":Ljava/lang/String;
    :cond_c
    const/4 v0, 0x0

    goto :goto_6
.end method
