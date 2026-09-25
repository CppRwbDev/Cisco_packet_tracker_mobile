.class final Lorg/jshybugger/li;
.super Ljava/lang/Object;
.source "Kit.java"


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/Object;

.field private c:I


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-object p1, p0, Lorg/jshybugger/li;->a:Ljava/lang/Object;

    .line 334
    iput-object p2, p0, Lorg/jshybugger/li;->b:Ljava/lang/Object;

    .line 335
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 340
    instance-of v1, p1, Lorg/jshybugger/li;

    if-nez v1, :cond_6

    .line 343
    :cond_5
    :goto_5
    return v0

    .line 342
    :cond_6
    check-cast p1, Lorg/jshybugger/li;

    .line 343
    iget-object v1, p0, Lorg/jshybugger/li;->a:Ljava/lang/Object;

    iget-object v2, p1, Lorg/jshybugger/li;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/jshybugger/li;->b:Ljava/lang/Object;

    iget-object v2, p1, Lorg/jshybugger/li;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final hashCode()I
    .registers 3

    .prologue
    .line 349
    iget v0, p0, Lorg/jshybugger/li;->c:I

    if-nez v0, :cond_13

    .line 350
    iget-object v0, p0, Lorg/jshybugger/li;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/jshybugger/li;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/jshybugger/li;->c:I

    .line 352
    :cond_13
    iget v0, p0, Lorg/jshybugger/li;->c:I

    return v0
.end method
