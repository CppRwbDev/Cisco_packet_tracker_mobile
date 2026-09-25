.class public Lorg/jshybugger/DebugService;
.super Ljava/lang/Object;
.source "DebugService.java"


# static fields
.field public static final PROP_DEBUGGING_ENABLED:Ljava/lang/String; = "releaseBuildDebugging"

.field public static final PROP_PROXY_ENABLED:Ljava/lang/String; = "proxyEnabled"

.field private static a:Lorg/jshybugger/DebugService;

.field private static b:Z


# instance fields
.field private c:Lorg/jshybugger/iq;

.field private d:Lorg/jshybugger/ib;

.field private e:Z

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lorg/jshybugger/hE;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    const/4 v0, 0x1

    sput-boolean v0, Lorg/jshybugger/DebugService;->b:Z

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    :try_start_3
    const-string v0, "io.netty.noJdkZlibDecoder"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    const-string v0, "io.netty.noJavassist"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    const-string v0, "io.netty.noResourceLeakDetection"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    const-string v0, "DebugService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Init DebugService with configuration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jshybugger/jf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iput-object p1, p0, Lorg/jshybugger/DebugService;->f:Ljava/util/Map;

    .line 102
    const-string v0, "protocolLogging"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/jshybugger/jk;->a(Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 103
    invoke-static {}, Lorg/jshybugger/jg;->a()V

    .line 106
    :cond_3a
    invoke-static {}, Lorg/jshybugger/hE;->c()Lorg/jshybugger/hE;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/DebugService;->g:Lorg/jshybugger/hE;

    .line 107
    iget-object v0, p0, Lorg/jshybugger/DebugService;->g:Lorg/jshybugger/hE;

    invoke-virtual {v0, p1}, Lorg/jshybugger/hE;->a(Ljava/util/Map;)V

    .line 109
    sget-boolean v0, Lorg/jshybugger/DebugService;->b:Z

    if-eqz v0, :cond_71

    .line 110
    new-instance v0, Lorg/jshybugger/iq;

    const-string v1, "debugPort"

    const/16 v2, 0x22b8

    invoke-static {p1, v1, v2}, Lorg/jshybugger/jk;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "domainSocketName"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lorg/jshybugger/jk;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/iq;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lorg/jshybugger/DebugService;->c:Lorg/jshybugger/iq;

    .line 113
    const-string v0, "proxyEnabled"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/jshybugger/jk;->a(Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 114
    new-instance v0, Lorg/jshybugger/ib;

    iget-object v1, p0, Lorg/jshybugger/DebugService;->c:Lorg/jshybugger/iq;

    invoke-direct {v0, v1, p1}, Lorg/jshybugger/ib;-><init>(Lorg/jshybugger/iq;Ljava/util/Map;)V

    iput-object v0, p0, Lorg/jshybugger/DebugService;->d:Lorg/jshybugger/ib;
    :try_end_71
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_71} :catch_72
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_71} :catch_8c

    .line 123
    :cond_71
    :goto_71
    return-void

    .line 118
    :catch_72
    move-exception v0

    .line 119
    const-string v1, "DebugService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DebugService creation failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/jshybugger/jf;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_71

    .line 120
    :catch_8c
    move-exception v0

    .line 121
    const-string v1, "DebugService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DebugService creation failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/jshybugger/jf;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_71
.end method

.method private static a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 414
    const-class v0, Ljava/nio/charset/Charset;

    .line 415
    const-string v1, "defaultCharset"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 416
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 417
    const/4 v1, 0x0

    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 419
    return-void
.end method

.method private static a(Lorg/jshybugger/hq;)V
    .registers 3

    .prologue
    .line 408
    new-instance v0, Lorg/jshybugger/hk;

    invoke-direct {v0}, Lorg/jshybugger/hk;-><init>()V

    .line 409
    const-string v1, "jshybugger run proxy <options>\n"

    invoke-virtual {v0, v1, p0}, Lorg/jshybugger/hk;->a(Ljava/lang/String;Lorg/jshybugger/hq;)V

    .line 410
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 411
    return-void
.end method

.method public static createSingleton(Landroid/content/Context;)Lorg/jshybugger/DebugService;
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 171
    sget-object v0, Lorg/jshybugger/DebugService;->a:Lorg/jshybugger/DebugService;

    if-eqz v0, :cond_e

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only one DebugService instance per process allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_e
    :try_start_e
    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 177
    if-eqz v0, :cond_24

    .line 178
    const-string v0, "DebugService"

    const-string v3, "Missing android.permission.INTERNET permission"

    invoke-static {v0, v3}, Lorg/jshybugger/jf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 182
    :cond_24
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/ComponentName;

    const-class v5, Lorg/jshybugger/DebugContentProvider;

    invoke-direct {v3, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v5, 0x88

    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 184
    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 185
    if-eqz v3, :cond_80

    .line 187
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_46
    :goto_46
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 188
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_46

    .line 189
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_63
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_63} :catch_64

    goto :goto_46

    .line 222
    :catch_64
    move-exception v0

    .line 223
    const-string v1, "DebugService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DebugService creation failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/jshybugger/jf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :goto_7d
    sget-object v0, Lorg/jshybugger/DebugService;->a:Lorg/jshybugger/DebugService;

    return-object v0

    .line 194
    :cond_80
    :try_start_80
    const-string v0, "instrumentCacheDir"

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fb

    .line 197
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Icenium/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 199
    const-string v3, "instrumentCacheDir"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_b3
    :goto_b3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 212
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 213
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_145

    move v0, v1

    .line 214
    :goto_c9
    sput-boolean v0, Lorg/jshybugger/DebugService;->b:Z

    if-nez v0, :cond_d9

    const-string v0, "releaseBuildDebugging"

    const/4 v1, 0x0

    invoke-static {v4, v0, v1}, Lorg/jshybugger/jk;->a(Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 216
    const/4 v0, 0x1

    sput-boolean v0, Lorg/jshybugger/DebugService;->b:Z

    .line 218
    :cond_d9
    const-string v1, "DebugService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Debug service is "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lorg/jshybugger/DebugService;->b:Z

    if-eqz v0, :cond_147

    const-string v0, "enabled"

    :goto_e8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/jshybugger/jf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance v0, Lorg/jshybugger/DebugService;

    invoke-direct {v0, v4}, Lorg/jshybugger/DebugService;-><init>(Ljava/util/Map;)V

    sput-object v0, Lorg/jshybugger/DebugService;->a:Lorg/jshybugger/DebugService;

    goto :goto_7d

    .line 202
    :cond_fb
    const-string v0, "instrumentCacheDir"

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11f

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 207
    :goto_115
    const-string v3, "instrumentCacheDir"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b3

    .line 203
    :cond_11f
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_115

    :cond_145
    move v0, v2

    .line 213
    goto :goto_c9

    .line 218
    :cond_147
    const-string v0, "disabled"
    :try_end_149
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_80 .. :try_end_149} :catch_64

    goto :goto_e8
.end method

.method public static createSingleton(Ljava/util/Map;)Lorg/jshybugger/DebugService;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jshybugger/DebugService;"
        }
    .end annotation

    .prologue
    .line 133
    sget-object v0, Lorg/jshybugger/DebugService;->a:Lorg/jshybugger/DebugService;

    if-eqz v0, :cond_c

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only one DebugService instance per process allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_c
    if-nez p0, :cond_13

    .line 137
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 140
    :cond_13
    new-instance v0, Lorg/jshybugger/DebugService;

    invoke-direct {v0, p0}, Lorg/jshybugger/DebugService;-><init>(Ljava/util/Map;)V

    .line 141
    sput-object v0, Lorg/jshybugger/DebugService;->a:Lorg/jshybugger/DebugService;

    return-object v0
.end method

.method public static destroySingleton()V
    .registers 1

    .prologue
    .line 157
    sget-object v0, Lorg/jshybugger/DebugService;->a:Lorg/jshybugger/DebugService;

    if-eqz v0, :cond_c

    .line 158
    sget-object v0, Lorg/jshybugger/DebugService;->a:Lorg/jshybugger/DebugService;

    invoke-virtual {v0}, Lorg/jshybugger/DebugService;->stop()V

    .line 159
    const/4 v0, 0x0

    sput-object v0, Lorg/jshybugger/DebugService;->a:Lorg/jshybugger/DebugService;

    .line 161
    :cond_c
    return-void
.end method

.method public static getInstance()Lorg/jshybugger/DebugService;
    .registers 1

    .prologue
    .line 234
    sget-object v0, Lorg/jshybugger/DebugService;->a:Lorg/jshybugger/DebugService;

    return-object v0
.end method

.method public static isEnabled()Z
    .registers 2

    .prologue
    .line 422
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_9

    sget-boolean v0, Lorg/jshybugger/DebugService;->b:Z

    :goto_8
    return v0

    :cond_9
    sget-object v0, Lorg/jshybugger/DebugService;->a:Lorg/jshybugger/DebugService;

    if-eqz v0, :cond_13

    sget-boolean v0, Lorg/jshybugger/DebugService;->b:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_8

    :cond_13
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static main([Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 320
    const-string v0, "utf8"

    invoke-static {v0}, Lorg/jshybugger/DebugService;->a(Ljava/lang/String;)V

    .line 323
    new-instance v2, Lorg/jshybugger/hq;

    invoke-direct {v2}, Lorg/jshybugger/hq;-><init>()V

    .line 326
    const-string v0, "help"

    const-string v3, "Print this screen"

    invoke-virtual {v2, v0, v4, v3}, Lorg/jshybugger/hq;->a(Ljava/lang/String;ZLjava/lang/String;)Lorg/jshybugger/hq;

    .line 327
    const-string v0, "clear"

    const-string v3, "Clear jsHybugger cache on startup"

    invoke-virtual {v2, v0, v4, v3}, Lorg/jshybugger/hq;->a(Ljava/lang/String;ZLjava/lang/String;)Lorg/jshybugger/hq;

    .line 328
    const-string v0, "d"

    const-string v3, "Debugging port (default: 8888)"

    invoke-virtual {v2, v0, v5, v3}, Lorg/jshybugger/hq;->a(Ljava/lang/String;ZLjava/lang/String;)Lorg/jshybugger/hq;

    .line 329
    const-string v0, "l"

    const-string v3, "Listener port of the internal proxy (default: 8080)"

    invoke-virtual {v2, v0, v5, v3}, Lorg/jshybugger/hq;->a(Ljava/lang/String;ZLjava/lang/String;)Lorg/jshybugger/hq;

    .line 330
    const-string v0, "fh"

    const-string v3, "Forward HTTP traffic to host:port (default: <not set>)"

    invoke-virtual {v2, v0, v5, v3}, Lorg/jshybugger/hq;->a(Ljava/lang/String;ZLjava/lang/String;)Lorg/jshybugger/hq;

    .line 331
    const-string v0, "eh"

    const-string v3, "Exclude hosts (default: *.google.com,*.twitter.com)"

    invoke-virtual {v2, v0, v5, v3}, Lorg/jshybugger/hq;->a(Ljava/lang/String;ZLjava/lang/String;)Lorg/jshybugger/hq;

    .line 332
    const-string v0, "ef"

    const-string v3, "Exclude files (default: *.min.js)"

    invoke-virtual {v2, v0, v5, v3}, Lorg/jshybugger/hq;->a(Ljava/lang/String;ZLjava/lang/String;)Lorg/jshybugger/hq;

    .line 333
    const-string v0, "enc"

    const-string v3, "Use specific file encoding (default: UTF-8)"

    invoke-virtual {v2, v0, v5, v3}, Lorg/jshybugger/hq;->a(Ljava/lang/String;ZLjava/lang/String;)Lorg/jshybugger/hq;

    .line 334
    const-string v0, "pb"

    const-string v3, "Bypass web proxy for e.g. myhost.com (default: none)"

    invoke-virtual {v2, v0, v5, v3}, Lorg/jshybugger/hq;->a(Ljava/lang/String;ZLjava/lang/String;)Lorg/jshybugger/hq;

    .line 335
    const-string v0, "ph"

    const-string v3, "Web proxy host (default: none)"

    invoke-virtual {v2, v0, v5, v3}, Lorg/jshybugger/hq;->a(Ljava/lang/String;ZLjava/lang/String;)Lorg/jshybugger/hq;

    .line 336
    const-string v0, "pp"

    const-string v3, "Web proxy port (default: none)"

    invoke-virtual {v2, v0, v5, v3}, Lorg/jshybugger/hq;->a(Ljava/lang/String;ZLjava/lang/String;)Lorg/jshybugger/hq;

    .line 337
    const-string v0, "ssl"

    const-string v3, "Intercept SSL traffic"

    invoke-virtual {v2, v0, v4, v3}, Lorg/jshybugger/hq;->a(Ljava/lang/String;ZLjava/lang/String;)Lorg/jshybugger/hq;

    .line 339
    new-instance v0, Lorg/jshybugger/hh;

    invoke-direct {v0}, Lorg/jshybugger/hh;-><init>()V

    .line 342
    :try_start_66
    invoke-interface {v0, v2, p0}, Lorg/jshybugger/hj;->a(Lorg/jshybugger/hq;[Ljava/lang/String;)Lorg/jshybugger/hi;
    :try_end_69
    .catch Lorg/jshybugger/hr; {:try_start_66 .. :try_end_69} :catch_174

    move-result-object v0

    .line 349
    :goto_6a
    const-string v3, "help"

    invoke-virtual {v0, v3}, Lorg/jshybugger/hi;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 350
    invoke-static {v2}, Lorg/jshybugger/DebugService;->a(Lorg/jshybugger/hq;)V

    .line 353
    :cond_75
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 355
    const-string v4, "debugPort"

    const-string v2, "d"

    invoke-virtual {v0, v2}, Lorg/jshybugger/hi;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_184

    const-string v2, "d"

    invoke-virtual {v0, v2}, Lorg/jshybugger/hi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_8a
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v4, "proxyPort"

    const-string v2, "l"

    invoke-virtual {v0, v2}, Lorg/jshybugger/hi;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_188

    const-string v2, "l"

    invoke-virtual {v0, v2}, Lorg/jshybugger/hi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_9d
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v2, "pb"

    invoke-virtual {v0, v2}, Lorg/jshybugger/hi;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 365
    const-string v2, "upstreamProxyByPass"

    const-string v4, "pb"

    invoke-virtual {v0, v4}, Lorg/jshybugger/hi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :cond_b3
    const-string v2, "ph"

    invoke-virtual {v0, v2}, Lorg/jshybugger/hi;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 370
    const-string v2, "upstreamProxyEnabled"

    const-string v4, "true"

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v2, "upstreamProxyHost"

    const-string v4, "ph"

    invoke-virtual {v0, v4}, Lorg/jshybugger/hi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string v4, "upstreamProxyPort"

    const-string v2, "pp"

    invoke-virtual {v0, v2}, Lorg/jshybugger/hi;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18c

    const-string v2, "pp"

    invoke-virtual {v0, v2}, Lorg/jshybugger/hi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_dd
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    :cond_e0
    const-string v2, "ef"

    invoke-virtual {v0, v2}, Lorg/jshybugger/hi;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f3

    .line 377
    const-string v2, "excludeFiles"

    const-string v4, "ef"

    invoke-virtual {v0, v4}, Lorg/jshybugger/hi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_f3
    const-string v2, "eh"

    invoke-virtual {v0, v2}, Lorg/jshybugger/hi;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_106

    .line 380
    const-string v2, "excludeHosts"

    const-string v4, "eh"

    invoke-virtual {v0, v4}, Lorg/jshybugger/hi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    :cond_106
    const-string v2, "ssl"

    invoke-virtual {v0, v2}, Lorg/jshybugger/hi;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12f

    .line 383
    const-string v2, "mitmEnabled"

    const-string v4, "true"

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string v2, "pb"

    invoke-virtual {v0, v2}, Lorg/jshybugger/hi;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_125

    const-string v2, "ph"

    invoke-virtual {v0, v2}, Lorg/jshybugger/hi;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12f

    .line 385
    :cond_125
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "option -ssl does not allow an upstream proxy"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 386
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 389
    :cond_12f
    const-string v2, "enc"

    invoke-virtual {v0, v2}, Lorg/jshybugger/hi;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_140

    .line 390
    const-string v2, "enc"

    invoke-virtual {v0, v2}, Lorg/jshybugger/hi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jshybugger/DebugService;->a(Ljava/lang/String;)V

    .line 392
    :cond_140
    const-string v2, "clear"

    invoke-virtual {v0, v2}, Lorg/jshybugger/hi;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14f

    .line 393
    const-string v2, "clearCache"

    const-string v4, "true"

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    :cond_14f
    const-string v2, "fh"

    invoke-virtual {v0, v2}, Lorg/jshybugger/hi;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_162

    .line 397
    const-string v2, "forwardHttpSite"

    const-string v4, "fh"

    invoke-virtual {v0, v4}, Lorg/jshybugger/hi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    :cond_162
    const-string v0, "proxyEnabled"

    const-string v2, "true"

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    invoke-static {v1}, Lorg/jshybugger/jk;->a(Landroid/content/Context;)V

    .line 403
    invoke-static {v3}, Lorg/jshybugger/DebugService;->createSingleton(Ljava/util/Map;)Lorg/jshybugger/DebugService;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Lorg/jshybugger/DebugService;->start()V

    .line 405
    return-void

    .line 343
    :catch_174
    move-exception v0

    .line 344
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/jshybugger/hr;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 346
    invoke-static {v2}, Lorg/jshybugger/DebugService;->a(Lorg/jshybugger/hq;)V

    move-object v0, v1

    goto/16 :goto_6a

    .line 355
    :cond_184
    const-string v2, "8888"

    goto/16 :goto_8a

    .line 359
    :cond_188
    const-string v2, "8080"

    goto/16 :goto_9d

    .line 372
    :cond_18c
    const-string v2, "8080"

    goto/16 :goto_dd
.end method


# virtual methods
.method public attachWebView(Landroid/webkit/WebView;Landroid/app/Activity;)V
    .registers 6

    .prologue
    .line 255
    invoke-static {p1}, Lorg/jshybugger/iP;->a(Landroid/webkit/WebView;)Lorg/jshybugger/iP;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Lorg/jshybugger/iP;->f()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 258
    invoke-virtual {v0, p2}, Lorg/jshybugger/iP;->a(Landroid/app/Activity;)V

    .line 259
    new-instance v1, Lorg/jshybugger/iz;

    invoke-direct {v1}, Lorg/jshybugger/iz;-><init>()V

    .line 261
    iget-object v2, p0, Lorg/jshybugger/DebugService;->c:Lorg/jshybugger/iq;

    invoke-virtual {v2, v1}, Lorg/jshybugger/iq;->a(Lorg/jshybugger/iz;)V

    .line 263
    invoke-virtual {v1, v0}, Lorg/jshybugger/iz;->a(Lorg/jshybugger/ii;)V

    .line 267
    :goto_1a
    return-void

    .line 265
    :cond_1b
    invoke-virtual {v0, p2}, Lorg/jshybugger/iP;->a(Landroid/app/Activity;)V

    goto :goto_1a
.end method

.method public getConfig()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lorg/jshybugger/DebugService;->f:Ljava/util/Map;

    return-object v0
.end method

.method public getDebugServer()Lorg/jshybugger/iq;
    .registers 2

    .prologue
    .line 431
    iget-object v0, p0, Lorg/jshybugger/DebugService;->c:Lorg/jshybugger/iq;

    return-object v0
.end method

.method public getInstrumentationProvider()Lorg/jshybugger/hE;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lorg/jshybugger/DebugService;->g:Lorg/jshybugger/hE;

    return-object v0
.end method

.method public hasProxyService()Z
    .registers 2

    .prologue
    .line 427
    iget-object v0, p0, Lorg/jshybugger/DebugService;->d:Lorg/jshybugger/ib;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 309
    iget-boolean v0, p0, Lorg/jshybugger/DebugService;->e:Z

    return v0
.end method

.method public start()V
    .registers 5

    .prologue
    .line 273
    sget-boolean v0, Lorg/jshybugger/DebugService;->b:Z

    if-nez v0, :cond_5

    .line 284
    :goto_4
    return-void

    .line 277
    :cond_5
    iget-object v0, p0, Lorg/jshybugger/DebugService;->c:Lorg/jshybugger/iq;

    if-eqz v0, :cond_34

    .line 278
    iget-object v0, p0, Lorg/jshybugger/DebugService;->c:Lorg/jshybugger/iq;

    invoke-static {}, Lorg/jshybugger/iz;->k()V

    iget-object v1, v0, Lorg/jshybugger/iq;->a:Lorg/jshybugger/jo;

    invoke-virtual {v1}, Lorg/jshybugger/jo;->b()V

    sget-boolean v1, Lorg/jshybugger/jk;->a:Z

    if-eqz v1, :cond_27

    :try_start_17
    new-instance v1, Lorg/jshybugger/iH;

    iget-object v2, v0, Lorg/jshybugger/iq;->f:Ljava/lang/String;

    iget v3, v0, Lorg/jshybugger/iq;->e:I

    invoke-direct {v1, v2, v3}, Lorg/jshybugger/iH;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lorg/jshybugger/iq;->b:Lorg/jshybugger/iH;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_22} :catch_46

    iget-object v1, v0, Lorg/jshybugger/iq;->b:Lorg/jshybugger/iH;

    invoke-virtual {v1}, Lorg/jshybugger/iH;->start()V

    :cond_27
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/jshybugger/ix;

    invoke-direct {v2, v0}, Lorg/jshybugger/ix;-><init>(Lorg/jshybugger/iq;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 280
    :cond_34
    iget-object v0, p0, Lorg/jshybugger/DebugService;->d:Lorg/jshybugger/ib;

    if-eqz v0, :cond_42

    .line 281
    iget-object v0, p0, Lorg/jshybugger/DebugService;->d:Lorg/jshybugger/ib;

    iget-object v1, v0, Lorg/jshybugger/ib;->a:Lorg/jshybugger/jB;

    invoke-virtual {v1}, Lorg/jshybugger/jB;->a()Lorg/jshybugger/jA;

    move-result-object v1

    iput-object v1, v0, Lorg/jshybugger/ib;->b:Lorg/jshybugger/jA;

    .line 283
    :cond_42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jshybugger/DebugService;->e:Z

    goto :goto_4

    .line 278
    :catch_46
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Domain socket server startup failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stop()V
    .registers 4

    .prologue
    .line 290
    sget-boolean v0, Lorg/jshybugger/DebugService;->b:Z

    if-nez v0, :cond_5

    .line 301
    :goto_4
    return-void

    .line 294
    :cond_5
    iget-object v0, p0, Lorg/jshybugger/DebugService;->d:Lorg/jshybugger/ib;

    if-eqz v0, :cond_17

    .line 295
    iget-object v0, p0, Lorg/jshybugger/DebugService;->d:Lorg/jshybugger/ib;

    iget-object v1, v0, Lorg/jshybugger/ib;->b:Lorg/jshybugger/jA;

    if-eqz v1, :cond_17

    iget-object v1, v0, Lorg/jshybugger/ib;->b:Lorg/jshybugger/jA;

    invoke-interface {v1}, Lorg/jshybugger/jA;->a()V

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/jshybugger/ib;->b:Lorg/jshybugger/jA;

    .line 297
    :cond_17
    iget-object v0, p0, Lorg/jshybugger/DebugService;->c:Lorg/jshybugger/iq;

    if-eqz v0, :cond_4e

    .line 298
    iget-object v1, p0, Lorg/jshybugger/DebugService;->c:Lorg/jshybugger/iq;

    iget-object v0, v1, Lorg/jshybugger/iq;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/iz;

    invoke-virtual {v0}, Lorg/jshybugger/iz;->h()V

    goto :goto_27

    :cond_37
    iget-object v0, v1, Lorg/jshybugger/iq;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    iget-object v0, v1, Lorg/jshybugger/iq;->a:Lorg/jshybugger/jo;

    if-eqz v0, :cond_45

    iget-object v0, v1, Lorg/jshybugger/iq;->a:Lorg/jshybugger/jo;

    invoke-virtual {v0}, Lorg/jshybugger/jo;->a()V

    :cond_45
    iget-object v0, v1, Lorg/jshybugger/iq;->b:Lorg/jshybugger/iH;

    if-eqz v0, :cond_4e

    iget-object v0, v1, Lorg/jshybugger/iq;->b:Lorg/jshybugger/iH;

    invoke-virtual {v0}, Lorg/jshybugger/iH;->a()V

    .line 300
    :cond_4e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jshybugger/DebugService;->e:Z

    goto :goto_4
.end method
