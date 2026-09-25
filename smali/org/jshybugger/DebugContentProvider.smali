.class public Lorg/jshybugger/DebugContentProvider;
.super Landroid/content/ContentProvider;
.source "DebugContentProvider.java"


# static fields
.field private static d:Ljava/lang/String;


# instance fields
.field private a:Lorg/jshybugger/hE;

.field private b:Lorg/jshybugger/ji;

.field private c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-object v0, Lorg/jshybugger/DebugContentProvider;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 60
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/DebugContentProvider;->c:Ljava/util/concurrent/ExecutorService;

    .line 179
    return-void
.end method

.method private a(Ljava/io/InputStream;)Landroid/os/ParcelFileDescriptor;
    .registers 7

    .prologue
    .line 111
    if-nez p1, :cond_a

    .line 112
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "input resource is null"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_a
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lorg/jshybugger/DebugContentProvider;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lorg/jshybugger/hB;

    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-direct {v3, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v2, p1, v3}, Lorg/jshybugger/hB;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 120
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getProviderProtocol()Ljava/lang/String;
    .registers 1

    .prologue
    .line 70
    sget-object v0, Lorg/jshybugger/DebugContentProvider;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lorg/jshybugger/DebugContentProvider;->a:Lorg/jshybugger/hE;

    invoke-virtual {v1, v0}, Lorg/jshybugger/hE;->a(Ljava/net/URI;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 166
    const-string v0, "text/html"

    .line 170
    :goto_12
    return-object v0

    .line 167
    :cond_13
    iget-object v1, p0, Lorg/jshybugger/DebugContentProvider;->a:Lorg/jshybugger/hE;

    invoke-virtual {v1, v0}, Lorg/jshybugger/hE;->b(Ljava/net/URI;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 168
    const-string v0, "text/javascript"

    goto :goto_12

    .line 170
    :cond_1e
    const-string v0, "text/css"

    goto :goto_12
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4

    .prologue
    .line 233
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 5

    .prologue
    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_80

    .line 130
    invoke-virtual {p0}, Lorg/jshybugger/DebugContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 131
    invoke-static {v1}, Lorg/jshybugger/jk;->a(Landroid/content/Context;)V

    .line 134
    :try_start_11
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lorg/jshybugger/DebugContentProvider;

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x88

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_6b

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3b
    sput-object v0, Lorg/jshybugger/DebugContentProvider;->d:Ljava/lang/String;
    :try_end_3d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_3d} :catch_6e

    .line 140
    :goto_3d
    invoke-static {v1}, Lorg/jshybugger/DebugService;->createSingleton(Landroid/content/Context;)Lorg/jshybugger/DebugService;

    move-result-object v0

    .line 141
    new-instance v2, Lorg/jshybugger/ji;

    invoke-direct {v2, v1}, Lorg/jshybugger/ji;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/jshybugger/DebugContentProvider;->b:Lorg/jshybugger/ji;

    .line 142
    invoke-virtual {v0}, Lorg/jshybugger/DebugService;->getInstrumentationProvider()Lorg/jshybugger/hE;

    move-result-object v1

    iput-object v1, p0, Lorg/jshybugger/DebugContentProvider;->a:Lorg/jshybugger/hE;

    .line 145
    :try_start_4e
    const-string v1, "DebugContentProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Starting content provider started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/jshybugger/DebugContentProvider;->getProviderProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/jshybugger/jf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Lorg/jshybugger/DebugService;->start()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_69} :catch_77

    .line 155
    :goto_69
    const/4 v0, 0x1

    return v0

    .line 135
    :cond_6b
    :try_start_6b
    const-string v0, "content://jsHybugger.org/"
    :try_end_6d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6b .. :try_end_6d} :catch_6e

    goto :goto_3b

    .line 137
    :catch_6e
    move-exception v0

    const-string v0, "DebugContentProvider"

    const-string v2, "jsHybugger provider not found"

    invoke-static {v0, v2}, Lorg/jshybugger/jf;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    .line 148
    :catch_77
    move-exception v0

    .line 149
    const-string v1, "DebugContentProvider"

    const-string v2, "Content provider failed to started: "

    invoke-static {v1, v2, v0}, Lorg/jshybugger/jf;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_69

    .line 152
    :cond_80
    const-string v0, "DebugContentProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content provider started, API level:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jshybugger/jf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_69
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 7

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_45

    .line 85
    :try_start_f
    iget-object v0, p0, Lorg/jshybugger/DebugContentProvider;->b:Lorg/jshybugger/ji;

    invoke-virtual {v0, v1}, Lorg/jshybugger/ji;->a(Ljava/lang/String;)Lorg/jshybugger/jd;

    move-result-object v0

    .line 86
    iget-object v0, v0, Lorg/jshybugger/jd;->a:Ljava/io/BufferedInputStream;

    invoke-direct {p0, v0}, Lorg/jshybugger/DebugContentProvider;->a(Ljava/io/InputStream;)Landroid/os/ParcelFileDescriptor;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1a} :catch_1c

    move-result-object v0

    .line 96
    :goto_1b
    return-object v0

    .line 88
    :catch_1c
    move-exception v0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading resource "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v1, "DebugContentProvider"

    invoke-static {v1, v0}, Lorg/jshybugger/jf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_45
    :try_start_45
    iget-object v0, p0, Lorg/jshybugger/DebugContentProvider;->a:Lorg/jshybugger/hE;

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jshybugger/hE;->c(Ljava/net/URI;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jshybugger/DebugContentProvider;->a(Ljava/io/InputStream;)Landroid/os/ParcelFileDescriptor;
    :try_end_52
    .catch Ljava/lang/IllegalArgumentException; {:try_start_45 .. :try_end_52} :catch_54
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_52} :catch_7d

    move-result-object v0

    goto :goto_1b

    .line 97
    :catch_54
    move-exception v0

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Loading resource "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    const-string v1, "DebugContentProvider"

    invoke-static {v1, v0}, Lorg/jshybugger/jf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :catch_7d
    move-exception v0

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Loading resource "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string v1, "DebugContentProvider"

    invoke-static {v1, v0}, Lorg/jshybugger/jf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7

    .prologue
    .line 239
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method
