.class public Lcom/box/boxjavalibv2/dao/BoxWebLink;
.super Lcom/box/boxjavalibv2/dao/BoxItem;
.source "BoxWebLink.java"


# static fields
.field public static final FIELD_URL:Ljava/lang/String; = "url"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxItem;-><init>()V

    .line 16
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;->WEB_LINK:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxWebLink;->setType(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/BoxWebLink;)V
    .registers 2
    .param p1, "obj"    # Lcom/box/boxjavalibv2/dao/BoxWebLink;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxItem;-><init>(Lcom/box/boxjavalibv2/dao/BoxItem;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V
    .registers 2
    .param p1, "in"    # Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxItem;-><init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V

    .line 82
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
    .line 49
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxItem;-><init>(Ljava/util/Map;)V

    .line 50
    return-void
.end method

.method private setPermissions(Lcom/box/boxjavalibv2/dao/BoxItemPermissions;)V
    .registers 3
    .param p1, "permissions"    # Lcom/box/boxjavalibv2/dao/BoxItemPermissions;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .prologue
    .line 40
    const-string v0, "permissions"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxWebLink;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method private setUrl(Ljava/lang/String;)V
    .registers 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "url"
    .end annotation

    .prologue
    .line 77
    const-string v0, "url"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxWebLink;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    return-void
.end method


# virtual methods
.method public getPermissions()Lcom/box/boxjavalibv2/dao/BoxItemPermissions;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize()Ljava/lang/Double;
    .registers 5
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "size"
    .end annotation

    .prologue
    .line 55
    invoke-super {p0}, Lcom/box/boxjavalibv2/dao/BoxItem;->getSize()Ljava/lang/Double;

    move-result-object v0

    .line 56
    .local v0, "size":Ljava/lang/Double;
    if-nez v0, :cond_d

    const-wide/16 v2, 0x0

    :goto_8
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_8
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "url"
    .end annotation

    .prologue
    .line 66
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxWebLink;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
