.class Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$1;
.super Ljava/lang/Object;
.source "OAuthWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;


# direct methods
.method constructor <init>(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;)V
    .registers 2
    .param p1, "this$0"    # Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$1;->this$0:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 301
    iget-object v0, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$1;->this$0:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    new-instance v1, Lcom/box/boxandroidlibv2/exceptions/UserTerminationException;

    invoke-direct {v1}, Lcom/box/boxandroidlibv2/exceptions/UserTerminationException;-><init>()V

    invoke-static {v0, v1}, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;->access$000(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;Ljava/lang/Exception;)V

    .line 302
    return-void
.end method
