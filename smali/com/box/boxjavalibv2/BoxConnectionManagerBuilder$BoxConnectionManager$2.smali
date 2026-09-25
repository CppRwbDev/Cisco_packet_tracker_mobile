.class Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager$2;
.super Ljava/lang/Thread;
.source "BoxConnectionManagerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;->monitorConnection(Lorg/apache/http/conn/ClientConnectionManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;

.field final synthetic val$ref:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;Ljava/lang/ref/WeakReference;)V
    .registers 3

    .prologue
    .line 107
    iput-object p1, p0, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager$2;->this$1:Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;

    iput-object p2, p0, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager$2;->val$ref:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 113
    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1} :catch_29

    .line 114
    :try_start_1
    iget-object v1, p0, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager$2;->val$ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/ClientConnectionManager;

    .line 115
    .local v0, "connMan":Lorg/apache/http/conn/ClientConnectionManager;
    if-nez v0, :cond_d

    .line 116
    monitor-exit p0

    .line 129
    .end local v0    # "connMan":Lorg/apache/http/conn/ClientConnectionManager;
    :goto_c
    return-void

    .line 119
    .restart local v0    # "connMan":Lorg/apache/http/conn/ClientConnectionManager;
    :cond_d
    iget-object v1, p0, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager$2;->this$1:Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;

    invoke-static {v1}, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;->access$600(Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 121
    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 122
    iget-object v1, p0, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager$2;->this$1:Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;

    invoke-static {v1}, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;->access$700(Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;)J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    .line 123
    monitor-exit p0

    goto :goto_0

    .end local v0    # "connMan":Lorg/apache/http/conn/ClientConnectionManager;
    :catchall_26
    move-exception v1

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_26

    :try_start_28
    throw v1
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_29} :catch_29

    .line 126
    :catch_29
    move-exception v1

    goto :goto_c
.end method
