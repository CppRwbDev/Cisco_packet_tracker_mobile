.class public Lorg/apache/commons/lang/exception/ExceptionUtils;
.super Ljava/lang/Object;
.source "ExceptionUtils.java"


# static fields
.field private static CAUSE_METHOD_NAMES:[Ljava/lang/String; = null

.field private static final CAUSE_METHOD_NAMES_LOCK:Ljava/lang/Object;

.field private static final THROWABLE_CAUSE_METHOD:Ljava/lang/reflect/Method;

.field private static final THROWABLE_INITCAUSE_METHOD:Ljava/lang/reflect/Method;

.field static final WRAPPED_MARKER:Ljava/lang/String; = " [wrapped] "

.field static class$java$lang$Throwable:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 60
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES_LOCK:Ljava/lang/Object;

    .line 65
    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "getCause"

    aput-object v3, v2, v4

    const-string v3, "getNextException"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "getTargetException"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "getException"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "getSourceException"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "getRootCause"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "getCausedByException"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "getNested"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "getLinkedException"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "getNestedException"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "getLinkedCause"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "getThrowable"

    aput-object v4, v2, v3

    sput-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    .line 93
    :try_start_4d
    sget-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v2, :cond_8a

    const-string v2, "java.lang.Throwable"

    invoke-static {v2}, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_59
    const-string v3, "getCause"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_5f} :catch_8d

    move-result-object v0

    .line 97
    .local v0, "causeMethod":Ljava/lang/reflect/Method;
    :goto_60
    sput-object v0, Lorg/apache/commons/lang/exception/ExceptionUtils;->THROWABLE_CAUSE_METHOD:Ljava/lang/reflect/Method;

    .line 99
    :try_start_62
    sget-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v2, :cond_90

    const-string v2, "java.lang.Throwable"

    invoke-static {v2}, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    move-object v3, v2

    :goto_6f
    const-string v4, "initCause"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v2, :cond_94

    const-string v2, "java.lang.Throwable"

    invoke-static {v2}, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_81
    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_86} :catch_97

    move-result-object v0

    .line 103
    :goto_87
    sput-object v0, Lorg/apache/commons/lang/exception/ExceptionUtils;->THROWABLE_INITCAUSE_METHOD:Ljava/lang/reflect/Method;

    .line 104
    return-void

    .line 93
    .end local v0    # "causeMethod":Ljava/lang/reflect/Method;
    :cond_8a
    :try_start_8a
    sget-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8c} :catch_8d

    goto :goto_59

    .line 94
    :catch_8d
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .restart local v0    # "causeMethod":Ljava/lang/reflect/Method;
    goto :goto_60

    .line 99
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_90
    :try_start_90
    sget-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    move-object v3, v2

    goto :goto_6f

    :cond_94
    sget-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_96} :catch_97

    goto :goto_81

    .line 100
    :catch_97
    move-exception v1

    .line 101
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_87
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    return-void
.end method

.method public static addCauseMethodName(Ljava/lang/String;)V
    .registers 4
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->isCauseMethodName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 127
    invoke-static {}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getCauseMethodNameList()Ljava/util/ArrayList;

    move-result-object v0

    .line 128
    .local v0, "list":Ljava/util/List;
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 129
    sget-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 130
    :try_start_19
    invoke-static {v0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->toArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    .line 131
    monitor-exit v2

    .line 134
    .end local v0    # "list":Ljava/util/List;
    :cond_20
    return-void

    .line 131
    .restart local v0    # "list":Ljava/util/List;
    :catchall_21
    move-exception v1

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_21

    throw v1
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 93
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 3
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 281
    sget-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 282
    :try_start_3
    sget-object v0, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getCause(Ljava/lang/Throwable;[Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 283
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public static getCause(Ljava/lang/Throwable;[Ljava/lang/String;)Ljava/lang/Throwable;
    .registers 7
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "methodNames"    # [Ljava/lang/String;

    .prologue
    .line 305
    if-nez p0, :cond_4

    .line 306
    const/4 v0, 0x0

    .line 329
    :cond_3
    :goto_3
    return-object v0

    .line 308
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getCauseUsingWellKnownTypes(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 309
    .local v0, "cause":Ljava/lang/Throwable;
    if-nez v0, :cond_3

    .line 310
    if-nez p1, :cond_12

    .line 311
    sget-object v4, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES_LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 312
    :try_start_f
    sget-object p1, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    .line 313
    monitor-exit v4
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_29

    .line 315
    :cond_12
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    array-length v3, p1

    if-ge v1, v3, :cond_20

    .line 316
    aget-object v2, p1, v1

    .line 317
    .local v2, "methodName":Ljava/lang/String;
    if-eqz v2, :cond_2c

    .line 318
    invoke-static {p0, v2}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getCauseUsingMethodName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_2c

    .line 325
    .end local v2    # "methodName":Ljava/lang/String;
    :cond_20
    if-nez v0, :cond_3

    .line 326
    const-string v3, "detail"

    invoke-static {p0, v3}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getCauseUsingFieldName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_3

    .line 313
    .end local v1    # "i":I
    :catchall_29
    move-exception v3

    :try_start_2a
    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v3

    .line 315
    .restart local v1    # "i":I
    .restart local v2    # "methodName":Ljava/lang/String;
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method

.method private static getCauseMethodNameList()Ljava/util/ArrayList;
    .registers 3

    .prologue
    .line 228
    sget-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 229
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 230
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private static getCauseUsingFieldName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
    .registers 5
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 415
    const/4 v0, 0x0

    .line 417
    .local v0, "field":Ljava/lang/reflect/Field;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_8
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_8} :catch_32
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_8} :catch_30

    move-result-object v0

    .line 424
    :goto_9
    if-eqz v0, :cond_2c

    sget-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v1, :cond_28

    const-string v1, "java.lang.Throwable"

    invoke-static {v1}, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_17
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 426
    :try_start_21
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;
    :try_end_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_21 .. :try_end_27} :catch_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_27} :catch_2b

    .line 433
    :goto_27
    return-object v1

    .line 424
    :cond_28
    sget-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    goto :goto_17

    .line 429
    :catch_2b
    move-exception v1

    .line 433
    :cond_2c
    :goto_2c
    const/4 v1, 0x0

    goto :goto_27

    .line 427
    :catch_2e
    move-exception v1

    goto :goto_2c

    .line 420
    :catch_30
    move-exception v1

    goto :goto_9

    .line 418
    :catch_32
    move-exception v1

    goto :goto_9
.end method

.method private static getCauseUsingMethodName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
    .registers 6
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 384
    const/4 v0, 0x0

    .line 386
    .local v0, "method":Ljava/lang/reflect/Method;
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_a} :catch_38
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_a} :catch_36

    move-result-object v0

    .line 393
    :goto_b
    if-eqz v0, :cond_30

    sget-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v1, :cond_2c

    const-string v1, "java.lang.Throwable"

    invoke-static {v1}, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_19
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 395
    :try_start_23
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;
    :try_end_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_2b} :catch_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_2b} :catch_32
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_23 .. :try_end_2b} :catch_2f

    .line 404
    :goto_2b
    return-object v1

    .line 393
    :cond_2c
    sget-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    goto :goto_19

    .line 400
    :catch_2f
    move-exception v1

    :cond_30
    :goto_30
    move-object v1, v2

    .line 404
    goto :goto_2b

    .line 398
    :catch_32
    move-exception v1

    goto :goto_30

    .line 396
    :catch_34
    move-exception v1

    goto :goto_30

    .line 389
    :catch_36
    move-exception v1

    goto :goto_b

    .line 387
    :catch_38
    move-exception v1

    goto :goto_b
.end method

.method private static getCauseUsingWellKnownTypes(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 365
    instance-of v0, p0, Lorg/apache/commons/lang/exception/Nestable;

    if-eqz v0, :cond_b

    .line 366
    check-cast p0, Lorg/apache/commons/lang/exception/Nestable;

    .end local p0    # "throwable":Ljava/lang/Throwable;
    invoke-interface {p0}, Lorg/apache/commons/lang/exception/Nestable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 372
    :goto_a
    return-object v0

    .line 367
    .restart local p0    # "throwable":Ljava/lang/Throwable;
    :cond_b
    instance-of v0, p0, Ljava/sql/SQLException;

    if-eqz v0, :cond_16

    .line 368
    check-cast p0, Ljava/sql/SQLException;

    .end local p0    # "throwable":Ljava/lang/Throwable;
    invoke-virtual {p0}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object v0

    goto :goto_a

    .line 369
    .restart local p0    # "throwable":Ljava/lang/Throwable;
    :cond_16
    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_21

    .line 370
    check-cast p0, Ljava/lang/reflect/InvocationTargetException;

    .end local p0    # "throwable":Ljava/lang/Throwable;
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_a

    .line 372
    .restart local p0    # "throwable":Ljava/lang/Throwable;
    :cond_21
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 6
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 868
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 869
    .local v2, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 870
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;

    move-result-object v3

    .line 871
    .local v3, "ts":[Ljava/lang/Throwable;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v4, v3

    if-ge v0, v4, :cond_20

    .line 872
    aget-object v4, v3, v0

    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 873
    aget-object v4, v3, v0

    invoke-static {v4}, Lorg/apache/commons/lang/exception/ExceptionUtils;->isNestedThrowable(Ljava/lang/Throwable;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 877
    :cond_20
    invoke-virtual {v2}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 871
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method public static getMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 5
    .param p0, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 987
    if-nez p0, :cond_5

    .line 988
    const-string v2, ""

    .line 992
    :goto_4
    return-object v2

    .line 990
    :cond_5
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lorg/apache/commons/lang/ClassUtils;->getShortClassName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 991
    .local v0, "clsName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 992
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v1}, Lorg/apache/commons/lang/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 4
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 350
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    .line 351
    .local v0, "list":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_d

    const/4 v1, 0x0

    :goto_c
    return-object v1

    :cond_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    goto :goto_c
.end method

.method public static getRootCauseMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3
    .param p0, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 1007
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 1008
    .local v0, "root":Ljava/lang/Throwable;
    if-nez v0, :cond_7

    move-object v0, p0

    .line 1009
    :cond_7
    invoke-static {v0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getRootCauseStackTrace(Ljava/lang/Throwable;)[Ljava/lang/String;
    .registers 10
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 804
    if-nez p0, :cond_5

    .line 805
    sget-object v7, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 826
    :goto_4
    return-object v7

    .line 807
    :cond_5
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;

    move-result-object v5

    .line 808
    .local v5, "throwables":[Ljava/lang/Throwable;
    array-length v0, v5

    .line 809
    .local v0, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 810
    .local v1, "frames":Ljava/util/ArrayList;
    add-int/lit8 v7, v0, -0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getStackFrameList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v4

    .line 811
    .local v4, "nextTrace":Ljava/util/List;
    move v2, v0

    .local v2, "i":I
    :cond_18
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_65

    .line 812
    move-object v6, v4

    .line 813
    .local v6, "trace":Ljava/util/List;
    if-eqz v2, :cond_2a

    .line 814
    add-int/lit8 v7, v2, -0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getStackFrameList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v4

    .line 815
    invoke-static {v6, v4}, Lorg/apache/commons/lang/exception/ExceptionUtils;->removeCommonFrames(Ljava/util/List;Ljava/util/List;)V

    .line 817
    :cond_2a
    add-int/lit8 v7, v0, -0x1

    if-ne v2, v7, :cond_48

    .line 818
    aget-object v7, v5, v2

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    :goto_37
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_38
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_18

    .line 823
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 820
    .end local v3    # "j":I
    :cond_48
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, " [wrapped] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    aget-object v8, v5, v2

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 826
    .end local v6    # "trace":Ljava/util/List;
    :cond_65
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    check-cast v7, [Ljava/lang/String;

    goto :goto_4
.end method

.method static getStackFrameList(Ljava/lang/Throwable;)Ljava/util/List;
    .registers 9
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 956
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    .line 957
    .local v4, "stackTrace":Ljava/lang/String;
    sget-object v2, Lorg/apache/commons/lang/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 958
    .local v2, "linebreak":Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, v4, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    .local v1, "frames":Ljava/util/StringTokenizer;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 960
    .local v3, "list":Ljava/util/List;
    const/4 v6, 0x0

    .line 961
    .local v6, "traceStarted":Z
    :cond_11
    :goto_11
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 962
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 964
    .local v5, "token":Ljava/lang/String;
    const-string v7, "at"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 965
    .local v0, "at":I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_38

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_38

    .line 966
    const/4 v6, 0x1

    .line 967
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 968
    :cond_38
    if-eqz v6, :cond_11

    .line 972
    .end local v0    # "at":I
    .end local v5    # "token":Ljava/lang/String;
    :cond_3a
    return-object v3
.end method

.method static getStackFrames(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p0, "stackTrace"    # Ljava/lang/String;

    .prologue
    .line 934
    sget-object v1, Lorg/apache/commons/lang/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 935
    .local v1, "linebreak":Ljava/lang/String;
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    .local v0, "frames":Ljava/util/StringTokenizer;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 937
    .local v2, "list":Ljava/util/List;
    :goto_c
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 938
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 940
    :cond_1a
    invoke-static {v2}, Lorg/apache/commons/lang/exception/ExceptionUtils;->toArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getStackFrames(Ljava/lang/Throwable;)[Ljava/lang/String;
    .registers 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 914
    if-nez p0, :cond_5

    .line 915
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 917
    :goto_4
    return-object v0

    :cond_5
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getStackFrames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 894
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 895
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 896
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 897
    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getThrowableCount(Ljava/lang/Throwable;)I
    .registers 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 521
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;
    .registers 3
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 569
    .local v0, "list":Ljava/util/List;
    :goto_5
    if-eqz p0, :cond_15

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 570
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_5

    .line 573
    :cond_15
    return-object v0
.end method

.method public static getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;
    .registers 3
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 544
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    .line 545
    .local v0, "list":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Throwable;

    check-cast v1, [Ljava/lang/Throwable;

    return-object v1
.end method

.method private static indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I
    .registers 8
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "fromIndex"    # I
    .param p3, "subclass"    # Z

    .prologue
    const/4 v2, -0x1

    .line 674
    if-eqz p0, :cond_5

    if-nez p1, :cond_7

    :cond_5
    move v0, v2

    .line 697
    :cond_6
    :goto_6
    return v0

    .line 677
    :cond_7
    if-gez p2, :cond_a

    .line 678
    const/4 p2, 0x0

    .line 680
    :cond_a
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;

    move-result-object v1

    .line 681
    .local v1, "throwables":[Ljava/lang/Throwable;
    array-length v3, v1

    if-lt p2, v3, :cond_13

    move v0, v2

    .line 682
    goto :goto_6

    .line 684
    :cond_13
    if-eqz p3, :cond_28

    .line 685
    move v0, p2

    .local v0, "i":I
    :goto_16
    array-length v3, v1

    if-ge v0, v3, :cond_3b

    .line 686
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 685
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 691
    .end local v0    # "i":I
    :cond_28
    move v0, p2

    .restart local v0    # "i":I
    :goto_29
    array-length v3, v1

    if-ge v0, v3, :cond_3b

    .line 692
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 691
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_3b
    move v0, v2

    .line 697
    goto :goto_6
.end method

.method public static indexOfThrowable(Ljava/lang/Throwable;Ljava/lang/Class;)I
    .registers 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    const/4 v0, 0x0

    .line 592
    invoke-static {p0, p1, v0, v0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I

    move-result v0

    return v0
.end method

.method public static indexOfThrowable(Ljava/lang/Throwable;Ljava/lang/Class;I)I
    .registers 4
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "fromIndex"    # I

    .prologue
    .line 615
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I

    move-result v0

    return v0
.end method

.method public static indexOfType(Ljava/lang/Throwable;Ljava/lang/Class;)I
    .registers 4
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 635
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/exception/ExceptionUtils;->indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I

    move-result v0

    return v0
.end method

.method public static indexOfType(Ljava/lang/Throwable;Ljava/lang/Class;I)I
    .registers 4
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "fromIndex"    # I

    .prologue
    .line 659
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I

    move-result v0

    return v0
.end method

.method public static isCauseMethodName(Ljava/lang/String;)Z
    .registers 3
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    .line 243
    sget-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 244
    :try_start_3
    sget-object v0, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit v1

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    .line 245
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public static isNestedThrowable(Ljava/lang/Throwable;)Z
    .registers 11
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 459
    if-nez p0, :cond_5

    .line 500
    :cond_4
    :goto_4
    return v5

    .line 463
    :cond_5
    instance-of v7, p0, Lorg/apache/commons/lang/exception/Nestable;

    if-eqz v7, :cond_b

    move v5, v6

    .line 464
    goto :goto_4

    .line 465
    :cond_b
    instance-of v7, p0, Ljava/sql/SQLException;

    if-eqz v7, :cond_11

    move v5, v6

    .line 466
    goto :goto_4

    .line 467
    :cond_11
    instance-of v7, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v7, :cond_17

    move v5, v6

    .line 468
    goto :goto_4

    .line 469
    :cond_17
    invoke-static {}, Lorg/apache/commons/lang/exception/ExceptionUtils;->isThrowableNested()Z

    move-result v7

    if-eqz v7, :cond_1f

    move v5, v6

    .line 470
    goto :goto_4

    .line 473
    :cond_1f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 474
    .local v0, "cls":Ljava/lang/Class;
    sget-object v8, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES_LOCK:Ljava/lang/Object;

    monitor-enter v8

    .line 475
    const/4 v2, 0x0

    .local v2, "i":I
    :try_start_27
    sget-object v7, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    array-length v3, v7
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_62

    .local v3, "isize":I
    :goto_2a
    if-ge v2, v3, :cond_57

    .line 477
    :try_start_2c
    sget-object v7, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 478
    .local v4, "method":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_54

    sget-object v7, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v7, :cond_50

    const-string v7, "java.lang.Throwable"

    invoke-static {v7}, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_43
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_4a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2c .. :try_end_4a} :catch_69
    .catch Ljava/lang/SecurityException; {:try_start_2c .. :try_end_4a} :catch_53
    .catchall {:try_start_2c .. :try_end_4a} :catchall_62

    move-result v7

    if-eqz v7, :cond_54

    .line 479
    :try_start_4d
    monitor-exit v8
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_62

    move v5, v6

    goto :goto_4

    .line 478
    :cond_50
    :try_start_50
    sget-object v7, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;
    :try_end_52
    .catch Ljava/lang/NoSuchMethodException; {:try_start_50 .. :try_end_52} :catch_69
    .catch Ljava/lang/SecurityException; {:try_start_50 .. :try_end_52} :catch_53
    .catchall {:try_start_50 .. :try_end_52} :catchall_62

    goto :goto_43

    .line 483
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :catch_53
    move-exception v7

    .line 475
    :cond_54
    :goto_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 487
    :cond_57
    :try_start_57
    monitor-exit v8
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_62

    .line 490
    :try_start_58
    const-string v7, "detail"

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_58 .. :try_end_5d} :catch_67
    .catch Ljava/lang/SecurityException; {:try_start_58 .. :try_end_5d} :catch_65

    move-result-object v1

    .line 491
    .local v1, "field":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_4

    move v5, v6

    .line 492
    goto :goto_4

    .line 487
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "isize":I
    :catchall_62
    move-exception v5

    :try_start_63
    monitor-exit v8
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v5

    .line 496
    .restart local v3    # "isize":I
    :catch_65
    move-exception v6

    goto :goto_4

    .line 494
    :catch_67
    move-exception v6

    goto :goto_4

    .line 481
    :catch_69
    move-exception v7

    goto :goto_54
.end method

.method public static isThrowableNested()Z
    .registers 1

    .prologue
    .line 446
    sget-object v0, Lorg/apache/commons/lang/exception/ExceptionUtils;->THROWABLE_CAUSE_METHOD:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static printRootCauseStackTrace(Ljava/lang/Throwable;)V
    .registers 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 720
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->printRootCauseStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V

    .line 721
    return-void
.end method

.method public static printRootCauseStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V
    .registers 6
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "stream"    # Ljava/io/PrintStream;

    .prologue
    .line 743
    if-nez p0, :cond_3

    .line 754
    :goto_2
    return-void

    .line 746
    :cond_3
    if-nez p1, :cond_d

    .line 747
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The PrintStream must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 749
    :cond_d
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getRootCauseStackTrace(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v1

    .line 750
    .local v1, "trace":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    array-length v2, v1

    if-ge v0, v2, :cond_1d

    .line 751
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 750
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 753
    :cond_1d
    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    goto :goto_2
.end method

.method public static printRootCauseStackTrace(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V
    .registers 6
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 776
    if-nez p0, :cond_3

    .line 787
    :goto_2
    return-void

    .line 779
    :cond_3
    if-nez p1, :cond_d

    .line 780
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The PrintWriter must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 782
    :cond_d
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getRootCauseStackTrace(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v1

    .line 783
    .local v1, "trace":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    array-length v2, v1

    if-ge v0, v2, :cond_1d

    .line 784
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 783
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 786
    :cond_1d
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    goto :goto_2
.end method

.method public static removeCauseMethodName(Ljava/lang/String;)V
    .registers 4
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 146
    invoke-static {}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getCauseMethodNameList()Ljava/util/ArrayList;

    move-result-object v0

    .line 147
    .local v0, "list":Ljava/util/List;
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 148
    sget-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 149
    :try_start_13
    invoke-static {v0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->toArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    .line 150
    monitor-exit v2

    .line 153
    .end local v0    # "list":Ljava/util/List;
    :cond_1a
    return-void

    .line 150
    .restart local v0    # "list":Ljava/util/List;
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public static removeCommonFrames(Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .param p0, "causeFrames"    # Ljava/util/List;
    .param p1, "wrapperFrames"    # Ljava/util/List;

    .prologue
    .line 838
    if-eqz p0, :cond_4

    if-nez p1, :cond_c

    .line 839
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The List must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 841
    :cond_c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 842
    .local v1, "causeFrameIndex":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 843
    .local v3, "wrapperFrameIndex":I
    :goto_18
    if-ltz v1, :cond_36

    if-ltz v3, :cond_36

    .line 846
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 847
    .local v0, "causeFrame":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 848
    .local v2, "wrapperFrame":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 849
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 851
    :cond_31
    add-int/lit8 v1, v1, -0x1

    .line 852
    add-int/lit8 v3, v3, -0x1

    .line 853
    goto :goto_18

    .line 854
    .end local v0    # "causeFrame":Ljava/lang/String;
    .end local v2    # "wrapperFrame":Ljava/lang/String;
    :cond_36
    return-void
.end method

.method public static setCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z
    .registers 10
    .param p0, "target"    # Ljava/lang/Throwable;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 184
    if-nez p0, :cond_c

    .line 185
    new-instance v3, Lorg/apache/commons/lang/NullArgumentException;

    const-string v4, "target"

    invoke-direct {v3, v4}, Lorg/apache/commons/lang/NullArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 187
    :cond_c
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 188
    .local v0, "causeArgs":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 189
    .local v1, "modifiedTarget":Z
    sget-object v3, Lorg/apache/commons/lang/exception/ExceptionUtils;->THROWABLE_INITCAUSE_METHOD:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1b

    .line 191
    :try_start_15
    sget-object v3, Lorg/apache/commons/lang/exception/ExceptionUtils;->THROWABLE_INITCAUSE_METHOD:Ljava/lang/reflect/Method;

    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/IllegalAccessException; {:try_start_15 .. :try_end_1a} :catch_47
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_15 .. :try_end_1a} :catch_45

    .line 192
    const/4 v1, 0x1

    .line 200
    :cond_1b
    :goto_1b
    :try_start_1b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setCause"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v3, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v3, :cond_3c

    const-string v3, "java.lang.Throwable"

    invoke-static {v3}, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_31
    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 201
    .local v2, "setCauseMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const/4 v1, 0x1

    .line 210
    .end local v2    # "setCauseMethod":Ljava/lang/reflect/Method;
    :goto_3b
    return v1

    .line 200
    :cond_3c
    sget-object v3, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;
    :try_end_3e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1b .. :try_end_3e} :catch_43
    .catch Ljava/lang/IllegalAccessException; {:try_start_1b .. :try_end_3e} :catch_41
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1b .. :try_end_3e} :catch_3f

    goto :goto_31

    .line 207
    :catch_3f
    move-exception v3

    goto :goto_3b

    .line 205
    :catch_41
    move-exception v3

    goto :goto_3b

    .line 203
    :catch_43
    move-exception v3

    goto :goto_3b

    .line 195
    :catch_45
    move-exception v3

    goto :goto_1b

    .line 193
    :catch_47
    move-exception v3

    goto :goto_1b
.end method

.method private static toArray(Ljava/util/List;)[Ljava/lang/String;
    .registers 2
    .param p0, "list"    # Ljava/util/List;

    .prologue
    .line 219
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
