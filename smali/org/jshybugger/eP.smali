.class public final Lorg/jshybugger/ep;
.super Lorg/jshybugger/cI;
.source "WebSocket00FrameEncoder.java"

# interfaces
.implements Lorg/jshybugger/eA;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jshybugger/cI",
        "<",
        "Lorg/jshybugger/ey;",
        ">;",
        "Lorg/jshybugger/eA;"
    }
.end annotation

.annotation runtime Lorg/jshybugger/au;
.end annotation


# static fields
.field private static final b:Lorg/jshybugger/H;

.field private static final c:Lorg/jshybugger/H;

.field private static final d:Lorg/jshybugger/H;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 34
    invoke-static {v1, v1}, Lorg/jshybugger/S;->b(II)Lorg/jshybugger/H;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/jshybugger/H;->r(I)Lorg/jshybugger/H;

    move-result-object v0

    invoke-static {v0}, Lorg/jshybugger/S;->a(Lorg/jshybugger/H;)Lorg/jshybugger/H;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/ep;->b:Lorg/jshybugger/H;

    .line 36
    invoke-static {v1, v1}, Lorg/jshybugger/S;->b(II)Lorg/jshybugger/H;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/jshybugger/H;->r(I)Lorg/jshybugger/H;

    move-result-object v0

    invoke-static {v0}, Lorg/jshybugger/S;->a(Lorg/jshybugger/H;)Lorg/jshybugger/H;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/ep;->c:Lorg/jshybugger/H;

    .line 38
    invoke-static {v4, v4}, Lorg/jshybugger/S;->b(II)Lorg/jshybugger/H;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/jshybugger/H;->r(I)Lorg/jshybugger/H;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/jshybugger/H;->r(I)Lorg/jshybugger/H;

    move-result-object v0

    invoke-static {v0}, Lorg/jshybugger/S;->a(Lorg/jshybugger/H;)Lorg/jshybugger/H;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/ep;->d:Lorg/jshybugger/H;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/jshybugger/cI;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lorg/jshybugger/aw;Ljava/lang/Object;Ljava/util/List;)V
    .registers 10

    .prologue
    .line 32
    check-cast p2, Lorg/jshybugger/ey;

    instance-of v0, p2, Lorg/jshybugger/el;

    if-eqz v0, :cond_24

    invoke-virtual {p2}, Lorg/jshybugger/ey;->a()Lorg/jshybugger/H;

    move-result-object v0

    sget-object v1, Lorg/jshybugger/ep;->b:Lorg/jshybugger/H;

    invoke-virtual {v1}, Lorg/jshybugger/H;->o()Lorg/jshybugger/H;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lorg/jshybugger/H;->u()Lorg/jshybugger/H;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/jshybugger/ep;->c:Lorg/jshybugger/H;

    invoke-virtual {v0}, Lorg/jshybugger/H;->o()Lorg/jshybugger/H;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_23
    return-void

    :cond_24
    instance-of v0, p2, Lorg/jshybugger/eh;

    if-eqz v0, :cond_2e

    sget-object v0, Lorg/jshybugger/ep;->d:Lorg/jshybugger/H;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_2e
    invoke-virtual {p2}, Lorg/jshybugger/ey;->a()Lorg/jshybugger/H;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/H;->f()I

    move-result v1

    invoke-interface {p1}, Lorg/jshybugger/aw;->c()Lorg/jshybugger/I;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lorg/jshybugger/I;->a(I)Lorg/jshybugger/H;

    move-result-object v2

    const/16 v3, -0x80

    :try_start_41
    invoke-virtual {v2, v3}, Lorg/jshybugger/H;->r(I)Lorg/jshybugger/H;

    ushr-int/lit8 v3, v1, 0x1c

    and-int/lit8 v3, v3, 0x7f

    ushr-int/lit8 v4, v1, 0xe

    and-int/lit8 v4, v4, 0x7f

    ushr-int/lit8 v5, v1, 0x7

    and-int/lit8 v5, v5, 0x7f

    and-int/lit8 v1, v1, 0x7f

    if-nez v3, :cond_82

    if-nez v4, :cond_74

    if-nez v5, :cond_6b

    invoke-virtual {v2, v1}, Lorg/jshybugger/H;->r(I)Lorg/jshybugger/H;

    :goto_5b
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lorg/jshybugger/H;->u()Lorg/jshybugger/H;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_65
    .catchall {:try_start_41 .. :try_end_65} :catchall_66

    goto :goto_23

    :catchall_66
    move-exception v0

    invoke-virtual {v2}, Lorg/jshybugger/H;->v()Z

    throw v0

    :cond_6b
    or-int/lit16 v3, v5, 0x80

    :try_start_6d
    invoke-virtual {v2, v3}, Lorg/jshybugger/H;->r(I)Lorg/jshybugger/H;

    invoke-virtual {v2, v1}, Lorg/jshybugger/H;->r(I)Lorg/jshybugger/H;

    goto :goto_5b

    :cond_74
    or-int/lit16 v3, v4, 0x80

    invoke-virtual {v2, v3}, Lorg/jshybugger/H;->r(I)Lorg/jshybugger/H;

    or-int/lit16 v3, v5, 0x80

    invoke-virtual {v2, v3}, Lorg/jshybugger/H;->r(I)Lorg/jshybugger/H;

    invoke-virtual {v2, v1}, Lorg/jshybugger/H;->r(I)Lorg/jshybugger/H;

    goto :goto_5b

    :cond_82
    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v2, v3}, Lorg/jshybugger/H;->r(I)Lorg/jshybugger/H;

    or-int/lit16 v3, v4, 0x80

    invoke-virtual {v2, v3}, Lorg/jshybugger/H;->r(I)Lorg/jshybugger/H;

    or-int/lit16 v3, v5, 0x80

    invoke-virtual {v2, v3}, Lorg/jshybugger/H;->r(I)Lorg/jshybugger/H;

    invoke-virtual {v2, v1}, Lorg/jshybugger/H;->r(I)Lorg/jshybugger/H;
    :try_end_94
    .catchall {:try_start_6d .. :try_end_94} :catchall_66

    goto :goto_5b
.end method
