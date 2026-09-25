.class final Lorg/jshybugger/ad;
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
    .line 522
    iput-object p1, p0, Lorg/jshybugger/ad;->b:Lorg/jshybugger/Z;

    iput-object p2, p0, Lorg/jshybugger/ad;->a:Lorg/jshybugger/aM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 525
    iget-object v0, p0, Lorg/jshybugger/ad;->b:Lorg/jshybugger/Z;

    iget-object v1, p0, Lorg/jshybugger/ad;->a:Lorg/jshybugger/aM;

    invoke-virtual {v0, v1}, Lorg/jshybugger/Z;->b(Lorg/jshybugger/aM;)V

    .line 526
    return-void
.end method
