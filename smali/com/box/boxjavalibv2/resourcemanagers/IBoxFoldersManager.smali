.class public interface abstract Lcom/box/boxjavalibv2/resourcemanagers/IBoxFoldersManager;
.super Ljava/lang/Object;
.source "IBoxFoldersManager.java"

# interfaces
.implements Lcom/box/boxjavalibv2/resourcemanagers/IBoxResourceManager;


# virtual methods
.method public abstract copyFolder(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemCopyRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation
.end method

.method public abstract createFolder(Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation
.end method

.method public abstract createSharedLink(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxSharedLinkRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation
.end method

.method public abstract deleteFolder(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderDeleteRequestObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation
.end method

.method public abstract getFolder(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation
.end method

.method public abstract getFolderCollaborations(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;",
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

.method public abstract getFolderItems(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxPagingRequestObject;)Lcom/box/boxjavalibv2/dao/BoxCollection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation
.end method

.method public abstract updateFolderInfo(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation
.end method
