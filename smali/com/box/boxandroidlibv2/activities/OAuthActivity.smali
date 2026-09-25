.class public Lcom/box/boxandroidlibv2/activities/OAuthActivity;
.super Landroid/app/Activity;
.source "OAuthActivity.java"


# static fields
.field protected static final ALLOW_LOAD_REDIRECT_PAGE:Ljava/lang/String; = "allowloadredirectpage"

.field public static final BOX_CLIENT_OAUTH:Ljava/lang/String; = "boxAndroidClient_oauth"

.field public static final BOX_DEVICE_ID:Ljava/lang/String; = "boxdeviceid"

.field public static final BOX_DEVICE_NAME:Ljava/lang/String; = "boxdevicename"

.field protected static final CLIENT_ID:Ljava/lang/String; = "clientId"

.field protected static final CLIENT_SECRET:Ljava/lang/String; = "clientSecret"

.field public static final ERROR_MESSAGE:Ljava/lang/String; = "exception"

.field protected static final REDIRECT_URL:Ljava/lang/String; = "redirecturl"


# instance fields
.field private oauthView:Lcom/box/boxandroidlibv2/views/OAuthWebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static createOAuthActivityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "clientSecret"    # Ljava/lang/String;

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/box/boxandroidlibv2/activities/OAuthActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "clientId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v1, "clientSecret"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    return-object v0
.end method

.method public static createOAuthActivityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "clientSecret"    # Ljava/lang/String;
    .param p3, "allowShowRedirectPage"    # Z

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/box/boxandroidlibv2/activities/OAuthActivity;->createOAuthActivityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createOAuthActivityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/content/Intent;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "clientSecret"    # Ljava/lang/String;
    .param p3, "allowShowRedirectPage"    # Z
    .param p4, "redirectUrl"    # Ljava/lang/String;

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/box/boxandroidlibv2/activities/OAuthActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "clientId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string v1, "clientSecret"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v1, "allowloadredirectpage"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 158
    invoke-static {p4}, Lorg/apache/commons/lang/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 159
    const-string v1, "redirecturl"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    :cond_21
    return-object v0
.end method


# virtual methods
.method protected createBoxClientForOAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxandroidlibv2/BoxAndroidClient;
    .registers 10
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "clientSecret"    # Ljava/lang/String;
    .param p3, "redirectUrl"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 73
    new-instance v0, Lcom/box/boxandroidlibv2/BoxAndroidClient;

    new-instance v1, Lcom/box/boxandroidlibv2/BoxAndroidConfigBuilder;

    invoke-direct {v1}, Lcom/box/boxandroidlibv2/BoxAndroidConfigBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/box/boxandroidlibv2/BoxAndroidConfigBuilder;->build()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/box/boxandroidlibv2/BoxAndroidClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/boxjavalibv2/IBoxConfig;)V

    return-object v0
.end method

.method protected createOAuthWebView(ZLjava/lang/String;Ljava/lang/String;)Lcom/box/boxandroidlibv2/views/OAuthWebView;
    .registers 6
    .param p1, "allowShowRedirect"    # Z
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/OAuthActivity;->getOAuthWebViewRId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/box/boxandroidlibv2/activities/OAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/box/boxandroidlibv2/views/OAuthWebView;

    .line 78
    .local v0, "ui":Lcom/box/boxandroidlibv2/views/OAuthWebView;
    invoke-virtual {v0, p1}, Lcom/box/boxandroidlibv2/views/OAuthWebView;->setAllowShowingRedirectPage(Z)V

    .line 79
    invoke-static {p2}, Lorg/apache/commons/lang/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {p3}, Lorg/apache/commons/lang/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 80
    invoke-virtual {v0, p2, p3}, Lcom/box/boxandroidlibv2/views/OAuthWebView;->setDevice(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_1c
    return-object v0
.end method

.method protected getContentView()I
    .registers 2

    .prologue
    .line 56
    sget v0, Lcom/box/boxandroidlibv2/R$layout;->boxandroidlibv2_activity_oauth:I

    return v0
.end method

.method protected getOAuthFlowListener()Lcom/box/boxandroidlibv2/viewlisteners/OAuthWebViewListener;
    .registers 2

    .prologue
    .line 170
    new-instance v0, Lcom/box/boxandroidlibv2/activities/OAuthActivity$1;

    invoke-direct {v0, p0}, Lcom/box/boxandroidlibv2/activities/OAuthActivity$1;-><init>(Lcom/box/boxandroidlibv2/activities/OAuthActivity;)V

    return-object v0
.end method

.method protected getOAuthWebView()Lcom/box/boxandroidlibv2/views/OAuthWebView;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/OAuthActivity;->oauthView:Lcom/box/boxandroidlibv2/views/OAuthWebView;

    return-object v0
.end method

.method protected getOAuthWebViewRId()I
    .registers 2

    .prologue
    .line 86
    sget v0, Lcom/box/boxandroidlibv2/R$id;->oauthview:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/OAuthActivity;->getContentView()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/box/boxandroidlibv2/activities/OAuthActivity;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/OAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 46
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "clientId"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "clientId":Ljava/lang/String;
    const-string v0, "clientSecret"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "clientSecret":Ljava/lang/String;
    const-string v0, "boxdeviceid"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 49
    .local v5, "deviceId":Ljava/lang/String;
    const-string v0, "boxdevicename"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 50
    .local v6, "deviceName":Ljava/lang/String;
    const-string v0, "redirecturl"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "redirectUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/OAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v8, "allowloadredirectpage"

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .local v4, "allowShowRedirect":Z
    move-object v0, p0

    .line 52
    invoke-virtual/range {v0 .. v6}, Lcom/box/boxandroidlibv2/activities/OAuthActivity;->startOAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method protected setOAuthWebView(Lcom/box/boxandroidlibv2/views/OAuthWebView;)V
    .registers 2
    .param p1, "view"    # Lcom/box/boxandroidlibv2/views/OAuthWebView;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/box/boxandroidlibv2/activities/OAuthActivity;->oauthView:Lcom/box/boxandroidlibv2/views/OAuthWebView;

    .line 91
    return-void
.end method

.method protected shouldAutoRefreshOAuth()Z
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method protected startOAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "clientSecret"    # Ljava/lang/String;
    .param p3, "redirectUrl"    # Ljava/lang/String;
    .param p4, "allowShowRedirect"    # Z
    .param p5, "deviceId"    # Ljava/lang/String;
    .param p6, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/box/boxandroidlibv2/activities/OAuthActivity;->createBoxClientForOAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxandroidlibv2/BoxAndroidClient;

    move-result-object v5

    .line 66
    .local v5, "boxClient":Lcom/box/boxandroidlibv2/BoxAndroidClient;
    invoke-virtual {p0, p4, p5, p6}, Lcom/box/boxandroidlibv2/activities/OAuthActivity;->createOAuthWebView(ZLjava/lang/String;Ljava/lang/String;)Lcom/box/boxandroidlibv2/views/OAuthWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/box/boxandroidlibv2/activities/OAuthActivity;->oauthView:Lcom/box/boxandroidlibv2/views/OAuthWebView;

    .line 67
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/OAuthActivity;->getOAuthWebView()Lcom/box/boxandroidlibv2/views/OAuthWebView;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/box/boxandroidlibv2/views/OAuthWebView;->initializeAuthFlow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/box/boxjavalibv2/BoxClient;)V

    .line 69
    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/OAuthActivity;->oauthView:Lcom/box/boxandroidlibv2/views/OAuthWebView;

    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/OAuthActivity;->shouldAutoRefreshOAuth()Z

    move-result v1

    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/OAuthActivity;->getOAuthFlowListener()Lcom/box/boxandroidlibv2/viewlisteners/OAuthWebViewListener;

    move-result-object v2

    invoke-virtual {v5, v0, v1, v2}, Lcom/box/boxandroidlibv2/BoxAndroidClient;->authenticate(Lcom/box/boxjavalibv2/authorization/IAuthFlowUI;ZLcom/box/boxjavalibv2/authorization/IAuthFlowListener;)V

    .line 70
    return-void
.end method
