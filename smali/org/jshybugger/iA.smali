.class public final Lorg/jshybugger/ia;
.super Lorg/jshybugger/jt;
.source "ProxyManager.java"


# instance fields
.field private synthetic b:Ljava/lang/String;

.field private synthetic c:I


# direct methods
.method public constructor <init>(Lorg/jshybugger/ju;Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 56
    iput-object p2, p0, Lorg/jshybugger/ia;->b:Ljava/lang/String;

    iput p3, p0, Lorg/jshybugger/ia;->c:I

    invoke-direct {p0}, Lorg/jshybugger/jt;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/net/InetSocketAddress;
    .registers 4

    .prologue
    .line 64
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lorg/jshybugger/ia;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iget v2, p0, Lorg/jshybugger/ia;->c:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_d
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    .line 69
    :catch_e
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to resolve "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/jshybugger/ia;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
