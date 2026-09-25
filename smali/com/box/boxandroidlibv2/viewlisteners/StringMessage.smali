.class public Lcom/box/boxandroidlibv2/viewlisteners/StringMessage;
.super Ljava/lang/Object;
.source "StringMessage.java"

# interfaces
.implements Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;


# static fields
.field public static final MESSAGE_URL:Ljava/lang/String; = "url"


# instance fields
.field private final mKey:Ljava/lang/String;

.field private final mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/box/boxandroidlibv2/viewlisteners/StringMessage;->mValue:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/box/boxandroidlibv2/viewlisteners/StringMessage;->mKey:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/box/boxandroidlibv2/viewlisteners/StringMessage;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/box/boxandroidlibv2/viewlisteners/StringMessage;->mKey:Ljava/lang/String;

    return-object v0
.end method
