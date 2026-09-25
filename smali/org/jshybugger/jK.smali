.class public final Lorg/jshybugger/jk;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static a:Z

.field private static final b:[B

.field private static c:Ljava/lang/String;

.field private static d:Z

.field private static e:Ljava/lang/String;

.field private static f:Landroid/content/Context;

.field private static g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 60
    const/16 v0, 0x126

    new-array v0, v0, [B

    fill-array-data v0, :array_24

    sput-object v0, Lorg/jshybugger/jk;->b:[B

    .line 85
    const-string v0, "No license found, jsHybugger sessions are limited to 2 minutes."

    sput-object v0, Lorg/jshybugger/jk;->c:Ljava/lang/String;

    .line 86
    sput-boolean v1, Lorg/jshybugger/jk;->d:Z

    .line 87
    const-string v0, "empty"

    sput-object v0, Lorg/jshybugger/jk;->e:Ljava/lang/String;

    .line 89
    sput-boolean v1, Lorg/jshybugger/jk;->g:Z

    .line 472
    :try_start_16
    const-string v0, "android.util.Log"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 473
    const/4 v0, 0x1

    sput-boolean v0, Lorg/jshybugger/jk;->a:Z
    :try_end_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_1e} :catch_1f

    .line 477
    :goto_1e
    return-void

    .line 475
    :catch_1f
    move-exception v0

    sput-boolean v1, Lorg/jshybugger/jk;->a:Z

    goto :goto_1e

    .line 60
    nop

    :array_24
    .array-data 1
        0x30t
        -0x7et
        0x1t
        0x22t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x1t
        0x5t
        0x0t
        0x3t
        -0x7et
        0x1t
        0xft
        0x0t
        0x30t
        -0x7et
        0x1t
        0xat
        0x2t
        -0x7et
        0x1t
        0x1t
        0x0t
        -0x48t
        0x10t
        -0x52t
        -0x8t
        0x40t
        -0x5bt
        0x19t
        0x66t
        -0x42t
        -0x74t
        0x73t
        0x7dt
        0x4bt
        -0x11t
        0x56t
        -0x58t
        -0x5t
        -0x62t
        0x22t
        -0x4et
        -0x79t
        -0x54t
        -0x6ct
        0x32t
        0x69t
        -0x2bt
        -0x16t
        0x5t
        -0x32t
        -0x53t
        -0x45t
        -0x6ft
        -0x2ft
        -0x70t
        0x64t
        0x70t
        -0x39t
        0x6ft
        0x51t
        -0x54t
        -0x79t
        0x1ft
        -0x58t
        0x3ct
        -0x9t
        -0x29t
        0x6dt
        -0x6ct
        0x1dt
        0x6dt
        0x79t
        -0x3ct
        -0x5et
        -0x3at
        -0x71t
        -0x50t
        0x70t
        0x15t
        0x48t
        0xbt
        -0x22t
        0x1ft
        -0x1at
        0x15t
        0x21t
        0x3dt
        -0x56t
        -0x30t
        -0x34t
        0x3ct
        -0x5ft
        -0x7at
        0x6ft
        -0x26t
        0x27t
        -0x3ft
        -0x46t
        0x7dt
        -0x5at
        0x1et
        -0x78t
        -0x45t
        -0x68t
        0x1bt
        -0x41t
        -0x60t
        -0xat
        0x11t
        0x25t
        0x78t
        -0x46t
        -0x49t
        -0x73t
        0x7t
        0x6bt
        -0x60t
        0x74t
        0x4ft
        0x65t
        -0x4bt
        0x66t
        0x7ct
        0x40t
        -0x70t
        -0x5et
        -0x71t
        -0x17t
        -0x31t
        -0x18t
        -0x46t
        -0x76t
        -0x70t
        -0x5bt
        -0x1dt
        0x27t
        -0x40t
        0x7bt
        -0x5t
        0x70t
        0x54t
        0x2dt
        -0x30t
        -0x2et
        -0x12t
        0x5bt
        0x1t
        0xbt
        -0x43t
        -0x3ft
        0x17t
        -0xat
        0x65t
        0x32t
        0x31t
        0x46t
        -0x28t
        0x6ct
        0x74t
        -0x48t
        0x31t
        0x48t
        0x64t
        0x44t
        0x51t
        0x5dt
        -0x14t
        0x5at
        -0x3at
        -0x47t
        -0x4dt
        -0x5bt
        -0x48t
        -0x73t
        -0x46t
        0x1at
        0x5bt
        0x67t
        -0x67t
        -0x5et
        0x37t
        0x1at
        -0x4bt
        -0x48t
        -0x7at
        -0x2dt
        -0x7t
        0x79t
        0xdt
        0x18t
        -0x13t
        -0x51t
        -0x31t
        0x55t
        0x33t
        -0x9t
        -0x4ft
        -0x51t
        -0x15t
        0x53t
        0x68t
        -0x6bt
        0x1bt
        -0x14t
        -0x1dt
        -0x7et
        -0xbt
        -0x70t
        -0x52t
        0x63t
        -0x38t
        -0x74t
        -0x77t
        0x43t
        -0x3dt
        -0x3bt
        0x22t
        -0x5ct
        0x3ct
        -0x29t
        -0x56t
        -0x19t
        -0x25t
        -0x31t
        -0x7ft
        0x4dt
        0xdt
        0x11t
        -0x33t
        -0x4et
        -0xat
        -0x74t
        0xet
        0x7ft
        0x7ct
        -0x58t
        0x5bt
        0x1dt
        0x55t
        0x38t
        -0x66t
        0x9t
        -0x43t
        -0xdt
        -0x3ft
        -0x65t
        0x67t
        -0x70t
        -0x61t
        0x7at
        -0x77t
        0x53t
        0x49t
        0x65t
        -0x16t
        0x5dt
        -0x34t
        0x5dt
        -0x13t
        -0x2at
        -0x3ft
        -0x33t
        0x76t
        -0x36t
        -0x7ft
        -0x12t
        0x75t
        -0x69t
        -0x66t
        0x53t
        -0x11t
        -0x25t
        -0x61t
        -0x8t
        0x7et
        0x21t
        -0x1bt
        0x2t
        0x3t
        0x1t
        0x0t
        0x1t
    .end array-data
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 455
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 456
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 459
    :cond_e
    :goto_e
    return p2

    :cond_f
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_e
.end method

.method public static a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 5

    .prologue
    .line 404
    if-nez p0, :cond_a

    .line 405
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Input stream is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_a
    const/16 v0, 0x100

    :try_start_c
    new-array v0, v0, [B

    .line 411
    const/4 v1, 0x0

    const/16 v2, 0x100

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    .line 414
    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 415
    const/4 v2, 0x4

    invoke-static {}, Lorg/jshybugger/jk;->j()Ljava/security/interfaces/RSAPublicKey;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 416
    const-string v2, "AES"

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v2, v3}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    .line 419
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 420
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 422
    new-instance v0, Ljavax/crypto/CipherInputStream;

    invoke-direct {v0, p0, v1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_38} :catch_39

    return-object v0

    .line 423
    :catch_39
    move-exception v0

    .line 424
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error unpacking byte data: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 92
    sget-object v0, Lorg/jshybugger/jk;->e:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 146
    :try_start_2
    sget-boolean v0, Lorg/jshybugger/jk;->a:Z

    if-eqz v0, :cond_34

    invoke-static {}, Lorg/jshybugger/jk;->i()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_9} :catch_94
    .catchall {:try_start_2 .. :try_end_9} :catchall_b2

    move-result-object v0

    .line 150
    :goto_a
    const/4 v2, -0x1

    move-object v4, v1

    move-object v3, v1

    move-object v5, v1

    move-object v6, v1

    move v7, v2

    move-object v2, v1

    .line 159
    :goto_11
    if-eq v7, v9, :cond_ce

    .line 160
    const/4 v8, 0x2

    if-ne v7, v8, :cond_2f

    .line 161
    :try_start_16
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 163
    const-string v8, "product"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_39

    .line 165
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ce

    .line 166
    const/4 v6, 0x0

    const-string v7, "name"

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 196
    :cond_2f
    :goto_2f
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_32
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_32} :catch_8b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_32} :catch_c5
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_32} :catch_94
    .catchall {:try_start_16 .. :try_end_32} :catchall_b2

    move-result v7

    goto :goto_11

    .line 146
    :cond_34
    :try_start_34
    invoke-static {}, Lorg/jshybugger/jk;->h()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_37} :catch_94
    .catchall {:try_start_34 .. :try_end_37} :catchall_b2

    move-result-object v0

    goto :goto_a

    .line 170
    :cond_39
    :try_start_39
    const-string v8, "licensee"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_49

    .line 171
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 172
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_2f

    .line 174
    :cond_49
    const-string v8, "validFrom"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_59

    .line 175
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 176
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    goto :goto_2f

    .line 178
    :cond_59
    const-string v8, "type"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_69

    .line 179
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 180
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_2f

    .line 182
    :cond_69
    const-string v8, "validUntil"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_79

    .line 183
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 184
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_2f

    .line 186
    :cond_79
    const-string v8, "signature"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b4

    .line 187
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 188
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lorg/jshybugger/jk;->e:Ljava/lang/String;
    :try_end_8a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_39 .. :try_end_8a} :catch_8b
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_8a} :catch_c5
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_8a} :catch_94
    .catchall {:try_start_39 .. :try_end_8a} :catchall_b2

    goto :goto_2f

    .line 199
    :catch_8b
    move-exception v0

    :try_start_8c
    new-instance v0, Lorg/jshybugger/je;

    const-string v1, "Error parsing license file: jshybugger_license.xml"

    invoke-direct {v0, v1}, Lorg/jshybugger/je;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_94} :catch_94
    .catchall {:try_start_8c .. :try_end_94} :catchall_b2

    .line 273
    :catch_94
    move-exception v0

    .line 274
    :try_start_95
    instance-of v1, v0, Lorg/jshybugger/je;

    if-nez v1, :cond_225

    .line 275
    new-instance v1, Lorg/jshybugger/je;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid license: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jshybugger/je;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_b2
    .catchall {:try_start_95 .. :try_end_b2} :catchall_b2

    .line 279
    :catchall_b2
    move-exception v0

    throw v0

    .line 190
    :cond_b4
    :try_start_b4
    const-string v8, "units"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 191
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 192
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;
    :try_end_c2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b4 .. :try_end_c2} :catch_8b
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_c2} :catch_c5
    .catch Ljava/lang/Throwable; {:try_start_b4 .. :try_end_c2} :catch_94
    .catchall {:try_start_b4 .. :try_end_c2} :catchall_b2

    move-result-object v3

    goto/16 :goto_2f

    .line 201
    :catch_c5
    move-exception v0

    :try_start_c6
    new-instance v0, Lorg/jshybugger/je;

    const-string v1, "Error parsing license file: jshybugger_license.xml"

    invoke-direct {v0, v1}, Lorg/jshybugger/je;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_ce
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20a

    .line 205
    sget-object v6, Lorg/jshybugger/jk;->e:Ljava/lang/String;

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lorg/jshybugger/jk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e5

    .line 206
    new-instance v0, Lorg/jshybugger/je;

    const-string v1, "Invalid license signature"

    invoke-direct {v0, v1}, Lorg/jshybugger/je;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_e5
    if-nez v1, :cond_f1

    .line 210
    const-string v0, "(eval "

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_14e

    .line 211
    const-string v1, "evaluation"

    .line 219
    :cond_f1
    :goto_f1
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    invoke-direct {v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 221
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 222
    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 223
    invoke-static {v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 225
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    .line 228
    sget-boolean v0, Lorg/jshybugger/jk;->a:Z

    if-eqz v0, :cond_15a

    new-instance v0, Ljava/io/File;

    sget-object v8, Lorg/jshybugger/jk;->f:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    const-string v9, ".sdfp248jsdf.tmp"

    invoke-direct {v0, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 229
    :goto_11d
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_17e

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_17e

    .line 230
    new-instance v8, Ljava/io/ObjectInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 231
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v10

    .line 232
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V

    .line 234
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v8, v10, v8

    if-lez v8, :cond_17e

    .line 235
    new-instance v0, Lorg/jshybugger/je;

    const-string v1, "Invalid license. Please set your device to the current time and reboot."

    invoke-direct {v0, v1}, Lorg/jshybugger/je;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_14e
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v0, v9, :cond_157

    .line 213
    const-string v1, "team"

    goto :goto_f1

    .line 215
    :cond_157
    const-string v1, "single"

    goto :goto_f1

    .line 228
    :cond_15a
    new-instance v0, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/io/File;

    const-string v10, "java.io.tmpdir"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".sdfp248jsdf.tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_11d

    .line 240
    :cond_17e
    new-instance v8, Ljava/io/ObjectOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 241
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 242
    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->close()V

    .line 245
    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 246
    invoke-virtual {v0, v7}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_1b1

    .line 247
    new-instance v1, Lorg/jshybugger/je;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "License terminated at: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jshybugger/je;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :cond_1b1
    sget-boolean v5, Lorg/jshybugger/jk;->a:Z

    if-eqz v5, :cond_1c9

    invoke-static {p0}, Lorg/jshybugger/jk;->b(Landroid/content/Context;)J

    move-result-wide v8

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    cmp-long v5, v8, v10

    if-lez v5, :cond_1c9

    .line 249
    new-instance v0, Lorg/jshybugger/je;

    const-string v1, "Invalid license. Please set your device and development machine to the current time and the same time zone."

    invoke-direct {v0, v1}, Lorg/jshybugger/je;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_1c9
    if-nez v4, :cond_1f5

    .line 256
    invoke-static {v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    .line 257
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 258
    const/4 v4, 0x5

    const-string v0, "evaluation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f2

    const/16 v0, -0xa

    :goto_1dd
    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->add(II)V

    .line 259
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 264
    :goto_1e4
    invoke-virtual {v7, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1fa

    .line 265
    new-instance v0, Lorg/jshybugger/je;

    const-string v1, "Invalid license. Please set your device and development machine to the current time and the same time zone."

    invoke-direct {v0, v1}, Lorg/jshybugger/je;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_1f2
    const/16 v0, -0x16d

    goto :goto_1dd

    .line 261
    :cond_1f5
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_1e4

    .line 268
    :cond_1fa
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Licensed to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 270
    :cond_20a
    new-instance v0, Lorg/jshybugger/je;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No license found for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jshybugger/je;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_225
    .catch Ljava/lang/Throwable; {:try_start_c6 .. :try_end_225} :catch_94
    .catchall {:try_start_c6 .. :try_end_225} :catchall_b2

    .line 277
    :cond_225
    :try_start_225
    check-cast v0, Lorg/jshybugger/je;

    throw v0
    :try_end_228
    .catchall {:try_start_225 .. :try_end_228} :catchall_b2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 120
    :try_start_0
    sget-boolean v0, Lorg/jshybugger/jk;->g:Z

    if-eqz v0, :cond_7

    .line 121
    sget-object v0, Lorg/jshybugger/jk;->c:Ljava/lang/String;

    .line 135
    :goto_6
    return-object v0

    .line 124
    :cond_7
    sget-object v0, Lorg/jshybugger/jk;->f:Landroid/content/Context;

    if-eqz v0, :cond_2c

    .line 125
    const-string v0, "com.example.freshfoodfinder"

    sget-object v1, Lorg/jshybugger/jk;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 126
    const/4 v0, 0x1

    sput-boolean v0, Lorg/jshybugger/jk;->d:Z

    .line 127
    const-string v0, "Licensed to jsHybugger demo"

    .line 129
    sput-object v0, Lorg/jshybugger/jk;->c:Ljava/lang/String;
    :try_end_20
    .catch Lorg/jshybugger/je; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_6

    .line 136
    :catch_21
    move-exception v0

    .line 137
    invoke-virtual {v0}, Lorg/jshybugger/je;->getMessage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/jshybugger/jk;->c:Ljava/lang/String;

    .line 138
    const/4 v1, 0x0

    sput-boolean v1, Lorg/jshybugger/jk;->d:Z

    .line 140
    throw v0

    .line 132
    :cond_2c
    :try_start_2c
    sget-object v0, Lorg/jshybugger/jk;->f:Landroid/content/Context;

    invoke-static {v0, p0}, Lorg/jshybugger/jk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/jk;->c:Ljava/lang/String;

    .line 133
    const/4 v0, 0x1

    sput-boolean v0, Lorg/jshybugger/jk;->d:Z

    .line 135
    sget-object v0, Lorg/jshybugger/jk;->c:Ljava/lang/String;
    :try_end_39
    .catch Lorg/jshybugger/je; {:try_start_2c .. :try_end_39} :catch_21

    goto :goto_6
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 463
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 464
    if-nez v0, :cond_9

    .line 467
    :goto_8
    return-object p2

    :cond_9
    move-object p2, v0

    goto :goto_8
.end method

.method public static a(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 484
    sput-object p0, Lorg/jshybugger/jk;->f:Landroid/content/Context;

    .line 485
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 488
    sget-object v0, Lorg/jshybugger/jk;->f:Landroid/content/Context;

    if-eqz v0, :cond_18

    .line 490
    sget-object v0, Lorg/jshybugger/jk;->f:Landroid/content/Context;

    const-string v1, "jshybugger_license.xml"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 495
    :goto_d
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 496
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 497
    return-void

    .line 492
    :cond_18
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user.home"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.jsHybugger/jshybugger_license.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_d
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .prologue
    .line 352
    :try_start_0
    invoke-static {}, Lorg/jshybugger/jk;->j()Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    .line 354
    const-string v1, "SHA1withRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 355
    invoke-virtual {v1, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    if-eqz p1, :cond_1a

    .line 360
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    :cond_1a
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    if-eqz p4, :cond_25

    .line 365
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    :cond_25
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/Signature;->update([B)V

    .line 370
    sget-boolean v0, Lorg/jshybugger/jk;->a:Z

    if-eqz v0, :cond_41

    const/4 v0, 0x0

    invoke-static {p6, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    :goto_40
    return v0

    :cond_41
    invoke-static {p6}, Ljavax/xml/bind/DatatypeConverter;->parseBase64Binary(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/Signature;->verify([B)Z
    :try_end_48
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_48} :catch_4a
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_48} :catch_53
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_48} :catch_5c
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_48} :catch_65

    move-result v0

    goto :goto_40

    .line 374
    :catch_4a
    move-exception v0

    new-instance v0, Lorg/jshybugger/je;

    const-string v1, "License check failed (NSAE)"

    invoke-direct {v0, v1}, Lorg/jshybugger/je;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :catch_53
    move-exception v0

    new-instance v0, Lorg/jshybugger/je;

    const-string v1, "License check failed (IKSE)"

    invoke-direct {v0, v1}, Lorg/jshybugger/je;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :catch_5c
    move-exception v0

    new-instance v0, Lorg/jshybugger/je;

    const-string v1, "License check failed (IKE)"

    invoke-direct {v0, v1}, Lorg/jshybugger/je;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :catch_65
    move-exception v0

    new-instance v0, Lorg/jshybugger/je;

    const-string v1, "License check failed (SE)"

    invoke-direct {v0, v1}, Lorg/jshybugger/je;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 447
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 448
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 451
    :cond_e
    :goto_e
    return p2

    :cond_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_e
.end method

.method private static b(Landroid/content/Context;)J
    .registers 4

    .prologue
    .line 431
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 433
    new-instance v2, Ljava/util/zip/ZipFile;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 434
    const-string v0, "classes.dex"

    invoke-virtual {v2, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v0

    .line 436
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    .line 443
    :goto_21
    return-wide v0

    :catch_22
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_21
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 96
    sget-object v0, Lorg/jshybugger/jk;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 507
    if-eqz p0, :cond_30

    .line 508
    const/4 v2, 0x0

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 514
    :try_start_8
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_37

    .line 515
    :goto_12
    :try_start_12
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 516
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_21

    goto :goto_12

    .line 521
    :catchall_21
    move-exception v0

    :goto_22
    if-eqz v1, :cond_27

    .line 523
    :try_start_24
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_35

    .line 525
    :cond_27
    :goto_27
    throw v0

    .line 521
    :cond_28
    :try_start_28
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_33

    .line 529
    :goto_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    :goto_2f
    return-object v0

    :cond_30
    const-string v0, ""

    goto :goto_2f

    .line 525
    :catch_33
    move-exception v1

    goto :goto_2b

    :catch_35
    move-exception v1

    goto :goto_27

    .line 521
    :catchall_37
    move-exception v0

    move-object v1, v2

    goto :goto_22
.end method

.method public static c()Z
    .registers 1

    .prologue
    .line 100
    sget-boolean v0, Lorg/jshybugger/jk;->g:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lorg/jshybugger/jk;->d:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static d()V
    .registers 1

    .prologue
    .line 104
    const/4 v0, 0x1

    sput-boolean v0, Lorg/jshybugger/jk;->g:Z

    .line 105
    const/4 v0, 0x0

    sput-boolean v0, Lorg/jshybugger/jk;->d:Z

    .line 106
    const-string v0, "License terminated"

    sput-object v0, Lorg/jshybugger/jk;->c:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public static e()Landroid/content/Context;
    .registers 1

    .prologue
    .line 480
    sget-object v0, Lorg/jshybugger/jk;->f:Landroid/content/Context;

    return-object v0
.end method

.method public static f()D
    .registers 4

    .prologue
    .line 541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static g()Ljava/lang/String;
    .registers 1

    .prologue
    .line 550
    sget-boolean v0, Lorg/jshybugger/jk;->a:Z

    if-eqz v0, :cond_19

    .line 554
    :try_start_4
    const-string v0, "org.jshybugger.proxy.StartActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 555
    const-string v0, "app"
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_c

    .line 570
    :goto_b
    return-object v0

    :catch_c
    move-exception v0

    .line 559
    :try_start_d
    const-string v0, "org.jshybugger.cordova.JsHybuggerPlugin"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 560
    const-string v0, "plugin"
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_15

    goto :goto_b

    .line 563
    :catch_15
    move-exception v0

    const-string v0, "library"

    goto :goto_b

    .line 567
    :cond_19
    const-string v0, "proxy"

    goto :goto_b
.end method

.method private static h()Lorg/xmlpull/v1/XmlPullParser;
    .registers 4

    .prologue
    .line 284
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 290
    new-instance v1, Ljava/io/FileReader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user.home"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.jsHybugger/jshybugger_license.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_29} :catch_2a

    .line 295
    return-object v0

    .line 293
    :catch_2a
    move-exception v0

    new-instance v0, Lorg/jshybugger/je;

    const-string v1, "No license found, jsHybugger sessions are limited to 2 minutes."

    invoke-direct {v0, v1}, Lorg/jshybugger/je;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static i()Lorg/xmlpull/v1/XmlPullParser;
    .registers 4

    .prologue
    .line 301
    :try_start_0
    sget-object v0, Lorg/jshybugger/jk;->f:Landroid/content/Context;

    const-string v1, "jshybugger_license.xml"

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 305
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 306
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 307
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 309
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_18} :catch_19

    .line 335
    :goto_18
    return-object v0

    :catch_19
    move-exception v0

    .line 315
    :try_start_1a
    sget-object v0, Lorg/jshybugger/jk;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "www/jshybugger_license.xml"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 316
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 317
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 318
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 320
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_36} :catch_37

    goto :goto_18

    .line 325
    :catch_37
    move-exception v0

    sget-object v0, Lorg/jshybugger/jk;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "jshybugger_license"

    const-string v2, "xml"

    sget-object v3, Lorg/jshybugger/jk;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 327
    if-nez v0, :cond_56

    .line 328
    new-instance v0, Lorg/jshybugger/je;

    const-string v1, "No license found, jsHybugger sessions are limited to 2 minutes."

    invoke-direct {v0, v1}, Lorg/jshybugger/je;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_56
    sget-object v1, Lorg/jshybugger/jk;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    goto :goto_18
.end method

.method private static j()Ljava/security/interfaces/RSAPublicKey;
    .registers 3

    .prologue
    .line 387
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 388
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    sget-object v2, Lorg/jshybugger/jk;->b:[B

    invoke-direct {v1, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 389
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 390
    return-object v0
.end method
