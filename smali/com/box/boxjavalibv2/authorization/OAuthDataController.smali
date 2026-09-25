.class public Lcom/box/boxjavalibv2/authorization/OAuthDataController;
.super Ljava/lang/Object;
.source "OAuthDataController.java"

# interfaces
.implements Lcom/box/boxjavalibv2/authorization/IAuthDataController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;
    }
.end annotation


# static fields
.field private static final WAIT:I = 0xc8

.field private static final WAIT_TIME_OUT:I = 0xea60


# instance fields
.field private volatile locked:Z

.field private mAutoRefresh:Z

.field private final mClient:Lcom/box/boxjavalibv2/BoxClient;

.field private final mClientId:Ljava/lang/String;

.field private final mClientSecret:Ljava/lang/String;

.field private mDeviceId:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private volatile mOAuthToken:Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

.field private volatile mTokenState:Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

.field private mWaitTimeOut:I

.field private refreshFailException:Ljava/lang/Exception;

.field private refreshListener:Lcom/box/boxjavalibv2/authorization/OAuthRefreshListener;


# direct methods
.method public constructor <init>(Lcom/box/boxjavalibv2/BoxClient;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "boxClient"    # Lcom/box/boxjavalibv2/BoxClient;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "clientSecret"    # Ljava/lang/String;
    .param p4, "autoRefresh"    # Z

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->mDeviceId:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->mDeviceName:Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;->PRE_CREATION:Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    iput-object v0, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->mTokenState:Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    .line 35
    const v0, 0xea60

    iput v0, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->mWaitTimeOut:I

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->locked:Z

    .line 42
    iput-object p1, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->mClient:Lcom/box/boxjavalibv2/BoxClient;

    .line 43
    iput-object p2, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->mClientId:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->mClientSecret:Ljava/lang/String;

    .line 45
    iput-boolean p4, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->mAutoRefresh:Z

    .line 46
    return-void
.end method

.method private doRefresh()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 257
    sget-object v0, Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;->REFRESHING:Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->setTokenState(Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;)V

    .line 259
    iget-object v0, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->mOAuthToken:Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    if-nez v0, :cond_1d

    .line 260
    new-instance v0, Lcom/box/restclientv2/exceptions/BoxRestException;

    const-string v1, "OAuthToken is null"

    invoke-direct {v0, v1}, Lcom/box/restclientv2/exceptions/BoxRestException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->setRefreshFail(Ljava/lang/Exception;)V

    .line 261
    new-instance v0, Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->getRefreshFailException()Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 265
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->mClient:Lcom/box/boxjavalibv2/BoxClient;

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/BoxClient;->getOAuthManager()Lcom/box/boxjavalibv2/resourcemanagers/IBoxOAuthManager;

    move-result-object v0

    iget-object v1, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->mOAuthToken:Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxOAuthToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->mClientId:Ljava/lang/String;

    iget-object v3, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->mClientSecret:Ljava/lang/String;

    iget-object v4, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->mDeviceId:Ljava/lang/String;

    iget-object v5, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->mDeviceName:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/box/boxjavalibv2/resourcemanagers/IBoxOAuthManager;->refreshOAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    move-result-object v0

    iput-object v0, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->mOAuthToken:Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    .line 266
    sget-object v0, Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;->AVAILABLE:Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->setTokenState(Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;)V

    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->setRefreshFail(Ljava/lang/Exception;)V

    .line 268
    iget-object v0, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->refreshListener:Lcom/box/boxjavalibv2/authorization/OAuthRefreshListener;

    if-eqz v0, :cond_4b

    .line 269
    iget-object v0, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->refreshListener:Lcom/box/boxjavalibv2/authorization/OAuthRefreshListener;

    iget-object v1, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->mOAuthToken:Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    invoke-interface {v0, v1}, Lcom/box/boxjavalibv2/authorization/OAuthRefreshListener;->onRefresh(Lcom/box/boxjavalibv2/dao/IAuthData;)V
    :try_end_4b
    .catch Lcom/box/restclientv2/exceptions/BoxRestException; {:try_start_1d .. :try_end_4b} :catch_4c
    .catch Lcom/box/boxjavalibv2/exceptions/BoxServerException; {:try_start_1d .. :try_end_4b} :catch_5a

    .line 280
    :cond_4b
    return-void

    .line 272
    :catch_4c
    move-exception v6

    .line 273
    .local v6, "e":Lcom/box/restclientv2/exceptions/BoxRestException;
    invoke-virtual {p0, v6}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->setRefreshFail(Ljava/lang/Exception;)V

    .line 274
    new-instance v0, Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->getRefreshFailException()Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 276
    .end local v6    # "e":Lcom/box/restclientv2/exceptions/BoxRestException;
    :catch_5a
    move-exception v6

    .line 277
    .local v6, "e":Lcom/box/boxjavalibv2/exceptions/BoxServerException;
    invoke-virtual {p0, v6}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->setRefreshFail(Ljava/lang/Exception;)V

    .line 278
    new-instance v0, Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->getRefreshFailException()Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method private doWait()V
    .registers 5

    .prologue
    .line 287
    const-wide/16 v2, 0xc8

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    .line 292
    :goto_5
    return-void

    .line 289
    :catch_6
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5
.end method

.method private unlock()V
    .registers 2

    .prologue
    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->locked:Z

    .line 244
    return-void
.end method


# virtual methods
.method public addOAuthRefreshListener(Lcom/box/boxjavalibv2/authorization/OAuthRefreshListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/box/boxjavalibv2/authorization/OAuthRefreshListener;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->refreshListener:Lcom/box/boxjavalibv2/authorization/OAuthRefreshListener;

    .line 296
    return-void
.end method

.method public declared-synchronized getAndSetLock(Z)Z
    .registers 5
    .param p1, "doLock"    # Z

    .prologue
    const/4 v1, 0x1

    .line 223
    monitor-enter p0

    const/4 v0, 0x0

    .line 224
    .local v0, "lockRetrieved":Z
    if-eqz p1, :cond_11

    .line 225
    :try_start_5
    iget-boolean v1, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->locked:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_19

    if-eqz v1, :cond_c

    .line 226
    const/4 v0, 0x0

    .line 236
    :goto_a
    monitor-exit p0

    return v0

    .line 229
    :cond_c
    const/4 v1, 0x1

    :try_start_d
    iput-boolean v1, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->locked:Z

    .line 230
    const/4 v0, 0x1

    goto :goto_a

    .line 234
    :cond_11
    iget-boolean v2, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->locked:Z
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_19

    if-nez v2, :cond_17

    move v0, v1

    :goto_16
    goto :goto_a

    :cond_17
    const/4 v0, 0x0

    goto :goto_16

    .line 223
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAuthData()Lcom/box/boxjavalibv2/dao/BoxOAuthToken;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 175
    const-wide/16 v0, 0x0

    .line 176
    .local v0, "num":J
    :goto_2
    const-wide/16 v2, 0xc8

    mul-long/2addr v2, v0

    iget v4, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->mWaitTimeOut:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1d

    .line 177
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->getAndSetLock(Z)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 178
    iget-object v2, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->mOAuthToken:Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    return-object v2

    .line 181
    :cond_16
    invoke-direct {p0}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->doWait()V

    .line 182
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_2

    .line 185
    :cond_1d
    new-instance v2, Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->getRefreshFailException()Ljava/lang/Exception;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public bridge synthetic getAuthData()Lcom/box/boxjavalibv2/dao/IAuthData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->getAuthData()Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    move-result-object v0

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->mClient:Lcom/box/boxjavalibv2/BoxClient;

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/BoxClient;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/box/boxjavalibv2/IBoxConfig;->getOAuthUrlAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientSecret()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->mClientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshFailException()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->refreshFailException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->mClient:Lcom/box/boxjavalibv2/BoxClient;

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/BoxClient;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/box/boxjavalibv2/IBoxConfig;->getOAuthUrlScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenState()Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->mTokenState:Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    return-object v0
.end method

.method public getUrlPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->mClient:Lcom/box/boxjavalibv2/BoxClient;

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/BoxClient;->getConfig()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/box/boxjavalibv2/IBoxConfig;->getOAuthWebUrlPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .registers 2

    .prologue
    .line 162
    sget-object v0, Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;->AVAILABLE:Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->setTokenState(Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;)V

    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->setRefreshFail(Ljava/lang/Exception;)V

    .line 164
    invoke-direct {p0}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->unlock()V

    .line 165
    return-void
.end method

.method public refresh()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 196
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->getAndSetLock(Z)Z

    move-result v0

    if-nez v0, :cond_b

    .line 197
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->getAuthData()Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    .line 213
    :goto_a
    return-void

    .line 201
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->getTokenState()Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    move-result-object v0

    sget-object v1, Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;->FAIL:Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    if-eq v0, v1, :cond_17

    iget-boolean v0, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->mAutoRefresh:Z

    if-nez v0, :cond_2b

    .line 202
    :cond_17
    sget-object v0, Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;->FAIL:Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->setTokenState(Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;)V

    .line 203
    new-instance v0, Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->getRefreshFailException()Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;-><init>(Ljava/lang/Exception;)V

    throw v0
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_26

    .line 210
    :catchall_26
    move-exception v0

    invoke-direct {p0}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->unlock()V

    throw v0

    .line 206
    :cond_2b
    :try_start_2b
    invoke-direct {p0}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->doRefresh()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_26

    .line 210
    invoke-direct {p0}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->unlock()V

    goto :goto_a
.end method

.method public setAutoRefreshOAuth(Z)V
    .registers 2
    .param p1, "autoRefresh"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->mAutoRefresh:Z

    .line 55
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .registers 2
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->mDeviceId:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .registers 2
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->mDeviceName:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setOAuthData(Lcom/box/boxjavalibv2/dao/BoxOAuthToken;)V
    .registers 2
    .param p1, "token"    # Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->mOAuthToken:Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    .line 103
    return-void
.end method

.method public setRefreshFail(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "refreshFailException"    # Ljava/lang/Exception;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->refreshFailException:Ljava/lang/Exception;

    .line 153
    if-eqz p1, :cond_9

    .line 154
    sget-object v0, Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;->FAIL:Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->setTokenState(Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;)V

    .line 156
    :cond_9
    return-void
.end method

.method public setTokenState(Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;)V
    .registers 2
    .param p1, "tokenState"    # Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->mTokenState:Lcom/box/boxjavalibv2/authorization/OAuthDataController$OAuthTokenState;

    .line 138
    return-void
.end method

.method public setWaitTimeOut(I)V
    .registers 2
    .param p1, "timeout"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/box/boxjavalibv2/authorization/OAuthDataController;->mWaitTimeOut:I

    .line 64
    return-void
.end method
