.class final Lorg/jshybugger/bf;
.super Ljava/lang/Object;
.source "DefaultChannelHandlerContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/jshybugger/aS;

.field private synthetic b:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lorg/jshybugger/aS;Lorg/jshybugger/aS;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 257
    iput-object p2, p0, Lorg/jshybugger/bf;->a:Lorg/jshybugger/aS;

    iput-object p3, p0, Lorg/jshybugger/bf;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 260
    iget-object v0, p0, Lorg/jshybugger/bf;->a:Lorg/jshybugger/aS;

    iget-object v1, p0, Lorg/jshybugger/bf;->b:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lorg/jshybugger/aS;->a(Lorg/jshybugger/aS;Ljava/lang/Throwable;)V

    .line 261
    return-void
.end method
