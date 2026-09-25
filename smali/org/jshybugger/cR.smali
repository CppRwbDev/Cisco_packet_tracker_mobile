.class public final Lorg/jshybugger/cr;
.super Lorg/jshybugger/aR;
.source "DefaultServerSocketChannelConfig.java"

# interfaces
.implements Lorg/jshybugger/cu;


# instance fields
.field private a:Ljava/net/ServerSocket;

.field private volatile b:I


# direct methods
.method public constructor <init>(Lorg/jshybugger/ct;Ljava/net/ServerSocket;)V
    .registers 5

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/jshybugger/aR;-><init>(Lorg/jshybugger/aj;)V

    .line 39
    sget v0, Lorg/jshybugger/fk;->a:I

    iput v0, p0, Lorg/jshybugger/cr;->b:I

    .line 46
    if-nez p2, :cond_11

    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "javaSocket"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_11
    iput-object p2, p0, Lorg/jshybugger/cr;->a:Ljava/net/ServerSocket;

    .line 50
    return-void
.end method

.method private c(Z)Lorg/jshybugger/cu;
    .registers 4

    .prologue
    .line 102
    :try_start_0
    iget-object v0, p0, Lorg/jshybugger/cr;->a:Ljava/net/ServerSocket;

    invoke-virtual {v0, p1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_5} :catch_6

    .line 106
    return-object p0

    .line 103
    :catch_6
    move-exception v0

    .line 104
    new-instance v1, Lorg/jshybugger/an;

    invoke-direct {v1, v0}, Lorg/jshybugger/an;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private f(I)Lorg/jshybugger/cu;
    .registers 4

    .prologue
    .line 121
    :try_start_0
    iget-object v0, p0, Lorg/jshybugger/cr;->a:Ljava/net/ServerSocket;

    invoke-virtual {v0, p1}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_5} :catch_6

    .line 125
    return-object p0

    .line 122
    :catch_6
    move-exception v0

    .line 123
    new-instance v1, Lorg/jshybugger/an;

    invoke-direct {v1, v0}, Lorg/jshybugger/an;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private l()Z
    .registers 3

    .prologue
    .line 93
    :try_start_0
    iget-object v0, p0, Lorg/jshybugger/cr;->a:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getReuseAddress()Z
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    return v0

    .line 94
    :catch_7
    move-exception v0

    .line 95
    new-instance v1, Lorg/jshybugger/an;

    invoke-direct {v1, v0}, Lorg/jshybugger/an;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private m()I
    .registers 3

    .prologue
    .line 112
    :try_start_0
    iget-object v0, p0, Lorg/jshybugger/cr;->a:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getReceiveBufferSize()I
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    return v0

    .line 113
    :catch_7
    move-exception v0

    .line 114
    new-instance v1, Lorg/jshybugger/an;

    invoke-direct {v1, v0}, Lorg/jshybugger/an;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(Lorg/jshybugger/aB;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jshybugger/aB",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 60
    sget-object v0, Lorg/jshybugger/aB;->o:Lorg/jshybugger/aB;

    if-ne p1, v0, :cond_d

    .line 61
    invoke-direct {p0}, Lorg/jshybugger/cr;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 70
    :goto_c
    return-object v0

    .line 63
    :cond_d
    sget-object v0, Lorg/jshybugger/aB;->p:Lorg/jshybugger/aB;

    if-ne p1, v0, :cond_1a

    .line 64
    invoke-direct {p0}, Lorg/jshybugger/cr;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_c

    .line 66
    :cond_1a
    sget-object v0, Lorg/jshybugger/aB;->r:Lorg/jshybugger/aB;

    if-ne p1, v0, :cond_25

    .line 67
    iget v0, p0, Lorg/jshybugger/cr;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_c

    .line 70
    :cond_25
    invoke-super {p0, p1}, Lorg/jshybugger/aR;->a(Lorg/jshybugger/aB;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c
.end method

.method public final bridge synthetic a(I)Lorg/jshybugger/al;
    .registers 2

    .prologue
    .line 35
    invoke-super {p0, p1}, Lorg/jshybugger/aR;->a(I)Lorg/jshybugger/al;

    return-object p0
.end method

.method public final bridge synthetic a(Lorg/jshybugger/I;)Lorg/jshybugger/al;
    .registers 2

    .prologue
    .line 35
    invoke-super {p0, p1}, Lorg/jshybugger/aR;->a(Lorg/jshybugger/I;)Lorg/jshybugger/al;

    return-object p0
.end method

.method public final bridge synthetic a(Lorg/jshybugger/bB;)Lorg/jshybugger/al;
    .registers 2

    .prologue
    .line 35
    invoke-super {p0, p1}, Lorg/jshybugger/aR;->a(Lorg/jshybugger/bB;)Lorg/jshybugger/al;

    return-object p0
.end method

.method public final bridge synthetic a(Lorg/jshybugger/by;)Lorg/jshybugger/al;
    .registers 2

    .prologue
    .line 35
    invoke-super {p0, p1}, Lorg/jshybugger/aR;->a(Lorg/jshybugger/by;)Lorg/jshybugger/al;

    return-object p0
.end method

.method public final bridge synthetic a(Z)Lorg/jshybugger/al;
    .registers 2

    .prologue
    .line 35
    invoke-super {p0, p1}, Lorg/jshybugger/aR;->a(Z)Lorg/jshybugger/al;

    return-object p0
.end method

.method public final a(Lorg/jshybugger/aB;Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jshybugger/aB",
            "<TT;>;TT;)Z"
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {p1, p2}, Lorg/jshybugger/cr;->b(Lorg/jshybugger/aB;Ljava/lang/Object;)V

    .line 77
    sget-object v0, Lorg/jshybugger/aB;->o:Lorg/jshybugger/aB;

    if-ne p1, v0, :cond_12

    .line 78
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jshybugger/cr;->f(I)Lorg/jshybugger/cu;

    .line 87
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0

    .line 79
    :cond_12
    sget-object v0, Lorg/jshybugger/aB;->p:Lorg/jshybugger/aB;

    if-ne p1, v0, :cond_20

    .line 80
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lorg/jshybugger/cr;->c(Z)Lorg/jshybugger/cu;

    goto :goto_10

    .line 81
    :cond_20
    sget-object v0, Lorg/jshybugger/aB;->r:Lorg/jshybugger/aB;

    if-ne p1, v0, :cond_44

    .line 82
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_41

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "backlog: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_41
    iput v0, p0, Lorg/jshybugger/cr;->b:I

    goto :goto_10

    .line 84
    :cond_44
    invoke-super {p0, p1, p2}, Lorg/jshybugger/aR;->a(Lorg/jshybugger/aB;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_11
.end method

.method public final bridge synthetic b(I)Lorg/jshybugger/al;
    .registers 2

    .prologue
    .line 35
    invoke-super {p0, p1}, Lorg/jshybugger/aR;->b(I)Lorg/jshybugger/al;

    return-object p0
.end method

.method public final bridge synthetic c(I)Lorg/jshybugger/al;
    .registers 2

    .prologue
    .line 35
    invoke-super {p0, p1}, Lorg/jshybugger/aR;->c(I)Lorg/jshybugger/al;

    return-object p0
.end method

.method public final bridge synthetic d(I)Lorg/jshybugger/al;
    .registers 2

    .prologue
    .line 35
    invoke-super {p0, p1}, Lorg/jshybugger/aR;->d(I)Lorg/jshybugger/al;

    return-object p0
.end method

.method public final bridge synthetic e(I)Lorg/jshybugger/al;
    .registers 2

    .prologue
    .line 35
    invoke-super {p0, p1}, Lorg/jshybugger/aR;->e(I)Lorg/jshybugger/al;

    return-object p0
.end method

.method public final k()I
    .registers 2

    .prologue
    .line 136
    iget v0, p0, Lorg/jshybugger/cr;->b:I

    return v0
.end method
