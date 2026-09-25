.class public Lcom/box/boxjavalibv2/dao/BoxOAuthToken;
.super Lcom/box/boxjavalibv2/dao/BoxObject;
.source "BoxOAuthToken.java"

# interfaces
.implements Lcom/box/boxjavalibv2/dao/IAuthData;


# static fields
.field public static final FIELD_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final FIELD_EXPIRES_IN:Ljava/lang/String; = "expires_in"

.field public static final FIELD_REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"

.field public static final FIELD_TOKEN_TYPE:Ljava/lang/String; = "token_type"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/BoxOAuthToken;)V
    .registers 2
    .param p1, "obj"    # Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>(Lcom/box/boxjavalibv2/dao/BoxObject;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V
    .registers 2
    .param p1, "in"    # Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V

    .line 109
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
    .line 36
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxObject;-><init>(Ljava/util/Map;)V

    .line 37
    return-void
.end method

.method private setAccessToken(Ljava/lang/String;)V
    .registers 3
    .param p1, "accessToken"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "access_token"
    .end annotation

    .prologue
    .line 53
    const-string v0, "access_token"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxOAuthToken;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method private setExpiresIn(Ljava/lang/Integer;)V
    .registers 3
    .param p1, "expiresIn"    # Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "expires_in"
    .end annotation

    .prologue
    .line 70
    const-string v0, "expires_in"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxOAuthToken;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method private setRefreshToken(Ljava/lang/String;)V
    .registers 3
    .param p1, "refreshToken"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "refresh_token"
    .end annotation

    .prologue
    .line 104
    const-string v0, "refresh_token"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxOAuthToken;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method private setTokenType(Ljava/lang/String;)V
    .registers 3
    .param p1, "tokenType"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "token_type"
    .end annotation

    .prologue
    .line 87
    const-string v0, "token_type"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxOAuthToken;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "access_token"
    .end annotation

    .prologue
    .line 44
    const-string v0, "access_token"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxOAuthToken;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresIn()Ljava/lang/Integer;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "expires_in"
    .end annotation

    .prologue
    .line 61
    const-string v0, "expires_in"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxOAuthToken;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "refresh_token"
    .end annotation

    .prologue
    .line 95
    const-string v0, "refresh_token"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxOAuthToken;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTokenType()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "token_type"
    .end annotation

    .prologue
    .line 78
    const-string v0, "token_type"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxOAuthToken;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
