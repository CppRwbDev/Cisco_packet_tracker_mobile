.class public Lorg/jshybugger/es;
.super Lorg/jshybugger/cJ;
.source "WebSocket08FrameDecoder.java"

# interfaces
.implements Lorg/jshybugger/ez;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jshybugger/cJ",
        "<",
        "Lorg/jshybugger/eu;",
        ">;",
        "Lorg/jshybugger/ez;"
    }
.end annotation


# static fields
.field private static final e:Lorg/jshybugger/gX;


# instance fields
.field private f:Lorg/jshybugger/en;

.field private g:I

.field private final h:J

.field private i:Z

.field private j:I

.field private k:I

.field private l:J

.field private m:Lorg/jshybugger/H;

.field private n:I

.field private o:[B

.field private p:Lorg/jshybugger/H;

.field private final q:Z

.field private final r:Z

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 75
    const-class v0, Lorg/jshybugger/es;

    invoke-static {v0}, Lorg/jshybugger/gY;->a(Ljava/lang/Class;)Lorg/jshybugger/gX;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/es;->e:Lorg/jshybugger/gX;

    return-void
.end method

.method public constructor <init>(ZZI)V
    .registers 6

    .prologue
    .line 118
    sget-object v0, Lorg/jshybugger/eu;->a:Lorg/jshybugger/eu;

    invoke-direct {p0, v0}, Lorg/jshybugger/cJ;-><init>(Ljava/lang/Object;)V

    .line 119
    iput-boolean p1, p0, Lorg/jshybugger/es;->r:Z

    .line 120
    iput-boolean p2, p0, Lorg/jshybugger/es;->q:Z

    .line 121
    int-to-long v0, p3

    iput-wide v0, p0, Lorg/jshybugger/es;->h:J

    .line 122
    return-void
.end method

.method private static a(J)I
    .registers 6

    .prologue
    .line 424
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_1c

    .line 425
    new-instance v0, Lorg/jshybugger/cL;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Length:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jshybugger/cL;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_1c
    long-to-int v0, p0

    return v0
.end method

.method private a(Lorg/jshybugger/H;)V
    .registers 6

    .prologue
    .line 410
    invoke-virtual {p1}, Lorg/jshybugger/H;->b()I

    move-result v0

    :goto_4
    invoke-virtual {p1}, Lorg/jshybugger/H;->c()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 411
    invoke-virtual {p1, v0}, Lorg/jshybugger/H;->e(I)B

    move-result v1

    iget-object v2, p0, Lorg/jshybugger/es;->o:[B

    rem-int/lit8 v3, v0, 0x4

    aget-byte v2, v2, v3

    xor-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lorg/jshybugger/H;->b(II)Lorg/jshybugger/H;

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 413
    :cond_1b
    return-void
.end method

.method private a(Lorg/jshybugger/aw;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 416
    sget-object v0, Lorg/jshybugger/eu;->d:Lorg/jshybugger/eu;

    invoke-virtual {p0, v0}, Lorg/jshybugger/es;->a(Ljava/lang/Object;)V

    .line 417
    invoke-interface {p1}, Lorg/jshybugger/aw;->a()Lorg/jshybugger/aj;

    move-result-object v0

    invoke-interface {v0}, Lorg/jshybugger/aj;->C()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 418
    sget-object v0, Lorg/jshybugger/S;->a:Lorg/jshybugger/H;

    invoke-interface {p1, v0}, Lorg/jshybugger/aw;->b(Ljava/lang/Object;)Lorg/jshybugger/ao;

    move-result-object v0

    sget-object v1, Lorg/jshybugger/ap;->a:Lorg/jshybugger/ap;

    invoke-interface {v0, v1}, Lorg/jshybugger/ao;->a(Lorg/jshybugger/fO;)Lorg/jshybugger/ao;

    .line 420
    :cond_1a
    new-instance v0, Lorg/jshybugger/cz;

    invoke-direct {v0, p2}, Lorg/jshybugger/cz;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lorg/jshybugger/aw;Lorg/jshybugger/H;)V
    .registers 4

    .prologue
    .line 433
    :try_start_0
    iget-object v0, p0, Lorg/jshybugger/es;->f:Lorg/jshybugger/en;

    if-nez v0, :cond_c

    .line 434
    new-instance v0, Lorg/jshybugger/en;

    invoke-direct {v0, p2}, Lorg/jshybugger/en;-><init>(Lorg/jshybugger/H;)V

    iput-object v0, p0, Lorg/jshybugger/es;->f:Lorg/jshybugger/en;

    .line 441
    :goto_b
    return-void

    .line 436
    :cond_c
    iget-object v0, p0, Lorg/jshybugger/es;->f:Lorg/jshybugger/en;

    invoke-virtual {v0, p2}, Lorg/jshybugger/en;->a(Lorg/jshybugger/H;)V
    :try_end_11
    .catch Lorg/jshybugger/em; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_b

    .line 439
    :catch_12
    move-exception v0

    const-string v0, "invalid UTF-8 bytes"

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/es;->a(Lorg/jshybugger/aw;Ljava/lang/String;)V

    goto :goto_b
.end method


# virtual methods
.method protected final b(Lorg/jshybugger/aw;Lorg/jshybugger/H;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/aw;",
            "Lorg/jshybugger/H;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/16 v8, 0x9

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 128
    iget-boolean v0, p0, Lorg/jshybugger/es;->s:Z

    if-eqz v0, :cond_13

    .line 129
    invoke-virtual {p0}, Lorg/jshybugger/es;->a()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/jshybugger/H;->q(I)Lorg/jshybugger/H;

    .line 388
    :goto_12
    return-void

    .line 134
    :cond_13
    :try_start_13
    sget-object v4, Lorg/jshybugger/et;->a:[I

    iget-object v0, p0, Lorg/jshybugger/cJ;->d:Ljava/lang/Object;

    check-cast v0, Lorg/jshybugger/eu;

    invoke-virtual {v0}, Lorg/jshybugger/eu;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_3ca

    .line 390
    new-instance v0, Ljava/lang/Error;

    const-string v2, "Shouldn\'t reach here."

    invoke-direct {v0, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2a} :catch_2a

    .line 392
    :catch_2a
    move-exception v0

    .line 393
    iget-object v2, p0, Lorg/jshybugger/es;->p:Lorg/jshybugger/H;

    if-eqz v2, :cond_3e

    .line 394
    iget-object v2, p0, Lorg/jshybugger/es;->p:Lorg/jshybugger/H;

    invoke-virtual {v2}, Lorg/jshybugger/H;->t()I

    move-result v2

    if-lez v2, :cond_3c

    .line 395
    iget-object v2, p0, Lorg/jshybugger/es;->p:Lorg/jshybugger/H;

    invoke-virtual {v2}, Lorg/jshybugger/H;->v()Z

    .line 397
    :cond_3c
    iput-object v1, p0, Lorg/jshybugger/es;->p:Lorg/jshybugger/H;

    .line 399
    :cond_3e
    iget-object v2, p0, Lorg/jshybugger/es;->m:Lorg/jshybugger/H;

    if-eqz v2, :cond_51

    .line 400
    iget-object v2, p0, Lorg/jshybugger/es;->m:Lorg/jshybugger/H;

    invoke-virtual {v2}, Lorg/jshybugger/H;->t()I

    move-result v2

    if-lez v2, :cond_4f

    .line 401
    iget-object v2, p0, Lorg/jshybugger/es;->m:Lorg/jshybugger/H;

    invoke-virtual {v2}, Lorg/jshybugger/H;->v()Z

    .line 403
    :cond_4f
    iput-object v1, p0, Lorg/jshybugger/es;->m:Lorg/jshybugger/H;

    .line 405
    :cond_51
    throw v0

    .line 136
    :pswitch_52
    const/4 v0, 0x0

    :try_start_53
    iput v0, p0, Lorg/jshybugger/es;->n:I

    .line 137
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lorg/jshybugger/es;->l:J

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jshybugger/es;->m:Lorg/jshybugger/H;

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jshybugger/es;->p:Lorg/jshybugger/H;

    .line 142
    invoke-virtual {p2}, Lorg/jshybugger/H;->i()B

    move-result v4

    .line 143
    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_b2

    move v0, v2

    :goto_68
    iput-boolean v0, p0, Lorg/jshybugger/es;->i:Z

    .line 144
    and-int/lit8 v0, v4, 0x70

    shr-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/jshybugger/es;->j:I

    .line 145
    and-int/lit8 v0, v4, 0xf

    iput v0, p0, Lorg/jshybugger/es;->k:I

    .line 147
    sget-object v0, Lorg/jshybugger/es;->e:Lorg/jshybugger/gX;

    invoke-interface {v0}, Lorg/jshybugger/gX;->a()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 148
    sget-object v0, Lorg/jshybugger/es;->e:Lorg/jshybugger/gX;

    const-string v4, "Decoding WebSocket Frame opCode={}"

    iget v5, p0, Lorg/jshybugger/es;->k:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    :cond_89
    invoke-virtual {p2}, Lorg/jshybugger/H;->i()B

    move-result v4

    .line 153
    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_b4

    move v0, v2

    .line 154
    :goto_92
    and-int/lit8 v3, v4, 0x7f

    .line 156
    iget v4, p0, Lorg/jshybugger/es;->j:I

    if-eqz v4, :cond_b6

    iget-boolean v4, p0, Lorg/jshybugger/es;->q:Z

    if-nez v4, :cond_b6

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "RSV != 0 and no extension negotiated, RSV:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/jshybugger/es;->j:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/es;->a(Lorg/jshybugger/aw;Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_b2
    move v0, v3

    .line 143
    goto :goto_68

    :cond_b4
    move v0, v3

    .line 153
    goto :goto_92

    .line 161
    :cond_b6
    iget-boolean v4, p0, Lorg/jshybugger/es;->r:Z

    if-eqz v4, :cond_c3

    if-nez v0, :cond_c3

    .line 162
    const-string v0, "unmasked client to server frame"

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/es;->a(Lorg/jshybugger/aw;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 165
    :cond_c3
    iget v0, p0, Lorg/jshybugger/es;->k:I

    const/4 v4, 0x7

    if-le v0, v4, :cond_10f

    .line 168
    iget-boolean v0, p0, Lorg/jshybugger/es;->i:Z

    if-nez v0, :cond_d3

    .line 169
    const-string v0, "fragmented control frame"

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/es;->a(Lorg/jshybugger/aw;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 174
    :cond_d3
    const/16 v0, 0x7d

    if-le v3, v0, :cond_de

    .line 175
    const-string v0, "control frame with payload length > 125 octets"

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/es;->a(Lorg/jshybugger/aw;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 180
    :cond_de
    iget v0, p0, Lorg/jshybugger/es;->k:I

    if-eq v0, v9, :cond_102

    iget v0, p0, Lorg/jshybugger/es;->k:I

    if-eq v0, v8, :cond_102

    iget v0, p0, Lorg/jshybugger/es;->k:I

    const/16 v4, 0xa

    if-eq v0, v4, :cond_102

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "control frame using reserved opcode "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/jshybugger/es;->k:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/es;->a(Lorg/jshybugger/aw;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 189
    :cond_102
    iget v0, p0, Lorg/jshybugger/es;->k:I

    if-ne v0, v9, :cond_154

    if-ne v3, v2, :cond_154

    .line 190
    const-string v0, "received close control frame with payload len 1"

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/es;->a(Lorg/jshybugger/aw;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 195
    :cond_10f
    iget v0, p0, Lorg/jshybugger/es;->k:I

    if-eqz v0, :cond_132

    iget v0, p0, Lorg/jshybugger/es;->k:I

    if-eq v0, v2, :cond_132

    iget v0, p0, Lorg/jshybugger/es;->k:I

    const/4 v4, 0x2

    if-eq v0, v4, :cond_132

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "data frame using reserved opcode "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/jshybugger/es;->k:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/es;->a(Lorg/jshybugger/aw;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 202
    :cond_132
    iget v0, p0, Lorg/jshybugger/es;->g:I

    if-nez v0, :cond_141

    iget v0, p0, Lorg/jshybugger/es;->k:I

    if-nez v0, :cond_141

    .line 203
    const-string v0, "received continuation data frame outside fragmented message"

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/es;->a(Lorg/jshybugger/aw;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 208
    :cond_141
    iget v0, p0, Lorg/jshybugger/es;->g:I

    if-eqz v0, :cond_154

    iget v0, p0, Lorg/jshybugger/es;->k:I

    if-eqz v0, :cond_154

    iget v0, p0, Lorg/jshybugger/es;->k:I

    if-eq v0, v8, :cond_154

    .line 209
    const-string v0, "received non-continuation data frame while inside fragmented message"

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/es;->a(Lorg/jshybugger/aw;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 216
    :cond_154
    const/16 v0, 0x7e

    if-ne v3, v0, :cond_16e

    .line 217
    invoke-virtual {p2}, Lorg/jshybugger/H;->l()I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, p0, Lorg/jshybugger/es;->l:J

    .line 218
    iget-wide v4, p0, Lorg/jshybugger/es;->l:J

    const-wide/16 v6, 0x7e

    cmp-long v0, v4, v6

    if-gez v0, :cond_18b

    .line 219
    const-string v0, "invalid data frame length (not using minimal length encoding)"

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/es;->a(Lorg/jshybugger/aw;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 222
    :cond_16e
    const/16 v0, 0x7f

    if-ne v3, v0, :cond_188

    .line 223
    invoke-virtual {p2}, Lorg/jshybugger/H;->m()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/jshybugger/es;->l:J

    .line 227
    iget-wide v4, p0, Lorg/jshybugger/es;->l:J

    const-wide/32 v6, 0x10000

    cmp-long v0, v4, v6

    if-gez v0, :cond_18b

    .line 228
    const-string v0, "invalid data frame length (not using minimal length encoding)"

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/es;->a(Lorg/jshybugger/aw;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 232
    :cond_188
    int-to-long v4, v3

    iput-wide v4, p0, Lorg/jshybugger/es;->l:J

    .line 235
    :cond_18b
    iget-wide v4, p0, Lorg/jshybugger/es;->l:J

    iget-wide v6, p0, Lorg/jshybugger/es;->h:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_1af

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Max frame length of "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/jshybugger/es;->h:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " has been exceeded."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/es;->a(Lorg/jshybugger/aw;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 240
    :cond_1af
    sget-object v0, Lorg/jshybugger/es;->e:Lorg/jshybugger/gX;

    invoke-interface {v0}, Lorg/jshybugger/gX;->a()Z

    move-result v0

    if-eqz v0, :cond_1c4

    .line 241
    sget-object v0, Lorg/jshybugger/es;->e:Lorg/jshybugger/gX;

    const-string v3, "Decoding WebSocket Frame length={}"

    iget-wide v4, p0, Lorg/jshybugger/es;->l:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    :cond_1c4
    sget-object v0, Lorg/jshybugger/eu;->b:Lorg/jshybugger/eu;

    invoke-virtual {p0, v0}, Lorg/jshybugger/es;->a(Ljava/lang/Object;)V

    .line 246
    :pswitch_1c9
    iget-boolean v0, p0, Lorg/jshybugger/es;->r:Z

    if-eqz v0, :cond_1db

    .line 247
    iget-object v0, p0, Lorg/jshybugger/es;->o:[B

    if-nez v0, :cond_1d6

    .line 248
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jshybugger/es;->o:[B

    .line 250
    :cond_1d6
    iget-object v0, p0, Lorg/jshybugger/es;->o:[B

    invoke-virtual {p2, v0}, Lorg/jshybugger/H;->a([B)Lorg/jshybugger/H;

    .line 252
    :cond_1db
    sget-object v0, Lorg/jshybugger/eu;->c:Lorg/jshybugger/eu;

    invoke-virtual {p0, v0}, Lorg/jshybugger/es;->a(Ljava/lang/Object;)V

    .line 256
    :pswitch_1e0
    invoke-virtual {p0}, Lorg/jshybugger/es;->a()I

    move-result v0

    .line 258
    iget v3, p0, Lorg/jshybugger/es;->n:I

    add-int/2addr v3, v0

    int-to-long v4, v3

    .line 262
    iget-wide v6, p0, Lorg/jshybugger/es;->l:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_22d

    .line 264
    invoke-interface {p1}, Lorg/jshybugger/aw;->c()Lorg/jshybugger/I;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/jshybugger/I;->a(I)Lorg/jshybugger/H;

    move-result-object v3

    iput-object v3, p0, Lorg/jshybugger/es;->p:Lorg/jshybugger/H;

    .line 265
    iget-object v3, p0, Lorg/jshybugger/es;->p:Lorg/jshybugger/H;

    invoke-virtual {v3, p2, v0}, Lorg/jshybugger/H;->b(Lorg/jshybugger/H;I)Lorg/jshybugger/H;

    .line 289
    :cond_1fd
    :goto_1fd
    sget-object v0, Lorg/jshybugger/eu;->a:Lorg/jshybugger/eu;

    invoke-virtual {p0, v0}, Lorg/jshybugger/es;->a(Ljava/lang/Object;)V

    .line 292
    iget-object v0, p0, Lorg/jshybugger/es;->m:Lorg/jshybugger/H;

    if-nez v0, :cond_27d

    .line 293
    iget-object v0, p0, Lorg/jshybugger/es;->p:Lorg/jshybugger/H;

    iput-object v0, p0, Lorg/jshybugger/es;->m:Lorg/jshybugger/H;

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jshybugger/es;->p:Lorg/jshybugger/H;

    .line 302
    :cond_20d
    :goto_20d
    iget-boolean v0, p0, Lorg/jshybugger/es;->r:Z

    if-eqz v0, :cond_216

    .line 303
    iget-object v0, p0, Lorg/jshybugger/es;->m:Lorg/jshybugger/H;

    invoke-direct {p0, v0}, Lorg/jshybugger/es;->a(Lorg/jshybugger/H;)V

    .line 308
    :cond_216
    iget v0, p0, Lorg/jshybugger/es;->k:I

    if-ne v0, v8, :cond_292

    .line 309
    new-instance v0, Lorg/jshybugger/ej;

    iget-boolean v2, p0, Lorg/jshybugger/es;->i:Z

    iget v3, p0, Lorg/jshybugger/es;->j:I

    iget-object v4, p0, Lorg/jshybugger/es;->m:Lorg/jshybugger/H;

    invoke-direct {v0, v2, v3, v4}, Lorg/jshybugger/ej;-><init>(ZILorg/jshybugger/H;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jshybugger/es;->m:Lorg/jshybugger/H;

    goto/16 :goto_12

    .line 266
    :cond_22d
    iget-wide v6, p0, Lorg/jshybugger/es;->l:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_253

    .line 270
    iget-object v2, p0, Lorg/jshybugger/es;->m:Lorg/jshybugger/H;

    if-nez v2, :cond_247

    .line 271
    invoke-interface {p1}, Lorg/jshybugger/aw;->c()Lorg/jshybugger/I;

    move-result-object v2

    iget-wide v4, p0, Lorg/jshybugger/es;->l:J

    invoke-static {v4, v5}, Lorg/jshybugger/es;->a(J)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/jshybugger/I;->a(I)Lorg/jshybugger/H;

    move-result-object v2

    iput-object v2, p0, Lorg/jshybugger/es;->m:Lorg/jshybugger/H;

    .line 273
    :cond_247
    iget-object v2, p0, Lorg/jshybugger/es;->m:Lorg/jshybugger/H;

    invoke-virtual {v2, p2, v0}, Lorg/jshybugger/H;->b(Lorg/jshybugger/H;I)Lorg/jshybugger/H;

    .line 274
    iget v2, p0, Lorg/jshybugger/es;->n:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/jshybugger/es;->n:I

    goto/16 :goto_12

    .line 278
    :cond_253
    iget-wide v6, p0, Lorg/jshybugger/es;->l:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_1fd

    .line 281
    iget-object v0, p0, Lorg/jshybugger/es;->m:Lorg/jshybugger/H;

    if-nez v0, :cond_26d

    .line 282
    invoke-interface {p1}, Lorg/jshybugger/aw;->c()Lorg/jshybugger/I;

    move-result-object v0

    iget-wide v4, p0, Lorg/jshybugger/es;->l:J

    invoke-static {v4, v5}, Lorg/jshybugger/es;->a(J)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/jshybugger/I;->a(I)Lorg/jshybugger/H;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/es;->m:Lorg/jshybugger/H;

    .line 284
    :cond_26d
    iget-object v0, p0, Lorg/jshybugger/es;->m:Lorg/jshybugger/H;

    iget-wide v4, p0, Lorg/jshybugger/es;->l:J

    iget v3, p0, Lorg/jshybugger/es;->n:I

    int-to-long v6, v3

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Lorg/jshybugger/es;->a(J)I

    move-result v3

    invoke-virtual {v0, p2, v3}, Lorg/jshybugger/H;->b(Lorg/jshybugger/H;I)Lorg/jshybugger/H;

    goto :goto_1fd

    .line 295
    :cond_27d
    iget-object v0, p0, Lorg/jshybugger/es;->p:Lorg/jshybugger/H;

    if-eqz v0, :cond_20d

    .line 296
    iget-object v0, p0, Lorg/jshybugger/es;->m:Lorg/jshybugger/H;

    iget-object v3, p0, Lorg/jshybugger/es;->p:Lorg/jshybugger/H;

    invoke-virtual {v0, v3}, Lorg/jshybugger/H;->b(Lorg/jshybugger/H;)Lorg/jshybugger/H;

    .line 297
    iget-object v0, p0, Lorg/jshybugger/es;->p:Lorg/jshybugger/H;

    invoke-virtual {v0}, Lorg/jshybugger/H;->v()Z

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jshybugger/es;->p:Lorg/jshybugger/H;

    goto/16 :goto_20d

    .line 313
    :cond_292
    iget v0, p0, Lorg/jshybugger/es;->k:I

    const/16 v3, 0xa

    if-ne v0, v3, :cond_2ab

    .line 314
    new-instance v0, Lorg/jshybugger/ek;

    iget-boolean v2, p0, Lorg/jshybugger/es;->i:Z

    iget v3, p0, Lorg/jshybugger/es;->j:I

    iget-object v4, p0, Lorg/jshybugger/es;->m:Lorg/jshybugger/H;

    invoke-direct {v0, v2, v3, v4}, Lorg/jshybugger/ek;-><init>(ZILorg/jshybugger/H;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jshybugger/es;->m:Lorg/jshybugger/H;

    goto/16 :goto_12

    .line 318
    :cond_2ab
    iget v0, p0, Lorg/jshybugger/es;->k:I

    if-ne v0, v9, :cond_324

    .line 319
    iget-object v0, p0, Lorg/jshybugger/es;->m:Lorg/jshybugger/H;

    if-eqz v0, :cond_2b9

    invoke-virtual {v0}, Lorg/jshybugger/H;->e()Z

    move-result v3

    if-nez v3, :cond_2cf

    .line 320
    :cond_2b9
    :goto_2b9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jshybugger/es;->s:Z

    .line 321
    new-instance v0, Lorg/jshybugger/eh;

    iget-boolean v2, p0, Lorg/jshybugger/es;->i:Z

    iget v3, p0, Lorg/jshybugger/es;->j:I

    iget-object v4, p0, Lorg/jshybugger/es;->m:Lorg/jshybugger/H;

    invoke-direct {v0, v2, v3, v4}, Lorg/jshybugger/eh;-><init>(ZILorg/jshybugger/H;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jshybugger/es;->m:Lorg/jshybugger/H;

    goto/16 :goto_12

    .line 319
    :cond_2cf
    invoke-virtual {v0}, Lorg/jshybugger/H;->f()I

    move-result v3

    if-ne v3, v2, :cond_2da

    const-string v2, "Invalid close frame body"

    invoke-direct {p0, p1, v2}, Lorg/jshybugger/es;->a(Lorg/jshybugger/aw;Ljava/lang/String;)V

    :cond_2da
    invoke-virtual {v0}, Lorg/jshybugger/H;->b()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/jshybugger/H;->a(I)Lorg/jshybugger/H;

    invoke-virtual {v0}, Lorg/jshybugger/H;->k()S

    move-result v3

    if-ltz v3, :cond_2ec

    const/16 v4, 0x3e7

    if-le v3, v4, :cond_2fc

    :cond_2ec
    const/16 v4, 0x3ec

    if-lt v3, v4, :cond_2f4

    const/16 v4, 0x3ee

    if-le v3, v4, :cond_2fc

    :cond_2f4
    const/16 v4, 0x3f4

    if-lt v3, v4, :cond_30e

    const/16 v4, 0xbb7

    if-gt v3, v4, :cond_30e

    :cond_2fc
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid close frame getStatus code: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/jshybugger/es;->a(Lorg/jshybugger/aw;Ljava/lang/String;)V

    :cond_30e
    invoke-virtual {v0}, Lorg/jshybugger/H;->e()Z
    :try_end_311
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_311} :catch_2a

    move-result v3

    if-eqz v3, :cond_319

    :try_start_314
    new-instance v3, Lorg/jshybugger/en;

    invoke-direct {v3, v0}, Lorg/jshybugger/en;-><init>(Lorg/jshybugger/H;)V
    :try_end_319
    .catch Lorg/jshybugger/em; {:try_start_314 .. :try_end_319} :catch_31d
    .catch Ljava/lang/Exception; {:try_start_314 .. :try_end_319} :catch_2a

    :cond_319
    :goto_319
    :try_start_319
    invoke-virtual {v0, v2}, Lorg/jshybugger/H;->a(I)Lorg/jshybugger/H;

    goto :goto_2b9

    :catch_31d
    move-exception v3

    const-string v3, "Invalid close frame reason text. Invalid UTF-8 bytes"

    invoke-direct {p0, p1, v3}, Lorg/jshybugger/es;->a(Lorg/jshybugger/aw;Ljava/lang/String;)V

    goto :goto_319

    .line 329
    :cond_324
    iget-boolean v0, p0, Lorg/jshybugger/es;->i:Z

    if-eqz v0, :cond_35c

    .line 332
    iget v0, p0, Lorg/jshybugger/es;->k:I

    if-eq v0, v8, :cond_372

    .line 333
    const/4 v0, 0x0

    iput v0, p0, Lorg/jshybugger/es;->g:I

    .line 336
    iget v0, p0, Lorg/jshybugger/es;->k:I

    if-eq v0, v2, :cond_337

    iget-object v0, p0, Lorg/jshybugger/es;->f:Lorg/jshybugger/en;

    if-eqz v0, :cond_372

    .line 338
    :cond_337
    iget-object v0, p0, Lorg/jshybugger/es;->m:Lorg/jshybugger/H;

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/es;->a(Lorg/jshybugger/aw;Lorg/jshybugger/H;)V

    .line 342
    iget-object v0, p0, Lorg/jshybugger/es;->f:Lorg/jshybugger/en;

    invoke-virtual {v0}, Lorg/jshybugger/en;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/jshybugger/es;->f:Lorg/jshybugger/en;

    .line 368
    :goto_345
    iget v3, p0, Lorg/jshybugger/es;->k:I

    if-ne v3, v2, :cond_37e

    .line 369
    new-instance v0, Lorg/jshybugger/el;

    iget-boolean v2, p0, Lorg/jshybugger/es;->i:Z

    iget v3, p0, Lorg/jshybugger/es;->j:I

    iget-object v4, p0, Lorg/jshybugger/es;->m:Lorg/jshybugger/H;

    invoke-direct {v0, v2, v3, v4}, Lorg/jshybugger/el;-><init>(ZILorg/jshybugger/H;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jshybugger/es;->m:Lorg/jshybugger/H;

    goto/16 :goto_12

    .line 350
    :cond_35c
    iget v0, p0, Lorg/jshybugger/es;->g:I

    if-nez v0, :cond_374

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jshybugger/es;->f:Lorg/jshybugger/en;

    .line 353
    iget v0, p0, Lorg/jshybugger/es;->k:I

    if-ne v0, v2, :cond_36c

    .line 354
    iget-object v0, p0, Lorg/jshybugger/es;->m:Lorg/jshybugger/H;

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/es;->a(Lorg/jshybugger/aw;Lorg/jshybugger/H;)V

    .line 364
    :cond_36c
    :goto_36c
    iget v0, p0, Lorg/jshybugger/es;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jshybugger/es;->g:I

    :cond_372
    move-object v0, v1

    goto :goto_345

    .line 358
    :cond_374
    iget-object v0, p0, Lorg/jshybugger/es;->f:Lorg/jshybugger/en;

    if-eqz v0, :cond_36c

    .line 359
    iget-object v0, p0, Lorg/jshybugger/es;->m:Lorg/jshybugger/H;

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/es;->a(Lorg/jshybugger/aw;Lorg/jshybugger/H;)V

    goto :goto_36c

    .line 372
    :cond_37e
    iget v2, p0, Lorg/jshybugger/es;->k:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_396

    .line 373
    new-instance v0, Lorg/jshybugger/eg;

    iget-boolean v2, p0, Lorg/jshybugger/es;->i:Z

    iget v3, p0, Lorg/jshybugger/es;->j:I

    iget-object v4, p0, Lorg/jshybugger/es;->m:Lorg/jshybugger/H;

    invoke-direct {v0, v2, v3, v4}, Lorg/jshybugger/eg;-><init>(ZILorg/jshybugger/H;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jshybugger/es;->m:Lorg/jshybugger/H;

    goto/16 :goto_12

    .line 376
    :cond_396
    iget v2, p0, Lorg/jshybugger/es;->k:I

    if-nez v2, :cond_3ad

    .line 377
    new-instance v2, Lorg/jshybugger/ei;

    iget-boolean v3, p0, Lorg/jshybugger/es;->i:Z

    iget v4, p0, Lorg/jshybugger/es;->j:I

    iget-object v5, p0, Lorg/jshybugger/es;->m:Lorg/jshybugger/H;

    invoke-direct {v2, v3, v4, v5, v0}, Lorg/jshybugger/ei;-><init>(ZILorg/jshybugger/H;Ljava/lang/String;)V

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jshybugger/es;->m:Lorg/jshybugger/H;

    goto/16 :goto_12

    .line 381
    :cond_3ad
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot decode web socket frame with opcode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/jshybugger/es;->k:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :pswitch_3c4
    invoke-virtual {p2}, Lorg/jshybugger/H;->i()B
    :try_end_3c7
    .catch Ljava/lang/Exception; {:try_start_319 .. :try_end_3c7} :catch_2a

    goto/16 :goto_12

    .line 134
    nop

    :pswitch_data_3ca
    .packed-switch 0x1
        :pswitch_52
        :pswitch_1c9
        :pswitch_1e0
        :pswitch_3c4
    .end packed-switch
.end method

.method public final h(Lorg/jshybugger/aw;)V
    .registers 3

    .prologue
    .line 479
    invoke-super {p0, p1}, Lorg/jshybugger/cJ;->h(Lorg/jshybugger/aw;)V

    .line 483
    iget-object v0, p0, Lorg/jshybugger/es;->m:Lorg/jshybugger/H;

    if-eqz v0, :cond_c

    .line 484
    iget-object v0, p0, Lorg/jshybugger/es;->m:Lorg/jshybugger/H;

    invoke-virtual {v0}, Lorg/jshybugger/H;->v()Z

    .line 486
    :cond_c
    iget-object v0, p0, Lorg/jshybugger/es;->p:Lorg/jshybugger/H;

    if-eqz v0, :cond_15

    .line 487
    iget-object v0, p0, Lorg/jshybugger/es;->p:Lorg/jshybugger/H;

    invoke-virtual {v0}, Lorg/jshybugger/H;->v()Z

    .line 489
    :cond_15
    return-void
.end method
