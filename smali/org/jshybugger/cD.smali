.class final Lorg/jshybugger/cd;
.super Lorg/jshybugger/cf;
.source "AbstractNioByteChannel.java"


# instance fields
.field private c:Lorg/jshybugger/bC;

.field private synthetic d:Lorg/jshybugger/cb;


# direct methods
.method private constructor <init>(Lorg/jshybugger/cb;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lorg/jshybugger/cd;->d:Lorg/jshybugger/cb;

    invoke-direct {p0, p1}, Lorg/jshybugger/cf;-><init>(Lorg/jshybugger/ce;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jshybugger/cb;B)V
    .registers 3

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/jshybugger/cd;-><init>(Lorg/jshybugger/cb;)V

    return-void
.end method

.method private a(Lorg/jshybugger/aJ;)V
    .registers 6

    .prologue
    .line 68
    iget-object v0, p0, Lorg/jshybugger/cd;->d:Lorg/jshybugger/cb;

    invoke-virtual {v0}, Lorg/jshybugger/cb;->I()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lorg/jshybugger/cd;->d:Lorg/jshybugger/cb;

    invoke-virtual {v1}, Lorg/jshybugger/cb;->J()V

    .line 70
    iget-object v1, p0, Lorg/jshybugger/cd;->d:Lorg/jshybugger/cb;

    invoke-virtual {v1}, Lorg/jshybugger/cb;->B()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 71
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lorg/jshybugger/cd;->d:Lorg/jshybugger/cb;

    invoke-virtual {v2}, Lorg/jshybugger/cb;->A()Lorg/jshybugger/al;

    move-result-object v2

    sget-object v3, Lorg/jshybugger/aB;->i:Lorg/jshybugger/aB;

    invoke-interface {v2, v3}, Lorg/jshybugger/al;->a(Lorg/jshybugger/aB;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 72
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    iget-object v2, p0, Lorg/jshybugger/cd;->d:Lorg/jshybugger/cb;

    iget v2, v2, Lorg/jshybugger/cb;->d:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 73
    sget-object v0, Lorg/jshybugger/cq;->a:Lorg/jshybugger/cq;

    invoke-interface {p1, v0}, Lorg/jshybugger/aJ;->c(Ljava/lang/Object;)Lorg/jshybugger/aJ;

    .line 78
    :cond_3a
    :goto_3a
    return-void

    .line 75
    :cond_3b
    iget-object v0, p0, Lorg/jshybugger/Z;->a:Lorg/jshybugger/Y;

    invoke-static {v0}, Lorg/jshybugger/Y;->d(Lorg/jshybugger/Y;)Lorg/jshybugger/bH;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jshybugger/cd;->b(Lorg/jshybugger/aM;)V

    goto :goto_3a
.end method


# virtual methods
.method public final j()V
    .registers 10

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lorg/jshybugger/cd;->d:Lorg/jshybugger/cb;

    invoke-virtual {v0}, Lorg/jshybugger/cb;->A()Lorg/jshybugger/al;

    move-result-object v2

    .line 98
    iget-object v0, p0, Lorg/jshybugger/cd;->d:Lorg/jshybugger/cb;

    invoke-virtual {v0}, Lorg/jshybugger/cb;->b()Lorg/jshybugger/aJ;

    move-result-object v5

    .line 99
    invoke-interface {v2}, Lorg/jshybugger/al;->d()Lorg/jshybugger/I;

    move-result-object v6

    .line 100
    invoke-interface {v2}, Lorg/jshybugger/al;->b()I

    move-result v7

    .line 101
    iget-object v0, p0, Lorg/jshybugger/cd;->c:Lorg/jshybugger/bC;

    .line 102
    if-nez v0, :cond_24

    .line 103
    invoke-interface {v2}, Lorg/jshybugger/al;->e()Lorg/jshybugger/bB;

    move-result-object v0

    invoke-interface {v0}, Lorg/jshybugger/bB;->a()Lorg/jshybugger/bC;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/cd;->c:Lorg/jshybugger/bC;

    .line 105
    :cond_24
    invoke-interface {v2}, Lorg/jshybugger/al;->f()Z

    move-result v2

    if-nez v2, :cond_45

    .line 106
    iget-object v2, p0, Lorg/jshybugger/cd;->d:Lorg/jshybugger/cb;

    invoke-virtual {v2}, Lorg/jshybugger/cb;->I()Ljava/nio/channels/SelectionKey;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v4

    iget-object v8, p0, Lorg/jshybugger/cd;->d:Lorg/jshybugger/cb;

    iget v8, v8, Lorg/jshybugger/cb;->d:I

    and-int/2addr v8, v4

    if-eqz v8, :cond_45

    iget-object v8, p0, Lorg/jshybugger/cd;->d:Lorg/jshybugger/cb;

    iget v8, v8, Lorg/jshybugger/cb;->d:I

    xor-int/lit8 v8, v8, -0x1

    and-int/2addr v4, v8

    invoke-virtual {v2, v4}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_45
    move v4, v1

    .line 114
    :goto_46
    :try_start_46
    invoke-virtual {v0, v6}, Lorg/jshybugger/bC;->a(Lorg/jshybugger/I;)Lorg/jshybugger/H;
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_49} :catch_70

    move-result-object v2

    .line 115
    :try_start_4a
    iget-object v8, p0, Lorg/jshybugger/cd;->d:Lorg/jshybugger/cb;

    invoke-virtual {v8, v2}, Lorg/jshybugger/cb;->a(Lorg/jshybugger/H;)I

    move-result v8

    .line 116
    if-gtz v8, :cond_64

    .line 118
    invoke-virtual {v2}, Lorg/jshybugger/H;->v()Z

    .line 119
    if-gez v8, :cond_62

    const/4 v0, 0x1

    :goto_58
    move v1, v0

    .line 127
    :goto_59
    invoke-interface {v5}, Lorg/jshybugger/aJ;->b()Lorg/jshybugger/aJ;

    .line 129
    if-eqz v1, :cond_61

    .line 130
    invoke-direct {p0, v5}, Lorg/jshybugger/cd;->a(Lorg/jshybugger/aJ;)V

    .line 136
    :cond_61
    :goto_61
    return-void

    :cond_62
    move v0, v1

    .line 119
    goto :goto_58

    .line 122
    :cond_64
    invoke-interface {v5, v2}, Lorg/jshybugger/aJ;->d(Ljava/lang/Object;)Lorg/jshybugger/aJ;
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_67} :catch_91

    .line 124
    :try_start_67
    invoke-virtual {v0, v8}, Lorg/jshybugger/bC;->a(I)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_6a} :catch_70

    .line 125
    add-int/lit8 v2, v4, 0x1

    if-lt v2, v7, :cond_93

    move-object v2, v3

    goto :goto_59

    .line 133
    :catch_70
    move-exception v0

    move-object v2, v3

    .line 134
    :goto_72
    if-eqz v2, :cond_7d

    invoke-virtual {v2}, Lorg/jshybugger/H;->e()Z

    move-result v3

    if-eqz v3, :cond_8d

    invoke-interface {v5, v2}, Lorg/jshybugger/aJ;->d(Ljava/lang/Object;)Lorg/jshybugger/aJ;

    :cond_7d
    :goto_7d
    invoke-interface {v5}, Lorg/jshybugger/aJ;->b()Lorg/jshybugger/aJ;

    invoke-interface {v5, v0}, Lorg/jshybugger/aJ;->a(Ljava/lang/Throwable;)Lorg/jshybugger/aJ;

    if-nez v1, :cond_89

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_61

    :cond_89
    invoke-direct {p0, v5}, Lorg/jshybugger/cd;->a(Lorg/jshybugger/aJ;)V

    goto :goto_61

    :cond_8d
    invoke-virtual {v2}, Lorg/jshybugger/H;->v()Z

    goto :goto_7d

    .line 133
    :catch_91
    move-exception v0

    goto :goto_72

    :cond_93
    move v4, v2

    goto :goto_46
.end method
