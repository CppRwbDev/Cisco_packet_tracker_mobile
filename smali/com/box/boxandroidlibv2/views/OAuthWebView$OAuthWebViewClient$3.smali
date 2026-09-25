.class Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$3;
.super Landroid/os/AsyncTask;
.source "OAuthWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->startMakingOAuthAPICall(Ljava/lang/String;Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lorg/apache/commons/lang/ObjectUtils$Null;",
        "Lorg/apache/commons/lang/ObjectUtils$Null;",
        "Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;",
        ">;"
    }
.end annotation


# instance fields
.field private mCreateOauthException:Ljava/lang/Exception;

.field final synthetic this$0:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

.field final synthetic val$code:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$3;->this$0:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    iput-object p2, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$3;->val$code:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lorg/apache/commons/lang/ObjectUtils$Null;)Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;
    .registers 11
    .param p1, "params"    # [Lorg/apache/commons/lang/ObjectUtils$Null;

    .prologue
    .line 353
    const/4 v8, 0x0

    .line 355
    .local v8, "oauth":Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;
    :try_start_1
    iget-object v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$3;->this$0:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    invoke-static {v0}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->access$400(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;)Lcom/box/boxjavalibv2/BoxClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/BoxClient;->getOAuthManager()Lcom/box/boxjavalibv2/resourcemanagers/IBoxOAuthManager;

    move-result-object v0

    iget-object v1, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$3;->val$code:Ljava/lang/String;

    iget-object v2, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$3;->this$0:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    invoke-static {v2}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->access$100(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;)Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;->getClientId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$3;->this$0:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    .line 356
    invoke-static {v3}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->access$100(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;)Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;->getClientSecret()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$3;->this$0:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    invoke-static {v4}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->access$100(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;)Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/box/boxjavalibv2/authorization/OAuthWebViewData;->getRedirectUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$3;->this$0:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    invoke-static {v5}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->access$200(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$3;->this$0:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    invoke-static {v6}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->access$300(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;)Ljava/lang/String;

    move-result-object v6

    .line 355
    invoke-interface/range {v0 .. v6}, Lcom/box/boxjavalibv2/resourcemanagers/IBoxOAuthManager;->createOAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    move-result-object v8

    .end local v8    # "oauth":Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;
    check-cast v8, Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3d} :catch_3e

    .line 361
    .restart local v8    # "oauth":Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;
    :goto_3d
    return-object v8

    .line 357
    .end local v8    # "oauth":Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;
    :catch_3e
    move-exception v7

    .line 358
    .local v7, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 359
    .restart local v8    # "oauth":Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;
    iput-object v7, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$3;->mCreateOauthException:Ljava/lang/Exception;

    goto :goto_3d
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 347
    check-cast p1, [Lorg/apache/commons/lang/ObjectUtils$Null;

    invoke-virtual {p0, p1}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$3;->doInBackground([Lorg/apache/commons/lang/ObjectUtils$Null;)Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;)V
    .registers 8
    .param p1, "result"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;

    .prologue
    .line 366
    iget-object v1, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$3;->this$0:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    sget-object v2, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;->FINISHED:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;

    invoke-static {v1, v2}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->access$500(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$OAuthAPICallState;)V

    .line 367
    iget-object v1, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$3;->this$0:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    invoke-static {v1}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->access$600(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;)V

    .line 368
    if-eqz p1, :cond_3b

    .line 370
    :try_start_e
    iget-object v1, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$3;->this$0:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    sget-object v2, Lcom/box/boxjavalibv2/events/OAuthEvent;->OAUTH_CREATED:Lcom/box/boxjavalibv2/events/OAuthEvent;

    new-instance v3, Lcom/box/boxjavalibv2/authorization/OAuthDataMessage;

    iget-object v4, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$3;->this$0:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    invoke-static {v4}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->access$400(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;)Lcom/box/boxjavalibv2/BoxClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/box/boxjavalibv2/BoxClient;->getJSONParser()Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    move-result-object v4

    iget-object v5, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$3;->this$0:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    invoke-static {v5}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->access$400(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;)Lcom/box/boxjavalibv2/BoxClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/box/boxjavalibv2/BoxClient;->getResourceHub()Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

    move-result-object v5

    invoke-direct {v3, p1, v4, v5}, Lcom/box/boxjavalibv2/authorization/OAuthDataMessage;-><init>(Lcom/box/boxjavalibv2/dao/BoxOAuthToken;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;)V

    invoke-static {v1, v2, v3}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->access$700(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;Lcom/box/boxjavalibv2/authorization/IAuthEvent;Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2e} :catch_2f

    .line 377
    :goto_2e
    return-void

    .line 371
    :catch_2f
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$3;->this$0:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    new-instance v2, Lcom/box/boxandroidlibv2/exceptions/BoxAndroidLibException;

    invoke-direct {v2, v0}, Lcom/box/boxandroidlibv2/exceptions/BoxAndroidLibException;-><init>(Ljava/lang/Exception;)V

    invoke-static {v1, v2}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->access$000(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;Ljava/lang/Exception;)V

    goto :goto_2e

    .line 375
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3b
    iget-object v1, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$3;->this$0:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    new-instance v2, Lcom/box/boxandroidlibv2/exceptions/BoxAndroidLibException;

    iget-object v3, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$3;->mCreateOauthException:Ljava/lang/Exception;

    invoke-direct {v2, v3}, Lcom/box/boxandroidlibv2/exceptions/BoxAndroidLibException;-><init>(Ljava/lang/Exception;)V

    invoke-static {v1, v2}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->access$000(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;Ljava/lang/Exception;)V

    goto :goto_2e
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 347
    check-cast p1, Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;

    invoke-virtual {p0, p1}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$3;->onPostExecute(Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;)V

    return-void
.end method
