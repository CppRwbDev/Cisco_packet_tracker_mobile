.class Ltwitter4j/DispatcherImpl$1;
.super Ljava/lang/Object;
.source "DispatcherImpl.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/DispatcherImpl;-><init>(Ltwitter4j/conf/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Ltwitter4j/DispatcherImpl;

.field final synthetic val$conf:Ltwitter4j/conf/Configuration;


# direct methods
.method constructor <init>(Ltwitter4j/DispatcherImpl;Ltwitter4j/conf/Configuration;)V
    .registers 4
    .param p1, "this$0"    # Ltwitter4j/DispatcherImpl;

    .prologue
    .line 33
    iput-object p1, p0, Ltwitter4j/DispatcherImpl$1;->this$0:Ltwitter4j/DispatcherImpl;

    iput-object p2, p0, Ltwitter4j/DispatcherImpl$1;->val$conf:Ltwitter4j/conf/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Ltwitter4j/DispatcherImpl$1;->count:I

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 8
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 38
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 39
    .local v0, "thread":Ljava/lang/Thread;
    const-string v1, "Twitter4J Async Dispatcher[%d]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Ltwitter4j/DispatcherImpl$1;->count:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ltwitter4j/DispatcherImpl$1;->count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Ltwitter4j/DispatcherImpl$1;->val$conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->isDaemonEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 41
    return-object v0
.end method
