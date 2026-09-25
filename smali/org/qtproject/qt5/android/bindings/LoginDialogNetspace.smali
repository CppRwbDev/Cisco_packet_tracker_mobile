.class public Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;
.super Ljava/lang/Object;
.source "LoginDialogNetspace.java"


# instance fields
.field alert:Landroid/app/AlertDialog$Builder;

.field alertDialog:Landroid/app/AlertDialog;

.field dialog:Landroid/app/AlertDialog;

.field pd:Landroid/app/ProgressDialog;

.field siteUrl:Ljava/lang/String;

.field timer:Landroid/os/CountDownTimer;

.field volatile timerDone:Z

.field webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 15

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v12, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->siteUrl:Ljava/lang/String;

    .line 51
    iput-boolean v13, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->timerDone:Z

    .line 57
    new-instance v8, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v8}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v8}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 58
    .local v4, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 60
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v8

    invoke-virtual {v8}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 61
    .local v1, "display":Landroid/view/Display;
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 62
    .local v5, "size":Landroid/graphics/Point;
    invoke-virtual {v1, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 63
    iget v2, v5, Landroid/graphics/Point;->y:I

    .line 64
    .local v2, "height":I
    iget v6, v5, Landroid/graphics/Point;->x:I

    .line 65
    .local v6, "width":I
    new-instance v8, Landroid/webkit/WebView;

    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->webView:Landroid/webkit/WebView;

    .line 66
    iget-object v8, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->webView:Landroid/webkit/WebView;

    invoke-virtual {v8, v11}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 67
    iget-object v8, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->webView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 68
    iget-object v8, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->webView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 69
    iget-object v8, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->webView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 70
    iget-object v8, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->webView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v8

    const-string v9, "CiscoPacketTracerMobile6.1"

    invoke-virtual {v8, v9}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 71
    iget-object v8, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->webView:Landroid/webkit/WebView;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    add-int/lit16 v10, v6, -0xfa

    invoke-direct {v9, v10, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74
    .local v7, "wrapper":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/EditText;

    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 75
    .local v3, "keyboardHack":Landroid/widget/EditText;
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 77
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->alert:Landroid/app/AlertDialog$Builder;

    .line 78
    iget-object v8, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->alert:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 79
    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 80
    iget-object v8, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->webView:Landroid/webkit/WebView;

    add-int/lit16 v9, v6, -0xfa

    invoke-virtual {v7, v8, v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 81
    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-virtual {v7, v3, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 82
    iget-object v8, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->alert:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 83
    iget-object v8, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->alert:Landroid/app/AlertDialog$Builder;

    const-string v9, "Login Page"

    invoke-virtual {v8, v9, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 84
    iget-object v8, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->alert:Landroid/app/AlertDialog$Builder;

    const-string v9, "Guest Login"

    invoke-virtual {v8, v9, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    iget-object v8, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->alert:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->alertDialog:Landroid/app/AlertDialog;

    .line 86
    iget-object v8, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->alertDialog:Landroid/app/AlertDialog;

    new-instance v9, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;

    invoke-direct {v9, p0}, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;-><init>(Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 164
    iget-object v8, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->webView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 165
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 166
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 167
    return-void
.end method


# virtual methods
.method public LogOut()V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 332
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 333
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 334
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 335
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "login"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 336
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "accesstoken"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 337
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->Login()V

    .line 338
    return-void
.end method

.method public Login()V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 174
    const-string v1, "LDNE"

    const-string v2, "LoginNetspace"

    invoke-static {v1, v2}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;

    invoke-direct {v0, p0}, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;-><init>(Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;)V

    .line 324
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 325
    return-void
.end method

.method public isLogin()Z
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 348
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 349
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "login"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 350
    .local v0, "login":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method
