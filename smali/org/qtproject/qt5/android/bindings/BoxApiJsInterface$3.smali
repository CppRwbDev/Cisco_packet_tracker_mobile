.class Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface$3;
.super Ljava/lang/Object;
.source "BoxApiJsInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface;->uploadBoxFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface;

.field final synthetic val$boxPath:Ljava/lang/String;

.field final synthetic val$existingFileId:Ljava/lang/String;

.field final synthetic val$localFile:Ljava/lang/String;

.field final synthetic val$uploadFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface;

    .prologue
    .line 63
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface$3;->this$0:Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface;

    iput-object p2, p0, Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface$3;->val$boxPath:Ljava/lang/String;

    iput-object p3, p0, Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface$3;->val$uploadFileName:Ljava/lang/String;

    iput-object p4, p0, Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface$3;->val$localFile:Ljava/lang/String;

    iput-object p5, p0, Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface$3;->val$existingFileId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 67
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v1

    const v2, 0x7f0a0038

    invoke-virtual {v1, v2}, Lorg/qtproject/qt5/android/bindings/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/webkit/WebView;

    .line 68
    .local v6, "m_webView":Landroid/webkit/WebView;
    new-instance v0, Lorg/qtproject/qt5/android/bindings/BoxFileUpload;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface$3;->val$boxPath:Ljava/lang/String;

    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface$3;->val$uploadFileName:Ljava/lang/String;

    iget-object v4, p0, Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface$3;->val$localFile:Ljava/lang/String;

    iget-object v5, p0, Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface$3;->val$existingFileId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lorg/qtproject/qt5/android/bindings/BoxFileUpload;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .local v0, "upload":Lorg/qtproject/qt5/android/bindings/BoxFileUpload;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/qtproject/qt5/android/bindings/BoxFileUpload;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 71
    return-void
.end method
