.class Lcom/box/boxandroidlibv2/activities/OAuthActivity$1;
.super Lcom/box/boxandroidlibv2/viewlisteners/OAuthWebViewListener;
.source "OAuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/box/boxandroidlibv2/activities/OAuthActivity;->getOAuthFlowListener()Lcom/box/boxandroidlibv2/viewlisteners/OAuthWebViewListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/box/boxandroidlibv2/activities/OAuthActivity;


# direct methods
.method constructor <init>(Lcom/box/boxandroidlibv2/activities/OAuthActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/box/boxandroidlibv2/activities/OAuthActivity;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/box/boxandroidlibv2/activities/OAuthActivity$1;->this$0:Lcom/box/boxandroidlibv2/activities/OAuthActivity;

    invoke-direct {p0}, Lcom/box/boxandroidlibv2/viewlisteners/OAuthWebViewListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthFlowEvent(Lcom/box/boxjavalibv2/authorization/IAuthEvent;Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;)V
    .registers 6
    .param p1, "event"    # Lcom/box/boxjavalibv2/authorization/IAuthEvent;
    .param p2, "message"    # Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;

    .prologue
    .line 182
    sget-object v1, Lcom/box/boxjavalibv2/events/OAuthEvent;->OAUTH_CREATED:Lcom/box/boxjavalibv2/events/OAuthEvent;

    if-ne p1, v1, :cond_1f

    .line 183
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 184
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "boxAndroidClient_oauth"

    invoke-interface {p2}, Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 185
    iget-object v1, p0, Lcom/box/boxandroidlibv2/activities/OAuthActivity$1;->this$0:Lcom/box/boxandroidlibv2/activities/OAuthActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/box/boxandroidlibv2/activities/OAuthActivity;->setResult(ILandroid/content/Intent;)V

    .line 186
    iget-object v1, p0, Lcom/box/boxandroidlibv2/activities/OAuthActivity$1;->this$0:Lcom/box/boxandroidlibv2/activities/OAuthActivity;

    invoke-virtual {v1}, Lcom/box/boxandroidlibv2/activities/OAuthActivity;->finish()V

    .line 188
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1f
    return-void
.end method

.method public onAuthFlowException(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 174
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 175
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "exception"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    iget-object v1, p0, Lcom/box/boxandroidlibv2/activities/OAuthActivity$1;->this$0:Lcom/box/boxandroidlibv2/activities/OAuthActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/box/boxandroidlibv2/activities/OAuthActivity;->setResult(ILandroid/content/Intent;)V

    .line 177
    iget-object v1, p0, Lcom/box/boxandroidlibv2/activities/OAuthActivity$1;->this$0:Lcom/box/boxandroidlibv2/activities/OAuthActivity;

    invoke-virtual {v1}, Lcom/box/boxandroidlibv2/activities/OAuthActivity;->finish()V

    .line 178
    return-void
.end method

.method public onAuthFlowMessage(Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;)V
    .registers 2
    .param p1, "message"    # Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;

    .prologue
    .line 210
    return-void
.end method

.method public onError(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 202
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 203
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "exception"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    iget-object v1, p0, Lcom/box/boxandroidlibv2/activities/OAuthActivity$1;->this$0:Lcom/box/boxandroidlibv2/activities/OAuthActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/box/boxandroidlibv2/activities/OAuthActivity;->setResult(ILandroid/content/Intent;)V

    .line 205
    iget-object v1, p0, Lcom/box/boxandroidlibv2/activities/OAuthActivity$1;->this$0:Lcom/box/boxandroidlibv2/activities/OAuthActivity;

    invoke-virtual {v1}, Lcom/box/boxandroidlibv2/activities/OAuthActivity;->finish()V

    .line 206
    return-void
.end method

.method public onSslError(Landroid/net/http/SslError;Z)V
    .registers 7
    .param p1, "error"    # Landroid/net/http/SslError;
    .param p2, "canceled"    # Z

    .prologue
    .line 192
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 193
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_2e

    .line 194
    const-string v1, "exception"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ssl error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    iget-object v1, p0, Lcom/box/boxandroidlibv2/activities/OAuthActivity$1;->this$0:Lcom/box/boxandroidlibv2/activities/OAuthActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/box/boxandroidlibv2/activities/OAuthActivity;->setResult(ILandroid/content/Intent;)V

    .line 196
    iget-object v1, p0, Lcom/box/boxandroidlibv2/activities/OAuthActivity$1;->this$0:Lcom/box/boxandroidlibv2/activities/OAuthActivity;

    invoke-virtual {v1}, Lcom/box/boxandroidlibv2/activities/OAuthActivity;->finish()V

    .line 198
    :cond_2e
    return-void
.end method
