.class public abstract Lorg/jshybugger/kn;
.super Lorg/jshybugger/ay;
.source "ProxyConnection.java"


# annotations
.annotation runtime Lorg/jshybugger/au;
.end annotation


# instance fields
.field private synthetic b:Lorg/jshybugger/kd;


# direct methods
.method protected constructor <init>(Lorg/jshybugger/kd;)V
    .registers 2

    .prologue
    .line 702
    iput-object p1, p0, Lorg/jshybugger/kn;->b:Lorg/jshybugger/kd;

    invoke-direct {p0}, Lorg/jshybugger/ay;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/aw;Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 708
    :try_start_0
    instance-of v1, p2, Lorg/jshybugger/dX;

    if-eqz v1, :cond_b

    .line 709
    move-object v0, p2

    check-cast v0, Lorg/jshybugger/dX;

    move-object v1, v0

    invoke-virtual {p0, v1}, Lorg/jshybugger/kn;->a(Lorg/jshybugger/dX;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_f
    .catchall {:try_start_0 .. :try_end_b} :catchall_1d

    .line 714
    :cond_b
    invoke-super {p0, p1, p2}, Lorg/jshybugger/ay;->a(Lorg/jshybugger/aw;Ljava/lang/Object;)V

    .line 715
    :goto_e
    return-void

    .line 711
    :catch_f
    move-exception v1

    .line 712
    :try_start_10
    iget-object v2, p0, Lorg/jshybugger/kn;->b:Lorg/jshybugger/kd;

    iget-object v2, v2, Lorg/jshybugger/kd;->c:Lorg/jshybugger/kp;

    const-string v3, "Unable to record bytesRead"

    invoke-virtual {v2, v3, v1}, Lorg/jshybugger/kp;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1d

    .line 714
    invoke-super {p0, p1, p2}, Lorg/jshybugger/ay;->a(Lorg/jshybugger/aw;Ljava/lang/Object;)V

    goto :goto_e

    :catchall_1d
    move-exception v1

    invoke-super {p0, p1, p2}, Lorg/jshybugger/ay;->a(Lorg/jshybugger/aw;Ljava/lang/Object;)V

    throw v1
.end method

.method protected abstract a(Lorg/jshybugger/dX;)V
.end method
