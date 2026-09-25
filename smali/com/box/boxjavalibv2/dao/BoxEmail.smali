.class public Lcom/box/boxjavalibv2/dao/BoxEmail;
.super Lcom/box/boxjavalibv2/dao/BoxObject;
.source "BoxEmail.java"


# static fields
.field public static final FIELD_ACCESS:Ljava/lang/String; = "access"

.field public static final FIELD_EMAIL:Ljava/lang/String; = "email"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/BoxEmail;)V
    .registers 2
    .param p1, "obj"    # Lcom/box/boxjavalibv2/dao/BoxEmail;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>(Lcom/box/boxjavalibv2/dao/BoxObject;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V
    .registers 2
    .param p1, "in"    # Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V

    .line 62
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
    .line 23
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>(Ljava/util/Map;)V

    .line 24
    return-void
.end method

.method private setAccess(Ljava/lang/String;)V
    .registers 3
    .param p1, "access"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "access"
    .end annotation

    .prologue
    .line 40
    const-string v0, "access"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxEmail;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method private setEmail(Ljava/lang/String;)V
    .registers 3
    .param p1, "email"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "email"
    .end annotation

    .prologue
    .line 57
    const-string v0, "email"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxEmail;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    return-void
.end method


# virtual methods
.method public getAccess()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "access"
    .end annotation

    .prologue
    .line 31
    const-string v0, "access"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxEmail;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "email"
    .end annotation

    .prologue
    .line 48
    const-string v0, "email"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxEmail;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
