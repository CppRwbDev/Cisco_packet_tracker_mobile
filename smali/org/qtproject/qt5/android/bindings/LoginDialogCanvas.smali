.class public Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;
.super Ljava/lang/Object;
.source "LoginDialogCanvas.java"


# instance fields
.field alert:Landroid/app/AlertDialog$Builder;

.field alertDialog:Landroid/app/AlertDialog;

.field canvasUrl:Ljava/lang/String;

.field webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;->canvasUrl:Ljava/lang/String;

    .line 48
    new-instance v7, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v7}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v7}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    .line 49
    .local v3, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 51
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v7

    invoke-virtual {v7}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 52
    .local v0, "display":Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 53
    .local v4, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 54
    iget v1, v4, Landroid/graphics/Point;->y:I

    .line 55
    .local v1, "height":I
    iget v5, v4, Landroid/graphics/Point;->x:I

    .line 56
    .local v5, "width":I
    new-instance v7, Landroid/webkit/WebView;

    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;->webView:Landroid/webkit/WebView;

    .line 57
    iget-object v7, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;->webView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 58
    iget-object v7, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;->webView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    const-string v8, "CiscoPacketTracerMobile6.1"

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 59
    iget-object v7, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;->webView:Landroid/webkit/WebView;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    add-int/lit8 v9, v5, -0x32

    add-int/lit8 v10, v1, -0x64

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 62
    .local v6, "wrapper":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/EditText;

    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 63
    .local v2, "keyboardHack":Landroid/widget/EditText;
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 65
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;->alert:Landroid/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 67
    iget-object v7, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;->webView:Landroid/webkit/WebView;

    add-int/lit8 v8, v5, -0x32

    invoke-virtual {v6, v7, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 68
    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-virtual {v6, v2, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 69
    iget-object v7, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;->alert:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 70
    iget-object v7, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;->alert:Landroid/app/AlertDialog$Builder;

    const-string v8, "Close"

    new-instance v9, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas$1;

    invoke-direct {v9, p0}, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas$1;-><init>(Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 76
    iget-object v7, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;->alert:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;->alertDialog:Landroid/app/AlertDialog;

    .line 77
    return-void
.end method


# virtual methods
.method public Login()V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 84
    const-string v1, "LDCA"

    const-string v2, "LoginCanvas"

    invoke-static {v1, v2}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v0, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas$2;

    invoke-direct {v0, p0}, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas$2;-><init>(Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;)V

    .line 157
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 168
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 169
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "accesstoken"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
