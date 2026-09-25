.class public Lcom/box/boxjavalibv2/exceptions/BoxJSONException;
.super Lcom/box/restclientv2/exceptions/BoxSDKException;
.source "BoxJSONException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/box/restclientv2/exceptions/BoxSDKException;-><init>(Ljava/lang/Throwable;)V

    .line 9
    return-void
.end method
