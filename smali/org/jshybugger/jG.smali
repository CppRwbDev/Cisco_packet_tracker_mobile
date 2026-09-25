.class public final Lorg/jshybugger/jg;
.super Ljava/lang/Object;
.source "ProtocolLogger.java"


# static fields
.field private static final a:Ljava/text/SimpleDateFormat;

.field private static b:Ljava/io/FileWriter;

.field private static c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jshybugger/jg;->a:Ljava/text/SimpleDateFormat;

    .line 23
    new-instance v0, Lorg/jshybugger/jh;

    invoke-direct {v0}, Lorg/jshybugger/jh;-><init>()V

    sput-object v0, Lorg/jshybugger/jg;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a()V
    .registers 5

    .prologue
    .line 62
    sget-boolean v0, Lorg/jshybugger/jk;->a:Z

    if-eqz v0, :cond_48

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/jshybugger/jk;->e()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_protocol.log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    :goto_28
    :try_start_28
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    sput-object v1, Lorg/jshybugger/jg;->b:Ljava/io/FileWriter;

    .line 65
    const-string v1, "ProtocolLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Protocol messages logged to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/jshybugger/jf;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_47} :catch_5b

    .line 70
    :goto_47
    return-void

    .line 62
    :cond_48
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "java.io.tmpdir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "protocol.log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_28

    .line 66
    :catch_5b
    move-exception v1

    .line 67
    const-string v2, "ProtocolLogger"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error open protocol messages file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lorg/jshybugger/jf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 68
    const/4 v0, 0x0

    sput-object v0, Lorg/jshybugger/jg;->b:Ljava/io/FileWriter;

    goto :goto_47
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 73
    const-string v0, "OUT"

    invoke-static {v0, p0}, Lorg/jshybugger/jg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 31
    sget-object v0, Lorg/jshybugger/jg;->b:Ljava/io/FileWriter;

    if-eqz v0, :cond_48

    sget-object v0, Lorg/jshybugger/jg;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_48

    .line 33
    :try_start_12
    monitor-enter p1
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_12 .. :try_end_13} :catch_4c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_13} :catch_4e

    .line 34
    :try_start_13
    sget-object v0, Lorg/jshybugger/jg;->b:Ljava/io/FileWriter;

    sget-object v1, Lorg/jshybugger/jg;->a:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 35
    sget-object v0, Lorg/jshybugger/jg;->b:Ljava/io/FileWriter;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 36
    sget-object v0, Lorg/jshybugger/jg;->b:Ljava/io/FileWriter;

    invoke-virtual {v0, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 37
    sget-object v0, Lorg/jshybugger/jg;->b:Ljava/io/FileWriter;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 38
    sget-object v0, Lorg/jshybugger/jg;->b:Ljava/io/FileWriter;

    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 39
    sget-object v0, Lorg/jshybugger/jg;->b:Ljava/io/FileWriter;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 40
    sget-object v0, Lorg/jshybugger/jg;->b:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    .line 41
    monitor-exit p1
    :try_end_48
    .catchall {:try_start_13 .. :try_end_48} :catchall_49

    .line 46
    :cond_48
    :goto_48
    return-void

    .line 41
    :catchall_49
    move-exception v0

    :try_start_4a
    monitor-exit p1

    throw v0
    :try_end_4c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4a .. :try_end_4c} :catch_4c
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4c} :catch_4e

    .line 44
    :catch_4c
    move-exception v0

    goto :goto_48

    :catch_4e
    move-exception v0

    goto :goto_48
.end method

.method public static b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 77
    const-string v0, "IN"

    invoke-static {v0, p0}, Lorg/jshybugger/jg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method
