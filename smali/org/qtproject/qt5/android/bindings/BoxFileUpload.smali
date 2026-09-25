.class public Lorg/qtproject/qt5/android/bindings/BoxFileUpload;
.super Landroid/os/AsyncTask;
.source "BoxFileUpload.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private boxpath:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private existingFileId:Ljava/lang/String;

.field private localFile:Ljava/lang/String;

.field private m_webView:Landroid/webkit/WebView;

.field private uploadFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "boxpath"    # Ljava/lang/String;
    .param p3, "uploadFileName"    # Ljava/lang/String;
    .param p4, "localFile"    # Ljava/lang/String;
    .param p5, "exsitingFileId"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/BoxFileUpload;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lorg/qtproject/qt5/android/bindings/BoxFileUpload;->boxpath:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lorg/qtproject/qt5/android/bindings/BoxFileUpload;->localFile:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lorg/qtproject/qt5/android/bindings/BoxFileUpload;->uploadFileName:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lorg/qtproject/qt5/android/bindings/BoxFileUpload;->existingFileId:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    .line 53
    const-string v3, "BFU"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "localFile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/qtproject/qt5/android/bindings/BoxFileUpload;->localFile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/qtproject/qt5/android/bindings/PTJLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/BoxFileUpload;->localFile:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v1, "tempFile":Ljava/io/File;
    const-string v3, "BFU"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "existing file id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/qtproject/qt5/android/bindings/BoxFileUpload;->existingFileId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/qtproject/qt5/android/bindings/PTJLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :try_start_3c
    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/BoxFileUpload;->boxpath:Ljava/lang/String;

    invoke-static {v3}, Lorg/qtproject/qt5/android/bindings/BoxApiClient;->getPTMobileFolderId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/qtproject/qt5/android/bindings/BoxFileUpload;->uploadFileName:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;->uploadFileRequestObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;

    move-result-object v2

    .line 58
    .local v2, "upload":Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;
    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/BoxFileUpload;->existingFileId:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 59
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getBoxClient()Lcom/box/boxandroidlibv2/BoxAndroidClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/box/boxandroidlibv2/BoxAndroidClient;->getFilesManager()Lcom/box/boxjavalibv2/resourcemanagers/IBoxFilesManager;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/box/boxjavalibv2/resourcemanagers/IBoxFilesManager;->uploadFile(Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFile;
    :try_end_5d
    .catch Lcom/box/restclientv2/exceptions/BoxSDKException; {:try_start_3c .. :try_end_5d} :catch_71
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_5d} :catch_7e

    .line 76
    :goto_5d
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .end local v2    # "upload":Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;
    :goto_62
    return-object v3

    .line 63
    .restart local v2    # "upload":Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;
    :cond_63
    :try_start_63
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getBoxClient()Lcom/box/boxandroidlibv2/BoxAndroidClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/box/boxandroidlibv2/BoxAndroidClient;->getFilesManager()Lcom/box/boxjavalibv2/resourcemanagers/IBoxFilesManager;

    move-result-object v3

    iget-object v4, p0, Lorg/qtproject/qt5/android/bindings/BoxFileUpload;->existingFileId:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/box/boxjavalibv2/resourcemanagers/IBoxFilesManager;->uploadNewVersion(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFile;
    :try_end_70
    .catch Lcom/box/restclientv2/exceptions/BoxSDKException; {:try_start_63 .. :try_end_70} :catch_71
    .catch Ljava/lang/InterruptedException; {:try_start_63 .. :try_end_70} :catch_7e

    goto :goto_5d

    .line 68
    .end local v2    # "upload":Lcom/box/restclientv2/requestsbase/BoxFileUploadRequestObject;
    :catch_71
    move-exception v0

    .line 69
    .local v0, "e":Lcom/box/restclientv2/exceptions/BoxSDKException;
    const-string v3, "BFU"

    const-string v4, "An error occurred when uploading a sample file."

    invoke-static {v3, v4, v0}, Lorg/qtproject/qt5/android/bindings/PTJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_62

    .line 72
    .end local v0    # "e":Lcom/box/restclientv2/exceptions/BoxSDKException;
    :catch_7e
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "BFU"

    const-string v4, "Interrupted."

    invoke-static {v3, v4, v0}, Lorg/qtproject/qt5/android/bindings/PTJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_62
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 31
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/qtproject/qt5/android/bindings/BoxFileUpload;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 82
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v0

    const v1, 0x7f0a0038

    invoke-virtual {v0, v1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/BoxFileUpload;->m_webView:Landroid/webkit/WebView;

    .line 83
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 85
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/BoxFileUpload;->m_webView:Landroid/webkit/WebView;

    const-string v1, "javascript:finishUploadingBoxFile(true);"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 91
    :goto_1c
    return-void

    .line 89
    :cond_1d
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/BoxFileUpload;->m_webView:Landroid/webkit/WebView;

    const-string v1, "javascript:finishUploadingBoxFile(false);"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1c
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 31
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/qtproject/qt5/android/bindings/BoxFileUpload;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
