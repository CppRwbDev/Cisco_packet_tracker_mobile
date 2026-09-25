.class public Lcom/box/boxjavalibv2/filetransfer/BoxFileUpload;
.super Ljava/lang/Object;
.source "BoxFileUpload.java"


# instance fields
.field private final mConfig:Lcom/box/boxjavalibv2/IBoxConfig;


# direct methods
.method public constructor <init>(Lcom/box/boxjavalibv2/IBoxConfig;)V
    .registers 2
    .param p1, "config"    # Lcom/box/boxjavalibv2/IBoxConfig;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/box/boxjavalibv2/filetransfer/BoxFileUpload;->mConfig:Lcom/box/boxjavalibv2/IBoxConfig;

    .line 34
    return-void
.end method

.method private isInterruptedMultipartException(Lcom/box/restclientv2/exceptions/BoxRestException;)Z
    .registers 4
    .param p1, "e"    # Lcom/box/restclientv2/exceptions/BoxRestException;

    .prologue
    .line 112
    invoke-virtual {p1}, Lcom/box/restclientv2/exceptions/BoxRestException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 113
    .local v0, "t":Ljava/lang/Throwable;
    if-eqz v0, :cond_c

    instance-of v1, v0, Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener$InterruptedMultipartException;

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method


# virtual methods
.method public execute(Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFile;
    .registers 10
    .param p1, "manager"    # Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;
    .param p2, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v3, Lcom/box/boxjavalibv2/requests/UploadFileRequest;

    iget-object v5, p0, Lcom/box/boxjavalibv2/filetransfer/BoxFileUpload;->mConfig:Lcom/box/boxjavalibv2/IBoxConfig;

    invoke-virtual {p1}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v6

    invoke-direct {v3, v5, v6, p2}, Lcom/box/boxjavalibv2/requests/UploadFileRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;)V

    .line 58
    .local v3, "request":Lcom/box/boxjavalibv2/requests/UploadFileRequest;
    :try_start_b
    sget-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FILES:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {p1}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v6

    invoke-virtual {p1, v3, v5, v6}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getResponseAndParse(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;Lcom/box/boxjavalibv2/dao/IBoxType;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Ljava/lang/Object;

    move-result-object v4

    .line 59
    .local v4, "result":Ljava/lang/Object;
    sget-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FILES:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {p1, v5, v4}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->tryCastObject(Lcom/box/boxjavalibv2/dao/IBoxType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/box/boxjavalibv2/dao/BoxCollection;

    .line 60
    .local v1, "collection":Lcom/box/boxjavalibv2/dao/BoxCollection;
    invoke-virtual {p1}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getResourceHub()Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

    move-result-object v5

    sget-object v6, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FILE:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-interface {v5, v6}, Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;->getClass(Lcom/box/boxjavalibv2/dao/IBoxType;)Ljava/lang/Class;

    move-result-object v0

    .line 61
    .local v0, "cls":Ljava/lang/Class;
    invoke-static {v1, v0}, Lcom/box/boxjavalibv2/utils/Utils;->getTypedObjects(Lcom/box/boxjavalibv2/dao/BoxCollection;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/box/boxjavalibv2/dao/BoxFile;
    :try_end_32
    .catch Lcom/box/restclientv2/exceptions/BoxRestException; {:try_start_b .. :try_end_32} :catch_33

    return-object v5

    .line 63
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v1    # "collection":Lcom/box/boxjavalibv2/dao/BoxCollection;
    .end local v4    # "result":Ljava/lang/Object;
    :catch_33
    move-exception v2

    .line 64
    .local v2, "e":Lcom/box/restclientv2/exceptions/BoxRestException;
    invoke-direct {p0, v2}, Lcom/box/boxjavalibv2/filetransfer/BoxFileUpload;->isInterruptedMultipartException(Lcom/box/restclientv2/exceptions/BoxRestException;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 65
    new-instance v5, Ljava/lang/InterruptedException;

    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    throw v5

    .line 68
    :cond_40
    throw v2
.end method

.method public execute(Ljava/lang/String;Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFile;
    .registers 10
    .param p1, "fileId"    # Ljava/lang/String;
    .param p2, "manager"    # Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;
    .param p3, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/boxjavalibv2/exceptions/BoxServerException;,
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v1, Lcom/box/boxjavalibv2/requests/UploadNewVersionFileRequest;

    iget-object v4, p0, Lcom/box/boxjavalibv2/filetransfer/BoxFileUpload;->mConfig:Lcom/box/boxjavalibv2/IBoxConfig;

    invoke-virtual {p2}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v5

    invoke-direct {v1, v4, v5, p1, p3}, Lcom/box/boxjavalibv2/requests/UploadNewVersionFileRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;)V

    .line 94
    .local v1, "request":Lcom/box/boxjavalibv2/requests/UploadNewVersionFileRequest;
    :try_start_b
    sget-object v4, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FILE_VERSIONS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {p2}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v5

    invoke-virtual {p2, v1, v4, v5}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->getResponseAndParse(Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;Lcom/box/boxjavalibv2/dao/IBoxType;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Ljava/lang/Object;

    move-result-object v2

    .line 95
    .local v2, "result":Ljava/lang/Object;
    sget-object v4, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FILE_VERSIONS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {p2, v4, v2}, Lcom/box/boxjavalibv2/resourcemanagers/BoxFilesManagerImpl;->tryCastObject(Lcom/box/boxjavalibv2/dao/IBoxType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/box/boxjavalibv2/dao/BoxCollection;

    .line 96
    .local v3, "versions":Lcom/box/boxjavalibv2/dao/BoxCollection;
    invoke-virtual {v3}, Lcom/box/boxjavalibv2/dao/BoxCollection;->getTotalCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3f

    .line 97
    new-instance v4, Lcom/box/boxjavalibv2/exceptions/BoxMalformedResponseException;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/requests/UploadNewVersionFileRequest;->getExpectedResponseCode()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/box/boxjavalibv2/exceptions/BoxMalformedResponseException;-><init>(I)V

    throw v4
    :try_end_32
    .catch Lcom/box/restclientv2/exceptions/BoxRestException; {:try_start_b .. :try_end_32} :catch_32

    .line 101
    .end local v2    # "result":Ljava/lang/Object;
    .end local v3    # "versions":Lcom/box/boxjavalibv2/dao/BoxCollection;
    :catch_32
    move-exception v0

    .line 102
    .local v0, "e":Lcom/box/restclientv2/exceptions/BoxRestException;
    invoke-direct {p0, v0}, Lcom/box/boxjavalibv2/filetransfer/BoxFileUpload;->isInterruptedMultipartException(Lcom/box/restclientv2/exceptions/BoxRestException;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 103
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    .line 99
    .end local v0    # "e":Lcom/box/restclientv2/exceptions/BoxRestException;
    .restart local v2    # "result":Ljava/lang/Object;
    .restart local v3    # "versions":Lcom/box/boxjavalibv2/dao/BoxCollection;
    :cond_3f
    :try_start_3f
    invoke-virtual {v3}, Lcom/box/boxjavalibv2/dao/BoxCollection;->getEntries()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/box/boxjavalibv2/dao/BoxFile;
    :try_end_4a
    .catch Lcom/box/restclientv2/exceptions/BoxRestException; {:try_start_3f .. :try_end_4a} :catch_32

    return-object v4

    .line 106
    .end local v2    # "result":Ljava/lang/Object;
    .end local v3    # "versions":Lcom/box/boxjavalibv2/dao/BoxCollection;
    .restart local v0    # "e":Lcom/box/restclientv2/exceptions/BoxRestException;
    :cond_4b
    throw v0
.end method
