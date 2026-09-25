.class final Lorg/jshybugger/dl;
.super Ljava/lang/Object;
.source "DefaultHttpHeaders.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Lorg/jshybugger/dk;

.field private synthetic b:Lorg/jshybugger/dj;


# direct methods
.method private constructor <init>(Lorg/jshybugger/dj;)V
    .registers 3

    .prologue
    .line 344
    iput-object p1, p0, Lorg/jshybugger/dl;->b:Lorg/jshybugger/dj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iget-object v0, p0, Lorg/jshybugger/dl;->b:Lorg/jshybugger/dj;

    invoke-static {v0}, Lorg/jshybugger/dj;->a(Lorg/jshybugger/dj;)Lorg/jshybugger/dk;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/dl;->a:Lorg/jshybugger/dk;

    return-void
.end method

.method synthetic constructor <init>(Lorg/jshybugger/dj;B)V
    .registers 3

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lorg/jshybugger/dl;-><init>(Lorg/jshybugger/dj;)V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    .prologue
    .line 350
    iget-object v0, p0, Lorg/jshybugger/dl;->a:Lorg/jshybugger/dk;

    iget-object v0, v0, Lorg/jshybugger/dk;->f:Lorg/jshybugger/dk;

    iget-object v1, p0, Lorg/jshybugger/dl;->b:Lorg/jshybugger/dj;

    invoke-static {v1}, Lorg/jshybugger/dj;->a(Lorg/jshybugger/dj;)Lorg/jshybugger/dk;

    move-result-object v1

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 344
    iget-object v0, p0, Lorg/jshybugger/dl;->a:Lorg/jshybugger/dk;

    iget-object v0, v0, Lorg/jshybugger/dk;->f:Lorg/jshybugger/dk;

    iput-object v0, p0, Lorg/jshybugger/dl;->a:Lorg/jshybugger/dk;

    iget-object v0, p0, Lorg/jshybugger/dl;->a:Lorg/jshybugger/dk;

    iget-object v1, p0, Lorg/jshybugger/dl;->b:Lorg/jshybugger/dj;

    invoke-static {v1}, Lorg/jshybugger/dj;->a(Lorg/jshybugger/dj;)Lorg/jshybugger/dk;

    move-result-object v1

    if-ne v0, v1, :cond_16

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_16
    iget-object v0, p0, Lorg/jshybugger/dl;->a:Lorg/jshybugger/dk;

    return-object v0
.end method

.method public final remove()V
    .registers 2

    .prologue
    .line 366
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
