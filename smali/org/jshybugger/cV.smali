.class public Lorg/jshybugger/cv;
.super Lorg/jshybugger/cj;
.source "NioServerSocketChannel.java"

# interfaces
.implements Lorg/jshybugger/ct;


# static fields
.field private static final e:Lorg/jshybugger/aA;

.field private static final f:Lorg/jshybugger/gX;


# instance fields
.field private final g:Lorg/jshybugger/cu;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 42
    new-instance v0, Lorg/jshybugger/aA;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jshybugger/aA;-><init>(Z)V

    sput-object v0, Lorg/jshybugger/cv;->e:Lorg/jshybugger/aA;

    .line 44
    const-class v0, Lorg/jshybugger/cv;

    invoke-static {v0}, Lorg/jshybugger/gY;->a(Ljava/lang/Class;)Lorg/jshybugger/gX;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/cv;->f:Lorg/jshybugger/gX;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-static {}, Lorg/jshybugger/cv;->L()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v1

    const/16 v2, 0x10

    invoke-direct {p0, v0, v1, v2}, Lorg/jshybugger/cj;-><init>(Lorg/jshybugger/aj;Ljava/nio/channels/SelectableChannel;I)V

    .line 62
    new-instance v1, Lorg/jshybugger/cr;

    invoke-super {p0}, Lorg/jshybugger/cj;->G()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lorg/jshybugger/cr;-><init>(Lorg/jshybugger/ct;Ljava/net/ServerSocket;)V

    iput-object v1, p0, Lorg/jshybugger/cv;->g:Lorg/jshybugger/cu;

    .line 63
    return-void
.end method

.method private static L()Ljava/nio/channels/ServerSocketChannel;
    .registers 3

    .prologue
    .line 48
    :try_start_0
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 49
    :catch_5
    move-exception v0

    .line 50
    new-instance v1, Lorg/jshybugger/an;

    const-string v2, "Failed to open a server socket."

    invoke-direct {v1, v2, v0}, Lorg/jshybugger/an;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final bridge synthetic A()Lorg/jshybugger/al;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lorg/jshybugger/cv;->g:Lorg/jshybugger/cu;

    return-object v0
.end method

.method public final C()Z
    .registers 2

    .prologue
    .line 82
    invoke-super {p0}, Lorg/jshybugger/cj;->G()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v0

    return v0
.end method

.method public final D()Lorg/jshybugger/aA;
    .registers 2

    .prologue
    .line 72
    sget-object v0, Lorg/jshybugger/cv;->e:Lorg/jshybugger/aA;

    return-object v0
.end method

.method protected final E()Z
    .registers 2

    .prologue
    .line 156
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final bridge synthetic G()Ljava/nio/channels/SelectableChannel;
    .registers 2

    .prologue
    .line 39
    invoke-super {p0}, Lorg/jshybugger/cj;->G()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/ServerSocketChannel;

    return-object v0
.end method

.method protected final K()V
    .registers 2

    .prologue
    .line 141
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final a(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 112
    invoke-super {p0}, Lorg/jshybugger/cj;->G()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_21

    .line 116
    :try_start_c
    new-instance v0, Lorg/jshybugger/cw;

    invoke-direct {v0, p0, v1}, Lorg/jshybugger/cw;-><init>(Lorg/jshybugger/aj;Ljava/nio/channels/SocketChannel;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_14} :catch_16

    .line 117
    const/4 v0, 0x1

    .line 129
    :goto_15
    return v0

    .line 119
    :catch_16
    move-exception v0

    .line 120
    sget-object v2, Lorg/jshybugger/cv;->f:Lorg/jshybugger/gX;

    const-string v3, "Failed to create a new channel from an accepted socket."

    invoke-interface {v2, v3, v0}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    :try_start_1e
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_21} :catch_23

    .line 129
    :cond_21
    :goto_21
    const/4 v0, 0x0

    goto :goto_15

    .line 124
    :catch_23
    move-exception v0

    .line 125
    sget-object v1, Lorg/jshybugger/cv;->f:Lorg/jshybugger/gX;

    const-string v2, "Failed to close a socket."

    invoke-interface {v1, v2, v0}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21
.end method

.method protected final a(Ljava/net/SocketAddress;)V
    .registers 4

    .prologue
    .line 102
    invoke-super {p0}, Lorg/jshybugger/cj;->G()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    iget-object v1, p0, Lorg/jshybugger/cv;->g:Lorg/jshybugger/cu;

    invoke-interface {v1}, Lorg/jshybugger/cu;->k()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 103
    return-void
.end method

.method protected final a(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z
    .registers 4

    .prologue
    .line 136
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final bridge synthetic e()Ljava/net/SocketAddress;
    .registers 2

    .prologue
    .line 39
    invoke-super {p0}, Lorg/jshybugger/cj;->e()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public final bridge synthetic f()Ljava/net/SocketAddress;
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final r()Ljava/net/SocketAddress;
    .registers 2

    .prologue
    .line 97
    invoke-super {p0}, Lorg/jshybugger/cj;->G()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected final s()Ljava/net/SocketAddress;
    .registers 2

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final u()V
    .registers 2

    .prologue
    .line 151
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final v()V
    .registers 2

    .prologue
    .line 107
    invoke-super {p0}, Lorg/jshybugger/cj;->G()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V

    .line 108
    return-void
.end method
