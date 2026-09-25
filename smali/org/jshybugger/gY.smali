.class public abstract Lorg/jshybugger/gy;
.super Ljava/lang/Object;
.source "TypeParameterMatcher.java"


# static fields
.field private static final a:Lorg/jshybugger/gy;

.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/jshybugger/gy;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jshybugger/gy;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    new-instance v0, Lorg/jshybugger/gm;

    invoke-direct {v0}, Lorg/jshybugger/gm;-><init>()V

    sput-object v0, Lorg/jshybugger/gy;->a:Lorg/jshybugger/gy;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/jshybugger/gy;->b:Ljava/lang/Object;

    .line 33
    new-instance v0, Lorg/jshybugger/gz;

    invoke-direct {v0}, Lorg/jshybugger/gz;-><init>()V

    sput-object v0, Lorg/jshybugger/gy;->c:Ljava/lang/ThreadLocal;

    .line 71
    new-instance v0, Lorg/jshybugger/gA;

    invoke-direct {v0}, Lorg/jshybugger/gA;-><init>()V

    sput-object v0, Lorg/jshybugger/gy;->d:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot determine the type of the type parameter \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/lang/Class;)Lorg/jshybugger/gy;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/jshybugger/gy;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 42
    sget-object v0, Lorg/jshybugger/gy;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 44
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jshybugger/gy;

    .line 45
    if-nez v1, :cond_21

    .line 46
    const-class v3, Ljava/lang/Object;

    if-ne p0, v3, :cond_22

    .line 47
    sget-object v1, Lorg/jshybugger/gy;->a:Lorg/jshybugger/gy;

    .line 61
    :cond_17
    :goto_17
    if-nez v1, :cond_1e

    .line 62
    new-instance v1, Lorg/jshybugger/gB;

    invoke-direct {v1, p0}, Lorg/jshybugger/gB;-><init>(Ljava/lang/Class;)V

    .line 65
    :cond_1e
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_21
    return-object v1

    .line 48
    :cond_22
    invoke-static {}, Lorg/jshybugger/gp;->g()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 50
    :try_start_28
    invoke-static {p0}, Lorg/jshybugger/gl;->a(Ljava/lang/Class;)Lorg/jshybugger/gy;

    move-result-object v1

    .line 51
    sget-object v3, Lorg/jshybugger/gy;->b:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/jshybugger/gy;->a(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/IllegalAccessError; {:try_start_28 .. :try_end_31} :catch_32
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_31} :catch_35

    goto :goto_17

    .line 54
    :catch_32
    move-exception v1

    move-object v1, v2

    .line 58
    goto :goto_17

    .line 57
    :catch_35
    move-exception v1

    move-object v1, v2

    goto :goto_17
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Lorg/jshybugger/gy;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/jshybugger/gy;"
        }
    .end annotation

    .prologue
    .line 82
    sget-object v0, Lorg/jshybugger/gy;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 85
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 86
    if-nez v1, :cond_1c

    .line 87
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 88
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_1c
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/gy;

    .line 92
    if-nez v0, :cond_2f

    .line 93
    invoke-static {p0, p1, p2}, Lorg/jshybugger/gy;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/jshybugger/gy;->a(Ljava/lang/Class;)Lorg/jshybugger/gy;

    move-result-object v0

    .line 94
    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_2f
    return-object v0
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object v0, v2

    .line 106
    :cond_6
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p1, :cond_bb

    .line 107
    const/4 v4, -0x1

    .line 108
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v5

    move v1, v3

    .line 109
    :goto_16
    array-length v6, v5

    if-ge v1, v6, :cond_ca

    .line 110
    aget-object v6, v5, v1

    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 116
    :goto_25
    if-gez v1, :cond_49

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown type parameter \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 121
    :cond_49
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 122
    instance-of v4, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v4, :cond_54

    .line 123
    const-class v0, Ljava/lang/Object;

    .line 165
    :goto_53
    return-object v0

    .line 126
    :cond_54
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 128
    aget-object v0, v0, v1

    .line 129
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_66

    .line 130
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 132
    :cond_66
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_6d

    .line 133
    check-cast v0, Ljava/lang/Class;

    goto :goto_53

    .line 135
    :cond_6d
    instance-of v1, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_92

    move-object v1, v0

    .line 136
    check-cast v1, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 137
    instance-of v4, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_82

    .line 138
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 140
    :cond_82
    instance-of v4, v1, Ljava/lang/Class;

    if-eqz v4, :cond_92

    move-object v0, v1

    .line 141
    check-cast v0, Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_53

    .line 144
    :cond_92
    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_b6

    .line 146
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    .line 148
    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Class;

    if-nez v1, :cond_a3

    .line 149
    const-class v0, Ljava/lang/Object;

    goto :goto_53

    .line 152
    :cond_a3
    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 153
    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object p2

    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_c6

    .line 155
    const-class v0, Ljava/lang/Object;

    goto :goto_53

    .line 161
    :cond_b6
    invoke-static {v2, p2}, Lorg/jshybugger/gy;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_53

    .line 163
    :cond_bb
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 164
    if-nez v0, :cond_6

    .line 165
    invoke-static {v2, p2}, Lorg/jshybugger/gy;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_53

    :cond_c6
    move-object v0, v2

    move-object p1, v1

    goto/16 :goto_6

    :cond_ca
    move v1, v4

    goto/16 :goto_25
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Z
.end method
