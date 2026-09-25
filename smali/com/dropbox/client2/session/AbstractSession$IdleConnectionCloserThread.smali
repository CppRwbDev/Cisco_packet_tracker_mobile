.class Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;
.super Ljava/lang/Thread;
.source "AbstractSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/client2/session/AbstractSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdleConnectionCloserThread"
.end annotation


# static fields
.field private static thread:Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;


# instance fields
.field private final checkIntervalMs:I

.field private final idleTimeoutSeconds:I

.field private final manager:Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 576
    const/4 v0, 0x0

    sput-object v0, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;->thread:Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;II)V
    .registers 5
    .param p1, "manager"    # Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;
    .param p2, "idleTimeoutSeconds"    # I
    .param p3, "checkIntervalSeconds"    # I

    .prologue
    .line 580
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 581
    iput-object p1, p0, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;->manager:Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;

    .line 582
    iput p2, p0, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;->idleTimeoutSeconds:I

    .line 583
    mul-int/lit16 v0, p3, 0x3e8

    iput v0, p0, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;->checkIntervalMs:I

    .line 584
    return-void
.end method

.method public static declared-synchronized ensureRunning(Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;II)V
    .registers 5
    .param p0, "manager"    # Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;
    .param p1, "idleTimeoutSeconds"    # I
    .param p2, "checkIntervalSeconds"    # I

    .prologue
    .line 589
    const-class v1, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;->thread:Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;

    if-nez v0, :cond_13

    .line 590
    new-instance v0, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;-><init>(Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;II)V

    sput-object v0, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;->thread:Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;

    .line 592
    sget-object v0, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;->thread:Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;

    invoke-virtual {v0}, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;->start()V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    .line 594
    :cond_13
    monitor-exit v1

    return-void

    .line 589
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 600
    :goto_1
    :try_start_1
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_2} :catch_2b

    .line 601
    :try_start_2
    iget v1, p0, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;->checkIntervalMs:I

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 602
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_28

    .line 603
    :try_start_9
    iget-object v1, p0, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;->manager:Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;

    invoke-virtual {v1}, Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;->closeExpiredConnections()V

    .line 604
    iget-object v1, p0, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;->manager:Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;

    iget v2, p0, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;->idleTimeoutSeconds:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    .line 605
    const-class v2, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;

    monitor-enter v2
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_1b} :catch_2b

    .line 606
    :try_start_1b
    iget-object v1, p0, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;->manager:Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;

    invoke-virtual {v1}, Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;->getConnectionsInPool()I

    move-result v1

    if-nez v1, :cond_2f

    .line 607
    const/4 v1, 0x0

    sput-object v1, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;->thread:Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;

    .line 608
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_31

    .line 615
    :goto_27
    return-void

    .line 602
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    :try_start_2a
    throw v1
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2b} :catch_2b

    .line 612
    :catch_2b
    move-exception v0

    .line 613
    .local v0, "e":Ljava/lang/InterruptedException;
    sput-object v5, Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;->thread:Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;

    goto :goto_27

    .line 610
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2f
    :try_start_2f
    monitor-exit v2

    goto :goto_1

    :catchall_31
    move-exception v1

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_31

    :try_start_33
    throw v1
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_34} :catch_2b
.end method
