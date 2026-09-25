.class public Lorg/qtproject/qt5/android/bindings/BoxFileSearch;
.super Landroid/os/AsyncTask;
.source "BoxFileSearch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private dbAuthenticated:Ljava/lang/Boolean;

.field private filename:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private m_webView:Landroid/webkit/WebView;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/BoxFileSearch;->mContext:Landroid/content/Context;

    .line 51
    const-string v0, "BFS"

    const-string v1, "fileSearch constructor"

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iput-object p2, p0, Lorg/qtproject/qt5/android/bindings/BoxFileSearch;->path:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lorg/qtproject/qt5/android/bindings/BoxFileSearch;->filename:Ljava/lang/String;

    .line 54
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/BoxFileSearch;->dbAuthenticated:Ljava/lang/Boolean;

    .line 55
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 36
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/qtproject/qt5/android/bindings/BoxFileSearch;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 12
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 60
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getBoxClient()Lcom/box/boxandroidlibv2/BoxAndroidClient;

    move-result-object v6

    if-nez v6, :cond_17

    .line 62
    const-string v6, "BFS"

    const-string v7, "db is not authenticated"

    invoke-static {v6, v7}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lorg/qtproject/qt5/android/bindings/BoxFileSearch;->dbAuthenticated:Ljava/lang/Boolean;

    .line 64
    const-string v6, "-1"

    .line 100
    :goto_16
    return-object v6

    .line 70
    :cond_17
    :try_start_17
    const-string v6, "BFS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/qtproject/qt5/android/bindings/BoxFileSearch;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getBoxClient()Lcom/box/boxandroidlibv2/BoxAndroidClient;

    move-result-object v6

    invoke-virtual {v6}, Lcom/box/boxandroidlibv2/BoxAndroidClient;->getFoldersManager()Lcom/box/boxjavalibv2/resourcemanagers/IBoxFoldersManager;

    move-result-object v6

    iget-object v7, p0, Lorg/qtproject/qt5/android/bindings/BoxFileSearch;->path:Ljava/lang/String;

    invoke-static {v7}, Lorg/qtproject/qt5/android/bindings/BoxApiClient;->getPTMobileFolderId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lcom/box/boxjavalibv2/resourcemanagers/IBoxFoldersManager;->getFolderItems(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxPagingRequestObject;)Lcom/box/boxjavalibv2/dao/BoxCollection;

    move-result-object v5

    check-cast v5, Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;

    .line 72
    .local v5, "rootDir":Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;
    invoke-virtual {v5}, Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;->getEntries()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ae

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/box/boxjavalibv2/dao/BoxTypedObject;

    .line 74
    .local v2, "entry":Lcom/box/boxjavalibv2/dao/BoxTypedObject;
    move-object v0, v2

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxItem;

    move-object v4, v0

    .line 75
    .local v4, "item":Lcom/box/boxjavalibv2/dao/BoxItem;
    instance-of v7, v2, Lcom/box/boxandroidlibv2/dao/BoxAndroidFile;

    if-eqz v7, :cond_4e

    .line 78
    invoke-virtual {v4}, Lcom/box/boxjavalibv2/dao/BoxItem;->getName()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "file":Ljava/lang/String;
    const-string v7, "BFS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/qtproject/qt5/android/bindings/BoxFileSearch;->filename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v7, p0, Lorg/qtproject/qt5/android/bindings/BoxFileSearch;->filename:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 82
    const-string v6, "BFS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file exist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/box/boxjavalibv2/dao/BoxItem;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v4}, Lcom/box/boxjavalibv2/dao/BoxItem;->getId()Ljava/lang/String;
    :try_end_a7
    .catch Lcom/box/boxjavalibv2/exceptions/BoxServerException; {:try_start_17 .. :try_end_a7} :catch_aa
    .catch Lcom/box/restclientv2/exceptions/BoxRestException; {:try_start_17 .. :try_end_a7} :catch_b2
    .catch Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException; {:try_start_17 .. :try_end_a7} :catch_b7

    move-result-object v6

    goto/16 :goto_16

    .line 88
    .end local v2    # "entry":Lcom/box/boxjavalibv2/dao/BoxTypedObject;
    .end local v3    # "file":Ljava/lang/String;
    .end local v4    # "item":Lcom/box/boxjavalibv2/dao/BoxItem;
    .end local v5    # "rootDir":Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;
    :catch_aa
    move-exception v1

    .line 90
    .local v1, "e":Lcom/box/boxjavalibv2/exceptions/BoxServerException;
    invoke-virtual {v1}, Lcom/box/boxjavalibv2/exceptions/BoxServerException;->printStackTrace()V

    .line 100
    .end local v1    # "e":Lcom/box/boxjavalibv2/exceptions/BoxServerException;
    :cond_ae
    :goto_ae
    const-string v6, "0"

    goto/16 :goto_16

    .line 92
    :catch_b2
    move-exception v1

    .line 94
    .local v1, "e":Lcom/box/restclientv2/exceptions/BoxRestException;
    invoke-virtual {v1}, Lcom/box/restclientv2/exceptions/BoxRestException;->printStackTrace()V

    goto :goto_ae

    .line 96
    .end local v1    # "e":Lcom/box/restclientv2/exceptions/BoxRestException;
    :catch_b7
    move-exception v1

    .line 98
    .local v1, "e":Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
    invoke-virtual {v1}, Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;->printStackTrace()V

    goto :goto_ae
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 36
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/qtproject/qt5/android/bindings/BoxFileSearch;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 106
    const-string v0, "BFS"

    const-string v1, "on post execute"

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v0

    const v1, 0x7f0a0038

    invoke-virtual {v0, v1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/BoxFileSearch;->m_webView:Landroid/webkit/WebView;

    .line 109
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/BoxFileSearch;->dbAuthenticated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 111
    const-string v0, "BFS"

    const-string v1, "on post execute- not authenticated"

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/BoxFileSearch;->m_webView:Landroid/webkit/WebView;

    const-string v1, "javascript:failToAuthenticateWithBox();"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 120
    :goto_2c
    return-void

    .line 116
    :cond_2d
    const-string v0, "BFS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/BoxFileSearch;->m_webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:finishSearchingForBoxFile(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2c
.end method
