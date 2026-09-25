.class Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$2;
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

.field final synthetic val$handler:Landroid/webkit/HttpAuthHandler;

.field final synthetic val$textEntryView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;Landroid/view/View;Landroid/webkit/HttpAuthHandler;)V
    .registers 4
    .param p1, "this$0"    # Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$2;->this$0:Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient;

    iput-object p2, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$2;->val$textEntryView:Landroid/view/View;

    iput-object p3, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$2;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 293
    iget-object v2, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$2;->val$textEntryView:Landroid/view/View;

    sget v3, Lcom/box/boxandroidlibv2/R$id;->username_edit:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "userName":Ljava/lang/String;
    iget-object v2, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$2;->val$textEntryView:Landroid/view/View;

    sget v3, Lcom/box/boxandroidlibv2/R$id;->password_edit:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "password":Ljava/lang/String;
    iget-object v2, p0, Lcom/box/boxandroidlibv2/views/OAuthWebView$OAuthWebViewClient$2;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v2, v1, v0}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-void
.end method
