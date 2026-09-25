.class public Lcom/box/restclientv2/exceptions/BoxRestException;
.super Lcom/box/restclientv2/exceptions/BoxSDKException;
.source "BoxRestException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private errorCode:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/box/restclientv2/exceptions/BoxSDKException;-><init>(Ljava/lang/Throwable;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 3
    .param p1, "exception"    # Ljava/lang/Exception;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/box/restclientv2/exceptions/BoxSDKException;-><init>(Ljava/lang/Throwable;)V

    .line 37
    iput-object p2, p0, Lcom/box/restclientv2/exceptions/BoxRestException;->mMessage:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/box/restclientv2/exceptions/BoxSDKException;-><init>(Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/box/restclientv2/exceptions/BoxRestException;->mMessage:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/box/restclientv2/exceptions/BoxRestException;-><init>(Ljava/lang/String;)V

    .line 50
    iput-object p2, p0, Lcom/box/restclientv2/exceptions/BoxRestException;->errorCode:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/box/restclientv2/exceptions/BoxRestException;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/box/restclientv2/exceptions/BoxRestException;->mMessage:Ljava/lang/String;

    return-object v0
.end method
