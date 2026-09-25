.class final Lorg/jshybugger/fm;
.super Ljava/lang/ThreadLocal;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lorg/jshybugger/fo",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lorg/jshybugger/fl;


# direct methods
.method constructor <init>(Lorg/jshybugger/fl;)V
    .registers 2

    .prologue
    .line 29
    iput-object p1, p0, Lorg/jshybugger/fm;->a:Lorg/jshybugger/fl;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 29
    new-instance v0, Lorg/jshybugger/fo;

    iget-object v1, p0, Lorg/jshybugger/fm;->a:Lorg/jshybugger/fl;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/fo;-><init>(Lorg/jshybugger/fl;Ljava/lang/Thread;)V

    return-object v0
.end method
