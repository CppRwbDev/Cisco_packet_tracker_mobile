.class public final Lorg/jshybugger/ls;
.super Lorg/jshybugger/lw;
.source "NativeJavaArray.java"


# instance fields
.field private g:Ljava/lang/Object;

.field private h:I

.field private i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/jshybugger/lU;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 39
    const/4 v0, 0x0

    sget-object v1, Lorg/jshybugger/lS;->j:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lorg/jshybugger/lw;-><init>(Lorg/jshybugger/lU;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_18

    .line 42
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Array expected"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_18
    iput-object p2, p0, Lorg/jshybugger/ls;->g:Ljava/lang/Object;

    .line 45
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lorg/jshybugger/ls;->h:I

    .line 46
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/ls;->i:Ljava/lang/Class;

    .line 47
    return-void
.end method

.method public static a(Lorg/jshybugger/lU;Ljava/lang/Object;)Lorg/jshybugger/ls;
    .registers 3

    .prologue
    .line 30
    new-instance v0, Lorg/jshybugger/ls;

    invoke-direct {v0, p0, p1}, Lorg/jshybugger/ls;-><init>(Lorg/jshybugger/lU;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final a(ILorg/jshybugger/lU;)Ljava/lang/Object;
    .registers 7

    .prologue
    .line 75
    if-ltz p1, :cond_1b

    iget v0, p0, Lorg/jshybugger/ls;->h:I

    if-ge p1, v0, :cond_1b

    .line 76
    invoke-static {}, Lorg/jshybugger/kK;->h()Lorg/jshybugger/kK;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lorg/jshybugger/ls;->g:Ljava/lang/Object;

    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 78
    invoke-virtual {v0}, Lorg/jshybugger/kK;->g()Lorg/jshybugger/mh;

    move-result-object v2

    iget-object v3, p0, Lorg/jshybugger/ls;->i:Ljava/lang/Class;

    invoke-virtual {v2, v0, p0, v1, v3}, Lorg/jshybugger/mh;->a(Lorg/jshybugger/kK;Lorg/jshybugger/lU;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 80
    :goto_1a
    return-object v0

    :cond_1b
    sget-object v0, Lorg/jshybugger/me;->a:Ljava/lang/Object;

    goto :goto_1a
.end method

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
    .line 105
    if-eqz p1, :cond_6

    sget-object v0, Lorg/jshybugger/lS;->l:Ljava/lang/Class;

    if-ne p1, v0, :cond_d

    .line 106
    :cond_6
    iget-object v0, p0, Lorg/jshybugger/ls;->g:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 111
    :cond_c
    :goto_c
    return-object p0

    .line 107
    :cond_d
    sget-object v0, Lorg/jshybugger/lS;->a:Ljava/lang/Class;

    if-ne p1, v0, :cond_14

    .line 108
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_c

    .line 109
    :cond_14
    sget-object v0, Lorg/jshybugger/lS;->i:Ljava/lang/Class;

    if-ne p1, v0, :cond_c

    .line 110
    sget-object p0, Lorg/jshybugger/lS;->u:Ljava/lang/Double;

    goto :goto_c
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    const-string v0, "JavaArray"

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lorg/jshybugger/lU;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 86
    const-string v0, "length"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 87
    const-string v0, "msg.java.array.member.not.found"

    invoke-static {v0, p1}, Lorg/jshybugger/kK;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/kT;

    move-result-object v0

    throw v0

    .line 89
    :cond_f
    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/jshybugger/lU;)Z
    .registers 4

    .prologue
    .line 51
    const-string v0, "length"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1, p2}, Lorg/jshybugger/lw;->a(Ljava/lang/String;Lorg/jshybugger/lU;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lorg/jshybugger/ls;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public final b(Ljava/lang/String;Lorg/jshybugger/lU;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 61
    const-string v0, "length"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 62
    iget v0, p0, Lorg/jshybugger/ls;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 70
    :cond_e
    return-object v0

    .line 63
    :cond_f
    invoke-super {p0, p1, p2}, Lorg/jshybugger/lw;->b(Ljava/lang/String;Lorg/jshybugger/lU;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    sget-object v1, Lorg/jshybugger/ls;->f:Ljava/lang/Object;

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lorg/jshybugger/ls;->f_()Lorg/jshybugger/lU;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/jshybugger/lV;->c(Lorg/jshybugger/lU;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 67
    const-string v0, "msg.java.member.not.found"

    iget-object v1, p0, Lorg/jshybugger/ls;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/jshybugger/kK;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/jshybugger/kT;

    move-result-object v0

    throw v0
.end method

.method public final f_()Lorg/jshybugger/lU;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lorg/jshybugger/ls;->a:Lorg/jshybugger/lU;

    if-nez v0, :cond_e

    .line 134
    invoke-virtual {p0}, Lorg/jshybugger/ls;->g_()Lorg/jshybugger/lU;

    move-result-object v0

    invoke-static {v0}, Lorg/jshybugger/lV;->e(Lorg/jshybugger/lU;)Lorg/jshybugger/lU;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/ls;->a:Lorg/jshybugger/lU;

    .line 137
    :cond_e
    iget-object v0, p0, Lorg/jshybugger/ls;->a:Lorg/jshybugger/lU;

    return-object v0
.end method
