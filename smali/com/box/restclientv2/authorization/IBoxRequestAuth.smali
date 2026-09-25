.class public interface abstract Lcom/box/restclientv2/authorization/IBoxRequestAuth;
.super Ljava/lang/Object;
.source "IBoxRequestAuth.java"


# virtual methods
.method public abstract setAuth(Lcom/box/restclientv2/requestsbase/IBoxRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation
.end method
