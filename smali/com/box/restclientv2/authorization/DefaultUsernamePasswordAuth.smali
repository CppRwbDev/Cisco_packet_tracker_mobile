.class public Lcom/box/restclientv2/authorization/DefaultUsernamePasswordAuth;
.super Lcom/box/restclientv2/authorization/DefaultRequestAuth;
.source "DefaultUsernamePasswordAuth.java"


# static fields
.field static final ACTION:Ljava/lang/String; = "action"

.field static final AUTH_ACTION:Ljava/lang/String; = "authorization"

.field static final LOGIN:Ljava/lang/String; = "login"

.field static final PASSWORD:Ljava/lang/String; = "password"


# instance fields
.field private final password:Ljava/lang/String;

.field private final userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/box/restclientv2/authorization/DefaultRequestAuth;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/box/restclientv2/authorization/DefaultUsernamePasswordAuth;->userName:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/box/restclientv2/authorization/DefaultUsernamePasswordAuth;->password:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/box/restclientv2/authorization/DefaultUsernamePasswordAuth;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/box/restclientv2/authorization/DefaultUsernamePasswordAuth;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setAuth(Lcom/box/restclientv2/requestsbase/IBoxRequest;)V
    .registers 5
    .param p1, "request"    # Lcom/box/restclientv2/requestsbase/IBoxRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/box/restclientv2/authorization/DefaultRequestAuth;->setAuth(Lcom/box/restclientv2/requestsbase/IBoxRequest;)V

    move-object v0, p1

    .line 56
    check-cast v0, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;

    .line 57
    .local v0, "defaultRequest":Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;
    const-string v1, "password"

    invoke-virtual {p0}, Lcom/box/restclientv2/authorization/DefaultUsernamePasswordAuth;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->addQueryParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "login"

    invoke-virtual {p0}, Lcom/box/restclientv2/authorization/DefaultUsernamePasswordAuth;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->addQueryParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "action"

    const-string v2, "authorization"

    invoke-virtual {v0, v1, v2}, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;->addQueryParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method
