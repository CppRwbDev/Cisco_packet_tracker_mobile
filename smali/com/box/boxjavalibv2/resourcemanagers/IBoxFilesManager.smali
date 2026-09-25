.class public interface abstract Lcom/box/boxjavalibv2/resourcemanagers/IBoxFilesManager;
.super Ljava/lang/Object;
.source "IBoxFilesManager.java"

# interfaces
.implements Lcom/box/boxjavalibv2/resourcemanagers/IBoxResourceManager;


# virtual methods
.method public abstract copyFile(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemCopyRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation
.end method

.method public abstract createSharedLink(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxSharedLinkRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation
.end method

.method public abstract deleteFile(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation
.end method

.method public abstract downloadFile(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation
.end method

.method public abstract downloadFile(Ljava/lang/String;Ljava/io/File;Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation
.end method

.method public abstract downloadFile(Ljava/lang/String;[Ljava/io/OutputStream;Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Ljava/io/IOException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Ljava/lang/InterruptedException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation
.end method

.method public abstract downloadThumbnail(Ljava/lang/String;Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getFile(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation
.end method

.method public abstract getFileComments(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)Lcom/box/boxjavalibv2/dao/BoxCollection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation
.end method

.method public abstract getFileVersions(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/box/boxjavalibv2/dao/BoxFileVersion;",
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

.method public abstract getPreview(Ljava/lang/String;Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;)Lcom/box/boxjavalibv2/dao/BoxPreview;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation
.end method

.method public abstract getThumbnail(Ljava/lang/String;Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;)Lcom/box/boxjavalibv2/dao/BoxThumbnail;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation
.end method

.method public abstract updateFileInfo(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxFileRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation
.end method

.method public abstract uploadFile(Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract uploadNewVersion(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
