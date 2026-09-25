.class public Lorg/qtproject/qt5/android/bindings/BoxFileDownload;
.super Landroid/os/AsyncTask;
.source "BoxFileDownload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt5/android/bindings/BoxFileDownload$StateKeepingFileTransferListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mErrorMsg:Ljava/lang/String;

.field private mFileId:Ljava/lang/String;

.field private mFileLen:Ljava/lang/Long;

.field private mTempFileName:Ljava/lang/String;

.field private m_webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileId"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/BoxFileDownload;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lorg/qtproject/qt5/android/bindings/BoxFileDownload;->mFileId:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/BoxFileDownload;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/BoxFileDownload;->mTempFileName:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 54
    :try_start_0
    const-string v3, "BFD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Downloading file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/qtproject/qt5/android/bindings/BoxFileDownload;->mFileId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/qtproject/qt5/android/bindings/BoxFileDownload;->mTempFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/qtproject/qt5/android/bindings/PTJLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/BoxFileDownload;->mTempFileName:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .local v1, "f":Ljava/io/File;
    new-instance v2, Lorg/qtproject/qt5/android/bindings/BoxFileDownload$StateKeepingFileTransferListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/qtproject/qt5/android/bindings/BoxFileDownload$StateKeepingFileTransferListener;-><init>(Lorg/qtproject/qt5/android/bindings/BoxFileDownload;Lorg/qtproject/qt5/android/bindings/BoxFileDownload$1;)V

    .line 57
    .local v2, "listener":Lorg/qtproject/qt5/android/bindings/BoxFileDownload$StateKeepingFileTransferListener;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getBoxClient()Lcom/box/boxandroidlibv2/BoxAndroidClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/box/boxandroidlibv2/BoxAndroidClient;->getFilesManager()Lcom/box/boxjavalibv2/resourcemanagers/IBoxFilesManager;

    move-result-object v3

    iget-object v4, p0, Lorg/qtproject/qt5/android/bindings/BoxFileDownload;->mFileId:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Lcom/box/boxjavalibv2/resourcemanagers/IBoxFilesManager;->downloadFile(Ljava/lang/String;Ljava/io/File;Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_47

    .line 64
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "listener":Lorg/qtproject/qt5/android/bindings/BoxFileDownload$StateKeepingFileTransferListener;
    :goto_46
    return-object v3

    .line 59
    :catch_47
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "BFD"

    const-string v4, "An error occurred when downloading a file."

    invoke-static {v3, v4, v0}, Lorg/qtproject/qt5/android/bindings/PTJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_46
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 26
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/qtproject/qt5/android/bindings/BoxFileDownload;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 71
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v0

    const v1, 0x7f0a0038

    invoke-virtual {v0, v1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/BoxFileDownload;->m_webView:Landroid/webkit/WebView;

    .line 72
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 74
    const-string v0, "BFD"

    const-string v1, "File is downloaded successfully"

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/BoxFileDownload;->m_webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:openBoxFileFromCache(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/BoxFileDownload;->mTempFileName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 81
    :goto_40
    return-void

    .line 79
    :cond_41
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/BoxFileDownload;->m_webView:Landroid/webkit/WebView;

    const-string v1, "javascript:openBoxFileFailed();"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_40
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/qtproject/qt5/android/bindings/BoxFileDownload;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
