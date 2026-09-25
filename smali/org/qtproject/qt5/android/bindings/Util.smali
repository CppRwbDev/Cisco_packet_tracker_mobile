.class public Lorg/qtproject/qt5/android/bindings/Util;
.super Ljava/lang/Object;
.source "Util.java"


# instance fields
.field filesListInDir:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/Util;->filesListInDir:Ljava/util/List;

    return-void
.end method

.method private moveZipFromAssets(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "zipsAsset"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v0

    .line 185
    .local v0, "a":Lorg/qtproject/qt5/android/bindings/QtActivity;
    const-string v8, "assets:/"

    const-string v9, ""

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "assetPath":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 187
    .local v5, "newFileName":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 188
    .local v2, "assetsManager":Landroid/content/res/AssetManager;
    const/4 v4, 0x0

    .line 189
    .local v4, "in":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 193
    .local v6, "out":Ljava/io/OutputStream;
    :try_start_2d
    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 194
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_36} :catch_3b

    .line 195
    .end local v6    # "out":Ljava/io/OutputStream;
    .local v7, "out":Ljava/io/OutputStream;
    :try_start_36
    invoke-virtual {p0, v4, v7}, Lorg/qtproject/qt5/android/bindings/Util;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_46

    move-object v6, v7

    .line 201
    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    :goto_3a
    return-object v5

    .line 197
    :catch_3b
    move-exception v3

    .line 199
    .local v3, "e":Ljava/io/IOException;
    :goto_3c
    const-string v8, "UTILJ"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/qtproject/qt5/android/bindings/PTJLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    .line 197
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catch_46
    move-exception v3

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    goto :goto_3c
.end method

.method private populateFilesList(Ljava/io/File;)V
    .registers 9
    .param p1, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    const-string v2, "UTILJ"

    const-string v3, "zip populateFilesList"

    invoke-static {v2, v3}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 42
    .local v1, "files":[Ljava/io/File;
    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/Util;->filesListInDir:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 43
    array-length v3, v1

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v3, :cond_48

    aget-object v0, v1, v2

    .line 44
    .local v0, "file":Ljava/io/File;
    const-string v4, "UTILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "zip "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_44

    iget-object v4, p0, Lorg/qtproject/qt5/android/bindings/Util;->filesListInDir:Ljava/util/List;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 46
    :cond_44
    invoke-direct {p0, v0}, Lorg/qtproject/qt5/android/bindings/Util;->populateFilesList(Ljava/io/File;)V

    goto :goto_41

    .line 48
    .end local v0    # "file":Ljava/io/File;
    :cond_48
    return-void
.end method

.method private renameFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 163
    :try_start_0
    const-string v3, "UTILJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oldFile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v3, "UTILJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "renameFile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .local v2, "oldFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v1, "newFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 168
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 169
    :cond_43
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_46} :catch_4a

    move-result v3

    if-eqz v3, :cond_4e

    .line 178
    .end local v1    # "newFile":Ljava/io/File;
    .end local v2    # "oldFile":Ljava/io/File;
    .end local p2    # "newName":Ljava/lang/String;
    :goto_49
    return-object p2

    .line 174
    .restart local p2    # "newName":Ljava/lang/String;
    :catch_4a
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4e
    move-object p2, p1

    .line 178
    goto :goto_49
.end method

.method public static takeScreenshot()Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 28
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Lorg/qtproject/qt5/android/bindings/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 29
    .local v0, "rootView":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    .line 31
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public compressFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 20
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 52
    :try_start_0
    const-string v13, "UTILJ"

    const-string v14, "zip compressFile()"

    invoke-static {v13, v14}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v2, "dir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .end local v2    # "dir":Ljava/io/File;
    .local v3, "dir":Ljava/io/File;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "zip"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 57
    .local v11, "zipDirName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/qtproject/qt5/android/bindings/Util;->populateFilesList(Ljava/io/File;)V

    .line 58
    const-string v13, "UTILJ"

    const-string v14, "zip finish populateFilesList"

    invoke-static {v13, v14}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v13, "UTILJ"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "zip "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 63
    .local v7, "fos":Ljava/io/FileOutputStream;
    new-instance v12, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v12, v7}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 64
    .local v12, "zos":Ljava/util/zip/ZipOutputStream;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/qtproject/qt5/android/bindings/Util;->filesListInDir:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 65
    .local v5, "filePath":Ljava/lang/String;
    const-string v14, "UTILJ"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "zip - looping "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v5, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 68
    .local v9, "relativePath":Ljava/lang/String;
    const-string v14, "UTILJ"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "zip-relativePath: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v10, Ljava/util/zip/ZipEntry;

    invoke-direct {v10, v9}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 70
    .local v10, "ze":Ljava/util/zip/ZipEntry;
    invoke-virtual {v12, v10}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 72
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 73
    .local v6, "fis":Ljava/io/FileInputStream;
    const/16 v14, 0x400

    new-array v1, v14, [B

    .line 75
    .local v1, "buffer":[B
    :goto_cc
    invoke-virtual {v6, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    .local v8, "len":I
    if-lez v8, :cond_dc

    .line 76
    const/4 v14, 0x0

    invoke-virtual {v12, v1, v14, v8}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d6} :catch_d7

    goto :goto_cc

    .line 86
    .end local v1    # "buffer":[B
    .end local v3    # "dir":Ljava/io/File;
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "len":I
    .end local v9    # "relativePath":Ljava/lang/String;
    .end local v10    # "ze":Ljava/util/zip/ZipEntry;
    .end local v11    # "zipDirName":Ljava/lang/String;
    .end local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    :catch_d7
    move-exception v4

    .line 87
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 89
    .end local v4    # "e":Ljava/io/IOException;
    :goto_db
    return-void

    .line 78
    .restart local v1    # "buffer":[B
    .restart local v3    # "dir":Ljava/io/File;
    .restart local v5    # "filePath":Ljava/lang/String;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "len":I
    .restart local v9    # "relativePath":Ljava/lang/String;
    .restart local v10    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v11    # "zipDirName":Ljava/lang/String;
    .restart local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    :cond_dc
    :try_start_dc
    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 79
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    goto :goto_6d

    .line 81
    .end local v1    # "buffer":[B
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "len":I
    .end local v9    # "relativePath":Ljava/lang/String;
    .end local v10    # "ze":Ljava/util/zip/ZipEntry;
    :cond_e3
    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 82
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 83
    const-string v13, "UTILJ"

    const-string v14, "zip prepare to copy"

    invoke-static {v13, v14}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x3

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "pkz"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lorg/qtproject/qt5/android/bindings/Util;->renameFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_113} :catch_d7

    goto :goto_db
.end method

.method public copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    const-string v2, "UTILJ"

    const-string v3, "zip copying file"

    invoke-static {v2, v3}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 209
    .local v0, "buf":[B
    :goto_b
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    if-lez v1, :cond_16

    .line 210
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_b

    .line 212
    :cond_16
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 213
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 214
    return-void
.end method

.method public unCompressFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 26
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 93
    const-string v20, "UTILJ"

    const-string v21, "zip unCompressFile"

    invoke-static/range {v20 .. v21}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v3

    .line 95
    .local v3, "a":Lorg/qtproject/qt5/android/bindings/QtActivity;
    move-object/from16 v16, p1

    .line 96
    .local v16, "newPath":Ljava/lang/String;
    const-string v20, "assets:/"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1d

    .line 97
    invoke-direct/range {p0 .. p2}, Lorg/qtproject/qt5/android/bindings/Util;->moveZipFromAssets(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 98
    :cond_1d
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x3

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "zip"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/qtproject/qt5/android/bindings/Util;->renameFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 99
    const/16 v20, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x4

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 100
    .local v10, "folderName":Ljava/lang/String;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v20

    const v21, 0x7f0a0038

    invoke-virtual/range {v20 .. v21}, Lorg/qtproject/qt5/android/bindings/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/webkit/WebView;

    .line 101
    .local v15, "m_webView":Landroid/webkit/WebView;
    invoke-virtual {v15}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    .line 105
    .local v14, "mContext":Landroid/content/Context;
    :try_start_73
    const-string v20, "UTILJ"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "OrgFile "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v20, "UTILJ"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "NewFile "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 109
    .local v12, "is":Ljava/io/FileInputStream;
    new-instance v19, Ljava/util/zip/ZipInputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v12}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 112
    .local v19, "zis":Ljava/util/zip/ZipInputStream;
    const/16 v20, 0x400

    move/from16 v0, v20

    new-array v4, v0, [B

    .line 113
    .local v4, "buff":[B
    const-string v6, ""

    .line 114
    .local v6, "destination":Ljava/lang/String;
    const-string v8, ""

    .line 115
    .local v8, "fileToOpen":Ljava/lang/String;
    :cond_c3
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v18

    .local v18, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v18, :cond_159

    .line 118
    const-string v20, "UTILJ"

    const-string v21, "zip going through files"

    invoke-static/range {v20 .. v21}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 122
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v9, "folder":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_105

    .line 124
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 125
    :cond_105
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 126
    const-string v20, ""

    move-object/from16 v0, v20

    if-ne v8, v0, :cond_137

    const-string v20, ".pkt"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_136

    const-string v20, ".pka"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_137

    .line 127
    :cond_136
    move-object v8, v6

    .line 128
    :cond_137
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 129
    .local v11, "fos":Ljava/io/FileOutputStream;
    const/4 v13, 0x0

    .line 131
    .local v13, "l":I
    :goto_13d
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v13

    if-lez v13, :cond_c3

    .line 132
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v4, v0, v13}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_14c
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_14c} :catch_14d

    goto :goto_13d

    .line 152
    .end local v4    # "buff":[B
    .end local v6    # "destination":Ljava/lang/String;
    .end local v8    # "fileToOpen":Ljava/lang/String;
    .end local v9    # "folder":Ljava/io/File;
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "is":Ljava/io/FileInputStream;
    .end local v13    # "l":I
    .end local v18    # "ze":Ljava/util/zip/ZipEntry;
    .end local v19    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_14d
    move-exception v7

    .line 153
    .local v7, "ex":Ljava/io/IOException;
    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v21, "An IOException was caught!"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 156
    .end local v7    # "ex":Ljava/io/IOException;
    :goto_158
    return-void

    .line 136
    .restart local v4    # "buff":[B
    .restart local v6    # "destination":Ljava/lang/String;
    .restart local v8    # "fileToOpen":Ljava/lang/String;
    .restart local v12    # "is":Ljava/io/FileInputStream;
    .restart local v18    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v19    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_159
    :try_start_159
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipInputStream;->close()V

    .line 137
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x3

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "pkz"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/qtproject/qt5/android/bindings/Util;->renameFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    move-object v5, v8

    .line 139
    .local v5, "dest":Ljava/lang/String;
    new-instance v17, Lorg/qtproject/qt5/android/bindings/Util$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lorg/qtproject/qt5/android/bindings/Util$1;-><init>(Lorg/qtproject/qt5/android/bindings/Util;Ljava/lang/String;)V

    .line 148
    .local v17, "r":Ljava/lang/Runnable;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_19f
    .catch Ljava/io/IOException; {:try_start_159 .. :try_end_19f} :catch_14d

    goto :goto_158
.end method
