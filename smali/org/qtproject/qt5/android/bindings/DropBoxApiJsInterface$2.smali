.class Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface$2;
.super Ljava/lang/Object;
.source "DropBoxApiJsInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface;->downloadDropBoxFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface;

    .prologue
    .line 37
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface$2;->this$0:Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface;

    iput-object p2, p0, Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 41
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v2

    const v3, 0x7f0a0038

    invoke-virtual {v2, v3}, Lorg/qtproject/qt5/android/bindings/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 42
    .local v1, "m_webView":Landroid/webkit/WebView;
    new-instance v0, Lorg/qtproject/qt5/android/bindings/DropBoxFileDownload;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getDBApi()Lcom/dropbox/client2/DropboxAPI;

    move-result-object v3

    iget-object v4, p0, Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface$2;->val$path:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4}, Lorg/qtproject/qt5/android/bindings/DropBoxFileDownload;-><init>(Landroid/content/Context;Lcom/dropbox/client2/DropboxAPI;Ljava/lang/String;)V

    .line 43
    .local v0, "download":Lorg/qtproject/qt5/android/bindings/DropBoxFileDownload;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lorg/qtproject/qt5/android/bindings/DropBoxFileDownload;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 45
    return-void
.end method
