.class final Lorg/jshybugger/jI;
.super Lorg/jshybugger/jR;
.source "ClientToProxyConnection.java"


# instance fields
.field private synthetic c:Lorg/jshybugger/jG;


# direct methods
.method constructor <init>(Lorg/jshybugger/jG;Lorg/jshybugger/kd;Lorg/jshybugger/jS;)V
    .registers 4

    .prologue
    .line 360
    iput-object p1, p0, Lorg/jshybugger/jI;->c:Lorg/jshybugger/jG;

    invoke-direct {p0, p2, p3}, Lorg/jshybugger/jR;-><init>(Lorg/jshybugger/kd;Lorg/jshybugger/jS;)V

    return-void
.end method


# virtual methods
.method final a()Z
    .registers 2

    .prologue
    .line 363
    const/4 v0, 0x1

    return v0
.end method

.method protected final b()Lorg/jshybugger/fN;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jshybugger/fN",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Lorg/jshybugger/jI;->c:Lorg/jshybugger/jG;

    iget-object v0, v0, Lorg/jshybugger/jG;->c:Lorg/jshybugger/kp;

    const-string v1, "Responding with CONNECT successful"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/jshybugger/kp;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    iget-object v0, p0, Lorg/jshybugger/jI;->c:Lorg/jshybugger/jG;

    sget-object v1, Lorg/jshybugger/ec;->b:Lorg/jshybugger/ec;

    invoke-static {}, Lorg/jshybugger/jG;->l()Lorg/jshybugger/ea;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/jshybugger/jG;->a(Lorg/jshybugger/jG;Lorg/jshybugger/ec;Lorg/jshybugger/ea;)Lorg/jshybugger/dh;

    move-result-object v0

    .line 370
    invoke-interface {v0}, Lorg/jshybugger/dX;->f()Lorg/jshybugger/dJ;

    move-result-object v1

    const-string v2, "Connection"

    const-string v3, "Keep-Alive"

    invoke-virtual {v1, v2, v3}, Lorg/jshybugger/dJ;->b(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/dJ;

    .line 371
    invoke-interface {v0}, Lorg/jshybugger/dX;->f()Lorg/jshybugger/dJ;

    move-result-object v1

    const-string v2, "Proxy-Connection"

    const-string v3, "Keep-Alive"

    invoke-virtual {v1, v2, v3}, Lorg/jshybugger/dJ;->b(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/dJ;

    .line 372
    invoke-static {v0}, Lorg/jshybugger/kD;->a(Lorg/jshybugger/dL;)V

    .line 373
    iget-object v1, p0, Lorg/jshybugger/jI;->c:Lorg/jshybugger/jG;

    invoke-virtual {v1, v0}, Lorg/jshybugger/jG;->e(Ljava/lang/Object;)Lorg/jshybugger/ao;

    move-result-object v0

    return-object v0
.end method
