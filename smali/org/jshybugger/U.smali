.class final Lorg/jshybugger/u;
.super Ljava/lang/Object;
.source "AbstractBootstrap.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/jshybugger/ao;

.field private synthetic b:Lorg/jshybugger/aj;

.field private synthetic c:Ljava/net/SocketAddress;

.field private synthetic d:Lorg/jshybugger/aM;


# direct methods
.method constructor <init>(Lorg/jshybugger/ao;Lorg/jshybugger/aj;Ljava/net/SocketAddress;Lorg/jshybugger/aM;)V
    .registers 5

    .prologue
    .line 327
    iput-object p1, p0, Lorg/jshybugger/u;->a:Lorg/jshybugger/ao;

    iput-object p2, p0, Lorg/jshybugger/u;->b:Lorg/jshybugger/aj;

    iput-object p3, p0, Lorg/jshybugger/u;->c:Ljava/net/SocketAddress;

    iput-object p4, p0, Lorg/jshybugger/u;->d:Lorg/jshybugger/aM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 330
    iget-object v0, p0, Lorg/jshybugger/u;->a:Lorg/jshybugger/ao;

    invoke-interface {v0}, Lorg/jshybugger/ao;->d_()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 331
    iget-object v0, p0, Lorg/jshybugger/u;->b:Lorg/jshybugger/aj;

    iget-object v1, p0, Lorg/jshybugger/u;->c:Ljava/net/SocketAddress;

    iget-object v2, p0, Lorg/jshybugger/u;->d:Lorg/jshybugger/aM;

    invoke-interface {v0, v1, v2}, Lorg/jshybugger/aj;->a(Ljava/net/SocketAddress;Lorg/jshybugger/aM;)Lorg/jshybugger/ao;

    move-result-object v0

    sget-object v1, Lorg/jshybugger/ap;->b:Lorg/jshybugger/ap;

    invoke-interface {v0, v1}, Lorg/jshybugger/ao;->a(Lorg/jshybugger/fO;)Lorg/jshybugger/ao;

    .line 335
    :goto_17
    return-void

    .line 333
    :cond_18
    iget-object v0, p0, Lorg/jshybugger/u;->d:Lorg/jshybugger/aM;

    iget-object v1, p0, Lorg/jshybugger/u;->a:Lorg/jshybugger/ao;

    invoke-interface {v1}, Lorg/jshybugger/ao;->h()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jshybugger/aM;->a(Ljava/lang/Throwable;)Lorg/jshybugger/aM;

    goto :goto_17
.end method
