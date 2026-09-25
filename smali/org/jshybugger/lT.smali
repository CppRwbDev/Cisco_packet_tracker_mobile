.class public final Lorg/jshybugger/lt;
.super Lorg/jshybugger/lw;
.source "NativeJavaClass.java"

# interfaces
.implements Lorg/jshybugger/kV;


# instance fields
.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jshybugger/kU;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/jshybugger/lw;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/jshybugger/lU;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/lU;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jshybugger/lt;-><init>(Lorg/jshybugger/lU;Ljava/lang/Class;Z)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/jshybugger/lU;Ljava/lang/Class;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/lU;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/jshybugger/lw;-><init>(Lorg/jshybugger/lU;Ljava/lang/Object;Ljava/lang/Class;Z)V

    .line 44
    return-void
.end method

.method static a([Ljava/lang/Object;Lorg/jshybugger/ll;)Ljava/lang/Object;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-object v3, p1, Lorg/jshybugger/ll;->a:[Ljava/lang/Class;

    .line 216
    iget-boolean v0, p1, Lorg/jshybugger/ll;->c:Z

    if-eqz v0, :cond_7b

    .line 218
    array-length v0, v3

    new-array v2, v0, [Ljava/lang/Object;

    move v0, v1

    .line 219
    :goto_b
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_1d

    .line 220
    aget-object v4, p0, v0

    aget-object v5, v3, v0

    invoke-static {v4, v5}, Lorg/jshybugger/kK;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v0

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 227
    :cond_1d
    array-length v0, p0

    array-length v4, v3

    if-ne v0, v4, :cond_53

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    if-eqz v0, :cond_3a

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    instance-of v0, v0, Lorg/jshybugger/lm;

    if-nez v0, :cond_3a

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    instance-of v0, v0, Lorg/jshybugger/ls;

    if-eqz v0, :cond_53

    .line 233
    :cond_3a
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v3, v1

    invoke-static {v0, v1}, Lorg/jshybugger/kK;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 249
    :cond_48
    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    aput-object v0, v2, v1

    move-object v0, v2

    .line 266
    :cond_4e
    invoke-virtual {p1, v0}, Lorg/jshybugger/ll;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 237
    :cond_53
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    .line 239
    array-length v0, p0

    array-length v5, v3

    sub-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x1

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 241
    :goto_65
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-ge v1, v5, :cond_48

    .line 242
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v5, v1

    aget-object v5, p0, v5

    invoke-static {v5, v4}, Lorg/jshybugger/kK;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 244
    invoke-static {v0, v1, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    :cond_7b
    move-object v0, p0

    .line 254
    :goto_7c
    array-length v2, v0

    if-ge v1, v2, :cond_4e

    .line 255
    aget-object v2, v0, v1

    .line 256
    aget-object v4, v3, v1

    invoke-static {v2, v4}, Lorg/jshybugger/kK;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 257
    if-eq v4, v2, :cond_93

    .line 258
    if-ne v0, p0, :cond_91

    .line 259
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 261
    :cond_91
    aput-object v4, v0, v1

    .line 254
    :cond_93
    add-int/lit8 v1, v1, 0x1

    goto :goto_7c
.end method

.method static a(Lorg/jshybugger/kK;Lorg/jshybugger/lU;[Ljava/lang/Object;Lorg/jshybugger/ll;)Lorg/jshybugger/lU;
    .registers 7

    .prologue
    .line 205
    invoke-static {p2, p3}, Lorg/jshybugger/lt;->a([Ljava/lang/Object;Lorg/jshybugger/ll;)Ljava/lang/Object;

    move-result-object v0

    .line 208
    invoke-static {p1}, Lorg/jshybugger/lV;->f(Lorg/jshybugger/lU;)Lorg/jshybugger/lU;

    move-result-object v1

    .line 209
    invoke-virtual {p0}, Lorg/jshybugger/kK;->g()Lorg/jshybugger/mh;

    instance-of v2, v0, Lorg/jshybugger/lU;

    if-eqz v2, :cond_12

    check-cast v0, Lorg/jshybugger/lU;

    :goto_11
    return-object v0

    :cond_12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-static {v1, v0}, Lorg/jshybugger/ls;->a(Lorg/jshybugger/lU;Ljava/lang/Object;)Lorg/jshybugger/ls;

    move-result-object v0

    goto :goto_11

    :cond_21
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/jshybugger/mh;->a(Lorg/jshybugger/lU;Ljava/lang/Object;Ljava/lang/Class;)Lorg/jshybugger/lU;

    move-result-object v0

    goto :goto_11
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 120
    if-eqz p1, :cond_6

    sget-object v0, Lorg/jshybugger/lS;->l:Ljava/lang/Class;

    if-ne p1, v0, :cond_b

    .line 121
    :cond_6
    invoke-virtual {p0}, Lorg/jshybugger/lt;->toString()Ljava/lang/String;

    move-result-object p0

    .line 126
    :cond_a
    :goto_a
    return-object p0

    .line 122
    :cond_b
    sget-object v0, Lorg/jshybugger/lS;->a:Ljava/lang/Class;

    if-ne p1, v0, :cond_12

    .line 123
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_a

    .line 124
    :cond_12
    sget-object v0, Lorg/jshybugger/lS;->i:Ljava/lang/Class;

    if-ne p1, v0, :cond_a

    .line 125
    sget-object p0, Lorg/jshybugger/lS;->u:Ljava/lang/Double;

    goto :goto_a
.end method

.method public final a(Lorg/jshybugger/kK;Lorg/jshybugger/lU;Lorg/jshybugger/lU;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 135
    array-length v0, p4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    aget-object v0, p4, v2

    instance-of v0, v0, Lorg/jshybugger/lU;

    if-eqz v0, :cond_2e

    .line 136
    invoke-super {p0}, Lorg/jshybugger/lw;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 137
    aget-object v1, p4, v2

    check-cast v1, Lorg/jshybugger/lU;

    move-object v2, v1

    .line 139
    :cond_16
    instance-of v1, v2, Lorg/jshybugger/mj;

    if-eqz v1, :cond_28

    move-object v1, v2

    .line 140
    check-cast v1, Lorg/jshybugger/mj;

    invoke-interface {v1}, Lorg/jshybugger/mj;->b()Ljava/lang/Object;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 147
    :goto_27
    return-object v2

    .line 144
    :cond_28
    invoke-interface {v2}, Lorg/jshybugger/lU;->f_()Lorg/jshybugger/lU;

    move-result-object v2

    .line 145
    if-nez v2, :cond_16

    .line 147
    :cond_2e
    invoke-virtual {p0, p1, p2, p4}, Lorg/jshybugger/lt;->a(Lorg/jshybugger/kK;Lorg/jshybugger/lU;[Ljava/lang/Object;)Lorg/jshybugger/lU;

    move-result-object v2

    goto :goto_27
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    const-string v0, "JavaClass"

    return-object v0
.end method

.method public final a(Lorg/jshybugger/kK;Lorg/jshybugger/lU;[Ljava/lang/Object;)Lorg/jshybugger/lU;
    .registers 11

    .prologue
    .line 152
    invoke-super {p0}, Lorg/jshybugger/lw;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 153
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    .line 154
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v2

    if-nez v2, :cond_38

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-nez v1, :cond_38

    .line 157
    iget-object v1, p0, Lorg/jshybugger/lt;->d:Lorg/jshybugger/lf;

    iget-object v1, v1, Lorg/jshybugger/lf;->a:Lorg/jshybugger/lv;

    .line 158
    invoke-virtual {v1, p1, p3}, Lorg/jshybugger/lv;->a(Lorg/jshybugger/kK;[Ljava/lang/Object;)I

    move-result v2

    .line 159
    if-gez v2, :cond_2f

    .line 160
    invoke-static {p3}, Lorg/jshybugger/lv;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 161
    const-string v2, "msg.no.java.ctor"

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lorg/jshybugger/kK;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/jshybugger/kT;

    move-result-object v0

    throw v0

    .line 166
    :cond_2f
    iget-object v0, v1, Lorg/jshybugger/lv;->e:[Lorg/jshybugger/ll;

    aget-object v0, v0, v2

    invoke-static {p1, p2, p3, v0}, Lorg/jshybugger/lt;->a(Lorg/jshybugger/kK;Lorg/jshybugger/lU;[Ljava/lang/Object;Lorg/jshybugger/ll;)Lorg/jshybugger/lU;

    move-result-object v0

    .line 189
    :goto_37
    return-object v0

    .line 168
    :cond_38
    array-length v1, p3

    if-nez v1, :cond_42

    .line 169
    const-string v0, "msg.adapter.zero.args"

    invoke-static {v0}, Lorg/jshybugger/kK;->b(Ljava/lang/String;)Lorg/jshybugger/kT;

    move-result-object v0

    throw v0

    .line 171
    :cond_42
    invoke-static {p0}, Lorg/jshybugger/lV;->f(Lorg/jshybugger/lU;)Lorg/jshybugger/lU;

    move-result-object v3

    .line 172
    const-string v2, ""

    .line 176
    :try_start_48
    const-string v1, "Dalvik"

    const-string v4, "java.vm.name"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 178
    const/4 v1, 0x0

    aget-object v1, p3, v1

    invoke-static {v1}, Lorg/jshybugger/lV;->a(Ljava/lang/Object;)Lorg/jshybugger/lV;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jshybugger/lt;->a(Ljava/lang/Class;Lorg/jshybugger/lV;)Ljava/lang/Object;

    move-result-object v1

    .line 180
    invoke-virtual {p1}, Lorg/jshybugger/kK;->g()Lorg/jshybugger/mh;

    const/4 v3, 0x0

    invoke-static {p2, v1, v3}, Lorg/jshybugger/mh;->a(Lorg/jshybugger/lU;Ljava/lang/Object;Ljava/lang/Class;)Lorg/jshybugger/lU;

    move-result-object v0

    goto :goto_37

    .line 184
    :cond_70
    const-string v1, "JavaAdapter"

    invoke-interface {v3, v1, v3}, Lorg/jshybugger/lU;->b(Ljava/lang/String;Lorg/jshybugger/lU;)Ljava/lang/Object;

    move-result-object v1

    .line 185
    sget-object v4, Lorg/jshybugger/lt;->f:Ljava/lang/Object;

    if-eq v1, v4, :cond_8d

    .line 186
    check-cast v1, Lorg/jshybugger/kV;

    .line 188
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aget-object v6, p3, v6

    aput-object v6, v4, v5

    .line 189
    invoke-interface {v1, p1, v3, v4}, Lorg/jshybugger/kV;->a(Lorg/jshybugger/kK;Lorg/jshybugger/lU;[Ljava/lang/Object;)Lorg/jshybugger/lU;
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_8b} :catch_99

    move-result-object v0

    goto :goto_37

    :cond_8d
    move-object v1, v2

    .line 197
    :cond_8e
    :goto_8e
    const-string v2, "msg.cant.instantiate"

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lorg/jshybugger/kK;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/jshybugger/kT;

    move-result-object v0

    throw v0

    .line 191
    :catch_99
    move-exception v1

    .line 193
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 194
    if-nez v1, :cond_8e

    move-object v1, v2

    goto :goto_8e
.end method

.method public final a(Ljava/lang/String;Lorg/jshybugger/lU;Ljava/lang/Object;)V
    .registers 10

    .prologue
    .line 106
    iget-object v0, p0, Lorg/jshybugger/lt;->d:Lorg/jshybugger/lf;

    iget-object v3, p0, Lorg/jshybugger/lt;->c:Ljava/lang/Object;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/jshybugger/lf;->a(Lorg/jshybugger/lU;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 107
    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/jshybugger/lU;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 60
    iget-object v1, p0, Lorg/jshybugger/lt;->d:Lorg/jshybugger/lf;

    invoke-virtual {v1, p1, v0}, Lorg/jshybugger/lf;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "__javaObject__"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final b(Ljava/lang/String;Lorg/jshybugger/lU;)Ljava/lang/Object;
    .registers 8

    .prologue
    const/4 v2, 0x1

    .line 69
    const-string v0, "prototype"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 70
    const/4 v0, 0x0

    .line 98
    :cond_a
    :goto_a
    return-object v0

    .line 72
    :cond_b
    iget-object v0, p0, Lorg/jshybugger/lt;->g:Ljava/util/Map;

    if-eqz v0, :cond_17

    .line 73
    iget-object v0, p0, Lorg/jshybugger/lt;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    if-nez v0, :cond_a

    .line 78
    :cond_17
    iget-object v0, p0, Lorg/jshybugger/lt;->d:Lorg/jshybugger/lf;

    invoke-virtual {v0, p1, v2}, Lorg/jshybugger/lf;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 79
    iget-object v0, p0, Lorg/jshybugger/lt;->d:Lorg/jshybugger/lf;

    iget-object v1, p0, Lorg/jshybugger/lt;->c:Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1, v2}, Lorg/jshybugger/lf;->a(Lorg/jshybugger/lU;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    .line 82
    :cond_28
    invoke-static {}, Lorg/jshybugger/kK;->h()Lorg/jshybugger/kK;

    move-result-object v0

    .line 83
    invoke-static {p2}, Lorg/jshybugger/lV;->f(Lorg/jshybugger/lU;)Lorg/jshybugger/lU;

    move-result-object v2

    .line 84
    invoke-virtual {v0}, Lorg/jshybugger/kK;->g()Lorg/jshybugger/mh;

    move-result-object v1

    .line 86
    const-string v3, "__javaObject__"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 87
    iget-object v3, p0, Lorg/jshybugger/lt;->c:Ljava/lang/Object;

    sget-object v4, Lorg/jshybugger/lS;->d:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2, v3, v4}, Lorg/jshybugger/mh;->a(Lorg/jshybugger/kK;Lorg/jshybugger/lU;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    .line 93
    :cond_45
    invoke-super {p0}, Lorg/jshybugger/lw;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x24

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_7c

    invoke-static {v1}, Lorg/jshybugger/lh;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    .line 94
    :goto_71
    if-eqz v1, :cond_82

    .line 95
    new-instance v0, Lorg/jshybugger/lt;

    invoke-direct {v0, v2, v1}, Lorg/jshybugger/lt;-><init>(Lorg/jshybugger/lU;Ljava/lang/Class;)V

    .line 97
    invoke-interface {v0, p0}, Lorg/jshybugger/lU;->b(Lorg/jshybugger/lU;)V

    goto :goto_a

    .line 93
    :cond_7c
    invoke-static {v0, v1}, Lorg/jshybugger/lh;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    goto :goto_71

    .line 101
    :cond_82
    iget-object v0, p0, Lorg/jshybugger/lt;->d:Lorg/jshybugger/lf;

    invoke-virtual {v0, p1}, Lorg/jshybugger/lf;->a(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method protected final d()V
    .registers 4

    .prologue
    .line 48
    iget-object v0, p0, Lorg/jshybugger/lt;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    .line 49
    iget-object v1, p0, Lorg/jshybugger/lt;->b:Lorg/jshybugger/lU;

    iget-boolean v2, p0, Lorg/jshybugger/lt;->e:Z

    invoke-static {v1, v0, v0, v2}, Lorg/jshybugger/lf;->a(Lorg/jshybugger/lU;Ljava/lang/Class;Ljava/lang/Class;Z)Lorg/jshybugger/lf;

    move-result-object v1

    iput-object v1, p0, Lorg/jshybugger/lt;->d:Lorg/jshybugger/lf;

    .line 50
    iget-object v1, p0, Lorg/jshybugger/lt;->d:Lorg/jshybugger/lf;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Lorg/jshybugger/lf;->a(Lorg/jshybugger/lU;Ljava/lang/Object;Z)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/lt;->g:Ljava/util/Map;

    .line 51
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "[JavaClass "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lorg/jshybugger/lw;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
