.class public Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkPermissionsRequestEntity;
.super Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;
.source "BoxSharedLinkPermissionsRequestEntity.java"


# static fields
.field public static final FIELD_CAN_DOWNLOAD:Ljava/lang/String; = "can_download"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public canDownload()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 16
    const-string v0, "can_download"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkPermissionsRequestEntity;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method protected setCanDownload(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "canDownload"    # Ljava/lang/Boolean;

    .prologue
    .line 25
    const-string v0, "can_download"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/jsonentities/BoxSharedLinkPermissionsRequestEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method
