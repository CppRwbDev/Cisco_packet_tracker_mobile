.class final Lorg/jshybugger/ln;
.super Ljava/lang/Object;
.source "NativeArray.java"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field private a:I

.field private synthetic b:I

.field private synthetic c:I

.field private synthetic d:Lorg/jshybugger/lm;


# direct methods
.method constructor <init>(Lorg/jshybugger/lm;II)V
    .registers 5

    .prologue
    .line 1777
    iput-object p1, p0, Lorg/jshybugger/ln;->d:Lorg/jshybugger/lm;

    iput p2, p0, Lorg/jshybugger/ln;->b:I

    iput p3, p0, Lorg/jshybugger/ln;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1779
    iget v0, p0, Lorg/jshybugger/ln;->b:I

    iput v0, p0, Lorg/jshybugger/ln;->a:I

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 1816
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .registers 3

    .prologue
    .line 1782
    iget v0, p0, Lorg/jshybugger/ln;->a:I

    iget v1, p0, Lorg/jshybugger/ln;->c:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final hasPrevious()Z
    .registers 2

    .prologue
    .line 1793
    iget v0, p0, Lorg/jshybugger/ln;->a:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final next()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 1786
    iget v0, p0, Lorg/jshybugger/ln;->a:I

    iget v1, p0, Lorg/jshybugger/ln;->c:I

    if-ne v0, v1, :cond_c

    .line 1787
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1789
    :cond_c
    iget-object v0, p0, Lorg/jshybugger/ln;->d:Lorg/jshybugger/lm;

    iget v1, p0, Lorg/jshybugger/ln;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jshybugger/ln;->a:I

    invoke-virtual {v0, v1}, Lorg/jshybugger/lm;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final nextIndex()I
    .registers 2

    .prologue
    .line 1804
    iget v0, p0, Lorg/jshybugger/ln;->a:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1797
    iget v0, p0, Lorg/jshybugger/ln;->a:I

    if-nez v0, :cond_a

    .line 1798
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1800
    :cond_a
    iget-object v0, p0, Lorg/jshybugger/ln;->d:Lorg/jshybugger/lm;

    iget v1, p0, Lorg/jshybugger/ln;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jshybugger/ln;->a:I

    invoke-virtual {v0, v1}, Lorg/jshybugger/lm;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .registers 2

    .prologue
    .line 1808
    iget v0, p0, Lorg/jshybugger/ln;->a:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final remove()V
    .registers 2

    .prologue
    .line 1812
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final set(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 1820
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
