.class public final Lorg/jshybugger/cs;
.super Lorg/jshybugger/aR;
.source "DefaultSocketChannelConfig.java"

# interfaces
.implements Lorg/jshybugger/al;


# instance fields
.field private a:Ljava/net/Socket;

.field private volatile b:Z


# direct methods
.method public constructor <init>(Lorg/jshybugger/aj;Ljava/net/Socket;)V
    .registers 5

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/jshybugger/aR;-><init>(Lorg/jshybugger/aj;)V

    .line 46
    if-nez p2, :cond_d

    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "javaSocket"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_d
    iput-object p2, p0, Lorg/jshybugger/cs;->a:Ljava/net/Socket;

    .line 52
    invoke-static {}, Lorg/jshybugger/gp;->d()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 54
    const/4 v0, 0x1

    :try_start_16
    invoke-direct {p0, v0}, Lorg/jshybugger/cs;->e(Z)Lorg/jshybugger/al;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    .line 59
    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v0

    goto :goto_19
.end method

.method private c(Z)Lorg/jshybugger/al;
    .registers 4

    .prologue
    .line 193
    :try_start_0
    iget-object v0, p0, Lorg/jshybugger/cs;->a:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_5} :catch_6

    .line 197
    return-object p0

    .line 194
    :catch_6
    move-exception v0

    .line 195
    new-instance v1, Lorg/jshybugger/an;

    invoke-direct {v1, v0}, Lorg/jshybugger/an;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private d(Z)Lorg/jshybugger/al;
    .registers 4

    .prologue
    .line 220
    :try_start_0
    iget-object v0, p0, Lorg/jshybugger/cs;->a:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReuseAddress(Z)V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_5} :catch_6

    .line 224
    return-object p0

    .line 221
    :catch_6
    move-exception v0

    .line 222
    new-instance v1, Lorg/jshybugger/an;

    invoke-direct {v1, v0}, Lorg/jshybugger/an;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private e(Z)Lorg/jshybugger/al;
    .registers 4

    .prologue
    .line 254
    :try_start_0
    iget-object v0, p0, Lorg/jshybugger/cs;->a:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_5} :catch_6

    .line 258
    return-object p0

    .line 255
    :catch_6
    move-exception v0

    .line 256
    new-instance v1, Lorg/jshybugger/an;

    invoke-direct {v1, v0}, Lorg/jshybugger/an;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private f(I)Lorg/jshybugger/al;
    .registers 4

    .prologue
    .line 210
    :try_start_0
    iget-object v0, p0, Lorg/jshybugger/cs;->a:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReceiveBufferSize(I)V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_5} :catch_6

    .line 214
    return-object p0

    .line 211
    :catch_6
    move-exception v0

    .line 212
    new-instance v1, Lorg/jshybugger/an;

    invoke-direct {v1, v0}, Lorg/jshybugger/an;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private g(I)Lorg/jshybugger/al;
    .registers 4

    .prologue
    .line 230
    :try_start_0
    iget-object v0, p0, Lorg/jshybugger/cs;->a:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSendBufferSize(I)V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_5} :catch_6

    .line 234
    return-object p0

    .line 231
    :catch_6
    move-exception v0

    .line 232
    new-instance v1, Lorg/jshybugger/an;

    invoke-direct {v1, v0}, Lorg/jshybugger/an;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private h(I)Lorg/jshybugger/al;
    .registers 5

    .prologue
    .line 240
    if-gez p1, :cond_a

    .line 241
    :try_start_2
    iget-object v0, p0, Lorg/jshybugger/cs;->a:Ljava/net/Socket;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 248
    :goto_9
    return-object p0

    .line 243
    :cond_a
    iget-object v0, p0, Lorg/jshybugger/cs;->a:Ljava/net/Socket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/net/Socket;->setSoLinger(ZI)V
    :try_end_10
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_10} :catch_11

    goto :goto_9

    .line 245
    :catch_11
    move-exception v0

    .line 246
    new-instance v1, Lorg/jshybugger/an;

    invoke-direct {v1, v0}, Lorg/jshybugger/an;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private i(I)Lorg/jshybugger/al;
    .registers 4

    .prologue
    .line 264
    :try_start_0
    iget-object v0, p0, Lorg/jshybugger/cs;->a:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTrafficClass(I)V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_5} :catch_6

    .line 268
    return-object p0

    .line 265
    :catch_6
    move-exception v0

    .line 266
    new-instance v1, Lorg/jshybugger/an;

    invoke-direct {v1, v0}, Lorg/jshybugger/an;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private k()I
    .registers 3

    .prologue
    .line 130
    :try_start_0
    iget-object v0, p0, Lorg/jshybugger/cs;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReceiveBufferSize()I
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    return v0

    .line 131
    :catch_7
    move-exception v0

    .line 132
    new-instance v1, Lorg/jshybugger/an;

    invoke-direct {v1, v0}, Lorg/jshybugger/an;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private l()I
    .registers 3

    .prologue
    .line 139
    :try_start_0
    iget-object v0, p0, Lorg/jshybugger/cs;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSendBufferSize()I
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    return v0

    .line 140
    :catch_7
    move-exception v0

    .line 141
    new-instance v1, Lorg/jshybugger/an;

    invoke-direct {v1, v0}, Lorg/jshybugger/an;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private m()I
    .registers 3

    .prologue
    .line 148
    :try_start_0
    iget-object v0, p0, Lorg/jshybugger/cs;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoLinger()I
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    return v0

    .line 149
    :catch_7
    move-exception v0

    .line 150
    new-instance v1, Lorg/jshybugger/an;

    invoke-direct {v1, v0}, Lorg/jshybugger/an;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private n()I
    .registers 3

    .prologue
    .line 157
    :try_start_0
    iget-object v0, p0, Lorg/jshybugger/cs;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTrafficClass()I
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    return v0

    .line 158
    :catch_7
    move-exception v0

    .line 159
    new-instance v1, Lorg/jshybugger/an;

    invoke-direct {v1, v0}, Lorg/jshybugger/an;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private o()Z
    .registers 3

    .prologue
    .line 166
    :try_start_0
    iget-object v0, p0, Lorg/jshybugger/cs;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getKeepAlive()Z
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    return v0

    .line 167
    :catch_7
    move-exception v0

    .line 168
    new-instance v1, Lorg/jshybugger/an;

    invoke-direct {v1, v0}, Lorg/jshybugger/an;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private p()Z
    .registers 3

    .prologue
    .line 175
    :try_start_0
    iget-object v0, p0, Lorg/jshybugger/cs;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReuseAddress()Z
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    return v0

    .line 176
    :catch_7
    move-exception v0

    .line 177
    new-instance v1, Lorg/jshybugger/an;

    invoke-direct {v1, v0}, Lorg/jshybugger/an;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private q()Z
    .registers 3

    .prologue
    .line 184
    :try_start_0
    iget-object v0, p0, Lorg/jshybugger/cs;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTcpNoDelay()Z
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    return v0

    .line 185
    :catch_7
    move-exception v0

    .line 186
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
    .line 72
    sget-object v0, Lorg/jshybugger/aB;->o:Lorg/jshybugger/aB;

    if-ne p1, v0, :cond_d

    .line 73
    invoke-direct {p0}, Lorg/jshybugger/cs;->k()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 97
    :goto_c
    return-object v0

    .line 75
    :cond_d
    sget-object v0, Lorg/jshybugger/aB;->n:Lorg/jshybugger/aB;

    if-ne p1, v0, :cond_1a

    .line 76
    invoke-direct {p0}, Lorg/jshybugger/cs;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_c

    .line 78
    :cond_1a
    sget-object v0, Lorg/jshybugger/aB;->t:Lorg/jshybugger/aB;

    if-ne p1, v0, :cond_27

    .line 79
    invoke-direct {p0}, Lorg/jshybugger/cs;->q()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_c

    .line 81
    :cond_27
    sget-object v0, Lorg/jshybugger/aB;->m:Lorg/jshybugger/aB;

    if-ne p1, v0, :cond_34

    .line 82
    invoke-direct {p0}, Lorg/jshybugger/cs;->o()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_c

    .line 84
    :cond_34
    sget-object v0, Lorg/jshybugger/aB;->p:Lorg/jshybugger/aB;

    if-ne p1, v0, :cond_41

    .line 85
    invoke-direct {p0}, Lorg/jshybugger/cs;->p()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_c

    .line 87
    :cond_41
    sget-object v0, Lorg/jshybugger/aB;->q:Lorg/jshybugger/aB;

    if-ne p1, v0, :cond_4e

    .line 88
    invoke-direct {p0}, Lorg/jshybugger/cs;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_c

    .line 90
    :cond_4e
    sget-object v0, Lorg/jshybugger/aB;->s:Lorg/jshybugger/aB;

    if-ne p1, v0, :cond_5b

    .line 91
    invoke-direct {p0}, Lorg/jshybugger/cs;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_c

    .line 93
    :cond_5b
    sget-object v0, Lorg/jshybugger/aB;->i:Lorg/jshybugger/aB;

    if-ne p1, v0, :cond_66

    .line 94
    iget-boolean v0, p0, Lorg/jshybugger/cs;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_c

    .line 97
    :cond_66
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
    .registers 4
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
    .line 102
    invoke-static {p1, p2}, Lorg/jshybugger/cs;->b(Lorg/jshybugger/aB;Ljava/lang/Object;)V

    .line 104
    sget-object v0, Lorg/jshybugger/aB;->o:Lorg/jshybugger/aB;

    if-ne p1, v0, :cond_12

    .line 105
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jshybugger/cs;->f(I)Lorg/jshybugger/al;

    .line 124
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0

    .line 106
    :cond_12
    sget-object v0, Lorg/jshybugger/aB;->n:Lorg/jshybugger/aB;

    if-ne p1, v0, :cond_20

    .line 107
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jshybugger/cs;->g(I)Lorg/jshybugger/al;

    goto :goto_10

    .line 108
    :cond_20
    sget-object v0, Lorg/jshybugger/aB;->t:Lorg/jshybugger/aB;

    if-ne p1, v0, :cond_2e

    .line 109
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lorg/jshybugger/cs;->e(Z)Lorg/jshybugger/al;

    goto :goto_10

    .line 110
    :cond_2e
    sget-object v0, Lorg/jshybugger/aB;->m:Lorg/jshybugger/aB;

    if-ne p1, v0, :cond_3c

    .line 111
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lorg/jshybugger/cs;->c(Z)Lorg/jshybugger/al;

    goto :goto_10

    .line 112
    :cond_3c
    sget-object v0, Lorg/jshybugger/aB;->p:Lorg/jshybugger/aB;

    if-ne p1, v0, :cond_4a

    .line 113
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lorg/jshybugger/cs;->d(Z)Lorg/jshybugger/al;

    goto :goto_10

    .line 114
    :cond_4a
    sget-object v0, Lorg/jshybugger/aB;->q:Lorg/jshybugger/aB;

    if-ne p1, v0, :cond_58

    .line 115
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jshybugger/cs;->h(I)Lorg/jshybugger/al;

    goto :goto_10

    .line 116
    :cond_58
    sget-object v0, Lorg/jshybugger/aB;->s:Lorg/jshybugger/aB;

    if-ne p1, v0, :cond_66

    .line 117
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jshybugger/cs;->i(I)Lorg/jshybugger/al;

    goto :goto_10

    .line 118
    :cond_66
    sget-object v0, Lorg/jshybugger/aB;->i:Lorg/jshybugger/aB;

    if-ne p1, v0, :cond_73

    .line 119
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/jshybugger/cs;->b:Z

    goto :goto_10

    .line 121
    :cond_73
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

.method public final bridge synthetic b(Z)Lorg/jshybugger/al;
    .registers 2

    .prologue
    .line 35
    invoke-super {p0, p1}, Lorg/jshybugger/aR;->b(Z)Lorg/jshybugger/al;

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
