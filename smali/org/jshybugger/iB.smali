.class public final Lorg/jshybugger/ib;
.super Ljava/lang/Object;
.source "ProxyServer.java"


# instance fields
.field public a:Lorg/jshybugger/jB;

.field public b:Lorg/jshybugger/jA;


# direct methods
.method public constructor <init>(Lorg/jshybugger/iq;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/iq;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x1f90

    const/4 v4, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v0, "ProxyServer"

    const-string v1, "Setting up proxy server ..."

    invoke-static {v0, v1}, Lorg/jshybugger/jf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v0, Lorg/jshybugger/hY;

    invoke-direct {v0, p1, p2}, Lorg/jshybugger/hY;-><init>(Lorg/jshybugger/iq;Ljava/util/Map;)V

    .line 79
    invoke-static {}, Lorg/jshybugger/jT;->b()Lorg/jshybugger/jB;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/jshybugger/jB;->a(Z)Lorg/jshybugger/jB;

    move-result-object v1

    const-string v2, "proxyPort"

    invoke-static {p2, v2, v5}, Lorg/jshybugger/jk;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/jshybugger/jB;->a(I)Lorg/jshybugger/jB;

    move-result-object v1

    const-string v2, "proxyConnectionTimeout"

    const/16 v3, 0x1e

    invoke-static {p2, v2, v3}, Lorg/jshybugger/jk;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/jshybugger/jB;->b(I)Lorg/jshybugger/jB;

    move-result-object v1

    sget-object v2, Lorg/jshybugger/jE;->a:Lorg/jshybugger/jE;

    invoke-virtual {v1, v2}, Lorg/jshybugger/jB;->a(Lorg/jshybugger/jE;)Lorg/jshybugger/jB;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jshybugger/jB;->a(Lorg/jshybugger/jz;)Lorg/jshybugger/jB;

    move-result-object v0

    new-instance v1, Lorg/jshybugger/hW;

    invoke-direct {v1}, Lorg/jshybugger/hW;-><init>()V

    invoke-virtual {v0, v1}, Lorg/jshybugger/jB;->a(Lorg/jshybugger/jr;)Lorg/jshybugger/jB;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/ib;->a:Lorg/jshybugger/jB;

    .line 86
    const-string v0, "mitmEnabled"

    invoke-static {p2, v0, v4}, Lorg/jshybugger/jk;->a(Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 87
    iget-object v0, p0, Lorg/jshybugger/ib;->a:Lorg/jshybugger/jB;

    new-instance v1, Lorg/jshybugger/ic;

    invoke-direct {v1}, Lorg/jshybugger/ic;-><init>()V

    invoke-virtual {v0, v1}, Lorg/jshybugger/jB;->a(Lorg/jshybugger/jC;)Lorg/jshybugger/jB;

    .line 90
    :cond_58
    const-string v0, "upstreamProxyEnabled"

    invoke-static {p2, v0, v4}, Lorg/jshybugger/jk;->a(Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 91
    iget-object v0, p0, Lorg/jshybugger/ib;->a:Lorg/jshybugger/jB;

    new-instance v1, Lorg/jshybugger/ju;

    const-string v2, "upstreamProxyHost"

    invoke-static {p2, v2, v6}, Lorg/jshybugger/jk;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "upstreamProxyPort"

    invoke-static {p2, v3, v5}, Lorg/jshybugger/jk;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "upstreamProxyByPass"

    invoke-static {p2, v4, v6}, Lorg/jshybugger/jk;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/jshybugger/ju;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/jshybugger/jB;->a(Lorg/jshybugger/ju;)Lorg/jshybugger/jB;

    .line 95
    :cond_7c
    return-void
.end method
