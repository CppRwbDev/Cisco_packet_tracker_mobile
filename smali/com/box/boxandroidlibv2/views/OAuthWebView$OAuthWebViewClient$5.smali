.class Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$5;
.super Ljava/lang/Object;
.source "OAuthWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

.field final synthetic val$error:Landroid/net/http/SslError;

.field final synthetic val$handler:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4
    .param p1, "this$0"    # Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$5;->this$0:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    iput-object p2, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$5;->val$handler:Landroid/webkit/SslErrorHandler;

    iput-object p3, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$5;->val$error:Landroid/net/http/SslError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 448
    iget-object v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$5;->this$0:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->access$802(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;Z)Z

    .line 449
    iget-object v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$5;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 450
    iget-object v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$5;->this$0:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    iget-object v1, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$5;->val$error:Landroid/net/http/SslError;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->access$900(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;Landroid/net/http/SslError;Z)V

    .line 451
    return-void
.end method
