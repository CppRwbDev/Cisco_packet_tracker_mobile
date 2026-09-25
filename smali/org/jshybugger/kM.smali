.class public abstract Lorg/jshybugger/km;
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
    .line 749
    iput-object p1, p0, Lorg/jshybugger/km;->b:Lorg/jshybugger/kd;

    invoke-direct {p0}, Lorg/jshybugger/aH;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/aw;Ljava/lang/Object;Lorg/jshybugger/aM;)V
    .registers 8

    .prologue
    .line 756
    :try_start_0
    instance-of v1, p2, Lorg/jshybugger/dU;

    if-eqz v1, :cond_b

    .line 757
    move-object v0, p2

    check-cast v0, Lorg/jshybugger/dU;

    move-object v1, v0

    invoke-virtual {p0, v1}, Lorg/jshybugger/km;->a(Lorg/jshybugger/dU;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_f
    .catchall {:try_start_0 .. :try_end_b} :catchall_1d

    .line 762
    :cond_b
    invoke-super {p0, p1, p2, p3}, Lorg/jshybugger/aH;->a(Lorg/jshybugger/aw;Ljava/lang/Object;Lorg/jshybugger/aM;)V

    .line 763
    :goto_e
    return-void

    .line 759
    :catch_f
    move-exception v1

    .line 760
    :try_start_10
    iget-object v2, p0, Lorg/jshybugger/km;->b:Lorg/jshybugger/kd;

    iget-object v2, v2, Lorg/jshybugger/kd;->c:Lorg/jshybugger/kp;

    const-string v3, "Unable to record bytesRead"

    invoke-virtual {v2, v3, v1}, Lorg/jshybugger/kp;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1d

    .line 762
    invoke-super {p0, p1, p2, p3}, Lorg/jshybugger/aH;->a(Lorg/jshybugger/aw;Ljava/lang/Object;Lorg/jshybugger/aM;)V

    goto :goto_e

    :catchall_1d
    move-exception v1

    invoke-super {p0, p1, p2, p3}, Lorg/jshybugger/aH;->a(Lorg/jshybugger/aw;Ljava/lang/Object;Lorg/jshybugger/aM;)V

    throw v1
.end method

.method protected abstract a(Lorg/jshybugger/dU;)V
.end method
