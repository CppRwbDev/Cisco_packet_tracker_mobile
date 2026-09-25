.class public Lcom/box/boxjavalibv2/requests/UploadNewVersionFileRequest;
.super Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;
.source "UploadNewVersionFileRequest.java"


# static fields
.field public static final URI:Ljava/lang/String; = "/files/%s/content"


# direct methods
.method public constructor <init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;)V
    .registers 11
    .param p1, "config"    # Lcom/box/boxjavalibv2/IBoxConfig;
    .param p2, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .param p3, "fileId"    # Ljava/lang/String;
    .param p4, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-static {p3}, Lcom/box/boxjavalibv2/requests/UploadNewVersionFileRequest;->getUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/box/restclientv2/RestMethod;->POST:Lcom/box/restclientv2/RestMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/restclientv2/RestMethod;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V

    .line 22
    const/16 v0, 0xc9

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/requests/UploadNewVersionFileRequest;->setExpectedResponseCode(I)V

    .line 23
    return-void
.end method

.method public static getUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "fileId"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string v0, "/files/%s/content"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApiUrlPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/requests/UploadNewVersionFileRequest;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/box/boxjavalibv2/IBoxConfig;->getUploadUrlPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/requests/UploadNewVersionFileRequest;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/box/boxjavalibv2/IBoxConfig;->getUploadUrlAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/requests/UploadNewVersionFileRequest;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/box/boxjavalibv2/IBoxConfig;->getUploadUrlScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
