.class public final enum Lcom/box/boxjavalibv2/events/OAuthEvent;
.super Ljava/lang/Enum;
.source "OAuthEvent.java"

# interfaces
.implements Lcom/box/boxjavalibv2/authorization/IAuthEvent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/box/boxjavalibv2/events/OAuthEvent;",
        ">;",
        "Lcom/box/boxjavalibv2/authorization/IAuthEvent;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/box/boxjavalibv2/events/OAuthEvent;

.field public static final enum AUTH_REQUEST_RECEIVED:Lcom/box/boxjavalibv2/events/OAuthEvent;

.field public static final enum OAUTH_CODE_RECEIVED:Lcom/box/boxjavalibv2/events/OAuthEvent;

.field public static final enum OAUTH_CREATED:Lcom/box/boxjavalibv2/events/OAuthEvent;

.field public static final enum PAGE_FINISHED:Lcom/box/boxjavalibv2/events/OAuthEvent;

.field public static final enum PAGE_STARTED:Lcom/box/boxjavalibv2/events/OAuthEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/box/boxjavalibv2/events/OAuthEvent;

    const-string v1, "PAGE_STARTED"

    invoke-direct {v0, v1, v2}, Lcom/box/boxjavalibv2/events/OAuthEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/box/boxjavalibv2/events/OAuthEvent;->PAGE_STARTED:Lcom/box/boxjavalibv2/events/OAuthEvent;

    .line 12
    new-instance v0, Lcom/box/boxjavalibv2/events/OAuthEvent;

    const-string v1, "PAGE_FINISHED"

    invoke-direct {v0, v1, v3}, Lcom/box/boxjavalibv2/events/OAuthEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/box/boxjavalibv2/events/OAuthEvent;->PAGE_FINISHED:Lcom/box/boxjavalibv2/events/OAuthEvent;

    .line 14
    new-instance v0, Lcom/box/boxjavalibv2/events/OAuthEvent;

    const-string v1, "OAUTH_CODE_RECEIVED"

    invoke-direct {v0, v1, v4}, Lcom/box/boxjavalibv2/events/OAuthEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/box/boxjavalibv2/events/OAuthEvent;->OAUTH_CODE_RECEIVED:Lcom/box/boxjavalibv2/events/OAuthEvent;

    .line 16
    new-instance v0, Lcom/box/boxjavalibv2/events/OAuthEvent;

    const-string v1, "AUTH_REQUEST_RECEIVED"

    invoke-direct {v0, v1, v5}, Lcom/box/boxjavalibv2/events/OAuthEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/box/boxjavalibv2/events/OAuthEvent;->AUTH_REQUEST_RECEIVED:Lcom/box/boxjavalibv2/events/OAuthEvent;

    .line 18
    new-instance v0, Lcom/box/boxjavalibv2/events/OAuthEvent;

    const-string v1, "OAUTH_CREATED"

    invoke-direct {v0, v1, v6}, Lcom/box/boxjavalibv2/events/OAuthEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/box/boxjavalibv2/events/OAuthEvent;->OAUTH_CREATED:Lcom/box/boxjavalibv2/events/OAuthEvent;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/box/boxjavalibv2/events/OAuthEvent;

    sget-object v1, Lcom/box/boxjavalibv2/events/OAuthEvent;->PAGE_STARTED:Lcom/box/boxjavalibv2/events/OAuthEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/box/boxjavalibv2/events/OAuthEvent;->PAGE_FINISHED:Lcom/box/boxjavalibv2/events/OAuthEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/box/boxjavalibv2/events/OAuthEvent;->OAUTH_CODE_RECEIVED:Lcom/box/boxjavalibv2/events/OAuthEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/box/boxjavalibv2/events/OAuthEvent;->AUTH_REQUEST_RECEIVED:Lcom/box/boxjavalibv2/events/OAuthEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/box/boxjavalibv2/events/OAuthEvent;->OAUTH_CREATED:Lcom/box/boxjavalibv2/events/OAuthEvent;

    aput-object v1, v0, v6

    sput-object v0, Lcom/box/boxjavalibv2/events/OAuthEvent;->$VALUES:[Lcom/box/boxjavalibv2/events/OAuthEvent;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/box/boxjavalibv2/events/OAuthEvent;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/box/boxjavalibv2/events/OAuthEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/events/OAuthEvent;

    return-object v0
.end method

.method public static values()[Lcom/box/boxjavalibv2/events/OAuthEvent;
    .registers 1

    .prologue
    .line 8
    sget-object v0, Lcom/box/boxjavalibv2/events/OAuthEvent;->$VALUES:[Lcom/box/boxjavalibv2/events/OAuthEvent;

    invoke-virtual {v0}, [Lcom/box/boxjavalibv2/events/OAuthEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/box/boxjavalibv2/events/OAuthEvent;

    return-object v0
.end method
