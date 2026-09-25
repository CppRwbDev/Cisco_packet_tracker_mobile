.class public Lorg/qtproject/qt5/android/bindings/DropBoxFileUpload;
.super Landroid/os/AsyncTask;
.source "DropBoxFileUpload.java"


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
.field private context:Landroid/content/Context;

.field private dbpath:Ljava/lang/String;

.field private dropbox:Lcom/dropbox/client2/DropboxAPI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/client2/DropboxAPI",
            "<*>;"
        }
    .end annotation
.end field

.field private localFile:Ljava/lang/String;

.field private m_webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dropbox/client2/DropboxAPI;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "dbpath"    # Ljava/lang/String;
    .param p4, "localFile"    # Ljava/lang/String;
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
    .line 23
    .local p2, "dropbox":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<*>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileUpload;->context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileUpload;->dropbox:Lcom/dropbox/client2/DropboxAPI;

    .line 26
    iput-object p3, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileUpload;->dbpath:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileUpload;->localFile:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 10
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 38
    :try_start_0
    const-string v1, "DBFU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "localFile: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileUpload;->localFile:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v7, Ljava/io/File;

    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileUpload;->localFile:Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .local v7, "tempFile":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 42
    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileUpload;->dropbox:Lcom/dropbox/client2/DropboxAPI;

    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileUpload;->dbpath:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/dropbox/client2/DropboxAPI;->putFileOverwrite(Ljava/lang/String;Ljava/io/InputStream;JLcom/dropbox/client2/ProgressListener;)Lcom/dropbox/client2/DropboxAPI$Entry;

    .line 44
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_36} :catch_38
    .catch Lcom/dropbox/client2/exception/DropboxException; {:try_start_0 .. :try_end_36} :catch_42

    move-result-object v1

    .line 55
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v7    # "tempFile":Ljava/io/File;
    :goto_37
    return-object v1

    .line 46
    :catch_38
    move-exception v0

    .line 48
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 55
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3c
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_37

    .line 50
    :catch_42
    move-exception v0

    .line 52
    .local v0, "e":Lcom/dropbox/client2/exception/DropboxException;
    invoke-virtual {v0}, Lcom/dropbox/client2/exception/DropboxException;->printStackTrace()V

    goto :goto_3c
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 15
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/qtproject/qt5/android/bindings/DropBoxFileUpload;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 61
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v0

    const v1, 0x7f0a0038

    invoke-virtual {v0, v1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileUpload;->m_webView:Landroid/webkit/WebView;

    .line 62
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 64
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileUpload;->m_webView:Landroid/webkit/WebView;

    const-string v1, "javascript:finishUploadingDbFile(true);"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 71
    :goto_1c
    return-void

    .line 69
    :cond_1d
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileUpload;->m_webView:Landroid/webkit/WebView;

    const-string v1, "javascript:finishUploadingDbFile(false);"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1c
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 15
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/qtproject/qt5/android/bindings/DropBoxFileUpload;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
