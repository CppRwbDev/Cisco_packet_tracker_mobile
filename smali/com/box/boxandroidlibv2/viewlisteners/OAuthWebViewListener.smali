.class public abstract Lcom/box/boxandroidlibv2/viewlisteners/OAuthWebViewListener;
.super Ljava/lang/Object;
.source "OAuthWebViewListener.java"

# interfaces
.implements Lcom/box/boxjavalibv2/authorization/IAuthFlowListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAuthFlowEvent(Lcom/box/boxjavalibv2/authorization/IAuthEvent;Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;)V
.end method

.method public abstract onAuthFlowException(Ljava/lang/Exception;)V
.end method

.method public abstract onAuthFlowMessage(Lcom/box/boxjavalibv2/authorization/IAuthFlowMessage;)V
.end method

.method public abstract onError(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSslError(Landroid/net/http/SslError;Z)V
.end method
