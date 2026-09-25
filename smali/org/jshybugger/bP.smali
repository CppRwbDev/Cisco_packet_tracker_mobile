.class final Lorg/jshybugger/bp;
.super Ljava/lang/Object;
.source "DefaultChannelPipeline.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/jshybugger/aS;

.field private synthetic b:Lorg/jshybugger/bl;


# direct methods
.method constructor <init>(Lorg/jshybugger/bl;Lorg/jshybugger/aS;)V
    .registers 3

    .prologue
    .line 510
    iput-object p1, p0, Lorg/jshybugger/bp;->b:Lorg/jshybugger/bl;

    iput-object p2, p0, Lorg/jshybugger/bp;->a:Lorg/jshybugger/aS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 513
    iget-object v0, p0, Lorg/jshybugger/bp;->b:Lorg/jshybugger/bl;

    iget-object v1, p0, Lorg/jshybugger/bp;->a:Lorg/jshybugger/aS;

    invoke-static {v0, v1}, Lorg/jshybugger/bl;->a(Lorg/jshybugger/bl;Lorg/jshybugger/aS;)V

    .line 514
    return-void
.end method
