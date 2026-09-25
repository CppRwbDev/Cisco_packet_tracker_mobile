.class abstract Ltwitter4j/EntityIndex;
.super Ljava/lang/Object;
.source "EntityIndex.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ltwitter4j/EntityIndex;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x34253b6026e7c95fL


# instance fields
.field private end:I

.field private start:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Ltwitter4j/EntityIndex;->start:I

    .line 25
    iput v0, p0, Ltwitter4j/EntityIndex;->end:I

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 22
    check-cast p1, Ltwitter4j/EntityIndex;

    invoke-virtual {p0, p1}, Ltwitter4j/EntityIndex;->compareTo(Ltwitter4j/EntityIndex;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ltwitter4j/EntityIndex;)I
    .registers 6
    .param p1, "that"    # Ltwitter4j/EntityIndex;

    .prologue
    .line 29
    iget v2, p0, Ltwitter4j/EntityIndex;->start:I

    iget v3, p1, Ltwitter4j/EntityIndex;->start:I

    sub-int/2addr v2, v3

    int-to-long v0, v2

    .line 30
    .local v0, "delta":J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_10

    .line 31
    const/high16 v2, -0x80000000

    .line 35
    :goto_f
    return v2

    .line 32
    :cond_10
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1b

    .line 33
    const v2, 0x7fffffff

    goto :goto_f

    .line 35
    :cond_1b
    long-to-int v2, v0

    goto :goto_f
.end method

.method getEnd()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Ltwitter4j/EntityIndex;->end:I

    return v0
.end method

.method getStart()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Ltwitter4j/EntityIndex;->start:I

    return v0
.end method

.method setEnd(I)V
    .registers 2
    .param p1, "end"    # I

    .prologue
    .line 43
    iput p1, p0, Ltwitter4j/EntityIndex;->end:I

    .line 44
    return-void
.end method

.method setStart(I)V
    .registers 2
    .param p1, "start"    # I

    .prologue
    .line 39
    iput p1, p0, Ltwitter4j/EntityIndex;->start:I

    .line 40
    return-void
.end method
