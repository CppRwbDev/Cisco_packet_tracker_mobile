.class public Lcom/box/boxjavalibv2/authorization/SharedItemAuth;
.super Lcom/box/restclientv2/authorization/DefaultAuthHeaderAuth;
.source "SharedItemAuth.java"


# instance fields
.field private final password:Ljava/lang/String;

.field private final sharedLink:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "authToken"    # Ljava/lang/String;
    .param p2, "apiKey"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;
    .param p5, "sharedLink"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/box/restclientv2/authorization/DefaultAuthHeaderAuth;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iput-object p5, p0, Lcom/box/boxjavalibv2/authorization/SharedItemAuth;->sharedLink:Ljava/lang/String;

    .line 36
    iput-object p6, p0, Lcom/box/boxjavalibv2/authorization/SharedItemAuth;->password:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getAuthString()Ljava/lang/StringBuilder;
    .registers 4

    .prologue
    .line 42
    invoke-super {p0}, Lcom/box/restclientv2/authorization/DefaultAuthHeaderAuth;->getAuthString()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&shared_link="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/box/boxjavalibv2/authorization/SharedItemAuth;->sharedLink:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 43
    .local v0, "sbr":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/box/boxjavalibv2/authorization/SharedItemAuth;->password:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/lang/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 44
    const-string v1, "&shared_link_password="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/box/boxjavalibv2/authorization/SharedItemAuth;->password:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_2b
    const-string v1, "&device_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/box/boxjavalibv2/authorization/SharedItemAuth;->mDeviceId:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, "&device_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/box/boxjavalibv2/authorization/SharedItemAuth;->mDeviceName:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    return-object v0
.end method
