.class public Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;
.super Lcom/box/boxjavalibv2/requests/requestobjects/BoxSimpleUserRequestObject;
.source "BoxUserRequestObject.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxSimpleUserRequestObject;-><init>()V

    return-void
.end method

.method public static createEnterpriseUserRequestObject(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;
    .registers 4
    .param p0, "login"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    new-instance v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;-><init>()V

    .line 23
    .local v0, "obj":Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;
    invoke-virtual {v0, p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;->setLogin(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;->setName(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;

    move-result-object v1

    return-object v1
.end method

.method public static updateUserInfoRequestObject(Z)Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;
    .registers 2
    .param p0, "notify"    # Z

    .prologue
    .line 35
    new-instance v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;-><init>()V

    .line 36
    .local v0, "obj":Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;
    invoke-virtual {v0, p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;->setNotifyUser(Z)Lcom/box/boxjavalibv2/requests/requestobjects/BoxSimpleUserRequestObject;

    .line 37
    return-object v0
.end method


# virtual methods
.method public setAddress(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;
    .registers 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 114
    const-string v0, "address"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-object p0
.end method

.method public setAvatarUrl(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;
    .registers 3
    .param p1, "avatarUrl"    # Ljava/lang/String;

    .prologue
    .line 181
    const-string v0, "avatar_url"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    return-object p0
.end method

.method public setCanSeeManagedUsers(Z)Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;
    .registers 4
    .param p1, "canSeeManagedUsers"    # Z

    .prologue
    .line 159
    const-string v0, "can_see_managed_users"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-object p0
.end method

.method public setEnterprise(Lcom/box/boxjavalibv2/jsonentities/BoxEnterpriseRequestEntity;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;
    .registers 3
    .param p1, "enterprise"    # Lcom/box/boxjavalibv2/jsonentities/BoxEnterpriseRequestEntity;

    .prologue
    .line 211
    const-string v0, "enterprise"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    return-object p0
.end method

.method public setExemptFromDeviceLimits(Z)Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;
    .registers 4
    .param p1, "exemptFromDeviceLimits"    # Z

    .prologue
    .line 191
    const-string v0, "is_exempt_from_device_limits"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    return-object p0
.end method

.method public setExemptFromLoginVerification(Z)Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;
    .registers 4
    .param p1, "exemptFromLoginVerification"    # Z

    .prologue
    .line 201
    const-string v0, "is_exempt_from_login_verification"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    return-object p0
.end method

.method public setJobTitle(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;
    .registers 3
    .param p1, "jobTitle"    # Ljava/lang/String;

    .prologue
    .line 94
    const-string v0, "job_title"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;
    .registers 3
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 74
    const-string v0, "language"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-object p0
.end method

.method public setLogin(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;
    .registers 3
    .param p1, "login"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string v0, "login"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-object p0
.end method

.method public setMaxUploadSize(Ljava/lang/Double;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;
    .registers 3
    .param p1, "max_upload_size"    # Ljava/lang/Double;

    .prologue
    .line 135
    const-string v0, "max_upload_size"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-object p0
.end method

.method public varargs setMyTags([Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;
    .registers 3
    .param p1, "myTags"    # [Ljava/lang/String;

    .prologue
    .line 222
    const-string v0, "my_tags"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-object p0
.end method

.method public setPhone(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;
    .registers 3
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 104
    const-string v0, "phone"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-object p0
.end method

.method public setRole(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;
    .registers 3
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    .line 64
    const-string v0, "role"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-object p0
.end method

.method public setSpaceAmount(D)Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;
    .registers 6
    .param p1, "spaceAmount"    # D

    .prologue
    .line 124
    const-string v0, "space_amount"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-object p0
.end method

.method public setStatus(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;
    .registers 3
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 170
    const-string v0, "status"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-object p0
.end method

.method public setSyncEnabled(Z)Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;
    .registers 4
    .param p1, "isSyncEnabled"    # Z

    .prologue
    .line 84
    const-string v0, "is_sync_enabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-object p0
.end method

.method public setTrackingCodes(Ljava/util/LinkedHashMap;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "trackingCodes":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/box/boxjavalibv2/jsonentities/PairArrayJSONStringEntity;

    invoke-direct {v2}, Lcom/box/boxjavalibv2/jsonentities/PairArrayJSONStringEntity;-><init>()V

    .line 146
    .local v2, "list":Lcom/box/boxjavalibv2/jsonentities/PairArrayJSONStringEntity;
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 147
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/box/boxjavalibv2/jsonentities/PairArrayJSONStringEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 149
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_25
    const-string v3, "tracking_codes"

    invoke-virtual {p0, v3, v2}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxUserRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-object p0
.end method
