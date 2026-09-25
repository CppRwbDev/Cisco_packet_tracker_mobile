.class public interface abstract Lcom/box/boxjavalibv2/authorization/IAuthDataController;
.super Ljava/lang/Object;
.source "IAuthDataController.java"


# virtual methods
.method public abstract getAuthData()Lcom/box/boxjavalibv2/dao/IAuthData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation
.end method

.method public abstract refresh()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation
.end method
