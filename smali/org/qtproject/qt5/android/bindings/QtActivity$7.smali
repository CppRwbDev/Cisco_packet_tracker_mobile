.class Lorg/qtproject/qt5/android/bindings/QtActivity$7;
.super Ljava/lang/Object;
.source "QtActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/QtActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/QtActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/QtActivity;

    .prologue
    .line 1538
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$7;->this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 1541
    iget-object v5, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$7;->this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;

    const v6, 0x7f03001a

    invoke-virtual {v5, v6}, Lorg/qtproject/qt5/android/bindings/QtActivity;->setContentView(I)V

    .line 1542
    iget-object v6, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$7;->this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;

    iget-object v5, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$7;->this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;

    const v7, 0x7f0a0037

    invoke-virtual {v5, v7}, Lorg/qtproject/qt5/android/bindings/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/webkit/WebView;

    iput-object v5, v6, Lorg/qtproject/qt5/android/bindings/QtActivity;->webView:Landroid/webkit/WebView;

    .line 1543
    iget-object v5, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$7;->this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;

    iget-object v5, v5, Lorg/qtproject/qt5/android/bindings/QtActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1544
    iget-object v5, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$7;->this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;

    iget-object v5, v5, Lorg/qtproject/qt5/android/bindings/QtActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v5, v8}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 1545
    iget-object v5, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$7;->this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;

    iget-object v5, v5, Lorg/qtproject/qt5/android/bindings/QtActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 1546
    iget-object v5, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$7;->this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;

    iget-object v5, v5, Lorg/qtproject/qt5/android/bindings/QtActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 1547
    iget-object v5, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$7;->this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;

    iget-object v5, v5, Lorg/qtproject/qt5/android/bindings/QtActivity;->webView:Landroid/webkit/WebView;

    new-instance v6, Lorg/qtproject/qt5/android/bindings/QtActivity$7$1;

    invoke-direct {v6, p0}, Lorg/qtproject/qt5/android/bindings/QtActivity$7$1;-><init>(Lorg/qtproject/qt5/android/bindings/QtActivity$7;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1554
    :try_start_4c
    iget-object v5, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$7;->this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;

    invoke-virtual {v5}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "tip"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1556
    .local v1, "allEntries":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1557
    .local v2, "htmlEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5e
    array-length v5, v1

    if-ge v3, v5, :cond_73

    .line 1558
    aget-object v5, v1, v3

    const-string v6, ".html"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 1559
    aget-object v5, v1, v3

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1557
    :cond_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    .line 1563
    :cond_73
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 1564
    .local v4, "r":Ljava/util/Random;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 1565
    .local v0, "R":I
    iget-object v5, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$7;->this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;

    iget-object v6, v5, Lorg/qtproject/qt5/android/bindings/QtActivity;->webView:Landroid/webkit/WebView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file:///android_asset/tip/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1566
    iget-object v5, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$7;->this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;

    iget-object v5, v5, Lorg/qtproject/qt5/android/bindings/QtActivity;->webView:Landroid/webkit/WebView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setVisibility(I)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_a8} :catch_a9

    .line 1568
    .end local v0    # "R":I
    .end local v1    # "allEntries":[Ljava/lang/String;
    .end local v2    # "htmlEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v4    # "r":Ljava/util/Random;
    :goto_a8
    return-void

    .line 1567
    :catch_a9
    move-exception v5

    goto :goto_a8
.end method
