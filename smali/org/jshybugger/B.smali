.class public final Lorg/jshybugger/b;
.super Ljava/lang/Object;
.source "CRC32.java"

# interfaces
.implements Lorg/jshybugger/c;


# static fields
.field private static b:[I


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0x100

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lorg/jshybugger/b;->b:[I

    .line 45
    new-array v0, v4, [I

    sput-object v0, Lorg/jshybugger/b;->b:[I

    .line 46
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v4, :cond_28

    .line 48
    const/16 v0, 0x8

    move v1, v2

    :goto_f
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_21

    .line 49
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_1e

    .line 50
    const v3, -0x12477ce0

    ushr-int/lit8 v1, v1, 0x1

    xor-int/2addr v1, v3

    goto :goto_f

    .line 52
    :cond_1e
    ushr-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 54
    :cond_21
    sget-object v0, Lorg/jshybugger/b;->b:[I

    aput v1, v0, v2

    .line 46
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 56
    :cond_28
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lorg/jshybugger/b;->a:I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lorg/jshybugger/b;->a:I

    .line 67
    return-void
.end method

.method public final a(J)V
    .registers 4

    .prologue
    .line 70
    long-to-int v0, p1

    iput v0, p0, Lorg/jshybugger/b;->a:I

    .line 71
    return-void
.end method

.method public final a([BII)V
    .registers 8

    .prologue
    .line 59
    iget v0, p0, Lorg/jshybugger/b;->a:I

    xor-int/lit8 v0, v0, -0x1

    .line 60
    :goto_4
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_18

    .line 61
    sget-object v2, Lorg/jshybugger/b;->b:[I

    add-int/lit8 v1, p2, 0x1

    aget-byte v3, p1, p2

    xor-int/2addr v3, v0

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    ushr-int/lit8 v0, v0, 0x8

    xor-int/2addr v0, v2

    move p2, v1

    goto :goto_4

    .line 62
    :cond_18
    xor-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jshybugger/b;->a:I

    .line 63
    return-void
.end method

.method public final b()J
    .registers 5

    .prologue
    .line 74
    iget v0, p0, Lorg/jshybugger/b;->a:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method
