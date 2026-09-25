.class final Lorg/jshybugger/bg;
.super Ljava/lang/Object;
.source "DefaultChannelHandlerContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/jshybugger/aS;

.field private synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/jshybugger/aS;Lorg/jshybugger/aS;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 297
    iput-object p2, p0, Lorg/jshybugger/bg;->a:Lorg/jshybugger/aS;

    iput-object p3, p0, Lorg/jshybugger/bg;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 300
    iget-object v0, p0, Lorg/jshybugger/bg;->a:Lorg/jshybugger/aS;

    iget-object v1, p0, Lorg/jshybugger/bg;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/jshybugger/aS;->a(Lorg/jshybugger/aS;Ljava/lang/Object;)V

    .line 301
    return-void
.end method
