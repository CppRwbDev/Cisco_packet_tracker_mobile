.class public Lorg/jshybugger/he;
.super Lorg/jshybugger/gY;
.source "Slf4JLoggerFactory.java"


# static fields
.field private static synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lorg/jshybugger/he;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jshybugger/he;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/jshybugger/gY;-><init>()V

    .line 33
    return-void
.end method

.method constructor <init>(Z)V
    .registers 8

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/jshybugger/gY;-><init>()V

    .line 36
    sget-boolean v0, Lorg/jshybugger/he;->a:Z

    .line 40
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 41
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 43
    :try_start_c
    new-instance v2, Ljava/io/PrintStream;

    new-instance v3, Lorg/jshybugger/hf;

    invoke-direct {v3, p0, v0}, Lorg/jshybugger/hf;-><init>(Lorg/jshybugger/he;Ljava/lang/StringBuffer;)V

    const/4 v4, 0x1

    const-string v5, "US-ASCII"

    invoke-direct {v2, v3, v4, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    invoke-static {v2}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V
    :try_end_1c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_1c} :catch_33

    .line 54
    :try_start_1c
    invoke-static {}, Lorg/jshybugger/nT;->a()Lorg/jshybugger/nR;

    move-result-object v2

    instance-of v2, v2, Lorg/jshybugger/nX;

    if-eqz v2, :cond_3a

    .line 55
    new-instance v2, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2e
    .catchall {:try_start_1c .. :try_end_2e} :catchall_2e

    .line 61
    :catchall_2e
    move-exception v0

    invoke-static {v1}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    throw v0

    .line 49
    :catch_33
    move-exception v0

    .line 50
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 57
    :cond_3a
    :try_start_3a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_2e

    .line 61
    invoke-static {v1}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 62
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lorg/jshybugger/gX;
    .registers 4

    .prologue
    .line 67
    new-instance v0, Lorg/jshybugger/hd;

    invoke-static {p1}, Lorg/jshybugger/nT;->a(Ljava/lang/String;)Lorg/jshybugger/nS;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jshybugger/hd;-><init>(Lorg/jshybugger/nS;)V

    return-object v0
.end method
