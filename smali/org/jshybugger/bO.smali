.class final Lorg/jshybugger/bo;
.super Ljava/lang/Object;
.source "DefaultChannelPipeline.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/jshybugger/aw;

.field private synthetic b:Lorg/jshybugger/bl;


# direct methods
.method constructor <init>(Lorg/jshybugger/bl;Lorg/jshybugger/aw;)V
    .registers 3

    .prologue
    .line 471
    iput-object p1, p0, Lorg/jshybugger/bo;->b:Lorg/jshybugger/bl;

    iput-object p2, p0, Lorg/jshybugger/bo;->a:Lorg/jshybugger/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 474
    iget-object v0, p0, Lorg/jshybugger/bo;->b:Lorg/jshybugger/bl;

    iget-object v1, p0, Lorg/jshybugger/bo;->a:Lorg/jshybugger/aw;

    invoke-static {v0, v1}, Lorg/jshybugger/bl;->a(Lorg/jshybugger/bl;Lorg/jshybugger/aw;)V

    .line 475
    return-void
.end method
