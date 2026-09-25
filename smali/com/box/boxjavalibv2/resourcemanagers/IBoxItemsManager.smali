.class public interface abstract Lcom/box/boxjavalibv2/resourcemanagers/IBoxItemsManager;
.super Ljava/lang/Object;
.source "IBoxItemsManager.java"

# interfaces
.implements Lcom/box/boxjavalibv2/resourcemanagers/IBoxResourceManager;


# virtual methods
.method public abstract copyItem(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemCopyRequestObject;Lcom/box/boxjavalibv2/dao/BoxResourceType;)Lcom/box/boxjavalibv2/dao/BoxItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation
.end method

.method public abstract createSharedLink(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxSharedLinkRequestObject;Lcom/box/boxjavalibv2/dao/BoxResourceType;)Lcom/box/boxjavalibv2/dao/BoxItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation
.end method

.method public abstract getItem(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;Lcom/box/boxjavalibv2/dao/BoxResourceType;)Lcom/box/boxjavalibv2/dao/BoxItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation
.end method

.method public abstract updateItemInfo(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRequestObject;Lcom/box/boxjavalibv2/dao/BoxResourceType;)Lcom/box/boxjavalibv2/dao/BoxItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation
.end method
