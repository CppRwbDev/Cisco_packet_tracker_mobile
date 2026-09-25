.class public final enum Lcom/box/restclientv2/RestMethod;
.super Ljava/lang/Enum;
.source "RestMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/box/restclientv2/RestMethod$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/box/restclientv2/RestMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/box/restclientv2/RestMethod;

.field public static final enum DELETE:Lcom/box/restclientv2/RestMethod;

.field public static final enum GET:Lcom/box/restclientv2/RestMethod;

.field private static final METHOD_DELETE:Ljava/lang/String; = "delete"

.field private static final METHOD_GET:Ljava/lang/String; = "get"

.field private static final METHOD_OPTIONS:Ljava/lang/String; = "options"

.field private static final METHOD_POST:Ljava/lang/String; = "post"

.field private static final METHOD_PUT:Ljava/lang/String; = "put"

.field public static final enum OPTIONS:Lcom/box/restclientv2/RestMethod;

.field public static final enum OTHERS:Lcom/box/restclientv2/RestMethod;

.field public static final enum POST:Lcom/box/restclientv2/RestMethod;

.field public static final enum PUT:Lcom/box/restclientv2/RestMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/box/restclientv2/RestMethod;

    const-string v1, "GET"

    invoke-direct {v0, v1, v3}, Lcom/box/restclientv2/RestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/box/restclientv2/RestMethod;->GET:Lcom/box/restclientv2/RestMethod;

    new-instance v0, Lcom/box/restclientv2/RestMethod;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lcom/box/restclientv2/RestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/box/restclientv2/RestMethod;->PUT:Lcom/box/restclientv2/RestMethod;

    new-instance v0, Lcom/box/restclientv2/RestMethod;

    const-string v1, "POST"

    invoke-direct {v0, v1, v5}, Lcom/box/restclientv2/RestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/box/restclientv2/RestMethod;->POST:Lcom/box/restclientv2/RestMethod;

    new-instance v0, Lcom/box/restclientv2/RestMethod;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v6}, Lcom/box/restclientv2/RestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/box/restclientv2/RestMethod;->DELETE:Lcom/box/restclientv2/RestMethod;

    new-instance v0, Lcom/box/restclientv2/RestMethod;

    const-string v1, "OPTIONS"

    invoke-direct {v0, v1, v7}, Lcom/box/restclientv2/RestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/box/restclientv2/RestMethod;->OPTIONS:Lcom/box/restclientv2/RestMethod;

    new-instance v0, Lcom/box/restclientv2/RestMethod;

    const-string v1, "OTHERS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/box/restclientv2/RestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/box/restclientv2/RestMethod;->OTHERS:Lcom/box/restclientv2/RestMethod;

    .line 6
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/box/restclientv2/RestMethod;

    sget-object v1, Lcom/box/restclientv2/RestMethod;->GET:Lcom/box/restclientv2/RestMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/box/restclientv2/RestMethod;->PUT:Lcom/box/restclientv2/RestMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/box/restclientv2/RestMethod;->POST:Lcom/box/restclientv2/RestMethod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/box/restclientv2/RestMethod;->DELETE:Lcom/box/restclientv2/RestMethod;

    aput-object v1, v0, v6

    sget-object v1, Lcom/box/restclientv2/RestMethod;->OPTIONS:Lcom/box/restclientv2/RestMethod;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/box/restclientv2/RestMethod;->OTHERS:Lcom/box/restclientv2/RestMethod;

    aput-object v2, v0, v1

    sput-object v0, Lcom/box/restclientv2/RestMethod;->$VALUES:[Lcom/box/restclientv2/RestMethod;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/box/restclientv2/RestMethod;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/box/restclientv2/RestMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/box/restclientv2/RestMethod;

    return-object v0
.end method

.method public static values()[Lcom/box/restclientv2/RestMethod;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/box/restclientv2/RestMethod;->$VALUES:[Lcom/box/restclientv2/RestMethod;

    invoke-virtual {v0}, [Lcom/box/restclientv2/RestMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/box/restclientv2/RestMethod;

    return-object v0
.end method


# virtual methods
.method public getMethodString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 21
    sget-object v0, Lcom/box/restclientv2/RestMethod$1;->$SwitchMap$com$box$restclientv2$RestMethod:[I

    invoke-virtual {p0}, Lcom/box/restclientv2/RestMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 35
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 23
    :pswitch_d
    const-string v0, "get"

    goto :goto_c

    .line 25
    :pswitch_10
    const-string v0, "put"

    goto :goto_c

    .line 27
    :pswitch_13
    const-string v0, "post"

    goto :goto_c

    .line 29
    :pswitch_16
    const-string v0, "delete"

    goto :goto_c

    .line 31
    :pswitch_19
    const-string v0, "options"

    goto :goto_c

    .line 21
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_19
    .end packed-switch
.end method
