.class public final Lorg/jshybugger/lh;
.super Ljava/lang/Object;
.source "Kit.java"


# static fields
.field private static a:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lorg/jshybugger/lh;->a:Ljava/lang/reflect/Method;

    .line 30
    :try_start_3
    const-string v0, "java.lang.Throwable"

    invoke-static {v0}, Lorg/jshybugger/lh;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 31
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 32
    const-string v2, "initCause"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/lh;->a:Ljava/lang/reflect/Method;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_17} :catch_18

    .line 37
    :goto_17
    return-void

    :catch_18
    move-exception v0

    goto :goto_17
.end method

.method public static a(II)I
    .registers 4

    .prologue
    .line 128
    const/16 v0, 0x39

    if-gt p0, v0, :cond_c

    .line 129
    add-int/lit8 v0, p0, -0x30

    .line 130
    if-ltz v0, :cond_22

    .line 144
    :goto_8
    shl-int/lit8 v1, p1, 0x4

    or-int/2addr v0, v1

    :goto_b
    return v0

    .line 131
    :cond_c
    const/16 v0, 0x46

    if-gt p0, v0, :cond_17

    .line 132
    const/16 v0, 0x41

    if-gt v0, p0, :cond_22

    .line 133
    add-int/lit8 v0, p0, -0x37

    .line 134
    goto :goto_8

    .line 136
    :cond_17
    const/16 v0, 0x66

    if-gt p0, v0, :cond_22

    .line 137
    const/16 v0, 0x61

    if-gt v0, p0, :cond_22

    .line 138
    add-int/lit8 v0, p0, -0x57

    .line 139
    goto :goto_8

    .line 142
    :cond_22
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public static a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 60
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_8
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_3} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_c

    move-result-object v0

    .line 68
    :goto_4
    return-object v0

    .line 67
    :catch_5
    move-exception v0

    .line 68
    :goto_6
    const/4 v0, 0x0

    goto :goto_4

    .line 67
    :catch_8
    move-exception v0

    goto :goto_6

    :catch_a
    move-exception v0

    goto :goto_6

    :catch_c
    move-exception v0

    goto :goto_6
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 42
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_8
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_3} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_c

    move-result-object v0

    .line 50
    :goto_4
    return-object v0

    .line 49
    :catch_5
    move-exception v0

    .line 50
    :goto_6
    const/4 v0, 0x0

    goto :goto_4

    .line 49
    :catch_8
    move-exception v0

    goto :goto_6

    :catch_a
    move-exception v0

    goto :goto_6

    :catch_c
    move-exception v0

    goto :goto_6
.end method

.method static a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 74
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_3} :catch_8
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_3} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_3} :catch_c

    move-result-object v0

    .line 80
    :goto_4
    return-object v0

    .line 79
    :catch_5
    move-exception v0

    .line 80
    :goto_6
    const/4 v0, 0x0

    goto :goto_4

    .line 79
    :catch_8
    move-exception v0

    goto :goto_6

    :catch_a
    move-exception v0

    goto :goto_6

    :catch_c
    move-exception v0

    goto :goto_6
.end method

.method public static a(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 6

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 284
    if-nez p1, :cond_1c

    .line 285
    if-nez p0, :cond_9

    move-object p0, v0

    .line 308
    :cond_8
    :goto_8
    return-object p0

    .line 287
    :cond_9
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_8

    .line 289
    check-cast p0, [Ljava/lang/Object;

    .line 291
    array-length v0, p0

    if-ge v0, v3, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 292
    :cond_18
    const/4 v0, 0x0

    aget-object p0, p0, v0

    goto :goto_8

    .line 293
    :cond_1c
    if-ne p1, v2, :cond_31

    .line 294
    instance-of v1, p0, [Ljava/lang/Object;

    if-nez v1, :cond_2c

    .line 295
    if-nez p0, :cond_2a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2a
    move-object p0, v0

    .line 296
    goto :goto_8

    .line 298
    :cond_2c
    check-cast p0, [Ljava/lang/Object;

    .line 300
    aget-object p0, p0, v2

    goto :goto_8

    .line 303
    :cond_31
    check-cast p0, [Ljava/lang/Object;

    .line 304
    array-length v1, p0

    .line 305
    if-ge v1, v3, :cond_3c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 306
    :cond_3c
    if-ne p1, v1, :cond_40

    move-object p0, v0

    .line 307
    goto :goto_8

    .line 308
    :cond_40
    aget-object p0, p0, p1

    goto :goto_8
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 358
    if-nez p0, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 359
    :cond_8
    if-nez p1, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 360
    :cond_10
    new-instance v0, Lorg/jshybugger/li;

    invoke-direct {v0, p0, p1}, Lorg/jshybugger/li;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 314
    monitor-enter p0

    .line 315
    :try_start_1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 316
    if-nez v0, :cond_c

    .line 317
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :goto_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    .line 322
    return-object p2

    :cond_c
    move-object p2, v0

    .line 319
    goto :goto_a

    .line 321
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static a()Ljava/lang/RuntimeException;
    .registers 2

    .prologue
    .line 417
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FAILED ASSERTION"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 419
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 420
    throw v0
.end method

.method public static a(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 4

    .prologue
    .line 108
    sget-object v0, Lorg/jshybugger/lh;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_f

    .line 109
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 111
    :try_start_a
    sget-object v1, Lorg/jshybugger/lh;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_10

    .line 116
    :cond_f
    :goto_f
    return-object p0

    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .registers 3

    .prologue
    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FAILED ASSERTION: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 435
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 436
    throw v1
.end method
