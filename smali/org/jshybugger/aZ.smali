.class public abstract Lorg/jshybugger/az;
.super Lorg/jshybugger/ay;
.source "ChannelInitializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lorg/jshybugger/aj;",
        ">",
        "Lorg/jshybugger/ay;"
    }
.end annotation

.annotation runtime Lorg/jshybugger/au;
.end annotation


# static fields
.field private static final b:Lorg/jshybugger/gX;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-class v0, Lorg/jshybugger/az;

    invoke-static {v0}, Lorg/jshybugger/gY;->a(Ljava/lang/Class;)Lorg/jshybugger/gX;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/az;->b:Lorg/jshybugger/gX;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/jshybugger/ay;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Lorg/jshybugger/aj;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation
.end method

.method public final e(Lorg/jshybugger/aw;)V
    .registers 7

    .prologue
    .line 67
    const/4 v1, 0x0

    .line 68
    :try_start_1
    invoke-interface {p1}, Lorg/jshybugger/aw;->a()Lorg/jshybugger/aj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jshybugger/az;->a(Lorg/jshybugger/aj;)V

    .line 71
    invoke-interface {p1}, Lorg/jshybugger/aw;->b()Lorg/jshybugger/aJ;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/jshybugger/aJ;->a(Lorg/jshybugger/at;)Lorg/jshybugger/aJ;

    .line 72
    const/4 v1, 0x1

    .line 73
    invoke-interface {p1}, Lorg/jshybugger/aw;->i()Lorg/jshybugger/aw;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_13} :catch_14
    .catchall {:try_start_1 .. :try_end_13} :catchall_3a

    .line 81
    :goto_13
    return-void

    .line 82
    :catch_14
    move-exception v0

    .line 76
    :try_start_15
    sget-object v2, Lorg/jshybugger/az;->b:Lorg/jshybugger/gX;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to initialize a channel. Closing: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/jshybugger/aw;->a()Lorg/jshybugger/aj;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2d
    .catchall {:try_start_15 .. :try_end_2d} :catchall_3a

    .line 78
    if-nez v1, :cond_36

    .line 79
    invoke-interface {p1}, Lorg/jshybugger/aw;->b()Lorg/jshybugger/aJ;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/jshybugger/aJ;->a(Lorg/jshybugger/at;)Lorg/jshybugger/aJ;

    .line 81
    :cond_36
    invoke-interface {p1}, Lorg/jshybugger/aw;->h()Lorg/jshybugger/ao;

    goto :goto_13

    .line 78
    :catchall_3a
    move-exception v0

    if-nez v1, :cond_44

    .line 79
    invoke-interface {p1}, Lorg/jshybugger/aw;->b()Lorg/jshybugger/aJ;

    move-result-object v1

    invoke-interface {v1, p0}, Lorg/jshybugger/aJ;->a(Lorg/jshybugger/at;)Lorg/jshybugger/aJ;

    .line 81
    :cond_44
    invoke-interface {p1}, Lorg/jshybugger/aw;->h()Lorg/jshybugger/ao;

    throw v0
.end method
