.class public Lcom/box/boxjavalibv2/requests/DownloadPartialFileRequest;
.super Lcom/box/boxjavalibv2/requests/DownloadFileRequest;
.source "DownloadPartialFileRequest.java"


# direct methods
.method public constructor <init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V
    .registers 6
    .param p1, "config"    # Lcom/box/boxjavalibv2/IBoxConfig;
    .param p2, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .param p3, "fileId"    # Ljava/lang/String;
    .param p4, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/box/boxjavalibv2/requests/DownloadFileRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V

    .line 14
    const/16 v0, 0xce

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/requests/DownloadPartialFileRequest;->setExpectedResponseCode(I)V

    .line 15
    return-void
.end method
