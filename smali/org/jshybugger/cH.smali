.class final Lorg/jshybugger/ch;
.super Ljava/lang/Object;
.source "AbstractNioChannel.java"

# interfaces
.implements Lorg/jshybugger/ap;


# instance fields
.field private synthetic c:Lorg/jshybugger/cf;


# direct methods
.method constructor <init>(Lorg/jshybugger/cf;)V
    .registers 2

    .prologue
    .line 194
    iput-object p1, p0, Lorg/jshybugger/ch;->c:Lorg/jshybugger/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lorg/jshybugger/fN;)V
    .registers 4

    .prologue
    .line 194
    check-cast p1, Lorg/jshybugger/ao;

    invoke-interface {p1}, Lorg/jshybugger/ao;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lorg/jshybugger/ch;->c:Lorg/jshybugger/cf;

    iget-object v0, v0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    invoke-static {v0}, Lorg/jshybugger/ce;->b(Lorg/jshybugger/ce;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lorg/jshybugger/ch;->c:Lorg/jshybugger/cf;

    iget-object v0, v0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    invoke-static {v0}, Lorg/jshybugger/ce;->b(Lorg/jshybugger/ce;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1e
    iget-object v0, p0, Lorg/jshybugger/ch;->c:Lorg/jshybugger/cf;

    iget-object v0, v0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/jshybugger/ce;->a(Lorg/jshybugger/ce;Lorg/jshybugger/aM;)Lorg/jshybugger/aM;

    iget-object v0, p0, Lorg/jshybugger/ch;->c:Lorg/jshybugger/cf;

    iget-object v1, p0, Lorg/jshybugger/ch;->c:Lorg/jshybugger/cf;

    iget-object v1, v1, Lorg/jshybugger/Z;->a:Lorg/jshybugger/Y;

    invoke-static {v1}, Lorg/jshybugger/Y;->d(Lorg/jshybugger/Y;)Lorg/jshybugger/bH;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jshybugger/cf;->b(Lorg/jshybugger/aM;)V

    :cond_33
    return-void
.end method
