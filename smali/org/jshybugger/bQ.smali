.class final Lorg/jshybugger/bq;
.super Ljava/lang/Object;
.source "DefaultChannelPipeline.java"

# interfaces
.implements Lorg/jshybugger/aG;


# instance fields
.field private a:Lorg/jshybugger/ak;


# direct methods
.method protected constructor <init>(Lorg/jshybugger/ak;)V
    .registers 2

    .prologue
    .line 982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 983
    iput-object p1, p0, Lorg/jshybugger/bq;->a:Lorg/jshybugger/ak;

    .line 984
    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/aw;)V
    .registers 3

    .prologue
    .line 1028
    iget-object v0, p0, Lorg/jshybugger/bq;->a:Lorg/jshybugger/ak;

    invoke-interface {v0}, Lorg/jshybugger/ak;->e()V

    .line 1029
    return-void
.end method

.method public final a(Lorg/jshybugger/aw;Ljava/lang/Object;Lorg/jshybugger/aM;)V
    .registers 5

    .prologue
    .line 1033
    iget-object v0, p0, Lorg/jshybugger/bq;->a:Lorg/jshybugger/ak;

    invoke-interface {v0, p2, p3}, Lorg/jshybugger/ak;->a(Ljava/lang/Object;Lorg/jshybugger/aM;)V

    .line 1034
    return-void
.end method

.method public final a(Lorg/jshybugger/aw;Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 1043
    invoke-interface {p1, p2}, Lorg/jshybugger/aw;->b(Ljava/lang/Throwable;)Lorg/jshybugger/aw;

    .line 1044
    return-void
.end method

.method public final a(Lorg/jshybugger/aw;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/jshybugger/aM;)V
    .registers 6

    .prologue
    .line 1008
    iget-object v0, p0, Lorg/jshybugger/bq;->a:Lorg/jshybugger/ak;

    invoke-interface {v0, p2, p3, p4}, Lorg/jshybugger/ak;->a(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/jshybugger/aM;)V

    .line 1009
    return-void
.end method

.method public final a(Lorg/jshybugger/aw;Ljava/net/SocketAddress;Lorg/jshybugger/aM;)V
    .registers 5

    .prologue
    .line 1000
    iget-object v0, p0, Lorg/jshybugger/bq;->a:Lorg/jshybugger/ak;

    invoke-interface {v0, p2, p3}, Lorg/jshybugger/ak;->a(Ljava/net/SocketAddress;Lorg/jshybugger/aM;)V

    .line 1001
    return-void
.end method

.method public final a(Lorg/jshybugger/aw;Lorg/jshybugger/aM;)V
    .registers 4

    .prologue
    .line 1013
    iget-object v0, p0, Lorg/jshybugger/bq;->a:Lorg/jshybugger/ak;

    invoke-interface {v0, p2}, Lorg/jshybugger/ak;->a(Lorg/jshybugger/aM;)V

    .line 1014
    return-void
.end method

.method public final b(Lorg/jshybugger/aw;)V
    .registers 3

    .prologue
    .line 1038
    iget-object v0, p0, Lorg/jshybugger/bq;->a:Lorg/jshybugger/ak;

    invoke-interface {v0}, Lorg/jshybugger/ak;->f()V

    .line 1039
    return-void
.end method

.method public final b(Lorg/jshybugger/aw;Lorg/jshybugger/aM;)V
    .registers 4

    .prologue
    .line 1018
    iget-object v0, p0, Lorg/jshybugger/bq;->a:Lorg/jshybugger/ak;

    invoke-interface {v0, p2}, Lorg/jshybugger/ak;->b(Lorg/jshybugger/aM;)V

    .line 1019
    return-void
.end method

.method public final c(Lorg/jshybugger/aw;)V
    .registers 2

    .prologue
    .line 989
    return-void
.end method

.method public final d(Lorg/jshybugger/aw;)V
    .registers 2

    .prologue
    .line 994
    return-void
.end method
