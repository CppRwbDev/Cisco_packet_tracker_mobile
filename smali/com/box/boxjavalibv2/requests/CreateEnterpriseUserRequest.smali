.class public Lcom/box/boxjavalibv2/requests/CreateEnterpriseUserRequest;
.super Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;
.source "CreateEnterpriseUserRequest.java"


# static fields
.field public static final URI:Ljava/lang/String; = "/users"


# direct methods
.method public constructor <init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;)V
    .registers 10
    .param p1, "config"    # Lcom/box/boxjavalibv2/IBoxConfig;
    .param p2, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .param p3, "requestObject"    # Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {}, Lcom/box/boxjavalibv2/requests/CreateEnterpriseUserRequest;->getUri()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/box/restclientv2/RestMethod;->POST:Lcom/box/restclientv2/RestMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/restclientv2/RestMethod;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V

    .line 33
    const/16 v0, 0xc9

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/requests/CreateEnterpriseUserRequest;->setExpectedResponseCode(I)V

    .line 34
    return-void
.end method

.method public static getUri()Ljava/lang/String;
    .registers 1

    .prologue
    .line 42
    const-string v0, "/users"

    return-object v0
.end method
