.class final Lorg/jshybugger/cg;
.super Ljava/lang/Object;
.source "AbstractNioChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/net/SocketAddress;

.field private synthetic b:Lorg/jshybugger/cf;


# direct methods
.method constructor <init>(Lorg/jshybugger/cf;Ljava/net/SocketAddress;)V
    .registers 3

    .prologue
    .line 181
    iput-object p1, p0, Lorg/jshybugger/cg;->b:Lorg/jshybugger/cf;

    iput-object p2, p0, Lorg/jshybugger/cg;->a:Ljava/net/SocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 184
    iget-object v0, p0, Lorg/jshybugger/cg;->b:Lorg/jshybugger/cf;

    iget-object v0, v0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    invoke-static {v0}, Lorg/jshybugger/ce;->a(Lorg/jshybugger/ce;)Lorg/jshybugger/aM;

    move-result-object v0

    .line 185
    new-instance v1, Lorg/jshybugger/aQ;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connection timed out: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/jshybugger/cg;->a:Ljava/net/SocketAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jshybugger/aQ;-><init>(Ljava/lang/String;)V

    .line 187
    if-eqz v0, :cond_33

    invoke-interface {v0, v1}, Lorg/jshybugger/aM;->b(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 188
    iget-object v0, p0, Lorg/jshybugger/cg;->b:Lorg/jshybugger/cf;

    iget-object v1, p0, Lorg/jshybugger/cg;->b:Lorg/jshybugger/cf;

    iget-object v1, v1, Lorg/jshybugger/Z;->a:Lorg/jshybugger/Y;

    invoke-static {v1}, Lorg/jshybugger/Y;->d(Lorg/jshybugger/Y;)Lorg/jshybugger/bH;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jshybugger/cf;->b(Lorg/jshybugger/aM;)V

    .line 190
    :cond_33
    return-void
.end method
