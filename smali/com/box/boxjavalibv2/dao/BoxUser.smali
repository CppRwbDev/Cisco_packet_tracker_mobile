.class public Lcom/box/boxjavalibv2/dao/BoxUser;
.super Lcom/box/boxjavalibv2/dao/BoxUserBase;
.source "BoxUser.java"


# static fields
.field public static final FIELD_ADDRESS:Ljava/lang/String; = "address"

.field public static final FIELD_AVATAR_URL:Ljava/lang/String; = "avatar_url"

.field public static final FIELD_CAN_SEE_MANAGED_USERS:Ljava/lang/String; = "can_see_managed_users"

.field public static final FIELD_ENTERPRISE:Ljava/lang/String; = "enterprise"

.field public static final FIELD_EXEMPT_FROM_DEVICE_LIMITS:Ljava/lang/String; = "is_exempt_from_device_limits"

.field public static final FIELD_EXEMPT_FROM_LOGIN_VERIFICATION:Ljava/lang/String; = "is_exempt_from_login_verification"

.field public static final FIELD_IS_EXEMPT_FROM_DEVICE_LIMITS:Ljava/lang/String; = "is_exempt_from_device_limits"

.field public static final FIELD_IS_EXEMPT_FROM_LOGIN_VERIFICATION:Ljava/lang/String; = "is_exempt_from_login_verficiation"

.field public static final FIELD_IS_SYNC_ENABLED:Ljava/lang/String; = "is_sync_enabled"

.field public static final FIELD_JOB_TITLE:Ljava/lang/String; = "job_title"

.field public static final FIELD_LANGUAGE:Ljava/lang/String; = "language"

.field public static final FIELD_LOGIN:Ljava/lang/String; = "login"

.field public static final FIELD_MAX_UPLOAD_SIZE:Ljava/lang/String; = "max_upload_size"

.field public static final FIELD_MY_TAGS:Ljava/lang/String; = "my_tags"

.field public static final FIELD_PHONE:Ljava/lang/String; = "phone"

.field public static final FIELD_ROLE:Ljava/lang/String; = "role"

.field public static final FIELD_SPACE_AMOUNT:Ljava/lang/String; = "space_amount"

.field public static final FIELD_SPACE_USED:Ljava/lang/String; = "space_used"

.field public static final FIELD_STATUS:Ljava/lang/String; = "status"

.field public static final FIELD_TRACKING_CODES:Ljava/lang/String; = "tracking_codes"

.field public static final ROLE_ADMIN:Ljava/lang/String; = "admin"

.field public static final ROLE_COADMIN:Ljava/lang/String; = "coadmin"

.field public static final ROLE_USER:Ljava/lang/String; = "user"

.field public static final STATUS_ACTIVE:Ljava/lang/String; = "active"

.field public static final STATUS_INACTIVE:Ljava/lang/String; = "inactive"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxUserBase;-><init>()V

    .line 58
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;->USER:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxUser;->setType(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/BoxUser;)V
    .registers 2
    .param p1, "obj"    # Lcom/box/boxjavalibv2/dao/BoxUser;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxUserBase;-><init>(Lcom/box/boxjavalibv2/dao/BoxUserBase;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V
    .registers 2
    .param p1, "in"    # Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxUserBase;-><init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V

    .line 418
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxUserBase;-><init>(Ljava/util/Map;)V

    .line 77
    return-void
.end method

.method private setAddress(Ljava/lang/String;)V
    .registers 3
    .param p1, "address"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "address"
    .end annotation

    .prologue
    .line 350
    const-string v0, "address"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    return-void
.end method

.method private setAvatarUrl(Ljava/lang/String;)V
    .registers 3
    .param p1, "avatarUrl"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "avatar_url"
    .end annotation

    .prologue
    .line 371
    const-string v0, "avatar_url"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 372
    return-void
.end method

.method private setCanSeeManagedUsers(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "canSeeManagedUsers"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "can_see_managed_users"
    .end annotation

    .prologue
    .line 245
    const-string v0, "can_see_managed_users"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    return-void
.end method

.method private setEnterprise(Lcom/box/boxjavalibv2/dao/BoxEnterprise;)V
    .registers 3
    .param p1, "enterprise"    # Lcom/box/boxjavalibv2/dao/BoxEnterprise;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "enterprise"
    .end annotation

    .prologue
    .line 428
    const-string v0, "enterprise"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 429
    return-void
.end method

.method private setExemptFromDeviceLimits(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "isExemptFromDeviceLimits"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_exempt_from_device_limits"
    .end annotation

    .prologue
    .line 392
    const-string v0, "is_exempt_from_device_limits"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 393
    return-void
.end method

.method private setExemptFromLoginVerification(Z)V
    .registers 4
    .param p1, "isExemptFromLoginVerification"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_exempt_from_login_verification"
    .end annotation

    .prologue
    .line 413
    const-string v0, "is_exempt_from_login_verification"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/box/boxjavalibv2/dao/BoxUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    return-void
.end method

.method private setJob_title(Ljava/lang/String;)V
    .registers 3
    .param p1, "jobTitle"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "job_title"
    .end annotation

    .prologue
    .line 308
    const-string v0, "job_title"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 309
    return-void
.end method

.method private setLanguage(Ljava/lang/String;)V
    .registers 3
    .param p1, "language"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "language"
    .end annotation

    .prologue
    .line 139
    const-string v0, "language"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method private setLogin(Ljava/lang/String;)V
    .registers 3
    .param p1, "login"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "login"
    .end annotation

    .prologue
    .line 97
    const-string v0, "login"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method private setMaxUploadSize(Ljava/lang/Double;)V
    .registers 3
    .param p1, "max_upload_size"    # Ljava/lang/Double;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "max_upload_size"
    .end annotation

    .prologue
    .line 202
    const-string v0, "max_upload_size"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    return-void
.end method

.method private setMyTags([Ljava/lang/String;)V
    .registers 3
    .param p1, "myTags"    # [Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "my_tags"
    .end annotation

    .prologue
    .line 449
    const-string v0, "my_tags"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 450
    return-void
.end method

.method private setPhone(Ljava/lang/String;)V
    .registers 3
    .param p1, "phone"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "phone"
    .end annotation

    .prologue
    .line 329
    const-string v0, "phone"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 330
    return-void
.end method

.method private setRole(Ljava/lang/String;)V
    .registers 3
    .param p1, "role"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "role"
    .end annotation

    .prologue
    .line 118
    const-string v0, "role"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method private setSpaceAmount(Ljava/lang/Double;)V
    .registers 3
    .param p1, "spaceAmount"    # Ljava/lang/Double;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "space_amount"
    .end annotation

    .prologue
    .line 160
    const-string v0, "space_amount"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method private setSpaceUsed(Ljava/lang/Double;)V
    .registers 3
    .param p1, "spaceUsed"    # Ljava/lang/Double;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "space_used"
    .end annotation

    .prologue
    .line 181
    const-string v0, "space_used"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method private setStatus(Ljava/lang/String;)V
    .registers 3
    .param p1, "status"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "status"
    .end annotation

    .prologue
    .line 287
    const-string v0, "status"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 288
    return-void
.end method

.method private setSyncEnabled(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "isSyncEnabled"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_sync_enabled"
    .end annotation

    .prologue
    .line 266
    const-string v0, "is_sync_enabled"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 267
    return-void
.end method

.method private setTrackingCodes(Ljava/util/Map;)V
    .registers 3
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "tracking_codes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "trackingCodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "tracking_codes"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 225
    return-void
.end method


# virtual methods
.method public canSeeManagedUsers()Ljava/lang/Boolean;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "can_see_managed_users"
    .end annotation

    .prologue
    .line 234
    const-string v0, "can_see_managed_users"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxUser;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "address"
    .end annotation

    .prologue
    .line 339
    const-string v0, "address"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxUser;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "avatar_url"
    .end annotation

    .prologue
    .line 360
    const-string v0, "avatar_url"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxUser;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEnterprise()Lcom/box/boxjavalibv2/dao/BoxEnterprise;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "enterprise"
    .end annotation

    .prologue
    .line 438
    const-string v0, "enterprise"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxUser;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxEnterprise;

    return-object v0
.end method

.method public getJobTitle()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "job_title"
    .end annotation

    .prologue
    .line 297
    const-string v0, "job_title"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxUser;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "language"
    .end annotation

    .prologue
    .line 128
    const-string v0, "language"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxUser;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLogin()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "login"
    .end annotation

    .prologue
    .line 86
    const-string v0, "login"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxUser;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMaxUploadSize()Ljava/lang/Double;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "max_upload_size"
    .end annotation

    .prologue
    .line 191
    const-string v0, "max_upload_size"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxUser;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public getMyTags()[Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "my_tags"
    .end annotation

    .prologue
    .line 459
    const-string v0, "my_tags"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxUser;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "phone"
    .end annotation

    .prologue
    .line 318
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxUser;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "role"
    .end annotation

    .prologue
    .line 107
    const-string v0, "role"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxUser;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSpaceAmount()Ljava/lang/Double;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "space_amount"
    .end annotation

    .prologue
    .line 149
    const-string v0, "space_amount"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxUser;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public getSpaceUsed()Ljava/lang/Double;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "space_used"
    .end annotation

    .prologue
    .line 170
    const-string v0, "space_used"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxUser;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "status"
    .end annotation

    .prologue
    .line 276
    const-string v0, "status"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxUser;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingCodes()Ljava/util/Map;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "tracking_codes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    const-string v0, "tracking_codes"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxUser;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public isExemptFromDeviceLimits()Ljava/lang/Boolean;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_exempt_from_device_limits"
    .end annotation

    .prologue
    .line 381
    const-string v0, "is_exempt_from_device_limits"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxUser;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public isExemptFromLoginVerification()Ljava/lang/Boolean;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_exempt_from_login_verification"
    .end annotation

    .prologue
    .line 402
    const-string v0, "is_exempt_from_login_verification"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxUser;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public isSyncEnabled()Ljava/lang/Boolean;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_sync_enabled"
    .end annotation

    .prologue
    .line 255
    const-string v0, "is_sync_enabled"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxUser;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method
