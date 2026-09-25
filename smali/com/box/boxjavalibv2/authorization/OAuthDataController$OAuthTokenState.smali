.class public final enum Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;
.super Ljava/lang/Enum;
.source "OAuthDataController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/box/boxjavalibv2/authorization/OAuthDataController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OAuthTokenState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

.field public static final enum AVAILABLE:Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

.field public static final enum FAIL:Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

.field public static final enum PRE_CREATION:Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

.field public static final enum REFRESHING:Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    const-string v1, "PRE_CREATION"

    invoke-direct {v0, v1, v2}, Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;->PRE_CREATION:Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    new-instance v0, Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    const-string v1, "AVAILABLE"

    invoke-direct {v0, v1, v3}, Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;->AVAILABLE:Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    new-instance v0, Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    const-string v1, "REFRESHING"

    invoke-direct {v0, v1, v4}, Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;->REFRESHING:Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    new-instance v0, Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v5}, Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;->FAIL:Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    sget-object v1, Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;->PRE_CREATION:Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;->AVAILABLE:Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;->REFRESHING:Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;->FAIL:Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;->$VALUES:[Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    return-object v0
.end method

.method public static values()[Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;->$VALUES:[Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    invoke-virtual {v0}, [Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    return-object v0
.end method
