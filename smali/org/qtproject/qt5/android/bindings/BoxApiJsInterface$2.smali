.class Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface$2;
.super Ljava/lang/Object;
.source "BoxApiJsInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface;->downloadBoxFile(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface;

.field final synthetic val$fileId:Ljava/lang/String;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface;

    .prologue
    .line 40
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface$2;->this$0:Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface;

    iput-object p2, p0, Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface$2;->val$fileId:Ljava/lang/String;

    iput-object p3, p0, Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface$2;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 44
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v2

    const v3, 0x7f0a0038

    invoke-virtual {v2, v3}, Lorg/qtproject/qt5/android/bindings/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 45
    .local v1, "m_webView":Landroid/webkit/WebView;
    new-instance v0, Lorg/qtproject/qt5/android/bindings/BoxFileDownload;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface$2;->val$fileId:Ljava/lang/String;

    iget-object v4, p0, Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface$2;->val$fileName:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4}, Lorg/qtproject/qt5/android/bindings/BoxFileDownload;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .local v0, "download":Lorg/qtproject/qt5/android/bindings/BoxFileDownload;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lorg/qtproject/qt5/android/bindings/BoxFileDownload;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 48
    return-void
.end method
