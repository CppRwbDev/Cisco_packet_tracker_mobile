.class public final Lorg/jshybugger/ix;
.super Ljava/lang/Object;
.source "DebugServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/jshybugger/iq;


# direct methods
.method public constructor <init>(Lorg/jshybugger/iq;)V
    .registers 2

    .prologue
    .line 445
    iput-object p1, p0, Lorg/jshybugger/ix;->a:Lorg/jshybugger/iq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 453
    :try_start_0
    iget-object v0, p0, Lorg/jshybugger/ix;->a:Lorg/jshybugger/iq;

    const-string v0, "GET"

    invoke-static {v0}, Lorg/jshybugger/iq;->b(Ljava/lang/String;)I

    move-result v0

    .line 455
    const/16 v1, 0x193

    if-ne v0, v1, :cond_13

    .line 456
    invoke-static {}, Lorg/jshybugger/jk;->d()V

    .line 457
    invoke-static {}, Lorg/jshybugger/iz;->m()V

    .line 465
    :cond_12
    :goto_12
    return-void

    .line 458
    :cond_13
    const/16 v1, 0x1ad

    if-ne v0, v1, :cond_12

    .line 459
    const-string v0, "DebugServer"

    const-string v1, "No license found, the number of jsHybugger sessions is limited to 3 within 12 hours."

    invoke-static {v0, v1}, Lorg/jshybugger/jf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-static {}, Lorg/jshybugger/iz;->m()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_12

    :catch_22
    move-exception v0

    goto :goto_12
.end method
