.class public Lorg/jshybugger/hz;
.super Ljava/io/FilterOutputStream;
.source "BaseNCodecOutputStream.java"


# instance fields
.field private final a:Z

.field private final b:Lorg/jshybugger/hx;

.field private final c:[B

.field private final d:Lorg/jshybugger/hy;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lorg/jshybugger/hx;Z)V
    .registers 5

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jshybugger/hz;->c:[B

    .line 42
    new-instance v0, Lorg/jshybugger/hy;

    invoke-direct {v0}, Lorg/jshybugger/hy;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/hz;->d:Lorg/jshybugger/hy;

    .line 47
    iput-object p2, p0, Lorg/jshybugger/hz;->b:Lorg/jshybugger/hx;

    .line 48
    iput-boolean p3, p0, Lorg/jshybugger/hz;->a:Z

    .line 49
    return-void
.end method

.method private a(Z)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 111
    iget-object v0, p0, Lorg/jshybugger/hz;->b:Lorg/jshybugger/hx;

    iget-object v0, p0, Lorg/jshybugger/hz;->d:Lorg/jshybugger/hy;

    invoke-static {v0}, Lorg/jshybugger/hx;->a(Lorg/jshybugger/hy;)I

    move-result v0

    .line 112
    if-lez v0, :cond_1c

    .line 113
    new-array v1, v0, [B

    .line 114
    iget-object v2, p0, Lorg/jshybugger/hz;->b:Lorg/jshybugger/hx;

    iget-object v3, p0, Lorg/jshybugger/hz;->d:Lorg/jshybugger/hy;

    invoke-virtual {v2, v1, v4, v0, v3}, Lorg/jshybugger/hx;->c([BIILorg/jshybugger/hy;)I

    move-result v0

    .line 115
    if-lez v0, :cond_1c

    .line 116
    iget-object v2, p0, Lorg/jshybugger/hz;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v1, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 119
    :cond_1c
    if-eqz p1, :cond_23

    .line 120
    iget-object v0, p0, Lorg/jshybugger/hz;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 122
    :cond_23
    return-void
.end method


# virtual methods
.method public close()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 144
    iget-boolean v0, p0, Lorg/jshybugger/hz;->a:Z

    if-eqz v0, :cond_18

    .line 145
    iget-object v0, p0, Lorg/jshybugger/hz;->b:Lorg/jshybugger/hx;

    iget-object v1, p0, Lorg/jshybugger/hz;->c:[B

    iget-object v2, p0, Lorg/jshybugger/hz;->d:Lorg/jshybugger/hy;

    invoke-virtual {v0, v1, v4, v3, v2}, Lorg/jshybugger/hx;->a([BIILorg/jshybugger/hy;)V

    .line 149
    :goto_f
    invoke-virtual {p0}, Lorg/jshybugger/hz;->flush()V

    .line 150
    iget-object v0, p0, Lorg/jshybugger/hz;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 151
    return-void

    .line 147
    :cond_18
    iget-object v0, p0, Lorg/jshybugger/hz;->b:Lorg/jshybugger/hx;

    iget-object v1, p0, Lorg/jshybugger/hz;->c:[B

    iget-object v2, p0, Lorg/jshybugger/hz;->d:Lorg/jshybugger/hy;

    invoke-virtual {v0, v1, v4, v3, v2}, Lorg/jshybugger/hx;->b([BIILorg/jshybugger/hy;)V

    goto :goto_f
.end method

.method public flush()V
    .registers 2

    .prologue
    .line 132
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jshybugger/hz;->a(Z)V

    .line 133
    return-void
.end method

.method public write(I)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v0, p0, Lorg/jshybugger/hz;->c:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 62
    iget-object v0, p0, Lorg/jshybugger/hz;->c:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/jshybugger/hz;->write([BII)V

    .line 63
    return-void
.end method

.method public write([BII)V
    .registers 6

    .prologue
    .line 85
    if-nez p1, :cond_8

    .line 86
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 87
    :cond_8
    if-ltz p2, :cond_c

    if-gez p3, :cond_12

    .line 88
    :cond_c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 89
    :cond_12
    array-length v0, p1

    if-gt p2, v0, :cond_1a

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_20

    .line 90
    :cond_1a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 91
    :cond_20
    if-lez p3, :cond_31

    .line 92
    iget-boolean v0, p0, Lorg/jshybugger/hz;->a:Z

    if-eqz v0, :cond_32

    .line 93
    iget-object v0, p0, Lorg/jshybugger/hz;->b:Lorg/jshybugger/hx;

    iget-object v1, p0, Lorg/jshybugger/hz;->d:Lorg/jshybugger/hy;

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/jshybugger/hx;->a([BIILorg/jshybugger/hy;)V

    .line 97
    :goto_2d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jshybugger/hz;->a(Z)V

    .line 99
    :cond_31
    return-void

    .line 95
    :cond_32
    iget-object v0, p0, Lorg/jshybugger/hz;->b:Lorg/jshybugger/hx;

    iget-object v1, p0, Lorg/jshybugger/hz;->d:Lorg/jshybugger/hy;

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/jshybugger/hx;->b([BIILorg/jshybugger/hy;)V

    goto :goto_2d
.end method
