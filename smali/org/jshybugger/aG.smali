.class final Lorg/jshybugger/ag;
.super Ljava/lang/Object;
.source "AbstractChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/Exception;

.field private synthetic b:Lorg/jshybugger/Z;


# direct methods
.method constructor <init>(Lorg/jshybugger/Z;Ljava/lang/Exception;)V
    .registers 3

    .prologue
    .line 617
    iput-object p1, p0, Lorg/jshybugger/ag;->b:Lorg/jshybugger/Z;

    iput-object p2, p0, Lorg/jshybugger/ag;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 620
    iget-object v0, p0, Lorg/jshybugger/ag;->b:Lorg/jshybugger/Z;

    iget-object v0, v0, Lorg/jshybugger/Z;->a:Lorg/jshybugger/Y;

    invoke-static {v0}, Lorg/jshybugger/Y;->b(Lorg/jshybugger/Y;)Lorg/jshybugger/bl;

    move-result-object v0

    iget-object v1, p0, Lorg/jshybugger/ag;->a:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lorg/jshybugger/bl;->a(Ljava/lang/Throwable;)Lorg/jshybugger/aJ;

    .line 621
    return-void
.end method
