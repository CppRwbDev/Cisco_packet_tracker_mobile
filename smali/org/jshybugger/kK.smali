.class public abstract Lorg/jshybugger/kk;
.super Lorg/jshybugger/aH;
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
    .line 725
    iput-object p1, p0, Lorg/jshybugger/kk;->b:Lorg/jshybugger/kd;

    invoke-direct {p0}, Lorg/jshybugger/aH;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(I)V
.end method

.method public final a(Lorg/jshybugger/aw;Ljava/lang/Object;Lorg/jshybugger/aM;)V
    .registers 8

    .prologue
    .line 732
    :try_start_0
    instance-of v1, p2, Lorg/jshybugger/H;

    if-eqz v1, :cond_f

    .line 733
    move-object v0, p2

    check-cast v0, Lorg/jshybugger/H;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/jshybugger/H;->f()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jshybugger/kk;->a(I)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_13
    .catchall {:try_start_0 .. :try_end_f} :catchall_21

    .line 738
    :cond_f
    invoke-super {p0, p1, p2, p3}, Lorg/jshybugger/aH;->a(Lorg/jshybugger/aw;Ljava/lang/Object;Lorg/jshybugger/aM;)V

    .line 739
    :goto_12
    return-void

    .line 735
    :catch_13
    move-exception v1

    .line 736
    :try_start_14
    iget-object v2, p0, Lorg/jshybugger/kk;->b:Lorg/jshybugger/kd;

    iget-object v2, v2, Lorg/jshybugger/kd;->c:Lorg/jshybugger/kp;

    const-string v3, "Unable to record bytesRead"

    invoke-virtual {v2, v3, v1}, Lorg/jshybugger/kp;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_21

    .line 738
    invoke-super {p0, p1, p2, p3}, Lorg/jshybugger/aH;->a(Lorg/jshybugger/aw;Ljava/lang/Object;Lorg/jshybugger/aM;)V

    goto :goto_12

    :catchall_21
    move-exception v1

    invoke-super {p0, p1, p2, p3}, Lorg/jshybugger/aH;->a(Lorg/jshybugger/aw;Ljava/lang/Object;Lorg/jshybugger/aM;)V

    throw v1
.end method
