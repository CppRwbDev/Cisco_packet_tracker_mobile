.class public Lcom/box/boxjavalibv2/authorization/OAuthDataMessage;
.super Lcom/box/boxjavalibv2/authorization/StringMessage;
.source "OAuthDataMessage.java"


# static fields
.field public static final OAUTH_DATA_MESSAGE_KEY:Ljava/lang/String; = "oauth_data"


# instance fields
.field private final mHub:Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

.field private final mParser:Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;


# direct methods
.method public constructor <init>(Lcom/box/boxjavalibv2/dao/BoxOAuthToken;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;)V
    .registers 6
    .param p1, "oauthData"    # Lcom/box/boxjavalibv2/dao/BoxOAuthToken;
    .param p2, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .param p3, "hub"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/BoxJSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    const-string v0, "oauth_data"

    invoke-interface {p2, p1}, Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;->convertBoxObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/box/boxjavalibv2/authorization/StringMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iput-object p2, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataMessage;->mParser:Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    .line 36
    iput-object p3, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataMessage;->mHub:Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

    .line 37
    return-void
.end method


# virtual methods
.method public getData()Lcom/box/boxjavalibv2/dao/BoxOAuthToken;
    .registers 5

    .prologue
    .line 47
    iget-object v1, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataMessage;->mParser:Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    invoke-super {p0}, Lcom/box/boxjavalibv2/authorization/StringMessage;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataMessage;->mHub:Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

    sget-object v3, Lcom/box/boxjavalibv2/dao/BoxResourceType;->OAUTH_DATA:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-interface {v2, v3}, Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;->getClass(Lcom/box/boxjavalibv2/dao/IBoxType;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;->parseIntoBoxObjectQuietly(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/authorization/OAuthDataMessage;->getData()Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    move-result-object v0

    return-object v0
.end method
