.class final Lorg/jshybugger/gi;
.super Ljava/lang/Object;
.source "SingleThreadEventExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/jshybugger/ge;


# direct methods
.method private constructor <init>(Lorg/jshybugger/ge;)V
    .registers 2

    .prologue
    .line 817
    iput-object p1, p0, Lorg/jshybugger/gi;->a:Lorg/jshybugger/ge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jshybugger/ge;B)V
    .registers 3

    .prologue
    .line 817
    invoke-direct {p0, p1}, Lorg/jshybugger/gi;-><init>(Lorg/jshybugger/ge;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 820
    iget-object v0, p0, Lorg/jshybugger/gi;->a:Lorg/jshybugger/ge;

    iget-object v0, v0, Lorg/jshybugger/ge;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 821
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 822
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/gd;

    .line 823
    invoke-virtual {v0}, Lorg/jshybugger/gd;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 824
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    .line 827
    :cond_1e
    return-void
.end method
