.class final Lorg/jshybugger/cm;
.super Ljava/lang/Object;
.source "NioEventLoop.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/jshybugger/cl;


# direct methods
.method constructor <init>(Lorg/jshybugger/cl;)V
    .registers 2

    .prologue
    .line 226
    iput-object p1, p0, Lorg/jshybugger/cm;->a:Lorg/jshybugger/cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lorg/jshybugger/cm;->a:Lorg/jshybugger/cl;

    invoke-virtual {v0}, Lorg/jshybugger/cl;->e()V

    .line 230
    return-void
.end method
