.class public final Lorg/jshybugger/nU;
.super Ljava/lang/Object;
.source "FormattingTuple.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 35
    new-instance v0, Lorg/jshybugger/nU;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jshybugger/nU;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0, v0}, Lorg/jshybugger/nU;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/jshybugger/nU;->a:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lorg/jshybugger/nU;->b:Ljava/lang/Throwable;

    .line 48
    if-eqz p3, :cond_1f

    .line 49
    if-eqz p2, :cond_f

    array-length v0, p2

    if-nez v0, :cond_17

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "non-sensical empty or null argument array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    :cond_1f
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/jshybugger/nU;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lorg/jshybugger/nU;->b:Ljava/lang/Throwable;

    return-object v0
.end method
