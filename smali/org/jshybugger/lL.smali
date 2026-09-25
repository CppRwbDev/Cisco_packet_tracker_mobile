.class final Lorg/jshybugger/ll;
.super Ljava/lang/Object;
.source "MemberBox.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field transient a:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field transient b:Ljava/lang/Object;

.field transient c:Z

.field private transient d:Ljava/lang/reflect/Member;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 278
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Constructor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/jshybugger/ll;->d:Ljava/lang/reflect/Member;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/ll;->a:[Ljava/lang/Class;

    sget-object v0, Lorg/jshybugger/mg;->a:Lorg/jshybugger/mg;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mg;->a(Ljava/lang/reflect/Member;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jshybugger/ll;->c:Z

    .line 38
    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Method;)V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/jshybugger/ll;->d:Ljava/lang/reflect/Member;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/ll;->a:[Ljava/lang/Class;

    sget-object v0, Lorg/jshybugger/mg;->a:Lorg/jshybugger/mg;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mg;->a(Ljava/lang/reflect/Member;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jshybugger/ll;->c:Z

    .line 33
    return-void
.end method

.method private static a(Ljava/lang/reflect/Method;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    .line 174
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_66

    .line 175
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_66

    .line 177
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    .line 179
    const/4 v1, 0x0

    array-length v4, v3

    :goto_28
    if-eq v1, v4, :cond_40

    .line 180
    aget-object v5, v3, v1

    .line 181
    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 183
    :try_start_36
    invoke-virtual {v5, v2, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_39
    .catch Ljava/lang/NoSuchMethodException; {:try_start_36 .. :try_end_39} :catch_3b
    .catch Ljava/lang/SecurityException; {:try_start_36 .. :try_end_39} :catch_68

    move-result-object v0

    .line 206
    :goto_3a
    return-object v0

    .line 185
    :catch_3b
    move-exception v5

    .line 179
    :cond_3c
    :goto_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 201
    :catch_3f
    move-exception v1

    .line 189
    :cond_40
    :goto_40
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_66

    .line 191
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 193
    :try_start_50
    invoke-virtual {v0, v2, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 194
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    .line 195
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
    :try_end_61
    .catch Ljava/lang/NoSuchMethodException; {:try_start_50 .. :try_end_61} :catch_6a
    .catch Ljava/lang/SecurityException; {:try_start_50 .. :try_end_61} :catch_3f

    move-result v3

    if-nez v3, :cond_40

    move-object v0, v1

    .line 198
    goto :goto_3a

    .line 206
    :cond_66
    const/4 v0, 0x0

    goto :goto_3a

    :catch_68
    move-exception v5

    goto :goto_3c

    .line 201
    :catch_6a
    move-exception v1

    goto :goto_40
.end method


# virtual methods
.method final a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .prologue
    .line 123
    iget-object v0, p0, Lorg/jshybugger/ll;->d:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/Method;

    .line 126
    :try_start_4
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_7} :catch_9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_7} :catch_27
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_3e

    move-result-object v0

    .line 138
    :goto_8
    return-object v0

    .line 127
    :catch_9
    move-exception v2

    .line 128
    :try_start_a
    iget-object v1, p0, Lorg/jshybugger/ll;->a:[Ljava/lang/Class;

    invoke-static {v0, v1}, Lorg/jshybugger/ll;->a(Ljava/lang/reflect/Method;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_1a

    .line 130
    iput-object v1, p0, Lorg/jshybugger/ll;->d:Ljava/lang/reflect/Member;

    move-object v0, v1

    .line 138
    :cond_15
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8

    .line 133
    :cond_1a
    sget-object v1, Lorg/jshybugger/mg;->a:Lorg/jshybugger/mg;

    invoke-virtual {v1, v0}, Lorg/jshybugger/mg;->b(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 134
    invoke-static {v2}, Lorg/jshybugger/kK;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_27} :catch_27
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_27} :catch_3e

    .line 140
    :catch_27
    move-exception v0

    .line 144
    :cond_28
    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 145
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-nez v1, :cond_28

    .line 146
    instance-of v1, v0, Lorg/jshybugger/kN;

    if-eqz v1, :cond_39

    .line 147
    check-cast v0, Lorg/jshybugger/kN;

    throw v0

    .line 148
    :cond_39
    invoke-static {v0}, Lorg/jshybugger/kK;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 149
    :catch_3e
    move-exception v0

    .line 150
    invoke-static {v0}, Lorg/jshybugger/kK;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method final a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 156
    iget-object v0, p0, Lorg/jshybugger/ll;->d:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 159
    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_7} :catch_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_17

    move-result-object v0

    .line 165
    :goto_8
    return-object v0

    .line 160
    :catch_9
    move-exception v1

    .line 161
    :try_start_a
    sget-object v2, Lorg/jshybugger/mg;->a:Lorg/jshybugger/mg;

    invoke-virtual {v2, v0}, Lorg/jshybugger/mg;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 162
    invoke-static {v1}, Lorg/jshybugger/kK;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_17} :catch_17

    .line 166
    :catch_17
    move-exception v0

    .line 167
    invoke-static {v0}, Lorg/jshybugger/kK;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 165
    :cond_1d
    :try_start_1d
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_17

    move-result-object v0

    goto :goto_8
.end method

.method final a()Ljava/lang/reflect/Method;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lorg/jshybugger/ll;->d:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method

.method final b()Ljava/lang/reflect/Member;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/jshybugger/ll;->d:Ljava/lang/reflect/Member;

    return-object v0
.end method

.method final c()Z
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/jshybugger/ll;->d:Ljava/lang/reflect/Member;

    instance-of v0, v0, Ljava/lang/reflect/Method;

    return v0
.end method

.method final d()Z
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lorg/jshybugger/ll;->d:Ljava/lang/reflect/Member;

    instance-of v0, v0, Ljava/lang/reflect/Constructor;

    return v0
.end method

.method final e()Z
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/jshybugger/ll;->d:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    return v0
.end method

.method final f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lorg/jshybugger/ll;->d:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final g()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jshybugger/ll;->d:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method final h()Ljava/lang/String;
    .registers 4

    .prologue
    .line 96
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 97
    iget-object v0, p0, Lorg/jshybugger/ll;->d:Ljava/lang/reflect/Member;

    instance-of v0, v0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_30

    .line 98
    iget-object v0, p0, Lorg/jshybugger/ll;->d:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/Method;

    .line 99
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 100
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    :goto_22
    iget-object v0, p0, Lorg/jshybugger/ll;->a:[Ljava/lang/Class;

    invoke-static {v0}, Lorg/jshybugger/lf;->a([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 103
    :cond_30
    iget-object v0, p0, Lorg/jshybugger/ll;->d:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 104
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 105
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 106
    if-ltz v2, :cond_4a

    .line 107
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    :cond_4a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_22
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lorg/jshybugger/ll;->d:Ljava/lang/reflect/Member;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
