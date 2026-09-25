.class final Lorg/jshybugger/ke;
.super Lorg/jshybugger/jR;
.source "ProxyConnection.java"


# instance fields
.field private synthetic c:Lorg/jshybugger/kd;


# direct methods
.method constructor <init>(Lorg/jshybugger/kd;Lorg/jshybugger/kd;Lorg/jshybugger/jS;)V
    .registers 4

    .prologue
    .line 315
    iput-object p1, p0, Lorg/jshybugger/ke;->c:Lorg/jshybugger/kd;

    invoke-direct {p0, p2, p3}, Lorg/jshybugger/jR;-><init>(Lorg/jshybugger/kd;Lorg/jshybugger/jS;)V

    return-void
.end method


# virtual methods
.method final a()Z
    .registers 2

    .prologue
    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method protected final b()Lorg/jshybugger/fN;
    .registers 3

    .prologue
    .line 323
    :try_start_0
    iget-object v0, p0, Lorg/jshybugger/ke;->c:Lorg/jshybugger/kd;

    iget-object v0, v0, Lorg/jshybugger/kd;->f:Lorg/jshybugger/aw;

    invoke-interface {v0}, Lorg/jshybugger/aw;->b()Lorg/jshybugger/aJ;

    move-result-object v0

    .line 324
    const-string v1, "encoder"

    invoke-interface {v0, v1}, Lorg/jshybugger/aJ;->b(Ljava/lang/String;)Lorg/jshybugger/at;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 325
    const-string v1, "encoder"

    invoke-interface {v0, v1}, Lorg/jshybugger/aJ;->a(Ljava/lang/String;)Lorg/jshybugger/at;

    .line 327
    :cond_15
    const-string v1, "responseWrittenMonitor"

    invoke-interface {v0, v1}, Lorg/jshybugger/aJ;->b(Ljava/lang/String;)Lorg/jshybugger/at;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 328
    const-string v1, "responseWrittenMonitor"

    invoke-interface {v0, v1}, Lorg/jshybugger/aJ;->a(Ljava/lang/String;)Lorg/jshybugger/at;

    .line 330
    :cond_22
    const-string v1, "decoder"

    invoke-interface {v0, v1}, Lorg/jshybugger/aJ;->b(Ljava/lang/String;)Lorg/jshybugger/at;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 331
    const-string v1, "decoder"

    invoke-interface {v0, v1}, Lorg/jshybugger/aJ;->a(Ljava/lang/String;)Lorg/jshybugger/at;

    .line 333
    :cond_2f
    const-string v1, "requestReadMonitor"

    invoke-interface {v0, v1}, Lorg/jshybugger/aJ;->b(Ljava/lang/String;)Lorg/jshybugger/at;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 334
    const-string v1, "requestReadMonitor"

    invoke-interface {v0, v1}, Lorg/jshybugger/aJ;->a(Ljava/lang/String;)Lorg/jshybugger/at;

    .line 336
    :cond_3c
    iget-object v0, p0, Lorg/jshybugger/ke;->c:Lorg/jshybugger/kd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/jshybugger/kd;->a(Lorg/jshybugger/kd;Z)Z

    .line 337
    iget-object v0, p0, Lorg/jshybugger/ke;->c:Lorg/jshybugger/kd;

    iget-object v0, v0, Lorg/jshybugger/kd;->g:Lorg/jshybugger/aj;

    invoke-interface {v0}, Lorg/jshybugger/aj;->l()Lorg/jshybugger/ao;
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_49} :catch_4b

    move-result-object v0

    .line 339
    :goto_4a
    return-object v0

    .line 338
    :catch_4b
    move-exception v0

    .line 339
    iget-object v1, p0, Lorg/jshybugger/ke;->c:Lorg/jshybugger/kd;

    iget-object v1, v1, Lorg/jshybugger/kd;->g:Lorg/jshybugger/aj;

    invoke-interface {v1, v0}, Lorg/jshybugger/aj;->a(Ljava/lang/Throwable;)Lorg/jshybugger/ao;

    move-result-object v0

    goto :goto_4a
.end method
