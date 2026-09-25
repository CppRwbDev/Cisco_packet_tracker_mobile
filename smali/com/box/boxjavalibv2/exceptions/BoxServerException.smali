.class public Lcom/box/boxjavalibv2/exceptions/BoxServerException;
.super Lcom/box/restclientv2/exceptions/BoxSDKException;
.source "BoxServerException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private customMessage:Ljava/lang/String;

.field private error:Lcom/box/boxjavalibv2/dao/BoxServerError;

.field private statusCode:I


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/box/restclientv2/exceptions/BoxSDKException;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/BoxServerError;)V
    .registers 4
    .param p1, "error"    # Lcom/box/boxjavalibv2/dao/BoxServerError;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/box/restclientv2/exceptions/BoxSDKException;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/box/boxjavalibv2/exceptions/BoxServerException;->error:Lcom/box/boxjavalibv2/dao/BoxServerError;

    .line 45
    invoke-virtual {p1}, Lcom/box/boxjavalibv2/dao/BoxServerError;->getStatus()Ljava/lang/Integer;

    move-result-object v0

    .line 46
    .local v0, "status":Ljava/lang/Integer;
    if-eqz v0, :cond_11

    .line 47
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/box/boxjavalibv2/exceptions/BoxServerException;->statusCode:I

    .line 49
    :cond_11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "customMessage"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/box/restclientv2/exceptions/BoxSDKException;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/box/boxjavalibv2/exceptions/BoxServerException;->customMessage:Ljava/lang/String;

    .line 34
    iput p2, p0, Lcom/box/boxjavalibv2/exceptions/BoxServerException;->statusCode:I

    .line 35
    return-void
.end method


# virtual methods
.method public getCustomMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/box/boxjavalibv2/exceptions/BoxServerException;->customMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Lcom/box/boxjavalibv2/dao/BoxServerError;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/box/boxjavalibv2/exceptions/BoxServerException;->error:Lcom/box/boxjavalibv2/dao/BoxServerError;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 5

    .prologue
    .line 76
    iget-object v0, p0, Lcom/box/boxjavalibv2/exceptions/BoxServerException;->customMessage:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 77
    const-string v0, "%s:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/box/boxjavalibv2/exceptions/BoxServerException;->statusCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/box/boxjavalibv2/exceptions/BoxServerException;->customMessage:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_1b
    return-object v0

    .line 78
    :cond_1c
    iget-object v0, p0, Lcom/box/boxjavalibv2/exceptions/BoxServerException;->error:Lcom/box/boxjavalibv2/dao/BoxServerError;

    if-eqz v0, :cond_27

    .line 79
    iget-object v0, p0, Lcom/box/boxjavalibv2/exceptions/BoxServerException;->error:Lcom/box/boxjavalibv2/dao/BoxServerError;

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/dao/BoxServerError;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 81
    :cond_27
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public getStatusCode()I
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Lcom/box/boxjavalibv2/exceptions/BoxServerException;->statusCode:I

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/box/boxjavalibv2/exceptions/BoxServerException;->customMessage:Ljava/lang/String;

    .line 87
    return-void
.end method
