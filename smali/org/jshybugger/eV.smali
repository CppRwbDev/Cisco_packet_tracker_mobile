.class public Lorg/jshybugger/ev;
.super Lorg/jshybugger/cI;
.source "WebSocket08FrameEncoder.java"

# interfaces
.implements Lorg/jshybugger/eA;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jshybugger/cI",
        "<",
        "Lorg/jshybugger/ey;",
        ">;",
        "Lorg/jshybugger/eA;"
    }
.end annotation


# static fields
.field private static final b:Lorg/jshybugger/gX;


# instance fields
.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 75
    const-class v0, Lorg/jshybugger/ev;

    invoke-static {v0}, Lorg/jshybugger/gY;->a(Ljava/lang/Class;)Lorg/jshybugger/gX;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/ev;->b:Lorg/jshybugger/gX;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .prologue
    .line 93
    invoke-direct {p0}, Lorg/jshybugger/cI;-><init>()V

    .line 94
    iput-boolean p1, p0, Lorg/jshybugger/ev;->c:Z

    .line 95
    return-void
.end method


# virtual methods
.method protected final synthetic a(Lorg/jshybugger/aw;Ljava/lang/Object;Ljava/util/List;)V
    .registers 14

    .prologue
    const/16 v9, 0x7d

    const/16 v2, 0x9

    const/4 v5, 0x4

    const/4 v3, 0x0

    .line 73
    check-cast p2, Lorg/jshybugger/ey;

    invoke-virtual {p2}, Lorg/jshybugger/ey;->a()Lorg/jshybugger/H;

    move-result-object v0

    if-nez v0, :cond_10

    sget-object v0, Lorg/jshybugger/S;->a:Lorg/jshybugger/H;

    :cond_10
    instance-of v1, p2, Lorg/jshybugger/el;

    if-eqz v1, :cond_68

    const/4 v1, 0x1

    :goto_15
    invoke-virtual {v0}, Lorg/jshybugger/H;->f()I

    move-result v6

    sget-object v4, Lorg/jshybugger/ev;->b:Lorg/jshybugger/gX;

    invoke-interface {v4}, Lorg/jshybugger/gX;->a()Z

    move-result v4

    if-eqz v4, :cond_3f

    sget-object v4, Lorg/jshybugger/ev;->b:Lorg/jshybugger/gX;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Encoding WebSocket Frame opCode="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/jshybugger/gX;->a(Ljava/lang/String;)V

    :cond_3f
    iget-boolean v4, p2, Lorg/jshybugger/ey;->a:Z

    if-eqz v4, :cond_173

    const/16 v4, 0x80

    :goto_45
    iget v7, p2, Lorg/jshybugger/ey;->b:I

    rem-int/lit8 v7, v7, 0x8

    shl-int/lit8 v7, v7, 0x4

    or-int/2addr v4, v7

    rem-int/lit16 v7, v1, 0x80

    or-int/2addr v4, v7

    if-ne v1, v2, :cond_a5

    if-le v6, v9, :cond_a5

    new-instance v0, Lorg/jshybugger/cL;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid payload for PING (payload length must be <= 125, was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jshybugger/cL;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_68
    instance-of v1, p2, Lorg/jshybugger/ej;

    if-eqz v1, :cond_6e

    move v1, v2

    goto :goto_15

    :cond_6e
    instance-of v1, p2, Lorg/jshybugger/ek;

    if-eqz v1, :cond_75

    const/16 v1, 0xa

    goto :goto_15

    :cond_75
    instance-of v1, p2, Lorg/jshybugger/eh;

    if-eqz v1, :cond_7c

    const/16 v1, 0x8

    goto :goto_15

    :cond_7c
    instance-of v1, p2, Lorg/jshybugger/eg;

    if-eqz v1, :cond_82

    const/4 v1, 0x2

    goto :goto_15

    :cond_82
    instance-of v1, p2, Lorg/jshybugger/ei;

    if-eqz v1, :cond_88

    move v1, v3

    goto :goto_15

    :cond_88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot encode frame of type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a5
    const/4 v1, 0x0

    :try_start_a6
    iget-boolean v2, p0, Lorg/jshybugger/ev;->c:Z

    if-eqz v2, :cond_105

    move v2, v5

    :goto_ab
    if-gt v6, v9, :cond_109

    add-int/lit8 v2, v2, 0x2

    iget-boolean v5, p0, Lorg/jshybugger/ev;->c:Z

    if-eqz v5, :cond_b4

    add-int/2addr v2, v6

    :cond_b4
    invoke-interface {p1}, Lorg/jshybugger/aw;->c()Lorg/jshybugger/I;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/jshybugger/I;->a(I)Lorg/jshybugger/H;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/jshybugger/H;->r(I)Lorg/jshybugger/H;

    iget-boolean v2, p0, Lorg/jshybugger/ev;->c:Z

    if-eqz v2, :cond_107

    int-to-byte v2, v6

    or-int/lit16 v2, v2, 0x80

    :goto_c6
    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/jshybugger/H;->r(I)Lorg/jshybugger/H;

    :goto_ca
    iget-boolean v2, p0, Lorg/jshybugger/ev;->c:Z

    if-eqz v2, :cond_168

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double/2addr v4, v6

    double-to-int v2, v4

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/jshybugger/H;->b([B)Lorg/jshybugger/H;

    invoke-virtual {v0}, Lorg/jshybugger/H;->b()I

    move-result v2

    :goto_ed
    invoke-virtual {v0}, Lorg/jshybugger/H;->c()I

    move-result v4

    if-ge v2, v4, :cond_164

    invoke-virtual {v0, v2}, Lorg/jshybugger/H;->e(I)B

    move-result v6

    add-int/lit8 v4, v3, 0x1

    rem-int/lit8 v3, v3, 0x4

    aget-byte v3, v5, v3

    xor-int/2addr v3, v6

    invoke-virtual {v1, v3}, Lorg/jshybugger/H;->r(I)Lorg/jshybugger/H;

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_ed

    :cond_105
    move v2, v3

    goto :goto_ab

    :cond_107
    int-to-byte v2, v6

    goto :goto_c6

    :cond_109
    const v5, 0xffff

    if-gt v6, v5, :cond_140

    add-int/lit8 v2, v2, 0x4

    iget-boolean v5, p0, Lorg/jshybugger/ev;->c:Z

    if-eqz v5, :cond_115

    add-int/2addr v2, v6

    :cond_115
    invoke-interface {p1}, Lorg/jshybugger/aw;->c()Lorg/jshybugger/I;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/jshybugger/I;->a(I)Lorg/jshybugger/H;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/jshybugger/H;->r(I)Lorg/jshybugger/H;

    iget-boolean v2, p0, Lorg/jshybugger/ev;->c:Z

    if-eqz v2, :cond_13d

    const/16 v2, 0xfe

    :goto_126
    invoke-virtual {v1, v2}, Lorg/jshybugger/H;->r(I)Lorg/jshybugger/H;

    ushr-int/lit8 v2, v6, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Lorg/jshybugger/H;->r(I)Lorg/jshybugger/H;

    and-int/lit16 v2, v6, 0xff

    invoke-virtual {v1, v2}, Lorg/jshybugger/H;->r(I)Lorg/jshybugger/H;
    :try_end_135
    .catchall {:try_start_a6 .. :try_end_135} :catchall_136

    goto :goto_ca

    :catchall_136
    move-exception v0

    if-eqz v1, :cond_13c

    invoke-virtual {v1}, Lorg/jshybugger/H;->v()Z

    :cond_13c
    throw v0

    :cond_13d
    const/16 v2, 0x7e

    goto :goto_126

    :cond_140
    add-int/lit8 v2, v2, 0xa

    :try_start_142
    iget-boolean v5, p0, Lorg/jshybugger/ev;->c:Z

    if-eqz v5, :cond_147

    add-int/2addr v2, v6

    :cond_147
    invoke-interface {p1}, Lorg/jshybugger/aw;->c()Lorg/jshybugger/I;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/jshybugger/I;->a(I)Lorg/jshybugger/H;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/jshybugger/H;->r(I)Lorg/jshybugger/H;

    iget-boolean v2, p0, Lorg/jshybugger/ev;->c:Z

    if-eqz v2, :cond_161

    const/16 v2, 0xff

    :goto_158
    invoke-virtual {v1, v2}, Lorg/jshybugger/H;->r(I)Lorg/jshybugger/H;

    int-to-long v4, v6

    invoke-virtual {v1, v4, v5}, Lorg/jshybugger/H;->a(J)Lorg/jshybugger/H;

    goto/16 :goto_ca

    :cond_161
    const/16 v2, 0x7f

    goto :goto_158

    :cond_164
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_167
    return-void

    :cond_168
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lorg/jshybugger/H;->u()Lorg/jshybugger/H;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_172
    .catchall {:try_start_142 .. :try_end_172} :catchall_136

    goto :goto_167

    :cond_173
    move v4, v3

    goto/16 :goto_45
.end method
