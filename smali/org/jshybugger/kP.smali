.class final Lorg/jshybugger/kp;
.super Ljava/lang/Object;
.source "ProxyConnectionLogger.java"


# instance fields
.field final a:Lorg/jshybugger/nS;


# direct methods
.method public constructor <init>(Lorg/jshybugger/kd;)V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/jshybugger/nT;->a(Ljava/lang/Class;)Lorg/jshybugger/nS;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/kp;->a:Lorg/jshybugger/nS;

    .line 27
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 36
    iget-object v0, p0, Lorg/jshybugger/kp;->a:Lorg/jshybugger/nS;

    invoke-interface {v0}, Lorg/jshybugger/nS;->f()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 37
    iget-object v0, p0, Lorg/jshybugger/kp;->a:Lorg/jshybugger/nS;

    invoke-interface {v0, p1, p2}, Lorg/jshybugger/nS;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    :cond_d
    return-void
.end method

.method protected final varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 42
    iget-object v0, p0, Lorg/jshybugger/kp;->a:Lorg/jshybugger/nS;

    invoke-interface {v0}, Lorg/jshybugger/nS;->e()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 43
    iget-object v0, p0, Lorg/jshybugger/kp;->a:Lorg/jshybugger/nS;

    invoke-interface {v0, p1, p2}, Lorg/jshybugger/nS;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    :cond_d
    return-void
.end method

.method protected final b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 48
    iget-object v0, p0, Lorg/jshybugger/kp;->a:Lorg/jshybugger/nS;

    invoke-interface {v0}, Lorg/jshybugger/nS;->e()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 49
    iget-object v0, p0, Lorg/jshybugger/kp;->a:Lorg/jshybugger/nS;

    invoke-interface {v0, p1, p2}, Lorg/jshybugger/nS;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    :cond_d
    return-void
.end method

.method protected final varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 54
    iget-object v0, p0, Lorg/jshybugger/kp;->a:Lorg/jshybugger/nS;

    invoke-interface {v0}, Lorg/jshybugger/nS;->d()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 55
    iget-object v0, p0, Lorg/jshybugger/kp;->a:Lorg/jshybugger/nS;

    invoke-interface {v0, p1, p2}, Lorg/jshybugger/nS;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    :cond_d
    return-void
.end method

.method protected final varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 66
    iget-object v0, p0, Lorg/jshybugger/kp;->a:Lorg/jshybugger/nS;

    invoke-interface {v0}, Lorg/jshybugger/nS;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 67
    iget-object v0, p0, Lorg/jshybugger/kp;->a:Lorg/jshybugger/nS;

    invoke-interface {v0, p1, p2}, Lorg/jshybugger/nS;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    :cond_d
    return-void
.end method
