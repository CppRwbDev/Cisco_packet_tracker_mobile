.class final Lorg/jshybugger/fG;
.super Ljava/lang/Object;
.source "DefaultPromise.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/jshybugger/fO;

.field private synthetic b:Lorg/jshybugger/fD;


# direct methods
.method constructor <init>(Lorg/jshybugger/fD;Lorg/jshybugger/fO;)V
    .registers 3

    .prologue
    .line 570
    iput-object p1, p0, Lorg/jshybugger/fG;->b:Lorg/jshybugger/fD;

    iput-object p2, p0, Lorg/jshybugger/fG;->a:Lorg/jshybugger/fO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 573
    iget-object v0, p0, Lorg/jshybugger/fG;->b:Lorg/jshybugger/fD;

    iget-object v1, p0, Lorg/jshybugger/fG;->a:Lorg/jshybugger/fO;

    invoke-static {v0, v1}, Lorg/jshybugger/fD;->a(Lorg/jshybugger/fN;Lorg/jshybugger/fO;)V

    .line 574
    return-void
.end method
