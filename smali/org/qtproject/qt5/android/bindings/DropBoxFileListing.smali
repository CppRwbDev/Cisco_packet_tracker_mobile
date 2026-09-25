.class public Lorg/qtproject/qt5/android/bindings/DropBoxFileListing;
.super Landroid/os/AsyncTask;
.source "DropBoxFileListing.java"


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
.field private dropbox:Lcom/dropbox/client2/DropboxAPI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/client2/DropboxAPI",
            "<*>;"
        }
    .end annotation
.end field

.field private m_webView:Landroid/webkit/WebView;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dropbox/client2/DropboxAPI;Ljava/lang/String;)V
    .registers 3
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/client2/DropboxAPI",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "dropbox":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<*>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileListing;->dropbox:Lcom/dropbox/client2/DropboxAPI;

    .line 24
    iput-object p2, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileListing;->path:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 14
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/qtproject/qt5/android/bindings/DropBoxFileListing;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .registers 3
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
    .line 58
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileListing;->path:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/qtproject/qt5/android/bindings/DropBoxFileListing;->getFiles(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getFiles(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 12
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    const-string v0, "DBFL"

    const-string v1, "file listing"

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v9, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_c
    const-string v0, "DBFL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileListing;->dropbox:Lcom/dropbox/client2/DropboxAPI;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/client2/DropboxAPI;->metadata(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Lcom/dropbox/client2/DropboxAPI$Entry;

    move-result-object v6

    .line 34
    .local v6, "directory":Lcom/dropbox/client2/DropboxAPI$Entry;
    iget-object v0, v6, Lcom/dropbox/client2/DropboxAPI$Entry;->contents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dropbox/client2/DropboxAPI$Entry;

    .line 36
    .local v8, "entry":Lcom/dropbox/client2/DropboxAPI$Entry;
    const-string v1, "DBFL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Lcom/dropbox/client2/DropboxAPI$Entry;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-boolean v1, v8, Lcom/dropbox/client2/DropboxAPI$Entry;->isDir:Z

    if-eqz v1, :cond_6f

    .line 40
    iget-object v1, v8, Lcom/dropbox/client2/DropboxAPI$Entry;->path:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/qtproject/qt5/android/bindings/DropBoxFileListing;->getFiles(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_69
    .catch Lcom/dropbox/client2/exception/DropboxException; {:try_start_c .. :try_end_69} :catch_6a

    goto :goto_36

    .line 48
    .end local v6    # "directory":Lcom/dropbox/client2/DropboxAPI$Entry;
    .end local v8    # "entry":Lcom/dropbox/client2/DropboxAPI$Entry;
    :catch_6a
    move-exception v7

    .line 50
    .local v7, "e":Lcom/dropbox/client2/exception/DropboxException;
    invoke-virtual {v7}, Lcom/dropbox/client2/exception/DropboxException;->printStackTrace()V

    .line 52
    .end local v7    # "e":Lcom/dropbox/client2/exception/DropboxException;
    :cond_6e
    return-object v9

    .line 44
    .restart local v6    # "directory":Lcom/dropbox/client2/DropboxAPI$Entry;
    .restart local v8    # "entry":Lcom/dropbox/client2/DropboxAPI$Entry;
    :cond_6f
    :try_start_6f
    iget-object v1, v8, Lcom/dropbox/client2/DropboxAPI$Entry;->path:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_74
    .catch Lcom/dropbox/client2/exception/DropboxException; {:try_start_6f .. :try_end_74} :catch_6a

    goto :goto_36
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 14
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lorg/qtproject/qt5/android/bindings/DropBoxFileListing;->onPostExecute(Ljava/util/ArrayList;)V

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
    .line 65
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v0

    const v1, 0x7f0a0038

    invoke-virtual {v0, v1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileListing;->m_webView:Landroid/webkit/WebView;

    .line 66
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileListing;->m_webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:retrieveDropBoxFileListCallback(\""

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

    .line 68
    return-void
.end method
