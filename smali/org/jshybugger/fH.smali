.class public Lorg/jshybugger/fh;
.super Ljava/lang/Object;
.source "DefaultAttributeMap.java"

# interfaces
.implements Lorg/jshybugger/fd;


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lorg/jshybugger/fh;",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jshybugger/fc",
            "<*>;",
            "Lorg/jshybugger/fb",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 30
    const-class v0, Lorg/jshybugger/fh;

    const-class v1, Ljava/util/Map;

    const-string v2, "b"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/fh;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/fc;)Lorg/jshybugger/fb;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jshybugger/fc",
            "<TT;>;)",
            "Lorg/jshybugger/fb",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lorg/jshybugger/fh;->b:Ljava/util/Map;

    .line 40
    if-nez v0, :cond_2e

    .line 42
    new-instance v0, Ljava/util/IdentityHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 43
    sget-object v1, Lorg/jshybugger/fh;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 44
    iget-object v0, p0, Lorg/jshybugger/fh;->b:Ljava/util/Map;

    move-object v1, v0

    .line 48
    :goto_16
    monitor-enter v1

    .line 50
    :try_start_17
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/fb;

    .line 51
    if-nez v0, :cond_27

    .line 52
    new-instance v0, Lorg/jshybugger/fi;

    invoke-direct {v0, v1, p1}, Lorg/jshybugger/fi;-><init>(Ljava/util/Map;Lorg/jshybugger/fc;)V

    .line 53
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_29

    return-object v0

    .line 56
    :catchall_29
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2c
    move-object v1, v0

    goto :goto_16

    :cond_2e
    move-object v1, v0

    goto :goto_16
.end method
