.class final Lorg/jshybugger/kv;
.super Lorg/jshybugger/jR;
.source "ProxyToServerConnection.java"


# instance fields
.field final synthetic c:Lorg/jshybugger/kq;


# direct methods
.method constructor <init>(Lorg/jshybugger/kq;Lorg/jshybugger/kd;Lorg/jshybugger/jS;)V
    .registers 4

    .prologue
    .line 585
    iput-object p1, p0, Lorg/jshybugger/kv;->c:Lorg/jshybugger/kq;

    invoke-direct {p0, p2, p3}, Lorg/jshybugger/jR;-><init>(Lorg/jshybugger/kd;Lorg/jshybugger/jS;)V

    return-void
.end method


# virtual methods
.method final a()Z
    .registers 2

    .prologue
    .line 593
    const/4 v0, 0x1

    return v0
.end method

.method protected final b()Lorg/jshybugger/fN;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jshybugger/fN",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 598
    iget-object v0, p0, Lorg/jshybugger/kv;->c:Lorg/jshybugger/kq;

    invoke-static {v0}, Lorg/jshybugger/kq;->h(Lorg/jshybugger/kq;)Lorg/jshybugger/jG;

    move-result-object v0

    iget-object v1, p0, Lorg/jshybugger/kv;->c:Lorg/jshybugger/kq;

    iget-object v1, v1, Lorg/jshybugger/kq;->d:Lorg/jshybugger/jT;

    invoke-virtual {v1}, Lorg/jshybugger/jT;->g()Lorg/jshybugger/jC;

    move-result-object v1

    iget-object v2, p0, Lorg/jshybugger/kv;->c:Lorg/jshybugger/kq;

    iget-object v2, v2, Lorg/jshybugger/kq;->j:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    invoke-interface {v1}, Lorg/jshybugger/jC;->b()Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/jshybugger/jG;->a(Ljavax/net/ssl/SSLEngine;Z)Lorg/jshybugger/fN;

    move-result-object v0

    new-instance v1, Lorg/jshybugger/kw;

    invoke-direct {v1, p0}, Lorg/jshybugger/kw;-><init>(Lorg/jshybugger/kv;)V

    invoke-interface {v0, v1}, Lorg/jshybugger/fN;->d(Lorg/jshybugger/fO;)Lorg/jshybugger/fN;

    move-result-object v0

    return-object v0
.end method

.method final c()Z
    .registers 2

    .prologue
    .line 588
    const/4 v0, 0x0

    return v0
.end method
