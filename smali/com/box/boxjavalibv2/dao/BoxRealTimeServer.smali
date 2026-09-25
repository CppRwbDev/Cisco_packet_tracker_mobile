.class public Lcom/box/boxjavalibv2/dao/BoxRealTimeServer;
.super Lcom/box/boxjavalibv2/dao/BoxTypedObject;
.source "BoxRealTimeServer.java"


# static fields
.field private static final FIELD_URL:Ljava/lang/String; = "url"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>()V

    .line 15
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;->REALTIME_SERVER:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxRealTimeServer;->setType(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/BoxRealTimeServer;)V
    .registers 2
    .param p1, "obj"    # Lcom/box/boxjavalibv2/dao/BoxRealTimeServer;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>(Lcom/box/boxjavalibv2/dao/BoxTypedObject;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V
    .registers 2
    .param p1, "in"    # Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V

    .line 59
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
    .line 54
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>(Ljava/util/Map;)V

    .line 55
    return-void
.end method

.method private setUrl(Ljava/lang/String;)V
    .registers 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "url"
    .end annotation

    .prologue
    .line 45
    const-string v0, "url"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxRealTimeServer;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "url"
    .end annotation

    .prologue
    .line 34
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxRealTimeServer;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
