.class final Lorg/jshybugger/gw;
.super Ljava/lang/Thread;
.source "ThreadLocalRandom.java"


# instance fields
.field private synthetic a:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V
    .registers 3

    .prologue
    .line 86
    iput-object p2, p0, Lorg/jshybugger/gw;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 89
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 90
    iget-object v1, p0, Lorg/jshybugger/gw;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method
