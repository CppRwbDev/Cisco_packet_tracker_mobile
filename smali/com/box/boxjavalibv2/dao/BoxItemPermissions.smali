.class public Lcom/box/boxjavalibv2/dao/BoxItemPermissions;
.super Lcom/box/boxjavalibv2/dao/BoxObject;
.source "BoxItemPermissions.java"


# static fields
.field public static final FIELD_CAN_COMMENT:Ljava/lang/String; = "can_comment"

.field public static final FIELD_CAN_DELETE:Ljava/lang/String; = "can_delete"

.field public static final FIELD_CAN_DOWNLOAD:Ljava/lang/String; = "can_download"

.field public static final FIELD_CAN_INVITE_COLLABORATOR:Ljava/lang/String; = "can_invite_collaborator"

.field public static final FIELD_CAN_PREVIEW:Ljava/lang/String; = "can_preview"

.field public static final FIELD_CAN_RENAME:Ljava/lang/String; = "can_rename"

.field public static final FIELD_CAN_SET_SHARE_ACCESS:Ljava/lang/String; = "can_set_share_access"

.field public static final FIELD_CAN_SHARE:Ljava/lang/String; = "can_share"

.field public static final FIELD_CAN_UPLOAD:Ljava/lang/String; = "can_upload"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/BoxItemPermissions;)V
    .registers 2
    .param p1, "obj"    # Lcom/box/boxjavalibv2/dao/BoxItemPermissions;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>(Lcom/box/boxjavalibv2/dao/BoxObject;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V
    .registers 2
    .param p1, "in"    # Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V

    .line 42
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
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>(Ljava/util/Map;)V

    .line 38
    return-void
.end method

.method private setCanComment(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "canComment"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "can_comment"
    .end annotation

    .prologue
    .line 136
    const-string v0, "can_comment"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxItemPermissions;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method private setCanDelete(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "canDelete"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "can_delete"
    .end annotation

    .prologue
    .line 106
    const-string v0, "can_delete"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxItemPermissions;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method private setCanDownload(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "canDownload"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "can_download"
    .end annotation

    .prologue
    .line 51
    const-string v0, "can_download"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxItemPermissions;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method private setCanInviteCollaborator(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "canInviteCollaborator"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "can_invite_collaborator"
    .end annotation

    .prologue
    .line 126
    const-string v0, "can_invite_collaborator"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxItemPermissions;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method private setCanPreview(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "canPreview"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "can_preview"
    .end annotation

    .prologue
    .line 66
    const-string v0, "can_preview"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxItemPermissions;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method private setCanRename(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "canrename"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "can_rename"
    .end annotation

    .prologue
    .line 96
    const-string v0, "can_rename"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxItemPermissions;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method private setCanSetShareAccess(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "canSetShareAccess"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "can_set_share_access"
    .end annotation

    .prologue
    .line 116
    const-string v0, "can_set_share_access"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxItemPermissions;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method private setCanShare(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "canshare"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "can_share"
    .end annotation

    .prologue
    .line 86
    const-string v0, "can_share"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxItemPermissions;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method private setCanUpload(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "canUpload"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "can_upload"
    .end annotation

    .prologue
    .line 76
    const-string v0, "can_upload"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxItemPermissions;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    return-void
.end method


# virtual methods
.method public canComment()Ljava/lang/Boolean;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "can_comment"
    .end annotation

    .prologue
    .line 131
    const-string v0, "can_comment"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxItemPermissions;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public canDelete()Ljava/lang/Boolean;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "can_delete"
    .end annotation

    .prologue
    .line 101
    const-string v0, "can_delete"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxItemPermissions;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public canDownload()Ljava/lang/Boolean;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "can_download"
    .end annotation

    .prologue
    .line 46
    const-string v0, "can_download"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxItemPermissions;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public canInviteCollaborator()Ljava/lang/Boolean;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "can_invite_collaborator"
    .end annotation

    .prologue
    .line 121
    const-string v0, "can_invite_collaborator"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxItemPermissions;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public canPreivew()Ljava/lang/Boolean;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxItemPermissions;->canPreview()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public canPreview()Ljava/lang/Boolean;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "can_preview"
    .end annotation

    .prologue
    .line 61
    const-string v0, "can_preview"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxItemPermissions;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public canRename()Ljava/lang/Boolean;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "can_rename"
    .end annotation

    .prologue
    .line 91
    const-string v0, "can_rename"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxItemPermissions;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public canSetShareAccess()Ljava/lang/Boolean;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "can_set_share_access"
    .end annotation

    .prologue
    .line 111
    const-string v0, "can_set_share_access"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxItemPermissions;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public canShare()Ljava/lang/Boolean;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "can_share"
    .end annotation

    .prologue
    .line 81
    const-string v0, "can_share"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxItemPermissions;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public canUpload()Ljava/lang/Boolean;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "can_upload"
    .end annotation

    .prologue
    .line 71
    const-string v0, "can_upload"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxItemPermissions;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method
