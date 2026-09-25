.class public Lcom/box/boxjavalibv2/dao/BoxGroupMembership;
.super Lcom/box/boxjavalibv2/dao/BoxTypedObject;
.source "BoxGroupMembership.java"


# static fields
.field public static final FIELD_GROUP:Ljava/lang/String; = "group"

.field public static final FIELD_ROLE:Ljava/lang/String; = "role"

.field public static final FIELD_USER:Ljava/lang/String; = "user"

.field public static final ROLE_ADMIN:Ljava/lang/String; = "admin"

.field public static final ROLE_MEMBER:Ljava/lang/String; = "member"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>()V

    .line 17
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;->GROUP_MEMBERSHIP:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxGroupMembership;->setType(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/BoxGroupMembership;)V
    .registers 2
    .param p1, "obj"    # Lcom/box/boxjavalibv2/dao/BoxGroupMembership;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>(Lcom/box/boxjavalibv2/dao/BoxTypedObject;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V
    .registers 2
    .param p1, "in"    # Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V

    .line 30
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
    .line 25
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>(Ljava/util/Map;)V

    .line 26
    return-void
.end method

.method private setGroup(Lcom/box/boxjavalibv2/dao/BoxGroup;)V
    .registers 3
    .param p1, "group"    # Lcom/box/boxjavalibv2/dao/BoxGroup;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "group"
    .end annotation

    .prologue
    .line 74
    const-string v0, "group"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxGroupMembership;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method private setRole(Ljava/lang/String;)V
    .registers 3
    .param p1, "role"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "role"
    .end annotation

    .prologue
    .line 42
    const-string v0, "role"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxGroupMembership;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method private setUser(Lcom/box/boxjavalibv2/dao/BoxUser;)V
    .registers 3
    .param p1, "user"    # Lcom/box/boxjavalibv2/dao/BoxUser;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user"
    .end annotation

    .prologue
    .line 58
    const-string v0, "user"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxGroupMembership;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    return-void
.end method


# virtual methods
.method public getGroup()Lcom/box/boxjavalibv2/dao/BoxGroup;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "group"
    .end annotation

    .prologue
    .line 63
    const-string v0, "group"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxGroupMembership;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxGroup;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "role"
    .end annotation

    .prologue
    .line 34
    const-string v0, "role"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxGroupMembership;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/box/boxjavalibv2/dao/BoxUser;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user"
    .end annotation

    .prologue
    .line 47
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxGroupMembership;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxUser;

    return-object v0
.end method
