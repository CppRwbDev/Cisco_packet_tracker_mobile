.class public Lorg/jshybugger/nI;
.super Lorg/jshybugger/nG;
.source "VMBridge_jdk15.java"


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/jshybugger/nG;-><init>()V

    .line 22
    :try_start_3
    const-class v0, Ljava/lang/reflect/Method;

    const-string v1, "isVarArgs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_b} :catch_c

    .line 27
    return-void

    .line 23
    :catch_c
    move-exception v0

    .line 26
    new-instance v1, Ljava/lang/InstantiationException;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Member;)Z
    .registers 3

    .prologue
    .line 32
    instance-of v0, p1, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_b

    .line 33
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v0

    .line 37
    :goto_a
    return v0

    .line 34
    :cond_b
    instance-of v0, p1, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_16

    .line 35
    check-cast p1, Ljava/lang/reflect/Constructor;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    move-result v0

    goto :goto_a

    .line 37
    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method
