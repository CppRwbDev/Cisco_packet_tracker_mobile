.class public final Lorg/jshybugger/gp;
.super Ljava/lang/Object;
.source "PlatformDependent.java"


# static fields
.field private static final a:Lorg/jshybugger/gX;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Z

.field private static final d:Z

.field private static final e:Z

.field private static final f:I

.field private static final g:Z

.field private static final h:Z

.field private static final i:Z

.field private static final j:Z

.field private static final k:J

.field private static final l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    const-class v0, Lorg/jshybugger/gp;

    invoke-static {v0}, Lorg/jshybugger/gY;->a(Ljava/lang/Class;)Lorg/jshybugger/gX;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/gp;->a:Lorg/jshybugger/gX;

    .line 53
    const-string v0, "\\s*-XX:MaxDirectMemorySize\\s*=\\s*([0-9]+)\\s*([kKmMgG]?)\\s*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/gp;->b:Ljava/util/regex/Pattern;

    .line 56
    invoke-static {}, Lorg/jshybugger/gp;->i()Z

    move-result v0

    sput-boolean v0, Lorg/jshybugger/gp;->c:Z

    .line 57
    const-string v0, "os.name"

    const-string v3, ""

    invoke-static {v0, v3}, Lorg/jshybugger/gu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "win"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    sget-object v3, Lorg/jshybugger/gp;->a:Lorg/jshybugger/gX;

    const-string v4, "Platform: Windows"

    invoke-interface {v3, v4}, Lorg/jshybugger/gX;->a(Ljava/lang/String;)V

    :cond_35
    sput-boolean v0, Lorg/jshybugger/gp;->d:Z

    .line 58
    invoke-static {}, Lorg/jshybugger/gp;->j()Z

    move-result v0

    sput-boolean v0, Lorg/jshybugger/gp;->e:Z

    .line 60
    invoke-static {}, Lorg/jshybugger/gp;->k()I

    move-result v0

    sput v0, Lorg/jshybugger/gp;->f:I

    .line 62
    sget-boolean v0, Lorg/jshybugger/gp;->c:Z

    if-nez v0, :cond_9e

    move v0, v1

    :goto_48
    sput-boolean v0, Lorg/jshybugger/gp;->g:Z

    .line 64
    invoke-static {}, Lorg/jshybugger/gp;->l()Z

    move-result v0

    .line 65
    sput-boolean v0, Lorg/jshybugger/gp;->h:Z

    if-eqz v0, :cond_a0

    sget v0, Lorg/jshybugger/gp;->f:I

    const/16 v3, 0x8

    if-ge v0, v3, :cond_a0

    move v0, v1

    :goto_59
    sput-boolean v0, Lorg/jshybugger/gp;->i:Z

    .line 66
    sget-boolean v0, Lorg/jshybugger/gp;->h:Z

    if-eqz v0, :cond_a2

    const-string v0, "io.netty.noPreferDirect"

    invoke-static {v0, v2}, Lorg/jshybugger/gu;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_a2

    move v0, v1

    :goto_68
    sput-boolean v0, Lorg/jshybugger/gp;->j:Z

    .line 68
    invoke-static {}, Lorg/jshybugger/gp;->m()J

    .line 70
    sget-boolean v0, Lorg/jshybugger/gp;->h:Z

    if-nez v0, :cond_a4

    const-wide/16 v4, -0x1

    :goto_73
    sput-wide v4, Lorg/jshybugger/gp;->k:J

    .line 72
    invoke-static {}, Lorg/jshybugger/gp;->n()Z

    move-result v0

    sput-boolean v0, Lorg/jshybugger/gp;->l:Z

    .line 75
    sget-object v0, Lorg/jshybugger/gp;->a:Lorg/jshybugger/gX;

    invoke-interface {v0}, Lorg/jshybugger/gX;->a()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 76
    sget-object v0, Lorg/jshybugger/gp;->a:Lorg/jshybugger/gX;

    const-string v3, "-Dio.netty.noPreferDirect: {}"

    sget-boolean v4, Lorg/jshybugger/gp;->j:Z

    if-nez v4, :cond_a9

    :goto_8b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    :cond_92
    sget-boolean v0, Lorg/jshybugger/gp;->h:Z

    if-nez v0, :cond_9d

    .line 80
    sget-object v0, Lorg/jshybugger/gp;->a:Lorg/jshybugger/gX;

    const-string v1, "Your platform does not provide complete low-level API for accessing direct buffers reliably. Unless explicitly requested, heap buffer will always be preferred to avoid potential system unstability."

    invoke-interface {v0, v1}, Lorg/jshybugger/gX;->b(Ljava/lang/String;)V

    .line 85
    :cond_9d
    return-void

    :cond_9e
    move v0, v2

    .line 62
    goto :goto_48

    :cond_a0
    move v0, v2

    .line 65
    goto :goto_59

    :cond_a2
    move v0, v2

    .line 66
    goto :goto_68

    .line 70
    :cond_a4
    invoke-static {}, Lorg/jshybugger/gq;->b()J

    move-result-wide v4

    goto :goto_73

    :cond_a9
    move v1, v2

    .line 76
    goto :goto_8b
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    return-void
.end method

.method public static a(J)B
    .registers 4

    .prologue
    .line 256
    invoke-static {p0, p1}, Lorg/jshybugger/gq;->a(J)B

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/Object;J)I
    .registers 4

    .prologue
    .line 248
    invoke-static {p0, p1, p2}, Lorg/jshybugger/gq;->a(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/reflect/Field;)J
    .registers 3

    .prologue
    .line 252
    invoke-static {p0}, Lorg/jshybugger/gq;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(JB)V
    .registers 3

    .prologue
    .line 272
    invoke-static {p0, p1, p2}, Lorg/jshybugger/gq;->a(JB)V

    .line 273
    return-void
.end method

.method public static a(JI)V
    .registers 3

    .prologue
    .line 280
    invoke-static {p0, p1, p2}, Lorg/jshybugger/gq;->a(JI)V

    .line 281
    return-void
.end method

.method public static a(JJ)V
    .registers 4

    .prologue
    .line 284
    invoke-static {p0, p1, p2, p3}, Lorg/jshybugger/gq;->a(JJ)V

    .line 285
    return-void
.end method

.method public static a(JJJ)V
    .registers 6

    .prologue
    .line 288
    invoke-static/range {p0 .. p5}, Lorg/jshybugger/gq;->a(JJJ)V

    .line 289
    return-void
.end method

.method public static a(JS)V
    .registers 3

    .prologue
    .line 276
    invoke-static {p0, p1, p2}, Lorg/jshybugger/gq;->a(JS)V

    .line 277
    return-void
.end method

.method public static a(J[BIJ)V
    .registers 14

    .prologue
    .line 296
    const/4 v0, 0x0

    sget-wide v2, Lorg/jshybugger/gp;->k:J

    int-to-long v4, p3

    add-long/2addr v4, v2

    move-wide v1, p0

    move-object v3, p2

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Lorg/jshybugger/gq;->a(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 297
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .registers 2

    .prologue
    .line 157
    sget-boolean v0, Lorg/jshybugger/gp;->h:Z

    if-eqz v0, :cond_8

    .line 158
    invoke-static {p0}, Lorg/jshybugger/gq;->a(Ljava/lang/Throwable;)V

    return-void

    .line 160
    :cond_8
    throw p0
.end method

.method public static a(Ljava/nio/ByteBuffer;)V
    .registers 2

    .prologue
    .line 230
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 231
    sget-boolean v0, Lorg/jshybugger/gp;->h:Z

    if-eqz v0, :cond_e

    .line 232
    invoke-static {p0}, Lorg/jshybugger/gq;->a(Ljava/nio/ByteBuffer;)V

    .line 237
    :cond_d
    :goto_d
    return-void

    .line 234
    :cond_e
    invoke-static {p0}, Lorg/jshybugger/gq;->b(Ljava/nio/ByteBuffer;)V

    goto :goto_d
.end method

.method public static a([BIJJ)V
    .registers 14

    .prologue
    .line 292
    sget-wide v0, Lorg/jshybugger/gp;->k:J

    int-to-long v2, p1

    add-long v1, v0, v2

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Lorg/jshybugger/gq;->a(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 293
    return-void
.end method

.method public static a()Z
    .registers 1

    .prologue
    .line 98
    sget-boolean v0, Lorg/jshybugger/gp;->d:Z

    return v0
.end method

.method public static b(Ljava/nio/ByteBuffer;)J
    .registers 3

    .prologue
    .line 240
    invoke-static {p0}, Lorg/jshybugger/gq;->c(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(J)S
    .registers 4

    .prologue
    .line 260
    invoke-static {p0, p1}, Lorg/jshybugger/gq;->b(J)S

    move-result v0

    return v0
.end method

.method public static b()Z
    .registers 1

    .prologue
    .line 106
    sget-boolean v0, Lorg/jshybugger/gp;->e:Z

    return v0
.end method

.method public static c()I
    .registers 1

    .prologue
    .line 113
    sget v0, Lorg/jshybugger/gp;->f:I

    return v0
.end method

.method public static c(J)I
    .registers 4

    .prologue
    .line 264
    invoke-static {p0, p1}, Lorg/jshybugger/gq;->c(J)I

    move-result v0

    return v0
.end method

.method public static d(J)J
    .registers 4

    .prologue
    .line 268
    invoke-static {p0, p1}, Lorg/jshybugger/gq;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static d()Z
    .registers 1

    .prologue
    .line 120
    sget-boolean v0, Lorg/jshybugger/gp;->g:Z

    return v0
.end method

.method public static e()Z
    .registers 1

    .prologue
    .line 128
    sget-boolean v0, Lorg/jshybugger/gp;->h:Z

    return v0
.end method

.method public static f()Z
    .registers 1

    .prologue
    .line 136
    sget-boolean v0, Lorg/jshybugger/gp;->j:Z

    return v0
.end method

.method public static g()Z
    .registers 1

    .prologue
    .line 150
    sget-boolean v0, Lorg/jshybugger/gp;->l:Z

    return v0
.end method

.method public static h()Ljava/util/concurrent/ConcurrentMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 173
    sget-boolean v0, Lorg/jshybugger/gp;->i:Z

    if-eqz v0, :cond_a

    .line 174
    new-instance v0, Lorg/jshybugger/gC;

    invoke-direct {v0}, Lorg/jshybugger/gC;-><init>()V

    .line 176
    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    goto :goto_9
.end method

.method private static i()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 302
    :try_start_1
    const-string v1, "android.app.Application"

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_16

    .line 303
    const/4 v0, 0x1

    .line 308
    :goto_c
    if-eqz v0, :cond_15

    .line 309
    sget-object v1, Lorg/jshybugger/gp;->a:Lorg/jshybugger/gX;

    const-string v2, "Platform: Android"

    invoke-interface {v1, v2}, Lorg/jshybugger/gX;->a(Ljava/lang/String;)V

    .line 311
    :cond_15
    return v0

    .line 305
    :catch_16
    move-exception v1

    goto :goto_c
.end method

.method private static j()Z
    .registers 12

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 323
    sget-boolean v0, Lorg/jshybugger/gp;->d:Z

    if-eqz v0, :cond_a

    move v0, v2

    .line 411
    :goto_9
    return v0

    .line 327
    :cond_a
    const/4 v0, 0x3

    new-array v7, v0, [Ljava/lang/String;

    const-string v0, "/usr/bin/id"

    aput-object v0, v7, v2

    const-string v0, "/bin/id"

    aput-object v0, v7, v3

    const-string v0, "id"

    aput-object v0, v7, v4

    .line 328
    const-string v0, "^(?:0|[1-9][0-9]*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 329
    array-length v9, v7

    move v6, v2

    :goto_21
    if-ge v6, v9, :cond_9b

    aget-object v0, v7, v6

    .line 332
    :try_start_25
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v0, v5, v10

    const/4 v0, 0x1

    const-string v10, "-u"

    aput-object v10, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_37} :catch_78
    .catchall {:try_start_25 .. :try_end_37} :catchall_8a

    move-result-object v5

    .line 335
    :try_start_38
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    sget-object v11, Lorg/jshybugger/fe;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_48} :catch_134
    .catchall {:try_start_38 .. :try_end_48} :catchall_12d

    .line 336
    :try_start_48
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4f} :catch_139
    .catchall {:try_start_48 .. :try_end_4f} :catchall_130

    .line 341
    :goto_4f
    :try_start_4f
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I
    :try_end_52
    .catch Ljava/lang/InterruptedException; {:try_start_4f .. :try_end_52} :catch_10f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_139
    .catchall {:try_start_4f .. :try_end_52} :catchall_130

    move-result v10

    .line 342
    if-eqz v10, :cond_56

    move-object v0, v1

    .line 353
    :cond_56
    :try_start_56
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_112

    .line 360
    :goto_59
    if-eqz v5, :cond_5e

    .line 362
    :try_start_5b
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_115

    .line 369
    :cond_5e
    :goto_5e
    if-eqz v0, :cond_97

    invoke-virtual {v8, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_97

    .line 370
    sget-object v1, Lorg/jshybugger/gp;->a:Lorg/jshybugger/gX;

    const-string v2, "UID: {}"

    invoke-interface {v1, v2, v0}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 371
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9

    .line 351
    :catch_78
    move-exception v0

    move-object v0, v1

    move-object v4, v1

    .line 353
    :goto_7b
    if-eqz v0, :cond_80

    .line 355
    :try_start_7d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_118

    .line 360
    :cond_80
    :goto_80
    if-eqz v4, :cond_13e

    .line 362
    :try_start_82
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_85} :catch_87

    move-object v0, v1

    .line 365
    goto :goto_5e

    :catch_87
    move-exception v0

    move-object v0, v1

    goto :goto_5e

    .line 353
    :catchall_8a
    move-exception v0

    move-object v5, v1

    :goto_8c
    if-eqz v1, :cond_91

    .line 355
    :try_start_8e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_11b

    .line 360
    :cond_91
    :goto_91
    if-eqz v5, :cond_96

    .line 362
    :try_start_93
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_96} :catch_11e

    .line 365
    :cond_96
    :goto_96
    throw v0

    .line 329
    :cond_97
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_21

    .line 375
    :cond_9b
    sget-object v0, Lorg/jshybugger/gp;->a:Lorg/jshybugger/gX;

    const-string v4, "Could not determine the current UID using /usr/bin/id; attempting to bind at privileged ports."

    invoke-interface {v0, v4}, Lorg/jshybugger/gX;->a(Ljava/lang/String;)V

    .line 377
    const-string v0, ".*(?:denied|not.*permitted).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 378
    const/16 v0, 0x3ff

    move v5, v0

    :goto_ab
    if-lez v5, :cond_f4

    .line 381
    :try_start_ad
    new-instance v4, Ljava/net/ServerSocket;

    invoke-direct {v4}, Ljava/net/ServerSocket;-><init>()V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b2} :catch_d7
    .catchall {:try_start_ad .. :try_end_b2} :catchall_107

    .line 382
    const/4 v0, 0x1

    :try_start_b3
    invoke-virtual {v4, v0}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 383
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v5}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 384
    sget-object v0, Lorg/jshybugger/gp;->a:Lorg/jshybugger/gX;

    invoke-interface {v0}, Lorg/jshybugger/gX;->a()Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 385
    sget-object v0, Lorg/jshybugger/gp;->a:Lorg/jshybugger/gX;

    const-string v7, "UID: 0 (succeded to bind at port {})"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_d1} :catch_12b
    .catchall {:try_start_b3 .. :try_end_d1} :catchall_129

    .line 387
    :cond_d1
    :try_start_d1
    invoke-virtual {v4}, Ljava/net/ServerSocket;->close()V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d4} :catch_121

    :goto_d4
    move v0, v3

    .line 405
    goto/16 :goto_9

    .line 388
    :catch_d7
    move-exception v0

    move-object v4, v1

    .line 391
    :goto_d9
    :try_start_d9
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 392
    if-nez v0, :cond_e1

    .line 393
    const-string v0, ""

    .line 395
    :cond_e1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 396
    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_ec
    .catchall {:try_start_d9 .. :try_end_ec} :catchall_129

    move-result v0

    if-eqz v0, :cond_fe

    .line 400
    if-eqz v4, :cond_f4

    .line 402
    :try_start_f1
    invoke-virtual {v4}, Ljava/net/ServerSocket;->close()V
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_f4} :catch_123

    .line 410
    :cond_f4
    :goto_f4
    sget-object v0, Lorg/jshybugger/gp;->a:Lorg/jshybugger/gX;

    const-string v1, "UID: non-root (failed to bind at any privileged ports)"

    invoke-interface {v0, v1}, Lorg/jshybugger/gX;->a(Ljava/lang/String;)V

    move v0, v2

    .line 411
    goto/16 :goto_9

    .line 400
    :cond_fe
    if-eqz v4, :cond_103

    .line 402
    :try_start_100
    invoke-virtual {v4}, Ljava/net/ServerSocket;->close()V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_103} :catch_125

    .line 378
    :cond_103
    :goto_103
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto :goto_ab

    .line 400
    :catchall_107
    move-exception v0

    move-object v4, v1

    :goto_109
    if-eqz v4, :cond_10e

    .line 402
    :try_start_10b
    invoke-virtual {v4}, Ljava/net/ServerSocket;->close()V
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_10e} :catch_127

    .line 405
    :cond_10e
    :goto_10e
    throw v0

    .line 348
    :catch_10f
    move-exception v10

    goto/16 :goto_4f

    :catch_112
    move-exception v4

    goto/16 :goto_59

    .line 365
    :catch_115
    move-exception v4

    goto/16 :goto_5e

    :catch_118
    move-exception v0

    goto/16 :goto_80

    :catch_11b
    move-exception v1

    goto/16 :goto_91

    :catch_11e
    move-exception v1

    goto/16 :goto_96

    :catch_121
    move-exception v0

    goto :goto_d4

    .line 405
    :catch_123
    move-exception v0

    goto :goto_f4

    :catch_125
    move-exception v0

    goto :goto_103

    :catch_127
    move-exception v1

    goto :goto_10e

    .line 400
    :catchall_129
    move-exception v0

    goto :goto_109

    .line 388
    :catch_12b
    move-exception v0

    goto :goto_d9

    .line 353
    :catchall_12d
    move-exception v0

    goto/16 :goto_8c

    :catchall_130
    move-exception v0

    move-object v1, v4

    goto/16 :goto_8c

    .line 351
    :catch_134
    move-exception v0

    move-object v0, v1

    move-object v4, v5

    goto/16 :goto_7b

    :catch_139
    move-exception v0

    move-object v0, v4

    move-object v4, v5

    goto/16 :goto_7b

    :cond_13e
    move-object v0, v1

    goto/16 :goto_5e
.end method

.method private static k()I
    .registers 4

    .prologue
    const/4 v0, 0x6

    .line 421
    sget-boolean v1, Lorg/jshybugger/gp;->c:Z

    if-eqz v1, :cond_19

    .line 446
    :goto_5
    sget-object v1, Lorg/jshybugger/gp;->a:Lorg/jshybugger/gX;

    invoke-interface {v1}, Lorg/jshybugger/gX;->a()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 447
    sget-object v1, Lorg/jshybugger/gp;->a:Lorg/jshybugger/gX;

    const-string v2, "Java version: {}"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 449
    :cond_18
    return v0

    .line 427
    :cond_19
    :try_start_19
    const-string v1, "java.time.Clock"

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_25} :catch_28

    .line 428
    const/16 v0, 0x8

    goto :goto_5

    :catch_28
    move-exception v1

    .line 435
    :try_start_29
    const-string v1, "java.util.concurrent.LinkedTransferQueue"

    const/4 v2, 0x0

    const-class v3, Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_35} :catch_37

    .line 436
    const/4 v0, 0x7

    goto :goto_5

    .line 442
    :catch_37
    move-exception v1

    goto :goto_5
.end method

.method private static l()Z
    .registers 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 453
    const-string v1, "io.netty.noUnsafe"

    invoke-static {v1, v0}, Lorg/jshybugger/gu;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 454
    sget-object v2, Lorg/jshybugger/gp;->a:Lorg/jshybugger/gX;

    const-string v3, "-Dio.netty.noUnsafe: {}"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 456
    sget-boolean v2, Lorg/jshybugger/gp;->c:Z

    if-eqz v2, :cond_1f

    .line 457
    sget-object v1, Lorg/jshybugger/gp;->a:Lorg/jshybugger/gX;

    const-string v2, "sun.misc.Unsafe: unavailable (Android)"

    invoke-interface {v1, v2}, Lorg/jshybugger/gX;->a(Ljava/lang/String;)V

    .line 484
    :goto_1e
    return v0

    .line 461
    :cond_1f
    if-eqz v1, :cond_29

    .line 462
    sget-object v1, Lorg/jshybugger/gp;->a:Lorg/jshybugger/gX;

    const-string v2, "sun.misc.Unsafe: unavailable (io.netty.noUnsafe)"

    invoke-interface {v1, v2}, Lorg/jshybugger/gX;->a(Ljava/lang/String;)V

    goto :goto_1e

    .line 468
    :cond_29
    const-string v1, "io.netty.tryUnsafe"

    invoke-static {v1}, Lorg/jshybugger/gu;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 469
    const-string v1, "io.netty.tryUnsafe"

    invoke-static {v1, v5}, Lorg/jshybugger/gu;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 474
    :goto_37
    if-nez v1, :cond_48

    .line 475
    sget-object v1, Lorg/jshybugger/gp;->a:Lorg/jshybugger/gX;

    const-string v2, "sun.misc.Unsafe: unavailable (io.netty.tryUnsafe/org.jboss.netty.tryUnsafe)"

    invoke-interface {v1, v2}, Lorg/jshybugger/gX;->a(Ljava/lang/String;)V

    goto :goto_1e

    .line 471
    :cond_41
    const-string v1, "org.jboss.netty.tryUnsafe"

    invoke-static {v1, v5}, Lorg/jshybugger/gu;->a(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_37

    .line 480
    :cond_48
    :try_start_48
    invoke-static {}, Lorg/jshybugger/gq;->a()Z

    move-result v1

    .line 481
    sget-object v3, Lorg/jshybugger/gp;->a:Lorg/jshybugger/gX;

    const-string v4, "sun.misc.Unsafe: {}"

    if-eqz v1, :cond_59

    const-string v2, "available"

    :goto_54
    invoke-interface {v3, v4, v2}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    .line 482
    goto :goto_1e

    .line 481
    :cond_59
    const-string v2, "unavailable"
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_5b} :catch_5c

    goto :goto_54

    .line 484
    :catch_5c
    move-exception v1

    goto :goto_1e
.end method

.method private static m()J
    .registers 8

    .prologue
    const-wide/16 v6, 0x0

    .line 500
    :try_start_2
    const-string v0, "sun.misc.VM"

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 501
    const-string v1, "maxDirectMemory"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 502
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_23} :catch_29

    move-result-wide v2

    .line 507
    :goto_24
    cmp-long v0, v2, v6

    if-lez v0, :cond_2c

    .line 554
    :goto_28
    return-wide v2

    :catch_29
    move-exception v0

    move-wide v2, v6

    goto :goto_24

    .line 514
    :cond_2c
    :try_start_2c
    const-string v0, "java.lang.management.ManagementFactory"

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v0, v1, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 516
    const-string v1, "java.lang.management.RuntimeMXBean"

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v1, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 519
    const-string v4, "getRuntimeMXBean"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 522
    const-string v4, "getInputArguments"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 523
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    :goto_6c
    if-ltz v4, :cond_c3

    .line 524
    sget-object v5, Lorg/jshybugger/gp;->b:Ljava/util/regex/Pattern;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 525
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_be

    .line 526
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_88} :catch_c2

    move-result-wide v0

    .line 530
    const/4 v2, 0x2

    :try_start_8a
    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_92} :catch_d1

    move-result v2

    sparse-switch v2, :sswitch_data_d4

    .line 547
    :goto_96
    cmp-long v2, v0, v6

    if-gtz v2, :cond_c5

    .line 548
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    .line 549
    sget-object v2, Lorg/jshybugger/gp;->a:Lorg/jshybugger/gX;

    const-string v3, "maxDirectMemory: {} bytes (maybe)"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_ad
    move-wide v2, v0

    .line 554
    goto/16 :goto_28

    .line 532
    :sswitch_b0
    const/16 v2, 0xa

    shl-long/2addr v0, v2

    .line 533
    goto :goto_96

    .line 535
    :sswitch_b4
    const-wide/32 v2, 0x100000

    mul-long/2addr v0, v2

    .line 536
    goto :goto_96

    .line 538
    :sswitch_b9
    const-wide/32 v2, 0x40000000

    mul-long/2addr v0, v2

    goto :goto_96

    .line 523
    :cond_be
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto :goto_6c

    :catch_c2
    move-exception v0

    :cond_c3
    :goto_c3
    move-wide v0, v2

    goto :goto_96

    .line 551
    :cond_c5
    sget-object v2, Lorg/jshybugger/gp;->a:Lorg/jshybugger/gX;

    const-string v3, "maxDirectMemory: {} bytes"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_ad

    :catch_d1
    move-exception v2

    move-wide v2, v0

    goto :goto_c3

    .line 530
    :sswitch_data_d4
    .sparse-switch
        0x47 -> :sswitch_b9
        0x4b -> :sswitch_b0
        0x4d -> :sswitch_b4
        0x67 -> :sswitch_b9
        0x6b -> :sswitch_b0
        0x6d -> :sswitch_b4
    .end sparse-switch
.end method

.method private static n()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 558
    const-string v1, "io.netty.noJavassist"

    invoke-static {v1, v0}, Lorg/jshybugger/gu;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 559
    sget-object v2, Lorg/jshybugger/gp;->a:Lorg/jshybugger/gX;

    const-string v3, "-Dio.netty.noJavassist: {}"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 561
    if-eqz v1, :cond_1c

    .line 562
    sget-object v1, Lorg/jshybugger/gp;->a:Lorg/jshybugger/gX;

    const-string v2, "Javassist: unavailable (io.netty.noJavassist)"

    invoke-interface {v1, v2}, Lorg/jshybugger/gX;->a(Ljava/lang/String;)V

    .line 575
    :goto_1b
    return v0

    .line 567
    :cond_1c
    :try_start_1c
    const-class v1, Ljava/lang/Object;

    const-class v2, Lorg/jshybugger/gp;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/jshybugger/gl;->a(Ljava/lang/Class;Ljava/lang/ClassLoader;)Lorg/jshybugger/gy;

    .line 568
    sget-object v1, Lorg/jshybugger/gp;->a:Lorg/jshybugger/gX;

    const-string v2, "Javassist: available"

    invoke-interface {v1, v2}, Lorg/jshybugger/gX;->a(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_2e} :catch_30

    .line 569
    const/4 v0, 0x1

    goto :goto_1b

    .line 571
    :catch_30
    move-exception v1

    sget-object v1, Lorg/jshybugger/gp;->a:Lorg/jshybugger/gX;

    const-string v2, "Javassist: unavailable"

    invoke-interface {v1, v2}, Lorg/jshybugger/gX;->a(Ljava/lang/String;)V

    .line 572
    sget-object v1, Lorg/jshybugger/gp;->a:Lorg/jshybugger/gX;

    const-string v2, "You don\'t have Javassist in your class path or you don\'t have enough permission to load dynamically generated classes.  Please check the configuration for better performance."

    invoke-interface {v1, v2}, Lorg/jshybugger/gX;->a(Ljava/lang/String;)V

    goto :goto_1b
.end method
