.class final Lorg/jshybugger/kf;
.super Lorg/jshybugger/jR;
.source "ProxyConnection.java"


# instance fields
.field private synthetic c:Ljavax/net/ssl/SSLEngine;

.field private synthetic d:Lorg/jshybugger/kd;


# direct methods
.method constructor <init>(Lorg/jshybugger/kd;Lorg/jshybugger/kd;Lorg/jshybugger/jS;Ljavax/net/ssl/SSLEngine;)V
    .registers 5

    .prologue
    .line 391
    iput-object p1, p0, Lorg/jshybugger/kf;->d:Lorg/jshybugger/kd;

    iput-object p4, p0, Lorg/jshybugger/kf;->c:Ljavax/net/ssl/SSLEngine;

    invoke-direct {p0, p2, p3}, Lorg/jshybugger/jR;-><init>(Lorg/jshybugger/kd;Lorg/jshybugger/jS;)V

    return-void
.end method


# virtual methods
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
    .line 399
    iget-object v1, p0, Lorg/jshybugger/kf;->d:Lorg/jshybugger/kd;

    iget-object v2, p0, Lorg/jshybugger/kf;->c:Ljavax/net/ssl/SSLEngine;

    iget-object v0, p0, Lorg/jshybugger/kf;->d:Lorg/jshybugger/kd;

    iget-boolean v0, v0, Lorg/jshybugger/kd;->e:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {v1, v2, v0}, Lorg/jshybugger/kd;->a(Ljavax/net/ssl/SSLEngine;Z)Lorg/jshybugger/fN;

    move-result-object v0

    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_b
.end method

.method final c()Z
    .registers 2

    .prologue
    .line 394
    const/4 v0, 0x0

    return v0
.end method
