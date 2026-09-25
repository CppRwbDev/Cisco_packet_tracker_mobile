.class public Lcom/box/boxandroidlibv2/views/OAuthWebView;
.super Landroid/webkit/WebView;
.source "OAuthWebView.java"

# interfaces
.implements Lcom/box/boxjavalibv2/authorization/IAuthFlowUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/box/boxandroidlibv2/views/OAuthWebView$WrappedOAuthWebViewListener;,
        Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;
    }
.end annotation


# instance fields
.field private allowShowingRedirectPage:Z

.field private deviceId:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

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

.field private mWebClient:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

.field private mWebViewData:Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView;->allowShowingRedirectPage:Z

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView;->mListeners:Ljava/util/List;

    .line 79
    return-void
.end method

.method private static wrapOAuthWebViewListener(Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;)Lcom/box/boxandroidlibv2/viewlisteners/OAuthWebViewListener;
    .registers 2
    .param p0, "listener"    # Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;

    .prologue
    .line 155
    instance-of v0, p0, Lcom/box/boxandroidlibv2/viewlisteners/OAuthWebViewListener;

    if-eqz v0, :cond_7

    .line 156
    check-cast p0, Lcom/box/boxandroidlibv2/viewlisteners/OAuthWebViewListener;

    .line 158
    .end local p0    # "listener":Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;
    :goto_6
    return-object p0

    .restart local p0    # "listener":Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;
    :cond_7
    new-instance v0, Lcom/box/boxandroidlibv2/views/OAuthWebView$WrappedOAuthWebViewListener;

    invoke-direct {v0, p0}, Lcom/box/boxandroidlibv2/views/OAuthWebView$WrappedOAuthWebViewListener;-><init>(Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;)V

    move-object p0, v0

    goto :goto_6
.end method


# virtual methods
.method public addAuthFlowListener(Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/views/OAuthWebView;->getOAuthWebViewListeners()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/box/boxandroidlibv2/views/OAuthWebView;->wrapOAuthWebViewListener(Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;)Lcom/box/boxandroidlibv2/viewlisteners/OAuthWebViewListener;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method public allowShowRedirectPage()Z
    .registers 2

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView;->allowShowingRedirectPage:Z

    return v0
.end method

.method public authenticate(Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/box/boxandroidlibv2/views/OAuthWebView;->addAuthFlowListener(Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;)V

    .line 128
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/views/OAuthWebView;->getOAuthWebViewListeners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;

    .line 129
    .local v1, "l":Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;
    iget-object v3, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView;->mWebClient:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    invoke-static {v1}, Lcom/box/boxandroidlibv2/views/OAuthWebView;->wrapOAuthWebViewListener(Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;)Lcom/box/boxandroidlibv2/viewlisteners/OAuthWebViewListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->addListener(Lcom/box/boxandroidlibv2/viewlisteners/OAuthWebViewListener;)V

    goto :goto_b

    .line 133
    .end local v1    # "l":Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;
    :cond_21
    :try_start_21
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/views/OAuthWebView;->getWebviewData()Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;->buildUrl()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/box/boxandroidlibv2/views/OAuthWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/net/URISyntaxException; {:try_start_21 .. :try_end_30} :catch_31

    .line 139
    :cond_30
    :goto_30
    return-void

    .line 134
    :catch_31
    move-exception v0

    .line 135
    .local v0, "e":Ljava/net/URISyntaxException;
    if-eqz p1, :cond_30

    .line 136
    invoke-interface {p1, v0}, Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;->onAuthFlowException(Ljava/lang/Exception;)V

    goto :goto_30
.end method

.method protected createOAuthWebViewClient(Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;Ljava/lang/Object;Lcom/box/boxjavalibv2/BoxClient;)Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;
    .registers 6
    .param p1, "data"    # Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;
    .param p2, "activity"    # Ljava/lang/Object;
    .param p3, "boxClient"    # Lcom/box/boxjavalibv2/BoxClient;

    .prologue
    .line 186
    new-instance v0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    check-cast p2, Landroid/app/Activity;

    .end local p2    # "activity":Ljava/lang/Object;
    invoke-direct {v0, p1, p2, p3}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;-><init>(Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;Landroid/app/Activity;Lcom/box/boxjavalibv2/BoxClient;)V

    .line 187
    .local v0, "c":Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/views/OAuthWebView;->allowShowRedirectPage()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->setAllowShowRedirectPage(Z)V

    .line 188
    return-object v0
.end method

.method public destroy()V
    .registers 2

    .prologue
    .line 164
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 165
    iget-object v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView;->mWebClient:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    if-eqz v0, :cond_c

    .line 166
    iget-object v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView;->mWebClient:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    invoke-virtual {v0}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->destroy()V

    .line 168
    :cond_c
    return-void
.end method

.method protected getOAuthWebViewListeners()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/box/boxandroidlibv2/viewlisteners/OAuthWebViewListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method protected getWebViewClient()Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView;->mWebClient:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    return-object v0
.end method

.method protected getWebviewData()Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView;->mWebViewData:Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;

    return-object v0
.end method

.method public initializeAuthFlow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "activity"    # Ljava/lang/Object;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "clientSecret"    # Ljava/lang/String;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/box/boxandroidlibv2/views/OAuthWebView;->initializeAuthFlow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public initializeAuthFlow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "activity"    # Ljava/lang/Object;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "clientSecret"    # Ljava/lang/String;
    .param p4, "redirectUrl"    # Ljava/lang/String;

    .prologue
    .line 102
    new-instance v3, Lcom/box/boxandroidlibv2/jsonparsing/AndroidBoxResourceHub;

    invoke-direct {v3}, Lcom/box/boxandroidlibv2/jsonparsing/AndroidBoxResourceHub;-><init>()V

    .line 103
    .local v3, "hub":Lcom/box/boxandroidlibv2/jsonparsing/AndroidBoxResourceHub;
    new-instance v0, Lcom/box/boxandroidlibv2/BoxAndroidClient;

    new-instance v4, Lcom/box/boxjavalibv2/jsonparsing/BoxJSONParser;

    invoke-direct {v4, v3}, Lcom/box/boxjavalibv2/jsonparsing/BoxJSONParser;-><init>(Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;)V

    new-instance v1, Lcom/box/boxandroidlibv2/BoxAndroidConfigBuilder;

    invoke-direct {v1}, Lcom/box/boxandroidlibv2/BoxAndroidConfigBuilder;-><init>()V

    .line 104
    invoke-virtual {v1}, Lcom/box/boxandroidlibv2/BoxAndroidConfigBuilder;->build()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v5

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/box/boxandroidlibv2/BoxAndroidClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/boxjavalibv2/IBoxConfig;)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, v0

    .line 103
    invoke-virtual/range {v4 .. v9}, Lcom/box/boxandroidlibv2/views/OAuthWebView;->initializeAuthFlow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/box/boxjavalibv2/BoxClient;)V

    .line 105
    return-void
.end method

.method public initializeAuthFlow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/box/boxjavalibv2/BoxClient;)V
    .registers 8
    .param p1, "activity"    # Ljava/lang/Object;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "clientSecret"    # Ljava/lang/String;
    .param p4, "redirectUrl"    # Ljava/lang/String;
    .param p5, "boxClient"    # Lcom/box/boxjavalibv2/BoxClient;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;

    invoke-virtual {p5}, Lcom/box/boxjavalibv2/BoxClient;->getOAuthDataController()Lcom/box/boxjavalibv2/authorization/OAuthDataController;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;-><init>(Lcom/box/boxjavalibv2/authorization/OAuthDataController;)V

    iput-object v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView;->mWebViewData:Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;

    .line 111
    invoke-static {p4}, Lorg/apache/commons/lang/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 112
    iget-object v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView;->mWebViewData:Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;

    invoke-virtual {v0, p4}, Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;->setRedirectUrl(Ljava/lang/String;)V

    .line 114
    :cond_16
    iget-object v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView;->mWebViewData:Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;

    invoke-virtual {p0, v0, p1, p5}, Lcom/box/boxandroidlibv2/views/OAuthWebView;->createOAuthWebViewClient(Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;Ljava/lang/Object;Lcom/box/boxjavalibv2/BoxClient;)Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    move-result-object v0

    iput-object v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView;->mWebClient:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    .line 115
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/views/OAuthWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView;->mWebClient:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    invoke-virtual {p0, v0}, Lcom/box/boxandroidlibv2/views/OAuthWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 117
    iget-object v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView;->deviceId:Ljava/lang/String;

    iget-object v1, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView;->deviceName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/box/boxandroidlibv2/views/OAuthWebView;->setDevice(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public setAllowShowingRedirectPage(Z)V
    .registers 2
    .param p1, "allowShowingRedirectPage"    # Z

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView;->allowShowingRedirectPage:Z

    .line 183
    return-void
.end method

.method public setDevice(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView;->deviceId:Ljava/lang/String;

    .line 148
    iput-object p2, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView;->deviceName:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView;->mWebClient:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    if-eqz v0, :cond_d

    .line 150
    iget-object v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView;->mWebClient:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    invoke-virtual {v0, p1, p2}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->setDevice(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_d
    return-void
.end method

.method public setOptionalState(Ljava/lang/String;)V
    .registers 3
    .param p1, "optionalState"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/views/OAuthWebView;->getWebviewData()Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;->setOptionalState(Ljava/lang/String;)V

    .line 93
    return-void
.end method
