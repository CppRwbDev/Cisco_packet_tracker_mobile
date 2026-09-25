.class public Lcom/box/boxjavalibv2/dao/BoxServerError;
.super Lcom/box/boxjavalibv2/dao/BoxTypedObject;
.source "BoxServerError.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FIELD_CODE:Ljava/lang/String; = "code"

.field public static final FIELD_HELP_URL:Ljava/lang/String; = "help_url"

.field public static final FIELD_MESSAGE:Ljava/lang/String; = "message"

.field public static final FIELD_REQUEST_ID:Ljava/lang/String; = "request_id"

.field public static final FIELD_STATUS:Ljava/lang/String; = "status"

.field private static final serialVersionUID:J = 0x48dbaf927c853043L


# instance fields
.field private final serializableExtraMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final serializableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>()V

    .line 28
    new-instance v0, Lcom/box/boxjavalibv2/dao/BoxHashMap;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/dao/BoxHashMap;-><init>()V

    iput-object v0, p0, Lcom/box/boxjavalibv2/dao/BoxServerError;->serializableExtraMap:Ljava/util/Map;

    .line 29
    new-instance v0, Lcom/box/boxjavalibv2/dao/BoxHashMap;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/dao/BoxHashMap;-><init>()V

    iput-object v0, p0, Lcom/box/boxjavalibv2/dao/BoxServerError;->serializableMap:Ljava/util/Map;

    .line 32
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ERROR:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxServerError;->setType(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/BoxServerError;)V
    .registers 3
    .param p1, "obj"    # Lcom/box/boxjavalibv2/dao/BoxServerError;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>(Lcom/box/boxjavalibv2/dao/BoxTypedObject;)V

    .line 28
    new-instance v0, Lcom/box/boxjavalibv2/dao/BoxHashMap;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/dao/BoxHashMap;-><init>()V

    iput-object v0, p0, Lcom/box/boxjavalibv2/dao/BoxServerError;->serializableExtraMap:Ljava/util/Map;

    .line 29
    new-instance v0, Lcom/box/boxjavalibv2/dao/BoxHashMap;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/dao/BoxHashMap;-><init>()V

    iput-object v0, p0, Lcom/box/boxjavalibv2/dao/BoxServerError;->serializableMap:Ljava/util/Map;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
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
    .line 50
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>(Ljava/util/Map;)V

    .line 28
    new-instance v0, Lcom/box/boxjavalibv2/dao/BoxHashMap;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/dao/BoxHashMap;-><init>()V

    iput-object v0, p0, Lcom/box/boxjavalibv2/dao/BoxServerError;->serializableExtraMap:Ljava/util/Map;

    .line 29
    new-instance v0, Lcom/box/boxjavalibv2/dao/BoxHashMap;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/dao/BoxHashMap;-><init>()V

    iput-object v0, p0, Lcom/box/boxjavalibv2/dao/BoxServerError;->serializableMap:Ljava/util/Map;

    .line 51
    return-void
.end method


# virtual methods
.method protected extraProperties()Ljava/util/Map;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonAnyGetter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/box/boxjavalibv2/dao/BoxServerError;->serializableExtraMap:Ljava/util/Map;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "code"
    .end annotation

    .prologue
    .line 88
    const-string v0, "code"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxServerError;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHelpUrl()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "help_url"
    .end annotation

    .prologue
    .line 107
    const-string v0, "help_url"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxServerError;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHttpStatusCode()Ljava/lang/Integer;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxServerError;->getStatus()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "message"
    .end annotation

    .prologue
    .line 126
    const-string v0, "message"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxServerError;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "request_id"
    .end annotation

    .prologue
    .line 145
    const-string v0, "request_id"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxServerError;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/Integer;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "status"
    .end annotation

    .prologue
    .line 69
    const-string v0, "status"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxServerError;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method protected properties()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/box/boxjavalibv2/dao/BoxServerError;->serializableMap:Ljava/util/Map;

    return-object v0
.end method

.method protected setCode(Ljava/lang/String;)V
    .registers 3
    .param p1, "code"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "code"
    .end annotation

    .prologue
    .line 99
    const-string v0, "code"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxServerError;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method protected setHelpUrl(Ljava/lang/String;)V
    .registers 3
    .param p1, "helpUrl"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "help_url"
    .end annotation

    .prologue
    .line 118
    const-string v0, "help_url"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxServerError;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method protected setMessage(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "message"
    .end annotation

    .prologue
    .line 137
    const-string v0, "message"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxServerError;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method protected setRequestId(Ljava/lang/String;)V
    .registers 3
    .param p1, "requestId"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "request_id"
    .end annotation

    .prologue
    .line 156
    const-string v0, "request_id"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxServerError;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public setStatus(Ljava/lang/Integer;)V
    .registers 3
    .param p1, "status"    # Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "status"
    .end annotation

    .prologue
    .line 80
    const-string v0, "status"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxServerError;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public writeToParcel(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;I)V
    .registers 5
    .param p1, "parcelWrapper"    # Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;
    .param p2, "flags"    # I

    .prologue
    .line 172
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Writing BoxServerError to parcel is not supported!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
