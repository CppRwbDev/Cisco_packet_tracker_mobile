.class final Lorg/jshybugger/fF;
.super Ljava/lang/Object;
.source "DefaultPromise.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/jshybugger/fC;

.field private synthetic b:Lorg/jshybugger/fD;


# direct methods
.method constructor <init>(Lorg/jshybugger/fD;Lorg/jshybugger/fC;)V
    .registers 3

    .prologue
    .line 560
    iput-object p1, p0, Lorg/jshybugger/fF;->b:Lorg/jshybugger/fD;

    iput-object p2, p0, Lorg/jshybugger/fF;->a:Lorg/jshybugger/fC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 563
    iget-object v0, p0, Lorg/jshybugger/fF;->b:Lorg/jshybugger/fD;

    iget-object v1, p0, Lorg/jshybugger/fF;->a:Lorg/jshybugger/fC;

    invoke-static {v0, v1}, Lorg/jshybugger/fD;->a(Lorg/jshybugger/fN;Lorg/jshybugger/fC;)V

    .line 564
    return-void
.end method
