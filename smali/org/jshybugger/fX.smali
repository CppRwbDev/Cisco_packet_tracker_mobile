.class final Lorg/jshybugger/fx;
.super Ljava/lang/Object;
.source "AbstractEventExecutor.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/jshybugger/fK;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private synthetic b:Lorg/jshybugger/fw;


# direct methods
.method private constructor <init>(Lorg/jshybugger/fw;)V
    .registers 2

    .prologue
    .line 135
    iput-object p1, p0, Lorg/jshybugger/fx;->b:Lorg/jshybugger/fw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jshybugger/fw;B)V
    .registers 3

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lorg/jshybugger/fx;-><init>(Lorg/jshybugger/fw;)V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 140
    iget-boolean v0, p0, Lorg/jshybugger/fx;->a:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/jshybugger/fx;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jshybugger/fx;->a:Z

    iget-object v0, p0, Lorg/jshybugger/fx;->b:Lorg/jshybugger/fw;

    return-object v0
.end method

.method public final remove()V
    .registers 3

    .prologue
    .line 154
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read-only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
