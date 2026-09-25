.class public Lorg/qtproject/qt5/android/bindings/BoxFileListing;
.super Landroid/os/AsyncTask;
.source "BoxFileListing.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mClient:Lcom/box/boxandroidlibv2/BoxAndroidClient;

.field private m_webView:Landroid/webkit/WebView;

.field private rootFolderId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/box/boxandroidlibv2/BoxAndroidClient;)V
    .registers 3
    .param p1, "client"    # Lcom/box/boxandroidlibv2/BoxAndroidClient;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 35
    const-string v0, "0"

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/BoxFileListing;->rootFolderId:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/BoxFileListing;->mClient:Lcom/box/boxandroidlibv2/BoxAndroidClient;

    .line 42
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 32
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/qtproject/qt5/android/bindings/BoxFileListing;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .registers 4
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/BoxFileListing;->rootFolderId:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt5/android/bindings/BoxFileListing;->getFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 15
    .param p1, "pathId"    # Ljava/lang/String;
    .param p2, "pathName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    const-string v9, "BFL"

    const-string v10, "file listing"

    invoke-static {v9, v10}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v4, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_c
    const-string v9, "BFL"

    invoke-static {v9, p1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/16 v9, 0x3e8

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxPagingRequestObject;->pagingRequestObject(II)Lcom/box/boxjavalibv2/requests/requestobjects/BoxPagingRequestObject;

    move-result-object v7

    .line 51
    .local v7, "pageReq":Lcom/box/boxjavalibv2/requests/requestobjects/BoxPagingRequestObject;
    iget-object v9, p0, Lorg/qtproject/qt5/android/bindings/BoxFileListing;->mClient:Lcom/box/boxandroidlibv2/BoxAndroidClient;

    invoke-virtual {v9}, Lcom/box/boxandroidlibv2/BoxAndroidClient;->getFoldersManager()Lcom/box/boxjavalibv2/resourcemanagers/IBoxFoldersManager;

    move-result-object v9

    invoke-interface {v9, p1, v7}, Lcom/box/boxjavalibv2/resourcemanagers/IBoxFoldersManager;->getFolderItems(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxPagingRequestObject;)Lcom/box/boxjavalibv2/dao/BoxCollection;

    move-result-object v8

    check-cast v8, Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;

    .line 52
    .local v8, "rootDir":Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;
    invoke-virtual {v8}, Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;->getEntries()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/box/boxjavalibv2/dao/BoxTypedObject;

    .line 54
    .local v2, "entry":Lcom/box/boxjavalibv2/dao/BoxTypedObject;
    move-object v0, v2

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxItem;

    move-object v6, v0

    .line 55
    .local v6, "item":Lcom/box/boxjavalibv2/dao/BoxItem;
    instance-of v10, v2, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

    if-eqz v10, :cond_7e

    .line 58
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/box/boxjavalibv2/dao/BoxItem;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, "folderName":Ljava/lang/String;
    const-string v10, "BFL"

    invoke-static {v10, v5}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v2}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;->getId()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lorg/qtproject/qt5/android/bindings/BoxFileListing;->getFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_78
    .catch Lcom/box/boxjavalibv2/exceptions/BoxServerException; {:try_start_c .. :try_end_78} :catch_79
    .catch Lcom/box/restclientv2/exceptions/BoxRestException; {:try_start_c .. :try_end_78} :catch_aa
    .catch Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException; {:try_start_c .. :try_end_78} :catch_af

    goto :goto_2c

    .line 71
    .end local v2    # "entry":Lcom/box/boxjavalibv2/dao/BoxTypedObject;
    .end local v5    # "folderName":Ljava/lang/String;
    .end local v6    # "item":Lcom/box/boxjavalibv2/dao/BoxItem;
    .end local v7    # "pageReq":Lcom/box/boxjavalibv2/requests/requestobjects/BoxPagingRequestObject;
    .end local v8    # "rootDir":Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;
    :catch_79
    move-exception v1

    .line 73
    .local v1, "e":Lcom/box/boxjavalibv2/exceptions/BoxServerException;
    invoke-virtual {v1}, Lcom/box/boxjavalibv2/exceptions/BoxServerException;->printStackTrace()V

    .line 83
    .end local v1    # "e":Lcom/box/boxjavalibv2/exceptions/BoxServerException;
    :cond_7d
    :goto_7d
    return-object v4

    .line 64
    .restart local v2    # "entry":Lcom/box/boxjavalibv2/dao/BoxTypedObject;
    .restart local v6    # "item":Lcom/box/boxjavalibv2/dao/BoxItem;
    .restart local v7    # "pageReq":Lcom/box/boxjavalibv2/requests/requestobjects/BoxPagingRequestObject;
    .restart local v8    # "rootDir":Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;
    :cond_7e
    :try_start_7e
    invoke-virtual {v6}, Lcom/box/boxjavalibv2/dao/BoxItem;->getName()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "fileName":Ljava/lang/String;
    const-string v10, "BFL"

    invoke-static {v10, v3}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "<boxid>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a9
    .catch Lcom/box/boxjavalibv2/exceptions/BoxServerException; {:try_start_7e .. :try_end_a9} :catch_79
    .catch Lcom/box/restclientv2/exceptions/BoxRestException; {:try_start_7e .. :try_end_a9} :catch_aa
    .catch Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException; {:try_start_7e .. :try_end_a9} :catch_af

    goto :goto_2c

    .line 75
    .end local v2    # "entry":Lcom/box/boxjavalibv2/dao/BoxTypedObject;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v6    # "item":Lcom/box/boxjavalibv2/dao/BoxItem;
    .end local v7    # "pageReq":Lcom/box/boxjavalibv2/requests/requestobjects/BoxPagingRequestObject;
    .end local v8    # "rootDir":Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;
    :catch_aa
    move-exception v1

    .line 77
    .local v1, "e":Lcom/box/restclientv2/exceptions/BoxRestException;
    invoke-virtual {v1}, Lcom/box/restclientv2/exceptions/BoxRestException;->printStackTrace()V

    goto :goto_7d

    .line 79
    .end local v1    # "e":Lcom/box/restclientv2/exceptions/BoxRestException;
    :catch_af
    move-exception v1

    .line 81
    .local v1, "e":Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
    invoke-virtual {v1}, Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;->printStackTrace()V

    goto :goto_7d
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 32
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lorg/qtproject/qt5/android/bindings/BoxFileListing;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v0

    const v1, 0x7f0a0038

    invoke-virtual {v0, v1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/BoxFileListing;->m_webView:Landroid/webkit/WebView;

    .line 98
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/BoxFileListing;->m_webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:retrieveBoxFileListCallback(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 99
    return-void
.end method
