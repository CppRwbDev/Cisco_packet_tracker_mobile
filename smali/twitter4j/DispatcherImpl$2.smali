.class Ltwitter4j/DispatcherImpl$2;
.super Ljava/lang/Thread;
.source "DispatcherImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/DispatcherImpl;-><init>(Ltwitter4j/conf/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltwitter4j/DispatcherImpl;


# direct methods
.method constructor <init>(Ltwitter4j/DispatcherImpl;)V
    .registers 2
    .param p1, "this$0"    # Ltwitter4j/DispatcherImpl;

    .prologue
    .line 45
    iput-object p1, p0, Ltwitter4j/DispatcherImpl$2;->this$0:Ltwitter4j/DispatcherImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Ltwitter4j/DispatcherImpl$2;->this$0:Ltwitter4j/DispatcherImpl;

    invoke-static {v0}, Ltwitter4j/DispatcherImpl;->access$000(Ltwitter4j/DispatcherImpl;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 48
    return-void
.end method
