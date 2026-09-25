.class public Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedStatus;
.super Lcom/box/boxjavalibv2/dao/BoxServerError;
.source "BoxUnexpectedStatus.java"


# static fields
.field public static final FIELD_RETRY_AFTER:Ljava/lang/String; = "retry_after"

.field private static final serialVersionUID:J = 0x2fd7802878f2376fL


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "status"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxServerError;-><init>()V

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedStatus;->setStatus(Ljava/lang/Integer;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getRetryAfter()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 22
    const-string v0, "retry_after"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedStatus;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public setRetryAfter(Ljava/lang/Integer;)V
    .registers 3
    .param p1, "retryAfter"    # Ljava/lang/Integer;

    .prologue
    .line 31
    const-string v0, "retry_after"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedStatus;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    return-void
.end method
