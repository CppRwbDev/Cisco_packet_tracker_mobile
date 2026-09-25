.class public interface abstract Lcom/box/boxjavalibv2/authorization/IOAuthAuthorization;
.super Ljava/lang/Object;
.source "IOAuthAuthorization.java"


# virtual methods
.method public abstract initOAuthForRequest()V
.end method

.method public abstract refresh()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation
.end method

.method public abstract setAuth(Lcom/box/restclientv2/requestsbase/IBoxRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation
.end method

.method public abstract setOAuthData(Lcom/box/boxjavalibv2/dao/BoxOAuthToken;)V
.end method
