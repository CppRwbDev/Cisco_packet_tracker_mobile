.class public Lcom/box/boxjavalibv2/dao/BoxEmailAlias;
.super Lcom/box/boxjavalibv2/dao/BoxTypedObject;
.source "BoxEmailAlias.java"


# static fields
.field public static final FIELD_EMAIL:Ljava/lang/String; = "email"

.field public static final FIELD_IS_CONFIRMED:Ljava/lang/String; = "is_confirmed"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>()V

    .line 13
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;->EMAIL_ALIAS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxEmailAlias;->setType(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/BoxEmailAlias;)V
    .registers 2
    .param p1, "obj"    # Lcom/box/boxjavalibv2/dao/BoxEmailAlias;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>(Lcom/box/boxjavalibv2/dao/BoxTypedObject;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V
    .registers 2
    .param p1, "in"    # Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V

    .line 56
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
    .line 31
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>(Ljava/util/Map;)V

    .line 32
    return-void
.end method

.method private setEmail(Ljava/lang/String;)V
    .registers 3
    .param p1, "email"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "email"
    .end annotation

    .prologue
    .line 51
    const-string v0, "email"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxEmailAlias;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method private setIsConfirmed(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "isConfirmed"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_confirmed"
    .end annotation

    .prologue
    .line 41
    const-string v0, "is_confirmed"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxEmailAlias;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "email"
    .end annotation

    .prologue
    .line 46
    const-string v0, "email"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxEmailAlias;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isConfirmed()Ljava/lang/Boolean;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_confirmed"
    .end annotation

    .prologue
    .line 36
    const-string v0, "is_confirmed"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxEmailAlias;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method
