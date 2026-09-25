.class public Lcom/box/boxjavalibv2/requests/GetAllUsersInEnterpriseRequest;
.super Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;
.source "GetAllUsersInEnterpriseRequest.java"


# static fields
.field public static final DEFAULT_ITEMS_MAX:I = 0x64

.field public static final DEFAULT_ITEMS_OFFSET:I = 0x0

.field private static final URI:Ljava/lang/String; = "/users/"


# direct methods
.method public constructor <init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;Ljava/lang/String;)V
    .registers 11
    .param p1, "config"    # Lcom/box/boxjavalibv2/IBoxConfig;
    .param p2, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .param p3, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
    .param p4, "filterTerm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {}, Lcom/box/boxjavalibv2/requests/GetAllUsersInEnterpriseRequest;->getUri()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/box/restclientv2/RestMethod;->GET:Lcom/box/restclientv2/RestMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/restclientv2/RestMethod;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V

    .line 43
    invoke-static {p4}, Lorg/apache/commons/lang/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 44
    const-string v0, "filter_term"

    invoke-virtual {p0, v0, p4}, Lcom/box/boxjavalibv2/requests/GetAllUsersInEnterpriseRequest;->addQueryParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_18
    return-void
.end method

.method public static getUri()Ljava/lang/String;
    .registers 1

    .prologue
    .line 54
    const-string v0, "/users/"

    return-object v0
.end method
