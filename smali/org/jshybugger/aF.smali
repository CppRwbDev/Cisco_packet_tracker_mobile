.class final Lorg/jshybugger/af;
.super Ljava/lang/Object;
.source "AbstractChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/jshybugger/Z;


# direct methods
.method constructor <init>(Lorg/jshybugger/Z;)V
    .registers 2

    .prologue
    .line 593
    iput-object p1, p0, Lorg/jshybugger/af;->a:Lorg/jshybugger/Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 596
    iget-object v0, p0, Lorg/jshybugger/af;->a:Lorg/jshybugger/Z;

    iget-object v0, v0, Lorg/jshybugger/Z;->a:Lorg/jshybugger/Y;

    invoke-static {v0}, Lorg/jshybugger/Y;->b(Lorg/jshybugger/Y;)Lorg/jshybugger/bl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/bl;->e()Lorg/jshybugger/aJ;

    .line 597
    return-void
.end method
