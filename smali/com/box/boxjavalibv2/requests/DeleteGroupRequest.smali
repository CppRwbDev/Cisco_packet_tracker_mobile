.class public Lcom/box/boxjavalibv2/requests/DeleteGroupRequest;
.super Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;
.source "DeleteGroupRequest.java"


# static fields
.field private static URI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-string v0, "/groups/%s"

    sput-object v0, Lcom/box/boxjavalibv2/requests/DeleteGroupRequest;->URI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V
    .registers 11
    .param p1, "config"    # Lcom/box/boxjavalibv2/IBoxConfig;
    .param p2, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .param p3, "groupId"    # Ljava/lang/String;
    .param p4, "requestObject"    # Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-static {p3}, Lcom/box/boxjavalibv2/requests/DeleteGroupRequest;->getUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/box/restclientv2/RestMethod;->DELETE:Lcom/box/restclientv2/RestMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;-><init>(Lcom/box/boxjavalibv2/IBoxConfig;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Ljava/lang/String;Lcom/box/restclientv2/RestMethod;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V

    .line 19
    const/16 v0, 0xcc

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/requests/DeleteGroupRequest;->setExpectedResponseCode(I)V

    .line 20
    return-void
.end method

.method public static getUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "groupId"    # Ljava/lang/String;

    .prologue
    .line 23
    sget-object v0, Lcom/box/boxjavalibv2/requests/DeleteGroupRequest;->URI:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
