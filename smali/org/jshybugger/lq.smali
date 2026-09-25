.class final Lorg/jshybugger/lQ;
.super Ljava/lang/Object;
.source "NativeJavaMethod.java"


# instance fields
.field final a:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field final b:I


# direct methods
.method constructor <init>([Ljava/lang/Object;I)V
    .registers 7

    .prologue
    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    iput p2, p0, Lorg/jshybugger/lQ;->b:I

    .line 569
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Class;

    iput-object v0, p0, Lorg/jshybugger/lQ;->a:[Ljava/lang/Class;

    .line 570
    const/4 v0, 0x0

    array-length v2, p1

    move v1, v0

    :goto_d
    if-ge v1, v2, :cond_2b

    .line 571
    aget-object v0, p1, v1

    .line 572
    instance-of v3, v0, Lorg/jshybugger/mj;

    if-eqz v3, :cond_1b

    .line 573
    check-cast v0, Lorg/jshybugger/mj;

    invoke-interface {v0}, Lorg/jshybugger/mj;->b()Ljava/lang/Object;

    move-result-object v0

    .line 574
    :cond_1b
    iget-object v3, p0, Lorg/jshybugger/lQ;->a:[Ljava/lang/Class;

    if-nez v0, :cond_26

    const/4 v0, 0x0

    :goto_20
    aput-object v0, v3, v1

    .line 570
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 574
    :cond_26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_20

    .line 576
    :cond_2b
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 597
    instance-of v1, p1, Lorg/jshybugger/lQ;

    if-nez v1, :cond_6

    .line 601
    :cond_5
    :goto_5
    return v0

    .line 600
    :cond_6
    check-cast p1, Lorg/jshybugger/lQ;

    .line 601
    iget-object v1, p0, Lorg/jshybugger/lQ;->a:[Ljava/lang/Class;

    iget-object v2, p1, Lorg/jshybugger/lQ;->a:[Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lorg/jshybugger/lQ;->b:I

    iget v2, p1, Lorg/jshybugger/lQ;->b:I

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 606
    iget-object v0, p0, Lorg/jshybugger/lQ;->a:[Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
