.class public final Lorg/jshybugger/fU;
.super Lorg/jshybugger/fw;
.source "ImmediateEventExecutor.java"


# static fields
.field public static final a:Lorg/jshybugger/fU;


# instance fields
.field private final b:Lorg/jshybugger/fN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jshybugger/fN",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    new-instance v0, Lorg/jshybugger/fU;

    invoke-direct {v0}, Lorg/jshybugger/fU;-><init>()V

    sput-object v0, Lorg/jshybugger/fU;->a:Lorg/jshybugger/fU;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/jshybugger/fw;-><init>()V

    .line 26
    new-instance v0, Lorg/jshybugger/fM;

    sget-object v1, Lorg/jshybugger/fQ;->a:Lorg/jshybugger/fQ;

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/fM;-><init>(Lorg/jshybugger/fK;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lorg/jshybugger/fU;->b:Lorg/jshybugger/fN;

    .line 31
    return-void
.end method


# virtual methods
.method public final a(JJLjava/util/concurrent/TimeUnit;)Lorg/jshybugger/fN;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lorg/jshybugger/fN",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lorg/jshybugger/fU;->b:Lorg/jshybugger/fN;

    return-object v0
.end method

.method public final a(Ljava/lang/Thread;)Z
    .registers 3

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public final awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .registers 5

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Lorg/jshybugger/fN;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jshybugger/fN",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lorg/jshybugger/fU;->b:Lorg/jshybugger/fN;

    return-object v0
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 84
    if-nez p1, :cond_a

    .line 85
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "command"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_a
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 88
    return-void
.end method

.method public final isShutdown()Z
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public final isTerminated()Z
    .registers 2

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public final shutdown()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 60
    return-void
.end method
