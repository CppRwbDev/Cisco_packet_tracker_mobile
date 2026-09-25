.class final Lorg/jshybugger/fC;
.super Ljava/lang/Object;
.source "DefaultFutureListeners.java"


# instance fields
.field a:[Lorg/jshybugger/fO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/jshybugger/fO",
            "<+",
            "Lorg/jshybugger/fN",
            "<*>;>;"
        }
    .end annotation
.end field

.field b:I

.field c:I


# direct methods
.method public constructor <init>(Lorg/jshybugger/fO;Lorg/jshybugger/fO;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/fO",
            "<+",
            "Lorg/jshybugger/fN",
            "<*>;>;",
            "Lorg/jshybugger/fO",
            "<+",
            "Lorg/jshybugger/fN",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-array v0, v2, [Lorg/jshybugger/fO;

    iput-object v0, p0, Lorg/jshybugger/fC;->a:[Lorg/jshybugger/fO;

    .line 30
    iget-object v0, p0, Lorg/jshybugger/fC;->a:[Lorg/jshybugger/fO;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 31
    iget-object v0, p0, Lorg/jshybugger/fC;->a:[Lorg/jshybugger/fO;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 32
    iput v2, p0, Lorg/jshybugger/fC;->b:I

    .line 33
    instance-of v0, p1, Lorg/jshybugger/fP;

    if-eqz v0, :cond_1e

    .line 34
    iget v0, p0, Lorg/jshybugger/fC;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jshybugger/fC;->c:I

    .line 36
    :cond_1e
    instance-of v0, p2, Lorg/jshybugger/fP;

    if-eqz v0, :cond_28

    .line 37
    iget v0, p0, Lorg/jshybugger/fC;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jshybugger/fC;->c:I

    .line 39
    :cond_28
    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/fO;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/fO",
            "<+",
            "Lorg/jshybugger/fN",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v1, p0, Lorg/jshybugger/fC;->a:[Lorg/jshybugger/fO;

    .line 57
    iget v2, p0, Lorg/jshybugger/fC;->b:I

    .line 58
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v2, :cond_27

    .line 59
    aget-object v3, v1, v0

    if-ne v3, p1, :cond_28

    .line 60
    sub-int v3, v2, v0

    add-int/lit8 v3, v3, -0x1

    .line 61
    if-lez v3, :cond_16

    .line 62
    add-int/lit8 v4, v0, 0x1

    invoke-static {v1, v4, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    :cond_16
    add-int/lit8 v0, v2, -0x1

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 65
    iput v0, p0, Lorg/jshybugger/fC;->b:I

    .line 67
    instance-of v0, p1, Lorg/jshybugger/fP;

    if-eqz v0, :cond_27

    .line 68
    iget v0, p0, Lorg/jshybugger/fC;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jshybugger/fC;->c:I

    .line 73
    :cond_27
    return-void

    .line 58
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method
