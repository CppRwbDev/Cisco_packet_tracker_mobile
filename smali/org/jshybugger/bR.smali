.class final Lorg/jshybugger/br;
.super Ljava/lang/Object;
.source "DefaultChannelPipeline.java"

# interfaces
.implements Lorg/jshybugger/ax;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/aw;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 966
    :try_start_0
    sget-object v0, Lorg/jshybugger/bl;->a:Lorg/jshybugger/gX;

    const-string v1, "Discarded inbound message {} that reached at the tail of the pipeline. Please check your pipeline configuration."

    invoke-interface {v0, v1, p2}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_b

    .line 970
    invoke-static {p2}, Lorg/jshybugger/a;->b(Ljava/lang/Object;)Z

    .line 971
    return-void

    .line 970
    :catchall_b
    move-exception v0

    invoke-static {p2}, Lorg/jshybugger/a;->b(Ljava/lang/Object;)Z

    throw v0
.end method

.method public final a(Lorg/jshybugger/aw;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 958
    sget-object v0, Lorg/jshybugger/bl;->a:Lorg/jshybugger/gX;

    const-string v1, "An exceptionCaught() event was fired, and it reached at the tail of the pipeline. It usually means the last handler in the pipeline did not handle the exception."

    invoke-interface {v0, v1, p2}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 961
    return-void
.end method

.method public final b(Lorg/jshybugger/aw;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 954
    return-void
.end method

.method public final c(Lorg/jshybugger/aw;)V
    .registers 2

    .prologue
    .line 948
    return-void
.end method

.method public final d(Lorg/jshybugger/aw;)V
    .registers 2

    .prologue
    .line 951
    return-void
.end method

.method public final e(Lorg/jshybugger/aw;)V
    .registers 2

    .prologue
    .line 933
    return-void
.end method

.method public final f(Lorg/jshybugger/aw;)V
    .registers 2

    .prologue
    .line 936
    return-void
.end method

.method public final g(Lorg/jshybugger/aw;)V
    .registers 2

    .prologue
    .line 939
    return-void
.end method

.method public final h(Lorg/jshybugger/aw;)V
    .registers 2

    .prologue
    .line 942
    return-void
.end method

.method public final i(Lorg/jshybugger/aw;)V
    .registers 2

    .prologue
    .line 975
    return-void
.end method

.method public final j(Lorg/jshybugger/aw;)V
    .registers 2

    .prologue
    .line 945
    return-void
.end method
