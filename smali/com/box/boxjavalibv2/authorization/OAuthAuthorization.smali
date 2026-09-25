.class public Lcom/box/boxjavalibv2/authorization/OAuthAuthorization;
.super Lcom/box/restclientv2/authorization/DefaultRequestAuth;
.source "OAuthAuthorization.java"

# interfaces
.implements Lcom/box/boxjavalibv2/authorization/IOAuthAuthorization;


# static fields
.field private static final BEARER:Ljava/lang/String; = "Bearer"


# instance fields
.field private final mOAuth:Lcom/box/boxjavalibv2/authorization/OAuthDataController;


# direct methods
.method public constructor <init>(Lcom/box/boxjavalibv2/authorization/OAuthDataController;)V
    .registers 2
    .param p1, "oAuth"    # Lcom/box/boxjavalibv2/authorization/OAuthDataController;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/box/restclientv2/authorization/DefaultRequestAuth;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/box/boxjavalibv2/authorization/OAuthAuthorization;->mOAuth:Lcom/box/boxjavalibv2/authorization/OAuthDataController;

    .line 19
    return-void
.end method

.method private getAuthString()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v1, p0, Lcom/box/boxjavalibv2/authorization/OAuthAuthorization;->mOAuth:Lcom/box/boxjavalibv2/authorization/OAuthDataController;

    if-eqz v1, :cond_24

    .line 61
    iget-object v1, p0, Lcom/box/boxjavalibv2/authorization/OAuthAuthorization;->mOAuth:Lcom/box/boxjavalibv2/authorization/OAuthDataController;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->getAuthData()Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    move-result-object v0

    .line 62
    .local v0, "data":Lcom/box/boxjavalibv2/dao/BoxOAuthToken;
    if-eqz v0, :cond_24

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/dao/BoxOAuthToken;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .end local v0    # "data":Lcom/box/boxjavalibv2/dao/BoxOAuthToken;
    :goto_23
    return-object v1

    :cond_24
    const-string v1, ""

    goto :goto_23
.end method


# virtual methods
.method public initOAuthForRequest()V
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/box/boxjavalibv2/authorization/OAuthAuthorization;->mOAuth:Lcom/box/boxjavalibv2/authorization/OAuthDataController;

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->initialize()V

    .line 44
    return-void
.end method

.method public refresh()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/box/boxjavalibv2/authorization/OAuthAuthorization;->mOAuth:Lcom/box/boxjavalibv2/authorization/OAuthDataController;

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->refresh()V

    .line 36
    return-void
.end method

.method public setAuth(Lcom/box/restclientv2/requestsbase/IBoxRequest;)V
    .registers 4
    .param p1, "request"    # Lcom/box/restclientv2/requestsbase/IBoxRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/box/restclientv2/authorization/DefaultRequestAuth;->setAuth(Lcom/box/restclientv2/requestsbase/IBoxRequest;)V

    .line 50
    const-string v0, "Authorization"

    invoke-direct {p0}, Lcom/box/boxjavalibv2/authorization/OAuthAuthorization;->getAuthString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/box/restclientv2/requestsbase/IBoxRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public setOAuthData(Lcom/box/boxjavalibv2/dao/BoxOAuthToken;)V
    .registers 3
    .param p1, "data"    # Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/box/boxjavalibv2/authorization/OAuthAuthorization;->mOAuth:Lcom/box/boxjavalibv2/authorization/OAuthDataController;

    invoke-virtual {v0, p1}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->setOAuthData(Lcom/box/boxjavalibv2/dao/BoxOAuthToken;)V

    .line 24
    iget-object v0, p0, Lcom/box/boxjavalibv2/authorization/OAuthAuthorization;->mOAuth:Lcom/box/boxjavalibv2/authorization/OAuthDataController;

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->initialize()V

    .line 25
    return-void
.end method
