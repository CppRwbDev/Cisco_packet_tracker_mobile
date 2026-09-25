.class public interface abstract Lcom/box/boxjavalibv2/resourcemanagers/IBoxGroupsManager;
.super Ljava/lang/Object;
.source "IBoxGroupsManager.java"

# interfaces
.implements Lcom/box/boxjavalibv2/resourcemanagers/IBoxResourceManager;


# virtual methods
.method public abstract createGroup(Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupRequestObject;)Lcom/box/boxjavalibv2/dao/BoxGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;
        }
    .end annotation
.end method

.method public abstract createGroup(Ljava/lang/String;)Lcom/box/boxjavalibv2/dao/BoxGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;
        }
    .end annotation
.end method

.method public abstract createMembership(Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupMembershipRequestObject;)Lcom/box/boxjavalibv2/dao/BoxGroupMembership;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;
        }
    .end annotation
.end method

.method public abstract createMembership(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/dao/BoxGroupMembership;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;
        }
    .end annotation
.end method

.method public abstract deleteGroup(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;
        }
    .end annotation
.end method

.method public abstract deleteMembership(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;
        }
    .end annotation
.end method

.method public abstract getAllCollaborations(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)Lcom/box/boxjavalibv2/dao/BoxCollection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;
        }
    .end annotation
.end method

.method public abstract getAllGroups(Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)Lcom/box/boxjavalibv2/dao/BoxCollection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;
        }
    .end annotation
.end method

.method public abstract getMembership(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)Lcom/box/boxjavalibv2/dao/BoxGroupMembership;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;
        }
    .end annotation
.end method

.method public abstract getMemberships(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)Lcom/box/boxjavalibv2/dao/BoxCollection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;
        }
    .end annotation
.end method

.method public abstract updateGroup(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupRequestObject;)Lcom/box/boxjavalibv2/dao/BoxGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;
        }
    .end annotation
.end method

.method public abstract updateMembership(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupMembershipRequestObject;)Lcom/box/boxjavalibv2/dao/BoxGroupMembership;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;
        }
    .end annotation
.end method

.method public abstract updateMembership(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/dao/BoxGroupMembership;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;
        }
    .end annotation
.end method
