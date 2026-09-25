.class public final Lorg/jshybugger/ai;
.super Ljava/lang/Object;
.source "AdaptiveRecvByteBufAllocator.java"

# interfaces
.implements Lorg/jshybugger/bB;


# static fields
.field public static final a:Lorg/jshybugger/ai;

.field private static final b:[I


# instance fields
.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v0, 0x200

    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    const/16 v1, 0x10

    :goto_9
    if-ge v1, v0, :cond_15

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v1, v1, 0x10

    goto :goto_9

    .line 51
    :cond_15
    :goto_15
    if-lez v0, :cond_21

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    shl-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 55
    :cond_21
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    sput-object v0, Lorg/jshybugger/ai;->b:[I

    .line 56
    const/4 v0, 0x0

    move v1, v0

    :goto_2b
    sget-object v0, Lorg/jshybugger/ai;->b:[I

    array-length v0, v0

    if-ge v1, v0, :cond_42

    .line 57
    sget-object v3, Lorg/jshybugger/ai;->b:[I

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    .line 56
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2b

    .line 61
    :cond_42
    new-instance v0, Lorg/jshybugger/ai;

    invoke-direct {v0}, Lorg/jshybugger/ai;-><init>()V

    sput-object v0, Lorg/jshybugger/ai;->a:Lorg/jshybugger/ai;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 140
    const/16 v0, 0x40

    const/16 v1, 0x400

    const/high16 v2, 0x10000

    invoke-direct {p0, v0, v1, v2}, Lorg/jshybugger/ai;-><init>(III)V

    .line 141
    return-void
.end method

.method private constructor <init>(III)V
    .registers 8

    .prologue
    const/high16 v3, 0x10000

    const/16 v2, 0x40

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    invoke-static {v2}, Lorg/jshybugger/ai;->b(I)I

    move-result v0

    .line 162
    sget-object v1, Lorg/jshybugger/ai;->b:[I

    aget v1, v1, v0

    if-ge v1, v2, :cond_28

    .line 163
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jshybugger/ai;->c:I

    .line 168
    :goto_15
    invoke-static {v3}, Lorg/jshybugger/ai;->b(I)I

    move-result v0

    .line 169
    sget-object v1, Lorg/jshybugger/ai;->b:[I

    aget v1, v1, v0

    if-le v1, v3, :cond_2b

    .line 170
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jshybugger/ai;->d:I

    .line 175
    :goto_23
    const/16 v0, 0x400

    iput v0, p0, Lorg/jshybugger/ai;->e:I

    .line 176
    return-void

    .line 165
    :cond_28
    iput v0, p0, Lorg/jshybugger/ai;->c:I

    goto :goto_15

    .line 172
    :cond_2b
    iput v0, p0, Lorg/jshybugger/ai;->d:I

    goto :goto_23
.end method

.method static synthetic a(I)I
    .registers 2

    .prologue
    .line 34
    invoke-static {p0}, Lorg/jshybugger/ai;->b(I)I

    move-result v0

    return v0
.end method

.method private static b(I)I
    .registers 7

    .prologue
    .line 64
    const/4 v0, 0x0

    sget-object v1, Lorg/jshybugger/ai;->b:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 65
    :goto_6
    if-ge v1, v0, :cond_9

    .line 82
    :goto_8
    return v0

    .line 68
    :cond_9
    if-ne v1, v0, :cond_d

    move v0, v1

    .line 69
    goto :goto_8

    .line 72
    :cond_d
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 73
    sget-object v3, Lorg/jshybugger/ai;->b:[I

    aget v3, v3, v2

    .line 74
    sget-object v4, Lorg/jshybugger/ai;->b:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    .line 75
    if-le p0, v4, :cond_20

    .line 76
    add-int/lit8 v0, v2, 0x1

    goto :goto_6

    .line 77
    :cond_20
    if-ge p0, v3, :cond_25

    .line 78
    add-int/lit8 v1, v2, -0x1

    goto :goto_6

    .line 79
    :cond_25
    if-ne p0, v3, :cond_29

    move v0, v2

    .line 80
    goto :goto_8

    .line 82
    :cond_29
    add-int/lit8 v0, v2, 0x1

    goto :goto_8
.end method

.method static synthetic b()[I
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lorg/jshybugger/ai;->b:[I

    return-object v0
.end method


# virtual methods
.method public final a()Lorg/jshybugger/bC;
    .registers 5

    .prologue
    .line 180
    new-instance v0, Lorg/jshybugger/bC;

    iget v1, p0, Lorg/jshybugger/ai;->c:I

    iget v2, p0, Lorg/jshybugger/ai;->d:I

    iget v3, p0, Lorg/jshybugger/ai;->e:I

    invoke-direct {v0, v1, v2, v3}, Lorg/jshybugger/bC;-><init>(III)V

    return-object v0
.end method
