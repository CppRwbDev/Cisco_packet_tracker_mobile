.class final Lorg/jshybugger/y;
.super Ljava/lang/Object;
.source "Bootstrap.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/jshybugger/ao;

.field private synthetic b:Ljava/net/SocketAddress;

.field private synthetic c:Lorg/jshybugger/aj;

.field private synthetic d:Ljava/net/SocketAddress;

.field private synthetic e:Lorg/jshybugger/aM;


# direct methods
.method constructor <init>(Lorg/jshybugger/ao;Ljava/net/SocketAddress;Lorg/jshybugger/aj;Ljava/net/SocketAddress;Lorg/jshybugger/aM;)V
    .registers 6

    .prologue
    .line 160
    iput-object p1, p0, Lorg/jshybugger/y;->a:Lorg/jshybugger/ao;

    iput-object p2, p0, Lorg/jshybugger/y;->b:Ljava/net/SocketAddress;

    iput-object p3, p0, Lorg/jshybugger/y;->c:Lorg/jshybugger/aj;

    iput-object p4, p0, Lorg/jshybugger/y;->d:Ljava/net/SocketAddress;

    iput-object p5, p0, Lorg/jshybugger/y;->e:Lorg/jshybugger/aM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 163
    iget-object v0, p0, Lorg/jshybugger/y;->a:Lorg/jshybugger/ao;

    invoke-interface {v0}, Lorg/jshybugger/ao;->d_()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 164
    iget-object v0, p0, Lorg/jshybugger/y;->b:Ljava/net/SocketAddress;

    if-nez v0, :cond_1d

    .line 165
    iget-object v0, p0, Lorg/jshybugger/y;->c:Lorg/jshybugger/aj;

    iget-object v1, p0, Lorg/jshybugger/y;->d:Ljava/net/SocketAddress;

    iget-object v2, p0, Lorg/jshybugger/y;->e:Lorg/jshybugger/aM;

    invoke-interface {v0, v1, v2}, Lorg/jshybugger/aj;->b(Ljava/net/SocketAddress;Lorg/jshybugger/aM;)Lorg/jshybugger/ao;

    .line 169
    :goto_15
    iget-object v0, p0, Lorg/jshybugger/y;->e:Lorg/jshybugger/aM;

    sget-object v1, Lorg/jshybugger/ap;->b:Lorg/jshybugger/ap;

    invoke-interface {v0, v1}, Lorg/jshybugger/aM;->c(Lorg/jshybugger/fO;)Lorg/jshybugger/aM;

    .line 173
    :goto_1c
    return-void

    .line 167
    :cond_1d
    iget-object v0, p0, Lorg/jshybugger/y;->c:Lorg/jshybugger/aj;

    iget-object v1, p0, Lorg/jshybugger/y;->d:Ljava/net/SocketAddress;

    iget-object v2, p0, Lorg/jshybugger/y;->b:Ljava/net/SocketAddress;

    iget-object v3, p0, Lorg/jshybugger/y;->e:Lorg/jshybugger/aM;

    invoke-interface {v0, v1, v2, v3}, Lorg/jshybugger/aj;->a(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/jshybugger/aM;)Lorg/jshybugger/ao;

    goto :goto_15

    .line 171
    :cond_29
    iget-object v0, p0, Lorg/jshybugger/y;->e:Lorg/jshybugger/aM;

    iget-object v1, p0, Lorg/jshybugger/y;->a:Lorg/jshybugger/ao;

    invoke-interface {v1}, Lorg/jshybugger/ao;->h()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jshybugger/aM;->a(Ljava/lang/Throwable;)Lorg/jshybugger/aM;

    goto :goto_1c
.end method
