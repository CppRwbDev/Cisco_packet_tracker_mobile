.class public Lcom/box/boxjavalibv2/requests/CopyItemRequest;
.super Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;
.source "CopyItemRequest.java"


# static fields
.field public static final URI:Ljava/lang/String; = "/%s/%s/copy"


# direct methods
.method public constructor <init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemCopyRequestObject;Lcom/box/boxjavalibv2/dao/BoxResourceType;)V
    .registers 12
    .param p1, "config"    # Lcom/box/boxjavalibv2/IBoxConfig;
    .param p2, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "requestObject"    # Lcom/box/boxjavalibv2/requests/requestobjects/BoxItemCopyRequestObject;
    .param p5, "type"    # Lcom/box/boxjavalibv2/dao/BoxResourceType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-static {p3, p5}, Lcom/box/boxjavalibv2/requests/CopyItemRequest;->getUri(Ljava/lang/String;Lcom/box/boxjavalibv2/dao/BoxResourceType;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/box/restclientv2/RestMethod;->POST:Lcom/box/restclientv2/RestMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/restclientv2/RestMethod;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V

    .line 39
    const/16 v0, 0xc9

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/requests/CopyItemRequest;->setExpectedResponseCode(I)V

    .line 40
    return-void
.end method

.method public static getUri(Ljava/lang/String;Lcom/box/boxjavalibv2/dao/BoxResourceType;)Ljava/lang/String;
    .registers 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .prologue
    .line 52
    const-string v0, "/%s/%s/copy"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->toPluralString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
