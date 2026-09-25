.class final Lorg/jshybugger/bm;
.super Ljava/lang/Object;
.source "DefaultChannelPipeline.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/jshybugger/aS;

.field private synthetic b:Lorg/jshybugger/bl;


# direct methods
.method constructor <init>(Lorg/jshybugger/bl;Lorg/jshybugger/aS;)V
    .registers 3

    .prologue
    .line 322
    iput-object p1, p0, Lorg/jshybugger/bm;->b:Lorg/jshybugger/bl;

    iput-object p2, p0, Lorg/jshybugger/bm;->a:Lorg/jshybugger/aS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 325
    iget-object v1, p0, Lorg/jshybugger/bm;->b:Lorg/jshybugger/bl;

    monitor-enter v1

    .line 326
    :try_start_3
    iget-object v0, p0, Lorg/jshybugger/bm;->b:Lorg/jshybugger/bl;

    iget-object v2, p0, Lorg/jshybugger/bm;->a:Lorg/jshybugger/aS;

    invoke-virtual {v0, v2}, Lorg/jshybugger/bl;->a(Lorg/jshybugger/aS;)V

    .line 327
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_c

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method
