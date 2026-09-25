.class final Lorg/jshybugger/kx;
.super Lorg/jshybugger/kj;
.source "ProxyToServerConnection.java"


# instance fields
.field private synthetic b:Lorg/jshybugger/kq;


# direct methods
.method constructor <init>(Lorg/jshybugger/kq;)V
    .registers 2

    .prologue
    .line 777
    iput-object p1, p0, Lorg/jshybugger/kx;->b:Lorg/jshybugger/kq;

    invoke-direct {p0, p1}, Lorg/jshybugger/kj;-><init>(Lorg/jshybugger/kd;)V

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .registers 5

    .prologue
    .line 780
    new-instance v0, Lorg/jshybugger/jw;

    iget-object v1, p0, Lorg/jshybugger/kx;->b:Lorg/jshybugger/kq;

    invoke-static {v1}, Lorg/jshybugger/kq;->h(Lorg/jshybugger/kq;)Lorg/jshybugger/jG;

    move-result-object v1

    iget-object v2, p0, Lorg/jshybugger/kx;->b:Lorg/jshybugger/kq;

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/jw;-><init>(Lorg/jshybugger/jG;Lorg/jshybugger/kq;)V

    .line 782
    iget-object v0, p0, Lorg/jshybugger/kx;->b:Lorg/jshybugger/kq;

    iget-object v0, v0, Lorg/jshybugger/kq;->d:Lorg/jshybugger/jT;

    invoke-virtual {v0}, Lorg/jshybugger/jT;->j()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_19

    .line 786
    :cond_23
    return-void
.end method
