.class public Lorg/jshybugger/lM;
.super Ljava/lang/Object;
.source "Parser.java"


# instance fields
.field private A:I

.field a:Lorg/jshybugger/kI;

.field b:Z

.field protected c:I

.field protected d:Z

.field e:Lorg/jshybugger/nk;

.field f:Lorg/jshybugger/nj;

.field g:I

.field h:Z

.field i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jshybugger/mW;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jshybugger/mY;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jshybugger/mT;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lorg/jshybugger/kR;

.field private m:Lorg/jshybugger/mQ;

.field private n:Ljava/lang/String;

.field private o:[C

.field private p:Z

.field private q:Lorg/jshybugger/mb;

.field private r:I

.field private s:I

.field private t:I

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jshybugger/mz;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lorg/jshybugger/mz;

.field private w:Lorg/jshybugger/mW;

.field private x:Z

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 103
    new-instance v0, Lorg/jshybugger/kI;

    invoke-direct {v0}, Lorg/jshybugger/kI;-><init>()V

    invoke-direct {p0, v0}, Lorg/jshybugger/lM;-><init>(Lorg/jshybugger/kI;)V

    .line 104
    return-void
.end method

.method private constructor <init>(Lorg/jshybugger/kI;)V
    .registers 3

    .prologue
    .line 107
    iget-object v0, p1, Lorg/jshybugger/kI;->a:Lorg/jshybugger/kR;

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/lM;-><init>(Lorg/jshybugger/kI;Lorg/jshybugger/kR;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Lorg/jshybugger/kI;Lorg/jshybugger/kR;)V
    .registers 4

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lorg/jshybugger/lM;->r:I

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lorg/jshybugger/lM;->z:Ljava/lang/String;

    .line 111
    iput-object p1, p0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    .line 112
    iput-object p2, p0, Lorg/jshybugger/lM;->l:Lorg/jshybugger/kR;

    .line 113
    instance-of v0, p2, Lorg/jshybugger/mQ;

    if-eqz v0, :cond_16

    .line 114
    check-cast p2, Lorg/jshybugger/mQ;

    iput-object p2, p0, Lorg/jshybugger/lM;->m:Lorg/jshybugger/mQ;

    .line 116
    :cond_16
    return-void
.end method

.method private A()Lorg/jshybugger/mt;
    .registers 6

    .prologue
    const/16 v4, 0xa

    .line 2119
    invoke-direct {p0}, Lorg/jshybugger/lM;->B()Lorg/jshybugger/mt;

    move-result-object v0

    .line 2120
    :goto_6
    invoke-direct {p0, v4}, Lorg/jshybugger/lM;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2121
    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v1, Lorg/jshybugger/mb;->l:I

    .line 2122
    new-instance v1, Lorg/jshybugger/mS;

    invoke-direct {p0}, Lorg/jshybugger/lM;->B()Lorg/jshybugger/mt;

    move-result-object v3

    invoke-direct {v1, v4, v0, v3, v2}, Lorg/jshybugger/mS;-><init>(ILorg/jshybugger/mt;Lorg/jshybugger/mt;I)V

    move-object v0, v1

    .line 2123
    goto :goto_6

    .line 2124
    :cond_1b
    return-object v0
.end method

.method private B()Lorg/jshybugger/mt;
    .registers 6

    .prologue
    const/16 v4, 0xb

    .line 2130
    invoke-direct {p0}, Lorg/jshybugger/lM;->C()Lorg/jshybugger/mt;

    move-result-object v0

    .line 2131
    :goto_6
    invoke-direct {p0, v4}, Lorg/jshybugger/lM;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2132
    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v1, Lorg/jshybugger/mb;->l:I

    .line 2133
    new-instance v1, Lorg/jshybugger/mS;

    invoke-direct {p0}, Lorg/jshybugger/lM;->C()Lorg/jshybugger/mt;

    move-result-object v3

    invoke-direct {v1, v4, v0, v3, v2}, Lorg/jshybugger/mS;-><init>(ILorg/jshybugger/mt;Lorg/jshybugger/mt;I)V

    move-object v0, v1

    .line 2134
    goto :goto_6

    .line 2135
    :cond_1b
    return-object v0
.end method

.method private C()Lorg/jshybugger/mt;
    .registers 6

    .prologue
    .line 2141
    invoke-direct {p0}, Lorg/jshybugger/lM;->D()Lorg/jshybugger/mt;

    move-result-object v0

    .line 2143
    :goto_4
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v1

    iget-object v2, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v2, Lorg/jshybugger/mb;->l:I

    .line 2144
    sparse-switch v1, :sswitch_data_38

    .line 2161
    return-object v0

    .line 2149
    :sswitch_10
    const/4 v2, 0x0

    iput v2, p0, Lorg/jshybugger/lM;->r:I

    .line 2151
    iget-object v2, p0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    iget v2, v2, Lorg/jshybugger/kI;->b:I

    const/16 v4, 0x78

    if-ne v2, v4, :cond_35

    .line 2153
    const/16 v2, 0xc

    if-ne v1, v2, :cond_2d

    .line 2154
    const/16 v1, 0x2e

    move v2, v1

    .line 2158
    :goto_22
    new-instance v1, Lorg/jshybugger/mS;

    invoke-direct {p0}, Lorg/jshybugger/lM;->D()Lorg/jshybugger/mt;

    move-result-object v4

    invoke-direct {v1, v2, v0, v4, v3}, Lorg/jshybugger/mS;-><init>(ILorg/jshybugger/mt;Lorg/jshybugger/mt;I)V

    move-object v0, v1

    .line 2159
    goto :goto_4

    .line 2155
    :cond_2d
    const/16 v2, 0xd

    if-ne v1, v2, :cond_35

    .line 2156
    const/16 v1, 0x2f

    move v2, v1

    goto :goto_22

    :cond_35
    move v2, v1

    goto :goto_22

    .line 2144
    nop

    :sswitch_data_38
    .sparse-switch
        0xc -> :sswitch_10
        0xd -> :sswitch_10
        0x2e -> :sswitch_10
        0x2f -> :sswitch_10
    .end sparse-switch
.end method

.method private D()Lorg/jshybugger/mt;
    .registers 6

    .prologue
    .line 2169
    invoke-direct {p0}, Lorg/jshybugger/lM;->E()Lorg/jshybugger/mt;

    move-result-object v0

    .line 2171
    :goto_4
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v2

    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v1, Lorg/jshybugger/mb;->l:I

    .line 2172
    sparse-switch v2, :sswitch_data_22

    .line 2186
    :cond_f
    return-object v0

    .line 2174
    :sswitch_10
    iget-boolean v1, p0, Lorg/jshybugger/lM;->h:Z

    if-nez v1, :cond_f

    .line 2175
    :sswitch_14
    const/4 v1, 0x0

    iput v1, p0, Lorg/jshybugger/lM;->r:I

    .line 2183
    new-instance v1, Lorg/jshybugger/mS;

    invoke-direct {p0}, Lorg/jshybugger/lM;->E()Lorg/jshybugger/mt;

    move-result-object v4

    invoke-direct {v1, v2, v0, v4, v3}, Lorg/jshybugger/mS;-><init>(ILorg/jshybugger/mt;Lorg/jshybugger/mt;I)V

    move-object v0, v1

    .line 2184
    goto :goto_4

    .line 2172
    :sswitch_data_22
    .sparse-switch
        0xe -> :sswitch_14
        0xf -> :sswitch_14
        0x10 -> :sswitch_14
        0x11 -> :sswitch_14
        0x34 -> :sswitch_10
        0x35 -> :sswitch_14
    .end sparse-switch
.end method

.method private E()Lorg/jshybugger/mt;
    .registers 6

    .prologue
    .line 2194
    invoke-direct {p0}, Lorg/jshybugger/lM;->F()Lorg/jshybugger/mt;

    move-result-object v0

    .line 2196
    :goto_4
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v2

    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v1, Lorg/jshybugger/mb;->l:I

    .line 2197
    packed-switch v2, :pswitch_data_1e

    .line 2205
    return-object v0

    .line 2201
    :pswitch_10
    const/4 v1, 0x0

    iput v1, p0, Lorg/jshybugger/lM;->r:I

    .line 2202
    new-instance v1, Lorg/jshybugger/mS;

    invoke-direct {p0}, Lorg/jshybugger/lM;->F()Lorg/jshybugger/mt;

    move-result-object v4

    invoke-direct {v1, v2, v0, v4, v3}, Lorg/jshybugger/mS;-><init>(ILorg/jshybugger/mt;Lorg/jshybugger/mt;I)V

    move-object v0, v1

    .line 2203
    goto :goto_4

    .line 2197
    :pswitch_data_1e
    .packed-switch 0x12
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method private F()Lorg/jshybugger/mt;
    .registers 6

    .prologue
    .line 2213
    invoke-direct {p0}, Lorg/jshybugger/lM;->G()Lorg/jshybugger/mt;

    move-result-object v0

    .line 2215
    :goto_4
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v2

    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v1, Lorg/jshybugger/mb;->l:I

    .line 2216
    const/16 v1, 0x15

    if-eq v2, v1, :cond_14

    const/16 v1, 0x16

    if-ne v2, v1, :cond_22

    .line 2217
    :cond_14
    const/4 v1, 0x0

    iput v1, p0, Lorg/jshybugger/lM;->r:I

    .line 2218
    new-instance v1, Lorg/jshybugger/mS;

    invoke-direct {p0}, Lorg/jshybugger/lM;->G()Lorg/jshybugger/mt;

    move-result-object v4

    invoke-direct {v1, v2, v0, v4, v3}, Lorg/jshybugger/mS;-><init>(ILorg/jshybugger/mt;Lorg/jshybugger/mt;I)V

    move-object v0, v1

    .line 2219
    goto :goto_4

    .line 2223
    :cond_22
    return-object v0
.end method

.method private G()Lorg/jshybugger/mt;
    .registers 6

    .prologue
    .line 2229
    invoke-direct {p0}, Lorg/jshybugger/lM;->H()Lorg/jshybugger/mt;

    move-result-object v0

    .line 2231
    :goto_4
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v2

    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v1, Lorg/jshybugger/mb;->l:I

    .line 2232
    packed-switch v2, :pswitch_data_1e

    .line 2240
    return-object v0

    .line 2236
    :pswitch_10
    const/4 v1, 0x0

    iput v1, p0, Lorg/jshybugger/lM;->r:I

    .line 2237
    new-instance v1, Lorg/jshybugger/mS;

    invoke-direct {p0}, Lorg/jshybugger/lM;->H()Lorg/jshybugger/mt;

    move-result-object v4

    invoke-direct {v1, v2, v0, v4, v3}, Lorg/jshybugger/mS;-><init>(ILorg/jshybugger/mt;Lorg/jshybugger/mt;I)V

    move-object v0, v1

    .line 2238
    goto :goto_4

    .line 2232
    :pswitch_data_1e
    .packed-switch 0x17
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method private H()Lorg/jshybugger/mt;
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x56

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2249
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v3

    .line 2250
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v4, v0, Lorg/jshybugger/mb;->h:I

    .line 2252
    sparse-switch v3, :sswitch_data_176

    .line 2304
    :cond_10
    invoke-direct {p0, v2}, Lorg/jshybugger/lM;->a(Z)Lorg/jshybugger/mt;

    move-result-object v0

    .line 2306
    invoke-direct {p0}, Lorg/jshybugger/lM;->f()I

    move-result v3

    .line 2307
    const/16 v5, 0x6a

    if-eq v3, v5, :cond_161

    const/16 v5, 0x6b

    if-eq v3, v5, :cond_161

    .line 2315
    :goto_20
    return-object v0

    .line 2257
    :sswitch_21
    iput v1, p0, Lorg/jshybugger/lM;->r:I

    .line 2258
    new-instance v0, Lorg/jshybugger/nr;

    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->l:I

    invoke-direct {p0}, Lorg/jshybugger/lM;->H()Lorg/jshybugger/mt;

    move-result-object v2

    invoke-direct {v0, v3, v1, v2}, Lorg/jshybugger/nr;-><init>(IILorg/jshybugger/mt;)V

    .line 2259
    invoke-virtual {v0, v4}, Lorg/jshybugger/mt;->d(I)V

    goto :goto_20

    .line 2263
    :sswitch_34
    iput v1, p0, Lorg/jshybugger/lM;->r:I

    .line 2265
    new-instance v0, Lorg/jshybugger/nr;

    const/16 v1, 0x1c

    iget-object v2, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v2, Lorg/jshybugger/mb;->l:I

    invoke-direct {p0}, Lorg/jshybugger/lM;->H()Lorg/jshybugger/mt;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/jshybugger/nr;-><init>(IILorg/jshybugger/mt;)V

    .line 2266
    invoke-virtual {v0, v4}, Lorg/jshybugger/mt;->d(I)V

    goto :goto_20

    .line 2270
    :sswitch_49
    iput v1, p0, Lorg/jshybugger/lM;->r:I

    .line 2272
    new-instance v0, Lorg/jshybugger/nr;

    const/16 v1, 0x1d

    iget-object v2, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v2, Lorg/jshybugger/mb;->l:I

    invoke-direct {p0}, Lorg/jshybugger/lM;->H()Lorg/jshybugger/mt;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/jshybugger/nr;-><init>(IILorg/jshybugger/mt;)V

    .line 2273
    invoke-virtual {v0, v4}, Lorg/jshybugger/mt;->d(I)V

    goto :goto_20

    .line 2278
    :sswitch_5e
    iput v1, p0, Lorg/jshybugger/lM;->r:I

    .line 2279
    new-instance v0, Lorg/jshybugger/nr;

    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->l:I

    invoke-direct {p0, v2}, Lorg/jshybugger/lM;->a(Z)Lorg/jshybugger/mt;

    move-result-object v2

    invoke-direct {v0, v3, v1, v2}, Lorg/jshybugger/nr;-><init>(IILorg/jshybugger/mt;)V

    .line 2281
    invoke-virtual {v0, v4}, Lorg/jshybugger/nr;->d(I)V

    .line 2282
    invoke-direct {p0, v0}, Lorg/jshybugger/lM;->a(Lorg/jshybugger/nr;)V

    goto :goto_20

    .line 2286
    :sswitch_74
    iput v1, p0, Lorg/jshybugger/lM;->r:I

    .line 2287
    new-instance v0, Lorg/jshybugger/nr;

    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->l:I

    invoke-direct {p0}, Lorg/jshybugger/lM;->H()Lorg/jshybugger/mt;

    move-result-object v2

    invoke-direct {v0, v3, v1, v2}, Lorg/jshybugger/nr;-><init>(IILorg/jshybugger/mt;)V

    .line 2288
    invoke-virtual {v0, v4}, Lorg/jshybugger/mt;->d(I)V

    goto :goto_20

    .line 2292
    :sswitch_87
    iput v1, p0, Lorg/jshybugger/lM;->r:I

    .line 2293
    invoke-direct {p0}, Lorg/jshybugger/lM;->S()Lorg/jshybugger/mH;

    move-result-object v0

    goto :goto_20

    .line 2297
    :sswitch_8e
    iget-object v0, p0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    iget-boolean v0, v0, Lorg/jshybugger/kI;->f:Z

    if-eqz v0, :cond_10

    .line 2298
    iput v1, p0, Lorg/jshybugger/lM;->r:I

    .line 2299
    iget v0, p0, Lorg/jshybugger/lM;->s:I

    const/16 v3, 0xe

    if-eq v0, v3, :cond_9f

    invoke-direct {p0}, Lorg/jshybugger/lM;->T()Ljava/lang/RuntimeException;

    :cond_9f
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v0, Lorg/jshybugger/mb;->l:I

    iget-object v4, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iput v1, v4, Lorg/jshybugger/mb;->q:I

    iput-boolean v1, v4, Lorg/jshybugger/mb;->o:Z

    iput-boolean v1, v4, Lorg/jshybugger/mb;->p:Z

    iget v0, v4, Lorg/jshybugger/mb;->g:I

    if-eqz v0, :cond_bb

    iget-object v0, v4, Lorg/jshybugger/mb;->f:[I

    iget v5, v4, Lorg/jshybugger/mb;->g:I

    add-int/lit8 v5, v5, -0x1

    aget v0, v0, v5

    const/16 v5, 0xa

    if-eq v0, v5, :cond_d6

    :cond_bb
    move v0, v2

    :goto_bc
    if-nez v0, :cond_d8

    const/4 v0, -0x1

    :goto_bf
    const/16 v1, 0x91

    if-eq v0, v1, :cond_e2

    const/16 v1, 0x94

    if-eq v0, v1, :cond_e2

    const-string v0, "msg.syntax"

    invoke-virtual {p0, v0, v7}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/jshybugger/lM;->S()Lorg/jshybugger/mH;

    move-result-object v0

    :goto_d0
    invoke-direct {p0, v2, v0}, Lorg/jshybugger/lM;->a(ZLorg/jshybugger/mt;)Lorg/jshybugger/mt;

    move-result-object v0

    goto/16 :goto_20

    :cond_d6
    move v0, v1

    goto :goto_bc

    :cond_d8
    const/16 v0, 0x3c

    invoke-virtual {v4, v0}, Lorg/jshybugger/mb;->b(I)V

    invoke-virtual {v4}, Lorg/jshybugger/mb;->b()I

    move-result v0

    goto :goto_bf

    :cond_e2
    new-instance v1, Lorg/jshybugger/nA;

    invoke-direct {v1, v3}, Lorg/jshybugger/nA;-><init>(I)V

    iget-object v3, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v3, Lorg/jshybugger/mb;->h:I

    invoke-virtual {v1, v3}, Lorg/jshybugger/nA;->d(I)V

    :goto_ee
    packed-switch v0, :pswitch_data_1a4

    :pswitch_f1
    const-string v0, "msg.syntax"

    invoke-virtual {p0, v0, v7}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/jshybugger/lM;->S()Lorg/jshybugger/mH;

    move-result-object v0

    goto :goto_d0

    :pswitch_fb
    new-instance v0, Lorg/jshybugger/nE;

    iget-object v3, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v3, Lorg/jshybugger/mb;->l:I

    iget-object v4, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget-object v4, v4, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lorg/jshybugger/nE;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/jshybugger/nA;->a(Lorg/jshybugger/nz;)V

    const/16 v0, 0x55

    const-string v3, "msg.syntax"

    invoke-direct {p0, v0, v3}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v0, Lorg/jshybugger/mb;->l:I

    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v0

    if-ne v0, v6, :cond_149

    new-instance v0, Lorg/jshybugger/mF;

    iget-object v4, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v4, v4, Lorg/jshybugger/mb;->m:I

    sub-int/2addr v4, v3

    invoke-direct {v0, v3, v4}, Lorg/jshybugger/mF;-><init>(II)V

    :goto_126
    const-string v4, "msg.syntax"

    invoke-direct {p0, v6, v4}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    new-instance v4, Lorg/jshybugger/ny;

    invoke-direct {v4, v3, v0}, Lorg/jshybugger/ny;-><init>(ILorg/jshybugger/mt;)V

    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget-boolean v0, v0, Lorg/jshybugger/mb;->o:Z

    invoke-virtual {v4, v0}, Lorg/jshybugger/ny;->a(Z)V

    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->m:I

    sub-int/2addr v0, v3

    invoke-virtual {v4, v0}, Lorg/jshybugger/ny;->j(I)V

    invoke-virtual {v1, v4}, Lorg/jshybugger/nA;->a(Lorg/jshybugger/nz;)V

    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    invoke-virtual {v0}, Lorg/jshybugger/mb;->b()I

    move-result v0

    goto :goto_ee

    :cond_149
    invoke-direct {p0}, Lorg/jshybugger/lM;->w()Lorg/jshybugger/mt;

    move-result-object v0

    goto :goto_126

    :pswitch_14e
    new-instance v0, Lorg/jshybugger/nE;

    iget-object v3, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v3, Lorg/jshybugger/mb;->l:I

    iget-object v4, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget-object v4, v4, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lorg/jshybugger/nE;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/jshybugger/nA;->a(Lorg/jshybugger/nz;)V

    move-object v0, v1

    goto/16 :goto_d0

    .line 2310
    :cond_161
    iput v1, p0, Lorg/jshybugger/lM;->r:I

    .line 2311
    new-instance v1, Lorg/jshybugger/nr;

    iget-object v5, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v5, v5, Lorg/jshybugger/mb;->l:I

    invoke-direct {v1, v3, v5, v0, v2}, Lorg/jshybugger/nr;-><init>(IILorg/jshybugger/mt;Z)V

    .line 2313
    invoke-virtual {v1, v4}, Lorg/jshybugger/nr;->d(I)V

    .line 2314
    invoke-direct {p0, v1}, Lorg/jshybugger/lM;->a(Lorg/jshybugger/nr;)V

    move-object v0, v1

    .line 2315
    goto/16 :goto_20

    .line 2252
    nop

    :sswitch_data_176
    .sparse-switch
        -0x1 -> :sswitch_87
        0xe -> :sswitch_8e
        0x15 -> :sswitch_34
        0x16 -> :sswitch_49
        0x1a -> :sswitch_21
        0x1b -> :sswitch_21
        0x1f -> :sswitch_74
        0x20 -> :sswitch_21
        0x6a -> :sswitch_5e
        0x6b -> :sswitch_5e
        0x7e -> :sswitch_21
    .end sparse-switch

    .line 2299
    :pswitch_data_1a4
    .packed-switch 0x91
        :pswitch_fb
        :pswitch_f1
        :pswitch_f1
        :pswitch_14e
    .end packed-switch
.end method

.method private I()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jshybugger/mt;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/16 v5, 0x58

    const/4 v2, 0x0

    .line 2362
    invoke-direct {p0, v5}, Lorg/jshybugger/lM;->a(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2391
    :goto_a
    return-object v0

    .line 2365
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2366
    iget-boolean v1, p0, Lorg/jshybugger/lM;->h:Z

    .line 2367
    iput-boolean v2, p0, Lorg/jshybugger/lM;->h:Z

    .line 2370
    :cond_14
    :try_start_14
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v2

    const/16 v3, 0x48

    if-ne v2, v3, :cond_22

    .line 2371
    const-string v2, "msg.yield.parenthesized"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2373
    :cond_22
    invoke-direct {p0}, Lorg/jshybugger/lM;->x()Lorg/jshybugger/mt;

    move-result-object v2

    .line 2374
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_4b

    move-result v3

    const/16 v4, 0x77

    if-ne v3, v4, :cond_47

    .line 2376
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_30
    invoke-direct {p0, v2, v3, v4}, Lorg/jshybugger/lM;->a(Lorg/jshybugger/mt;IZ)Lorg/jshybugger/mt;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_37} :catch_4f
    .catchall {:try_start_30 .. :try_end_37} :catchall_4b

    .line 2385
    :goto_37
    const/16 v2, 0x59

    :try_start_39
    invoke-direct {p0, v2}, Lorg/jshybugger/lM;->a(I)Z
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_4b

    move-result v2

    if-nez v2, :cond_14

    .line 2387
    iput-boolean v1, p0, Lorg/jshybugger/lM;->h:Z

    .line 2390
    const-string v1, "msg.no.paren.arg"

    invoke-direct {p0, v5, v1}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    goto :goto_a

    .line 2383
    :cond_47
    :try_start_47
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_37

    .line 2387
    :catchall_4b
    move-exception v0

    iput-boolean v1, p0, Lorg/jshybugger/lM;->h:Z

    throw v0

    .line 2380
    :catch_4f
    move-exception v2

    goto :goto_37
.end method

.method private J()Lorg/jshybugger/mt;
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 2635
    invoke-direct {p0}, Lorg/jshybugger/lM;->e()I

    move-result v0

    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->l:I

    .line 2637
    sparse-switch v0, :sswitch_data_38

    .line 2652
    const-string v0, "msg.no.name.after.xmlAttr"

    invoke-virtual {p0, v0, v2}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2653
    invoke-direct {p0}, Lorg/jshybugger/lM;->S()Lorg/jshybugger/mH;

    move-result-object v0

    :goto_16
    return-object v0

    .line 2640
    :sswitch_17
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget-object v0, v0, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lorg/jshybugger/lM;->b(II)Lorg/jshybugger/mt;

    move-result-object v0

    goto :goto_16

    .line 2644
    :sswitch_20
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->l:I

    const-string v2, "*"

    iget-object v3, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v3, Lorg/jshybugger/mb;->h:I

    invoke-direct {p0, v0, v2, v3}, Lorg/jshybugger/lM;->a(ILjava/lang/String;I)V

    .line 2645
    invoke-direct {p0, v1, v4}, Lorg/jshybugger/lM;->b(II)Lorg/jshybugger/mt;

    move-result-object v0

    goto :goto_16

    .line 2649
    :sswitch_32
    const/4 v0, -0x1

    invoke-direct {p0, v1, v2, v0}, Lorg/jshybugger/lM;->a(ILorg/jshybugger/mZ;I)Lorg/jshybugger/nx;

    move-result-object v0

    goto :goto_16

    .line 2637
    :sswitch_data_38
    .sparse-switch
        0x17 -> :sswitch_20
        0x27 -> :sswitch_17
        0x53 -> :sswitch_32
    .end sparse-switch
.end method

.method private K()Lorg/jshybugger/mt;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2746
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lorg/jshybugger/lM;->x:Z

    .line 2747
    invoke-direct {p0}, Lorg/jshybugger/lM;->L()Lorg/jshybugger/mt;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_b

    move-result-object v0

    .line 2749
    iput-boolean v1, p0, Lorg/jshybugger/lM;->x:Z

    return-object v0

    :catchall_b
    move-exception v0

    iput-boolean v1, p0, Lorg/jshybugger/lM;->x:Z

    throw v0
.end method

.method private L()Lorg/jshybugger/mt;
    .registers 14

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x1

    const/4 v12, 0x0

    const/4 v1, 0x0

    .line 2756
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    iget v2, p0, Lorg/jshybugger/lM;->r:I

    iput v1, p0, Lorg/jshybugger/lM;->r:I

    .line 2757
    const v3, 0xffff

    and-int/2addr v3, v2

    .line 2759
    sparse-switch v3, :sswitch_data_1a2

    .line 2825
    const-string v0, "msg.syntax"

    invoke-virtual {p0, v0, v12}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2829
    :goto_17
    :sswitch_17
    invoke-direct {p0}, Lorg/jshybugger/lM;->S()Lorg/jshybugger/mH;

    move-result-object v0

    :goto_1b
    return-object v0

    .line 2761
    :sswitch_1c
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/jshybugger/lM;->b(I)Lorg/jshybugger/mM;

    move-result-object v0

    goto :goto_1b

    .line 2764
    :sswitch_22
    iget v2, p0, Lorg/jshybugger/lM;->s:I

    const/16 v3, 0x53

    if-eq v2, v3, :cond_2b

    invoke-direct {p0}, Lorg/jshybugger/lM;->T()Ljava/lang/RuntimeException;

    :cond_2b
    iget-object v2, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v8, v2, Lorg/jshybugger/mb;->l:I

    iget-object v2, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v6, v2, Lorg/jshybugger/mb;->m:I

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lorg/jshybugger/mr;

    invoke-direct {v7, v8}, Lorg/jshybugger/mr;-><init>(I)V

    move v2, v1

    move v3, v4

    move v5, v0

    :goto_40
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v10

    const/16 v11, 0x59

    if-ne v10, v11, :cond_61

    iput v1, p0, Lorg/jshybugger/lM;->r:I

    iget-object v3, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v3, Lorg/jshybugger/mb;->m:I

    if-nez v5, :cond_52

    move v5, v0

    goto :goto_40

    :cond_52
    new-instance v10, Lorg/jshybugger/mF;

    iget-object v11, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v11, v11, Lorg/jshybugger/mb;->l:I

    invoke-direct {v10, v11, v0}, Lorg/jshybugger/mF;-><init>(II)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    :cond_61
    const/16 v11, 0x54

    if-ne v10, v11, :cond_94

    iput v1, p0, Lorg/jshybugger/lM;->r:I

    iget-object v6, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v6, v6, Lorg/jshybugger/mb;->m:I

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v5, :cond_92

    :goto_71
    add-int/2addr v0, v10

    invoke-virtual {v7, v0}, Lorg/jshybugger/mr;->e(I)V

    invoke-virtual {v7, v2}, Lorg/jshybugger/mr;->f(I)V

    if-eq v3, v4, :cond_19f

    invoke-direct {p0, v8, v9, v3}, Lorg/jshybugger/lM;->a(ILjava/util/List;I)V

    move v1, v6

    :goto_7e
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_82
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/mt;

    invoke-virtual {v7, v0}, Lorg/jshybugger/mr;->a(Lorg/jshybugger/mt;)V

    goto :goto_82

    :cond_92
    move v0, v1

    goto :goto_71

    :cond_94
    const/16 v3, 0x77

    if-ne v10, v3, :cond_ac

    if-nez v5, :cond_ac

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v0, :cond_ac

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/mt;

    invoke-direct {p0, v0, v8}, Lorg/jshybugger/lM;->a(Lorg/jshybugger/mt;I)Lorg/jshybugger/mt;

    move-result-object v0

    goto/16 :goto_1b

    :cond_ac
    if-nez v10, :cond_b5

    const-string v0, "msg.no.bracket.arg"

    invoke-virtual {p0, v0, v12}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v6

    goto :goto_7e

    :cond_b5
    if-nez v5, :cond_bc

    const-string v3, "msg.no.bracket.arg"

    invoke-virtual {p0, v3, v12}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_bc
    invoke-direct {p0}, Lorg/jshybugger/lM;->x()Lorg/jshybugger/mt;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v4

    move v5, v1

    goto/16 :goto_40

    :cond_c7
    sub-int v0, v1, v8

    invoke-virtual {v7, v0}, Lorg/jshybugger/mr;->j(I)V

    move-object v0, v7

    goto/16 :goto_1b

    .line 2767
    :sswitch_cf
    invoke-direct {p0}, Lorg/jshybugger/lM;->P()Lorg/jshybugger/nd;

    move-result-object v0

    goto/16 :goto_1b

    .line 2770
    :sswitch_d5
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->l:I

    invoke-direct {p0, v1, v0}, Lorg/jshybugger/lM;->a(ZI)Lorg/jshybugger/mt;

    move-result-object v0

    goto/16 :goto_1b

    .line 2773
    :sswitch_df
    invoke-direct {p0}, Lorg/jshybugger/lM;->M()Lorg/jshybugger/mt;

    move-result-object v0

    goto/16 :goto_1b

    .line 2776
    :sswitch_e5
    invoke-direct {p0}, Lorg/jshybugger/lM;->g()V

    .line 2777
    invoke-direct {p0}, Lorg/jshybugger/lM;->J()Lorg/jshybugger/mt;

    move-result-object v0

    goto/16 :goto_1b

    .line 2780
    :sswitch_ee
    iget-object v3, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget-object v3, v3, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    iget-object v5, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v5, v5, Lorg/jshybugger/mb;->l:I

    iget-object v6, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v6, v6, Lorg/jshybugger/mb;->h:I

    const/high16 v7, 0x20000

    and-int/2addr v2, v7

    if-eqz v2, :cond_11d

    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v2

    const/16 v7, 0x67

    if-ne v2, v7, :cond_11d

    new-instance v0, Lorg/jshybugger/mV;

    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->m:I

    sub-int/2addr v1, v5

    invoke-direct {v0, v5, v1}, Lorg/jshybugger/mV;-><init>(II)V

    invoke-virtual {v0, v3}, Lorg/jshybugger/mV;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->h:I

    invoke-virtual {v0, v1}, Lorg/jshybugger/mV;->d(I)V

    goto/16 :goto_1b

    :cond_11d
    invoke-direct {p0, v5, v3, v6}, Lorg/jshybugger/lM;->a(ILjava/lang/String;I)V

    iget-object v2, p0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    iget-boolean v2, v2, Lorg/jshybugger/kI;->f:Z

    if-eqz v2, :cond_12c

    invoke-direct {p0, v4, v1}, Lorg/jshybugger/lM;->b(II)Lorg/jshybugger/mt;

    move-result-object v0

    goto/16 :goto_1b

    :cond_12c
    const/16 v1, 0x27

    invoke-direct {p0, v0, v1}, Lorg/jshybugger/lM;->b(ZI)Lorg/jshybugger/mZ;

    move-result-object v0

    goto/16 :goto_1b

    .line 2783
    :sswitch_134
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget-object v1, v0, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    .line 2784
    iget-boolean v0, p0, Lorg/jshybugger/lM;->d:Z

    if-eqz v0, :cond_147

    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget-boolean v0, v0, Lorg/jshybugger/mb;->d:Z

    if-eqz v0, :cond_147

    .line 2785
    const-string v0, "msg.no.octal.strict"

    invoke-virtual {p0, v0, v12}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2787
    :cond_147
    new-instance v0, Lorg/jshybugger/nc;

    iget-object v2, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v2, Lorg/jshybugger/mb;->l:I

    iget-object v3, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget-wide v4, v3, Lorg/jshybugger/mb;->c:D

    invoke-direct {v0, v2, v1, v4, v5}, Lorg/jshybugger/nc;-><init>(ILjava/lang/String;D)V

    goto/16 :goto_1b

    .line 2793
    :sswitch_156
    invoke-direct {p0}, Lorg/jshybugger/lM;->R()Lorg/jshybugger/nl;

    move-result-object v0

    goto/16 :goto_1b

    .line 2798
    :sswitch_15c
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    invoke-virtual {v0, v3}, Lorg/jshybugger/mb;->a(I)V

    .line 2799
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v0, Lorg/jshybugger/mb;->l:I

    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v0, Lorg/jshybugger/mb;->m:I

    .line 2800
    new-instance v0, Lorg/jshybugger/nh;

    sub-int/2addr v2, v1

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/nh;-><init>(II)V

    .line 2801
    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget-object v1, v1, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jshybugger/nh;->b(Ljava/lang/String;)V

    .line 2802
    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget-object v2, v1, Lorg/jshybugger/mb;->a:Ljava/lang/String;

    iput-object v12, v1, Lorg/jshybugger/mb;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/jshybugger/nh;->c(Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 2809
    :sswitch_181
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v0, Lorg/jshybugger/mb;->l:I

    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v0, Lorg/jshybugger/mb;->m:I

    .line 2810
    new-instance v0, Lorg/jshybugger/mU;

    sub-int/2addr v2, v1

    invoke-direct {v0, v1, v2, v3}, Lorg/jshybugger/mU;-><init>(III)V

    goto/16 :goto_1b

    .line 2813
    :sswitch_191
    const-string v0, "msg.reserved.id"

    invoke-virtual {p0, v0, v12}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 2821
    :sswitch_198
    const-string v0, "msg.unexpected.eof"

    invoke-virtual {p0, v0, v12}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_19f
    move v1, v6

    goto/16 :goto_7e

    .line 2759
    :sswitch_data_1a2
    .sparse-switch
        -0x1 -> :sswitch_17
        0x0 -> :sswitch_198
        0x18 -> :sswitch_15c
        0x27 -> :sswitch_ee
        0x28 -> :sswitch_134
        0x29 -> :sswitch_156
        0x2a -> :sswitch_181
        0x2b -> :sswitch_181
        0x2c -> :sswitch_181
        0x2d -> :sswitch_181
        0x53 -> :sswitch_22
        0x55 -> :sswitch_cf
        0x57 -> :sswitch_df
        0x64 -> :sswitch_15c
        0x6d -> :sswitch_1c
        0x7f -> :sswitch_191
        0x93 -> :sswitch_e5
        0x99 -> :sswitch_d5
    .end sparse-switch
.end method

.method private M()Lorg/jshybugger/mt;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 2833
    iget-boolean v2, p0, Lorg/jshybugger/lM;->h:Z

    .line 2834
    iput-boolean v0, p0, Lorg/jshybugger/lM;->h:Z

    .line 2836
    :try_start_5
    invoke-direct {p0}, Lorg/jshybugger/lM;->c()Lorg/jshybugger/mz;

    move-result-object v1

    .line 2837
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v0, Lorg/jshybugger/mb;->h:I

    .line 2838
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->l:I

    .line 2839
    invoke-direct {p0}, Lorg/jshybugger/lM;->w()Lorg/jshybugger/mt;

    move-result-object v4

    .line 2840
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v5

    const/16 v6, 0x77

    if-ne v5, v6, :cond_25

    .line 2841
    const/4 v1, 0x0

    invoke-direct {p0, v4, v0, v1}, Lorg/jshybugger/lM;->a(Lorg/jshybugger/mt;IZ)Lorg/jshybugger/mt;
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_4e

    move-result-object v0

    .line 2855
    iput-boolean v2, p0, Lorg/jshybugger/lM;->h:Z

    :goto_24
    return-object v0

    .line 2843
    :cond_25
    :try_start_25
    new-instance v0, Lorg/jshybugger/nf;

    invoke-direct {v0, v4}, Lorg/jshybugger/nf;-><init>(Lorg/jshybugger/mt;)V

    .line 2844
    if-nez v1, :cond_30

    .line 2845
    invoke-direct {p0}, Lorg/jshybugger/lM;->c()Lorg/jshybugger/mz;

    move-result-object v1

    .line 2847
    :cond_30
    if-eqz v1, :cond_35

    .line 2848
    invoke-virtual {v0, v1}, Lorg/jshybugger/nf;->a(Lorg/jshybugger/mz;)V

    .line 2850
    :cond_35
    const/16 v1, 0x58

    const-string v4, "msg.no.paren"

    invoke-direct {p0, v1, v4}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    .line 2851
    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->m:I

    invoke-virtual {v0}, Lorg/jshybugger/nf;->n()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lorg/jshybugger/nf;->j(I)V

    .line 2852
    invoke-virtual {v0, v3}, Lorg/jshybugger/nf;->d(I)V
    :try_end_4b
    .catchall {:try_start_25 .. :try_end_4b} :catchall_4e

    .line 2855
    iput-boolean v2, p0, Lorg/jshybugger/lM;->h:Z

    goto :goto_24

    :catchall_4e
    move-exception v0

    iput-boolean v2, p0, Lorg/jshybugger/lM;->h:Z

    throw v0
.end method

.method private N()Lorg/jshybugger/mq;
    .registers 13

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/16 v10, 0x27

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 2979
    invoke-direct {p0}, Lorg/jshybugger/lM;->e()I

    move-result v4

    const/16 v5, 0x77

    if-eq v4, v5, :cond_11

    invoke-direct {p0}, Lorg/jshybugger/lM;->T()Ljava/lang/RuntimeException;

    .line 2980
    :cond_11
    iget-object v4, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v8, v4, Lorg/jshybugger/mb;->l:I

    .line 2982
    new-instance v9, Lorg/jshybugger/mq;

    invoke-direct {v9, v8}, Lorg/jshybugger/mq;-><init>(I)V

    .line 2984
    invoke-virtual {p0, v9}, Lorg/jshybugger/lM;->a(Lorg/jshybugger/nj;)V

    .line 2986
    const/16 v4, 0x27

    :try_start_1f
    invoke-direct {p0, v4}, Lorg/jshybugger/lM;->a(I)Z

    move-result v4

    if-eqz v4, :cond_af

    .line 2987
    iget-object v4, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget-object v4, v4, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    const-string v5, "each"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 2988
    iget-object v4, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v4, v4, Lorg/jshybugger/mb;->l:I

    sub-int/2addr v4, v8

    move v7, v4

    .line 2993
    :goto_37
    const/16 v4, 0x57

    const-string v5, "msg.no.paren.for"

    invoke-direct {p0, v4, v5}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d1

    .line 2994
    iget-object v4, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v4, v4, Lorg/jshybugger/mb;->l:I

    sub-int/2addr v4, v8

    move v6, v4

    .line 2998
    :goto_47
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v4

    sparse-switch v4, :sswitch_data_d4

    .line 3010
    const-string v4, "msg.bad.var"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v2

    .line 3015
    :goto_55
    invoke-virtual {v5}, Lorg/jshybugger/mt;->a()I

    move-result v2

    if-ne v2, v10, :cond_65

    .line 3016
    const/16 v2, 0x99

    iget-object v4, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget-object v4, v4, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-virtual {p0, v2, v4, v10}, Lorg/jshybugger/lM;->a(ILjava/lang/String;Z)V

    .line 3019
    :cond_65
    const/16 v2, 0x34

    const-string v4, "msg.in.after.for.name"

    invoke-direct {p0, v2, v4}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 3020
    iget-object v2, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v2, Lorg/jshybugger/mb;->l:I

    sub-int/2addr v2, v8

    move v4, v2

    .line 3021
    :goto_75
    invoke-direct {p0}, Lorg/jshybugger/lM;->w()Lorg/jshybugger/mt;

    move-result-object v10

    .line 3022
    const/16 v2, 0x58

    const-string v11, "msg.no.paren.for.ctrl"

    invoke-direct {p0, v2, v11}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 3023
    iget-object v2, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v2, Lorg/jshybugger/mb;->l:I

    sub-int/2addr v2, v8

    .line 3025
    :goto_88
    iget-object v11, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v11, v11, Lorg/jshybugger/mb;->m:I

    sub-int v8, v11, v8

    invoke-virtual {v9, v8}, Lorg/jshybugger/mq;->j(I)V

    .line 3026
    invoke-virtual {v9, v5}, Lorg/jshybugger/mq;->b(Lorg/jshybugger/mt;)V

    .line 3027
    invoke-virtual {v9, v10}, Lorg/jshybugger/mq;->e(Lorg/jshybugger/mt;)V

    .line 3028
    invoke-virtual {v9, v4}, Lorg/jshybugger/mq;->e(I)V

    .line 3029
    invoke-virtual {v9, v7}, Lorg/jshybugger/mq;->f(I)V

    .line 3030
    if-eq v7, v3, :cond_c6

    :goto_9f
    invoke-virtual {v9, v0}, Lorg/jshybugger/mq;->a(Z)V

    .line 3031
    invoke-virtual {v9, v6, v2}, Lorg/jshybugger/mq;->d(II)V
    :try_end_a5
    .catchall {:try_start_1f .. :try_end_a5} :catchall_c8

    .line 3034
    invoke-virtual {p0}, Lorg/jshybugger/lM;->a()V

    return-object v9

    .line 2990
    :cond_a9
    :try_start_a9
    const-string v4, "msg.no.paren.for"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_af
    move v7, v3

    goto :goto_37

    .line 3002
    :sswitch_b1
    invoke-direct {p0}, Lorg/jshybugger/lM;->K()Lorg/jshybugger/mt;

    move-result-object v2

    .line 3003
    invoke-direct {p0, v2}, Lorg/jshybugger/lM;->g(Lorg/jshybugger/mt;)V

    move-object v5, v2

    .line 3004
    goto :goto_55

    .line 3006
    :sswitch_ba
    const/4 v2, 0x0

    iput v2, p0, Lorg/jshybugger/lM;->r:I

    .line 3007
    const/4 v2, 0x0

    const/16 v4, 0x27

    invoke-direct {p0, v2, v4}, Lorg/jshybugger/lM;->b(ZI)Lorg/jshybugger/mZ;
    :try_end_c3
    .catchall {:try_start_a9 .. :try_end_c3} :catchall_c8

    move-result-object v2

    move-object v5, v2

    .line 3008
    goto :goto_55

    :cond_c6
    move v0, v1

    .line 3030
    goto :goto_9f

    .line 3034
    :catchall_c8
    move-exception v0

    invoke-virtual {p0}, Lorg/jshybugger/lM;->a()V

    throw v0

    :cond_cd
    move v2, v3

    goto :goto_88

    :cond_cf
    move v4, v3

    goto :goto_75

    :cond_d1
    move v6, v3

    goto/16 :goto_47

    .line 2998
    :sswitch_data_d4
    .sparse-switch
        0x27 -> :sswitch_ba
        0x53 -> :sswitch_b1
        0x55 -> :sswitch_b1
    .end sparse-switch
.end method

.method private O()Lorg/jshybugger/mP;
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/16 v7, 0x27

    const/4 v0, -0x1

    .line 3078
    invoke-direct {p0}, Lorg/jshybugger/lM;->e()I

    move-result v2

    const/16 v3, 0x77

    if-eq v2, v3, :cond_f

    invoke-direct {p0}, Lorg/jshybugger/lM;->T()Ljava/lang/RuntimeException;

    .line 3079
    :cond_f
    iget-object v2, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v4, v2, Lorg/jshybugger/mb;->l:I

    .line 3081
    new-instance v5, Lorg/jshybugger/mP;

    invoke-direct {v5, v4}, Lorg/jshybugger/mP;-><init>(I)V

    .line 3083
    invoke-virtual {p0, v5}, Lorg/jshybugger/lM;->a(Lorg/jshybugger/nj;)V

    .line 3085
    const/16 v2, 0x57

    :try_start_1d
    const-string v3, "msg.no.paren.for"

    invoke-direct {p0, v2, v3}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 3086
    iget-object v2, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v2, Lorg/jshybugger/mb;->l:I

    sub-int/2addr v2, v4

    move v3, v2

    .line 3090
    :goto_2b
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v2

    sparse-switch v2, :sswitch_data_a2

    .line 3102
    const-string v2, "msg.bad.var"

    const/4 v6, 0x0

    invoke-virtual {p0, v2, v6}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 3107
    :goto_39
    invoke-virtual {v2}, Lorg/jshybugger/mt;->a()I

    move-result v1

    if-ne v1, v7, :cond_49

    .line 3108
    const/16 v1, 0x99

    iget-object v6, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget-object v6, v6, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {p0, v1, v6, v7}, Lorg/jshybugger/lM;->a(ILjava/lang/String;Z)V

    .line 3111
    :cond_49
    const/16 v1, 0x34

    const-string v6, "msg.in.after.for.name"

    invoke-direct {p0, v1, v6}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 3112
    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->l:I

    sub-int/2addr v1, v4

    .line 3113
    :goto_58
    invoke-direct {p0}, Lorg/jshybugger/lM;->w()Lorg/jshybugger/mt;

    move-result-object v6

    .line 3114
    const/16 v7, 0x58

    const-string v8, "msg.no.paren.for.ctrl"

    invoke-direct {p0, v7, v8}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 3115
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->l:I

    sub-int/2addr v0, v4

    .line 3117
    :cond_6b
    iget-object v7, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v7, v7, Lorg/jshybugger/mb;->m:I

    sub-int v4, v7, v4

    invoke-virtual {v5, v4}, Lorg/jshybugger/mP;->j(I)V

    .line 3118
    invoke-virtual {v5, v2}, Lorg/jshybugger/mP;->b(Lorg/jshybugger/mt;)V

    .line 3119
    invoke-virtual {v5, v6}, Lorg/jshybugger/mP;->e(Lorg/jshybugger/mt;)V

    .line 3120
    invoke-virtual {v5, v1}, Lorg/jshybugger/mP;->e(I)V

    .line 3121
    invoke-virtual {v5, v3, v0}, Lorg/jshybugger/mP;->d(II)V
    :try_end_80
    .catchall {:try_start_1d .. :try_end_80} :catchall_99

    .line 3124
    invoke-virtual {p0}, Lorg/jshybugger/lM;->a()V

    return-object v5

    .line 3094
    :sswitch_84
    :try_start_84
    invoke-direct {p0}, Lorg/jshybugger/lM;->K()Lorg/jshybugger/mt;

    move-result-object v1

    .line 3095
    invoke-direct {p0, v1}, Lorg/jshybugger/lM;->g(Lorg/jshybugger/mt;)V

    move-object v2, v1

    .line 3096
    goto :goto_39

    .line 3098
    :sswitch_8d
    const/4 v1, 0x0

    iput v1, p0, Lorg/jshybugger/lM;->r:I

    .line 3099
    const/4 v1, 0x0

    const/16 v2, 0x27

    invoke-direct {p0, v1, v2}, Lorg/jshybugger/lM;->b(ZI)Lorg/jshybugger/mZ;
    :try_end_96
    .catchall {:try_start_84 .. :try_end_96} :catchall_99

    move-result-object v1

    move-object v2, v1

    .line 3100
    goto :goto_39

    .line 3124
    :catchall_99
    move-exception v0

    invoke-virtual {p0}, Lorg/jshybugger/lM;->a()V

    throw v0

    :cond_9e
    move v1, v0

    goto :goto_58

    :cond_a0
    move v3, v0

    goto :goto_2b

    .line 3090
    :sswitch_data_a2
    .sparse-switch
        0x27 -> :sswitch_8d
        0x53 -> :sswitch_84
        0x55 -> :sswitch_84
    .end sparse-switch
.end method

.method private P()Lorg/jshybugger/nd;
    .registers 18

    .prologue
    .line 3135
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v6, v1, Lorg/jshybugger/mb;->l:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v7, v1, Lorg/jshybugger/mb;->h:I

    .line 3136
    const/4 v3, -0x1

    .line 3137
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3138
    const/4 v2, 0x0

    .line 3139
    const/4 v1, 0x0

    .line 3140
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/jshybugger/lM;->d:Z

    if-eqz v4, :cond_24

    .line 3141
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 3142
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3144
    :cond_24
    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->c()Lorg/jshybugger/mz;

    move-result-object v9

    .line 3148
    :goto_28
    const/4 v4, 0x1

    .line 3150
    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->d()I

    move-result v10

    .line 3151
    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->c()Lorg/jshybugger/mz;

    move-result-object v11

    .line 3152
    sparse-switch v10, :sswitch_data_18a

    .line 3200
    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->Q()Lorg/jshybugger/mt;

    move-result-object v5

    .line 3201
    if-nez v5, :cond_132

    .line 3202
    const/4 v3, 0x0

    move/from16 v16, v4

    move-object v4, v3

    move/from16 v3, v16

    .line 3211
    :goto_40
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/jshybugger/lM;->d:Z

    if-eqz v5, :cond_4b

    if-eqz v4, :cond_4b

    .line 3212
    packed-switch v3, :pswitch_data_194

    .line 3237
    :cond_4b
    :goto_4b
    :pswitch_4b
    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->c()Lorg/jshybugger/mz;

    .line 3239
    const/16 v3, 0x59

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/jshybugger/lM;->a(I)Z

    move-result v3

    if-eqz v3, :cond_111

    .line 3240
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v3, Lorg/jshybugger/mb;->m:I

    goto :goto_28

    .line 3154
    :sswitch_5f
    const/4 v3, 0x0

    const/16 v5, 0x27

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lorg/jshybugger/lM;->b(ZI)Lorg/jshybugger/mZ;

    move-result-object v12

    .line 3155
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget-object v3, v3, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    .line 3156
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v13, v5, Lorg/jshybugger/mb;->l:I

    .line 3157
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lorg/jshybugger/lM;->r:I

    .line 3167
    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->d()I

    move-result v14

    .line 3168
    const-string v5, "get"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8d

    const-string v5, "set"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ad

    :cond_8d
    const/4 v5, 0x1

    .line 3171
    :goto_8e
    if-eqz v5, :cond_f6

    const/16 v5, 0x59

    if-eq v14, v5, :cond_f6

    const/16 v5, 0x67

    if-eq v14, v5, :cond_f6

    const/16 v5, 0x56

    if-eq v14, v5, :cond_f6

    .line 3176
    const-string v4, "get"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 3177
    if-eqz v5, :cond_af

    const/4 v3, 0x2

    .line 3178
    :goto_a5
    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->Q()Lorg/jshybugger/mt;

    move-result-object v10

    .line 3179
    if-nez v10, :cond_b1

    .line 3180
    const/4 v4, 0x0

    goto :goto_40

    .line 3168
    :cond_ad
    const/4 v5, 0x0

    goto :goto_8e

    .line 3177
    :cond_af
    const/4 v3, 0x4

    goto :goto_a5

    .line 3182
    :cond_b1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget-object v4, v4, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    .line 3183
    const/4 v12, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/jshybugger/lM;->b(I)Lorg/jshybugger/mM;

    move-result-object v12

    invoke-virtual {v12}, Lorg/jshybugger/mM;->k()Lorg/jshybugger/mZ;

    move-result-object v14

    if-eqz v14, :cond_d2

    invoke-virtual {v14}, Lorg/jshybugger/mZ;->l()I

    move-result v14

    if-eqz v14, :cond_d2

    const-string v14, "msg.bad.prop"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d2
    new-instance v14, Lorg/jshybugger/ne;

    invoke-direct {v14, v13}, Lorg/jshybugger/ne;-><init>(I)V

    if-eqz v5, :cond_f2

    invoke-virtual {v14}, Lorg/jshybugger/ne;->m()V

    :goto_dc
    invoke-static {v12}, Lorg/jshybugger/lM;->b(Lorg/jshybugger/mt;)I

    move-result v5

    invoke-virtual {v14, v10}, Lorg/jshybugger/ne;->a(Lorg/jshybugger/mt;)V

    invoke-virtual {v14, v12}, Lorg/jshybugger/ne;->b(Lorg/jshybugger/mt;)V

    sub-int/2addr v5, v13

    invoke-virtual {v14, v5}, Lorg/jshybugger/ne;->j(I)V

    .line 3185
    invoke-virtual {v10, v11}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/mz;)V

    .line 3186
    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_40

    .line 3183
    :cond_f2
    invoke-virtual {v14}, Lorg/jshybugger/ne;->t()V

    goto :goto_dc

    .line 3189
    :cond_f6
    invoke-virtual {v12, v11}, Lorg/jshybugger/mZ;->a(Lorg/jshybugger/mz;)V

    .line 3190
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10}, Lorg/jshybugger/lM;->b(Lorg/jshybugger/mt;I)Lorg/jshybugger/ne;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v16, v4

    move-object v4, v3

    move/from16 v3, v16

    .line 3192
    goto/16 :goto_40

    .line 3195
    :sswitch_109
    const/4 v1, -0x1

    if-eq v3, v1, :cond_111

    .line 3196
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v8, v3}, Lorg/jshybugger/lM;->a(ILjava/util/List;I)V

    .line 3246
    :cond_111
    const/16 v1, 0x56

    const-string v2, "msg.no.brace.prop"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    .line 3247
    new-instance v1, Lorg/jshybugger/nd;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v2, Lorg/jshybugger/mb;->m:I

    sub-int/2addr v2, v6

    invoke-direct {v1, v6, v2}, Lorg/jshybugger/nd;-><init>(II)V

    .line 3248
    if-eqz v9, :cond_12b

    .line 3249
    invoke-virtual {v1, v9}, Lorg/jshybugger/nd;->a(Lorg/jshybugger/mz;)V

    .line 3251
    :cond_12b
    invoke-virtual {v1, v8}, Lorg/jshybugger/nd;->a(Ljava/util/List;)V

    .line 3252
    invoke-virtual {v1, v7}, Lorg/jshybugger/nd;->d(I)V

    .line 3253
    return-object v1

    .line 3204
    :cond_132
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget-object v3, v3, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    .line 3205
    invoke-virtual {v5, v11}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/mz;)V

    .line 3206
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10}, Lorg/jshybugger/lM;->b(Lorg/jshybugger/mt;I)Lorg/jshybugger/ne;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v16, v4

    move-object v4, v3

    move/from16 v3, v16

    goto/16 :goto_40

    .line 3214
    :pswitch_14b
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_157

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15e

    .line 3216
    :cond_157
    const-string v3, "msg.dup.obj.lit.prop.strict"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lorg/jshybugger/lM;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3218
    :cond_15e
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3219
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4b

    .line 3222
    :pswitch_166
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_173

    .line 3223
    const-string v3, "msg.dup.obj.lit.prop.strict"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lorg/jshybugger/lM;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3225
    :cond_173
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4b

    .line 3228
    :pswitch_178
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_185

    .line 3229
    const-string v3, "msg.dup.obj.lit.prop.strict"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lorg/jshybugger/lM;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3231
    :cond_185
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4b

    .line 3152
    :sswitch_data_18a
    .sparse-switch
        0x27 -> :sswitch_5f
        0x56 -> :sswitch_109
    .end sparse-switch

    .line 3212
    :pswitch_data_194
    .packed-switch 0x1
        :pswitch_14b
        :pswitch_166
        :pswitch_4b
        :pswitch_178
    .end packed-switch
.end method

.method private Q()Lorg/jshybugger/mt;
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/16 v2, 0x27

    const/4 v6, 0x0

    .line 3258
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v1

    .line 3259
    packed-switch v1, :pswitch_data_44

    .line 3274
    iget-object v1, p0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    iget-boolean v1, v1, Lorg/jshybugger/kI;->d:Z

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget-object v1, v1, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    invoke-static {v1}, Lorg/jshybugger/mb;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 3277
    invoke-direct {p0, v6, v2}, Lorg/jshybugger/lM;->b(ZI)Lorg/jshybugger/mZ;

    move-result-object v0

    .line 3284
    :goto_1f
    iput v6, p0, Lorg/jshybugger/lM;->r:I

    .line 3285
    :goto_21
    return-object v0

    .line 3261
    :pswitch_22
    invoke-direct {p0, v6, v2}, Lorg/jshybugger/lM;->b(ZI)Lorg/jshybugger/mZ;

    move-result-object v0

    goto :goto_1f

    .line 3265
    :pswitch_27
    invoke-direct {p0}, Lorg/jshybugger/lM;->R()Lorg/jshybugger/nl;

    move-result-object v0

    goto :goto_1f

    .line 3269
    :pswitch_2c
    new-instance v0, Lorg/jshybugger/nc;

    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->l:I

    iget-object v2, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget-object v2, v2, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    iget-object v3, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget-wide v4, v3, Lorg/jshybugger/mb;->c:D

    invoke-direct {v0, v1, v2, v4, v5}, Lorg/jshybugger/nc;-><init>(ILjava/lang/String;D)V

    goto :goto_1f

    .line 3280
    :cond_3e
    const-string v1, "msg.bad.prop"

    invoke-virtual {p0, v1, v0}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 3259
    :pswitch_data_44
    .packed-switch 0x27
        :pswitch_22
        :pswitch_2c
        :pswitch_27
    .end packed-switch
.end method

.method private R()Lorg/jshybugger/nl;
    .registers 4

    .prologue
    .line 3374
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->l:I

    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->m:I

    .line 3375
    new-instance v2, Lorg/jshybugger/nl;

    sub-int/2addr v1, v0

    invoke-direct {v2, v0, v1}, Lorg/jshybugger/nl;-><init>(II)V

    .line 3376
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->h:I

    invoke-virtual {v2, v0}, Lorg/jshybugger/nl;->d(I)V

    .line 3377
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget-object v0, v0, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/jshybugger/nl;->b(Ljava/lang/String;)V

    .line 3378
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->e:I

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Lorg/jshybugger/nl;->a(C)V

    .line 3379
    return-object v2
.end method

.method private S()Lorg/jshybugger/mH;
    .registers 5

    .prologue
    .line 3439
    new-instance v0, Lorg/jshybugger/mH;

    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->l:I

    iget-object v2, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v2, Lorg/jshybugger/mb;->m:I

    iget-object v3, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v3, Lorg/jshybugger/mb;->l:I

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/mH;-><init>(II)V

    .line 3440
    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->h:I

    invoke-virtual {v0, v1}, Lorg/jshybugger/mH;->d(I)V

    .line 3441
    return-object v0
.end method

.method private T()Ljava/lang/RuntimeException;
    .registers 3

    .prologue
    .line 3875
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ts.cursor="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ts.tokenBeg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jshybugger/lM;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jshybugger/lh;->b(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private a(ILjava/lang/String;Lorg/jshybugger/lH;)Lorg/jshybugger/lH;
    .registers 5

    .prologue
    .line 3745
    invoke-virtual {p0, p2}, Lorg/jshybugger/lM;->b(Ljava/lang/String;)Lorg/jshybugger/lH;

    move-result-object v0

    .line 3746
    invoke-virtual {v0, p1}, Lorg/jshybugger/lH;->a(I)Lorg/jshybugger/lH;

    .line 3747
    if-eqz p3, :cond_c

    .line 3748
    invoke-virtual {v0, p3}, Lorg/jshybugger/lH;->b(Lorg/jshybugger/lH;)V

    .line 3749
    :cond_c
    return-object v0
.end method

.method private a(ILorg/jshybugger/lH;Lorg/jshybugger/lH;Ljava/lang/String;)Lorg/jshybugger/lH;
    .registers 13

    .prologue
    const/4 v7, 0x0

    const/16 v3, 0x99

    const/4 v0, 0x1

    .line 3598
    const/16 v1, 0x9e

    invoke-virtual {p2}, Lorg/jshybugger/lH;->f()I

    move-result v2

    invoke-static {v1, v2}, Lorg/jshybugger/lM;->a(II)Lorg/jshybugger/nj;

    move-result-object v6

    .line 3599
    new-instance v1, Lorg/jshybugger/lH;

    const/16 v2, 0x27

    invoke-direct {p0, v2, p4, p3}, Lorg/jshybugger/lM;->a(ILjava/lang/String;Lorg/jshybugger/lH;)Lorg/jshybugger/lH;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lorg/jshybugger/lH;-><init>(ILorg/jshybugger/lH;)V

    invoke-virtual {v6, v1}, Lorg/jshybugger/nj;->a(Lorg/jshybugger/lH;)V

    .line 3602
    :try_start_1c
    invoke-virtual {p0, v6}, Lorg/jshybugger/lM;->a(Lorg/jshybugger/nj;)V

    .line 3603
    const/16 v1, 0x99

    const/4 v2, 0x1

    invoke-virtual {p0, v1, p4, v2}, Lorg/jshybugger/lM;->a(ILjava/lang/String;Z)V
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_54

    .line 3605
    invoke-virtual {p0}, Lorg/jshybugger/lM;->a()V

    .line 3607
    new-instance v4, Lorg/jshybugger/lH;

    const/16 v1, 0x59

    invoke-direct {v4, v1}, Lorg/jshybugger/lH;-><init>(I)V

    .line 3608
    invoke-virtual {v6, v4}, Lorg/jshybugger/nj;->b(Lorg/jshybugger/lH;)V

    .line 3609
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3611
    invoke-virtual {p2}, Lorg/jshybugger/lH;->a()I

    move-result v1

    sparse-switch v1, :sswitch_data_84

    .line 3633
    const-string v1, "msg.bad.assign.left"

    invoke-virtual {p0, v1, v7}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3635
    :goto_43
    if-eqz v0, :cond_4e

    .line 3637
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lorg/jshybugger/lH;->a(D)Lorg/jshybugger/lH;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/jshybugger/lH;->b(Lorg/jshybugger/lH;)V

    .line 3639
    :cond_4e
    const/16 v0, 0x16

    invoke-virtual {v6, v0, v5}, Lorg/jshybugger/nj;->a(ILjava/lang/Object;)V

    .line 3640
    return-object v6

    .line 3605
    :catchall_54
    move-exception v0

    invoke-virtual {p0}, Lorg/jshybugger/lM;->a()V

    throw v0

    :sswitch_59
    move-object v1, p2

    .line 3613
    check-cast v1, Lorg/jshybugger/mr;

    move-object v0, p0

    move v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lorg/jshybugger/lM;->a(Lorg/jshybugger/mr;ILjava/lang/String;Lorg/jshybugger/lH;Ljava/util/List;)Z

    move-result v0

    goto :goto_43

    :sswitch_64
    move-object v1, p2

    .line 3618
    check-cast v1, Lorg/jshybugger/nd;

    move-object v0, p0

    move v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lorg/jshybugger/lM;->a(Lorg/jshybugger/nd;ILjava/lang/String;Lorg/jshybugger/lH;Ljava/util/List;)Z

    move-result v0

    goto :goto_43

    .line 3624
    :sswitch_6f
    sparse-switch p1, :sswitch_data_96

    .line 3630
    :goto_72
    invoke-virtual {p0, p4}, Lorg/jshybugger/lM;->b(Ljava/lang/String;)Lorg/jshybugger/lH;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lorg/jshybugger/lM;->a(Lorg/jshybugger/lH;Lorg/jshybugger/lH;)Lorg/jshybugger/lH;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/jshybugger/lH;->b(Lorg/jshybugger/lH;)V

    goto :goto_43

    .line 3628
    :sswitch_7e
    const-string v1, "msg.bad.assign.left"

    invoke-virtual {p0, v1, v7}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_72

    .line 3611
    :sswitch_data_84
    .sparse-switch
        0x21 -> :sswitch_6f
        0x24 -> :sswitch_6f
        0x41 -> :sswitch_59
        0x42 -> :sswitch_64
    .end sparse-switch

    .line 3624
    :sswitch_data_96
    .sparse-switch
        0x7a -> :sswitch_7e
        0x99 -> :sswitch_7e
        0x9a -> :sswitch_7e
    .end sparse-switch
.end method

.method private a(IZ)Lorg/jshybugger/mt;
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x4

    .line 1622
    invoke-direct {p0}, Lorg/jshybugger/lM;->h()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1623
    if-ne p1, v3, :cond_7c

    const-string v0, "msg.bad.return"

    :goto_c
    invoke-virtual {p0, v0, v1}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    :cond_f
    const/4 v0, 0x0

    iput v0, p0, Lorg/jshybugger/lM;->r:I

    .line 1627
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v4, v0, Lorg/jshybugger/mb;->h:I

    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v5, v0, Lorg/jshybugger/mb;->l:I

    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->m:I

    .line 1631
    invoke-direct {p0}, Lorg/jshybugger/lM;->f()I

    move-result v2

    sparse-switch v2, :sswitch_data_be

    .line 1636
    invoke-direct {p0}, Lorg/jshybugger/lM;->w()Lorg/jshybugger/mt;

    move-result-object v0

    .line 1637
    invoke-static {v0}, Lorg/jshybugger/lM;->b(Lorg/jshybugger/mt;)I

    move-result v2

    .line 1640
    :goto_2d
    iget v6, p0, Lorg/jshybugger/lM;->g:I

    .line 1643
    if-ne p1, v3, :cond_84

    .line 1644
    iget v7, p0, Lorg/jshybugger/lM;->g:I

    if-nez v0, :cond_82

    const/4 v1, 0x2

    :goto_36
    or-int/2addr v1, v7

    iput v1, p0, Lorg/jshybugger/lM;->g:I

    .line 1645
    new-instance v1, Lorg/jshybugger/ni;

    sub-int v3, v2, v5

    invoke-direct {v1, v5, v3, v0}, Lorg/jshybugger/ni;-><init>(IILorg/jshybugger/mt;)V

    .line 1648
    iget v0, p0, Lorg/jshybugger/lM;->g:I

    const/4 v3, 0x6

    invoke-static {v6, v0, v3}, Lorg/jshybugger/lM;->a(III)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1650
    const-string v0, "msg.return.inconsistent"

    const-string v3, ""

    sub-int/2addr v2, v5

    invoke-direct {p0, v0, v3, v5, v2}, Lorg/jshybugger/lM;->a(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1664
    :cond_51
    :goto_51
    invoke-direct {p0}, Lorg/jshybugger/lM;->h()Z

    move-result v0

    if-eqz v0, :cond_78

    iget v0, p0, Lorg/jshybugger/lM;->g:I

    const/16 v2, 0xc

    invoke-static {v6, v0, v2}, Lorg/jshybugger/lM;->a(III)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 1667
    iget-object v0, p0, Lorg/jshybugger/lM;->e:Lorg/jshybugger/nk;

    check-cast v0, Lorg/jshybugger/mM;

    invoke-virtual {v0}, Lorg/jshybugger/mM;->k()Lorg/jshybugger/mZ;

    move-result-object v0

    .line 1668
    if-eqz v0, :cond_71

    invoke-virtual {v0}, Lorg/jshybugger/mZ;->l()I

    move-result v2

    if-nez v2, :cond_b4

    .line 1669
    :cond_71
    const-string v0, "msg.anon.generator.returns"

    const-string v2, ""

    invoke-direct {p0, v0, v2}, Lorg/jshybugger/lM;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    :cond_78
    :goto_78
    invoke-virtual {v1, v4}, Lorg/jshybugger/mt;->d(I)V

    .line 1675
    return-object v1

    .line 1623
    :cond_7c
    const-string v0, "msg.bad.yield"

    goto :goto_c

    :sswitch_7f
    move v2, v0

    move-object v0, v1

    .line 1634
    goto :goto_2d

    :cond_82
    move v1, v3

    .line 1644
    goto :goto_36

    .line 1652
    :cond_84
    invoke-direct {p0}, Lorg/jshybugger/lM;->h()Z

    move-result v3

    if-nez v3, :cond_8f

    .line 1653
    const-string v3, "msg.bad.yield"

    invoke-virtual {p0, v3, v1}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    :cond_8f
    iget v1, p0, Lorg/jshybugger/lM;->g:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lorg/jshybugger/lM;->g:I

    .line 1655
    new-instance v1, Lorg/jshybugger/nF;

    sub-int/2addr v2, v5

    invoke-direct {v1, v5, v2, v0}, Lorg/jshybugger/nF;-><init>(IILorg/jshybugger/mt;)V

    .line 1656
    invoke-virtual {p0}, Lorg/jshybugger/lM;->b()V

    .line 1657
    invoke-direct {p0}, Lorg/jshybugger/lM;->h()Z

    move-result v0

    if-eqz v0, :cond_ab

    iget-object v0, p0, Lorg/jshybugger/lM;->e:Lorg/jshybugger/nk;

    check-cast v0, Lorg/jshybugger/mM;

    invoke-virtual {v0}, Lorg/jshybugger/mM;->u()V

    .line 1658
    :cond_ab
    if-nez p2, :cond_51

    .line 1659
    new-instance v0, Lorg/jshybugger/mI;

    invoke-direct {v0, v1}, Lorg/jshybugger/mI;-><init>(Lorg/jshybugger/mt;)V

    move-object v1, v0

    goto :goto_51

    .line 1671
    :cond_b4
    const-string v2, "msg.generator.returns"

    invoke-virtual {v0}, Lorg/jshybugger/mZ;->k()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lorg/jshybugger/lM;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_78

    .line 1631
    :sswitch_data_be
    .sparse-switch
        -0x1 -> :sswitch_7f
        0x0 -> :sswitch_7f
        0x1 -> :sswitch_7f
        0x48 -> :sswitch_7f
        0x52 -> :sswitch_7f
        0x54 -> :sswitch_7f
        0x56 -> :sswitch_7f
        0x58 -> :sswitch_7f
    .end sparse-switch
.end method

.method protected static a(Lorg/jshybugger/mt;)Lorg/jshybugger/mt;
    .registers 3

    .prologue
    .line 3857
    move-object v0, p0

    :goto_1
    instance-of v1, v0, Lorg/jshybugger/nf;

    if-eqz v1, :cond_c

    .line 3858
    check-cast v0, Lorg/jshybugger/nf;

    invoke-virtual {v0}, Lorg/jshybugger/nf;->k()Lorg/jshybugger/mt;

    move-result-object v0

    goto :goto_1

    .line 3860
    :cond_c
    return-object v0
.end method

.method private a(Lorg/jshybugger/mt;I)Lorg/jshybugger/mt;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 2951
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2953
    :goto_6
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v0

    const/16 v3, 0x77

    if-ne v0, v3, :cond_16

    .line 2954
    invoke-direct {p0}, Lorg/jshybugger/lM;->N()Lorg/jshybugger/mq;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 2957
    :cond_16
    const/4 v0, 0x0

    .line 2958
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v3

    const/16 v4, 0x70

    if-ne v3, v4, :cond_2b

    .line 2959
    iput v1, p0, Lorg/jshybugger/lM;->r:I

    .line 2960
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->l:I

    sub-int v1, v0, p2

    .line 2961
    invoke-direct {p0}, Lorg/jshybugger/lM;->m()Lorg/jshybugger/lN;

    move-result-object v0

    .line 2963
    :cond_2b
    const/16 v3, 0x54

    const-string v4, "msg.no.bracket.arg"

    invoke-direct {p0, v3, v4}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    .line 2964
    new-instance v3, Lorg/jshybugger/mp;

    iget-object v4, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v4, v4, Lorg/jshybugger/mb;->m:I

    sub-int/2addr v4, p2

    invoke-direct {v3, p2, v4}, Lorg/jshybugger/mp;-><init>(II)V

    .line 2965
    invoke-virtual {v3, p1}, Lorg/jshybugger/mp;->a(Lorg/jshybugger/mt;)V

    .line 2966
    invoke-virtual {v3, v2}, Lorg/jshybugger/mp;->a(Ljava/util/List;)V

    .line 2967
    if-eqz v0, :cond_58

    .line 2968
    invoke-virtual {v3, v1}, Lorg/jshybugger/mp;->e(I)V

    .line 2969
    iget-object v1, v0, Lorg/jshybugger/lN;->a:Lorg/jshybugger/mt;

    invoke-virtual {v3, v1}, Lorg/jshybugger/mp;->b(Lorg/jshybugger/mt;)V

    .line 2970
    iget v1, v0, Lorg/jshybugger/lN;->b:I

    sub-int/2addr v1, p2

    invoke-virtual {v3, v1}, Lorg/jshybugger/mp;->f(I)V

    .line 2971
    iget v0, v0, Lorg/jshybugger/lN;->c:I

    sub-int/2addr v0, p2

    invoke-virtual {v3, v0}, Lorg/jshybugger/mp;->g(I)V

    .line 2973
    :cond_58
    return-object v3
.end method

.method private a(Lorg/jshybugger/mt;IZ)Lorg/jshybugger/mt;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 3048
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3050
    :goto_6
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v0

    const/16 v3, 0x77

    if-ne v0, v3, :cond_16

    .line 3051
    invoke-direct {p0}, Lorg/jshybugger/lM;->O()Lorg/jshybugger/mP;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 3054
    :cond_16
    const/4 v0, 0x0

    .line 3055
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v3

    const/16 v4, 0x70

    if-ne v3, v4, :cond_2b

    .line 3056
    iput v1, p0, Lorg/jshybugger/lM;->r:I

    .line 3057
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->l:I

    sub-int v1, v0, p2

    .line 3058
    invoke-direct {p0}, Lorg/jshybugger/lM;->m()Lorg/jshybugger/lN;

    move-result-object v0

    .line 3060
    :cond_2b
    if-nez p3, :cond_34

    .line 3061
    const/16 v3, 0x58

    const-string v4, "msg.no.paren.let"

    invoke-direct {p0, v3, v4}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    .line 3063
    :cond_34
    new-instance v3, Lorg/jshybugger/mO;

    iget-object v4, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v4, v4, Lorg/jshybugger/mb;->m:I

    sub-int/2addr v4, p2

    invoke-direct {v3, p2, v4}, Lorg/jshybugger/mO;-><init>(II)V

    .line 3064
    invoke-virtual {v3, p1}, Lorg/jshybugger/mO;->a(Lorg/jshybugger/mt;)V

    .line 3065
    invoke-virtual {v3, v2}, Lorg/jshybugger/mO;->a(Ljava/util/List;)V

    .line 3066
    if-eqz v0, :cond_5a

    .line 3067
    invoke-virtual {v3, v1}, Lorg/jshybugger/mO;->e(I)V

    .line 3068
    iget-object v1, v0, Lorg/jshybugger/lN;->a:Lorg/jshybugger/mt;

    invoke-virtual {v3, v1}, Lorg/jshybugger/mO;->b(Lorg/jshybugger/mt;)V

    .line 3069
    iget v1, v0, Lorg/jshybugger/lN;->b:I

    sub-int/2addr v1, p2

    invoke-virtual {v3, v1}, Lorg/jshybugger/mO;->f(I)V

    .line 3070
    iget v0, v0, Lorg/jshybugger/lN;->c:I

    sub-int/2addr v0, p2

    invoke-virtual {v3, v0}, Lorg/jshybugger/mO;->g(I)V

    .line 3072
    :cond_5a
    return-object v3
.end method

.method private a(Z)Lorg/jshybugger/mt;
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 2402
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v0

    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v1, Lorg/jshybugger/mb;->h:I

    .line 2405
    const/16 v1, 0x1e

    if-eq v0, v1, :cond_19

    .line 2406
    invoke-direct {p0}, Lorg/jshybugger/lM;->L()Lorg/jshybugger/mt;

    move-result-object v0

    .line 2441
    :goto_11
    invoke-virtual {v0, v2}, Lorg/jshybugger/mt;->d(I)V

    .line 2442
    invoke-direct {p0, p1, v0}, Lorg/jshybugger/lM;->a(ZLorg/jshybugger/mt;)Lorg/jshybugger/mt;

    move-result-object v0

    .line 2443
    return-object v0

    .line 2408
    :cond_19
    iput v4, p0, Lorg/jshybugger/lM;->r:I

    .line 2409
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v0, Lorg/jshybugger/mb;->l:I

    .line 2410
    new-instance v1, Lorg/jshybugger/na;

    invoke-direct {v1, v3}, Lorg/jshybugger/na;-><init>(I)V

    .line 2412
    invoke-direct {p0, v4}, Lorg/jshybugger/lM;->a(Z)Lorg/jshybugger/mt;

    move-result-object v4

    .line 2413
    invoke-static {v4}, Lorg/jshybugger/lM;->b(Lorg/jshybugger/mt;)I

    move-result v0

    .line 2414
    invoke-virtual {v1, v4}, Lorg/jshybugger/na;->a(Lorg/jshybugger/mt;)V

    .line 2416
    const/16 v4, 0x57

    invoke-direct {p0, v4}, Lorg/jshybugger/lM;->a(I)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 2418
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v4, v0, Lorg/jshybugger/mb;->l:I

    .line 2419
    invoke-direct {p0}, Lorg/jshybugger/lM;->I()Ljava/util/List;

    move-result-object v5

    .line 2420
    if-eqz v5, :cond_4f

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/high16 v6, 0x10000

    if-le v0, v6, :cond_4f

    .line 2421
    const-string v0, "msg.too.many.constructor.args"

    const/4 v6, 0x0

    invoke-virtual {p0, v0, v6}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2422
    :cond_4f
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v6, v0, Lorg/jshybugger/mb;->l:I

    .line 2423
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->m:I

    .line 2424
    if-eqz v5, :cond_5c

    .line 2425
    invoke-virtual {v1, v5}, Lorg/jshybugger/na;->a(Ljava/util/List;)V

    .line 2426
    :cond_5c
    sub-int/2addr v4, v3

    sub-int v5, v6, v3

    invoke-virtual {v1, v4, v5}, Lorg/jshybugger/na;->d(II)V

    .line 2433
    :cond_62
    const/16 v4, 0x55

    invoke-direct {p0, v4}, Lorg/jshybugger/lM;->a(I)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 2434
    invoke-direct {p0}, Lorg/jshybugger/lM;->P()Lorg/jshybugger/nd;

    move-result-object v4

    .line 2435
    invoke-static {v4}, Lorg/jshybugger/lM;->b(Lorg/jshybugger/mt;)I

    move-result v0

    .line 2436
    invoke-virtual {v1, v4}, Lorg/jshybugger/na;->a(Lorg/jshybugger/nd;)V

    .line 2438
    :cond_75
    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lorg/jshybugger/na;->j(I)V

    move-object v0, v1

    .line 2439
    goto :goto_11
.end method

.method private a(ZI)Lorg/jshybugger/mt;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 1901
    new-instance v0, Lorg/jshybugger/mX;

    invoke-direct {v0, p2}, Lorg/jshybugger/mX;-><init>(I)V

    .line 1902
    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->h:I

    invoke-virtual {v0, v1}, Lorg/jshybugger/mX;->d(I)V

    .line 1903
    const/16 v1, 0x57

    const-string v3, "msg.no.paren.after.let"

    invoke-direct {p0, v1, v3}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1904
    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->l:I

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lorg/jshybugger/mX;->e(I)V

    .line 1905
    :cond_1f
    invoke-virtual {p0, v0}, Lorg/jshybugger/lM;->a(Lorg/jshybugger/nj;)V

    .line 1907
    const/16 v1, 0x99

    :try_start_24
    iget-object v3, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v3, Lorg/jshybugger/mb;->l:I

    invoke-direct {p0, v1, v3, p1}, Lorg/jshybugger/lM;->a(IIZ)Lorg/jshybugger/ns;

    move-result-object v1

    .line 1908
    invoke-virtual {v0, v1}, Lorg/jshybugger/mX;->a(Lorg/jshybugger/ns;)V

    .line 1909
    const/16 v1, 0x58

    const-string v3, "msg.no.paren.let"

    invoke-direct {p0, v1, v3}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1910
    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->l:I

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lorg/jshybugger/mX;->f(I)V

    .line 1912
    :cond_41
    if-eqz p1, :cond_7b

    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v1

    const/16 v3, 0x55

    if-ne v1, v3, :cond_7b

    .line 1914
    const/4 v1, 0x0

    iput v1, p0, Lorg/jshybugger/lM;->r:I

    .line 1915
    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->l:I

    .line 1916
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/jshybugger/lM;->d(Lorg/jshybugger/mt;)Lorg/jshybugger/mt;

    move-result-object v2

    .line 1917
    const/16 v3, 0x56

    const-string v4, "msg.no.curly.let"

    invoke-direct {p0, v3, v4}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    .line 1918
    iget-object v3, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v3, Lorg/jshybugger/mb;->m:I

    sub-int v1, v3, v1

    invoke-virtual {v2, v1}, Lorg/jshybugger/mt;->j(I)V

    .line 1919
    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->m:I

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lorg/jshybugger/mX;->j(I)V

    .line 1920
    invoke-virtual {v0, v2}, Lorg/jshybugger/mX;->a(Lorg/jshybugger/mt;)V

    .line 1921
    const/16 v1, 0x99

    invoke-virtual {v0, v1}, Lorg/jshybugger/mX;->a(I)Lorg/jshybugger/lH;
    :try_end_77
    .catchall {:try_start_24 .. :try_end_77} :catchall_a4

    .line 1936
    :cond_77
    invoke-virtual {p0}, Lorg/jshybugger/lM;->a()V

    .line 1938
    :goto_7a
    return-object v0

    .line 1924
    :cond_7b
    :try_start_7b
    invoke-direct {p0}, Lorg/jshybugger/lM;->w()Lorg/jshybugger/mt;

    move-result-object v1

    .line 1925
    invoke-static {v1}, Lorg/jshybugger/lM;->b(Lorg/jshybugger/mt;)I

    move-result v3

    sub-int/2addr v3, p2

    invoke-virtual {v0, v3}, Lorg/jshybugger/mX;->j(I)V

    .line 1926
    invoke-virtual {v0, v1}, Lorg/jshybugger/mX;->a(Lorg/jshybugger/mt;)V

    .line 1927
    if-eqz p1, :cond_77

    .line 1929
    new-instance v1, Lorg/jshybugger/mI;

    invoke-direct {p0}, Lorg/jshybugger/lM;->h()Z

    move-result v3

    if-nez v3, :cond_95

    const/4 v2, 0x1

    :cond_95
    invoke-direct {v1, v0, v2}, Lorg/jshybugger/mI;-><init>(Lorg/jshybugger/mt;Z)V

    .line 1931
    invoke-virtual {v0}, Lorg/jshybugger/mX;->f()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/jshybugger/mI;->d(I)V
    :try_end_9f
    .catchall {:try_start_7b .. :try_end_9f} :catchall_a4

    .line 1936
    invoke-virtual {p0}, Lorg/jshybugger/lM;->a()V

    move-object v0, v1

    goto :goto_7a

    :catchall_a4
    move-exception v0

    invoke-virtual {p0}, Lorg/jshybugger/lM;->a()V

    throw v0
.end method

.method private a(ZLorg/jshybugger/mt;)Lorg/jshybugger/mt;
    .registers 12

    .prologue
    .line 2457
    if-nez p2, :cond_5

    invoke-direct {p0}, Lorg/jshybugger/lM;->T()Ljava/lang/RuntimeException;

    .line 2458
    :cond_5
    invoke-virtual {p2}, Lorg/jshybugger/mt;->n()I

    move-result v3

    move-object v1, p2

    .line 2462
    :goto_a
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v4

    .line 2463
    sparse-switch v4, :sswitch_data_284

    .line 2535
    :cond_11
    return-object v1

    .line 2466
    :sswitch_12
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v5, v0, Lorg/jshybugger/mb;->h:I

    .line 2467
    if-nez v1, :cond_1b

    invoke-direct {p0}, Lorg/jshybugger/lM;->T()Ljava/lang/RuntimeException;

    :cond_1b
    const/4 v0, 0x0

    iget-object v2, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v2, Lorg/jshybugger/mb;->h:I

    iget-object v6, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v6, v6, Lorg/jshybugger/mb;->l:I

    const/4 v7, 0x0

    iput v7, p0, Lorg/jshybugger/lM;->r:I

    const/16 v7, 0x8f

    if-ne v4, v7, :cond_2f

    invoke-direct {p0}, Lorg/jshybugger/lM;->g()V

    const/4 v0, 0x4

    :cond_2f
    iget-object v7, p0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    iget-boolean v7, v7, Lorg/jshybugger/kI;->f:Z

    if-nez v7, :cond_67

    invoke-direct {p0}, Lorg/jshybugger/lM;->e()I

    move-result v0

    const/16 v4, 0x27

    if-eq v0, v4, :cond_53

    iget-object v0, p0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    iget-boolean v0, v0, Lorg/jshybugger/kI;->d:Z

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget-object v0, v0, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    invoke-static {v0}, Lorg/jshybugger/mb;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_53

    :cond_4d
    const-string v0, "msg.no.name.after.dot"

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_53
    const/4 v0, 0x1

    const/16 v4, 0x21

    invoke-direct {p0, v0, v4}, Lorg/jshybugger/lM;->b(ZI)Lorg/jshybugger/mZ;

    move-result-object v4

    new-instance v0, Lorg/jshybugger/ng;

    invoke-direct {v0, v1, v4, v6}, Lorg/jshybugger/ng;-><init>(Lorg/jshybugger/mt;Lorg/jshybugger/mZ;I)V

    invoke-virtual {v0, v2}, Lorg/jshybugger/ng;->d(I)V

    move-object v1, v0

    .line 2468
    :goto_63
    invoke-virtual {v1, v5}, Lorg/jshybugger/mt;->d(I)V

    goto :goto_a

    .line 2467
    :cond_67
    invoke-direct {p0}, Lorg/jshybugger/lM;->e()I

    move-result v2

    sparse-switch v2, :sswitch_data_29a

    iget-object v7, p0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    iget-boolean v7, v7, Lorg/jshybugger/kI;->d:Z

    if-eqz v7, :cond_175

    sparse-switch v2, :sswitch_data_2ac

    const/4 v2, 0x0

    :goto_78
    if-eqz v2, :cond_175

    iget-object v7, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v7, v7, Lorg/jshybugger/mb;->l:I

    iget-object v8, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v8, v8, Lorg/jshybugger/mb;->h:I

    invoke-direct {p0, v7, v2, v8}, Lorg/jshybugger/lM;->a(ILjava/lang/String;I)V

    const/4 v2, -0x1

    invoke-direct {p0, v2, v0}, Lorg/jshybugger/lM;->b(II)Lorg/jshybugger/mt;

    move-result-object v0

    :goto_8a
    instance-of v7, v0, Lorg/jshybugger/nD;

    if-eqz v7, :cond_181

    new-instance v2, Lorg/jshybugger/nB;

    invoke-direct {v2}, Lorg/jshybugger/nB;-><init>()V

    :goto_93
    if-eqz v7, :cond_9e

    const/16 v7, 0x6c

    if-ne v4, v7, :cond_9e

    const/16 v4, 0x6c

    invoke-virtual {v2, v4}, Lorg/jshybugger/mS;->a(I)Lorg/jshybugger/lH;

    :cond_9e
    invoke-virtual {v1}, Lorg/jshybugger/mt;->n()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/jshybugger/mS;->i(I)V

    invoke-static {v0}, Lorg/jshybugger/lM;->b(Lorg/jshybugger/mt;)I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v2, v7}, Lorg/jshybugger/mS;->j(I)V

    sub-int v4, v6, v4

    invoke-virtual {v2, v4}, Lorg/jshybugger/mS;->e(I)V

    invoke-virtual {v1}, Lorg/jshybugger/mt;->f()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/jshybugger/mS;->d(I)V

    invoke-virtual {v2, v1}, Lorg/jshybugger/mS;->a(Lorg/jshybugger/mt;)V

    invoke-virtual {v2, v0}, Lorg/jshybugger/mS;->b(Lorg/jshybugger/mt;)V

    move-object v1, v2

    goto :goto_63

    :sswitch_c1
    iget-object v2, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v2, Lorg/jshybugger/mb;->l:I

    const-string v7, "throw"

    iget-object v8, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v8, v8, Lorg/jshybugger/mb;->h:I

    invoke-direct {p0, v2, v7, v8}, Lorg/jshybugger/lM;->a(ILjava/lang/String;I)V

    const/4 v2, -0x1

    invoke-direct {p0, v2, v0}, Lorg/jshybugger/lM;->b(II)Lorg/jshybugger/mt;

    move-result-object v0

    goto :goto_8a

    :sswitch_d4
    const/4 v2, -0x1

    iget-object v7, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget-object v7, v7, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lorg/jshybugger/lM;->b(II)Lorg/jshybugger/mt;

    move-result-object v0

    goto :goto_8a

    :sswitch_de
    iget-object v2, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v2, Lorg/jshybugger/mb;->l:I

    const-string v7, "*"

    iget-object v8, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v8, v8, Lorg/jshybugger/mb;->h:I

    invoke-direct {p0, v2, v7, v8}, Lorg/jshybugger/lM;->a(ILjava/lang/String;I)V

    const/4 v2, -0x1

    invoke-direct {p0, v2, v0}, Lorg/jshybugger/lM;->b(II)Lorg/jshybugger/mt;

    move-result-object v0

    goto :goto_8a

    :sswitch_f1
    invoke-direct {p0}, Lorg/jshybugger/lM;->J()Lorg/jshybugger/mt;

    move-result-object v0

    goto :goto_8a

    :sswitch_f6
    const-string v2, "break"

    goto :goto_78

    :sswitch_f9
    const-string v2, "case"

    goto/16 :goto_78

    :sswitch_fd
    const-string v2, "continue"

    goto/16 :goto_78

    :sswitch_101
    const-string v2, "default"

    goto/16 :goto_78

    :sswitch_105
    const-string v2, "delete"

    goto/16 :goto_78

    :sswitch_109
    const-string v2, "do"

    goto/16 :goto_78

    :sswitch_10d
    const-string v2, "else"

    goto/16 :goto_78

    :sswitch_111
    const-string v2, "false"

    goto/16 :goto_78

    :sswitch_115
    const-string v2, "for"

    goto/16 :goto_78

    :sswitch_119
    const-string v2, "function"

    goto/16 :goto_78

    :sswitch_11d
    const-string v2, "if"

    goto/16 :goto_78

    :sswitch_121
    const-string v2, "in"

    goto/16 :goto_78

    :sswitch_125
    const-string v2, "let"

    goto/16 :goto_78

    :sswitch_129
    const-string v2, "new"

    goto/16 :goto_78

    :sswitch_12d
    const-string v2, "null"

    goto/16 :goto_78

    :sswitch_131
    const-string v2, "return"

    goto/16 :goto_78

    :sswitch_135
    const-string v2, "switch"

    goto/16 :goto_78

    :sswitch_139
    const-string v2, "this"

    goto/16 :goto_78

    :sswitch_13d
    const-string v2, "true"

    goto/16 :goto_78

    :sswitch_141
    const-string v2, "typeof"

    goto/16 :goto_78

    :sswitch_145
    const-string v2, "var"

    goto/16 :goto_78

    :sswitch_149
    const-string v2, "void"

    goto/16 :goto_78

    :sswitch_14d
    const-string v2, "while"

    goto/16 :goto_78

    :sswitch_151
    const-string v2, "with"

    goto/16 :goto_78

    :sswitch_155
    const-string v2, "yield"

    goto/16 :goto_78

    :sswitch_159
    const-string v2, "catch"

    goto/16 :goto_78

    :sswitch_15d
    const-string v2, "const"

    goto/16 :goto_78

    :sswitch_161
    const-string v2, "debugger"

    goto/16 :goto_78

    :sswitch_165
    const-string v2, "finally"

    goto/16 :goto_78

    :sswitch_169
    const-string v2, "instanceof"

    goto/16 :goto_78

    :sswitch_16d
    const-string v2, "throw"

    goto/16 :goto_78

    :sswitch_171
    const-string v2, "try"

    goto/16 :goto_78

    :cond_175
    const-string v0, "msg.no.name.after.dot"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/jshybugger/lM;->S()Lorg/jshybugger/mH;

    move-result-object v1

    goto/16 :goto_63

    :cond_181
    new-instance v2, Lorg/jshybugger/ng;

    invoke-direct {v2}, Lorg/jshybugger/ng;-><init>()V

    goto/16 :goto_93

    .line 2472
    :sswitch_188
    const/4 v0, 0x0

    iput v0, p0, Lorg/jshybugger/lM;->r:I

    .line 2473
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v4, v0, Lorg/jshybugger/mb;->l:I

    const/4 v2, -0x1

    .line 2474
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v5, v0, Lorg/jshybugger/mb;->h:I

    .line 2475
    invoke-direct {p0}, Lorg/jshybugger/lM;->g()V

    .line 2476
    invoke-virtual {p0}, Lorg/jshybugger/lM;->b()V

    .line 2477
    invoke-direct {p0}, Lorg/jshybugger/lM;->w()Lorg/jshybugger/mt;

    move-result-object v6

    .line 2478
    invoke-static {v6}, Lorg/jshybugger/lM;->b(Lorg/jshybugger/mt;)I

    move-result v0

    .line 2479
    const/16 v7, 0x58

    const-string v8, "msg.no.paren"

    invoke-direct {p0, v7, v8}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b4

    .line 2480
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v0, Lorg/jshybugger/mb;->l:I

    .line 2481
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->m:I

    .line 2483
    :cond_1b4
    new-instance p2, Lorg/jshybugger/nw;

    sub-int/2addr v0, v3

    invoke-direct {p2, v3, v0}, Lorg/jshybugger/nw;-><init>(II)V

    .line 2484
    invoke-virtual {p2, v1}, Lorg/jshybugger/nw;->a(Lorg/jshybugger/mt;)V

    .line 2485
    invoke-virtual {p2, v6}, Lorg/jshybugger/nw;->b(Lorg/jshybugger/mt;)V

    .line 2486
    invoke-virtual {p2, v4}, Lorg/jshybugger/nw;->e(I)V

    .line 2487
    sub-int v0, v2, v3

    invoke-virtual {p2, v0}, Lorg/jshybugger/nw;->f(I)V

    .line 2488
    invoke-virtual {p2, v5}, Lorg/jshybugger/nw;->d(I)V

    move-object v1, p2

    .line 2490
    goto/16 :goto_a

    .line 2493
    :sswitch_1ce
    const/4 v0, 0x0

    iput v0, p0, Lorg/jshybugger/lM;->r:I

    .line 2494
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v4, v0, Lorg/jshybugger/mb;->l:I

    const/4 v2, -0x1

    .line 2495
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v5, v0, Lorg/jshybugger/mb;->h:I

    .line 2496
    invoke-direct {p0}, Lorg/jshybugger/lM;->w()Lorg/jshybugger/mt;

    move-result-object v6

    .line 2497
    invoke-static {v6}, Lorg/jshybugger/lM;->b(Lorg/jshybugger/mt;)I

    move-result v0

    .line 2498
    const/16 v7, 0x54

    const-string v8, "msg.no.bracket.index"

    invoke-direct {p0, v7, v8}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f4

    .line 2499
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v0, Lorg/jshybugger/mb;->l:I

    .line 2500
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->m:I

    .line 2502
    :cond_1f4
    new-instance p2, Lorg/jshybugger/mE;

    sub-int/2addr v0, v3

    invoke-direct {p2, v3, v0}, Lorg/jshybugger/mE;-><init>(II)V

    .line 2503
    invoke-virtual {p2, v1}, Lorg/jshybugger/mE;->a(Lorg/jshybugger/mt;)V

    .line 2504
    invoke-virtual {p2, v6}, Lorg/jshybugger/mE;->b(Lorg/jshybugger/mt;)V

    .line 2505
    invoke-virtual {p2, v4, v2}, Lorg/jshybugger/mE;->d(II)V

    .line 2506
    invoke-virtual {p2, v5}, Lorg/jshybugger/mE;->d(I)V

    move-object v1, p2

    .line 2508
    goto/16 :goto_a

    .line 2511
    :sswitch_209
    if-eqz p1, :cond_11

    .line 2512
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v0, Lorg/jshybugger/mb;->h:I

    .line 2515
    const/4 v0, 0x0

    iput v0, p0, Lorg/jshybugger/lM;->r:I

    .line 2516
    invoke-virtual {v1}, Lorg/jshybugger/mt;->a()I

    move-result v0

    const/16 v4, 0x27

    if-ne v0, v4, :cond_229

    const-string v4, "eval"

    move-object v0, v1

    check-cast v0, Lorg/jshybugger/mZ;

    invoke-virtual {v0}, Lorg/jshybugger/mZ;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_244

    :cond_229
    invoke-virtual {v1}, Lorg/jshybugger/mt;->a()I

    move-result v0

    const/16 v4, 0x21

    if-ne v0, v4, :cond_247

    const-string v4, "eval"

    move-object v0, v1

    check-cast v0, Lorg/jshybugger/ng;

    invoke-virtual {v0}, Lorg/jshybugger/ng;->s()Lorg/jshybugger/mZ;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/mZ;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_247

    :cond_244
    invoke-virtual {p0}, Lorg/jshybugger/lM;->b()V

    .line 2517
    :cond_247
    new-instance p2, Lorg/jshybugger/mL;

    invoke-direct {p2, v3}, Lorg/jshybugger/mL;-><init>(I)V

    .line 2518
    invoke-virtual {p2, v1}, Lorg/jshybugger/mL;->a(Lorg/jshybugger/mt;)V

    .line 2521
    invoke-virtual {p2, v2}, Lorg/jshybugger/mL;->d(I)V

    .line 2522
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->l:I

    sub-int/2addr v0, v3

    invoke-virtual {p2, v0}, Lorg/jshybugger/mL;->e(I)V

    .line 2523
    invoke-direct {p0}, Lorg/jshybugger/lM;->I()Ljava/util/List;

    move-result-object v0

    .line 2524
    if-eqz v0, :cond_26e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/high16 v2, 0x10000

    if-le v1, v2, :cond_26e

    .line 2525
    const-string v1, "msg.too.many.function.args"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2526
    :cond_26e
    invoke-virtual {p2, v0}, Lorg/jshybugger/mL;->a(Ljava/util/List;)V

    .line 2527
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->l:I

    sub-int/2addr v0, v3

    invoke-virtual {p2, v0}, Lorg/jshybugger/mL;->f(I)V

    .line 2528
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->m:I

    sub-int/2addr v0, v3

    invoke-virtual {p2, v0}, Lorg/jshybugger/mL;->j(I)V

    move-object v1, p2

    .line 2530
    goto/16 :goto_a

    .line 2463
    :sswitch_data_284
    .sparse-switch
        0x53 -> :sswitch_1ce
        0x57 -> :sswitch_209
        0x6c -> :sswitch_12
        0x8f -> :sswitch_12
        0x92 -> :sswitch_188
    .end sparse-switch

    .line 2467
    :sswitch_data_29a
    .sparse-switch
        0x17 -> :sswitch_de
        0x27 -> :sswitch_d4
        0x32 -> :sswitch_c1
        0x93 -> :sswitch_f1
    .end sparse-switch

    :sswitch_data_2ac
    .sparse-switch
        0x4 -> :sswitch_131
        0x1e -> :sswitch_129
        0x1f -> :sswitch_105
        0x20 -> :sswitch_141
        0x2a -> :sswitch_12d
        0x2b -> :sswitch_139
        0x2c -> :sswitch_111
        0x2d -> :sswitch_13d
        0x32 -> :sswitch_16d
        0x34 -> :sswitch_121
        0x35 -> :sswitch_169
        0x48 -> :sswitch_155
        0x51 -> :sswitch_171
        0x6d -> :sswitch_119
        0x70 -> :sswitch_11d
        0x71 -> :sswitch_10d
        0x72 -> :sswitch_135
        0x73 -> :sswitch_f9
        0x74 -> :sswitch_101
        0x75 -> :sswitch_14d
        0x76 -> :sswitch_109
        0x77 -> :sswitch_115
        0x78 -> :sswitch_f6
        0x79 -> :sswitch_fd
        0x7a -> :sswitch_145
        0x7b -> :sswitch_151
        0x7c -> :sswitch_159
        0x7d -> :sswitch_165
        0x7e -> :sswitch_149
        0x99 -> :sswitch_125
        0x9a -> :sswitch_15d
        0xa0 -> :sswitch_161
    .end sparse-switch
.end method

.method protected static a(II)Lorg/jshybugger/nj;
    .registers 3

    .prologue
    .line 3765
    new-instance v0, Lorg/jshybugger/nj;

    invoke-direct {v0}, Lorg/jshybugger/nj;-><init>()V

    .line 3766
    invoke-virtual {v0, p0}, Lorg/jshybugger/nj;->a(I)Lorg/jshybugger/lH;

    .line 3767
    invoke-virtual {v0, p1}, Lorg/jshybugger/nj;->d(I)V

    .line 3768
    return-object v0
.end method

.method private a(IIZ)Lorg/jshybugger/ns;
    .registers 16

    .prologue
    const/16 v11, 0x27

    const/4 v1, 0x0

    .line 1826
    new-instance v5, Lorg/jshybugger/ns;

    invoke-direct {v5, p2}, Lorg/jshybugger/ns;-><init>(I)V

    .line 1827
    invoke-virtual {v5, p1}, Lorg/jshybugger/ns;->a(I)Lorg/jshybugger/lH;

    .line 1828
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->h:I

    invoke-virtual {v5, v0}, Lorg/jshybugger/ns;->d(I)V

    .line 1829
    invoke-direct {p0}, Lorg/jshybugger/lM;->c()Lorg/jshybugger/mz;

    move-result-object v0

    .line 1830
    if-eqz v0, :cond_1b

    .line 1831
    invoke-virtual {v5, v0}, Lorg/jshybugger/ns;->a(Lorg/jshybugger/mz;)V

    .line 1839
    :cond_1b
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v0

    iget-object v2, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v6, v2, Lorg/jshybugger/mb;->l:I

    .line 1840
    iget-object v2, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v2, Lorg/jshybugger/mb;->m:I

    .line 1842
    const/16 v3, 0x53

    if-eq v0, v3, :cond_2f

    const/16 v3, 0x55

    if-ne v0, v3, :cond_97

    .line 1844
    :cond_2f
    invoke-direct {p0}, Lorg/jshybugger/lM;->K()Lorg/jshybugger/mt;

    move-result-object v0

    .line 1845
    invoke-static {v0}, Lorg/jshybugger/lM;->b(Lorg/jshybugger/mt;)I

    move-result v2

    .line 1846
    instance-of v3, v0, Lorg/jshybugger/mC;

    if-nez v3, :cond_42

    .line 1847
    const-string v3, "msg.bad.assign.left"

    sub-int v4, v2, v6

    invoke-direct {p0, v3, v6, v4}, Lorg/jshybugger/lM;->b(Ljava/lang/String;II)V

    .line 1848
    :cond_42
    invoke-direct {p0, v0}, Lorg/jshybugger/lM;->g(Lorg/jshybugger/mt;)V

    move v3, v2

    move-object v2, v0

    move-object v0, v1

    .line 1864
    :goto_48
    iget-object v4, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v7, v4, Lorg/jshybugger/mb;->h:I

    .line 1866
    invoke-direct {p0}, Lorg/jshybugger/lM;->c()Lorg/jshybugger/mz;

    move-result-object v8

    .line 1869
    const/16 v4, 0x5a

    invoke-direct {p0, v4}, Lorg/jshybugger/lM;->a(I)Z

    move-result v4

    if-eqz v4, :cond_da

    .line 1870
    invoke-direct {p0}, Lorg/jshybugger/lM;->x()Lorg/jshybugger/mt;

    move-result-object v3

    .line 1871
    invoke-static {v3}, Lorg/jshybugger/lM;->b(Lorg/jshybugger/mt;)I

    move-result v4

    .line 1874
    :goto_60
    new-instance v9, Lorg/jshybugger/nt;

    sub-int v10, v4, v6

    invoke-direct {v9, v6, v10}, Lorg/jshybugger/nt;-><init>(II)V

    .line 1875
    if-eqz v2, :cond_d6

    .line 1876
    if-nez v3, :cond_74

    iget-boolean v0, p0, Lorg/jshybugger/lM;->h:Z

    if-nez v0, :cond_74

    .line 1877
    const-string v0, "msg.destruct.assign.no.init"

    invoke-virtual {p0, v0, v1}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    :cond_74
    invoke-virtual {v9, v2}, Lorg/jshybugger/nt;->a(Lorg/jshybugger/mt;)V

    .line 1883
    :goto_77
    invoke-virtual {v9, v3}, Lorg/jshybugger/nt;->b(Lorg/jshybugger/mt;)V

    .line 1884
    invoke-virtual {v9, p1}, Lorg/jshybugger/nt;->a(I)Lorg/jshybugger/lH;

    .line 1885
    invoke-virtual {v9, v8}, Lorg/jshybugger/nt;->a(Lorg/jshybugger/mz;)V

    .line 1886
    invoke-virtual {v9, v7}, Lorg/jshybugger/nt;->d(I)V

    .line 1887
    invoke-virtual {v5, v9}, Lorg/jshybugger/ns;->a(Lorg/jshybugger/nt;)V

    .line 1889
    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lorg/jshybugger/lM;->a(I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1892
    sub-int v0, v4, p2

    invoke-virtual {v5, v0}, Lorg/jshybugger/ns;->j(I)V

    .line 1893
    invoke-virtual {v5, p3}, Lorg/jshybugger/ns;->a(Z)V

    .line 1894
    return-object v5

    .line 1851
    :cond_97
    const-string v0, "msg.bad.var"

    invoke-direct {p0, v11, v0}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    .line 1852
    const/4 v0, 0x0

    invoke-direct {p0, v0, v11}, Lorg/jshybugger/lM;->b(ZI)Lorg/jshybugger/mZ;

    move-result-object v0

    .line 1853
    iget-object v3, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v3, Lorg/jshybugger/mb;->h:I

    invoke-virtual {v0, v3}, Lorg/jshybugger/mZ;->d(I)V

    .line 1854
    iget-boolean v3, p0, Lorg/jshybugger/lM;->d:Z

    if-eqz v3, :cond_c9

    .line 1855
    iget-object v3, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget-object v3, v3, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    .line 1856
    const-string v4, "eval"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c4

    const-string v4, "arguments"

    iget-object v7, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget-object v7, v7, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c9

    .line 1858
    :cond_c4
    const-string v4, "msg.bad.id.strict"

    invoke-virtual {p0, v4, v3}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    :cond_c9
    iget-object v3, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget-object v3, v3, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/jshybugger/lM;->h:Z

    invoke-virtual {p0, p1, v3, v4}, Lorg/jshybugger/lM;->a(ILjava/lang/String;Z)V

    move v3, v2

    move-object v2, v1

    goto/16 :goto_48

    .line 1881
    :cond_d6
    invoke-virtual {v9, v0}, Lorg/jshybugger/nt;->a(Lorg/jshybugger/mt;)V

    goto :goto_77

    :cond_da
    move v4, v3

    move-object v3, v1

    goto :goto_60
.end method

.method private a(ILorg/jshybugger/mZ;I)Lorg/jshybugger/nx;
    .registers 11

    .prologue
    const/4 v3, -0x1

    .line 2726
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v0, Lorg/jshybugger/mb;->l:I

    if-eq p1, v3, :cond_38

    move v0, p1

    .line 2727
    :goto_8
    invoke-direct {p0}, Lorg/jshybugger/lM;->w()Lorg/jshybugger/mt;

    move-result-object v4

    .line 2728
    invoke-static {v4}, Lorg/jshybugger/lM;->b(Lorg/jshybugger/mt;)I

    move-result v2

    .line 2729
    const/16 v5, 0x54

    const-string v6, "msg.no.bracket.index"

    invoke-direct {p0, v5, v6}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2730
    iget-object v2, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v2, Lorg/jshybugger/mb;->l:I

    .line 2731
    iget-object v2, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v2, Lorg/jshybugger/mb;->m:I

    .line 2733
    :cond_22
    new-instance v5, Lorg/jshybugger/nx;

    sub-int/2addr v2, v0

    invoke-direct {v5, v0, v2}, Lorg/jshybugger/nx;-><init>(II)V

    .line 2734
    invoke-virtual {v5, p2}, Lorg/jshybugger/nx;->b(Lorg/jshybugger/mZ;)V

    .line 2735
    invoke-virtual {v5, p3}, Lorg/jshybugger/nx;->f(I)V

    .line 2736
    invoke-virtual {v5, p1}, Lorg/jshybugger/nx;->e(I)V

    .line 2737
    invoke-virtual {v5, v4}, Lorg/jshybugger/nx;->a(Lorg/jshybugger/mt;)V

    .line 2738
    invoke-virtual {v5, v1, v3}, Lorg/jshybugger/nx;->d(II)V

    .line 2739
    return-object v5

    :cond_38
    move v0, v1

    .line 2726
    goto :goto_8
.end method

.method private a(ILjava/lang/String;I)V
    .registers 4

    .prologue
    .line 3450
    iput p1, p0, Lorg/jshybugger/lM;->y:I

    .line 3451
    iput-object p2, p0, Lorg/jshybugger/lM;->z:Ljava/lang/String;

    .line 3452
    iput p3, p0, Lorg/jshybugger/lM;->A:I

    .line 3453
    return-void
.end method

.method private a(ILjava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 3502
    iget-object v0, p0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    .line 3504
    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .registers 5

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/jshybugger/lM;->c(Ljava/lang/String;Ljava/lang/String;II)V

    .line 167
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6

    .prologue
    .line 130
    iget-object v0, p0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    iget-boolean v0, v0, Lorg/jshybugger/kI;->i:Z

    if-eqz v0, :cond_9

    .line 131
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;II)V

    .line 132
    :cond_9
    return-void
.end method

.method private a(Lorg/jshybugger/mV;Lorg/jshybugger/mW;)V
    .registers 7

    .prologue
    .line 1730
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v0

    const/16 v1, 0x67

    if-eq v0, v1, :cond_b

    invoke-direct {p0}, Lorg/jshybugger/lM;->T()Ljava/lang/RuntimeException;

    .line 1731
    :cond_b
    const/4 v0, 0x0

    iput v0, p0, Lorg/jshybugger/lM;->r:I

    .line 1732
    invoke-virtual {p1}, Lorg/jshybugger/mV;->k()Ljava/lang/String;

    move-result-object v1

    .line 1733
    iget-object v0, p0, Lorg/jshybugger/lM;->i:Ljava/util/Map;

    if-nez v0, :cond_26

    .line 1734
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/lM;->i:Ljava/util/Map;

    .line 1747
    :cond_1d
    :goto_1d
    invoke-virtual {p2, p1}, Lorg/jshybugger/mW;->a(Lorg/jshybugger/mV;)V

    .line 1748
    iget-object v0, p0, Lorg/jshybugger/lM;->i:Ljava/util/Map;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1749
    return-void

    .line 1736
    :cond_26
    iget-object v0, p0, Lorg/jshybugger/lM;->i:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/mW;

    .line 1737
    if-eqz v0, :cond_1d

    .line 1738
    iget-object v0, p0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    .line 1739
    const-string v0, "msg.dup.label"

    invoke-virtual {p1}, Lorg/jshybugger/mV;->n()I

    move-result v2

    invoke-virtual {p1}, Lorg/jshybugger/mV;->p()I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lorg/jshybugger/lM;->b(Ljava/lang/String;II)V

    goto :goto_1d
.end method

.method private a(Lorg/jshybugger/mY;)V
    .registers 3

    .prologue
    .line 424
    iget-object v0, p0, Lorg/jshybugger/lM;->j:Ljava/util/List;

    if-nez v0, :cond_b

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/lM;->j:Ljava/util/List;

    .line 426
    :cond_b
    iget-object v0, p0, Lorg/jshybugger/lM;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    iget-object v0, p0, Lorg/jshybugger/lM;->k:Ljava/util/List;

    if-nez v0, :cond_1b

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/lM;->k:Ljava/util/List;

    .line 429
    :cond_1b
    iget-object v0, p0, Lorg/jshybugger/lM;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-virtual {p0, p1}, Lorg/jshybugger/lM;->a(Lorg/jshybugger/nj;)V

    .line 431
    iget-object v0, p0, Lorg/jshybugger/lM;->w:Lorg/jshybugger/mW;

    if-eqz v0, :cond_3f

    .line 432
    iget-object v0, p0, Lorg/jshybugger/lM;->w:Lorg/jshybugger/mW;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mW;->a(Lorg/jshybugger/mt;)V

    .line 433
    iget-object v0, p0, Lorg/jshybugger/lM;->w:Lorg/jshybugger/mW;

    invoke-virtual {v0}, Lorg/jshybugger/mW;->m()Lorg/jshybugger/mV;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jshybugger/mV;->c(Lorg/jshybugger/mT;)V

    .line 438
    iget-object v0, p0, Lorg/jshybugger/lM;->w:Lorg/jshybugger/mW;

    invoke-virtual {v0}, Lorg/jshybugger/mW;->n()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1, v0}, Lorg/jshybugger/mY;->k(I)V

    .line 440
    :cond_3f
    return-void
.end method

.method private a(Lorg/jshybugger/nr;)V
    .registers 4

    .prologue
    .line 3426
    invoke-virtual {p1}, Lorg/jshybugger/nr;->k()Lorg/jshybugger/mt;

    move-result-object v0

    invoke-static {v0}, Lorg/jshybugger/lM;->a(Lorg/jshybugger/mt;)Lorg/jshybugger/mt;

    move-result-object v0

    .line 3427
    invoke-virtual {v0}, Lorg/jshybugger/mt;->a()I

    move-result v0

    .line 3428
    const/16 v1, 0x27

    if-eq v0, v1, :cond_2e

    const/16 v1, 0x21

    if-eq v0, v1, :cond_2e

    const/16 v1, 0x24

    if-eq v0, v1, :cond_2e

    const/16 v1, 0x43

    if-eq v0, v1, :cond_2e

    const/16 v1, 0x26

    if-eq v0, v1, :cond_2e

    .line 3433
    invoke-virtual {p1}, Lorg/jshybugger/nr;->a()I

    move-result v0

    const/16 v1, 0x6a

    if-ne v0, v1, :cond_2f

    const-string v0, "msg.bad.incr"

    :goto_2a
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3436
    :cond_2e
    return-void

    .line 3433
    :cond_2f
    const-string v0, "msg.bad.decr"

    goto :goto_2a
.end method

.method private a(I)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 352
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v1

    if-eq v1, p1, :cond_8

    .line 356
    :goto_7
    return v0

    .line 355
    :cond_8
    iput v0, p0, Lorg/jshybugger/lM;->r:I

    .line 356
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private static final a(III)Z
    .registers 4

    .prologue
    .line 1616
    and-int v0, p0, p2

    if-eq v0, p2, :cond_a

    and-int v0, p1, p2

    if-ne v0, p2, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private a(ILjava/lang/String;)Z
    .registers 6

    .prologue
    .line 378
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->l:I

    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->m:I

    iget-object v2, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v2, Lorg/jshybugger/mb;->l:I

    sub-int/2addr v1, v2

    invoke-direct {p0, p1}, Lorg/jshybugger/lM;->a(I)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    invoke-direct {p0, p2, v0, v1}, Lorg/jshybugger/lM;->b(Ljava/lang/String;II)V

    const/4 v0, 0x0

    goto :goto_14
.end method

.method private a(Lorg/jshybugger/mr;ILjava/lang/String;Lorg/jshybugger/lH;Ljava/util/List;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/mr;",
            "I",
            "Ljava/lang/String;",
            "Lorg/jshybugger/lH;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3649
    const/4 v2, 0x1

    .line 3650
    const/16 v0, 0x9a

    if-ne p2, v0, :cond_2b

    const/16 v0, 0x9b

    move v1, v0

    .line 3652
    :goto_8
    const/4 v0, 0x0

    .line 3653
    invoke-virtual {p1}, Lorg/jshybugger/mr;->k()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    move v2, v0

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/mt;

    .line 3654
    invoke-virtual {v0}, Lorg/jshybugger/mt;->a()I

    move-result v5

    const/16 v6, 0x80

    if-ne v5, v6, :cond_2f

    .line 3655
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 3656
    goto :goto_13

    .line 3650
    :cond_2b
    const/16 v0, 0x8

    move v1, v0

    goto :goto_8

    .line 3658
    :cond_2f
    new-instance v3, Lorg/jshybugger/lH;

    const/16 v5, 0x24

    invoke-virtual {p0, p3}, Lorg/jshybugger/lM;->b(Ljava/lang/String;)Lorg/jshybugger/lH;

    move-result-object v6

    int-to-double v8, v2

    invoke-static {v8, v9}, Lorg/jshybugger/lH;->a(D)Lorg/jshybugger/lH;

    move-result-object v7

    invoke-direct {v3, v5, v6, v7}, Lorg/jshybugger/lH;-><init>(ILorg/jshybugger/lH;Lorg/jshybugger/lH;)V

    .line 3661
    invoke-virtual {v0}, Lorg/jshybugger/mt;->a()I

    move-result v5

    const/16 v6, 0x27

    if-ne v5, v6, :cond_6a

    .line 3662
    invoke-virtual {v0}, Lorg/jshybugger/mt;->g()Ljava/lang/String;

    move-result-object v0

    .line 3663
    new-instance v5, Lorg/jshybugger/lH;

    const/16 v6, 0x31

    const/4 v7, 0x0

    invoke-direct {p0, v6, v0, v7}, Lorg/jshybugger/lM;->a(ILjava/lang/String;Lorg/jshybugger/lH;)Lorg/jshybugger/lH;

    move-result-object v6

    invoke-direct {v5, v1, v6, v3}, Lorg/jshybugger/lH;-><init>(ILorg/jshybugger/lH;Lorg/jshybugger/lH;)V

    invoke-virtual {p4, v5}, Lorg/jshybugger/lH;->b(Lorg/jshybugger/lH;)V

    .line 3667
    const/4 v3, -0x1

    if-eq p2, v3, :cond_64

    .line 3668
    const/4 v3, 0x1

    invoke-virtual {p0, p2, v0, v3}, Lorg/jshybugger/lM;->a(ILjava/lang/String;Z)V

    .line 3669
    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3678
    :cond_64
    :goto_64
    add-int/lit8 v0, v2, 0x1

    .line 3679
    const/4 v2, 0x0

    move v3, v2

    move v2, v0

    .line 3680
    goto :goto_13

    .line 3672
    :cond_6a
    iget-object v5, p0, Lorg/jshybugger/lM;->e:Lorg/jshybugger/nk;

    invoke-virtual {v5}, Lorg/jshybugger/nk;->B()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p2, v0, v3, v5}, Lorg/jshybugger/lM;->a(ILorg/jshybugger/lH;Lorg/jshybugger/lH;Ljava/lang/String;)Lorg/jshybugger/lH;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/jshybugger/lH;->b(Lorg/jshybugger/lH;)V

    goto :goto_64

    .line 3681
    :cond_78
    return v3
.end method

.method private a(Lorg/jshybugger/nd;ILjava/lang/String;Lorg/jshybugger/lH;Ljava/util/List;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/nd;",
            "I",
            "Ljava/lang/String;",
            "Lorg/jshybugger/lH;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3690
    const/4 v1, 0x1

    .line 3691
    const/16 v0, 0x9a

    if-ne p2, v0, :cond_74

    const/16 v0, 0x9b

    move v2, v0

    .line 3694
    :goto_8
    invoke-virtual {p1}, Lorg/jshybugger/nd;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v0, v1

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/ne;

    .line 3695
    const/4 v1, 0x0

    .line 3699
    iget-object v3, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    if-eqz v3, :cond_c2

    .line 3700
    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->h:I

    move v3, v1

    .line 3702
    :goto_27
    invoke-virtual {v0}, Lorg/jshybugger/ne;->k()Lorg/jshybugger/mt;

    move-result-object v1

    .line 3703
    instance-of v5, v1, Lorg/jshybugger/mZ;

    if-eqz v5, :cond_78

    .line 3705
    check-cast v1, Lorg/jshybugger/mZ;

    invoke-virtual {v1}, Lorg/jshybugger/mZ;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jshybugger/lH;->a(Ljava/lang/String;)Lorg/jshybugger/lH;

    move-result-object v5

    .line 3706
    new-instance v1, Lorg/jshybugger/lH;

    const/16 v6, 0x21

    invoke-virtual {p0, p3}, Lorg/jshybugger/lM;->b(Ljava/lang/String;)Lorg/jshybugger/lH;

    move-result-object v7

    invoke-direct {v1, v6, v7, v5}, Lorg/jshybugger/lH;-><init>(ILorg/jshybugger/lH;Lorg/jshybugger/lH;)V

    .line 3716
    :goto_44
    invoke-virtual {v1, v3}, Lorg/jshybugger/lH;->d(I)V

    .line 3717
    invoke-virtual {v0}, Lorg/jshybugger/ne;->l()Lorg/jshybugger/mt;

    move-result-object v0

    .line 3718
    invoke-virtual {v0}, Lorg/jshybugger/mt;->a()I

    move-result v3

    const/16 v5, 0x27

    if-ne v3, v5, :cond_b3

    .line 3719
    check-cast v0, Lorg/jshybugger/mZ;

    invoke-virtual {v0}, Lorg/jshybugger/mZ;->k()Ljava/lang/String;

    move-result-object v0

    .line 3720
    new-instance v3, Lorg/jshybugger/lH;

    const/16 v5, 0x31

    const/4 v6, 0x0

    invoke-direct {p0, v5, v0, v6}, Lorg/jshybugger/lM;->a(ILjava/lang/String;Lorg/jshybugger/lH;)Lorg/jshybugger/lH;

    move-result-object v5

    invoke-direct {v3, v2, v5, v1}, Lorg/jshybugger/lH;-><init>(ILorg/jshybugger/lH;Lorg/jshybugger/lH;)V

    invoke-virtual {p4, v3}, Lorg/jshybugger/lH;->b(Lorg/jshybugger/lH;)V

    .line 3724
    const/4 v1, -0x1

    if-eq p2, v1, :cond_72

    .line 3725
    const/4 v1, 0x1

    invoke-virtual {p0, p2, v0, v1}, Lorg/jshybugger/lM;->a(ILjava/lang/String;Z)V

    .line 3726
    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3734
    :cond_72
    :goto_72
    const/4 v0, 0x0

    .line 3735
    goto :goto_11

    .line 3691
    :cond_74
    const/16 v0, 0x8

    move v2, v0

    goto :goto_8

    .line 3707
    :cond_78
    instance-of v5, v1, Lorg/jshybugger/nl;

    if-eqz v5, :cond_92

    .line 3708
    check-cast v1, Lorg/jshybugger/nl;

    invoke-virtual {v1}, Lorg/jshybugger/nl;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jshybugger/lH;->a(Ljava/lang/String;)Lorg/jshybugger/lH;

    move-result-object v5

    .line 3709
    new-instance v1, Lorg/jshybugger/lH;

    const/16 v6, 0x21

    invoke-virtual {p0, p3}, Lorg/jshybugger/lM;->b(Ljava/lang/String;)Lorg/jshybugger/lH;

    move-result-object v7

    invoke-direct {v1, v6, v7, v5}, Lorg/jshybugger/lH;-><init>(ILorg/jshybugger/lH;Lorg/jshybugger/lH;)V

    goto :goto_44

    .line 3710
    :cond_92
    instance-of v5, v1, Lorg/jshybugger/nc;

    if-eqz v5, :cond_ae

    .line 3711
    check-cast v1, Lorg/jshybugger/nc;

    invoke-virtual {v1}, Lorg/jshybugger/nc;->l()D

    move-result-wide v6

    double-to-int v1, v6

    int-to-double v6, v1

    invoke-static {v6, v7}, Lorg/jshybugger/lH;->a(D)Lorg/jshybugger/lH;

    move-result-object v5

    .line 3712
    new-instance v1, Lorg/jshybugger/lH;

    const/16 v6, 0x24

    invoke-virtual {p0, p3}, Lorg/jshybugger/lM;->b(Ljava/lang/String;)Lorg/jshybugger/lH;

    move-result-object v7

    invoke-direct {v1, v6, v7, v5}, Lorg/jshybugger/lH;-><init>(ILorg/jshybugger/lH;Lorg/jshybugger/lH;)V

    goto :goto_44

    .line 3714
    :cond_ae
    invoke-direct {p0}, Lorg/jshybugger/lM;->T()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 3729
    :cond_b3
    iget-object v3, p0, Lorg/jshybugger/lM;->e:Lorg/jshybugger/nk;

    invoke-virtual {v3}, Lorg/jshybugger/nk;->B()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v0, v1, v3}, Lorg/jshybugger/lM;->a(ILorg/jshybugger/lH;Lorg/jshybugger/lH;Ljava/lang/String;)Lorg/jshybugger/lH;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/jshybugger/lH;->b(Lorg/jshybugger/lH;)V

    goto :goto_72

    .line 3736
    :cond_c1
    return v0

    :cond_c2
    move v3, v1

    goto/16 :goto_27
.end method

.method private static b(Lorg/jshybugger/mt;)I
    .registers 3

    .prologue
    .line 234
    invoke-virtual {p0}, Lorg/jshybugger/mt;->n()I

    move-result v0

    invoke-virtual {p0}, Lorg/jshybugger/mt;->p()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private b(I)Lorg/jshybugger/mM;
    .registers 14

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    const/16 v2, 0x27

    const/4 v9, 0x0

    const/16 v4, 0x57

    .line 740
    .line 741
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v6, v0, Lorg/jshybugger/mb;->h:I

    .line 742
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v7, v0, Lorg/jshybugger/mb;->l:I

    .line 746
    invoke-direct {p0, v2}, Lorg/jshybugger/lM;->a(I)Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 747
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lorg/jshybugger/lM;->b(ZI)Lorg/jshybugger/mZ;

    move-result-object v0

    .line 748
    iget-boolean v2, p0, Lorg/jshybugger/lM;->d:Z

    if-eqz v2, :cond_37

    .line 749
    invoke-virtual {v0}, Lorg/jshybugger/mZ;->k()Ljava/lang/String;

    move-result-object v2

    .line 750
    const-string v3, "eval"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    const-string v3, "arguments"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 751
    :cond_32
    const-string v3, "msg.bad.id.strict"

    invoke-virtual {p0, v3, v2}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    :cond_37
    invoke-direct {p0, v4}, Lorg/jshybugger/lM;->a(I)Z

    move-result v2

    if-nez v2, :cond_20a

    .line 755
    iget-object v2, p0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    iget-boolean v2, v2, Lorg/jshybugger/kI;->e:Z

    if-eqz v2, :cond_206

    .line 758
    invoke-direct {p0, v9, v0}, Lorg/jshybugger/lM;->a(ZLorg/jshybugger/mt;)Lorg/jshybugger/mt;

    move-result-object v0

    move-object v2, v1

    .line 760
    :goto_48
    const-string v3, "msg.no.paren.parms"

    invoke-direct {p0, v4, v3}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    move-object v3, v2

    move-object v2, v0

    .line 773
    :goto_4f
    iget v0, p0, Lorg/jshybugger/lM;->s:I

    if-ne v0, v4, :cond_10c

    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->l:I

    move v4, v0

    .line 775
    :goto_58
    if-eqz v2, :cond_1fc

    .line 776
    const/4 v0, 0x2

    .line 779
    :goto_5b
    const/4 v8, 0x2

    if-eq v0, v8, :cond_6f

    if-eqz v3, :cond_6f

    invoke-virtual {v3}, Lorg/jshybugger/mZ;->l()I

    move-result v0

    if-lez v0, :cond_6f

    .line 782
    const/16 v0, 0x6d

    invoke-virtual {v3}, Lorg/jshybugger/mZ;->k()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v0, v8, v9}, Lorg/jshybugger/lM;->a(ILjava/lang/String;Z)V

    .line 785
    :cond_6f
    new-instance v8, Lorg/jshybugger/mM;

    invoke-direct {v8, v7, v3}, Lorg/jshybugger/mM;-><init>(ILorg/jshybugger/mZ;)V

    .line 786
    invoke-virtual {v8, p1}, Lorg/jshybugger/mM;->g(I)V

    .line 787
    if-eq v4, v5, :cond_7e

    .line 788
    sub-int v0, v4, v7

    invoke-virtual {v8, v0}, Lorg/jshybugger/mM;->e(I)V

    .line 790
    :cond_7e
    invoke-direct {p0}, Lorg/jshybugger/lM;->c()Lorg/jshybugger/mz;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/jshybugger/mM;->a(Lorg/jshybugger/mz;)V

    .line 792
    new-instance v4, Lorg/jshybugger/lP;

    invoke-direct {v4, p0, v8}, Lorg/jshybugger/lP;-><init>(Lorg/jshybugger/lM;Lorg/jshybugger/mM;)V

    .line 794
    const/16 v0, 0x58

    :try_start_8c
    invoke-direct {p0, v0}, Lorg/jshybugger/lM;->a(I)Z

    move-result v0

    if-eqz v0, :cond_10f

    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->l:I

    invoke-virtual {v8}, Lorg/jshybugger/mM;->n()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v8, v0}, Lorg/jshybugger/mM;->f(I)V

    .line 795
    :cond_9e
    :goto_9e
    invoke-direct {p0}, Lorg/jshybugger/lM;->l()Lorg/jshybugger/mt;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/jshybugger/mM;->b(Lorg/jshybugger/mt;)V

    .line 796
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->m:I

    invoke-virtual {v8, v7, v0}, Lorg/jshybugger/mM;->d(II)V

    .line 797
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->m:I

    sub-int/2addr v0, v7

    invoke-virtual {v8, v0}, Lorg/jshybugger/mM;->j(I)V

    .line 799
    iget-object v0, p0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    iget-boolean v0, v0, Lorg/jshybugger/kI;->i:Z

    if-eqz v0, :cond_d6

    invoke-virtual {v8}, Lorg/jshybugger/mM;->m()Lorg/jshybugger/mt;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/mt;->h()Z

    move-result v0

    if-nez v0, :cond_d6

    .line 801
    if-eqz v3, :cond_1f1

    invoke-virtual {v3}, Lorg/jshybugger/mZ;->l()I

    move-result v0

    if-lez v0, :cond_1f1

    const-string v0, "msg.no.return.value"

    move-object v1, v0

    .line 804
    :goto_cf
    if-nez v3, :cond_1f6

    const-string v0, ""

    :goto_d3
    invoke-direct {p0, v1, v0}, Lorg/jshybugger/lM;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d6
    .catchall {:try_start_8c .. :try_end_d6} :catchall_17f

    .line 807
    :cond_d6
    invoke-virtual {v4}, Lorg/jshybugger/lP;->a()V

    .line 810
    if-eqz v2, :cond_e1

    .line 812
    invoke-static {}, Lorg/jshybugger/lh;->a()Ljava/lang/RuntimeException;

    .line 813
    invoke-virtual {v8, v2}, Lorg/jshybugger/mM;->e(Lorg/jshybugger/mt;)V

    .line 825
    :cond_e1
    iget-object v0, p0, Lorg/jshybugger/lM;->n:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lorg/jshybugger/mM;->d(Ljava/lang/String;)V

    .line 826
    invoke-virtual {v8, v6}, Lorg/jshybugger/mM;->n(I)V

    .line 827
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->h:I

    invoke-virtual {v8, v0}, Lorg/jshybugger/mM;->o(I)V

    .line 833
    iget-object v0, p0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    .line 834
    return-object v8

    .line 762
    :cond_f3
    invoke-direct {p0, v4}, Lorg/jshybugger/lM;->a(I)Z

    move-result v0

    if-nez v0, :cond_202

    .line 765
    iget-object v0, p0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    iget-boolean v0, v0, Lorg/jshybugger/kI;->e:Z

    if-eqz v0, :cond_1ff

    .line 769
    invoke-direct {p0, v9}, Lorg/jshybugger/lM;->a(Z)Lorg/jshybugger/mt;

    move-result-object v0

    .line 771
    :goto_103
    const-string v2, "msg.no.paren.parms"

    invoke-direct {p0, v4, v2}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    move-object v2, v0

    move-object v3, v1

    goto/16 :goto_4f

    :cond_10c
    move v4, v5

    .line 773
    goto/16 :goto_58

    .line 794
    :cond_10f
    :try_start_10f
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_114
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v5

    const/16 v9, 0x53

    if-eq v5, v9, :cond_120

    const/16 v9, 0x55

    if-ne v5, v9, :cond_184

    :cond_120
    invoke-direct {p0}, Lorg/jshybugger/lM;->K()Lorg/jshybugger/mt;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/jshybugger/lM;->g(Lorg/jshybugger/mt;)V

    invoke-virtual {v8, v5}, Lorg/jshybugger/mM;->a(Lorg/jshybugger/mt;)V

    if-nez v1, :cond_131

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :cond_131
    iget-object v9, p0, Lorg/jshybugger/lM;->e:Lorg/jshybugger/nk;

    invoke-virtual {v9}, Lorg/jshybugger/nk;->B()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x57

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v9, v11}, Lorg/jshybugger/lM;->a(ILjava/lang/String;Z)V

    invoke-interface {v1, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_140
    :goto_140
    const/16 v5, 0x59

    invoke-direct {p0, v5}, Lorg/jshybugger/lM;->a(I)Z

    move-result v5

    if-nez v5, :cond_114

    if-eqz v1, :cond_1d9

    new-instance v5, Lorg/jshybugger/lH;

    const/16 v0, 0x59

    invoke-direct {v5, v0}, Lorg/jshybugger/lH;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_159
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const/16 v10, 0x7a

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jshybugger/lH;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/jshybugger/lM;->b(Ljava/lang/String;)Lorg/jshybugger/lH;

    move-result-object v0

    invoke-virtual {p0, v10, v1, v0}, Lorg/jshybugger/lM;->a(ILorg/jshybugger/lH;Lorg/jshybugger/lH;)Lorg/jshybugger/lH;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/jshybugger/lH;->b(Lorg/jshybugger/lH;)V
    :try_end_17e
    .catchall {:try_start_10f .. :try_end_17e} :catchall_17f

    goto :goto_159

    .line 807
    :catchall_17f
    move-exception v0

    invoke-virtual {v4}, Lorg/jshybugger/lP;->a()V

    throw v0

    .line 794
    :cond_184
    const/16 v5, 0x27

    :try_start_186
    const-string v9, "msg.no.parm"

    invoke-direct {p0, v5, v9}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1cb

    const/4 v5, 0x0

    const/16 v9, 0x27

    invoke-direct {p0, v5, v9}, Lorg/jshybugger/lM;->b(ZI)Lorg/jshybugger/mZ;

    move-result-object v5

    invoke-virtual {v8, v5}, Lorg/jshybugger/mM;->a(Lorg/jshybugger/mt;)V

    iget-object v5, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget-object v5, v5, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    const/16 v9, 0x57

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v5, v10}, Lorg/jshybugger/lM;->a(ILjava/lang/String;Z)V

    iget-boolean v9, p0, Lorg/jshybugger/lM;->d:Z

    if-eqz v9, :cond_140

    const-string v9, "eval"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1b6

    const-string v9, "arguments"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1bb

    :cond_1b6
    const-string v9, "msg.bad.id.strict"

    invoke-virtual {p0, v9, v5}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1bb
    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c6

    const-string v9, "msg.dup.param.strict"

    invoke-direct {p0, v9, v5}, Lorg/jshybugger/lM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c6
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_140

    :cond_1cb
    invoke-direct {p0}, Lorg/jshybugger/lM;->S()Lorg/jshybugger/mH;

    move-result-object v5

    invoke-virtual {v8, v5}, Lorg/jshybugger/mM;->a(Lorg/jshybugger/mt;)V

    goto/16 :goto_140

    :cond_1d4
    const/16 v0, 0x17

    invoke-virtual {v8, v0, v5}, Lorg/jshybugger/mM;->a(ILjava/lang/Object;)V

    :cond_1d9
    const/16 v0, 0x58

    const-string v1, "msg.no.paren.after.parms"

    invoke-direct {p0, v0, v1}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9e

    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->l:I

    invoke-virtual {v8}, Lorg/jshybugger/mM;->n()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v8, v0}, Lorg/jshybugger/mM;->f(I)V

    goto/16 :goto_9e

    .line 801
    :cond_1f1
    const-string v0, "msg.anon.no.return.value"

    move-object v1, v0

    goto/16 :goto_cf

    .line 804
    :cond_1f6
    invoke-virtual {v3}, Lorg/jshybugger/mZ;->k()Ljava/lang/String;
    :try_end_1f9
    .catchall {:try_start_186 .. :try_end_1f9} :catchall_17f

    move-result-object v0

    goto/16 :goto_d3

    :cond_1fc
    move v0, p1

    goto/16 :goto_5b

    :cond_1ff
    move-object v0, v1

    goto/16 :goto_103

    :cond_202
    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_4f

    :cond_206
    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_48

    :cond_20a
    move-object v2, v1

    move-object v3, v0

    goto/16 :goto_4f
.end method

.method private b(ZI)Lorg/jshybugger/mZ;
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 3347
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v0, Lorg/jshybugger/mb;->l:I

    .line 3348
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget-object v1, v0, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    .line 3349
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->h:I

    .line 3350
    const-string v3, ""

    iget-object v4, p0, Lorg/jshybugger/lM;->z:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 3351
    iget v2, p0, Lorg/jshybugger/lM;->y:I

    .line 3352
    iget-object v1, p0, Lorg/jshybugger/lM;->z:Ljava/lang/String;

    .line 3353
    iget v0, p0, Lorg/jshybugger/lM;->A:I

    .line 3354
    iput v5, p0, Lorg/jshybugger/lM;->y:I

    .line 3355
    const-string v3, ""

    iput-object v3, p0, Lorg/jshybugger/lM;->z:Ljava/lang/String;

    .line 3356
    iput v5, p0, Lorg/jshybugger/lM;->A:I

    .line 3358
    :cond_25
    if-nez v1, :cond_2c

    .line 3359
    iget-object v3, p0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    .line 3360
    invoke-direct {p0}, Lorg/jshybugger/lM;->T()Ljava/lang/RuntimeException;

    .line 3365
    :cond_2c
    new-instance v3, Lorg/jshybugger/mZ;

    invoke-direct {v3, v2, v1}, Lorg/jshybugger/mZ;-><init>(ILjava/lang/String;)V

    .line 3366
    invoke-virtual {v3, v0}, Lorg/jshybugger/mZ;->d(I)V

    .line 3367
    if-eqz p1, :cond_39

    .line 3368
    invoke-virtual {p0, v1, p2}, Lorg/jshybugger/lM;->a(Ljava/lang/String;I)V

    .line 3370
    :cond_39
    return-object v3
.end method

.method private b(II)Lorg/jshybugger/mt;
    .registers 12

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v5, -0x1

    .line 2675
    if-eq p1, v5, :cond_2e

    move v0, p1

    :goto_6
    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v6, v1, Lorg/jshybugger/mb;->h:I

    .line 2677
    const/4 v1, 0x1

    iget v3, p0, Lorg/jshybugger/lM;->s:I

    invoke-direct {p0, v1, v3}, Lorg/jshybugger/lM;->b(ZI)Lorg/jshybugger/mZ;

    move-result-object v1

    .line 2680
    const/16 v3, 0x90

    invoke-direct {p0, v3}, Lorg/jshybugger/lM;->a(I)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 2682
    iget-object v3, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v3, Lorg/jshybugger/mb;->l:I

    .line 2684
    invoke-direct {p0}, Lorg/jshybugger/lM;->e()I

    move-result v4

    sparse-switch v4, :sswitch_data_7c

    .line 2701
    const-string v0, "msg.no.name.after.coloncolon"

    invoke-virtual {p0, v0, v2}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2702
    invoke-direct {p0}, Lorg/jshybugger/lM;->S()Lorg/jshybugger/mH;

    move-result-object v0

    .line 2716
    :goto_2d
    return-object v0

    .line 2675
    :cond_2e
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->l:I

    goto :goto_6

    .line 2687
    :sswitch_33
    const/16 v2, 0x27

    invoke-direct {p0, v8, v2}, Lorg/jshybugger/lM;->b(ZI)Lorg/jshybugger/mZ;

    move-result-object v2

    move v4, v3

    move-object v3, v1

    move-object v1, v2

    .line 2706
    :goto_3c
    if-nez v3, :cond_5e

    if-nez p2, :cond_5e

    if-ne p1, v5, :cond_5e

    move-object v0, v1

    .line 2707
    goto :goto_2d

    .line 2692
    :sswitch_44
    iget-object v2, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v2, Lorg/jshybugger/mb;->l:I

    const-string v4, "*"

    iget-object v7, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v7, v7, Lorg/jshybugger/mb;->h:I

    invoke-direct {p0, v2, v4, v7}, Lorg/jshybugger/lM;->a(ILjava/lang/String;I)V

    .line 2693
    invoke-direct {p0, v8, v5}, Lorg/jshybugger/lM;->b(ZI)Lorg/jshybugger/mZ;

    move-result-object v2

    move v4, v3

    move-object v3, v1

    move-object v1, v2

    .line 2694
    goto :goto_3c

    .line 2698
    :sswitch_59
    invoke-direct {p0, p1, v1, v3}, Lorg/jshybugger/lM;->a(ILorg/jshybugger/mZ;I)Lorg/jshybugger/nx;

    move-result-object v0

    goto :goto_2d

    .line 2710
    :cond_5e
    new-instance v2, Lorg/jshybugger/nC;

    invoke-static {v1}, Lorg/jshybugger/lM;->b(Lorg/jshybugger/mt;)I

    move-result v5

    sub-int/2addr v5, v0

    invoke-direct {v2, v0, v5}, Lorg/jshybugger/nC;-><init>(II)V

    .line 2711
    invoke-virtual {v2, p1}, Lorg/jshybugger/nC;->e(I)V

    .line 2712
    invoke-virtual {v2, v3}, Lorg/jshybugger/nC;->b(Lorg/jshybugger/mZ;)V

    .line 2713
    invoke-virtual {v2, v4}, Lorg/jshybugger/nC;->f(I)V

    .line 2714
    invoke-virtual {v2, v1}, Lorg/jshybugger/nC;->a(Lorg/jshybugger/mZ;)V

    .line 2715
    invoke-virtual {v2, v6}, Lorg/jshybugger/nC;->d(I)V

    move-object v0, v2

    .line 2716
    goto :goto_2d

    :cond_79
    move-object v3, v2

    move v4, v5

    goto :goto_3c

    .line 2684
    :sswitch_data_7c
    .sparse-switch
        0x17 -> :sswitch_44
        0x27 -> :sswitch_33
        0x53 -> :sswitch_59
    .end sparse-switch
.end method

.method private b(Lorg/jshybugger/mt;I)Lorg/jshybugger/ne;
    .registers 7

    .prologue
    .line 3293
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v0

    .line 3294
    const/16 v1, 0x59

    if-eq v0, v1, :cond_c

    const/16 v1, 0x56

    if-ne v0, v1, :cond_3f

    :cond_c
    const/16 v0, 0x27

    if-ne p2, v0, :cond_3f

    iget-object v0, p0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    iget v0, v0, Lorg/jshybugger/kI;->b:I

    const/16 v1, 0xb4

    if-lt v0, v1, :cond_3f

    .line 3296
    iget-boolean v0, p0, Lorg/jshybugger/lM;->x:Z

    if-nez v0, :cond_22

    .line 3297
    const-string v0, "msg.bad.object.init"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3299
    :cond_22
    new-instance v1, Lorg/jshybugger/mZ;

    invoke-virtual {p1}, Lorg/jshybugger/mt;->n()I

    move-result v0

    invoke-virtual {p1}, Lorg/jshybugger/mt;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/jshybugger/mZ;-><init>(ILjava/lang/String;)V

    .line 3300
    new-instance v0, Lorg/jshybugger/ne;

    invoke-direct {v0}, Lorg/jshybugger/ne;-><init>()V

    .line 3301
    const/16 v2, 0x1a

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lorg/jshybugger/ne;->a(ILjava/lang/Object;)V

    .line 3302
    invoke-virtual {v0, p1, v1}, Lorg/jshybugger/ne;->a(Lorg/jshybugger/mt;Lorg/jshybugger/mt;)V

    .line 3309
    :goto_3e
    return-object v0

    .line 3305
    :cond_3f
    const/16 v0, 0x67

    const-string v1, "msg.no.colon.prop"

    invoke-direct {p0, v0, v1}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    .line 3306
    new-instance v0, Lorg/jshybugger/ne;

    invoke-direct {v0}, Lorg/jshybugger/ne;-><init>()V

    .line 3307
    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->l:I

    invoke-virtual {v0, v1}, Lorg/jshybugger/ne;->e(I)V

    .line 3308
    invoke-direct {p0}, Lorg/jshybugger/lM;->x()Lorg/jshybugger/mt;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/jshybugger/ne;->a(Lorg/jshybugger/mt;Lorg/jshybugger/mt;)V

    goto :goto_3e
.end method

.method private b(Ljava/lang/String;II)V
    .registers 6

    .prologue
    .line 223
    invoke-direct {p0, p1, p2, p3}, Lorg/jshybugger/lM;->a(Ljava/lang/String;II)V

    .line 225
    iget-object v0, p0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    .line 226
    new-instance v0, Lorg/jshybugger/lO;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jshybugger/lO;-><init>(B)V

    throw v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 11

    .prologue
    .line 150
    invoke-static {p1, p2}, Lorg/jshybugger/lM;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    iget-object v0, p0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    iget-boolean v0, v0, Lorg/jshybugger/kI;->j:Z

    if-eqz v0, :cond_e

    .line 152
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jshybugger/lM;->c(Ljava/lang/String;Ljava/lang/String;II)V

    .line 159
    :goto_d
    return-void

    .line 153
    :cond_e
    iget-object v0, p0, Lorg/jshybugger/lM;->m:Lorg/jshybugger/mQ;

    if-eqz v0, :cond_17

    .line 154
    iget-object v0, p0, Lorg/jshybugger/lM;->m:Lorg/jshybugger/mQ;

    iget-object v0, p0, Lorg/jshybugger/lM;->n:Ljava/lang/String;

    goto :goto_d

    .line 156
    :cond_17
    iget-object v0, p0, Lorg/jshybugger/lM;->l:Lorg/jshybugger/kR;

    iget-object v2, p0, Lorg/jshybugger/lM;->n:Ljava/lang/String;

    iget-object v3, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v3, Lorg/jshybugger/mb;->h:I

    iget-object v4, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    invoke-virtual {v4}, Lorg/jshybugger/mb;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    invoke-virtual {v5}, Lorg/jshybugger/mb;->c()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Lorg/jshybugger/kR;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_d
.end method

.method private static c(Lorg/jshybugger/mt;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 664
    instance-of v0, p0, Lorg/jshybugger/mI;

    if-eqz v0, :cond_15

    .line 665
    check-cast p0, Lorg/jshybugger/mI;

    invoke-virtual {p0}, Lorg/jshybugger/mI;->k()Lorg/jshybugger/mt;

    move-result-object v0

    .line 666
    instance-of v1, v0, Lorg/jshybugger/nl;

    if-eqz v1, :cond_15

    .line 667
    check-cast v0, Lorg/jshybugger/nl;

    invoke-virtual {v0}, Lorg/jshybugger/nl;->k()Ljava/lang/String;

    move-result-object v0

    .line 670
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private c(I)Lorg/jshybugger/mt;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 1333
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lorg/jshybugger/lM;->h:Z

    .line 1334
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1c

    .line 1336
    new-instance v0, Lorg/jshybugger/mF;

    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->l:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/mF;-><init>(II)V

    .line 1337
    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->h:I

    invoke-virtual {v0, v1}, Lorg/jshybugger/mt;->d(I)V
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_39

    .line 1347
    :goto_19
    iput-boolean v3, p0, Lorg/jshybugger/lM;->h:Z

    return-object v0

    .line 1338
    :cond_1c
    const/16 v0, 0x7a

    if-eq p1, v0, :cond_24

    const/16 v0, 0x99

    if-ne p1, v0, :cond_31

    .line 1339
    :cond_24
    const/4 v0, 0x0

    :try_start_25
    iput v0, p0, Lorg/jshybugger/lM;->r:I

    .line 1340
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->l:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jshybugger/lM;->a(IIZ)Lorg/jshybugger/ns;

    move-result-object v0

    goto :goto_19

    .line 1342
    :cond_31
    invoke-direct {p0}, Lorg/jshybugger/lM;->w()Lorg/jshybugger/mt;

    move-result-object v0

    .line 1343
    invoke-direct {p0, v0}, Lorg/jshybugger/lM;->g(Lorg/jshybugger/mt;)V
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_39

    goto :goto_19

    .line 1347
    :catchall_39
    move-exception v0

    iput-boolean v3, p0, Lorg/jshybugger/lM;->h:Z

    throw v0
.end method

.method private c()Lorg/jshybugger/mz;
    .registers 3

    .prologue
    .line 254
    iget-object v0, p0, Lorg/jshybugger/lM;->v:Lorg/jshybugger/mz;

    .line 255
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jshybugger/lM;->v:Lorg/jshybugger/mz;

    .line 256
    return-object v0
.end method

.method private c(II)V
    .registers 7

    .prologue
    .line 3492
    iget-object v0, p0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    iget-boolean v0, v0, Lorg/jshybugger/kI;->i:Z

    if-eqz v0, :cond_1e

    .line 3493
    invoke-direct {p0, p2}, Lorg/jshybugger/lM;->d(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3494
    const/4 v1, -0x1

    if-ne p2, v1, :cond_15

    .line 3495
    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget p2, v1, Lorg/jshybugger/mb;->k:I

    .line 3496
    :cond_15
    const-string v1, "msg.missing.semi"

    const-string v2, ""

    sub-int v3, p2, v0

    invoke-direct {p0, v1, v2, v0, v3}, Lorg/jshybugger/lM;->a(Ljava/lang/String;Ljava/lang/String;II)V

    .line 3499
    :cond_1e
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v0, -0x1

    .line 120
    .line 121
    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    if-eqz v1, :cond_16

    .line 122
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v0, Lorg/jshybugger/mb;->l:I

    .line 123
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->m:I

    iget-object v2, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v2, Lorg/jshybugger/mb;->l:I

    sub-int/2addr v0, v2

    .line 125
    :goto_12
    invoke-direct {p0, p1, p2, v1, v0}, Lorg/jshybugger/lM;->a(Ljava/lang/String;Ljava/lang/String;II)V

    .line 126
    return-void

    :cond_16
    move v1, v0

    goto :goto_12
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 11

    .prologue
    const/4 v5, 0x1

    .line 176
    iget v0, p0, Lorg/jshybugger/lM;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jshybugger/lM;->t:I

    .line 177
    invoke-static {p1, p2}, Lorg/jshybugger/lM;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    iget-object v0, p0, Lorg/jshybugger/lM;->m:Lorg/jshybugger/mQ;

    if-eqz v0, :cond_14

    .line 179
    iget-object v0, p0, Lorg/jshybugger/lM;->m:Lorg/jshybugger/mQ;

    iget-object v0, p0, Lorg/jshybugger/lM;->n:Ljava/lang/String;

    .line 190
    :goto_13
    return-void

    .line 182
    :cond_14
    const-string v4, ""

    .line 183
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    if-eqz v0, :cond_32

    .line 184
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v0, Lorg/jshybugger/mb;->h:I

    .line 185
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    invoke-virtual {v0}, Lorg/jshybugger/mb;->d()Ljava/lang/String;

    move-result-object v4

    .line 186
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    invoke-virtual {v0}, Lorg/jshybugger/mb;->c()I

    move-result v5

    .line 188
    :goto_2a
    iget-object v0, p0, Lorg/jshybugger/lM;->l:Lorg/jshybugger/kR;

    iget-object v2, p0, Lorg/jshybugger/lM;->n:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lorg/jshybugger/kR;->b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_13

    :cond_32
    move v3, v5

    goto :goto_2a
.end method

.method private d()I
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 291
    iget v0, p0, Lorg/jshybugger/lM;->r:I

    if-eqz v0, :cond_9

    .line 292
    iget v0, p0, Lorg/jshybugger/lM;->s:I

    .line 318
    :goto_8
    return v0

    .line 295
    :cond_9
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v0, Lorg/jshybugger/mb;->h:I

    .line 296
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    invoke-virtual {v0}, Lorg/jshybugger/mb;->a()I

    move-result v0

    move v4, v0

    move v0, v3

    .line 300
    :goto_15
    if-eq v4, v1, :cond_1b

    const/16 v5, 0xa1

    if-ne v4, v5, :cond_2b

    .line 301
    :cond_1b
    if-ne v4, v1, :cond_28

    .line 302
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    .line 306
    :goto_21
    iget-object v4, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    invoke-virtual {v4}, Lorg/jshybugger/mb;->a()I

    move-result v4

    goto :goto_15

    .line 305
    :cond_28
    iget-object v4, p0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    goto :goto_21

    .line 316
    :cond_2b
    iput v4, p0, Lorg/jshybugger/lM;->s:I

    .line 317
    if-eqz v0, :cond_37

    const/high16 v0, 0x10000

    :goto_31
    or-int/2addr v0, v4

    iput v0, p0, Lorg/jshybugger/lM;->r:I

    .line 318
    iget v0, p0, Lorg/jshybugger/lM;->s:I

    goto :goto_8

    :cond_37
    move v0, v3

    .line 317
    goto :goto_31
.end method

.method private d(I)I
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 3469
    iget-object v1, p0, Lorg/jshybugger/lM;->o:[C

    if-nez v1, :cond_7

    .line 3470
    const/4 v0, -0x1

    .line 3485
    :cond_6
    :goto_6
    return v0

    .line 3472
    :cond_7
    if-lez p1, :cond_6

    .line 3475
    iget-object v1, p0, Lorg/jshybugger/lM;->o:[C

    .line 3476
    array-length v2, v1

    if-lt p1, v2, :cond_11

    .line 3477
    array-length v2, v1

    add-int/lit8 p1, v2, -0x1

    .line 3479
    :cond_11
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_6

    .line 3480
    aget-char v2, v1, p1

    .line 3481
    const/16 v3, 0xa

    if-eq v2, v3, :cond_1f

    const/16 v3, 0xd

    if-ne v2, v3, :cond_11

    .line 3482
    :cond_1f
    add-int/lit8 v0, p1, 0x1

    goto :goto_6
.end method

.method private d(Lorg/jshybugger/mt;)Lorg/jshybugger/mt;
    .registers 5

    .prologue
    .line 848
    iget v0, p0, Lorg/jshybugger/lM;->s:I

    const/16 v1, 0x55

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    .line 849
    invoke-direct {p0}, Lorg/jshybugger/lM;->T()Ljava/lang/RuntimeException;

    .line 850
    :cond_b
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->l:I

    .line 851
    if-eqz p1, :cond_2a

    .line 852
    :goto_11
    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->h:I

    invoke-virtual {p1, v1}, Lorg/jshybugger/mt;->d(I)V

    .line 855
    :goto_18
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v1

    if-lez v1, :cond_30

    const/16 v2, 0x56

    if-eq v1, v2, :cond_30

    .line 856
    invoke-direct {p0}, Lorg/jshybugger/lM;->n()Lorg/jshybugger/mt;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/jshybugger/mt;->d(Lorg/jshybugger/mt;)V

    goto :goto_18

    .line 851
    :cond_2a
    new-instance p1, Lorg/jshybugger/mw;

    invoke-direct {p1, v0}, Lorg/jshybugger/mw;-><init>(I)V

    goto :goto_11

    .line 858
    :cond_30
    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->l:I

    sub-int v0, v1, v0

    invoke-virtual {p1, v0}, Lorg/jshybugger/mt;->j(I)V

    .line 859
    return-object p1
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 170
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->l:I

    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->m:I

    iget-object v2, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v2, Lorg/jshybugger/mb;->l:I

    sub-int/2addr v1, v2

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jshybugger/lM;->c(Ljava/lang/String;Ljava/lang/String;II)V

    .line 172
    return-void
.end method

.method private e()I
    .registers 3

    .prologue
    .line 335
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v0

    .line 336
    const/4 v1, 0x0

    iput v1, p0, Lorg/jshybugger/lM;->r:I

    .line 337
    return v0
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 197
    if-nez p1, :cond_7

    invoke-static {p0}, Lorg/jshybugger/lS;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-static {p0, p1}, Lorg/jshybugger/lS;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private e(Lorg/jshybugger/mt;)V
    .registers 5

    .prologue
    .line 1049
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    iget v0, p0, Lorg/jshybugger/lM;->r:I

    .line 1050
    invoke-virtual {p1}, Lorg/jshybugger/mt;->n()I

    move-result v1

    .line 1051
    const v2, 0xffff

    and-int/2addr v2, v0

    sparse-switch v2, :sswitch_data_38

    .line 1065
    const/high16 v2, 0x10000

    and-int/2addr v0, v2

    if-nez v0, :cond_30

    .line 1067
    const-string v0, "msg.no.semi.stmt"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    :goto_1b
    return-void

    .line 1054
    :sswitch_1c
    const/4 v0, 0x0

    iput v0, p0, Lorg/jshybugger/lM;->r:I

    .line 1056
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->m:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/jshybugger/mt;->j(I)V

    goto :goto_1b

    .line 1062
    :sswitch_28
    invoke-static {p1}, Lorg/jshybugger/lM;->f(Lorg/jshybugger/mt;)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lorg/jshybugger/lM;->c(II)V

    goto :goto_1b

    .line 1069
    :cond_30
    invoke-static {p1}, Lorg/jshybugger/lM;->f(Lorg/jshybugger/mt;)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lorg/jshybugger/lM;->c(II)V

    goto :goto_1b

    .line 1051
    :sswitch_data_38
    .sparse-switch
        -0x1 -> :sswitch_28
        0x0 -> :sswitch_28
        0x52 -> :sswitch_1c
        0x56 -> :sswitch_28
    .end sparse-switch
.end method

.method private f()I
    .registers 4

    .prologue
    .line 367
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v0

    .line 369
    iget v1, p0, Lorg/jshybugger/lM;->r:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_c

    .line 370
    const/4 v0, 0x1

    .line 372
    :cond_c
    return v0
.end method

.method private static f(Lorg/jshybugger/mt;)I
    .registers 3

    .prologue
    .line 3446
    invoke-virtual {p0}, Lorg/jshybugger/mt;->n()I

    move-result v0

    invoke-virtual {p0}, Lorg/jshybugger/mt;->p()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private g()V
    .registers 3

    .prologue
    .line 393
    iget-object v0, p0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    iget-boolean v0, v0, Lorg/jshybugger/kI;->f:Z

    if-nez v0, :cond_c

    .line 394
    const-string v0, "msg.XML.not.available"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_c
    return-void
.end method

.method private g(Lorg/jshybugger/mt;)V
    .registers 4

    .prologue
    .line 3864
    move-object v0, p1

    :goto_1
    instance-of v1, v0, Lorg/jshybugger/mC;

    if-eqz v1, :cond_c

    .line 3865
    check-cast v0, Lorg/jshybugger/mC;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/jshybugger/mC;->a(Z)V

    .line 3869
    :cond_b
    return-void

    .line 3866
    :cond_c
    instance-of v1, v0, Lorg/jshybugger/nf;

    if-eqz v1, :cond_b

    .line 3867
    check-cast v0, Lorg/jshybugger/nf;

    invoke-virtual {v0}, Lorg/jshybugger/nf;->k()Lorg/jshybugger/mt;

    move-result-object v0

    goto :goto_1
.end method

.method private h()Z
    .registers 2

    .prologue
    .line 403
    iget v0, p0, Lorg/jshybugger/lM;->c:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private i()V
    .registers 4

    .prologue
    .line 443
    iget-object v0, p0, Lorg/jshybugger/lM;->j:Ljava/util/List;

    iget-object v1, p0, Lorg/jshybugger/lM;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/mY;

    .line 444
    iget-object v1, p0, Lorg/jshybugger/lM;->k:Ljava/util/List;

    iget-object v2, p0, Lorg/jshybugger/lM;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 445
    invoke-virtual {v0}, Lorg/jshybugger/mY;->q()Lorg/jshybugger/mt;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 446
    invoke-virtual {v0}, Lorg/jshybugger/mY;->q()Lorg/jshybugger/mt;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jshybugger/mt;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jshybugger/mY;->k(I)V

    .line 448
    :cond_2e
    invoke-virtual {p0}, Lorg/jshybugger/lM;->a()V

    .line 449
    return-void
.end method

.method private j()V
    .registers 3

    .prologue
    .line 458
    iget-object v0, p0, Lorg/jshybugger/lM;->k:Ljava/util/List;

    iget-object v1, p0, Lorg/jshybugger/lM;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 459
    return-void
.end method

.method private k()Lorg/jshybugger/mv;
    .registers 12

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 510
    new-instance v7, Lorg/jshybugger/mv;

    invoke-direct {v7, v5}, Lorg/jshybugger/mv;-><init>(I)V

    .line 512
    iput-object v7, p0, Lorg/jshybugger/lM;->e:Lorg/jshybugger/nk;

    iput-object v7, p0, Lorg/jshybugger/lM;->f:Lorg/jshybugger/nj;

    .line 514
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v0, Lorg/jshybugger/mb;->h:I

    .line 518
    iget-boolean v8, p0, Lorg/jshybugger/lM;->d:Z

    .line 520
    iput-boolean v5, p0, Lorg/jshybugger/lM;->d:Z

    move v2, v6

    move v1, v5

    .line 524
    :goto_16
    :try_start_16
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v0

    .line 525
    if-lez v0, :cond_5d

    .line 526
    const/16 v9, 0x6d

    if-ne v0, v9, :cond_3d

    .line 531
    const/4 v0, 0x0

    iput v0, p0, Lorg/jshybugger/lM;->r:I
    :try_end_23
    .catch Ljava/lang/StackOverflowError; {:try_start_16 .. :try_end_23} :catch_7a
    .catchall {:try_start_16 .. :try_end_23} :catchall_91

    .line 533
    :try_start_23
    iget-boolean v0, p0, Lorg/jshybugger/lM;->b:Z

    if-eqz v0, :cond_3b

    const/4 v0, 0x2

    :goto_28
    invoke-direct {p0, v0}, Lorg/jshybugger/lM;->b(I)Lorg/jshybugger/mM;
    :try_end_2b
    .catch Lorg/jshybugger/lO; {:try_start_23 .. :try_end_2b} :catch_5c
    .catch Ljava/lang/StackOverflowError; {:try_start_23 .. :try_end_2b} :catch_7a
    .catchall {:try_start_23 .. :try_end_2b} :catchall_91

    move-result-object v0

    move v1, v2

    .line 552
    :goto_2d
    :try_start_2d
    invoke-static {v0}, Lorg/jshybugger/lM;->b(Lorg/jshybugger/mt;)I

    move-result v2

    .line 553
    invoke-virtual {v7, v0}, Lorg/jshybugger/mv;->b(Lorg/jshybugger/lH;)V

    .line 554
    invoke-virtual {v0, v7}, Lorg/jshybugger/mt;->c(Lorg/jshybugger/mt;)V

    move v10, v1

    move v1, v2

    move v2, v10

    .line 555
    goto :goto_16

    :cond_3b
    move v0, v6

    .line 533
    goto :goto_28

    .line 540
    :cond_3d
    invoke-direct {p0}, Lorg/jshybugger/lM;->n()Lorg/jshybugger/mt;

    move-result-object v0

    .line 541
    if-eqz v2, :cond_5a

    .line 542
    invoke-static {v0}, Lorg/jshybugger/lM;->c(Lorg/jshybugger/mt;)Ljava/lang/String;

    move-result-object v1

    .line 543
    if-nez v1, :cond_4b

    move v1, v5

    .line 544
    goto :goto_2d

    .line 545
    :cond_4b
    const-string v9, "use strict"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 546
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jshybugger/lM;->d:Z

    .line 547
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lorg/jshybugger/mv;->a(Z)V
    :try_end_5a
    .catch Ljava/lang/StackOverflowError; {:try_start_2d .. :try_end_5a} :catch_7a
    .catchall {:try_start_2d .. :try_end_5a} :catchall_91

    :cond_5a
    move v1, v2

    goto :goto_2d

    .line 537
    :catch_5c
    move-exception v0

    .line 562
    :cond_5d
    iput-boolean v8, p0, Lorg/jshybugger/lM;->d:Z

    .line 565
    iget v0, p0, Lorg/jshybugger/lM;->t:I

    if-eqz v0, :cond_95

    .line 566
    iget v0, p0, Lorg/jshybugger/lM;->t:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 567
    const-string v1, "msg.got.syntax.errors"

    invoke-static {v1, v0}, Lorg/jshybugger/lM;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 568
    iget-object v0, p0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    .line 569
    iget-object v0, p0, Lorg/jshybugger/lM;->l:Lorg/jshybugger/kR;

    iget-object v2, p0, Lorg/jshybugger/lM;->n:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lorg/jshybugger/kR;->c(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/jshybugger/kT;

    move-result-object v0

    throw v0

    .line 557
    :catch_7a
    move-exception v0

    :try_start_7b
    const-string v0, "msg.too.deep.parser.recursion"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/jshybugger/lM;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 558
    iget-object v1, p0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    .line 559
    iget-object v1, p0, Lorg/jshybugger/lM;->n:Ljava/lang/String;

    iget-object v2, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v2, Lorg/jshybugger/mb;->h:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lorg/jshybugger/kK;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/jshybugger/kT;

    move-result-object v0

    throw v0
    :try_end_91
    .catchall {:try_start_7b .. :try_end_91} :catchall_91

    .line 562
    :catchall_91
    move-exception v0

    iput-boolean v8, p0, Lorg/jshybugger/lM;->d:Z

    throw v0

    .line 574
    :cond_95
    iget-object v0, p0, Lorg/jshybugger/lM;->u:Ljava/util/List;

    if-eqz v0, :cond_c7

    .line 577
    iget-object v0, p0, Lorg/jshybugger/lM;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 578
    iget-object v2, p0, Lorg/jshybugger/lM;->u:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/mt;

    invoke-static {v0}, Lorg/jshybugger/lM;->b(Lorg/jshybugger/mt;)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 579
    iget-object v0, p0, Lorg/jshybugger/lM;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/mz;

    .line 580
    invoke-virtual {v7, v0}, Lorg/jshybugger/mv;->b(Lorg/jshybugger/mz;)V

    goto :goto_b7

    :cond_c7
    move v0, v1

    .line 584
    invoke-virtual {v7, v0}, Lorg/jshybugger/mv;->j(I)V

    .line 585
    iget-object v0, p0, Lorg/jshybugger/lM;->n:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lorg/jshybugger/mv;->d(Ljava/lang/String;)V

    .line 586
    invoke-virtual {v7, v3}, Lorg/jshybugger/mv;->n(I)V

    .line 587
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->h:I

    invoke-virtual {v7, v0}, Lorg/jshybugger/mv;->o(I)V

    .line 588
    return-object v7
.end method

.method private l()Lorg/jshybugger/mt;
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 594
    .line 595
    const/16 v0, 0x55

    invoke-direct {p0, v0}, Lorg/jshybugger/lM;->a(I)Z

    move-result v0

    if-nez v0, :cond_bf

    .line 596
    iget-object v0, p0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    iget v0, v0, Lorg/jshybugger/kI;->b:I

    const/16 v3, 0xb4

    if-ge v0, v3, :cond_78

    .line 597
    const-string v0, "msg.no.brace.body"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 602
    :goto_19
    iget v3, p0, Lorg/jshybugger/lM;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/jshybugger/lM;->c:I

    .line 603
    iget-object v3, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v4, v3, Lorg/jshybugger/mb;->l:I

    .line 604
    new-instance v5, Lorg/jshybugger/mw;

    invoke-direct {v5, v4}, Lorg/jshybugger/mw;-><init>(I)V

    .line 607
    iget-boolean v6, p0, Lorg/jshybugger/lM;->d:Z

    .line 610
    iget-object v3, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v3, Lorg/jshybugger/mb;->h:I

    invoke-virtual {v5, v3}, Lorg/jshybugger/mw;->d(I)V

    .line 612
    if-eqz v0, :cond_bd

    .line 613
    :try_start_33
    new-instance v1, Lorg/jshybugger/ni;

    iget-object v2, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v2, Lorg/jshybugger/mb;->h:I

    invoke-direct {v1, v2}, Lorg/jshybugger/ni;-><init>(I)V

    .line 614
    invoke-direct {p0}, Lorg/jshybugger/lM;->x()Lorg/jshybugger/mt;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jshybugger/ni;->a(Lorg/jshybugger/mt;)V

    .line 616
    const/16 v2, 0x19

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lorg/jshybugger/ni;->a(ILjava/lang/Object;)V

    .line 617
    const/16 v2, 0x19

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v2, v3}, Lorg/jshybugger/mw;->a(ILjava/lang/Object;)V

    .line 618
    invoke-virtual {v5, v1}, Lorg/jshybugger/mw;->a(Lorg/jshybugger/mt;)V
    :try_end_54
    .catch Lorg/jshybugger/lO; {:try_start_33 .. :try_end_54} :catch_92
    .catchall {:try_start_33 .. :try_end_54} :catchall_b1

    .line 651
    :sswitch_54
    iget v1, p0, Lorg/jshybugger/lM;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jshybugger/lM;->c:I

    .line 652
    iput-boolean v6, p0, Lorg/jshybugger/lM;->d:Z

    .line 655
    :goto_5c
    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->m:I

    .line 656
    invoke-direct {p0}, Lorg/jshybugger/lM;->c()Lorg/jshybugger/mz;

    .line 657
    if-nez v0, :cond_bb

    const/16 v0, 0x56

    const-string v2, "msg.no.brace.after.body"

    invoke-direct {p0, v0, v2}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 658
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->m:I

    .line 659
    :goto_73
    sub-int/2addr v0, v4

    invoke-virtual {v5, v0}, Lorg/jshybugger/mw;->j(I)V

    .line 660
    return-object v5

    :cond_78
    move v0, v2

    .line 599
    goto :goto_19

    .line 622
    :goto_7a
    :try_start_7a
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v2

    .line 623
    sparse-switch v2, :sswitch_data_c2

    .line 634
    invoke-direct {p0}, Lorg/jshybugger/lM;->n()Lorg/jshybugger/mt;

    move-result-object v2

    .line 635
    if-eqz v3, :cond_8e

    .line 636
    invoke-static {v2}, Lorg/jshybugger/lM;->c(Lorg/jshybugger/mt;)Ljava/lang/String;

    move-result-object v7

    .line 637
    if-nez v7, :cond_a5

    move v3, v1

    .line 645
    :cond_8e
    :goto_8e
    invoke-virtual {v5, v2}, Lorg/jshybugger/mw;->a(Lorg/jshybugger/mt;)V
    :try_end_91
    .catch Lorg/jshybugger/lO; {:try_start_7a .. :try_end_91} :catch_92
    .catchall {:try_start_7a .. :try_end_91} :catchall_b1

    goto :goto_7a

    .line 651
    :catch_92
    move-exception v1

    iget v1, p0, Lorg/jshybugger/lM;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jshybugger/lM;->c:I

    .line 652
    iput-boolean v6, p0, Lorg/jshybugger/lM;->d:Z

    goto :goto_5c

    .line 630
    :sswitch_9c
    const/4 v2, 0x0

    :try_start_9d
    iput v2, p0, Lorg/jshybugger/lM;->r:I

    .line 631
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/jshybugger/lM;->b(I)Lorg/jshybugger/mM;

    move-result-object v2

    goto :goto_8e

    .line 639
    :cond_a5
    const-string v8, "use strict"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8e

    .line 640
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/jshybugger/lM;->d:Z
    :try_end_b0
    .catch Lorg/jshybugger/lO; {:try_start_9d .. :try_end_b0} :catch_92
    .catchall {:try_start_9d .. :try_end_b0} :catchall_b1

    goto :goto_8e

    .line 651
    :catchall_b1
    move-exception v0

    iget v1, p0, Lorg/jshybugger/lM;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jshybugger/lM;->c:I

    .line 652
    iput-boolean v6, p0, Lorg/jshybugger/lM;->d:Z

    throw v0

    :cond_bb
    move v0, v1

    goto :goto_73

    :cond_bd
    move v3, v2

    goto :goto_7a

    :cond_bf
    move v0, v1

    goto/16 :goto_19

    .line 623
    :sswitch_data_c2
    .sparse-switch
        -0x1 -> :sswitch_54
        0x0 -> :sswitch_54
        0x56 -> :sswitch_54
        0x6d -> :sswitch_9c
    .end sparse-switch
.end method

.method private m()Lorg/jshybugger/lN;
    .registers 6

    .prologue
    .line 876
    new-instance v0, Lorg/jshybugger/lN;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jshybugger/lN;-><init>(B)V

    .line 878
    const/16 v1, 0x57

    const-string v2, "msg.no.paren.cond"

    invoke-direct {p0, v1, v2}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 879
    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->l:I

    iput v1, v0, Lorg/jshybugger/lN;->b:I

    .line 881
    :cond_16
    invoke-direct {p0}, Lorg/jshybugger/lM;->w()Lorg/jshybugger/mt;

    move-result-object v1

    iput-object v1, v0, Lorg/jshybugger/lN;->a:Lorg/jshybugger/mt;

    .line 883
    const/16 v1, 0x58

    const-string v2, "msg.no.paren.after.cond"

    invoke-direct {p0, v1, v2}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 884
    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->l:I

    iput v1, v0, Lorg/jshybugger/lN;->c:I

    .line 888
    :cond_2c
    iget-object v1, v0, Lorg/jshybugger/lN;->a:Lorg/jshybugger/mt;

    instance-of v1, v1, Lorg/jshybugger/ms;

    if-eqz v1, :cond_45

    .line 889
    const-string v1, "msg.equal.as.assign"

    const-string v2, ""

    iget-object v3, v0, Lorg/jshybugger/lN;->a:Lorg/jshybugger/mt;

    invoke-virtual {v3}, Lorg/jshybugger/mt;->n()I

    move-result v3

    iget-object v4, v0, Lorg/jshybugger/lN;->a:Lorg/jshybugger/mt;

    invoke-virtual {v4}, Lorg/jshybugger/mt;->p()I

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/jshybugger/lM;->a(Ljava/lang/String;Ljava/lang/String;II)V

    .line 893
    :cond_45
    return-object v0
.end method

.method private n()Lorg/jshybugger/mt;
    .registers 7

    .prologue
    .line 899
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v0, Lorg/jshybugger/mb;->l:I

    .line 901
    :try_start_4
    invoke-direct {p0}, Lorg/jshybugger/lM;->o()Lorg/jshybugger/mt;

    move-result-object v0

    .line 902
    if-eqz v0, :cond_36

    .line 903
    iget-object v1, p0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    iget-boolean v1, v1, Lorg/jshybugger/kI;->i:Z

    if-eqz v1, :cond_32

    invoke-virtual {v0}, Lorg/jshybugger/mt;->i()Z

    move-result v1

    if-nez v1, :cond_32

    .line 904
    invoke-virtual {v0}, Lorg/jshybugger/mt;->n()I

    move-result v1

    .line 905
    invoke-direct {p0, v1}, Lorg/jshybugger/lM;->d(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 906
    instance-of v1, v0, Lorg/jshybugger/mG;

    if-eqz v1, :cond_33

    const-string v1, "msg.extra.trailing.semi"

    :goto_28
    const-string v4, ""

    invoke-static {v0}, Lorg/jshybugger/lM;->f(Lorg/jshybugger/mt;)I

    move-result v5

    sub-int/2addr v5, v3

    invoke-direct {p0, v1, v4, v3, v5}, Lorg/jshybugger/lM;->a(Ljava/lang/String;Ljava/lang/String;II)V

    .line 932
    :cond_32
    :goto_32
    return-object v0

    .line 906
    :cond_33
    const-string v1, "msg.no.side.effects"
    :try_end_35
    .catch Lorg/jshybugger/lO; {:try_start_4 .. :try_end_35} :catch_4c

    goto :goto_28

    .line 919
    :cond_36
    :goto_36
    invoke-direct {p0}, Lorg/jshybugger/lM;->f()I

    move-result v0

    .line 920
    const/4 v1, 0x0

    iput v1, p0, Lorg/jshybugger/lM;->r:I

    .line 921
    sparse-switch v0, :sswitch_data_4e

    goto :goto_36

    .line 932
    :sswitch_41
    new-instance v0, Lorg/jshybugger/mG;

    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->l:I

    sub-int/2addr v1, v2

    invoke-direct {v0, v2, v1}, Lorg/jshybugger/mG;-><init>(II)V

    goto :goto_32

    :catch_4c
    move-exception v0

    goto :goto_36

    .line 921
    :sswitch_data_4e
    .sparse-switch
        -0x1 -> :sswitch_41
        0x0 -> :sswitch_41
        0x1 -> :sswitch_41
        0x52 -> :sswitch_41
    .end sparse-switch
.end method

.method private o()Lorg/jshybugger/mt;
    .registers 20

    .prologue
    .line 939
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->w:Lorg/jshybugger/mW;

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->w:Lorg/jshybugger/mW;

    invoke-virtual {v2}, Lorg/jshybugger/mW;->l()Lorg/jshybugger/mt;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 940
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/jshybugger/lM;->w:Lorg/jshybugger/mW;

    .line 942
    :cond_15
    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->d()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v2, Lorg/jshybugger/mb;->l:I

    .line 945
    sparse-switch v3, :sswitch_data_5ca

    .line 1038
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v4, v2, Lorg/jshybugger/mb;->h:I

    .line 1039
    new-instance v3, Lorg/jshybugger/mI;

    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->w()Lorg/jshybugger/mt;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->h()Z

    move-result v2

    if-nez v2, :cond_5af

    const/4 v2, 0x1

    :goto_35
    invoke-direct {v3, v5, v2}, Lorg/jshybugger/mI;-><init>(Lorg/jshybugger/mt;Z)V

    .line 1040
    invoke-virtual {v3, v4}, Lorg/jshybugger/mt;->d(I)V

    move-object v2, v3

    .line 1044
    :cond_3c
    :goto_3c
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/jshybugger/lM;->e(Lorg/jshybugger/mt;)V

    .line 1045
    :cond_41
    :goto_41
    return-object v2

    .line 947
    :sswitch_42
    move-object/from16 v0, p0

    iget v2, v0, Lorg/jshybugger/lM;->s:I

    const/16 v3, 0x70

    if-eq v2, v3, :cond_4d

    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->T()Ljava/lang/RuntimeException;

    :cond_4d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jshybugger/lM;->r:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v6, v2, Lorg/jshybugger/mb;->l:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v7, v2, Lorg/jshybugger/mb;->h:I

    const/4 v2, -0x1

    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->m()Lorg/jshybugger/lN;

    move-result-object v8

    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->n()Lorg/jshybugger/mt;

    move-result-object v4

    const/4 v3, 0x0

    const/16 v5, 0x71

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/jshybugger/lM;->a(I)Z

    move-result v5

    if-eqz v5, :cond_5c6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v2, Lorg/jshybugger/mb;->l:I

    sub-int/2addr v2, v6

    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->n()Lorg/jshybugger/mt;

    move-result-object v3

    move v5, v2

    :goto_7e
    if-eqz v3, :cond_a7

    move-object v2, v3

    :goto_81
    invoke-static {v2}, Lorg/jshybugger/lM;->b(Lorg/jshybugger/mt;)I

    move-result v9

    new-instance v2, Lorg/jshybugger/mR;

    sub-int/2addr v9, v6

    invoke-direct {v2, v6, v9}, Lorg/jshybugger/mR;-><init>(II)V

    iget-object v9, v8, Lorg/jshybugger/lN;->a:Lorg/jshybugger/mt;

    invoke-virtual {v2, v9}, Lorg/jshybugger/mR;->a(Lorg/jshybugger/mt;)V

    iget v9, v8, Lorg/jshybugger/lN;->b:I

    sub-int/2addr v9, v6

    iget v8, v8, Lorg/jshybugger/lN;->c:I

    sub-int v6, v8, v6

    invoke-virtual {v2, v9, v6}, Lorg/jshybugger/mR;->d(II)V

    invoke-virtual {v2, v4}, Lorg/jshybugger/mR;->b(Lorg/jshybugger/mt;)V

    invoke-virtual {v2, v3}, Lorg/jshybugger/mR;->e(Lorg/jshybugger/mt;)V

    invoke-virtual {v2, v5}, Lorg/jshybugger/mR;->e(I)V

    invoke-virtual {v2, v7}, Lorg/jshybugger/mR;->d(I)V

    goto :goto_41

    :cond_a7
    move-object v2, v4

    goto :goto_81

    .line 950
    :sswitch_a9
    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->p()Lorg/jshybugger/nn;

    move-result-object v2

    goto :goto_41

    .line 953
    :sswitch_ae
    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->q()Lorg/jshybugger/nu;

    move-result-object v2

    goto :goto_41

    .line 956
    :sswitch_b3
    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->r()Lorg/jshybugger/mD;

    move-result-object v2

    goto :goto_41

    .line 959
    :sswitch_b8
    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->s()Lorg/jshybugger/mY;

    move-result-object v2

    goto :goto_41

    .line 962
    :sswitch_bd
    move-object/from16 v0, p0

    iget v2, v0, Lorg/jshybugger/lM;->s:I

    const/16 v3, 0x51

    if-eq v2, v3, :cond_c8

    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->T()Ljava/lang/RuntimeException;

    :cond_c8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jshybugger/lM;->r:I

    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->c()Lorg/jshybugger/mz;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v12, v2, Lorg/jshybugger/mb;->l:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v13, v2, Lorg/jshybugger/mb;->h:I

    const/4 v10, -0x1

    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->d()I

    move-result v2

    const/16 v3, 0x55

    if-eq v2, v3, :cond_ee

    const-string v2, "msg.no.brace.try"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ee
    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->n()Lorg/jshybugger/mt;

    move-result-object v14

    invoke-static {v14}, Lorg/jshybugger/lM;->b(Lorg/jshybugger/mt;)I

    move-result v4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->d()I

    move-result v5

    const/16 v6, 0x7c

    if-ne v5, v6, :cond_20a

    :goto_100
    const/16 v5, 0x7c

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/jshybugger/lM;->a(I)Z

    move-result v5

    if-eqz v5, :cond_217

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v15, v4, Lorg/jshybugger/mb;->h:I

    if-eqz v2, :cond_11a

    const-string v4, "msg.catch.unreachable"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v4, Lorg/jshybugger/mb;->l:I

    move/from16 v16, v0

    const/4 v4, -0x1

    const/4 v8, -0x1

    const/4 v6, -0x1

    const/16 v5, 0x57

    const-string v7, "msg.no.paren.catch"

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5c3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v4, v4, Lorg/jshybugger/mb;->l:I

    move v5, v4

    :goto_138
    const/16 v4, 0x27

    const-string v7, "msg.bad.catchcond"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    const/4 v4, 0x0

    const/16 v7, 0x27

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7}, Lorg/jshybugger/lM;->b(ZI)Lorg/jshybugger/mZ;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/jshybugger/mZ;->k()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/jshybugger/lM;->d:Z

    if-eqz v7, :cond_16b

    const-string v7, "eval"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_164

    const-string v7, "arguments"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16b

    :cond_164
    const-string v7, "msg.bad.id.strict"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16b
    const/4 v4, 0x0

    const/16 v7, 0x70

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/jshybugger/lM;->a(I)Z

    move-result v7

    if-eqz v7, :cond_204

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v6, v4, Lorg/jshybugger/mb;->l:I

    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->w()Lorg/jshybugger/mt;

    move-result-object v4

    move v7, v6

    move-object v6, v4

    move v4, v2

    :goto_183
    const/16 v2, 0x58

    const-string v9, "msg.bad.catchcond"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_196

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v2, Lorg/jshybugger/mb;->l:I

    move v8, v2

    :cond_196
    const/16 v2, 0x55

    const-string v9, "msg.no.brace.catchblock"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/jshybugger/lM;->d(Lorg/jshybugger/mt;)Lorg/jshybugger/mt;

    move-result-object v2

    check-cast v2, Lorg/jshybugger/mw;

    invoke-static {v2}, Lorg/jshybugger/lM;->b(Lorg/jshybugger/mt;)I

    move-result v9

    new-instance v18, Lorg/jshybugger/my;

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/jshybugger/my;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/jshybugger/my;->a(Lorg/jshybugger/mZ;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lorg/jshybugger/my;->a(Lorg/jshybugger/mt;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/jshybugger/my;->a(Lorg/jshybugger/mw;)V

    const/4 v2, -0x1

    if-eq v7, v2, :cond_1d0

    sub-int v2, v7, v16

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/jshybugger/my;->e(I)V

    :cond_1d0
    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v8}, Lorg/jshybugger/my;->d(II)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lorg/jshybugger/my;->d(I)V

    const/16 v2, 0x56

    const-string v5, "msg.no.brace.after.body"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v5, v2, Lorg/jshybugger/mb;->m:I

    :goto_1ec
    sub-int v2, v5, v16

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/jshybugger/my;->j(I)V

    if-nez v3, :cond_5bd

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_1fa
    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v2

    move v2, v4

    move v4, v5

    goto/16 :goto_100

    :cond_204
    const/4 v2, 0x1

    move v7, v6

    move-object v6, v4

    move v4, v2

    goto/16 :goto_183

    :cond_20a
    const/16 v2, 0x7d

    if-eq v5, v2, :cond_217

    const/16 v2, 0x7d

    const-string v5, "msg.try.no.catchfinally"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    :cond_217
    const/4 v2, 0x0

    const/16 v5, 0x7d

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/jshybugger/lM;->a(I)Z

    move-result v5

    if-eqz v5, :cond_5ba

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v5, v2, Lorg/jshybugger/mb;->l:I

    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->n()Lorg/jshybugger/mt;

    move-result-object v2

    invoke-static {v2}, Lorg/jshybugger/lM;->b(Lorg/jshybugger/mt;)I

    move-result v4

    :goto_230
    new-instance v6, Lorg/jshybugger/nq;

    sub-int/2addr v4, v12

    invoke-direct {v6, v12, v4}, Lorg/jshybugger/nq;-><init>(II)V

    invoke-virtual {v6, v14}, Lorg/jshybugger/nq;->a(Lorg/jshybugger/mt;)V

    invoke-virtual {v6, v3}, Lorg/jshybugger/nq;->a(Ljava/util/List;)V

    invoke-virtual {v6, v2}, Lorg/jshybugger/nq;->b(Lorg/jshybugger/mt;)V

    const/4 v2, -0x1

    if-eq v5, v2, :cond_247

    sub-int v2, v5, v12

    invoke-virtual {v6, v2}, Lorg/jshybugger/nq;->e(I)V

    :cond_247
    invoke-virtual {v6, v13}, Lorg/jshybugger/nq;->d(I)V

    if-eqz v11, :cond_24f

    invoke-virtual {v6, v11}, Lorg/jshybugger/nq;->a(Lorg/jshybugger/mz;)V

    :cond_24f
    move-object v2, v6

    goto/16 :goto_41

    .line 965
    :sswitch_252
    move-object/from16 v0, p0

    iget v2, v0, Lorg/jshybugger/lM;->s:I

    const/16 v3, 0x32

    if-eq v2, v3, :cond_25d

    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->T()Ljava/lang/RuntimeException;

    :cond_25d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jshybugger/lM;->r:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v2, Lorg/jshybugger/mb;->l:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v4, v2, Lorg/jshybugger/mb;->h:I

    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->f()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_27d

    const-string v2, "msg.bad.throw.eol"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27d
    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->w()Lorg/jshybugger/mt;

    move-result-object v5

    new-instance v2, Lorg/jshybugger/np;

    invoke-static {v5}, Lorg/jshybugger/lM;->b(Lorg/jshybugger/mt;)I

    move-result v6

    invoke-direct {v2, v3, v6, v5}, Lorg/jshybugger/np;-><init>(IILorg/jshybugger/mt;)V

    invoke-virtual {v2, v4}, Lorg/jshybugger/np;->d(I)V

    goto/16 :goto_3c

    .line 969
    :sswitch_28f
    move-object/from16 v0, p0

    iget v2, v0, Lorg/jshybugger/lM;->s:I

    const/16 v3, 0x78

    if-eq v2, v3, :cond_29a

    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->T()Ljava/lang/RuntimeException;

    :cond_29a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jshybugger/lM;->r:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v6, v2, Lorg/jshybugger/mb;->h:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v7, v2, Lorg/jshybugger/mb;->l:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v2, Lorg/jshybugger/mb;->m:I

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->f()I

    move-result v4

    const/16 v5, 0x27

    if-ne v4, v5, :cond_5b6

    const/4 v2, 0x0

    const/16 v3, 0x27

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/jshybugger/lM;->b(ZI)Lorg/jshybugger/mZ;

    move-result-object v2

    invoke-static {v2}, Lorg/jshybugger/lM;->b(Lorg/jshybugger/mt;)I

    move-result v3

    move v4, v3

    move-object v3, v2

    :goto_2c9
    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->t()Lorg/jshybugger/mW;

    move-result-object v2

    if-nez v2, :cond_303

    const/4 v2, 0x0

    :goto_2d0
    if-nez v2, :cond_2ef

    if-nez v3, :cond_2ef

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jshybugger/lM;->k:Ljava/util/List;

    if-eqz v5, :cond_2e4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jshybugger/lM;->k:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_308

    :cond_2e4
    if-nez v3, :cond_2ef

    const-string v5, "msg.bad.break"

    sub-int v8, v4, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v8}, Lorg/jshybugger/lM;->b(Ljava/lang/String;II)V

    :cond_2ef
    :goto_2ef
    new-instance v5, Lorg/jshybugger/mx;

    sub-int/2addr v4, v7

    invoke-direct {v5, v7, v4}, Lorg/jshybugger/mx;-><init>(II)V

    invoke-virtual {v5, v3}, Lorg/jshybugger/mx;->a(Lorg/jshybugger/mZ;)V

    if-eqz v2, :cond_2fd

    invoke-virtual {v5, v2}, Lorg/jshybugger/mx;->a(Lorg/jshybugger/mT;)V

    :cond_2fd
    invoke-virtual {v5, v6}, Lorg/jshybugger/mx;->d(I)V

    move-object v2, v5

    .line 970
    goto/16 :goto_3c

    .line 969
    :cond_303
    invoke-virtual {v2}, Lorg/jshybugger/mW;->m()Lorg/jshybugger/mV;

    move-result-object v2

    goto :goto_2d0

    :cond_308
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->k:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jshybugger/lM;->k:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jshybugger/mT;

    goto :goto_2ef

    .line 973
    :sswitch_31d
    move-object/from16 v0, p0

    iget v2, v0, Lorg/jshybugger/lM;->s:I

    const/16 v3, 0x79

    if-eq v2, v3, :cond_328

    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->T()Ljava/lang/RuntimeException;

    :cond_328
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jshybugger/lM;->r:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v6, v2, Lorg/jshybugger/mb;->h:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v7, v2, Lorg/jshybugger/mb;->l:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v2, Lorg/jshybugger/mb;->m:I

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->f()I

    move-result v4

    const/16 v5, 0x27

    if-ne v4, v5, :cond_5b2

    const/4 v2, 0x0

    const/16 v3, 0x27

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/jshybugger/lM;->b(ZI)Lorg/jshybugger/mZ;

    move-result-object v2

    invoke-static {v2}, Lorg/jshybugger/lM;->b(Lorg/jshybugger/mt;)I

    move-result v3

    move v4, v3

    move-object v3, v2

    :goto_357
    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->t()Lorg/jshybugger/mW;

    move-result-object v5

    const/4 v2, 0x0

    if-nez v5, :cond_3a1

    if-nez v3, :cond_3a1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jshybugger/lM;->j:Ljava/util/List;

    if-eqz v5, :cond_370

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jshybugger/lM;->j:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_38c

    :cond_370
    const-string v5, "msg.continue.outside"

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v8}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_378
    new-instance v5, Lorg/jshybugger/mB;

    sub-int/2addr v4, v7

    invoke-direct {v5, v7, v4}, Lorg/jshybugger/mB;-><init>(II)V

    if-eqz v2, :cond_383

    invoke-virtual {v5, v2}, Lorg/jshybugger/mB;->a(Lorg/jshybugger/mY;)V

    :cond_383
    invoke-virtual {v5, v3}, Lorg/jshybugger/mB;->a(Lorg/jshybugger/mZ;)V

    invoke-virtual {v5, v6}, Lorg/jshybugger/mB;->d(I)V

    move-object v2, v5

    .line 974
    goto/16 :goto_3c

    .line 973
    :cond_38c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->j:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jshybugger/lM;->j:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jshybugger/mY;

    goto :goto_378

    :cond_3a1
    if-eqz v5, :cond_3ab

    invoke-virtual {v5}, Lorg/jshybugger/mW;->l()Lorg/jshybugger/mt;

    move-result-object v2

    instance-of v2, v2, Lorg/jshybugger/mY;

    if-nez v2, :cond_3b4

    :cond_3ab
    const-string v2, "msg.continue.nonloop"

    sub-int v8, v4, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7, v8}, Lorg/jshybugger/lM;->b(Ljava/lang/String;II)V

    :cond_3b4
    if-nez v5, :cond_3b8

    const/4 v2, 0x0

    goto :goto_378

    :cond_3b8
    invoke-virtual {v5}, Lorg/jshybugger/mW;->l()Lorg/jshybugger/mt;

    move-result-object v2

    check-cast v2, Lorg/jshybugger/mY;

    goto :goto_378

    .line 977
    :sswitch_3bf
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/jshybugger/lM;->d:Z

    if-eqz v2, :cond_3cd

    .line 978
    const-string v2, "msg.no.with.strict"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    :cond_3cd
    move-object/from16 v0, p0

    iget v2, v0, Lorg/jshybugger/lM;->s:I

    const/16 v3, 0x7b

    if-eq v2, v3, :cond_3d8

    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->T()Ljava/lang/RuntimeException;

    :cond_3d8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jshybugger/lM;->r:I

    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->c()Lorg/jshybugger/mz;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v6, v2, Lorg/jshybugger/mb;->h:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v7, v2, Lorg/jshybugger/mb;->l:I

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x57

    const-string v8, "msg.no.paren.with"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_401

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v2, Lorg/jshybugger/mb;->l:I

    :cond_401
    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->w()Lorg/jshybugger/mt;

    move-result-object v8

    const/16 v4, 0x58

    const-string v9, "msg.no.paren.after.with"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_417

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v3, Lorg/jshybugger/mb;->l:I

    :cond_417
    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->n()Lorg/jshybugger/mt;

    move-result-object v9

    new-instance v4, Lorg/jshybugger/nv;

    invoke-static {v9}, Lorg/jshybugger/lM;->b(Lorg/jshybugger/mt;)I

    move-result v10

    sub-int/2addr v10, v7

    invoke-direct {v4, v7, v10}, Lorg/jshybugger/nv;-><init>(II)V

    invoke-virtual {v4, v5}, Lorg/jshybugger/nv;->a(Lorg/jshybugger/mz;)V

    invoke-virtual {v4, v8}, Lorg/jshybugger/nv;->a(Lorg/jshybugger/mt;)V

    invoke-virtual {v4, v9}, Lorg/jshybugger/nv;->b(Lorg/jshybugger/mt;)V

    invoke-virtual {v4, v2, v3}, Lorg/jshybugger/nv;->d(II)V

    invoke-virtual {v4, v6}, Lorg/jshybugger/nv;->d(I)V

    move-object v2, v4

    goto/16 :goto_41

    .line 984
    :sswitch_437
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jshybugger/lM;->r:I

    .line 985
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v2, Lorg/jshybugger/mb;->h:I

    .line 986
    move-object/from16 v0, p0

    iget v2, v0, Lorg/jshybugger/lM;->s:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v4, v4, Lorg/jshybugger/mb;->l:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5}, Lorg/jshybugger/lM;->a(IIZ)Lorg/jshybugger/ns;

    move-result-object v2

    .line 987
    invoke-virtual {v2, v3}, Lorg/jshybugger/mt;->d(I)V

    goto/16 :goto_3c

    .line 991
    :sswitch_458
    move-object/from16 v0, p0

    iget v2, v0, Lorg/jshybugger/lM;->s:I

    const/16 v3, 0x99

    if-eq v2, v3, :cond_463

    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->T()Ljava/lang/RuntimeException;

    :cond_463
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jshybugger/lM;->r:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v2, Lorg/jshybugger/mb;->h:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v2, Lorg/jshybugger/mb;->l:I

    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->d()I

    move-result v4

    const/16 v5, 0x57

    if-ne v4, v5, :cond_494

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lorg/jshybugger/lM;->a(ZI)Lorg/jshybugger/mt;

    move-result-object v2

    :goto_483
    invoke-virtual {v2, v3}, Lorg/jshybugger/mt;->d(I)V

    .line 992
    instance-of v3, v2, Lorg/jshybugger/ns;

    if-eqz v3, :cond_41

    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->d()I

    move-result v3

    const/16 v4, 0x52

    if-eq v3, v4, :cond_3c

    goto/16 :goto_41

    .line 991
    :cond_494
    const/16 v4, 0x99

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v5}, Lorg/jshybugger/lM;->a(IIZ)Lorg/jshybugger/ns;

    move-result-object v2

    goto :goto_483

    .line 999
    :sswitch_49e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lorg/jshybugger/lM;->a(IZ)Lorg/jshybugger/mt;

    move-result-object v2

    goto/16 :goto_3c

    .line 1003
    :sswitch_4a7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jshybugger/lM;->r:I

    .line 1004
    new-instance v2, Lorg/jshybugger/mU;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v4, v4, Lorg/jshybugger/mb;->l:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v5, v5, Lorg/jshybugger/mb;->m:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v6, v6, Lorg/jshybugger/mb;->l:I

    sub-int/2addr v5, v6

    invoke-direct {v2, v4, v5, v3}, Lorg/jshybugger/mU;-><init>(III)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v3, Lorg/jshybugger/mb;->h:I

    invoke-virtual {v2, v3}, Lorg/jshybugger/mt;->d(I)V

    goto/16 :goto_3c

    .line 1010
    :sswitch_4cf
    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->u()Lorg/jshybugger/mt;

    move-result-object v2

    goto/16 :goto_41

    .line 1013
    :sswitch_4d5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jshybugger/lM;->r:I

    .line 1014
    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->S()Lorg/jshybugger/mH;

    move-result-object v2

    goto/16 :goto_41

    .line 1017
    :sswitch_4e0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jshybugger/lM;->r:I

    .line 1018
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v2, Lorg/jshybugger/mb;->l:I

    .line 1019
    new-instance v2, Lorg/jshybugger/mG;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v4, v4, Lorg/jshybugger/mb;->m:I

    sub-int/2addr v4, v3

    invoke-direct {v2, v3, v4}, Lorg/jshybugger/mG;-><init>(II)V

    .line 1020
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v3, Lorg/jshybugger/mb;->h:I

    invoke-virtual {v2, v3}, Lorg/jshybugger/mt;->d(I)V

    goto/16 :goto_41

    .line 1024
    :sswitch_502
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jshybugger/lM;->r:I

    .line 1025
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/jshybugger/lM;->b(I)Lorg/jshybugger/mM;

    move-result-object v2

    goto/16 :goto_41

    .line 1028
    :sswitch_510
    move-object/from16 v0, p0

    iget v2, v0, Lorg/jshybugger/lM;->s:I

    const/16 v3, 0x74

    if-eq v2, v3, :cond_51b

    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->T()Ljava/lang/RuntimeException;

    :cond_51b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jshybugger/lM;->r:I

    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->g()V

    invoke-virtual/range {p0 .. p0}, Lorg/jshybugger/lM;->b()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v2, Lorg/jshybugger/mb;->h:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v3, Lorg/jshybugger/mb;->l:I

    const/16 v4, 0x27

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/jshybugger/lM;->a(I)Z

    move-result v4

    if-eqz v4, :cond_54a

    const-string v4, "xml"

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget-object v5, v5, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_552

    :cond_54a
    const-string v4, "msg.bad.namespace"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_552
    const/16 v4, 0x27

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/jshybugger/lM;->a(I)Z

    move-result v4

    if-eqz v4, :cond_56a

    const-string v4, "namespace"

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget-object v5, v5, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_572

    :cond_56a
    const-string v4, "msg.bad.namespace"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_572
    const/16 v4, 0x5a

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/jshybugger/lM;->a(I)Z

    move-result v4

    if-nez v4, :cond_584

    const-string v4, "msg.bad.namespace"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_584
    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->w()Lorg/jshybugger/mt;

    move-result-object v4

    new-instance v5, Lorg/jshybugger/nr;

    invoke-static {v4}, Lorg/jshybugger/lM;->b(Lorg/jshybugger/mt;)I

    move-result v6

    sub-int/2addr v6, v3

    invoke-direct {v5, v3, v6}, Lorg/jshybugger/nr;-><init>(II)V

    const/16 v3, 0x4a

    invoke-virtual {v5, v3}, Lorg/jshybugger/nr;->e(I)V

    invoke-virtual {v5, v4}, Lorg/jshybugger/nr;->a(Lorg/jshybugger/mt;)V

    invoke-virtual {v5, v2}, Lorg/jshybugger/nr;->d(I)V

    new-instance v2, Lorg/jshybugger/mI;

    const/4 v3, 0x1

    invoke-direct {v2, v5, v3}, Lorg/jshybugger/mI;-><init>(Lorg/jshybugger/mt;Z)V

    goto/16 :goto_3c

    .line 1032
    :sswitch_5a5
    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->v()Lorg/jshybugger/mt;

    move-result-object v2

    .line 1033
    instance-of v3, v2, Lorg/jshybugger/mI;

    if-nez v3, :cond_3c

    goto/16 :goto_41

    .line 1039
    :cond_5af
    const/4 v2, 0x0

    goto/16 :goto_35

    :cond_5b2
    move v4, v3

    move-object v3, v2

    goto/16 :goto_357

    :cond_5b6
    move v4, v3

    move-object v3, v2

    goto/16 :goto_2c9

    :cond_5ba
    move v5, v10

    goto/16 :goto_230

    :cond_5bd
    move-object v2, v3

    goto/16 :goto_1fa

    :cond_5c0
    move v5, v9

    goto/16 :goto_1ec

    :cond_5c3
    move v5, v4

    goto/16 :goto_138

    :cond_5c6
    move v5, v2

    goto/16 :goto_7e

    .line 945
    nop

    :sswitch_data_5ca
    .sparse-switch
        -0x1 -> :sswitch_4d5
        0x4 -> :sswitch_49e
        0x27 -> :sswitch_5a5
        0x32 -> :sswitch_252
        0x48 -> :sswitch_49e
        0x51 -> :sswitch_bd
        0x52 -> :sswitch_4e0
        0x55 -> :sswitch_4cf
        0x6d -> :sswitch_502
        0x70 -> :sswitch_42
        0x72 -> :sswitch_a9
        0x74 -> :sswitch_510
        0x75 -> :sswitch_ae
        0x76 -> :sswitch_b3
        0x77 -> :sswitch_b8
        0x78 -> :sswitch_28f
        0x79 -> :sswitch_31d
        0x7a -> :sswitch_437
        0x7b -> :sswitch_3bf
        0x99 -> :sswitch_458
        0x9a -> :sswitch_437
        0xa0 -> :sswitch_4a7
    .end sparse-switch
.end method

.method private p()Lorg/jshybugger/nn;
    .registers 10

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1101
    iget v1, p0, Lorg/jshybugger/lM;->s:I

    const/16 v3, 0x72

    if-eq v1, v3, :cond_b

    invoke-direct {p0}, Lorg/jshybugger/lM;->T()Ljava/lang/RuntimeException;

    .line 1102
    :cond_b
    iput v0, p0, Lorg/jshybugger/lM;->r:I

    .line 1103
    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v1, Lorg/jshybugger/mb;->l:I

    .line 1105
    new-instance v4, Lorg/jshybugger/nn;

    invoke-direct {v4, v3}, Lorg/jshybugger/nn;-><init>(I)V

    .line 1106
    const/16 v1, 0x57

    const-string v5, "msg.no.paren.switch"

    invoke-direct {p0, v1, v5}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1107
    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->l:I

    sub-int/2addr v1, v3

    invoke-virtual {v4, v1}, Lorg/jshybugger/nn;->e(I)V

    .line 1108
    :cond_28
    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->h:I

    invoke-virtual {v4, v1}, Lorg/jshybugger/nn;->d(I)V

    .line 1110
    invoke-direct {p0}, Lorg/jshybugger/lM;->w()Lorg/jshybugger/mt;

    move-result-object v1

    .line 1111
    invoke-virtual {v4, v1}, Lorg/jshybugger/nn;->a(Lorg/jshybugger/mt;)V

    .line 1112
    iget-object v1, p0, Lorg/jshybugger/lM;->k:Ljava/util/List;

    if-nez v1, :cond_41

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/jshybugger/lM;->k:Ljava/util/List;

    :cond_41
    iget-object v1, p0, Lorg/jshybugger/lM;->k:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1115
    const/16 v1, 0x58

    :try_start_48
    const-string v5, "msg.no.paren.after.switch"

    invoke-direct {p0, v1, v5}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 1116
    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->l:I

    sub-int/2addr v1, v3

    invoke-virtual {v4, v1}, Lorg/jshybugger/nn;->f(I)V

    .line 1118
    :cond_58
    const/16 v1, 0x55

    const-string v5, "msg.no.brace.switch"

    invoke-direct {p0, v1, v5}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    .line 1123
    :goto_5f
    invoke-direct {p0}, Lorg/jshybugger/lM;->e()I

    move-result v1

    .line 1124
    iget-object v5, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v5, v5, Lorg/jshybugger/mb;->l:I

    .line 1125
    iget-object v6, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v6, v6, Lorg/jshybugger/mb;->h:I

    .line 1126
    sparse-switch v1, :sswitch_data_d4

    .line 1147
    const-string v0, "msg.bad.switch"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_48 .. :try_end_74} :catchall_81

    .line 1166
    :goto_74
    invoke-direct {p0}, Lorg/jshybugger/lM;->j()V

    .line 1168
    return-object v4

    .line 1129
    :sswitch_78
    :try_start_78
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->m:I

    sub-int/2addr v0, v3

    invoke-virtual {v4, v0}, Lorg/jshybugger/nn;->j(I)V
    :try_end_80
    .catchall {:try_start_78 .. :try_end_80} :catchall_81

    goto :goto_74

    .line 1166
    :catchall_81
    move-exception v0

    invoke-direct {p0}, Lorg/jshybugger/lM;->j()V

    throw v0

    .line 1133
    :sswitch_86
    :try_start_86
    invoke-direct {p0}, Lorg/jshybugger/lM;->w()Lorg/jshybugger/mt;

    move-result-object v1

    .line 1134
    const/16 v7, 0x67

    const-string v8, "msg.no.colon.case"

    invoke-direct {p0, v7, v8}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    .line 1151
    :goto_91
    new-instance v7, Lorg/jshybugger/nm;

    invoke-direct {v7, v5}, Lorg/jshybugger/nm;-><init>(I)V

    .line 1152
    invoke-virtual {v7, v1}, Lorg/jshybugger/nm;->a(Lorg/jshybugger/mt;)V

    .line 1153
    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->m:I

    sub-int/2addr v1, v3

    invoke-virtual {v7, v1}, Lorg/jshybugger/nm;->j(I)V

    .line 1154
    invoke-virtual {v7, v6}, Lorg/jshybugger/nm;->d(I)V

    .line 1159
    :goto_a4
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v1

    const/16 v5, 0x56

    if-eq v1, v5, :cond_d0

    const/16 v5, 0x73

    if-eq v1, v5, :cond_d0

    const/16 v5, 0x74

    if-eq v1, v5, :cond_d0

    if-eqz v1, :cond_d0

    .line 1161
    invoke-direct {p0}, Lorg/jshybugger/lM;->n()Lorg/jshybugger/mt;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/jshybugger/nm;->b(Lorg/jshybugger/mt;)V

    goto :goto_a4

    .line 1138
    :sswitch_be
    if-eqz v0, :cond_c6

    .line 1139
    const-string v0, "msg.double.switch.default"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    :cond_c6
    const/4 v0, 0x1

    .line 1143
    const/16 v1, 0x67

    const-string v7, "msg.no.colon.case"

    invoke-direct {p0, v1, v7}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    move-object v1, v2

    .line 1144
    goto :goto_91

    .line 1163
    :cond_d0
    invoke-virtual {v4, v7}, Lorg/jshybugger/nn;->a(Lorg/jshybugger/nm;)V
    :try_end_d3
    .catchall {:try_start_86 .. :try_end_d3} :catchall_81

    goto :goto_5f

    .line 1126
    :sswitch_data_d4
    .sparse-switch
        0x56 -> :sswitch_78
        0x73 -> :sswitch_86
        0x74 -> :sswitch_be
    .end sparse-switch
.end method

.method private q()Lorg/jshybugger/nu;
    .registers 5

    .prologue
    .line 1174
    iget v0, p0, Lorg/jshybugger/lM;->s:I

    const/16 v1, 0x75

    if-eq v0, v1, :cond_9

    invoke-direct {p0}, Lorg/jshybugger/lM;->T()Ljava/lang/RuntimeException;

    .line 1175
    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Lorg/jshybugger/lM;->r:I

    .line 1176
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->l:I

    .line 1177
    new-instance v1, Lorg/jshybugger/nu;

    invoke-direct {v1, v0}, Lorg/jshybugger/nu;-><init>(I)V

    .line 1178
    iget-object v2, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v2, Lorg/jshybugger/mb;->h:I

    invoke-virtual {v1, v2}, Lorg/jshybugger/nu;->d(I)V

    .line 1179
    invoke-direct {p0, v1}, Lorg/jshybugger/lM;->a(Lorg/jshybugger/mY;)V

    .line 1181
    :try_start_1f
    invoke-direct {p0}, Lorg/jshybugger/lM;->m()Lorg/jshybugger/lN;

    move-result-object v2

    .line 1182
    iget-object v3, v2, Lorg/jshybugger/lN;->a:Lorg/jshybugger/mt;

    invoke-virtual {v1, v3}, Lorg/jshybugger/nu;->b(Lorg/jshybugger/mt;)V

    .line 1183
    iget v3, v2, Lorg/jshybugger/lN;->b:I

    sub-int/2addr v3, v0

    iget v2, v2, Lorg/jshybugger/lN;->c:I

    sub-int/2addr v2, v0

    invoke-virtual {v1, v3, v2}, Lorg/jshybugger/nu;->d(II)V

    .line 1184
    invoke-direct {p0}, Lorg/jshybugger/lM;->n()Lorg/jshybugger/mt;

    move-result-object v2

    .line 1185
    invoke-static {v2}, Lorg/jshybugger/lM;->b(Lorg/jshybugger/mt;)I

    move-result v3

    sub-int v0, v3, v0

    invoke-virtual {v1, v0}, Lorg/jshybugger/nu;->j(I)V

    .line 1186
    invoke-virtual {v1, v2}, Lorg/jshybugger/nu;->a(Lorg/jshybugger/mt;)V
    :try_end_41
    .catchall {:try_start_1f .. :try_end_41} :catchall_45

    .line 1188
    invoke-direct {p0}, Lorg/jshybugger/lM;->i()V

    .line 1190
    return-object v1

    .line 1188
    :catchall_45
    move-exception v0

    invoke-direct {p0}, Lorg/jshybugger/lM;->i()V

    throw v0
.end method

.method private r()Lorg/jshybugger/mD;
    .registers 6

    .prologue
    .line 1196
    iget v0, p0, Lorg/jshybugger/lM;->s:I

    const/16 v1, 0x76

    if-eq v0, v1, :cond_9

    invoke-direct {p0}, Lorg/jshybugger/lM;->T()Ljava/lang/RuntimeException;

    .line 1197
    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Lorg/jshybugger/lM;->r:I

    .line 1198
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v0, Lorg/jshybugger/mb;->l:I

    .line 1199
    new-instance v2, Lorg/jshybugger/mD;

    invoke-direct {v2, v1}, Lorg/jshybugger/mD;-><init>(I)V

    .line 1200
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->h:I

    invoke-virtual {v2, v0}, Lorg/jshybugger/mD;->d(I)V

    .line 1201
    invoke-direct {p0, v2}, Lorg/jshybugger/lM;->a(Lorg/jshybugger/mY;)V

    .line 1203
    :try_start_1f
    invoke-direct {p0}, Lorg/jshybugger/lM;->n()Lorg/jshybugger/mt;

    move-result-object v3

    .line 1204
    const/16 v0, 0x75

    const-string v4, "msg.no.while.do"

    invoke-direct {p0, v0, v4}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    .line 1205
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->l:I

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lorg/jshybugger/mD;->e(I)V

    .line 1206
    invoke-direct {p0}, Lorg/jshybugger/lM;->m()Lorg/jshybugger/lN;

    move-result-object v0

    .line 1207
    iget-object v4, v0, Lorg/jshybugger/lN;->a:Lorg/jshybugger/mt;

    invoke-virtual {v2, v4}, Lorg/jshybugger/mD;->b(Lorg/jshybugger/mt;)V

    .line 1208
    iget v4, v0, Lorg/jshybugger/lN;->b:I

    sub-int/2addr v4, v1

    iget v0, v0, Lorg/jshybugger/lN;->c:I

    sub-int/2addr v0, v1

    invoke-virtual {v2, v4, v0}, Lorg/jshybugger/mD;->d(II)V

    .line 1209
    invoke-static {v3}, Lorg/jshybugger/lM;->b(Lorg/jshybugger/mt;)I

    move-result v0

    .line 1210
    invoke-virtual {v2, v3}, Lorg/jshybugger/mD;->a(Lorg/jshybugger/mt;)V
    :try_end_4b
    .catchall {:try_start_1f .. :try_end_4b} :catchall_5f

    .line 1212
    invoke-direct {p0}, Lorg/jshybugger/lM;->i()V

    .line 1217
    const/16 v3, 0x52

    invoke-direct {p0, v3}, Lorg/jshybugger/lM;->a(I)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 1218
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->m:I

    .line 1220
    :cond_5a
    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lorg/jshybugger/mD;->j(I)V

    .line 1221
    return-object v2

    .line 1212
    :catchall_5f
    move-exception v0

    invoke-direct {p0}, Lorg/jshybugger/lM;->i()V

    throw v0
.end method

.method private s()Lorg/jshybugger/mY;
    .registers 17

    .prologue
    const/4 v3, 0x0

    const/16 v6, 0x52

    const/4 v5, 0x0

    const/4 v1, -0x1

    const/4 v8, 0x1

    .line 1227
    move-object/from16 v0, p0

    iget v2, v0, Lorg/jshybugger/lM;->s:I

    const/16 v4, 0x77

    if-eq v2, v4, :cond_11

    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->T()Ljava/lang/RuntimeException;

    .line 1228
    :cond_11
    move-object/from16 v0, p0

    iput v5, v0, Lorg/jshybugger/lM;->r:I

    .line 1229
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v12, v2, Lorg/jshybugger/mb;->l:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v13, v2, Lorg/jshybugger/mb;->h:I

    .line 1235
    new-instance v14, Lorg/jshybugger/nj;

    invoke-direct {v14}, Lorg/jshybugger/nj;-><init>()V

    .line 1238
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/jshybugger/lM;->a(Lorg/jshybugger/nj;)V

    .line 1241
    const/16 v2, 0x27

    :try_start_2d
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/jshybugger/lM;->a(I)Z

    move-result v2

    if-eqz v2, :cond_101

    .line 1242
    const-string v2, "each"

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget-object v4, v4, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f9

    .line 1244
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v2, Lorg/jshybugger/mb;->l:I

    sub-int/2addr v2, v12

    move v10, v2

    move v11, v8

    .line 1250
    :goto_4c
    const/16 v2, 0x57

    const-string v4, "msg.no.paren.for"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_185

    .line 1251
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v2, Lorg/jshybugger/mb;->l:I

    sub-int/2addr v2, v12

    move v9, v2

    .line 1252
    :goto_60
    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->d()I

    move-result v2

    .line 1254
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/jshybugger/lM;->c(I)Lorg/jshybugger/mt;

    move-result-object v2

    .line 1256
    const/16 v4, 0x34

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/jshybugger/lM;->a(I)Z

    move-result v4

    if-eqz v4, :cond_105

    .line 1258
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v4, v4, Lorg/jshybugger/mb;->l:I

    sub-int v5, v4, v12

    .line 1259
    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->w()Lorg/jshybugger/mt;

    move-result-object v4

    move v6, v5

    move v7, v8

    move-object v5, v4

    .line 1280
    :goto_83
    const/16 v4, 0x58

    const-string v15, "msg.no.paren.for.ctrl"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v15}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_182

    .line 1281
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->l:I

    sub-int/2addr v1, v12

    move v4, v1

    .line 1283
    :goto_97
    if-eqz v7, :cond_162

    .line 1284
    new-instance v3, Lorg/jshybugger/mJ;

    invoke-direct {v3, v12}, Lorg/jshybugger/mJ;-><init>(I)V

    .line 1285
    instance-of v1, v2, Lorg/jshybugger/ns;

    if-eqz v1, :cond_b8

    .line 1287
    move-object v0, v2

    check-cast v0, Lorg/jshybugger/ns;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/jshybugger/ns;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v8, :cond_b8

    .line 1288
    const-string v1, "msg.mult.index"

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v7}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    :cond_b8
    invoke-virtual {v3, v2}, Lorg/jshybugger/mJ;->b(Lorg/jshybugger/mt;)V

    .line 1292
    invoke-virtual {v3, v5}, Lorg/jshybugger/mJ;->e(Lorg/jshybugger/mt;)V

    .line 1293
    invoke-virtual {v3, v6}, Lorg/jshybugger/mJ;->e(I)V

    .line 1294
    invoke-virtual {v3, v11}, Lorg/jshybugger/mJ;->a(Z)V

    .line 1295
    invoke-virtual {v3, v10}, Lorg/jshybugger/mJ;->f(I)V

    move-object v1, v3

    .line 1306
    :goto_c8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->f:Lorg/jshybugger/nj;

    invoke-virtual {v2, v1}, Lorg/jshybugger/nj;->c(Lorg/jshybugger/nj;)V

    .line 1307
    invoke-virtual/range {p0 .. p0}, Lorg/jshybugger/lM;->a()V

    .line 1312
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/jshybugger/lM;->a(Lorg/jshybugger/mY;)V
    :try_end_d7
    .catchall {:try_start_2d .. :try_end_d7} :catchall_172

    .line 1314
    :try_start_d7
    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->n()Lorg/jshybugger/mt;

    move-result-object v2

    .line 1315
    invoke-static {v2}, Lorg/jshybugger/lM;->b(Lorg/jshybugger/mt;)I

    move-result v3

    sub-int/2addr v3, v12

    invoke-virtual {v1, v3}, Lorg/jshybugger/mY;->j(I)V

    .line 1316
    invoke-virtual {v1, v2}, Lorg/jshybugger/mY;->a(Lorg/jshybugger/mt;)V
    :try_end_e6
    .catchall {:try_start_d7 .. :try_end_e6} :catchall_17d

    .line 1318
    :try_start_e6
    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->i()V
    :try_end_e9
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_172

    .line 1322
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->f:Lorg/jshybugger/nj;

    if-ne v2, v14, :cond_f2

    .line 1323
    invoke-virtual/range {p0 .. p0}, Lorg/jshybugger/lM;->a()V

    .line 1326
    :cond_f2
    invoke-virtual {v1, v9, v4}, Lorg/jshybugger/mY;->d(II)V

    .line 1327
    invoke-virtual {v1, v13}, Lorg/jshybugger/mY;->d(I)V

    .line 1328
    return-object v1

    .line 1246
    :cond_f9
    :try_start_f9
    const-string v2, "msg.no.paren.for"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_101
    move v10, v1

    move v11, v5

    goto/16 :goto_4c

    .line 1261
    :cond_105
    const/16 v3, 0x52

    const-string v4, "msg.no.semi.for"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    .line 1262
    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->d()I

    move-result v3

    if-ne v3, v6, :cond_154

    .line 1264
    new-instance v4, Lorg/jshybugger/mF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v3, Lorg/jshybugger/mb;->l:I

    const/4 v6, 0x1

    invoke-direct {v4, v3, v6}, Lorg/jshybugger/mF;-><init>(II)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v3, Lorg/jshybugger/mb;->h:I

    invoke-virtual {v4, v3}, Lorg/jshybugger/mt;->d(I)V

    .line 1270
    :goto_129
    const/16 v3, 0x52

    const-string v6, "msg.no.semi.for.cond"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    .line 1271
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v6, v3, Lorg/jshybugger/mb;->m:I

    .line 1272
    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->d()I

    move-result v3

    const/16 v7, 0x58

    if-ne v3, v7, :cond_159

    .line 1273
    new-instance v3, Lorg/jshybugger/mF;

    const/4 v7, 0x1

    invoke-direct {v3, v6, v7}, Lorg/jshybugger/mF;-><init>(II)V

    .line 1274
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v6, v6, Lorg/jshybugger/mb;->h:I

    invoke-virtual {v3, v6}, Lorg/jshybugger/mt;->d(I)V

    move v6, v1

    move v7, v5

    move-object v5, v4

    goto/16 :goto_83

    .line 1267
    :cond_154
    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->w()Lorg/jshybugger/mt;

    move-result-object v4

    goto :goto_129

    .line 1276
    :cond_159
    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->w()Lorg/jshybugger/mt;

    move-result-object v3

    move v6, v1

    move v7, v5

    move-object v5, v4

    goto/16 :goto_83

    .line 1298
    :cond_162
    new-instance v1, Lorg/jshybugger/mK;

    invoke-direct {v1, v12}, Lorg/jshybugger/mK;-><init>(I)V

    .line 1299
    invoke-virtual {v1, v2}, Lorg/jshybugger/mK;->b(Lorg/jshybugger/mt;)V

    .line 1300
    invoke-virtual {v1, v5}, Lorg/jshybugger/mK;->e(Lorg/jshybugger/mt;)V

    .line 1301
    invoke-virtual {v1, v3}, Lorg/jshybugger/mK;->f(Lorg/jshybugger/mt;)V
    :try_end_170
    .catchall {:try_start_f9 .. :try_end_170} :catchall_172

    goto/16 :goto_c8

    .line 1322
    :catchall_172
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jshybugger/lM;->f:Lorg/jshybugger/nj;

    if-ne v2, v14, :cond_17c

    .line 1323
    invoke-virtual/range {p0 .. p0}, Lorg/jshybugger/lM;->a()V

    :cond_17c
    throw v1

    .line 1318
    :catchall_17d
    move-exception v1

    :try_start_17e
    invoke-direct/range {p0 .. p0}, Lorg/jshybugger/lM;->i()V

    throw v1
    :try_end_182
    .catchall {:try_start_17e .. :try_end_182} :catchall_172

    :cond_182
    move v4, v1

    goto/16 :goto_97

    :cond_185
    move v9, v1

    goto/16 :goto_60
.end method

.method private t()Lorg/jshybugger/mW;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1476
    .line 1478
    invoke-direct {p0}, Lorg/jshybugger/lM;->f()I

    move-result v0

    const/16 v2, 0x27

    if-ne v0, v2, :cond_26

    .line 1479
    const/4 v0, 0x0

    iput v0, p0, Lorg/jshybugger/lM;->r:I

    .line 1480
    iget-object v0, p0, Lorg/jshybugger/lM;->i:Ljava/util/Map;

    if-eqz v0, :cond_24

    .line 1481
    iget-object v0, p0, Lorg/jshybugger/lM;->i:Ljava/util/Map;

    iget-object v2, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget-object v2, v2, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/mW;

    .line 1483
    :goto_1c
    if-nez v0, :cond_23

    .line 1484
    const-string v2, "msg.undef.label"

    invoke-virtual {p0, v2, v1}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    :cond_23
    :goto_23
    return-object v0

    :cond_24
    move-object v0, v1

    goto :goto_1c

    :cond_26
    move-object v0, v1

    goto :goto_23
.end method

.method private u()Lorg/jshybugger/mt;
    .registers 5

    .prologue
    .line 1681
    iget v0, p0, Lorg/jshybugger/lM;->s:I

    const/16 v1, 0x55

    if-eq v0, v1, :cond_9

    invoke-direct {p0}, Lorg/jshybugger/lM;->T()Ljava/lang/RuntimeException;

    .line 1682
    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Lorg/jshybugger/lM;->r:I

    .line 1683
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->l:I

    .line 1684
    new-instance v1, Lorg/jshybugger/nj;

    invoke-direct {v1, v0}, Lorg/jshybugger/nj;-><init>(I)V

    .line 1685
    iget-object v2, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v2, Lorg/jshybugger/mb;->h:I

    invoke-virtual {v1, v2}, Lorg/jshybugger/nj;->d(I)V

    .line 1686
    invoke-virtual {p0, v1}, Lorg/jshybugger/lM;->a(Lorg/jshybugger/nj;)V

    .line 1688
    :try_start_1f
    invoke-direct {p0, v1}, Lorg/jshybugger/lM;->d(Lorg/jshybugger/mt;)Lorg/jshybugger/mt;

    .line 1689
    const/16 v2, 0x56

    const-string v3, "msg.no.brace.block"

    invoke-direct {p0, v2, v3}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    .line 1690
    iget-object v2, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v2, Lorg/jshybugger/mb;->m:I

    sub-int v0, v2, v0

    invoke-virtual {v1, v0}, Lorg/jshybugger/nj;->j(I)V
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_36

    .line 1693
    invoke-virtual {p0}, Lorg/jshybugger/lM;->a()V

    return-object v1

    :catchall_36
    move-exception v0

    invoke-virtual {p0}, Lorg/jshybugger/lM;->a()V

    throw v0
.end method

.method private v()Lorg/jshybugger/mt;
    .registers 10

    .prologue
    const/16 v8, 0x82

    const/16 v7, 0x27

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1760
    iget v0, p0, Lorg/jshybugger/lM;->s:I

    if-eq v0, v7, :cond_10

    invoke-direct {p0}, Lorg/jshybugger/lM;->T()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1761
    :cond_10
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v6, v0, Lorg/jshybugger/mb;->l:I

    .line 1764
    iget v0, p0, Lorg/jshybugger/lM;->r:I

    const/high16 v3, 0x20000

    or-int/2addr v0, v3

    iput v0, p0, Lorg/jshybugger/lM;->r:I

    .line 1765
    invoke-direct {p0}, Lorg/jshybugger/lM;->w()Lorg/jshybugger/mt;

    move-result-object v0

    .line 1767
    invoke-virtual {v0}, Lorg/jshybugger/mt;->a()I

    move-result v3

    if-eq v3, v8, :cond_38

    .line 1768
    new-instance v3, Lorg/jshybugger/mI;

    invoke-direct {p0}, Lorg/jshybugger/lM;->h()Z

    move-result v4

    if-nez v4, :cond_36

    :goto_2d
    invoke-direct {v3, v0, v1}, Lorg/jshybugger/mI;-><init>(Lorg/jshybugger/mt;Z)V

    .line 1769
    iget v0, v0, Lorg/jshybugger/mt;->e:I

    iput v0, v3, Lorg/jshybugger/mt;->e:I

    move-object v0, v3

    .line 1809
    :goto_35
    return-object v0

    :cond_36
    move v1, v2

    .line 1768
    goto :goto_2d

    .line 1773
    :cond_38
    new-instance v3, Lorg/jshybugger/mW;

    invoke-direct {v3, v6}, Lorg/jshybugger/mW;-><init>(I)V

    .line 1774
    check-cast v0, Lorg/jshybugger/mV;

    invoke-direct {p0, v0, v3}, Lorg/jshybugger/lM;->a(Lorg/jshybugger/mV;Lorg/jshybugger/mW;)V

    .line 1775
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->h:I

    invoke-virtual {v3, v0}, Lorg/jshybugger/mW;->d(I)V

    .line 1778
    :goto_49
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v0

    if-ne v0, v7, :cond_de

    .line 1779
    iget v0, p0, Lorg/jshybugger/lM;->r:I

    const/high16 v4, 0x20000

    or-int/2addr v0, v4

    iput v0, p0, Lorg/jshybugger/lM;->r:I

    .line 1780
    invoke-direct {p0}, Lorg/jshybugger/lM;->w()Lorg/jshybugger/mt;

    move-result-object v0

    .line 1781
    invoke-virtual {v0}, Lorg/jshybugger/mt;->a()I

    move-result v4

    if-eq v4, v8, :cond_9a

    .line 1782
    new-instance v4, Lorg/jshybugger/mI;

    invoke-direct {p0}, Lorg/jshybugger/lM;->h()Z

    move-result v7

    if-nez v7, :cond_98

    :goto_68
    invoke-direct {v4, v0, v1}, Lorg/jshybugger/mI;-><init>(Lorg/jshybugger/mt;Z)V

    .line 1783
    invoke-direct {p0, v4}, Lorg/jshybugger/lM;->e(Lorg/jshybugger/mt;)V

    move-object v0, v4

    .line 1791
    :goto_6f
    :try_start_6f
    iput-object v3, p0, Lorg/jshybugger/lM;->w:Lorg/jshybugger/mW;

    .line 1792
    if-nez v0, :cond_dc

    .line 1793
    invoke-direct {p0}, Lorg/jshybugger/lM;->o()Lorg/jshybugger/mt;
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_a0

    move-result-object v0

    move-object v1, v0

    .line 1796
    :goto_78
    iput-object v5, p0, Lorg/jshybugger/lM;->w:Lorg/jshybugger/mW;

    .line 1798
    invoke-virtual {v3}, Lorg/jshybugger/mW;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_82
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/mV;

    .line 1799
    iget-object v4, p0, Lorg/jshybugger/lM;->i:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/jshybugger/mV;->k()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_82

    :cond_98
    move v1, v2

    .line 1782
    goto :goto_68

    .line 1786
    :cond_9a
    check-cast v0, Lorg/jshybugger/mV;

    invoke-direct {p0, v0, v3}, Lorg/jshybugger/lM;->a(Lorg/jshybugger/mV;Lorg/jshybugger/mW;)V

    goto :goto_49

    .line 1796
    :catchall_a0
    move-exception v0

    move-object v1, v0

    iput-object v5, p0, Lorg/jshybugger/lM;->w:Lorg/jshybugger/mW;

    .line 1798
    invoke-virtual {v3}, Lorg/jshybugger/mW;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ac
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/mV;

    .line 1799
    iget-object v3, p0, Lorg/jshybugger/lM;->i:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/jshybugger/mV;->k()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ac

    .line 1800
    :cond_c2
    throw v1

    .line 1805
    :cond_c3
    invoke-virtual {v1}, Lorg/jshybugger/mt;->q()Lorg/jshybugger/mt;

    move-result-object v0

    if-nez v0, :cond_d7

    invoke-static {v1}, Lorg/jshybugger/lM;->b(Lorg/jshybugger/mt;)I

    move-result v0

    sub-int/2addr v0, v6

    :goto_ce
    invoke-virtual {v3, v0}, Lorg/jshybugger/mW;->j(I)V

    .line 1808
    invoke-virtual {v3, v1}, Lorg/jshybugger/mW;->a(Lorg/jshybugger/mt;)V

    move-object v0, v3

    .line 1809
    goto/16 :goto_35

    .line 1805
    :cond_d7
    invoke-static {v1}, Lorg/jshybugger/lM;->b(Lorg/jshybugger/mt;)I

    move-result v0

    goto :goto_ce

    :cond_dc
    move-object v1, v0

    goto :goto_78

    :cond_de
    move-object v0, v5

    goto :goto_6f
.end method

.method private w()Lorg/jshybugger/mt;
    .registers 8

    .prologue
    const/16 v6, 0x59

    .line 2012
    invoke-direct {p0}, Lorg/jshybugger/lM;->x()Lorg/jshybugger/mt;

    move-result-object v0

    .line 2013
    invoke-virtual {v0}, Lorg/jshybugger/mt;->n()I

    move-result v2

    .line 2014
    :goto_a
    invoke-direct {p0, v6}, Lorg/jshybugger/lM;->a(I)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 2015
    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v1, Lorg/jshybugger/mb;->l:I

    .line 2016
    iget-object v1, p0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    iget-boolean v1, v1, Lorg/jshybugger/kI;->i:Z

    if-eqz v1, :cond_2c

    invoke-virtual {v0}, Lorg/jshybugger/mt;->i()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 2017
    const-string v1, "msg.no.side.effects"

    const-string v4, ""

    invoke-static {v0}, Lorg/jshybugger/lM;->f(Lorg/jshybugger/mt;)I

    move-result v5

    sub-int/2addr v5, v2

    invoke-direct {p0, v1, v4, v2, v5}, Lorg/jshybugger/lM;->a(Ljava/lang/String;Ljava/lang/String;II)V

    .line 2019
    :cond_2c
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v1

    const/16 v4, 0x48

    if-ne v1, v4, :cond_3a

    .line 2020
    const-string v1, "msg.yield.parenthesized"

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    :cond_3a
    new-instance v1, Lorg/jshybugger/mS;

    invoke-direct {p0}, Lorg/jshybugger/lM;->x()Lorg/jshybugger/mt;

    move-result-object v4

    invoke-direct {v1, v6, v0, v4, v3}, Lorg/jshybugger/mS;-><init>(ILorg/jshybugger/mt;Lorg/jshybugger/mt;I)V

    move-object v0, v1

    .line 2022
    goto :goto_a

    .line 2023
    :cond_45
    return-object v0
.end method

.method private x()Lorg/jshybugger/mt;
    .registers 10

    .prologue
    .line 2029
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v0

    .line 2030
    const/16 v1, 0x48

    if-ne v0, v1, :cond_e

    .line 2031
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/jshybugger/lM;->a(IZ)Lorg/jshybugger/mt;

    move-result-object v0

    .line 2056
    :cond_d
    :goto_d
    return-object v0

    .line 2033
    :cond_e
    invoke-direct {p0}, Lorg/jshybugger/lM;->y()Lorg/jshybugger/mt;

    move-result-object v2

    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lorg/jshybugger/lM;->a(I)Z

    move-result v0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v3, v0, Lorg/jshybugger/mb;->h:I

    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v4, v0, Lorg/jshybugger/mb;->l:I

    const/4 v0, -0x1

    invoke-direct {p0}, Lorg/jshybugger/lM;->x()Lorg/jshybugger/mt;

    move-result-object v5

    const/16 v1, 0x67

    const-string v6, "msg.no.colon.cond"

    invoke-direct {p0, v1, v6}, Lorg/jshybugger/lM;->a(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->l:I

    :cond_35
    invoke-direct {p0}, Lorg/jshybugger/lM;->x()Lorg/jshybugger/mt;

    move-result-object v6

    invoke-virtual {v2}, Lorg/jshybugger/mt;->n()I

    move-result v7

    invoke-static {v6}, Lorg/jshybugger/lM;->b(Lorg/jshybugger/mt;)I

    move-result v1

    sub-int v8, v1, v7

    new-instance v1, Lorg/jshybugger/mA;

    invoke-direct {v1, v7, v8}, Lorg/jshybugger/mA;-><init>(II)V

    invoke-virtual {v1, v3}, Lorg/jshybugger/mA;->d(I)V

    invoke-virtual {v1, v2}, Lorg/jshybugger/mA;->a(Lorg/jshybugger/mt;)V

    invoke-virtual {v1, v5}, Lorg/jshybugger/mA;->b(Lorg/jshybugger/mt;)V

    invoke-virtual {v1, v6}, Lorg/jshybugger/mA;->e(Lorg/jshybugger/mt;)V

    sub-int v2, v4, v7

    invoke-virtual {v1, v2}, Lorg/jshybugger/mA;->e(I)V

    sub-int/2addr v0, v7

    invoke-virtual {v1, v0}, Lorg/jshybugger/mA;->f(I)V

    move-object v0, v1

    .line 2034
    :goto_5e
    invoke-direct {p0}, Lorg/jshybugger/lM;->d()I

    move-result v2

    .line 2035
    const/16 v1, 0x5a

    if-gt v1, v2, :cond_88

    const/16 v1, 0x65

    if-gt v2, v1, :cond_88

    .line 2036
    const/4 v1, 0x0

    iput v1, p0, Lorg/jshybugger/lM;->r:I

    .line 2039
    invoke-direct {p0}, Lorg/jshybugger/lM;->c()Lorg/jshybugger/mz;

    move-result-object v3

    .line 2041
    invoke-direct {p0, v0}, Lorg/jshybugger/lM;->g(Lorg/jshybugger/mt;)V

    .line 2042
    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v4, v1, Lorg/jshybugger/mb;->l:I

    .line 2044
    new-instance v1, Lorg/jshybugger/ms;

    invoke-direct {p0}, Lorg/jshybugger/lM;->x()Lorg/jshybugger/mt;

    move-result-object v5

    invoke-direct {v1, v2, v0, v5, v4}, Lorg/jshybugger/ms;-><init>(ILorg/jshybugger/mt;Lorg/jshybugger/mt;I)V

    .line 2046
    if-eqz v3, :cond_86

    .line 2047
    invoke-virtual {v1, v3}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/mz;)V

    :cond_86
    move-object v0, v1

    .line 2049
    goto :goto_d

    :cond_88
    const/16 v1, 0x52

    if-ne v2, v1, :cond_d

    .line 2052
    iget-object v1, p0, Lorg/jshybugger/lM;->v:Lorg/jshybugger/mz;

    if-eqz v1, :cond_d

    .line 2053
    invoke-direct {p0}, Lorg/jshybugger/lM;->c()Lorg/jshybugger/mz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/mz;)V

    goto/16 :goto_d

    :cond_99
    move-object v0, v2

    goto :goto_5e
.end method

.method private y()Lorg/jshybugger/mt;
    .registers 6

    .prologue
    const/16 v4, 0x68

    .line 2086
    invoke-direct {p0}, Lorg/jshybugger/lM;->z()Lorg/jshybugger/mt;

    move-result-object v1

    .line 2087
    invoke-direct {p0, v4}, Lorg/jshybugger/lM;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2088
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v0, Lorg/jshybugger/mb;->l:I

    .line 2089
    new-instance v0, Lorg/jshybugger/mS;

    invoke-direct {p0}, Lorg/jshybugger/lM;->y()Lorg/jshybugger/mt;

    move-result-object v3

    invoke-direct {v0, v4, v1, v3, v2}, Lorg/jshybugger/mS;-><init>(ILorg/jshybugger/mt;Lorg/jshybugger/mt;I)V

    .line 2091
    :goto_19
    return-object v0

    :cond_1a
    move-object v0, v1

    goto :goto_19
.end method

.method private z()Lorg/jshybugger/mt;
    .registers 7

    .prologue
    const/16 v5, 0x69

    const/16 v4, 0x9

    .line 2097
    invoke-direct {p0}, Lorg/jshybugger/lM;->A()Lorg/jshybugger/mt;

    move-result-object v0

    :goto_8
    invoke-direct {p0, v4}, Lorg/jshybugger/lM;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v1, Lorg/jshybugger/mb;->l:I

    new-instance v1, Lorg/jshybugger/mS;

    invoke-direct {p0}, Lorg/jshybugger/lM;->A()Lorg/jshybugger/mt;

    move-result-object v3

    invoke-direct {v1, v4, v0, v3, v2}, Lorg/jshybugger/mS;-><init>(ILorg/jshybugger/mt;Lorg/jshybugger/mt;I)V

    move-object v0, v1

    goto :goto_8

    .line 2098
    :cond_1d
    invoke-direct {p0, v5}, Lorg/jshybugger/lM;->a(I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2099
    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v1, Lorg/jshybugger/mb;->l:I

    .line 2100
    new-instance v1, Lorg/jshybugger/mS;

    invoke-direct {p0}, Lorg/jshybugger/lM;->z()Lorg/jshybugger/mt;

    move-result-object v3

    invoke-direct {v1, v5, v0, v3, v2}, Lorg/jshybugger/mS;-><init>(ILorg/jshybugger/mt;Lorg/jshybugger/mt;I)V

    move-object v0, v1

    .line 2102
    :cond_31
    return-object v0
.end method


# virtual methods
.method final a(ILorg/jshybugger/lH;Lorg/jshybugger/lH;)Lorg/jshybugger/lH;
    .registers 7

    .prologue
    .line 3587
    iget-object v0, p0, Lorg/jshybugger/lM;->e:Lorg/jshybugger/nk;

    invoke-virtual {v0}, Lorg/jshybugger/nk;->B()Ljava/lang/String;

    move-result-object v0

    .line 3588
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jshybugger/lM;->a(ILorg/jshybugger/lH;Lorg/jshybugger/lH;Ljava/lang/String;)Lorg/jshybugger/lH;

    move-result-object v1

    .line 3590
    invoke-virtual {v1}, Lorg/jshybugger/lH;->c()Lorg/jshybugger/lH;

    move-result-object v2

    .line 3591
    invoke-virtual {p0, v0}, Lorg/jshybugger/lM;->b(Ljava/lang/String;)Lorg/jshybugger/lH;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/jshybugger/lH;->b(Lorg/jshybugger/lH;)V

    .line 3592
    return-object v1
.end method

.method protected final a(Lorg/jshybugger/lH;Lorg/jshybugger/lH;)Lorg/jshybugger/lH;
    .registers 8

    .prologue
    .line 3794
    invoke-virtual {p1}, Lorg/jshybugger/lH;->a()I

    move-result v4

    .line 3795
    sparse-switch v4, :sswitch_data_8e

    .line 3845
    invoke-direct {p0}, Lorg/jshybugger/lM;->T()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 3797
    :sswitch_c
    iget-boolean v0, p0, Lorg/jshybugger/lM;->d:Z

    if-eqz v0, :cond_2b

    const-string v1, "eval"

    move-object v0, p1

    check-cast v0, Lorg/jshybugger/mZ;

    invoke-virtual {v0}, Lorg/jshybugger/mZ;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 3800
    const-string v1, "msg.bad.id.strict"

    move-object v0, p1

    check-cast v0, Lorg/jshybugger/mZ;

    invoke-virtual {v0}, Lorg/jshybugger/mZ;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3803
    :cond_2b
    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lorg/jshybugger/lH;->a(I)Lorg/jshybugger/lH;

    .line 3804
    new-instance v0, Lorg/jshybugger/lH;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1, p2}, Lorg/jshybugger/lH;-><init>(ILorg/jshybugger/lH;Lorg/jshybugger/lH;)V

    .line 3841
    :goto_37
    return-object v0

    .line 3813
    :sswitch_38
    instance-of v0, p1, Lorg/jshybugger/ng;

    if-eqz v0, :cond_5d

    move-object v0, p1

    .line 3814
    check-cast v0, Lorg/jshybugger/ng;

    invoke-virtual {v0}, Lorg/jshybugger/ng;->m()Lorg/jshybugger/mt;

    move-result-object v0

    .line 3815
    check-cast p1, Lorg/jshybugger/ng;

    invoke-virtual {p1}, Lorg/jshybugger/ng;->s()Lorg/jshybugger/mZ;

    move-result-object v1

    move-object v2, v0

    move-object v3, v1

    .line 3825
    :goto_4b
    const/16 v0, 0x21

    if-ne v4, v0, :cond_7c

    .line 3826
    const/16 v0, 0x23

    .line 3832
    const/16 v1, 0x29

    invoke-virtual {v3, v1}, Lorg/jshybugger/lH;->a(I)Lorg/jshybugger/lH;

    .line 3836
    :goto_56
    new-instance v1, Lorg/jshybugger/lH;

    invoke-direct {v1, v0, v2, v3, p2}, Lorg/jshybugger/lH;-><init>(ILorg/jshybugger/lH;Lorg/jshybugger/lH;Lorg/jshybugger/lH;)V

    move-object v0, v1

    goto :goto_37

    .line 3816
    :cond_5d
    instance-of v0, p1, Lorg/jshybugger/mE;

    if-eqz v0, :cond_71

    move-object v0, p1

    .line 3817
    check-cast v0, Lorg/jshybugger/mE;

    invoke-virtual {v0}, Lorg/jshybugger/mE;->k()Lorg/jshybugger/mt;

    move-result-object v0

    .line 3818
    check-cast p1, Lorg/jshybugger/mE;

    invoke-virtual {p1}, Lorg/jshybugger/mE;->l()Lorg/jshybugger/mt;

    move-result-object v1

    move-object v2, v0

    move-object v3, v1

    goto :goto_4b

    .line 3821
    :cond_71
    invoke-virtual {p1}, Lorg/jshybugger/lH;->b()Lorg/jshybugger/lH;

    move-result-object v0

    .line 3822
    invoke-virtual {p1}, Lorg/jshybugger/lH;->c()Lorg/jshybugger/lH;

    move-result-object v1

    move-object v2, v0

    move-object v3, v1

    goto :goto_4b

    .line 3834
    :cond_7c
    const/16 v0, 0x25

    goto :goto_56

    .line 3839
    :sswitch_7f
    invoke-virtual {p1}, Lorg/jshybugger/lH;->b()Lorg/jshybugger/lH;

    move-result-object v1

    .line 3840
    invoke-virtual {p0, v1}, Lorg/jshybugger/lM;->a(Lorg/jshybugger/lH;)V

    .line 3841
    new-instance v0, Lorg/jshybugger/lH;

    const/16 v2, 0x44

    invoke-direct {v0, v2, v1, p2}, Lorg/jshybugger/lH;-><init>(ILorg/jshybugger/lH;Lorg/jshybugger/lH;)V

    goto :goto_37

    .line 3795
    :sswitch_data_8e
    .sparse-switch
        0x21 -> :sswitch_38
        0x24 -> :sswitch_38
        0x27 -> :sswitch_c
        0x43 -> :sswitch_7f
    .end sparse-switch
.end method

.method public final a(Ljava/io/Reader;Ljava/lang/String;I)Lorg/jshybugger/mv;
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 495
    iget-boolean v0, p0, Lorg/jshybugger/lM;->p:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "parser reused"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_d
    iget-object v0, p0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    .line 497
    :try_start_f
    iput-object p2, p0, Lorg/jshybugger/lM;->n:Ljava/lang/String;

    .line 501
    new-instance v0, Lorg/jshybugger/mb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p3}, Lorg/jshybugger/mb;-><init>(Lorg/jshybugger/lM;Ljava/io/Reader;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    .line 502
    invoke-direct {p0}, Lorg/jshybugger/lM;->k()Lorg/jshybugger/mv;
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_20

    move-result-object v0

    .line 504
    iput-boolean v2, p0, Lorg/jshybugger/lM;->p:Z

    return-object v0

    :catchall_20
    move-exception v0

    iput-boolean v2, p0, Lorg/jshybugger/lM;->p:Z

    throw v0
.end method

.method final a()V
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, Lorg/jshybugger/lM;->f:Lorg/jshybugger/nj;

    invoke-virtual {v0}, Lorg/jshybugger/nj;->x()Lorg/jshybugger/nj;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/lM;->f:Lorg/jshybugger/nj;

    .line 421
    return-void
.end method

.method final a(ILjava/lang/String;Z)V
    .registers 11

    .prologue
    const/16 v6, 0x99

    const/16 v5, 0x7a

    const/16 v4, 0x9a

    .line 1946
    if-nez p2, :cond_d

    .line 1947
    iget-object v0, p0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    .line 1948
    invoke-direct {p0}, Lorg/jshybugger/lM;->T()Ljava/lang/RuntimeException;

    .line 1953
    :cond_d
    iget-object v0, p0, Lorg/jshybugger/lM;->f:Lorg/jshybugger/nj;

    invoke-virtual {v0, p2}, Lorg/jshybugger/nj;->b(Ljava/lang/String;)Lorg/jshybugger/nj;

    move-result-object v2

    .line 1954
    if-eqz v2, :cond_32

    invoke-virtual {v2, p2}, Lorg/jshybugger/nj;->c(Ljava/lang/String;)Lorg/jshybugger/no;

    move-result-object v0

    move-object v1, v0

    .line 1957
    :goto_1a
    if-eqz v1, :cond_35

    iget v0, v1, Lorg/jshybugger/no;->a:I

    .line 1958
    :goto_1e
    if-eqz v1, :cond_4b

    if-eq v0, v4, :cond_2a

    if-eq p1, v4, :cond_2a

    iget-object v3, p0, Lorg/jshybugger/lM;->f:Lorg/jshybugger/nj;

    if-ne v2, v3, :cond_4b

    if-ne v0, v6, :cond_4b

    .line 1963
    :cond_2a
    if-ne v0, v4, :cond_37

    const-string v0, "msg.const.redecl"

    :goto_2e
    invoke-direct {p0, v0, p2}, Lorg/jshybugger/lM;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    :cond_31
    :goto_31
    return-void

    .line 1954
    :cond_32
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1a

    .line 1957
    :cond_35
    const/4 v0, -0x1

    goto :goto_1e

    .line 1963
    :cond_37
    if-ne v0, v6, :cond_3c

    const-string v0, "msg.let.redecl"

    goto :goto_2e

    :cond_3c
    if-ne v0, v5, :cond_41

    const-string v0, "msg.var.redecl"

    goto :goto_2e

    :cond_41
    const/16 v1, 0x6d

    if-ne v0, v1, :cond_48

    const-string v0, "msg.fn.redecl"

    goto :goto_2e

    :cond_48
    const-string v0, "msg.parm.redecl"

    goto :goto_2e

    .line 1970
    :cond_4b
    sparse-switch p1, :sswitch_data_a8

    .line 2005
    invoke-direct {p0}, Lorg/jshybugger/lM;->T()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1972
    :sswitch_53
    if-nez p3, :cond_6b

    iget-object v0, p0, Lorg/jshybugger/lM;->f:Lorg/jshybugger/nj;

    invoke-virtual {v0}, Lorg/jshybugger/nj;->a()I

    move-result v0

    const/16 v1, 0x70

    if-eq v0, v1, :cond_65

    iget-object v0, p0, Lorg/jshybugger/lM;->f:Lorg/jshybugger/nj;

    instance-of v0, v0, Lorg/jshybugger/mY;

    if-eqz v0, :cond_6b

    .line 1975
    :cond_65
    const-string v0, "msg.let.decl.not.in.block"

    invoke-virtual {p0, v0}, Lorg/jshybugger/lM;->a(Ljava/lang/String;)V

    goto :goto_31

    .line 1978
    :cond_6b
    iget-object v0, p0, Lorg/jshybugger/lM;->f:Lorg/jshybugger/nj;

    new-instance v1, Lorg/jshybugger/no;

    invoke-direct {v1, p1, p2}, Lorg/jshybugger/no;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/jshybugger/nj;->a(Lorg/jshybugger/no;)V

    goto :goto_31

    .line 1984
    :sswitch_76
    if-eqz v1, :cond_8a

    .line 1985
    if-ne v0, v5, :cond_80

    .line 1986
    const-string v0, "msg.var.redecl"

    invoke-direct {p0, v0, p2}, Lorg/jshybugger/lM;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    .line 1987
    :cond_80
    const/16 v1, 0x57

    if-ne v0, v1, :cond_31

    .line 1988
    const-string v0, "msg.var.hides.arg"

    invoke-direct {p0, v0, p2}, Lorg/jshybugger/lM;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    .line 1991
    :cond_8a
    iget-object v0, p0, Lorg/jshybugger/lM;->e:Lorg/jshybugger/nk;

    new-instance v1, Lorg/jshybugger/no;

    invoke-direct {v1, p1, p2}, Lorg/jshybugger/no;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/jshybugger/nk;->a(Lorg/jshybugger/no;)V

    goto :goto_31

    .line 1996
    :sswitch_95
    if-eqz v1, :cond_9c

    .line 1999
    const-string v0, "msg.dup.parms"

    invoke-virtual {p0, v0, p2}, Lorg/jshybugger/lM;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2001
    :cond_9c
    iget-object v0, p0, Lorg/jshybugger/lM;->e:Lorg/jshybugger/nk;

    new-instance v1, Lorg/jshybugger/no;

    invoke-direct {v1, p1, p2}, Lorg/jshybugger/no;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/jshybugger/nk;->a(Lorg/jshybugger/no;)V

    goto :goto_31

    .line 1970
    nop

    :sswitch_data_a8
    .sparse-switch
        0x57 -> :sswitch_95
        0x6d -> :sswitch_76
        0x7a -> :sswitch_76
        0x99 -> :sswitch_53
        0x9a -> :sswitch_76
    .end sparse-switch
.end method

.method final a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 162
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->l:I

    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->m:I

    iget-object v2, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v2, Lorg/jshybugger/mb;->l:I

    sub-int/2addr v1, v2

    invoke-direct {p0, p1, v0, v1}, Lorg/jshybugger/lM;->a(Ljava/lang/String;II)V

    .line 163
    return-void
.end method

.method protected final a(Ljava/lang/String;I)V
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 3383
    invoke-direct {p0}, Lorg/jshybugger/lM;->h()Z

    move-result v1

    if-nez v1, :cond_8

    .line 3403
    :cond_7
    :goto_7
    return-void

    .line 3386
    :cond_8
    const/4 v1, 0x0

    .line 3387
    const-string v2, "arguments"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    iget-object v2, p0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    iget-object v2, v2, Lorg/jshybugger/kI;->l:Ljava/util/Set;

    if-eqz v2, :cond_27

    iget-object v2, p0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    iget-object v2, v2, Lorg/jshybugger/kI;->l:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 3400
    :cond_21
    :goto_21
    if-eqz v0, :cond_7

    .line 3401
    invoke-virtual {p0}, Lorg/jshybugger/lM;->b()V

    goto :goto_7

    .line 3392
    :cond_27
    const-string v2, "length"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 3393
    const/16 v2, 0x21

    if-ne p2, v2, :cond_3b

    iget-object v2, p0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    iget v2, v2, Lorg/jshybugger/kI;->b:I

    const/16 v3, 0x78

    if-eq v2, v3, :cond_21

    :cond_3b
    move v0, v1

    goto :goto_21
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v0, -0x1

    .line 135
    .line 136
    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    if-eqz v1, :cond_16

    .line 137
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v0, Lorg/jshybugger/mb;->l:I

    .line 138
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->m:I

    iget-object v2, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v2, Lorg/jshybugger/mb;->l:I

    sub-int/2addr v0, v2

    .line 140
    :goto_12
    invoke-direct {p0, p1, p2, v1, v0}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;II)V

    .line 141
    return-void

    :cond_16
    move v1, v0

    goto :goto_12
.end method

.method protected final a(Lorg/jshybugger/lH;)V
    .registers 4

    .prologue
    .line 3849
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/jshybugger/lH;->a(II)I

    move-result v0

    .line 3850
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_11

    .line 3851
    const-string v0, "msg.bad.assign.left"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3853
    :cond_11
    return-void
.end method

.method final a(Lorg/jshybugger/nj;)V
    .registers 4

    .prologue
    .line 407
    invoke-virtual {p1}, Lorg/jshybugger/nj;->x()Lorg/jshybugger/nj;

    move-result-object v0

    .line 410
    if-eqz v0, :cond_10

    .line 411
    iget-object v1, p0, Lorg/jshybugger/lM;->f:Lorg/jshybugger/nj;

    if-eq v0, v1, :cond_d

    .line 412
    invoke-direct {p0}, Lorg/jshybugger/lM;->T()Ljava/lang/RuntimeException;

    .line 416
    :cond_d
    :goto_d
    iput-object p1, p0, Lorg/jshybugger/lM;->f:Lorg/jshybugger/nj;

    .line 417
    return-void

    .line 414
    :cond_10
    iget-object v0, p0, Lorg/jshybugger/lM;->f:Lorg/jshybugger/nj;

    invoke-virtual {v0, p1}, Lorg/jshybugger/nj;->b(Lorg/jshybugger/nj;)V

    goto :goto_d
.end method

.method protected final b(Ljava/lang/String;)Lorg/jshybugger/lH;
    .registers 3

    .prologue
    const/16 v0, 0x27

    .line 3740
    invoke-virtual {p0, p1, v0}, Lorg/jshybugger/lM;->a(Ljava/lang/String;I)V

    .line 3741
    invoke-static {v0, p1}, Lorg/jshybugger/lH;->a(ILjava/lang/String;)Lorg/jshybugger/lH;

    move-result-object v0

    return-object v0
.end method

.method protected final b()V
    .registers 2

    .prologue
    .line 3406
    invoke-direct {p0}, Lorg/jshybugger/lM;->h()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3407
    iget-object v0, p0, Lorg/jshybugger/lM;->e:Lorg/jshybugger/nk;

    check-cast v0, Lorg/jshybugger/mM;

    invoke-virtual {v0}, Lorg/jshybugger/mM;->t()V

    .line 3409
    :cond_d
    return-void
.end method

.method final b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 207
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    if-nez v0, :cond_9

    .line 208
    invoke-direct {p0, p1, v1, v1}, Lorg/jshybugger/lM;->b(Ljava/lang/String;II)V

    .line 213
    :goto_8
    return-void

    .line 210
    :cond_9
    iget-object v0, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v0, v0, Lorg/jshybugger/mb;->l:I

    iget-object v1, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v1, v1, Lorg/jshybugger/mb;->m:I

    iget-object v2, p0, Lorg/jshybugger/lM;->q:Lorg/jshybugger/mb;

    iget v2, v2, Lorg/jshybugger/mb;->l:I

    sub-int/2addr v1, v2

    invoke-direct {p0, p1, v0, v1}, Lorg/jshybugger/lM;->b(Ljava/lang/String;II)V

    goto :goto_8
.end method
