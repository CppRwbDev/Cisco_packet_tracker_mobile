.class Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface$5;
.super Ljava/lang/Object;
.source "DropBoxApiJsInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface;->checkFileExist(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface;

.field final synthetic val$file:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface;

    .prologue
    .line 111
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface$5;->this$0:Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface;

    iput-object p2, p0, Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface$5;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface$5;->val$file:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 115
    const-string v2, "DBAJI"

    const-string v3, "file Search"

    invoke-static {v2, v3}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v2

    const v3, 0x7f0a0038

    invoke-virtual {v2, v3}, Lorg/qtproject/qt5/android/bindings/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 117
    .local v0, "m_webView":Landroid/webkit/WebView;
    new-instance v1, Lorg/qtproject/qt5/android/bindings/DropBoxFileSearch;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getDBApi()Lcom/dropbox/client2/DropboxAPI;

    move-result-object v3

    iget-object v4, p0, Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface$5;->val$path:Ljava/lang/String;

    iget-object v5, p0, Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface$5;->val$file:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/qtproject/qt5/android/bindings/DropBoxFileSearch;-><init>(Landroid/content/Context;Lcom/dropbox/client2/DropboxAPI;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .local v1, "search":Lorg/qtproject/qt5/android/bindings/DropBoxFileSearch;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lorg/qtproject/qt5/android/bindings/DropBoxFileSearch;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 120
    return-void
.end method
