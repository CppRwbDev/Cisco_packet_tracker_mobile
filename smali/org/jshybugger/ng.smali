.class public Lorg/jshybugger/nG;
.super Lorg/jshybugger/mg;
.source "VMBridge_jdk13.java"


# instance fields
.field private b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/jshybugger/mg;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/nG;->b:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Lorg/jshybugger/nG;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 36
    if-nez v0, :cond_12

    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 38
    iget-object v1, p0, Lorg/jshybugger/nG;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 40
    :cond_12
    return-object v0
.end method

.method protected final a(Ljava/lang/Object;Lorg/jshybugger/kM;Lorg/jshybugger/kZ;Ljava/lang/Object;Lorg/jshybugger/lU;)Ljava/lang/Object;
    .registers 12

    .prologue
    .line 105
    check-cast p1, Ljava/lang/reflect/Constructor;

    .line 107
    new-instance v0, Lorg/jshybugger/nH;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/jshybugger/nH;-><init>(Lorg/jshybugger/nG;Ljava/lang/Object;Lorg/jshybugger/kZ;Lorg/jshybugger/kM;Lorg/jshybugger/lU;)V

    .line 137
    const/4 v1, 0x1

    :try_start_d
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_15} :catch_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_15} :catch_1d
    .catch Ljava/lang/InstantiationException; {:try_start_d .. :try_end_15} :catch_28

    move-result-object v0

    .line 147
    return-object v0

    .line 138
    :catch_17
    move-exception v0

    .line 139
    invoke-static {v0}, Lorg/jshybugger/kK;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 140
    :catch_1d
    move-exception v0

    .line 142
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v0}, Lorg/jshybugger/lh;->a(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 143
    :catch_28
    move-exception v0

    .line 145
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v0}, Lorg/jshybugger/lh;->a(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method protected final a([Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 86
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 87
    invoke-static {v0, p1}, Ljava/lang/reflect/Proxy;->getProxyClass(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 90
    const/4 v1, 0x1

    :try_start_c
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/reflect/InvocationHandler;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_16} :catch_18

    move-result-object v0

    .line 95
    return-object v0

    .line 91
    :catch_18
    move-exception v0

    .line 93
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v0}, Lorg/jshybugger/lh;->a(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method protected final a(Ljava/lang/Object;)Lorg/jshybugger/kK;
    .registers 3

    .prologue
    .line 46
    check-cast p1, [Ljava/lang/Object;

    .line 47
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lorg/jshybugger/kK;

    return-object v0
.end method

.method protected final a(Ljava/lang/Object;Lorg/jshybugger/kK;)V
    .registers 4

    .prologue
    .line 53
    check-cast p1, [Ljava/lang/Object;

    .line 54
    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 55
    return-void
.end method

.method protected a(Ljava/lang/reflect/Member;)Z
    .registers 3

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method protected final b(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 66
    instance-of v1, p1, Ljava/lang/reflect/AccessibleObject;

    if-nez v1, :cond_7

    .line 67
    const/4 v0, 0x0

    .line 77
    :cond_6
    :goto_6
    return v0

    .line 69
    :cond_7
    check-cast p1, Ljava/lang/reflect/AccessibleObject;

    .line 70
    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_6

    .line 74
    const/4 v0, 0x1

    :try_start_10
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_18

    .line 77
    :goto_13
    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    goto :goto_6

    :catch_18
    move-exception v0

    goto :goto_13
.end method
