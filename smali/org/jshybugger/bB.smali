.class final Lorg/jshybugger/bb;
.super Ljava/lang/Object;
.source "DefaultChannelHandlerContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/jshybugger/aS;


# direct methods
.method constructor <init>(Lorg/jshybugger/aS;Lorg/jshybugger/aS;)V
    .registers 3

    .prologue
    .line 151
    iput-object p2, p0, Lorg/jshybugger/bb;->a:Lorg/jshybugger/aS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lorg/jshybugger/bb;->a:Lorg/jshybugger/aS;

    invoke-static {v0}, Lorg/jshybugger/aS;->b(Lorg/jshybugger/aS;)V

    .line 155
    return-void
.end method
