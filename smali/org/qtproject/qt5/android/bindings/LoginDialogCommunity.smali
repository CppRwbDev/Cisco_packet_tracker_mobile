.class public Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;
.super Ljava/lang/Object;
.source "LoginDialogCommunity.java"


# instance fields
.field alert:Landroid/app/AlertDialog$Builder;

.field alertDialog:Landroid/app/AlertDialog;

.field facebookUrl:Ljava/lang/String;

.field webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;->facebookUrl:Ljava/lang/String;

    .line 31
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v6

    invoke-virtual {v6}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 32
    .local v0, "display":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 33
    .local v3, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 34
    iget v1, v3, Landroid/graphics/Point;->y:I

    .line 35
    .local v1, "height":I
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 36
    .local v4, "width":I
    new-instance v6, Landroid/webkit/WebView;

    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;->webView:Landroid/webkit/WebView;

    .line 37
    iget-object v6, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 39
    iget-object v6, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;->webView:Landroid/webkit/WebView;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    add-int/lit8 v8, v4, -0x32

    add-int/lit8 v9, v1, -0x64

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    .local v5, "wrapper":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/EditText;

    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 43
    .local v2, "keyboardHack":Landroid/widget/EditText;
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 45
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;->alert:Landroid/app/AlertDialog$Builder;

    .line 46
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 47
    iget-object v6, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;->webView:Landroid/webkit/WebView;

    add-int/lit8 v7, v4, -0x32

    invoke-virtual {v5, v6, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 48
    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-virtual {v5, v2, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 49
    iget-object v6, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;->alert:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 50
    iget-object v6, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;->alert:Landroid/app/AlertDialog$Builder;

    const-string v7, "Close"

    new-instance v8, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity$1;

    invoke-direct {v8, p0}, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity$1;-><init>(Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 56
    iget-object v6, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;->alert:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;->alertDialog:Landroid/app/AlertDialog;

    .line 57
    return-void
.end method


# virtual methods
.method public Login()V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 64
    const-string v1, "LDCO"

    const-string v2, "LoadFacebookCommunity"

    invoke-static {v1, v2}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity$2;

    invoke-direct {v0, p0}, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity$2;-><init>(Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;)V

    .line 95
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method
