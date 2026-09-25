.class public final Lorg/jshybugger/oa;
.super Lorg/jshybugger/nV;
.source "SimpleLogger.java"


# static fields
.field private static a:J

.field private static final c:Ljava/util/Properties;

.field private static d:Z

.field private static e:I

.field private static f:Z

.field private static g:Ljava/lang/String;

.field private static h:Ljava/text/DateFormat;

.field private static i:Z

.field private static j:Z

.field private static k:Z

.field private static l:Ljava/lang/String;

.field private static m:Ljava/io/PrintStream;

.field private static n:Z

.field private static o:Ljava/lang/String;


# instance fields
.field private p:I

.field private transient q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/jshybugger/oa;->a:J

    .line 124
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lorg/jshybugger/oa;->c:Ljava/util/Properties;

    .line 132
    sput-boolean v2, Lorg/jshybugger/oa;->d:Z

    .line 134
    const/16 v0, 0x14

    sput v0, Lorg/jshybugger/oa;->e:I

    .line 135
    sput-boolean v2, Lorg/jshybugger/oa;->f:Z

    .line 136
    sput-object v3, Lorg/jshybugger/oa;->g:Ljava/lang/String;

    .line 137
    sput-object v3, Lorg/jshybugger/oa;->h:Ljava/text/DateFormat;

    .line 138
    sput-boolean v4, Lorg/jshybugger/oa;->i:Z

    .line 139
    sput-boolean v4, Lorg/jshybugger/oa;->j:Z

    .line 140
    sput-boolean v2, Lorg/jshybugger/oa;->k:Z

    .line 141
    const-string v0, "System.err"

    sput-object v0, Lorg/jshybugger/oa;->l:Ljava/lang/String;

    .line 142
    sput-object v3, Lorg/jshybugger/oa;->m:Ljava/io/PrintStream;

    .line 143
    sput-boolean v2, Lorg/jshybugger/oa;->n:Z

    .line 144
    const-string v0, "WARN"

    sput-object v0, Lorg/jshybugger/oa;->o:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 266
    invoke-direct {p0}, Lorg/jshybugger/nV;-><init>()V

    .line 258
    const/16 v0, 0x14

    iput v0, p0, Lorg/jshybugger/oa;->p:I

    .line 260
    iput-object v2, p0, Lorg/jshybugger/oa;->q:Ljava/lang/String;

    .line 267
    sget-boolean v0, Lorg/jshybugger/oa;->d:Z

    if-nez v0, :cond_97

    .line 268
    const/4 v0, 0x1

    sput-boolean v0, Lorg/jshybugger/oa;->d:Z

    new-instance v0, Lorg/jshybugger/ob;

    invoke-direct {v0}, Lorg/jshybugger/ob;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    if-eqz v0, :cond_26

    :try_start_1e
    sget-object v1, Lorg/jshybugger/oa;->c:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_26} :catch_b2

    :cond_26
    :goto_26
    const-string v0, "org.slf4j.simpleLogger.defaultLogLevel"

    invoke-static {v0, v2}, Lorg/jshybugger/oa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-static {v0}, Lorg/jshybugger/oa;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/jshybugger/oa;->e:I

    :cond_34
    const-string v0, "org.slf4j.simpleLogger.showLogName"

    sget-boolean v1, Lorg/jshybugger/oa;->j:Z

    invoke-static {v0, v1}, Lorg/jshybugger/oa;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/jshybugger/oa;->j:Z

    const-string v0, "org.slf4j.simpleLogger.showShortLogName"

    sget-boolean v1, Lorg/jshybugger/oa;->k:Z

    invoke-static {v0, v1}, Lorg/jshybugger/oa;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/jshybugger/oa;->k:Z

    const-string v0, "org.slf4j.simpleLogger.showDateTime"

    sget-boolean v1, Lorg/jshybugger/oa;->f:Z

    invoke-static {v0, v1}, Lorg/jshybugger/oa;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/jshybugger/oa;->f:Z

    const-string v0, "org.slf4j.simpleLogger.showThreadName"

    sget-boolean v1, Lorg/jshybugger/oa;->i:Z

    invoke-static {v0, v1}, Lorg/jshybugger/oa;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/jshybugger/oa;->i:Z

    const-string v0, "org.slf4j.simpleLogger.dateTimeFormat"

    sget-object v1, Lorg/jshybugger/oa;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jshybugger/oa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/oa;->g:Ljava/lang/String;

    const-string v0, "org.slf4j.simpleLogger.levelInBrackets"

    sget-boolean v1, Lorg/jshybugger/oa;->n:Z

    invoke-static {v0, v1}, Lorg/jshybugger/oa;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/jshybugger/oa;->n:Z

    const-string v0, "org.slf4j.simpleLogger.warnLevelString"

    sget-object v1, Lorg/jshybugger/oa;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jshybugger/oa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/oa;->o:Ljava/lang/String;

    const-string v0, "org.slf4j.simpleLogger.logFile"

    sget-object v1, Lorg/jshybugger/oa;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jshybugger/oa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/oa;->l:Ljava/lang/String;

    invoke-static {v0}, Lorg/jshybugger/oa;->f(Ljava/lang/String;)Ljava/io/PrintStream;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/oa;->m:Ljava/io/PrintStream;

    sget-object v0, Lorg/jshybugger/oa;->g:Ljava/lang/String;

    if-eqz v0, :cond_97

    :try_start_8e
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Lorg/jshybugger/oa;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jshybugger/oa;->h:Ljava/text/DateFormat;
    :try_end_97
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8e .. :try_end_97} :catch_a6

    .line 270
    :cond_97
    :goto_97
    iput-object p1, p0, Lorg/jshybugger/oa;->b:Ljava/lang/String;

    .line 272
    invoke-direct {p0}, Lorg/jshybugger/oa;->g()Ljava/lang/String;

    move-result-object v0

    .line 273
    if-eqz v0, :cond_ad

    .line 274
    invoke-static {v0}, Lorg/jshybugger/oa;->g(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/jshybugger/oa;->p:I

    .line 278
    :goto_a5
    return-void

    .line 268
    :catch_a6
    move-exception v0

    const-string v1, "Bad date format in simplelogger.properties; will output relative time"

    invoke-static {v1, v0}, Lorg/jshybugger/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_97

    .line 276
    :cond_ad
    sget v0, Lorg/jshybugger/oa;->e:I

    iput v0, p0, Lorg/jshybugger/oa;->p:I

    goto :goto_a5

    :catch_b2
    move-exception v0

    goto/16 :goto_26
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 175
    invoke-static {p0}, Lorg/jshybugger/oa;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    if-nez v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    move-object p1, v0

    goto :goto_6
.end method

.method private a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lorg/jshybugger/oa;->a(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 416
    :goto_6
    return-void

    .line 414
    :cond_7
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Lorg/jshybugger/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Lorg/jshybugger/nU;

    move-result-object v0

    .line 415
    invoke-virtual {v0}, Lorg/jshybugger/nU;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jshybugger/nU;->b()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lorg/jshybugger/oa;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method private a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 12

    .prologue
    const/16 v7, 0x5b

    const/16 v6, 0x20

    .line 318
    invoke-direct {p0, p1}, Lorg/jshybugger/oa;->a(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 378
    :goto_a
    return-void

    .line 322
    :cond_b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 325
    sget-boolean v1, Lorg/jshybugger/oa;->f:Z

    if-eqz v1, :cond_22

    .line 326
    sget-object v1, Lorg/jshybugger/oa;->h:Ljava/text/DateFormat;

    if-eqz v1, :cond_92

    .line 327
    invoke-static {}, Lorg/jshybugger/oa;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 336
    :cond_22
    :goto_22
    sget-boolean v1, Lorg/jshybugger/oa;->i:Z

    if-eqz v1, :cond_39

    .line 337
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 338
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    :cond_39
    sget-boolean v1, Lorg/jshybugger/oa;->n:Z

    if-eqz v1, :cond_40

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 345
    :cond_40
    sparse-switch p1, :sswitch_data_d2

    .line 362
    :goto_43
    sget-boolean v1, Lorg/jshybugger/oa;->n:Z

    if-eqz v1, :cond_4c

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 363
    :cond_4c
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 366
    sget-boolean v1, Lorg/jshybugger/oa;->k:Z

    if-eqz v1, :cond_be

    .line 367
    iget-object v1, p0, Lorg/jshybugger/oa;->q:Ljava/lang/String;

    if-nez v1, :cond_69

    iget-object v1, p0, Lorg/jshybugger/oa;->b:Ljava/lang/String;

    iget-object v2, p0, Lorg/jshybugger/oa;->b:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jshybugger/oa;->q:Ljava/lang/String;

    .line 368
    :cond_69
    iget-object v1, p0, Lorg/jshybugger/oa;->q:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    :cond_78
    :goto_78
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    sget-object v1, Lorg/jshybugger/oa;->m:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz p3, :cond_8b

    sget-object v0, Lorg/jshybugger/oa;->m:Ljava/io/PrintStream;

    invoke-virtual {p3, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_8b
    sget-object v0, Lorg/jshybugger/oa;->m:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    goto/16 :goto_a

    .line 330
    :cond_92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lorg/jshybugger/oa;->a:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 331
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_22

    .line 347
    :sswitch_a0
    const-string v1, "TRACE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_43

    .line 350
    :sswitch_a6
    const-string v1, "DEBUG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_43

    .line 353
    :sswitch_ac
    const-string v1, "INFO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_43

    .line 356
    :sswitch_b2
    sget-object v1, Lorg/jshybugger/oa;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_43

    .line 359
    :sswitch_b8
    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_43

    .line 369
    :cond_be
    sget-boolean v1, Lorg/jshybugger/oa;->j:Z

    if-eqz v1, :cond_78

    .line 370
    iget-object v1, p0, Lorg/jshybugger/oa;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_78

    .line 345
    :sswitch_data_d2
    .sparse-switch
        0x0 -> :sswitch_a0
        0xa -> :sswitch_a6
        0x14 -> :sswitch_ac
        0x1e -> :sswitch_b2
        0x28 -> :sswitch_b8
    .end sparse-switch
.end method

.method private varargs a(ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .prologue
    .line 426
    invoke-direct {p0, p1}, Lorg/jshybugger/oa;->a(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 431
    :goto_6
    return-void

    .line 429
    :cond_7
    invoke-static {p2, p3}, Lorg/jshybugger/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Lorg/jshybugger/nU;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Lorg/jshybugger/nU;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jshybugger/nU;->b()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lorg/jshybugger/oa;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method private a(I)Z
    .registers 3

    .prologue
    .line 441
    iget v0, p0, Lorg/jshybugger/oa;->p:I

    if-lt p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static a(Ljava/lang/String;Z)Z
    .registers 4

    .prologue
    .line 180
    invoke-static {p0}, Lorg/jshybugger/oa;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    if-nez v0, :cond_7

    :goto_6
    return p1

    :cond_7
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    goto :goto_6
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 167
    :try_start_1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_e

    move-result-object v0

    .line 171
    :goto_5
    if-nez v0, :cond_d

    sget-object v0, Lorg/jshybugger/oa;->c:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_d
    return-object v0

    :catch_e
    move-exception v1

    goto :goto_5
.end method

.method private static f(Ljava/lang/String;)Ljava/io/PrintStream;
    .registers 4

    .prologue
    .line 218
    const-string v0, "System.err"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 219
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 229
    :goto_a
    return-object v0

    .line 220
    :cond_b
    const-string v0, "System.out"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 221
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    goto :goto_a

    .line 224
    :cond_16
    :try_start_16
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 225
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_20} :catch_21

    goto :goto_a

    .line 227
    :catch_21
    move-exception v0

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not open ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]. Defaulting to System.err"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/jshybugger/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    goto :goto_a
.end method

.method private static g(Ljava/lang/String;)I
    .registers 3

    .prologue
    const/16 v0, 0x14

    .line 293
    const-string v1, "trace"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 294
    const/4 v0, 0x0

    .line 305
    :cond_b
    :goto_b
    return v0

    .line 295
    :cond_c
    const-string v1, "debug"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 296
    const/16 v0, 0xa

    goto :goto_b

    .line 297
    :cond_17
    const-string v1, "info"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 299
    const-string v1, "warn"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 300
    const/16 v0, 0x1e

    goto :goto_b

    .line 301
    :cond_2a
    const-string v1, "error"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 302
    const/16 v0, 0x28

    goto :goto_b
.end method

.method private g()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 281
    iget-object v1, p0, Lorg/jshybugger/oa;->b:Ljava/lang/String;

    .line 283
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    move-object v3, v1

    move-object v1, v2

    .line 284
    :goto_9
    if-nez v1, :cond_30

    if-ltz v0, :cond_30

    .line 285
    const/4 v1, 0x0

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "org.slf4j.simpleLogger.log."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/jshybugger/oa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_9

    .line 289
    :cond_30
    return-object v1
.end method

.method private static h()Ljava/lang/String;
    .registers 3

    .prologue
    .line 389
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 391
    sget-object v1, Lorg/jshybugger/oa;->h:Ljava/text/DateFormat;

    monitor-enter v1

    .line 392
    :try_start_8
    sget-object v2, Lorg/jshybugger/oa;->h:Ljava/text/DateFormat;

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 393
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_10

    .line 394
    return-object v0

    .line 393
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 496
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/jshybugger/oa;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 497
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 462
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/jshybugger/oa;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 463
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 470
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/jshybugger/oa;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 471
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 483
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/jshybugger/oa;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 484
    return-void
.end method

.method public final varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 478
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/jshybugger/oa;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 479
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 538
    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/jshybugger/oa;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 539
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 504
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/jshybugger/oa;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 505
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 512
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/jshybugger/oa;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 513
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 525
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1, p2}, Lorg/jshybugger/oa;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 526
    return-void
.end method

.method public final varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 520
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1, p2}, Lorg/jshybugger/oa;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 521
    return-void
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 446
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jshybugger/oa;->a(I)Z

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 580
    const/16 v0, 0x1e

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/jshybugger/oa;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 581
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 546
    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/jshybugger/oa;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 547
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 554
    const/16 v0, 0x14

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/jshybugger/oa;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 555
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 567
    const/16 v0, 0x14

    invoke-direct {p0, v0, p1, p2}, Lorg/jshybugger/oa;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 568
    return-void
.end method

.method public final varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 562
    const/16 v0, 0x14

    invoke-direct {p0, v0, p1, p2}, Lorg/jshybugger/oa;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 563
    return-void
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 488
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/jshybugger/oa;->a(I)Z

    move-result v0

    return v0
.end method

.method public final d(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 622
    const/16 v0, 0x28

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/jshybugger/oa;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 623
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 588
    const/16 v0, 0x1e

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/jshybugger/oa;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 589
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 596
    const/16 v0, 0x1e

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/jshybugger/oa;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 597
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 609
    const/16 v0, 0x1e

    invoke-direct {p0, v0, p1, p2}, Lorg/jshybugger/oa;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 610
    return-void
.end method

.method public final varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 604
    const/16 v0, 0x1e

    invoke-direct {p0, v0, p1, p2}, Lorg/jshybugger/oa;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 605
    return-void
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 530
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lorg/jshybugger/oa;->a(I)Z

    move-result v0

    return v0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 651
    const/16 v0, 0x28

    invoke-direct {p0, v0, p1, p2}, Lorg/jshybugger/oa;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 652
    return-void
.end method

.method public final e()Z
    .registers 2

    .prologue
    .line 572
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lorg/jshybugger/oa;->a(I)Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .registers 2

    .prologue
    .line 614
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lorg/jshybugger/oa;->a(I)Z

    move-result v0

    return v0
.end method
