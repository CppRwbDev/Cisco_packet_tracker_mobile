.class Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2;
.super Landroid/webkit/WebViewClient;
.source "LoginDialogNetspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;

.field final synthetic val$pd:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;Landroid/app/ProgressDialog;)V
    .registers 3
    .param p1, "this$1"    # Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;

    .prologue
    .line 199
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;

    iput-object p2, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2;->val$pd:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 285
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2;->val$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 286
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2;->val$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 290
    :cond_d
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 271
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 272
    .local v0, "ad":Landroid/app/AlertDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 273
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 274
    const-string v1, "OK"

    new-instance v2, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2$3;

    invoke-direct {v2, p0}, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2$3;-><init>(Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 279
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 280
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;

    iget-object v1, v1, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iget-object v1, v1, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 281
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 14
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x0

    .line 203
    const-string v0, "/group/landing"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 204
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 205
    .local v9, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v0, "login"

    const/4 v1, 0x1

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 206
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 207
    const-string v7, "https://82252856.netacad.com/login/oauth2/auth?client_id=10000000000068&response_type=code&redirect_uri=urn:ietf:wg:oauth:2.0:oob"

    .line 208
    .local v7, "canvasUrl":Ljava/lang/String;
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->alertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->alertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 212
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->instance()Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;

    move-result-object v0

    const-string v1, "app"

    const-string v2, "login"

    const-string v3, "netspace"

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 266
    .end local v7    # "canvasUrl":Ljava/lang/String;
    .end local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_54
    :goto_54
    return v4

    .line 213
    :cond_55
    const-string v0, "/login/oauth2/auth?code="

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 214
    const-string v0, "="

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 220
    .local v8, "code":Ljava/lang/String;
    new-instance v10, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2$1;

    invoke-direct {v10, p0, v8}, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2$1;-><init>(Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2;Ljava/lang/String;)V

    .line 248
    .local v10, "r":Ljava/lang/Runnable;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v0

    invoke-virtual {v0, v10}, Lorg/qtproject/qt5/android/bindings/QtActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 249
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_54

    .line 250
    .end local v8    # "code":Ljava/lang/String;
    .end local v10    # "r":Ljava/lang/Runnable;
    :cond_7f
    const-string v0, "/login/oauth2/deny"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 252
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 254
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 255
    .local v6, "bd":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 256
    const-string v0, "In order to access Netspace files, you need to be logged in. To do so, select Netspace under Options and perform the steps to login."

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 257
    const-string v0, "OK"

    new-instance v1, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2$2;

    invoke-direct {v1, p0}, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2$2;-><init>(Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 262
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->dialog:Landroid/app/AlertDialog;

    .line 263
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_54
.end method
