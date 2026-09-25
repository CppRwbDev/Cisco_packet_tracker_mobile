.class public Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "OAuthWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/box/boxandroidlibv2/views/OAuthWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OAuthWebViewClient"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;
    }
.end annotation


# static fields
.field private static dialog:Landroid/app/Dialog;


# instance fields
.field private allowShowRedirectPage:Z

.field private deviceId:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mBoxClient:Lcom/box/boxjavalibv2/BoxClient;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/box/boxandroidlibv2/viewlisteners/OAuthWebViewListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mwebViewData:Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;

.field private oauthAPICallState:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;

.field private sslErrorDialogButtonClicked:Z


# direct methods
.method public constructor <init>(Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;Landroid/app/Activity;Lcom/box/boxjavalibv2/BoxClient;)V
    .registers 5
    .param p1, "webViewData"    # Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "boxClient"    # Lcom/box/boxjavalibv2/BoxClient;

    .prologue
    .line 229
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->allowShowRedirectPage:Z

    .line 208
    sget-object v0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;->PRE:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;

    iput-object v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->oauthAPICallState:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->mListeners:Ljava/util/List;

    .line 230
    iput-object p1, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->mwebViewData:Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;

    .line 231
    iput-object p2, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->mActivity:Landroid/app/Activity;

    .line 232
    iput-object p3, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->mBoxClient:Lcom/box/boxjavalibv2/BoxClient;

    .line 233
    return-void
.end method

.method static synthetic access$000(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;Ljava/lang/Exception;)V
    .registers 2
    .param p0, "x0"    # Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;
    .param p1, "x1"    # Ljava/lang/Exception;

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->fireExceptions(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$100(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;)Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;
    .registers 2
    .param p0, "x0"    # Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->mwebViewData:Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;

    return-object v0
.end method

.method static synthetic access$200(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;)Lcom/box/boxjavalibv2/BoxClient;
    .registers 2
    .param p0, "x0"    # Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->mBoxClient:Lcom/box/boxjavalibv2/BoxClient;

    return-object v0
.end method

.method static synthetic access$500(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;)V
    .registers 2
    .param p0, "x0"    # Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;
    .param p1, "x1"    # Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->setOAuthAPICallState(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;)V
    .registers 1
    .param p0, "x0"    # Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->dismissSpinner()V

    return-void
.end method

.method static synthetic access$700(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;Lcom/box/boxjavalibv2/authorization/IAuthEvent;Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;)V
    .registers 3
    .param p0, "x0"    # Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;
    .param p1, "x1"    # Lcom/box/boxjavalibv2/authorization/IAuthEvent;
    .param p2, "x2"    # Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;

    .prologue
    .line 198
    invoke-direct {p0, p1, p2}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->fireEvents(Lcom/box/boxjavalibv2/authorization/IAuthEvent;Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;)V

    return-void
.end method

.method static synthetic access$800(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;)Z
    .registers 2
    .param p0, "x0"    # Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->sslErrorDialogButtonClicked:Z

    return v0
.end method

.method static synthetic access$802(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;
    .param p1, "x1"    # Z

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->sslErrorDialogButtonClicked:Z

    return p1
.end method

.method static synthetic access$900(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;Landroid/net/http/SslError;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;
    .param p1, "x1"    # Landroid/net/http/SslError;
    .param p2, "x2"    # Z

    .prologue
    .line 198
    invoke-direct {p0, p1, p2}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->sendoutSslError(Landroid/net/http/SslError;Z)V

    return-void
.end method

.method private dismissSpinner()V
    .registers 2

    .prologue
    .line 383
    sget-object v0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 385
    :try_start_c
    sget-object v0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_11} :catch_15

    .line 389
    :goto_11
    const/4 v0, 0x0

    sput-object v0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->dialog:Landroid/app/Dialog;

    .line 391
    :cond_14
    return-void

    .line 386
    :catch_15
    move-exception v0

    goto :goto_11
.end method

.method private fireEvents(Lcom/box/boxjavalibv2/authorization/IAuthEvent;Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;)V
    .registers 6
    .param p1, "event"    # Lcom/box/boxjavalibv2/authorization/IAuthEvent;
    .param p2, "message"    # Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;

    .prologue
    .line 523
    iget-object v1, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;

    .line 524
    .local v0, "listener":Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;
    if-eqz v0, :cond_6

    .line 525
    invoke-interface {v0, p1, p2}, Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;->onAuthFlowEvent(Lcom/box/boxjavalibv2/authorization/IAuthEvent;Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;)V

    goto :goto_6

    .line 528
    .end local v0    # "listener":Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;
    :cond_18
    return-void
.end method

.method private fireExceptions(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 515
    iget-object v1, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;

    .line 516
    .local v0, "listener":Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;
    if-eqz v0, :cond_6

    .line 517
    invoke-interface {v0, p1}, Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;->onAuthFlowException(Ljava/lang/Exception;)V

    goto :goto_6

    .line 520
    .end local v0    # "listener":Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;
    :cond_18
    return-void
.end method

.method private getResponseValueFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 504
    new-instance v0, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;

    invoke-direct {v0, p1}, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;-><init>(Ljava/lang/String;)V

    .line 505
    .local v0, "builder":Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;
    invoke-virtual {v0}, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->getQueryParams()Ljava/util/List;

    move-result-object v2

    .line 506
    .local v2, "query":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 507
    .local v1, "pair":Lorg/apache/http/NameValuePair;
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->mwebViewData:Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;

    invoke-virtual {v5}, Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;->getResponseType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 508
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 511
    .end local v1    # "pair":Lorg/apache/http/NameValuePair;
    :goto_2d
    return-object v3

    :cond_2e
    const/4 v3, 0x0

    goto :goto_2d
.end method

.method private sendoutSslError(Landroid/net/http/SslError;Z)V
    .registers 6
    .param p1, "error"    # Landroid/net/http/SslError;
    .param p2, "canceled"    # Z

    .prologue
    .line 487
    iget-object v1, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxandroidlibv2/viewlisteners/OAuthWebViewListener;

    .line 488
    .local v0, "listener":Lcom/box/boxandroidlibv2/viewlisteners/OAuthWebViewListener;
    if-eqz v0, :cond_6

    .line 489
    invoke-virtual {v0, p1, p2}, Lcom/box/boxandroidlibv2/viewlisteners/OAuthWebViewListener;->onSslError(Landroid/net/http/SslError;Z)V

    goto :goto_6

    .line 492
    .end local v0    # "listener":Lcom/box/boxandroidlibv2/viewlisteners/OAuthWebViewListener;
    :cond_18
    return-void
.end method

.method private setOAuthAPICallState(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;)V
    .registers 2
    .param p1, "state"    # Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->oauthAPICallState:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;

    .line 246
    return-void
.end method

.method private startMakingOAuthAPICall(Ljava/lang/String;Landroid/webkit/WebView;)V
    .registers 7
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 330
    iget-object v2, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->oauthAPICallState:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;

    sget-object v3, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;->PRE:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;

    if-eq v2, v3, :cond_7

    .line 380
    :goto_6
    return-void

    .line 334
    :cond_7
    sget-object v2, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;->STARTED:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;

    iput-object v2, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->oauthAPICallState:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;

    .line 336
    :try_start_b
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->showDialogWhileWaitingForAuthenticationAPICall()Landroid/app/Dialog;

    move-result-object v2

    sput-object v2, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->dialog:Landroid/app/Dialog;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_27

    .line 344
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->allowShowRedirectPage()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 345
    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 347
    :cond_1b
    new-instance v1, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$3;

    invoke-direct {v1, p0, p1}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$3;-><init>(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;Ljava/lang/String;)V

    .line 379
    .local v1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Lorg/apache/commons/lang/ObjectUtils$Null;Lorg/apache/commons/lang/ObjectUtils$Null;Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;>;"
    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/commons/lang/ObjectUtils$Null;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_6

    .line 337
    .end local v1    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Lorg/apache/commons/lang/ObjectUtils$Null;Lorg/apache/commons/lang/ObjectUtils$Null;Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;>;"
    :catch_27
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    sput-object v2, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->dialog:Landroid/app/Dialog;

    goto :goto_6
.end method


# virtual methods
.method public addListener(Lcom/box/boxandroidlibv2/viewlisteners/OAuthWebViewListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/box/boxandroidlibv2/viewlisteners/OAuthWebViewListener;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    return-void
.end method

.method public allowShowRedirectPage()Z
    .registers 2

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->allowShowRedirectPage:Z

    return v0
.end method

.method public destroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 481
    iget-object v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 482
    iput-object v1, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->mBoxClient:Lcom/box/boxjavalibv2/BoxClient;

    .line 483
    iput-object v1, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->mActivity:Landroid/app/Activity;

    .line 484
    return-void
.end method

.method protected handleReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 475
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 309
    sget-object v0, Lcom/box/boxjavalibv2/events/OAuthEvent;->PAGE_FINISHED:Lcom/box/boxjavalibv2/events/OAuthEvent;

    new-instance v1, Lcom/box/boxandroidlibv2/viewlisteners/StringMessage;

    const-string v2, "url"

    invoke-direct {v1, v2, p2}, Lcom/box/boxandroidlibv2/viewlisteners/StringMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->fireEvents(Lcom/box/boxjavalibv2/authorization/IAuthEvent;Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;)V

    .line 310
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 11
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 250
    iget-object v3, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;

    .line 251
    .local v2, "listener":Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;
    if-eqz v2, :cond_6

    .line 252
    sget-object v4, Lcom/box/boxjavalibv2/events/OAuthEvent;->PAGE_STARTED:Lcom/box/boxjavalibv2/events/OAuthEvent;

    new-instance v5, Lcom/box/boxandroidlibv2/viewlisteners/StringMessage;

    const-string v6, "url"

    invoke-direct {v5, v6, p2}, Lcom/box/boxandroidlibv2/viewlisteners/StringMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4, v5}, Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;->onAuthFlowEvent(Lcom/box/boxjavalibv2/authorization/IAuthEvent;Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;)V

    goto :goto_6

    .line 256
    .end local v2    # "listener":Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;
    :cond_21
    const/4 v0, 0x0

    .line 258
    .local v0, "code":Ljava/lang/String;
    :try_start_22
    invoke-direct {p0, p2}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->getResponseValueFromUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_25
    .catch Ljava/net/URISyntaxException; {:try_start_22 .. :try_end_25} :catch_4f

    move-result-object v0

    .line 262
    :goto_26
    invoke-static {v0}, Lorg/apache/commons/lang/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 263
    iget-object v3, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_32
    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;

    .line 264
    .restart local v2    # "listener":Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;
    if-eqz v2, :cond_32

    .line 265
    new-instance v4, Lcom/box/boxandroidlibv2/viewlisteners/StringMessage;

    iget-object v5, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->mwebViewData:Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;

    invoke-virtual {v5}, Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;->getResponseType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/box/boxandroidlibv2/viewlisteners/StringMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;->onAuthFlowMessage(Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;)V

    goto :goto_32

    .line 259
    .end local v2    # "listener":Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;
    :catch_4f
    move-exception v1

    .line 260
    .local v1, "e":Ljava/net/URISyntaxException;
    invoke-direct {p0, v1}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->fireExceptions(Ljava/lang/Exception;)V

    goto :goto_26

    .line 268
    .end local v1    # "e":Ljava/net/URISyntaxException;
    :cond_54
    invoke-direct {p0, v0, p1}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->startMakingOAuthAPICall(Ljava/lang/String;Landroid/webkit/WebView;)V

    .line 270
    :cond_57
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->allowShowRedirectPage()Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->oauthAPICallState:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;

    sget-object v2, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;->PRE:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;

    if-eq v1, v2, :cond_d

    .line 405
    :cond_c
    return-void

    .line 400
    :cond_d
    iget-object v1, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxandroidlibv2/viewlisteners/OAuthWebViewListener;

    .line 401
    .local v0, "listener":Lcom/box/boxandroidlibv2/viewlisteners/OAuthWebViewListener;
    if-eqz v0, :cond_13

    .line 402
    invoke-virtual {v0, p2, p3, p4}, Lcom/box/boxandroidlibv2/viewlisteners/OAuthWebViewListener;->onError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 282
    iget-object v4, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->mListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;

    .line 283
    .local v1, "listener":Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;
    sget-object v5, Lcom/box/boxjavalibv2/events/OAuthEvent;->AUTH_REQUEST_RECEIVED:Lcom/box/boxjavalibv2/events/OAuthEvent;

    new-instance v6, Lcom/box/boxandroidlibv2/viewlisteners/StringMessage;

    invoke-direct {v6, p3, p4}, Lcom/box/boxandroidlibv2/viewlisteners/StringMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5, v6}, Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;->onAuthFlowEvent(Lcom/box/boxjavalibv2/authorization/IAuthEvent;Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;)V

    goto :goto_6

    .line 285
    .end local v1    # "listener":Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;
    :cond_1d
    iget-object v4, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 286
    .local v0, "factory":Landroid/view/LayoutInflater;
    sget v4, Lcom/box/boxandroidlibv2/R$layout;->boxandroidlibv2_alert_dialog_text_entry:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 288
    .local v3, "textEntryView":Landroid/view/View;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lcom/box/boxandroidlibv2/R$string;->boxandroidlibv2_alert_dialog_text_entry:I

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/box/boxandroidlibv2/R$string;->boxandroidlibv2_alert_dialog_ok:I

    new-instance v6, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$2;

    invoke-direct {v6, p0, v3, p2}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$2;-><init>(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;Landroid/view/View;Landroid/webkit/HttpAuthHandler;)V

    .line 289
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/box/boxandroidlibv2/R$string;->boxandroidlibv2_alert_dialog_cancel:I

    new-instance v6, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$1;

    invoke-direct {v6, p0}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$1;-><init>(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;)V

    .line 297
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 303
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 304
    .local v2, "loginAlert":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 305
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 11
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 409
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 410
    .local v1, "resources":Landroid/content/res/Resources;
    new-instance v2, Ljava/lang/StringBuilder;

    sget v4, Lcom/box/boxandroidlibv2/R$string;->boxandroidlibv2_There_are_problems_with_the_security_certificate_for_this_site:I

    .line 411
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    .local v2, "sslErrorMessage":Ljava/lang/StringBuilder;
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v4

    packed-switch v4, :pswitch_data_ac

    .line 434
    sget v4, Lcom/box/boxandroidlibv2/R$string;->boxandroidlibv2_ssl_error_warning_INVALID:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 437
    .local v3, "sslErrorType":Ljava/lang/String;
    :goto_25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    sget v4, Lcom/box/boxandroidlibv2/R$string;->boxandroidlibv2_ssl_should_not_proceed:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->sslErrorDialogButtonClicked:Z

    .line 442
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lcom/box/boxandroidlibv2/R$string;->boxandroidlibv2_Security_Warning:I

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 443
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/box/boxandroidlibv2/R$drawable;->boxandroidlibv2_dialog_warning:I

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/box/boxandroidlibv2/R$string;->boxandroidlibv2_Continue:I

    new-instance v6, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$5;

    invoke-direct {v6, p0, p2, p3}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$5;-><init>(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 444
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/box/boxandroidlibv2/R$string;->boxandroidlibv2_Go_back:I

    new-instance v6, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$4;

    invoke-direct {v6, p0, p2, p3}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$4;-><init>(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 452
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 460
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 461
    .local v0, "loginAlert":Landroid/app/AlertDialog;
    new-instance v4, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$6;

    invoke-direct {v4, p0, p3}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$6;-><init>(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;Landroid/net/http/SslError;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 470
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 471
    return-void

    .line 416
    .end local v0    # "loginAlert":Landroid/app/AlertDialog;
    .end local v3    # "sslErrorType":Ljava/lang/String;
    :pswitch_7c
    invoke-virtual {p1}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/box/boxandroidlibv2/R$string;->boxandroidlibv2_ssl_error_warning_DATE_INVALID:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 417
    .restart local v3    # "sslErrorType":Ljava/lang/String;
    goto :goto_25

    .line 419
    .end local v3    # "sslErrorType":Ljava/lang/String;
    :pswitch_87
    sget v4, Lcom/box/boxandroidlibv2/R$string;->boxandroidlibv2_ssl_error_warning_EXPIRED:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 420
    .restart local v3    # "sslErrorType":Ljava/lang/String;
    goto :goto_25

    .line 422
    .end local v3    # "sslErrorType":Ljava/lang/String;
    :pswitch_8e
    sget v4, Lcom/box/boxandroidlibv2/R$string;->boxandroidlibv2_ssl_error_warning_ID_MISMATCH:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 423
    .restart local v3    # "sslErrorType":Ljava/lang/String;
    goto :goto_25

    .line 425
    .end local v3    # "sslErrorType":Ljava/lang/String;
    :pswitch_95
    sget v4, Lcom/box/boxandroidlibv2/R$string;->boxandroidlibv2_ssl_error_warning_NOT_YET_VALID:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 426
    .restart local v3    # "sslErrorType":Ljava/lang/String;
    goto :goto_25

    .line 428
    .end local v3    # "sslErrorType":Ljava/lang/String;
    :pswitch_9c
    sget v4, Lcom/box/boxandroidlibv2/R$string;->boxandroidlibv2_ssl_error_warning_UNTRUSTED:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 429
    .restart local v3    # "sslErrorType":Ljava/lang/String;
    goto :goto_25

    .line 431
    .end local v3    # "sslErrorType":Ljava/lang/String;
    :pswitch_a3
    sget v4, Lcom/box/boxandroidlibv2/R$string;->boxandroidlibv2_ssl_error_warning_INVALID:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 432
    .restart local v3    # "sslErrorType":Ljava/lang/String;
    goto/16 :goto_25

    .line 414
    nop

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_95
        :pswitch_87
        :pswitch_8e
        :pswitch_9c
        :pswitch_7c
        :pswitch_a3
    .end packed-switch
.end method

.method public setAllowShowRedirectPage(Z)V
    .registers 2
    .param p1, "allowShowRedirectPage"    # Z

    .prologue
    .line 542
    iput-boolean p1, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->allowShowRedirectPage:Z

    .line 543
    return-void
.end method

.method public setDevice(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->deviceId:Ljava/lang/String;

    .line 237
    iput-object p2, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->deviceName:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->oauthAPICallState:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;

    sget-object v1, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;->PRE:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;

    if-eq v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->allowShowRedirectPage()Z

    move-result v0

    if-nez v0, :cond_e

    .line 275
    const/4 v0, 0x1

    .line 277
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected showDialogWhileWaitingForAuthenticationAPICall()Landroid/app/Dialog;
    .registers 5

    .prologue
    .line 316
    iget-object v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/box/boxandroidlibv2/R$string;->boxandroidlibv2_Authenticating:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->mActivity:Landroid/app/Activity;

    sget v3, Lcom/box/boxandroidlibv2/R$string;->boxandroidlibv2_Please_wait:I

    .line 317
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 316
    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method
