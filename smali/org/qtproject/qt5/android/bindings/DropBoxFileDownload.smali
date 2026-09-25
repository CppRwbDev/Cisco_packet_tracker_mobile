.class public Lorg/qtproject/qt5/android/bindings/DropBoxFileDownload;
.super Landroid/os/AsyncTask;
.source "DropBoxFileDownload.java"


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


# static fields
.field private static final PKA_FILE_NAME:Ljava/lang/String; = "PTTemp.pka"

.field private static final PKT_FILE_NAME:Ljava/lang/String; = "PTTemp.pkt"

.field private static final PKZ_FILE_NAME:Ljava/lang/String; = "PTTemp.pkz"


# instance fields
.field private mApi:Lcom/dropbox/client2/DropboxAPI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/client2/DropboxAPI",
            "<*>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mErrorMsg:Ljava/lang/String;

.field private mFileLen:Ljava/lang/Long;

.field private mPath:Ljava/lang/String;

.field private mTempFileName:Ljava/lang/String;

.field private m_webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dropbox/client2/DropboxAPI;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "dropboxPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/dropbox/client2/DropboxAPI",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    .local p2, "api":Lcom/dropbox/client2/DropboxAPI;, "Lcom/dropbox/client2/DropboxAPI<*>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileDownload;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileDownload;->mApi:Lcom/dropbox/client2/DropboxAPI;

    .line 76
    iput-object p3, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileDownload;->mPath:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileDownload;->mPath:Ljava/lang/String;

    const-string v1, "pkt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileDownload;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PTTemp.pkt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileDownload;->mTempFileName:Ljava/lang/String;

    .line 90
    :goto_3c
    return-void

    .line 81
    :cond_3d
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileDownload;->mPath:Ljava/lang/String;

    const-string v1, "pka"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileDownload;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PTTemp.pka"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileDownload;->mTempFileName:Ljava/lang/String;

    goto :goto_3c

    .line 87
    :cond_6d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileDownload;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PTTemp.pkz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileDownload;->mTempFileName:Ljava/lang/String;

    goto :goto_3c
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 96
    const/4 v3, 0x0

    .line 101
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    :try_start_1
    const-string v5, "DBFD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileDownload;->mTempFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v5, "DBFD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DbFile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileDownload;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileDownload;->mTempFileName:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v1, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_41
    .catch Lcom/dropbox/client2/exception/DropboxException; {:try_start_1 .. :try_end_41} :catch_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_41} :catch_9a
    .catchall {:try_start_1 .. :try_end_41} :catchall_b1

    .line 107
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .local v4, "outputStream":Ljava/io/FileOutputStream;
    :try_start_41
    iget-object v5, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileDownload;->mApi:Lcom/dropbox/client2/DropboxAPI;

    iget-object v6, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileDownload;->mPath:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v4, v8}, Lcom/dropbox/client2/DropboxAPI;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lcom/dropbox/client2/ProgressListener;)Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;

    move-result-object v2

    .line 109
    .local v2, "info":Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;
    const-string v5, "DBFD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The file\'s rev is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;->getMetadata()Lcom/dropbox/client2/DropboxAPI$Entry;

    move-result-object v7

    iget-object v7, v7, Lcom/dropbox/client2/DropboxAPI$Entry;->rev:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_6d
    .catch Lcom/dropbox/client2/exception/DropboxException; {:try_start_41 .. :try_end_6d} :catch_c7
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_6d} :catch_c4
    .catchall {:try_start_41 .. :try_end_6d} :catchall_c1

    move-result-object v5

    .line 124
    if-eqz v4, :cond_73

    .line 128
    :try_start_70
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_75

    :cond_73
    :goto_73
    move-object v3, v4

    .line 139
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "info":Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    :goto_74
    return-object v5

    .line 130
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "info":Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    :catch_75
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "DBFD"

    const-string v7, "Error"

    invoke-static {v6, v7, v0}, Lorg/qtproject/qt5/android/bindings/PTJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_73

    .line 114
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "info":Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    :catch_7e
    move-exception v0

    .line 116
    .local v0, "e":Lcom/dropbox/client2/exception/DropboxException;
    :goto_7f
    :try_start_7f
    const-string v5, "DBFD"

    const-string v6, "Error"

    invoke-static {v5, v6, v0}, Lorg/qtproject/qt5/android/bindings/PTJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_b1

    .line 124
    if-eqz v3, :cond_8b

    .line 128
    :try_start_88
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_91

    .line 139
    .end local v0    # "e":Lcom/dropbox/client2/exception/DropboxException;
    :cond_8b
    :goto_8b
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_74

    .line 130
    .restart local v0    # "e":Lcom/dropbox/client2/exception/DropboxException;
    :catch_91
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "DBFD"

    const-string v6, "Error"

    invoke-static {v5, v6, v0}, Lorg/qtproject/qt5/android/bindings/PTJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8b

    .line 118
    .end local v0    # "e":Ljava/io/IOException;
    :catch_9a
    move-exception v0

    .line 120
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_9b
    :try_start_9b
    const-string v5, "DBFD"

    const-string v6, "Error"

    invoke-static {v5, v6, v0}, Lorg/qtproject/qt5/android/bindings/PTJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a2
    .catchall {:try_start_9b .. :try_end_a2} :catchall_b1

    .line 124
    if-eqz v3, :cond_8b

    .line 128
    :try_start_a4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_a8

    goto :goto_8b

    .line 130
    :catch_a8
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "DBFD"

    const-string v6, "Error"

    invoke-static {v5, v6, v0}, Lorg/qtproject/qt5/android/bindings/PTJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8b

    .line 124
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_b1
    move-exception v5

    :goto_b2
    if-eqz v3, :cond_b7

    .line 128
    :try_start_b4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_b8

    .line 133
    :cond_b7
    :goto_b7
    throw v5

    .line 130
    :catch_b8
    move-exception v0

    .line 132
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "DBFD"

    const-string v7, "Error"

    invoke-static {v6, v7, v0}, Lorg/qtproject/qt5/android/bindings/PTJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b7

    .line 124
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_c1
    move-exception v5

    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_b2

    .line 118
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    :catch_c4
    move-exception v0

    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_9b

    .line 114
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    :catch_c7
    move-exception v0

    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_7f
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 50
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/qtproject/qt5/android/bindings/DropBoxFileDownload;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 147
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v0

    const v1, 0x7f0a0038

    invoke-virtual {v0, v1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileDownload;->m_webView:Landroid/webkit/WebView;

    .line 148
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 150
    const-string v0, "DBFD"

    const-string v1, "file is downloaded successfully"

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileDownload;->m_webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:openDbFileFromCache(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileDownload;->mTempFileName:Ljava/lang/String;

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

    .line 158
    :goto_40
    return-void

    .line 156
    :cond_41
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/DropBoxFileDownload;->m_webView:Landroid/webkit/WebView;

    const-string v1, "javascript:openDbFileFailed();"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_40
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 50
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/qtproject/qt5/android/bindings/DropBoxFileDownload;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
