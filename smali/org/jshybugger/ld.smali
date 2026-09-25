.class final Lorg/jshybugger/lD;
.super Ljava/lang/Object;
.source "NativeObject.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private a:[Ljava/lang/Object;

.field private b:Ljava/lang/Object;

.field private c:I

.field private synthetic d:Lorg/jshybugger/lC;


# direct methods
.method constructor <init>(Lorg/jshybugger/lC;)V
    .registers 3

    .prologue
    .line 553
    iput-object p1, p0, Lorg/jshybugger/lD;->d:Lorg/jshybugger/lC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    iget-object v0, p0, Lorg/jshybugger/lD;->d:Lorg/jshybugger/lC;

    iget-object v0, v0, Lorg/jshybugger/lC;->a:Lorg/jshybugger/ly;

    invoke-virtual {v0}, Lorg/jshybugger/ly;->h_()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/lD;->a:[Ljava/lang/Object;

    .line 556
    const/4 v0, 0x0

    iput v0, p0, Lorg/jshybugger/lD;->c:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    .prologue
    .line 559
    iget v0, p0, Lorg/jshybugger/lD;->c:I

    iget-object v1, p0, Lorg/jshybugger/lD;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final next()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 564
    :try_start_0
    iget-object v0, p0, Lorg/jshybugger/lD;->a:[Ljava/lang/Object;

    iget v1, p0, Lorg/jshybugger/lD;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jshybugger/lD;->c:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/jshybugger/lD;->b:Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 566
    :catch_d
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jshybugger/lD;->b:Ljava/lang/Object;

    .line 567
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .registers 3

    .prologue
    .line 572
    iget-object v0, p0, Lorg/jshybugger/lD;->b:Ljava/lang/Object;

    if-nez v0, :cond_a

    .line 573
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 575
    :cond_a
    iget-object v0, p0, Lorg/jshybugger/lD;->d:Lorg/jshybugger/lC;

    iget-object v0, v0, Lorg/jshybugger/lC;->a:Lorg/jshybugger/ly;

    iget-object v1, p0, Lorg/jshybugger/lD;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/jshybugger/ly;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jshybugger/lD;->b:Ljava/lang/Object;

    .line 577
    return-void
.end method
