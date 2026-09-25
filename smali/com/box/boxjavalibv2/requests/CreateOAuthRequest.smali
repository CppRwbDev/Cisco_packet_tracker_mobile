.class public Lcom/box/boxjavalibv2/requests/CreateOAuthRequest;
.super Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;
.source "CreateOAuthRequest.java"


# static fields
.field public static final URI:Ljava/lang/String; = "/oauth2/token"


# direct methods
.method public constructor <init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;)V
    .registers 10
    .param p1, "config"    # Lcom/box/boxjavalibv2/IBoxConfig;
    .param p2, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .param p3, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxOAuthRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {}, Lcom/box/boxjavalibv2/requests/CreateOAuthRequest;->getUri()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/box/restclientv2/RestMethod;->POST:Lcom/box/restclientv2/RestMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/restclientv2/RestMethod;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V

    .line 31
    return-void
.end method

.method public static getUri()Ljava/lang/String;
    .registers 1

    .prologue
    .line 39
    const-string v0, "/oauth2/token"

    return-object v0
.end method


# virtual methods
.method public getApiUrlPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/requests/CreateOAuthRequest;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/box/boxjavalibv2/IBoxConfig;->getOAuthApiUrlPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/requests/CreateOAuthRequest;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/box/boxjavalibv2/IBoxConfig;->getOAuthUrlAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/requests/CreateOAuthRequest;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/box/boxjavalibv2/IBoxConfig;->getOAuthUrlScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
