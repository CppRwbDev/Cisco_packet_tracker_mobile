.class public Lcom/box/restclientv2/authorization/DefaultAuthHeaderAuth;
.super Lcom/box/restclientv2/authorization/DefaultRequestAuth;
.source "DefaultAuthHeaderAuth.java"


# instance fields
.field private final mApiKey:Ljava/lang/String;

.field private final mAuthToken:Ljava/lang/String;

.field protected final mDeviceId:Ljava/lang/String;

.field protected final mDeviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "authToken"    # Ljava/lang/String;
    .param p2, "apiKey"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/box/restclientv2/authorization/DefaultRequestAuth;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/box/restclientv2/authorization/DefaultAuthHeaderAuth;->mAuthToken:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/box/restclientv2/authorization/DefaultAuthHeaderAuth;->mApiKey:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/box/restclientv2/authorization/DefaultAuthHeaderAuth;->mDeviceId:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/box/restclientv2/authorization/DefaultAuthHeaderAuth;->mDeviceName:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getAuthString()Ljava/lang/StringBuilder;
    .registers 6

    .prologue
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .local v1, "sbr":Ljava/lang/StringBuilder;
    const-string v2, "BoxAuth api_key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/box/restclientv2/authorization/DefaultAuthHeaderAuth;->mApiKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&auth_token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/box/restclientv2/authorization/DefaultAuthHeaderAuth;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :try_start_1c
    const-string v2, "&device_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/box/restclientv2/authorization/DefaultAuthHeaderAuth;->mDeviceId:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v2, "&device_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/box/restclientv2/authorization/DefaultAuthHeaderAuth;->mDeviceName:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1c .. :try_end_3e} :catch_3f

    .line 63
    :goto_3e
    return-object v1

    .line 60
    :catch_3f
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3e
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
    .line 43
    invoke-super {p0, p1}, Lcom/box/restclientv2/authorization/DefaultRequestAuth;->setAuth(Lcom/box/restclientv2/requestsbase/IBoxRequest;)V

    .line 45
    const-string v0, "Authorization"

    invoke-virtual {p0}, Lcom/box/restclientv2/authorization/DefaultAuthHeaderAuth;->getAuthString()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/box/restclientv2/requestsbase/IBoxRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method
