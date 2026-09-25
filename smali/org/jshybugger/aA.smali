.class final Lorg/jshybugger/aa;
.super Ljava/lang/Object;
.source "AbstractChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/jshybugger/aM;

.field private synthetic b:Lorg/jshybugger/Z;


# direct methods
.method constructor <init>(Lorg/jshybugger/Z;Lorg/jshybugger/aM;)V
    .registers 3

    .prologue
    .line 415
    iput-object p1, p0, Lorg/jshybugger/aa;->b:Lorg/jshybugger/Z;

    iput-object p2, p0, Lorg/jshybugger/aa;->a:Lorg/jshybugger/aM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 418
    iget-object v0, p0, Lorg/jshybugger/aa;->b:Lorg/jshybugger/Z;

    iget-object v1, p0, Lorg/jshybugger/aa;->a:Lorg/jshybugger/aM;

    invoke-static {v0, v1}, Lorg/jshybugger/Z;->a(Lorg/jshybugger/Z;Lorg/jshybugger/aM;)V

    .line 419
    return-void
.end method
