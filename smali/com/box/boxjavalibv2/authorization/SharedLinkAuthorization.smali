.class public Lcom/box/boxjavalibv2/authorization/SharedLinkAuthorization;
.super Lcom/box/restclientv2/authorization/DefaultRequestAuth;
.source "SharedLinkAuthorization.java"

# interfaces
.implements Lcom/box/boxjavalibv2/authorization/IOAuthAuthorization;


# static fields
.field private static final HEADER_NAME:Ljava/lang/String; = "BoxApi"


# instance fields
.field private final mOauth:Lcom/box/boxjavalibv2/authorization/OAuthAuthorization;

.field private mPassword:Ljava/lang/String;

.field private final mSharedLink:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/box/boxjavalibv2/authorization/OAuthAuthorization;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "oauth"    # Lcom/box/boxjavalibv2/authorization/OAuthAuthorization;
    .param p2, "sharedLink"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/box/restclientv2/authorization/DefaultRequestAuth;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/box/boxjavalibv2/authorization/SharedLinkAuthorization;->mPassword:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/box/boxjavalibv2/authorization/SharedLinkAuthorization;->mOauth:Lcom/box/boxjavalibv2/authorization/OAuthAuthorization;

    .line 33
    iput-object p2, p0, Lcom/box/boxjavalibv2/authorization/SharedLinkAuthorization;->mSharedLink:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/box/boxjavalibv2/authorization/SharedLinkAuthorization;->mPassword:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getAuthString()Ljava/lang/StringBuilder;
    .registers 4

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v0, "sbr":Ljava/lang/StringBuilder;
    const-string v1, "shared_link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/box/boxjavalibv2/authorization/SharedLinkAuthorization;->mSharedLink:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v1, p0, Lcom/box/boxjavalibv2/authorization/SharedLinkAuthorization;->mPassword:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/lang/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 79
    const-string v1, "&shared_link_password="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/box/boxjavalibv2/authorization/SharedLinkAuthorization;->mPassword:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_27
    return-object v0
.end method

.method public initOAuthForRequest()V
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/box/boxjavalibv2/authorization/SharedLinkAuthorization;->mOauth:Lcom/box/boxjavalibv2/authorization/OAuthAuthorization;

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/authorization/OAuthAuthorization;->initOAuthForRequest()V

    .line 60
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
    .line 54
    iget-object v0, p0, Lcom/box/boxjavalibv2/authorization/SharedLinkAuthorization;->mOauth:Lcom/box/boxjavalibv2/authorization/OAuthAuthorization;

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/authorization/OAuthAuthorization;->refresh()V

    .line 55
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
    .line 64
    invoke-super {p0, p1}, Lcom/box/restclientv2/authorization/DefaultRequestAuth;->setAuth(Lcom/box/restclientv2/requestsbase/IBoxRequest;)V

    .line 65
    iget-object v0, p0, Lcom/box/boxjavalibv2/authorization/SharedLinkAuthorization;->mOauth:Lcom/box/boxjavalibv2/authorization/OAuthAuthorization;

    invoke-virtual {v0, p1}, Lcom/box/boxjavalibv2/authorization/OAuthAuthorization;->setAuth(Lcom/box/restclientv2/requestsbase/IBoxRequest;)V

    .line 66
    const-string v0, "BoxApi"

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/authorization/SharedLinkAuthorization;->getAuthString()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/box/restclientv2/requestsbase/IBoxRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public setOAuthData(Lcom/box/boxjavalibv2/dao/BoxOAuthToken;)V
    .registers 3
    .param p1, "data"    # Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/box/boxjavalibv2/authorization/SharedLinkAuthorization;->mOauth:Lcom/box/boxjavalibv2/authorization/OAuthAuthorization;

    invoke-virtual {v0, p1}, Lcom/box/boxjavalibv2/authorization/OAuthAuthorization;->setOAuthData(Lcom/box/boxjavalibv2/dao/BoxOAuthToken;)V

    .line 50
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/box/boxjavalibv2/authorization/SharedLinkAuthorization;->mPassword:Ljava/lang/String;

    .line 45
    return-void
.end method
