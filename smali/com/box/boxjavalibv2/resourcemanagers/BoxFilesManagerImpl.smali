.class public Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;
.super Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;
.source "BoxFilesManagerImpl.java"

# interfaces
.implements Lcom/box/boxjavalibv2/resourcemanagers/IBoxFilesManager;


# direct methods
.method public constructor <init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/authorization/IBoxRequestAuth;Lcom/box/restclientv2/IBoxRESTClient;)V
    .registers 6
    .param p1, "config"    # Lcom/box/boxjavalibv2/IBoxConfig;
    .param p2, "resourceHub"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;
    .param p3, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .param p4, "auth"    # Lcom/box/restclientv2/authorization/IBoxRequestAuth;
    .param p5, "restClient"    # Lcom/box/restclientv2/IBoxRESTClient;

    .prologue
    .line 67
    invoke-direct/range {p0 .. p5}, Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/authorization/IBoxRequestAuth;Lcom/box/restclientv2/IBoxRESTClient;)V

    .line 68
    return-void
.end method

.method public static getFileVersions(Lcom/box/boxjavalibv2/dao/BoxCollection;)Ljava/util/List;
    .registers 6
    .param p0, "collection"    # Lcom/box/boxjavalibv2/dao/BoxCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/box/boxjavalibv2/dao/BoxCollection;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/box/boxjavalibv2/dao/BoxFileVersion;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Lcom/box/boxjavalibv2/dao/BoxFileVersion;>;"
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxCollection;->getEntries()Ljava/util/ArrayList;

    move-result-object v2

    .line 230
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/box/boxjavalibv2/dao/BoxTypedObject;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/box/boxjavalibv2/dao/BoxTypedObject;

    .line 231
    .local v3, "object":Lcom/box/boxjavalibv2/dao/BoxTypedObject;
    instance-of v4, v3, Lcom/box/boxjavalibv2/dao/BoxFileVersion;

    if-eqz v4, :cond_d

    .line 232
    check-cast v3, Lcom/box/boxjavalibv2/dao/BoxFileVersion;

    .end local v3    # "object":Lcom/box/boxjavalibv2/dao/BoxTypedObject;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 235
    :cond_23
    return-object v0
.end method

.method public static getFiles(Lcom/box/boxjavalibv2/dao/BoxCollection;)Ljava/util/List;
    .registers 6
    .param p0, "collection"    # Lcom/box/boxjavalibv2/dao/BoxCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/box/boxjavalibv2/dao/BoxCollection;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/box/boxjavalibv2/dao/BoxFile;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Lcom/box/boxjavalibv2/dao/BoxFile;>;"
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxCollection;->getEntries()Ljava/util/ArrayList;

    move-result-object v2

    .line 211
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/box/boxjavalibv2/dao/BoxTypedObject;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/box/boxjavalibv2/dao/BoxTypedObject;

    .line 212
    .local v3, "object":Lcom/box/boxjavalibv2/dao/BoxTypedObject;
    instance-of v4, v3, Lcom/box/boxjavalibv2/dao/BoxFile;

    if-eqz v4, :cond_d

    .line 213
    check-cast v3, Lcom/box/boxjavalibv2/dao/BoxFile;

    .end local v3    # "object":Lcom/box/boxjavalibv2/dao/BoxTypedObject;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 216
    :cond_23
    return-object v0
.end method


# virtual methods
.method public copyFile(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemCopyRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFile;
    .registers 4
    .param p1, "fileId"    # Ljava/lang/String;
    .param p2, "requestObject"    # Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemCopyRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 140
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FILE:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-super {p0, p1, p2, v0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;->copyItem(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemCopyRequestObject;Lcom/box/boxjavalibv2/dao/BoxResourceType;)Lcom/box/boxjavalibv2/dao/BoxItem;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxFile;

    return-object v0
.end method

.method public createSharedLink(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxSharedLinkRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFile;
    .registers 4
    .param p1, "fileId"    # Ljava/lang/String;
    .param p2, "requestObject"    # Lcom/box/boxjavalibv2/requests/requestobjects/BoxSharedLinkRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 190
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FILE:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-super {p0, p1, p2, v0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;->createSharedLink(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxSharedLinkRequestObject;Lcom/box/boxjavalibv2/dao/BoxResourceType;)Lcom/box/boxjavalibv2/dao/BoxItem;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxFile;

    return-object v0
.end method

.method public deleteFile(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V
    .registers 6
    .param p1, "fileId"    # Ljava/lang/String;
    .param p2, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lcom/box/boxjavalibv2/requests/DeleteFileRequest;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/box/boxjavalibv2/requests/DeleteFileRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V

    .line 80
    .local v0, "request":Lcom/box/boxjavalibv2/requests/DeleteFileRequest;
    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->executeRequestWithNoResponseBody(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;)V

    .line 81
    return-void
.end method

.method public downloadFile(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)Ljava/io/InputStream;
    .registers 6
    .param p1, "fileId"    # Ljava/lang/String;
    .param p2, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getRestClient()Lcom/box/restclientv2/IBoxRESTClient;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/restclientv2/IBoxRESTClient;Ljava/lang/String;)V

    .line 155
    .local v0, "download":Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getAuth()Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->execute(Lcom/box/restclientv2/authorization/IBoxRequestAuth;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public downloadFile(Ljava/lang/String;Ljava/io/File;Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V
    .registers 8
    .param p1, "fileId"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/io/File;
    .param p3, "listener"    # Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;
    .param p4, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
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

    .prologue
    .line 146
    new-instance v0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getRestClient()Lcom/box/restclientv2/IBoxRESTClient;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/restclientv2/IBoxRESTClient;Ljava/lang/String;)V

    .line 147
    .local v0, "download":Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;
    invoke-virtual {v0, p3}, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->setProgressListener(Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;)V

    .line 148
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getAuth()Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2, p4}, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->execute(Lcom/box/restclientv2/authorization/IBoxRequestAuth;Ljava/io/File;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V

    .line 149
    return-void
.end method

.method public downloadFile(Ljava/lang/String;[Ljava/io/OutputStream;Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V
    .registers 8
    .param p1, "fileId"    # Ljava/lang/String;
    .param p2, "outputStreams"    # [Ljava/io/OutputStream;
    .param p3, "listener"    # Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;
    .param p4, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Ljava/io/IOException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Ljava/lang/InterruptedException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getRestClient()Lcom/box/restclientv2/IBoxRESTClient;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/restclientv2/IBoxRESTClient;Ljava/lang/String;)V

    .line 162
    .local v0, "download":Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;
    invoke-virtual {v0, p3}, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->setProgressListener(Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;)V

    .line 163
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getAuth()Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2, p4}, Lcom/box/boxjavalibv2/filetransfer/BoxFileDownload;->execute(Lcom/box/restclientv2/authorization/IBoxRequestAuth;[Ljava/io/OutputStream;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V

    .line 164
    return-void
.end method

.method public downloadThumbnail(Ljava/lang/String;Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;)Ljava/io/InputStream;
    .registers 13
    .param p1, "fileId"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;
    .param p3, "requestObject"    # Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 112
    new-instance v0, Lcom/box/boxjavalibv2/requests/ThumbnailRequest;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/box/boxjavalibv2/requests/ThumbnailRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;)V

    .line 113
    .local v0, "request":Lcom/box/boxjavalibv2/requests/ThumbnailRequest;
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getAuth()Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/box/boxjavalibv2/requests/ThumbnailRequest;->setAuth(Lcom/box/restclientv2/authorization/IBoxRequestAuth;)V

    .line 114
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getRestClient()Lcom/box/restclientv2/IBoxRESTClient;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/box/restclientv2/IBoxRESTClient;->execute(Lcom/box/restclientv2/requestsbase/IBoxRequest;)Lcom/box/restclientv2/responses/IBoxResponse;

    move-result-object v8

    check-cast v8, Lcom/box/restclientv2/responses/DefaultBoxResponse;

    .line 115
    .local v8, "response":Lcom/box/restclientv2/responses/DefaultBoxResponse;
    invoke-virtual {v8}, Lcom/box/restclientv2/responses/DefaultBoxResponse;->getResponseStatusCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/requests/ThumbnailRequest;->getExpectedResponseCode()I

    move-result v2

    if-eq v1, v2, :cond_50

    .line 116
    new-instance v6, Lcom/box/boxjavalibv2/responseparsers/ErrorResponseParser;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/box/boxjavalibv2/responseparsers/ErrorResponseParser;-><init>(Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)V

    .line 117
    .local v6, "errorParser":Lcom/box/boxjavalibv2/responseparsers/ErrorResponseParser;
    invoke-virtual {v6, v8}, Lcom/box/boxjavalibv2/responseparsers/ErrorResponseParser;->parse(Lcom/box/restclientv2/responses/IBoxResponse;)Ljava/lang/Object;

    move-result-object v7

    .line 118
    .local v7, "o":Ljava/lang/Object;
    instance-of v1, v7, Lcom/box/boxjavalibv2/dao/BoxServerError;

    if-eqz v1, :cond_50

    .line 119
    instance-of v1, v7, Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedStatus;

    if-eqz v1, :cond_48

    .line 120
    new-instance v1, Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedHttpStatusException;

    check-cast v7, Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedStatus;

    .end local v7    # "o":Ljava/lang/Object;
    invoke-direct {v1, v7}, Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedHttpStatusException;-><init>(Lcom/box/boxjavalibv2/exceptions/BoxUnexpectedStatus;)V

    throw v1

    .line 123
    .restart local v7    # "o":Ljava/lang/Object;
    :cond_48
    new-instance v1, Lcom/box/boxjavalibv2/exceptions/BoxServerException;

    check-cast v7, Lcom/box/boxjavalibv2/dao/BoxServerError;

    .end local v7    # "o":Ljava/lang/Object;
    invoke-direct {v1, v7}, Lcom/box/boxjavalibv2/exceptions/BoxServerException;-><init>(Lcom/box/boxjavalibv2/dao/BoxServerError;)V

    throw v1

    .line 127
    .end local v6    # "errorParser":Lcom/box/boxjavalibv2/responseparsers/ErrorResponseParser;
    :cond_50
    new-instance v1, Lcom/box/restclientv2/responseparsers/DefaultFileResponseParser;

    invoke-direct {v1}, Lcom/box/restclientv2/responseparsers/DefaultFileResponseParser;-><init>()V

    invoke-virtual {v1, v8}, Lcom/box/restclientv2/responseparsers/DefaultFileResponseParser;->parse(Lcom/box/restclientv2/responses/IBoxResponse;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    return-object v1
.end method

.method public getFile(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFile;
    .registers 4
    .param p1, "fileId"    # Ljava/lang/String;
    .param p2, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FILE:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-super {p0, p1, p2, v0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;->getItem(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;Lcom/box/boxjavalibv2/dao/BoxResourceType;)Lcom/box/boxjavalibv2/dao/BoxItem;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxFile;

    return-object v0
.end method

.method public getFileComments(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)Lcom/box/boxjavalibv2/dao/BoxCollection;
    .registers 6
    .param p1, "fileId"    # Ljava/lang/String;
    .param p2, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 196
    new-instance v0, Lcom/box/boxjavalibv2/requests/GetFileCommentsRequest;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/box/boxjavalibv2/requests/GetFileCommentsRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V

    .line 197
    .local v0, "request":Lcom/box/boxjavalibv2/requests/GetFileCommentsRequest;
    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->COMMENTS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getResponseAndParseAndTryCast(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;Lcom/box/boxjavalibv2/dao/IBoxType;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/box/boxjavalibv2/dao/BoxCollection;

    return-object v1
.end method

.method public getFileVersions(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)Ljava/util/List;
    .registers 7
    .param p1, "fileId"    # Ljava/lang/String;
    .param p2, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
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

    .prologue
    .line 176
    new-instance v1, Lcom/box/boxjavalibv2/requests/GetFileVersionsRequest;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v2

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/box/boxjavalibv2/requests/GetFileVersionsRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V

    .line 177
    .local v1, "request":Lcom/box/boxjavalibv2/requests/GetFileVersionsRequest;
    sget-object v2, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FILE_VERSIONS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getResponseAndParseAndTryCast(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;Lcom/box/boxjavalibv2/dao/IBoxType;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxCollection;

    .line 178
    .local v0, "collection":Lcom/box/boxjavalibv2/dao/BoxCollection;
    invoke-static {v0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getFileVersions(Lcom/box/boxjavalibv2/dao/BoxCollection;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getPreview(Ljava/lang/String;Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;)Lcom/box/boxjavalibv2/dao/BoxPreview;
    .registers 14
    .param p1, "fileId"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;
    .param p3, "requestObject"    # Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lcom/box/boxjavalibv2/requests/GetPreviewRequest;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/box/boxjavalibv2/requests/GetPreviewRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;)V

    .line 87
    .local v0, "request":Lcom/box/boxjavalibv2/requests/GetPreviewRequest;
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getAuth()Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/box/boxjavalibv2/requests/GetPreviewRequest;->setAuth(Lcom/box/restclientv2/authorization/IBoxRequestAuth;)V

    .line 88
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getRestClient()Lcom/box/restclientv2/IBoxRESTClient;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/box/restclientv2/IBoxRESTClient;->execute(Lcom/box/restclientv2/requestsbase/IBoxRequest;)Lcom/box/restclientv2/responses/IBoxResponse;

    move-result-object v8

    check-cast v8, Lcom/box/restclientv2/responses/DefaultBoxResponse;

    .line 89
    .local v8, "response":Lcom/box/restclientv2/responses/DefaultBoxResponse;
    new-instance v7, Lcom/box/boxjavalibv2/responseparsers/PreviewResponseParser;

    invoke-direct {v7}, Lcom/box/boxjavalibv2/responseparsers/PreviewResponseParser;-><init>()V

    .line 90
    .local v7, "parser":Lcom/box/boxjavalibv2/responseparsers/PreviewResponseParser;
    new-instance v6, Lcom/box/boxjavalibv2/responseparsers/ErrorResponseParser;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/box/boxjavalibv2/responseparsers/ErrorResponseParser;-><init>(Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)V

    .line 91
    .local v6, "errorParser":Lcom/box/boxjavalibv2/responseparsers/ErrorResponseParser;
    invoke-virtual {v8, v7, v6}, Lcom/box/restclientv2/responses/DefaultBoxResponse;->parseResponse(Lcom/box/restclientv2/responseparsers/IBoxResponseParser;Lcom/box/restclientv2/responseparsers/IBoxResponseParser;)Ljava/lang/Object;

    move-result-object v9

    .line 93
    .local v9, "result":Ljava/lang/Object;
    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->PREVIEW:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {p0, v1, v9}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->tryCastObject(Lcom/box/boxjavalibv2/dao/IBoxType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/box/boxjavalibv2/dao/BoxPreview;

    return-object v1
.end method

.method public getThumbnail(Ljava/lang/String;Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;)Lcom/box/boxjavalibv2/dao/BoxThumbnail;
    .registers 14
    .param p1, "fileId"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;
    .param p3, "requestObject"    # Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lcom/box/boxjavalibv2/requests/ThumbnailRequest;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/box/boxjavalibv2/requests/ThumbnailRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;)V

    .line 100
    .local v0, "request":Lcom/box/boxjavalibv2/requests/ThumbnailRequest;
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getAuth()Lcom/box/restclientv2/authorization/IBoxRequestAuth;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/box/boxjavalibv2/requests/ThumbnailRequest;->setAuth(Lcom/box/restclientv2/authorization/IBoxRequestAuth;)V

    .line 101
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getRestClient()Lcom/box/restclientv2/IBoxRESTClient;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/box/restclientv2/IBoxRESTClient;->execute(Lcom/box/restclientv2/requestsbase/IBoxRequest;)Lcom/box/restclientv2/responses/IBoxResponse;

    move-result-object v8

    check-cast v8, Lcom/box/restclientv2/responses/DefaultBoxResponse;

    .line 102
    .local v8, "response":Lcom/box/restclientv2/responses/DefaultBoxResponse;
    new-instance v7, Lcom/box/boxjavalibv2/responseparsers/ThumbnailResponseParser;

    invoke-direct {v7}, Lcom/box/boxjavalibv2/responseparsers/ThumbnailResponseParser;-><init>()V

    .line 103
    .local v7, "parser":Lcom/box/boxjavalibv2/responseparsers/ThumbnailResponseParser;
    new-instance v6, Lcom/box/boxjavalibv2/responseparsers/ErrorResponseParser;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/box/boxjavalibv2/responseparsers/ErrorResponseParser;-><init>(Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)V

    .line 104
    .local v6, "errorParser":Lcom/box/boxjavalibv2/responseparsers/ErrorResponseParser;
    invoke-virtual {v8, v7, v6}, Lcom/box/restclientv2/responses/DefaultBoxResponse;->parseResponse(Lcom/box/restclientv2/responseparsers/IBoxResponseParser;Lcom/box/restclientv2/responseparsers/IBoxResponseParser;)Ljava/lang/Object;

    move-result-object v9

    .line 105
    .local v9, "result":Ljava/lang/Object;
    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->THUMBNAIL:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {p0, v1, v9}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->tryCastObject(Lcom/box/boxjavalibv2/dao/IBoxType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/box/boxjavalibv2/dao/BoxThumbnail;

    return-object v1
.end method

.method public updateFileInfo(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxFileRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFile;
    .registers 4
    .param p1, "fileId"    # Ljava/lang/String;
    .param p2, "requestObject"    # Lcom/box/boxjavalibv2/requests/requestobjects/BoxFileRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 184
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FILE:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-super {p0, p1, p2, v0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxItemsManagerImpl;->updateItemInfo(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemRequestObject;Lcom/box/boxjavalibv2/dao/BoxResourceType;)Lcom/box/boxjavalibv2/dao/BoxItem;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxFile;

    return-object v0
.end method

.method public uploadFile(Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFile;
    .registers 4
    .param p1, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lcom/box/boxjavalibv2/filetransfer/BoxFileUpload;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/box/boxjavalibv2/filetransfer/BoxFileUpload;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;)V

    .line 134
    .local v0, "upload":Lcom/box/boxjavalibv2/filetransfer/BoxFileUpload;
    invoke-virtual {v0, p0, p1}, Lcom/box/boxjavalibv2/filetransfer/BoxFileUpload;->execute(Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFile;

    move-result-object v1

    return-object v1
.end method

.method public uploadNewVersion(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFile;
    .registers 5
    .param p1, "fileId"    # Ljava/lang/String;
    .param p2, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 169
    new-instance v0, Lcom/box/boxjavalibv2/filetransfer/BoxFileUpload;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/box/boxjavalibv2/filetransfer/BoxFileUpload;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;)V

    .line 170
    .local v0, "upload":Lcom/box/boxjavalibv2/filetransfer/BoxFileUpload;
    invoke-virtual {v0, p1, p0, p2}, Lcom/box/boxjavalibv2/filetransfer/BoxFileUpload;->execute(Ljava/lang/String;Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFile;

    move-result-object v1

    return-object v1
.end method
