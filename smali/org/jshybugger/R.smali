.class public Lorg/jshybugger/r;
.super Ljava/lang/Object;
.source "ZStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:[B

.field public b:I

.field public c:I

.field public d:J

.field public e:[B

.field public f:I

.field public g:I

.field public h:J

.field public i:Ljava/lang/String;

.field public j:Lorg/jshybugger/d;

.field public k:Lorg/jshybugger/k;

.field l:Lorg/jshybugger/c;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 86
    new-instance v0, Lorg/jshybugger/a;

    invoke-direct {v0}, Lorg/jshybugger/a;-><init>()V

    invoke-direct {p0, v0}, Lorg/jshybugger/r;-><init>(Lorg/jshybugger/c;)V

    .line 87
    return-void
.end method

.method private constructor <init>(Lorg/jshybugger/c;)V
    .registers 2

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lorg/jshybugger/r;->l:Lorg/jshybugger/c;

    .line 91
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 3

    .prologue
    .line 195
    iget-object v0, p0, Lorg/jshybugger/r;->j:Lorg/jshybugger/d;

    if-nez v0, :cond_6

    const/4 v0, -0x2

    .line 198
    :goto_5
    return v0

    .line 196
    :cond_6
    iget-object v0, p0, Lorg/jshybugger/r;->j:Lorg/jshybugger/d;

    invoke-virtual {v0}, Lorg/jshybugger/d;->a()I

    move-result v0

    .line 197
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jshybugger/r;->j:Lorg/jshybugger/d;

    goto :goto_5
.end method

.method public a(I)I
    .registers 3

    .prologue
    .line 189
    iget-object v0, p0, Lorg/jshybugger/r;->j:Lorg/jshybugger/d;

    if-nez v0, :cond_6

    .line 190
    const/4 v0, -0x2

    .line 192
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/jshybugger/r;->j:Lorg/jshybugger/d;

    invoke-virtual {v0, p1}, Lorg/jshybugger/d;->b(I)I

    move-result v0

    goto :goto_5
.end method

.method final b()V
    .registers 7

    .prologue
    .line 215
    iget-object v0, p0, Lorg/jshybugger/r;->j:Lorg/jshybugger/d;

    iget v0, v0, Lorg/jshybugger/d;->c:I

    .line 217
    iget v1, p0, Lorg/jshybugger/r;->g:I

    if-le v0, v1, :cond_a

    iget v0, p0, Lorg/jshybugger/r;->g:I

    .line 218
    :cond_a
    if-nez v0, :cond_d

    .line 240
    :cond_c
    :goto_c
    return-void

    .line 220
    :cond_d
    iget-object v1, p0, Lorg/jshybugger/r;->j:Lorg/jshybugger/d;

    iget-object v1, v1, Lorg/jshybugger/d;->a:[B

    array-length v1, v1

    iget-object v2, p0, Lorg/jshybugger/r;->j:Lorg/jshybugger/d;

    iget v2, v2, Lorg/jshybugger/d;->b:I

    if-le v1, v2, :cond_2f

    iget-object v1, p0, Lorg/jshybugger/r;->e:[B

    array-length v1, v1

    iget v2, p0, Lorg/jshybugger/r;->f:I

    if-le v1, v2, :cond_2f

    iget-object v1, p0, Lorg/jshybugger/r;->j:Lorg/jshybugger/d;

    iget-object v1, v1, Lorg/jshybugger/d;->a:[B

    array-length v1, v1

    iget-object v2, p0, Lorg/jshybugger/r;->j:Lorg/jshybugger/d;

    iget v2, v2, Lorg/jshybugger/d;->b:I

    add-int/2addr v2, v0

    if-lt v1, v2, :cond_2f

    iget-object v1, p0, Lorg/jshybugger/r;->e:[B

    iget v1, p0, Lorg/jshybugger/r;->f:I

    .line 229
    :cond_2f
    iget-object v1, p0, Lorg/jshybugger/r;->j:Lorg/jshybugger/d;

    iget-object v1, v1, Lorg/jshybugger/d;->a:[B

    iget-object v2, p0, Lorg/jshybugger/r;->j:Lorg/jshybugger/d;

    iget v2, v2, Lorg/jshybugger/d;->b:I

    iget-object v3, p0, Lorg/jshybugger/r;->e:[B

    iget v4, p0, Lorg/jshybugger/r;->f:I

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    iget v1, p0, Lorg/jshybugger/r;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jshybugger/r;->f:I

    .line 233
    iget-object v1, p0, Lorg/jshybugger/r;->j:Lorg/jshybugger/d;

    iget v2, v1, Lorg/jshybugger/d;->b:I

    add-int/2addr v2, v0

    iput v2, v1, Lorg/jshybugger/d;->b:I

    .line 234
    iget-wide v2, p0, Lorg/jshybugger/r;->h:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/jshybugger/r;->h:J

    .line 235
    iget v1, p0, Lorg/jshybugger/r;->g:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/jshybugger/r;->g:I

    .line 236
    iget-object v1, p0, Lorg/jshybugger/r;->j:Lorg/jshybugger/d;

    iget v2, v1, Lorg/jshybugger/d;->c:I

    sub-int v0, v2, v0

    iput v0, v1, Lorg/jshybugger/d;->c:I

    .line 237
    iget-object v0, p0, Lorg/jshybugger/r;->j:Lorg/jshybugger/d;

    iget v0, v0, Lorg/jshybugger/d;->c:I

    if-nez v0, :cond_c

    .line 238
    iget-object v0, p0, Lorg/jshybugger/r;->j:Lorg/jshybugger/d;

    const/4 v1, 0x0

    iput v1, v0, Lorg/jshybugger/d;->b:I

    goto :goto_c
.end method
