.class public final Lorg/jshybugger/cw;
.super Lorg/jshybugger/cb;
.source "NioSocketChannel.java"

# interfaces
.implements Lorg/jshybugger/aj;


# static fields
.field private static final e:Lorg/jshybugger/aA;


# instance fields
.field private final f:Lorg/jshybugger/al;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 44
    new-instance v0, Lorg/jshybugger/aA;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jshybugger/aA;-><init>(Z)V

    sput-object v0, Lorg/jshybugger/cw;->e:Lorg/jshybugger/aA;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 60
    invoke-static {}, Lorg/jshybugger/cw;->L()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jshybugger/cw;-><init>(Ljava/nio/channels/SocketChannel;)V

    .line 61
    return-void
.end method

.method private constructor <init>(Ljava/nio/channels/SocketChannel;)V
    .registers 3

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/jshybugger/cw;-><init>(Lorg/jshybugger/aj;Ljava/nio/channels/SocketChannel;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/jshybugger/aj;Ljava/nio/channels/SocketChannel;)V
    .registers 5

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lorg/jshybugger/cb;-><init>(Lorg/jshybugger/aj;Ljava/nio/channels/SelectableChannel;)V

    .line 78
    new-instance v0, Lorg/jshybugger/cs;

    invoke-virtual {p2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/jshybugger/cs;-><init>(Lorg/jshybugger/aj;Ljava/net/Socket;)V

    iput-object v0, p0, Lorg/jshybugger/cw;->f:Lorg/jshybugger/al;

    .line 79
    return-void
.end method

.method private static L()Ljava/nio/channels/SocketChannel;
    .registers 3

    .prologue
    .line 48
    :try_start_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 49
    :catch_5
    move-exception v0

    .line 50
    new-instance v1, Lorg/jshybugger/an;

    const-string v2, "Failed to open a socket."

    invoke-direct {v1, v2, v0}, Lorg/jshybugger/an;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final bridge synthetic A()Lorg/jshybugger/al;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lorg/jshybugger/cw;->f:Lorg/jshybugger/al;

    return-object v0
.end method

.method public final C()Z
    .registers 3

    .prologue
    .line 103
    invoke-super {p0}, Lorg/jshybugger/cb;->G()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 104
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public final D()Lorg/jshybugger/aA;
    .registers 2

    .prologue
    .line 88
    sget-object v0, Lorg/jshybugger/cw;->e:Lorg/jshybugger/aA;

    return-object v0
.end method

.method protected final bridge synthetic G()Ljava/nio/channels/SelectableChannel;
    .registers 2

    .prologue
    .line 42
    invoke-super {p0}, Lorg/jshybugger/cb;->G()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    return-object v0
.end method

.method protected final K()V
    .registers 2

    .prologue
    .line 191
    invoke-super {p0}, Lorg/jshybugger/cb;->G()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v0

    if-nez v0, :cond_12

    .line 192
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 194
    :cond_12
    return-void
.end method

.method protected final a(Lorg/jshybugger/H;)I
    .registers 4

    .prologue
    .line 208
    invoke-super {p0}, Lorg/jshybugger/cb;->G()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {p1}, Lorg/jshybugger/H;->g()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/jshybugger/H;->a(Ljava/nio/channels/ScatteringByteChannel;I)I

    move-result v0

    return v0
.end method

.method protected final a(Lorg/jshybugger/bx;)J
    .registers 4

    .prologue
    .line 220
    invoke-super {p0}, Lorg/jshybugger/cb;->G()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-interface {p1}, Lorg/jshybugger/bx;->c()J

    move-result-wide v0

    .line 222
    return-wide v0
.end method

.method protected final a(Ljava/net/SocketAddress;)V
    .registers 3

    .prologue
    .line 165
    invoke-super {p0}, Lorg/jshybugger/cb;->G()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 166
    return-void
.end method

.method protected final a(Lorg/jshybugger/aC;)V
    .registers 21

    .prologue
    .line 229
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/jshybugger/aC;->h()I

    move-result v3

    .line 230
    const/4 v2, 0x1

    if-gt v3, v2, :cond_b

    .line 231
    invoke-super/range {p0 .. p1}, Lorg/jshybugger/cb;->a(Lorg/jshybugger/aC;)V

    .line 299
    :goto_a
    return-void

    .line 236
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lorg/jshybugger/aC;->d()[Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 237
    if-nez v12, :cond_15

    .line 238
    invoke-super/range {p0 .. p1}, Lorg/jshybugger/cb;->a(Lorg/jshybugger/aC;)V

    goto :goto_a

    .line 242
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lorg/jshybugger/aC;->e()I

    move-result v13

    .line 243
    invoke-virtual/range {p1 .. p1}, Lorg/jshybugger/aC;->f()J

    move-result-wide v10

    .line 245
    invoke-super/range {p0 .. p0}, Lorg/jshybugger/cb;->G()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SocketChannel;

    .line 246
    const-wide/16 v8, 0x0

    .line 247
    const/4 v5, 0x0

    .line 248
    const/4 v4, 0x0

    .line 249
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jshybugger/cw;->f:Lorg/jshybugger/al;

    invoke-interface {v6}, Lorg/jshybugger/al;->c()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move/from16 v18, v6

    move-wide v6, v8

    move/from16 v8, v18

    :goto_36
    if-ltz v8, :cond_b5

    .line 250
    const/4 v9, 0x0

    invoke-virtual {v2, v12, v9, v13}, Ljava/nio/channels/SocketChannel;->write([Ljava/nio/ByteBuffer;II)J

    move-result-wide v14

    .line 251
    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-nez v9, :cond_54

    .line 252
    const/4 v2, 0x1

    move/from16 v18, v2

    move v2, v5

    move-wide v4, v6

    move/from16 v6, v18

    .line 263
    :goto_4a
    if-eqz v2, :cond_70

    .line 265
    :goto_4c
    if-lez v3, :cond_66

    .line 266
    invoke-virtual/range {p1 .. p1}, Lorg/jshybugger/aC;->c()Z

    .line 265
    add-int/lit8 v3, v3, -0x1

    goto :goto_4c

    .line 255
    :cond_54
    sub-long/2addr v10, v14

    .line 256
    add-long/2addr v6, v14

    .line 257
    const-wide/16 v14, 0x0

    cmp-long v9, v10, v14

    if-nez v9, :cond_63

    .line 258
    const/4 v2, 0x1

    move/from16 v18, v4

    move-wide v4, v6

    move/from16 v6, v18

    .line 259
    goto :goto_4a

    .line 249
    :cond_63
    add-int/lit8 v8, v8, -0x1

    goto :goto_36

    .line 270
    :cond_66
    invoke-virtual/range {p1 .. p1}, Lorg/jshybugger/aC;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    invoke-virtual/range {p0 .. p0}, Lorg/jshybugger/cw;->E()V

    goto :goto_a

    .line 278
    :cond_70
    :goto_70
    if-lez v3, :cond_a4

    .line 279
    invoke-virtual/range {p1 .. p1}, Lorg/jshybugger/aC;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jshybugger/H;

    .line 280
    invoke-virtual {v2}, Lorg/jshybugger/H;->b()I

    move-result v7

    .line 281
    invoke-virtual {v2}, Lorg/jshybugger/H;->c()I

    move-result v8

    sub-int/2addr v8, v7

    .line 283
    int-to-long v10, v8

    cmp-long v9, v10, v4

    if-gez v9, :cond_95

    .line 284
    int-to-long v10, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lorg/jshybugger/aC;->a(J)V

    .line 285
    invoke-virtual/range {p1 .. p1}, Lorg/jshybugger/aC;->c()Z

    .line 286
    int-to-long v8, v8

    sub-long/2addr v4, v8

    .line 278
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_70

    .line 287
    :cond_95
    int-to-long v10, v8

    cmp-long v3, v10, v4

    if-lez v3, :cond_ab

    .line 288
    long-to-int v3, v4

    add-int/2addr v3, v7

    invoke-virtual {v2, v3}, Lorg/jshybugger/H;->a(I)Lorg/jshybugger/H;

    .line 289
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/jshybugger/aC;->a(J)V

    .line 298
    :cond_a4
    :goto_a4
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/jshybugger/cw;->a(Z)V

    goto/16 :goto_a

    .line 292
    :cond_ab
    int-to-long v2, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/jshybugger/aC;->a(J)V

    .line 293
    invoke-virtual/range {p1 .. p1}, Lorg/jshybugger/aC;->c()Z

    goto :goto_a4

    :cond_b5
    move v2, v5

    move/from16 v18, v4

    move-wide v4, v6

    move/from16 v6, v18

    goto :goto_4a
.end method

.method protected final a(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z
    .registers 6

    .prologue
    .line 170
    if-eqz p2, :cond_f

    .line 171
    invoke-super {p0}, Lorg/jshybugger/cb;->G()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 176
    :cond_f
    :try_start_f
    invoke-super {p0}, Lorg/jshybugger/cb;->G()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    move-result v0

    .line 177
    if-nez v0, :cond_24

    .line 178
    invoke-virtual {p0}, Lorg/jshybugger/cw;->I()Ljava/nio/channels/SelectionKey;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_25

    .line 181
    :cond_24
    return v0

    .line 183
    :catchall_25
    move-exception v0

    move-object v1, v0

    .line 184
    invoke-super {p0}, Lorg/jshybugger/cb;->G()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    throw v1
.end method

.method protected final b(Lorg/jshybugger/H;)I
    .registers 4

    .prologue
    .line 213
    invoke-virtual {p1}, Lorg/jshybugger/H;->f()I

    move-result v1

    .line 214
    invoke-super {p0}, Lorg/jshybugger/cb;->G()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {p1, v0, v1}, Lorg/jshybugger/H;->a(Ljava/nio/channels/GatheringByteChannel;I)I

    move-result v0

    .line 215
    return v0
.end method

.method public final bridge synthetic e()Ljava/net/SocketAddress;
    .registers 2

    .prologue
    .line 42
    invoke-super {p0}, Lorg/jshybugger/cb;->e()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public final bridge synthetic f()Ljava/net/SocketAddress;
    .registers 2

    .prologue
    .line 42
    invoke-super {p0}, Lorg/jshybugger/cb;->f()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method protected final r()Ljava/net/SocketAddress;
    .registers 2

    .prologue
    .line 155
    invoke-super {p0}, Lorg/jshybugger/cb;->G()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected final s()Ljava/net/SocketAddress;
    .registers 2

    .prologue
    .line 160
    invoke-super {p0}, Lorg/jshybugger/cb;->G()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected final u()V
    .registers 2

    .prologue
    .line 198
    invoke-super {p0}, Lorg/jshybugger/cb;->G()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    .line 199
    return-void
.end method

.method protected final v()V
    .registers 2

    .prologue
    .line 203
    invoke-super {p0}, Lorg/jshybugger/cb;->G()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    .line 204
    return-void
.end method
