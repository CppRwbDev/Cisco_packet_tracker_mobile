.class final Lorg/jshybugger/bw;
.super Lorg/jshybugger/aP;
.source "FailedChannelFuture.java"


# instance fields
.field private final a:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lorg/jshybugger/aj;Lorg/jshybugger/fK;Ljava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lorg/jshybugger/aP;-><init>(Lorg/jshybugger/aj;Lorg/jshybugger/fK;)V

    .line 38
    if-nez p3, :cond_d

    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cause"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_d
    iput-object p3, p0, Lorg/jshybugger/bw;->a:Ljava/lang/Throwable;

    .line 42
    return-void
.end method


# virtual methods
.method public final synthetic b()Lorg/jshybugger/fN;
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lorg/jshybugger/bw;->e()Lorg/jshybugger/ao;

    move-result-object v0

    return-object v0
.end method

.method public final d_()Z
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Lorg/jshybugger/ao;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lorg/jshybugger/bw;->a:Ljava/lang/Throwable;

    invoke-static {v0}, Lorg/jshybugger/gp;->a(Ljava/lang/Throwable;)V

    .line 57
    return-object p0
.end method

.method public final h()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lorg/jshybugger/bw;->a:Ljava/lang/Throwable;

    return-object v0
.end method
