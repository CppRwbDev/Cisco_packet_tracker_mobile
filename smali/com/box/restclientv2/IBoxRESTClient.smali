.class public interface abstract Lcom/box/restclientv2/IBoxRESTClient;
.super Ljava/lang/Object;
.source "IBoxRESTClient.java"


# virtual methods
.method public abstract execute(Lcom/box/restclientv2/requestsbase/IBoxRequest;)Lcom/box/restclientv2/responses/IBoxResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation
.end method
