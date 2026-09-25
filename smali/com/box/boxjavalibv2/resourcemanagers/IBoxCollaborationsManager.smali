.class public interface abstract Lcom/box/boxjavalibv2/resourcemanagers/IBoxCollaborationsManager;
.super Ljava/lang/Object;
.source "IBoxCollaborationsManager.java"

# interfaces
.implements Lcom/box/boxjavalibv2/resourcemanagers/IBoxResourceManager;


# virtual methods
.method public abstract createCollaboration(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;)Lcom/box/boxjavalibv2/dao/BoxCollaboration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation
.end method

.method public abstract deleteCollaboration(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation
.end method

.method public abstract getAllCollaborations(Lcom/box/boxjavalibv2/requests/requestobjects/BoxGetAllCollabsRequestObject;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/box/boxjavalibv2/requests/requestobjects/BoxGetAllCollabsRequestObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/box/boxjavalibv2/dao/BoxCollaboration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation
.end method

.method public abstract getCollaboration(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)Lcom/box/boxjavalibv2/dao/BoxCollaboration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation
.end method

.method public abstract updateCollaboration(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxCollabRequestObject;)Lcom/box/boxjavalibv2/dao/BoxCollaboration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;
        }
    .end annotation
.end method
