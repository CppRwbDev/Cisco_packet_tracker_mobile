.class public Lorg/jshybugger/oc;
.super Ljava/lang/Object;
.source "SimpleLoggerFactory.java"

# interfaces
.implements Lorg/jshybugger/nR;


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/jshybugger/nS;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/oc;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 47
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lorg/jshybugger/nS;
    .registers 4

    .prologue
    .line 53
    iget-object v0, p0, Lorg/jshybugger/oc;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/nS;

    .line 54
    if-eqz v0, :cond_b

    .line 59
    :cond_a
    :goto_a
    return-object v0

    .line 57
    :cond_b
    new-instance v1, Lorg/jshybugger/oa;

    invoke-direct {v1, p1}, Lorg/jshybugger/oa;-><init>(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lorg/jshybugger/oc;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/nS;

    .line 59
    if-nez v0, :cond_a

    move-object v0, v1

    goto :goto_a
.end method
