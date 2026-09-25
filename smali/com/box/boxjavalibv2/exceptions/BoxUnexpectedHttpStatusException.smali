.class public Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedHttpStatusException;
.super Lcom/box/boxjavalibv2/exceptions/BoxServerException;
.source "BoxUnexpectedHttpStatusException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private context:Ljava/lang/Object;

.field private final unexpectedStatus:Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedStatus;


# direct methods
.method public constructor <init>(Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedStatus;)V
    .registers 4
    .param p1, "unexpectedStatus"    # Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedStatus;

    .prologue
    .line 15
    invoke-virtual {p1}, Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedStatus;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedStatus;->getStatus()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/box/boxjavalibv2/exceptions/BoxServerException;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p1, p0, Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedHttpStatusException;->unexpectedStatus:Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedStatus;

    .line 17
    return-void
.end method


# virtual methods
.method public getContext()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedHttpStatusException;->context:Ljava/lang/Object;

    return-object v0
.end method

.method public getError()Lcom/box/boxjavalibv2/dao/BoxServerError;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedHttpStatusException;->unexpectedStatus:Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedStatus;

    return-object v0
.end method

.method public getUnexpectedStatus()Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedStatus;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedHttpStatusException;->unexpectedStatus:Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedStatus;

    return-object v0
.end method

.method public setContext(Ljava/lang/Object;)V
    .registers 2
    .param p1, "context"    # Ljava/lang/Object;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedHttpStatusException;->context:Ljava/lang/Object;

    .line 39
    return-void
.end method
