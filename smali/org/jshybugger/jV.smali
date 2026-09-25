.class public Lorg/jshybugger/jv;
.super Ljava/lang/Object;
.source "FlowContext.java"


# direct methods
.method public constructor <init>(Lorg/jshybugger/jG;)V
    .registers 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Lorg/jshybugger/jG;->i()Ljava/net/InetSocketAddress;

    .line 23
    invoke-virtual {p1}, Lorg/jshybugger/jG;->j()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    .line 24
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    .line 26
    :cond_f
    return-void
.end method
