.class public Lcom/box/boxjavalibv2/dao/BoxSharedLinkPermissions;
.super Lcom/box/boxjavalibv2/dao/BoxObject;
.source "BoxSharedLinkPermissions.java"


# static fields
.field public static final FIELD_CAN_DOWNLOAD:Ljava/lang/String; = "can_download"

.field public static final FIELD_CAN_PREVIEW:Ljava/lang/String; = "can_preview"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/BoxSharedLinkPermissions;)V
    .registers 2
    .param p1, "obj"    # Lcom/box/boxjavalibv2/dao/BoxSharedLinkPermissions;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>(Lcom/box/boxjavalibv2/dao/BoxObject;)V

    .line 31
    return-void
.end method

.method protected constructor <init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V
    .registers 2
    .param p1, "parcel"    # Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V

    .line 92
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
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>(Ljava/util/Map;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "canDownload"    # Z

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>()V

    .line 49
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxSharedLinkPermissions;->setCan_download(Ljava/lang/Boolean;)V

    .line 50
    return-void
.end method

.method private setCanPreview(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "canPreview"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "can_preview"
    .end annotation

    .prologue
    .line 87
    const-string v0, "can_preview"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxSharedLinkPermissions;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    return-void
.end method


# virtual methods
.method public canPreview()Ljava/lang/Boolean;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "can_preview"
    .end annotation

    .prologue
    .line 77
    const-string v0, "can_preview"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxSharedLinkPermissions;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public isCan_download()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 58
    const-string v0, "can_download"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxSharedLinkPermissions;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method protected setCan_download(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "canDownload"    # Ljava/lang/Boolean;

    .prologue
    .line 67
    const-string v0, "can_download"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxSharedLinkPermissions;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    return-void
.end method
