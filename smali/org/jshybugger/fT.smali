.class public final Lorg/jshybugger/ft;
.super Ljava/lang/RuntimeException;
.source "ResourceLeakException.java"


# instance fields
.field private final a:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 28
    invoke-virtual {p0}, Lorg/jshybugger/ft;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/ft;->a:[Ljava/lang/StackTraceElement;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 32
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lorg/jshybugger/ft;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/ft;->a:[Ljava/lang/StackTraceElement;

    .line 34
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 58
    instance-of v0, p1, Lorg/jshybugger/ft;

    if-nez v0, :cond_6

    .line 59
    const/4 v0, 0x0

    .line 65
    :goto_5
    return v0

    .line 61
    :cond_6
    if-ne p1, p0, :cond_a

    .line 62
    const/4 v0, 0x1

    goto :goto_5

    .line 65
    :cond_a
    iget-object v0, p0, Lorg/jshybugger/ft;->a:[Ljava/lang/StackTraceElement;

    check-cast p1, Lorg/jshybugger/ft;

    iget-object v1, p1, Lorg/jshybugger/ft;->a:[Ljava/lang/StackTraceElement;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public final hashCode()I
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 48
    iget-object v2, p0, Lorg/jshybugger/ft;->a:[Ljava/lang/StackTraceElement;

    .line 50
    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v0, v3, :cond_13

    aget-object v4, v2, v0

    .line 51
    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->hashCode()I

    move-result v4

    add-int/2addr v1, v4

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 53
    :cond_13
    return v1
.end method
