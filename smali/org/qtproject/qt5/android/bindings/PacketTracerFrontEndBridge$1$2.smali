.class Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1$2;
.super Landroid/webkit/WebViewClient;
.source "PacketTracerFrontEndBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field m_webResourceResponseCache:Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache;

.field final synthetic this$1:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;

.field final synthetic val$a:Lorg/qtproject/qt5/android/bindings/QtActivity;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;Lorg/qtproject/qt5/android/bindings/QtActivity;)V
    .registers 4
    .param p1, "this$1"    # Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;

    .prologue
    .line 287
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1$2;->this$1:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;

    iput-object p2, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1$2;->val$a:Lorg/qtproject/qt5/android/bindings/QtActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 288
    new-instance v0, Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache;

    invoke-direct {v0}, Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache;-><init>()V

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1$2;->m_webResourceResponseCache:Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache;

    return-void
.end method

.method private get_alternative_uris(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 14
    .param p1, "originalAssetUrl"    # Ljava/lang/String;
    .param p2, "baseDirName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 353
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 354
    .local v1, "uri":Ljava/net/URI;
    const-string v4, "/android_asset/"

    .line 355
    .local v4, "uri_asset_prefix":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 356
    .local v5, "uri_file_prefix":Ljava/lang/String;
    const-string v7, "zip:///"

    .line 357
    .local v7, "uri_zip_prefix":Ljava/lang/String;
    const-string v6, "obb://"

    .line 358
    .local v6, "uri_obb_prefix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 359
    .local v2, "uri_asset_path":Ljava/lang/String;
    const/4 v3, 0x0

    .line 360
    .local v3, "uri_asset_path_mangled":Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 361
    .local v0, "pos":I
    const/4 v8, -0x1

    if-eq v0, v8, :cond_72

    .line 362
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v0

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 363
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$400(Ljava/lang/String;)[B

    move-result-object v9

    invoke-static {v9}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$500([B)[B

    move-result-object v9

    invoke-static {v9}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$600([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".bin"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 365
    :cond_72
    if-eqz v3, :cond_f7

    .line 366
    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    aput-object v2, v8, v9

    const/4 v9, 0x7

    aput-object v3, v8, v9

    .line 378
    :goto_f6
    return-object v8

    :cond_f7
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v2, v8, v9

    goto :goto_f6
.end method

.method private get_asset_data_stream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 31
    .param p1, "original_asset_url"    # Ljava/lang/String;

    .prologue
    .line 434
    :try_start_0
    new-instance v22, Ljava/net/URI;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 435
    .local v22, "uri":Ljava/net/URI;
    invoke-direct/range {p0 .. p1}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1$2;->get_raw_asset_stream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 436
    .local v20, "sinput":Ljava/io/InputStream;
    if-nez v20, :cond_12

    .line 437
    const/16 v20, 0x0

    .line 509
    .end local v20    # "sinput":Ljava/io/InputStream;
    .end local v22    # "uri":Ljava/net/URI;
    :goto_11
    return-object v20

    .line 438
    .restart local v20    # "sinput":Ljava/io/InputStream;
    .restart local v22    # "uri":Ljava/net/URI;
    :cond_12
    const-string v23, "JPTFB"

    const-string v24, "get_asset_data_stream: stream supports mark/reset: %B"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->markSupported()Z

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const/16 v23, 0x6

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v16, v0

    fill-array-data v16, :array_360

    .line 440
    .local v16, "magic":[B
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 441
    .local v21, "smagic":[B
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 442
    invoke-virtual/range {v20 .. v21}, Ljava/io/InputStream;->read([B)I

    move-result v17

    .line 443
    .local v17, "nread":I
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_6e

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v23

    if-nez v23, :cond_96

    .line 444
    :cond_6e
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->reset()V

    .line 445
    const-string v23, "JPTFB"

    const-string v24, "get_asset_data_stream: non-encrypted stream of size: %d"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->available()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 508
    .end local v16    # "magic":[B
    .end local v17    # "nread":I
    .end local v20    # "sinput":Ljava/io/InputStream;
    .end local v21    # "smagic":[B
    .end local v22    # "uri":Ljava/net/URI;
    :catch_91
    move-exception v6

    .line 509
    .local v6, "e":Ljava/lang/Exception;
    const/16 v20, 0x0

    goto/16 :goto_11

    .line 449
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v16    # "magic":[B
    .restart local v17    # "nread":I
    .restart local v20    # "sinput":Ljava/io/InputStream;
    .restart local v21    # "smagic":[B
    .restart local v22    # "uri":Ljava/net/URI;
    :cond_96
    const-string v23, "JPTFB"

    const-string v24, "get_asset_data_stream: encrypted stream"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 452
    .local v19, "sftype_hash":[B
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v17

    .line 453
    const-string v23, "JPTFB"

    const-string v24, "get_asset_data_stream: sftype_hash: %s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {v19 .. v19}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$600([B)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v18

    .line 455
    .local v18, "original_url_path":Ljava/lang/String;
    const-string v23, "."

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 456
    .local v5, "dot_pos":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v5, v0, :cond_175

    .line 457
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 458
    .local v7, "fext":Ljava/lang/String;
    const-string v23, "JPTFB"

    const-string v24, "get_asset_data_stream: extension: %s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v7, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-static {v7}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$400(Ljava/lang/String;)[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$500([B)[B

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x4

    invoke-static/range {v23 .. v25}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    .line 460
    .local v8, "ftype_hash":[B
    const-string v23, "JPTFB"

    const-string v24, "get_asset_data_stream: ftype_hash: %s, size: %d"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {v8}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$600([B)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    array-length v0, v8

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const/16 v23, 0x4

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_14b

    move-object/from16 v0, v19

    invoke-static {v0, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v23

    if-nez v23, :cond_162

    .line 462
    :cond_14b
    const-string v23, "JPTFB"

    const-string v24, "get_asset_data_stream: extension hash doesn\'t match"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const/16 v20, 0x0

    goto/16 :goto_11

    .line 467
    :cond_162
    const-string v23, "JPTFB"

    const-string v24, "get_asset_data_stream: extension hash matches"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    .end local v7    # "fext":Ljava/lang/String;
    .end local v8    # "ftype_hash":[B
    :cond_175
    const-string v23, "JPTFB"

    const-string v24, "get_asset_data_stream: reading encryted data"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 472
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v23, 0x7d00

    move/from16 v0, v23

    new-array v3, v0, [B

    .line 473
    .local v3, "buffer":[B
    :goto_193
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v17

    const/16 v23, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-eq v0, v1, :cond_1ab

    .line 474
    const/16 v23, 0x0

    move/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v2, v3, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_193

    .line 476
    :cond_1ab
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 477
    .local v4, "data":[B
    const-string v23, "JPTFB"

    const-string v24, "get_asset_data_stream: encryted data size: %d"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    array-length v0, v4

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const v23, 0x7f040001

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1$2;->get_data(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v13

    .line 482
    .local v13, "key":[B
    const-string v23, "JPTFB"

    const-string v24, "get_asset_data_stream: key0 size: %d"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    array-length v0, v13

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v23, "JPTFB"

    const-string v24, "get_asset_data_stream: key0: %s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x20

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v13, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$600([B)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    array-length v0, v4

    move/from16 v23, v0

    array-length v0, v13

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_2d5

    array-length v0, v4

    move/from16 v23, v0

    array-length v0, v13

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    rem-int v11, v23, v24

    .line 485
    .local v11, "k":I
    :goto_239
    const-string v23, "%d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$400(Ljava/lang/String;)[B

    move-result-object v12

    .line 486
    .local v12, "kb":[B
    const-string v23, "JPTFB"

    const-string v24, "get_asset_data_stream: kb: %s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {v12}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$600([B)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const/16 v23, 0x1

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v13, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v15

    .line 488
    .local v15, "keyr":[B
    const-string v23, "JPTFB"

    const-string v24, "get_asset_data_stream: keyr size: %d"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    array-length v0, v15

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 490
    .local v14, "key_baos":Ljava/io/ByteArrayOutputStream;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_29e
    array-length v0, v12

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v9, v0, :cond_2e1

    .line 491
    const-string v23, "%d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-byte v26, v12, v9

    invoke-static/range {v26 .. v26}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$400(Ljava/lang/String;)[B

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 492
    array-length v0, v12

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    if-ge v9, v0, :cond_2d2

    .line 493
    invoke-virtual {v14, v15}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 490
    :cond_2d2
    add-int/lit8 v9, v9, 0x1

    goto :goto_29e

    .line 484
    .end local v9    # "i":I
    .end local v11    # "k":I
    .end local v12    # "kb":[B
    .end local v14    # "key_baos":Ljava/io/ByteArrayOutputStream;
    .end local v15    # "keyr":[B
    :cond_2d5
    array-length v0, v13

    move/from16 v23, v0

    array-length v0, v4

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    rem-int v11, v23, v24

    goto/16 :goto_239

    .line 495
    .restart local v9    # "i":I
    .restart local v11    # "k":I
    .restart local v12    # "kb":[B
    .restart local v14    # "key_baos":Ljava/io/ByteArrayOutputStream;
    .restart local v15    # "keyr":[B
    :cond_2e1
    const-string v23, "JPTFB"

    const-string v24, "get_asset_data_stream: key-prefix: %s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$600([B)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-virtual {v14, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 497
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 498
    const/4 v11, 0x0

    .line 499
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_309
    array-length v0, v4

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v10, v0, :cond_330

    .line 500
    aget-byte v23, v4, v10

    aget-byte v24, v13, v11

    xor-int v23, v23, v24

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v4, v10

    .line 501
    add-int/lit8 v11, v11, 0x1

    array-length v0, v13

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v11, v0, :cond_32d

    .line 502
    const/4 v11, 0x0

    .line 499
    :cond_32d
    add-int/lit8 v10, v10, 0x1

    goto :goto_309

    .line 504
    :cond_330
    const-string v23, "JPTFB"

    const-string v24, "get_asset_data_stream: decrypted: %s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x32

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v4, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$600([B)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    new-instance v20, Ljava/io/ByteArrayInputStream;

    .end local v20    # "sinput":Ljava/io/InputStream;
    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_35e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35e} :catch_91

    goto/16 :goto_11

    .line 439
    :array_360
    .array-data 1
        0x3t
        0x65t
        0x50t
        0x54t
        0x4dt
        0x9t
    .end array-data
.end method

.method private get_data(I)Ljava/lang/String;
    .registers 11
    .param p1, "id"    # I

    .prologue
    const/4 v8, 0x1

    .line 329
    :try_start_1
    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1$2;->val$a:Lorg/qtproject/qt5/android/bindings/QtActivity;

    invoke-virtual {v3}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 330
    .local v2, "xrp":Landroid/content/res/XmlResourceParser;
    :cond_b
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    if-eq v3, v8, :cond_86

    .line 331
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_b

    .line 332
    const-string v3, "JPTFB"

    const-string v4, "get_data: tag found: <%s>"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 334
    :cond_39
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->nextToken()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_b

    .line 335
    const-string v3, "JPTFB"

    const-string v4, "get_data: token event: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_39

    .line 337
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "data":Ljava/lang/String;
    const-string v3, "JPTFB"

    const-string v4, "get_data: data of size: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7d} :catch_7e

    .line 349
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "xrp":Landroid/content/res/XmlResourceParser;
    :goto_7d
    return-object v0

    .line 346
    :catch_7e
    move-exception v1

    .line 347
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "JPTFB"

    const-string v4, "get_data: ERROR: "

    invoke-static {v3, v4, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 349
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_86
    const-string v0, ""

    goto :goto_7d
.end method

.method private get_mime_type(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 307
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 308
    .local v1, "uri":Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "path":Ljava/lang/String;
    const-string v2, ".*[.](html|htm)$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 311
    const-string v2, "text/html"

    .line 324
    :goto_13
    return-object v2

    .line 312
    :cond_14
    const-string v2, ".*[.](js)$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 313
    const-string v2, "text/javascript"

    goto :goto_13

    .line 314
    :cond_1f
    const-string v2, ".*[.](txt)$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 315
    const-string v2, "text/plain"

    goto :goto_13

    .line 316
    :cond_2a
    const-string v2, ".*[.](css)$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 317
    const-string v2, "text/css"

    goto :goto_13

    .line 318
    :cond_35
    const-string v2, ".*[.](png)$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 319
    const-string v2, "image/png"

    goto :goto_13

    .line 320
    :cond_40
    const-string v2, ".*[.](svg)$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 321
    const-string v2, "image/svg+xml"

    goto :goto_13

    .line 322
    :cond_4b
    const-string v2, ".*[.](jpeg|jpg)$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 323
    const-string v2, "image/jpeg"

    goto :goto_13

    .line 324
    :cond_56
    const-string v2, "application/octet-stream"

    goto :goto_13
.end method

.method private get_raw_asset_stream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 14
    .param p1, "original_asset_url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 388
    const/4 v3, 0x0

    .line 389
    .local v3, "sinput":Ljava/io/InputStream;
    const-string v6, "HtmlGui"

    invoke-direct {p0, p1, v6}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1$2;->get_alternative_uris(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 390
    .local v5, "uris":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v6, v5

    if-ge v1, v6, :cond_116

    if-nez v3, :cond_116

    .line 391
    aget-object v2, v5, v1

    .line 393
    .local v2, "path":Ljava/lang/String;
    const-string v6, "JPTFB"

    const-string v7, "get_raw_asset_stream: checking path: %s"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v2, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :try_start_20
    const-string v6, "file://"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 396
    const-string v6, "JPTFB"

    const-string v7, "get_raw_asset_stream: trying to open file: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 398
    .local v4, "uri":Ljava/net/URI;
    invoke-virtual {v4}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 399
    const-string v6, "JPTFB"

    const-string v7, "get_raw_asset_stream: file stream OK for: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .end local v4    # "uri":Ljava/net/URI;
    :goto_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 401
    :cond_5e
    const-string v6, "zip:///"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_96

    iget-object v6, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1$2;->this$1:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;

    iget-object v6, v6, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    invoke-static {v6}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$700(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;

    move-result-object v6

    if-eqz v6, :cond_96

    .line 402
    const-string v6, "JPTFB"

    const-string v7, "get_raw_asset_stream: trying to open zip resource: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v6, "zip:///"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 404
    iget-object v6, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1$2;->this$1:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;

    iget-object v6, v6, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    invoke-static {v6}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$700(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/vending/expansion/zipfile/ZipResourceFile4j;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_5b

    .line 414
    :cond_96
    const-string v6, "obb://"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e7

    iget-object v6, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1$2;->this$1:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;

    iget-object v6, v6, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    iget-boolean v6, v6, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->obbResFile:Z

    if-eqz v6, :cond_e7

    .line 415
    const-string v6, "JPTFB"

    const-string v7, "get_raw_asset_stream: trying to open obb resource: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v6, "obb://"

    const-string v7, "file://"

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 417
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 418
    .restart local v4    # "uri":Ljava/net/URI;
    invoke-virtual {v4}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 419
    const-string v6, "JPTFB"

    const-string v7, "get_raw_asset_stream: obb stream OK for: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5b

    .line 427
    .end local v4    # "uri":Ljava/net/URI;
    :catch_e3
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto/16 :goto_5b

    .line 422
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_e7
    const-string v6, "JPTFB"

    const-string v7, "get_raw_asset_stream: trying to open asset: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v6, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1$2;->val$a:Lorg/qtproject/qt5/android/bindings/QtActivity;

    invoke-virtual {v6}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v2, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v3

    .line 424
    const-string v6, "JPTFB"

    const-string v7, "get_raw_asset_stream: asset stream OK for: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_114} :catch_e3

    goto/16 :goto_5b

    .line 429
    .end local v2    # "path":Ljava/lang/String;
    :cond_116
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v6
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 295
    const-string v0, "onPageFinished callback"

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->log_thread(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1$2;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 299
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1$2;->this$1:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    const-string v1, "fe-page-loaded"

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->sendMessageToPacketTracer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 304
    :cond_1c
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 291
    const-string v0, "JPTFB"

    const-string v1, "WebView ERROR: \n\tcode - %d, \n\tdesc - %s, \n\turl - %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 16
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 520
    :try_start_3
    const-string v6, "http://htmlgui.com/file://"

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 521
    .local v2, "pos":I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_e

    move-object v4, v5

    .line 548
    .end local v2    # "pos":I
    :cond_d
    :goto_d
    return-object v4

    .line 523
    .restart local v2    # "pos":I
    :cond_e
    const-string v6, "file://"

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 524
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 530
    iget-object v6, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1$2;->m_webResourceResponseCache:Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache;

    invoke-virtual {v6, p2}, Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache;->get(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v4

    .line 531
    .local v4, "wr":Landroid/webkit/WebResourceResponse;
    if-nez v4, :cond_d

    .line 534
    invoke-direct {p0, p2}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1$2;->get_asset_data_stream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 535
    .local v3, "sinput":Ljava/io/InputStream;
    if-eqz v3, :cond_72

    .line 536
    const-string v6, "JPTFB"

    const-string v7, "shouldInterceptRequest: input stream size: %d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-direct {p0, p2}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1$2;->get_mime_type(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 538
    .local v1, "mtype":Ljava/lang/String;
    const-string v6, "JPTFB"

    const-string v7, "shouldInterceptRequest: mime type: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v6, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1$2;->m_webResourceResponseCache:Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache;

    invoke-virtual {v6, p2, v3, v1}, Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_59} :catch_5b

    move-result-object v4

    .line 541
    goto :goto_d

    .line 544
    .end local v1    # "mtype":Ljava/lang/String;
    .end local v2    # "pos":I
    .end local v3    # "sinput":Ljava/io/InputStream;
    .end local v4    # "wr":Landroid/webkit/WebResourceResponse;
    :catch_5b
    move-exception v0

    .line 545
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "JPTFB"

    const-string v7, "shouldInterceptRequest: bad input stream for asset."

    invoke-static {v6, v7, v0}, Lorg/qtproject/qt5/android/bindings/PTJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 546
    const-string v6, "JPTFB"

    const-string v7, "shouldInterceptRequest: url: %s"

    new-array v8, v12, [Ljava/lang/Object;

    aput-object p2, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/qtproject/qt5/android/bindings/PTJLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_72
    move-object v4, v5

    .line 548
    goto :goto_d
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 552
    const-string v2, "JPTFB"

    const-string v3, "shouldOverrideUrlLoading: %s"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string v2, "/HtmlGui/app.html#"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1b

    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    goto :goto_1a
.end method
