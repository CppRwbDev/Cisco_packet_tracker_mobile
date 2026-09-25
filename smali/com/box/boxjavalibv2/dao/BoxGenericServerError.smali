.class public Lcom/box/boxjavalibv2/dao/BoxGenericServerError;
.super Lcom/box/boxjavalibv2/dao/BoxServerError;
.source "BoxGenericServerError.java"


# static fields
.field private static final serialVersionUID:J = 0x4a37a20b422940e7L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxServerError;-><init>()V

    return-void
.end method


# virtual methods
.method public setMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxServerError;->setMessage(Ljava/lang/String;)V

    .line 13
    return-void
.end method
