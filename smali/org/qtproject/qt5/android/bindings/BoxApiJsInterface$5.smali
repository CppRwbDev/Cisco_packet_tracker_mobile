.class Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface$5;
.super Ljava/lang/Object;
.source "BoxApiJsInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface;->listFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface;)V
    .registers 2
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface;

    .prologue
    .line 104
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface$5;->this$0:Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 108
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v2

    const v3, 0x7f0a0038

    invoke-virtual {v2, v3}, Lorg/qtproject/qt5/android/bindings/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 109
    .local v1, "m_webView":Landroid/webkit/WebView;
    new-instance v0, Lorg/qtproject/qt5/android/bindings/BoxFileListing;

    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getBoxClient()Lcom/box/boxandroidlibv2/BoxAndroidClient;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/qtproject/qt5/android/bindings/BoxFileListing;-><init>(Lcom/box/boxandroidlibv2/BoxAndroidClient;)V

    .line 110
    .local v0, "list":Lorg/qtproject/qt5/android/bindings/BoxFileListing;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lorg/qtproject/qt5/android/bindings/BoxFileListing;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 112
    return-void
.end method
