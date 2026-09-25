.class final enum Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;
.super Ljava/lang/Enum;
.source "OAuthWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OAuthAPICallState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;

.field public static final enum FINISHED:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;

.field public static final enum PRE:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;

.field public static final enum STARTED:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 201
    new-instance v0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;

    const-string v1, "PRE"

    invoke-direct {v0, v1, v2}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;->PRE:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;

    new-instance v0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v3}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;->STARTED:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;

    new-instance v0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;->FINISHED:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;

    .line 200
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;

    sget-object v1, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;->PRE:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;->STARTED:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;->FINISHED:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;->$VALUES:[Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;

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
    .line 200
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 200
    const-class v0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;

    return-object v0
.end method

.method public static values()[Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;
    .registers 1

    .prologue
    .line 200
    sget-object v0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;->$VALUES:[Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;

    invoke-virtual {v0}, [Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;

    return-object v0
.end method
