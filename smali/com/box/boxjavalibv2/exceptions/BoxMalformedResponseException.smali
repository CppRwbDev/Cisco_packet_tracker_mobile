.class public Lcom/box/boxjavalibv2/exceptions/BoxMalformedResponseException;
.super Lcom/box/boxjavalibv2/exceptions/BoxServerException;
.source "BoxMalformedResponseException.java"


# static fields
.field public static final MALFORM:Ljava/lang/String; = "malformed response"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "statusCode"    # I

    .prologue
    .line 13
    const-string v0, "malformed response"

    invoke-direct {p0, v0, p1}, Lcom/box/boxjavalibv2/exceptions/BoxServerException;-><init>(Ljava/lang/String;I)V

    .line 14
    return-void
.end method
