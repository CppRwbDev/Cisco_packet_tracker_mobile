.class final Lorg/jshybugger/cc;
.super Ljava/lang/Object;
.source "AbstractNioByteChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/jshybugger/cb;


# direct methods
.method constructor <init>(Lorg/jshybugger/cb;)V
    .registers 2

    .prologue
    .line 242
    iput-object p1, p0, Lorg/jshybugger/cc;->a:Lorg/jshybugger/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lorg/jshybugger/cc;->a:Lorg/jshybugger/cb;

    invoke-virtual {v0}, Lorg/jshybugger/cb;->i()Lorg/jshybugger/aj;

    .line 246
    return-void
.end method
