.class public Lorg/qtproject/qt5/android/bindings/DropBoxFileSearch;
.super Landroid/os/AsyncTask;
.source "DropBoxFileSearch.java"


# annotations
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
.field private dropbox:Lcom/dropbox/client2/DropboxAPI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/client2/DropboxAPI",
            "<*>;"
        }
    .end annotation
.end field

.field private filename:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private m_webView:Landroid/webkit/WebView;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dropbox/client2/DropboxAPI;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "dropboxPath"    # Ljava/lang/String;
    .param p4, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/dropbox/client2/DropboxAPI",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, "dropbox":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<*>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileSearch;->mContext:Landroid/content/Context;

    .line 66
    const-string v0, "DBFS"

    const-string v1, "fileSearch constructor"

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iput-object p2, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileSearch;->dropbox:Lcom/dropbox/client2/DropboxAPI;

    .line 68
    iput-object p3, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileSearch;->path:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileSearch;->filename:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 78
    :try_start_0
    const-string v0, "DBFS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileSearch;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileSearch;->dropbox:Lcom/dropbox/client2/DropboxAPI;

    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileSearch;->path:Ljava/lang/String;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/client2/DropboxAPI;->metadata(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Lcom/dropbox/client2/DropboxAPI$Entry;

    move-result-object v6

    .line 81
    .local v6, "directory":Lcom/dropbox/client2/DropboxAPI$Entry;
    iget-object v0, v6, Lcom/dropbox/client2/DropboxAPI$Entry;->contents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_aa

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dropbox/client2/DropboxAPI$Entry;

    .line 83
    .local v8, "entry":Lcom/dropbox/client2/DropboxAPI$Entry;
    const-string v1, "DBFS"

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

    .line 84
    iget-boolean v1, v8, Lcom/dropbox/client2/DropboxAPI$Entry;->isDir:Z

    if-nez v1, :cond_2d

    .line 86
    const-string v1, "DBFS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filename: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/dropbox/client2/DropboxAPI$Entry;->fileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "DBFS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filename1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileSearch;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v8}, Lcom/dropbox/client2/DropboxAPI$Entry;->fileName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileSearch;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 90
    const-string v0, "DBFS"

    const-string v1, "equal"

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_a4
    .catch Lcom/dropbox/client2/exception/DropboxException; {:try_start_0 .. :try_end_a4} :catch_a6

    move-result-object v0

    .line 100
    .end local v6    # "directory":Lcom/dropbox/client2/DropboxAPI$Entry;
    .end local v8    # "entry":Lcom/dropbox/client2/DropboxAPI$Entry;
    :goto_a5
    return-object v0

    .line 96
    :catch_a6
    move-exception v7

    .line 98
    .local v7, "e":Lcom/dropbox/client2/exception/DropboxException;
    invoke-virtual {v7}, Lcom/dropbox/client2/exception/DropboxException;->printStackTrace()V

    .line 100
    .end local v7    # "e":Lcom/dropbox/client2/exception/DropboxException;
    :cond_aa
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_a5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 51
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/qtproject/qt5/android/bindings/DropBoxFileSearch;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 108
    const-string v0, "DBFS"

    const-string v1, "on post execute"

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v0

    const v1, 0x7f0a0038

    invoke-virtual {v0, v1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileSearch;->m_webView:Landroid/webkit/WebView;

    .line 110
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 112
    const-string v0, "DBFS"

    const-string v1, "on post execute- finish -true"

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileSearch;->m_webView:Landroid/webkit/WebView;

    const-string v1, "javascript:finishSearchingForDbFile(true);"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 122
    :goto_2a
    return-void

    .line 118
    :cond_2b
    const-string v0, "DBFS"

    const-string v1, "on post execute- finish -false"

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileSearch;->m_webView:Landroid/webkit/WebView;

    const-string v1, "javascript:finishSearchingForDbFile(false);"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2a
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 51
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/qtproject/qt5/android/bindings/DropBoxFileSearch;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
