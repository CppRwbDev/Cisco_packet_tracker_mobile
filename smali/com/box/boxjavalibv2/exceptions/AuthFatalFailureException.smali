.class public Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
.super Lcom/box/restclientv2/exceptions/BoxSDKException;
.source "AuthFatalFailureException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private callerResponsibleForFix:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/box/restclientv2/exceptions/BoxSDKException;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/box/restclientv2/exceptions/BoxSDKException;-><init>(Ljava/lang/Throwable;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/box/restclientv2/exceptions/BoxSDKException;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2
    .param p1, "callerResponsibleForFix"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;-><init>()V

    .line 23
    iput-boolean p1, p0, Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;->callerResponsibleForFix:Z

    .line 24
    return-void
.end method


# virtual methods
.method public isCallerResponsibleForFix()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;->callerResponsibleForFix:Z

    return v0
.end method
