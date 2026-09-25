.class Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface$6;
.super Ljava/lang/Object;
.source "DropBoxApiJsInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface;->listFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface;)V
    .registers 2
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface;

    .prologue
    .line 130
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface$6;->this$0:Lorg/qtproject/qt5/android/bindings/DropBoxApiJsInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 134
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v2

    const v3, 0x7f0a0038

    invoke-virtual {v2, v3}, Lorg/qtproject/qt5/android/bindings/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 135
    .local v1, "m_webView":Landroid/webkit/WebView;
    new-instance v0, Lorg/qtproject/qt5/android/bindings/DropBoxFileListing;

    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getDBApi()Lcom/dropbox/client2/DropboxAPI;

    move-result-object v2

    const-string v3, "/"

    invoke-direct {v0, v2, v3}, Lorg/qtproject/qt5/android/bindings/DropBoxFileListing;-><init>(Lcom/dropbox/client2/DropboxAPI;Ljava/lang/String;)V

    .line 136
    .local v0, "list":Lorg/qtproject/qt5/android/bindings/DropBoxFileListing;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lorg/qtproject/qt5/android/bindings/DropBoxFileListing;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 138
    return-void
.end method
