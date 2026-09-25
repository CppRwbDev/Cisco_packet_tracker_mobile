.class Lcom/box/boxandroidlibv2/views/OAuthWebView$WrappedOAuthWebViewListener;
.super Lcom/box/boxandroidlibv2/viewlisteners/OAuthWebViewListener;
.source "OAuthWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/box/boxandroidlibv2/views/OAuthWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedOAuthWebViewListener"
.end annotation


# instance fields
.field private final mListener:Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;


# direct methods
.method constructor <init>(Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;

    .prologue
    .line 550
    invoke-direct {p0}, Lcom/box/boxandroidlibv2/viewlisteners/OAuthWebViewListener;-><init>()V

    .line 551
    iput-object p1, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$WrappedOAuthWebViewListener;->mListener:Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;

    .line 552
    return-void
.end method


# virtual methods
.method public onAuthFlowEvent(Lcom/box/boxjavalibv2/authorization/IAuthEvent;Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;)V
    .registers 4
    .param p1, "event"    # Lcom/box/boxjavalibv2/authorization/IAuthEvent;
    .param p2, "message"    # Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;

    .prologue
    .line 566
    iget-object v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$WrappedOAuthWebViewListener;->mListener:Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;

    invoke-interface {v0, p1, p2}, Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;->onAuthFlowEvent(Lcom/box/boxjavalibv2/authorization/IAuthEvent;Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;)V

    .line 567
    return-void
.end method

.method public onAuthFlowException(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 561
    iget-object v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$WrappedOAuthWebViewListener;->mListener:Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;

    invoke-interface {v0, p1}, Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;->onAuthFlowException(Ljava/lang/Exception;)V

    .line 562
    return-void
.end method

.method public onAuthFlowMessage(Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;)V
    .registers 3
    .param p1, "message"    # Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;

    .prologue
    .line 556
    iget-object v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$WrappedOAuthWebViewListener;->mListener:Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;

    invoke-interface {v0, p1}, Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;->onAuthFlowMessage(Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;)V

    .line 557
    return-void
.end method

.method public onError(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 575
    return-void
.end method

.method public onSslError(Landroid/net/http/SslError;Z)V
    .registers 3
    .param p1, "error"    # Landroid/net/http/SslError;
    .param p2, "canceled"    # Z

    .prologue
    .line 571
    return-void
.end method
