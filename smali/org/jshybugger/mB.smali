.class final Lorg/jshybugger/mb;
.super Ljava/lang/Object;
.source "TokenStream.java"


# instance fields
.field private A:I

.field private B:I

.field private C:Lorg/jshybugger/lM;

.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:D

.field d:Z

.field e:I

.field final f:[I

.field g:I

.field h:I

.field i:Ljava/lang/String;

.field j:[C

.field k:I

.field l:I

.field m:I

.field n:Lorg/jshybugger/ma;

.field o:Z

.field p:Z

.field q:I

.field r:Ljava/lang/String;

.field s:I

.field private t:Z

.field private u:[C

.field private v:I

.field private w:Lorg/jshybugger/lL;

.field private x:I

.field private y:I

.field private z:Ljava/io/Reader;


# direct methods
.method constructor <init>(Lorg/jshybugger/lM;Ljava/io/Reader;Ljava/lang/String;I)V
    .registers 9

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1558
    const-string v0, ""

    iput-object v0, p0, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    .line 1565
    const/16 v0, 0x80

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/jshybugger/mb;->u:[C

    .line 1567
    new-instance v0, Lorg/jshybugger/lL;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/jshybugger/lL;-><init>(I)V

    iput-object v0, p0, Lorg/jshybugger/mb;->w:Lorg/jshybugger/lL;

    .line 1570
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jshybugger/mb;->f:[I

    .line 1573
    iput v2, p0, Lorg/jshybugger/mb;->x:I

    .line 1576
    iput v3, p0, Lorg/jshybugger/mb;->y:I

    .line 1607
    const-string v0, ""

    iput-object v0, p0, Lorg/jshybugger/mb;->r:Ljava/lang/String;

    .line 1608
    iput v3, p0, Lorg/jshybugger/mb;->s:I

    .line 38
    iput-object p1, p0, Lorg/jshybugger/mb;->C:Lorg/jshybugger/lM;

    .line 39
    iput p4, p0, Lorg/jshybugger/mb;->h:I

    .line 40
    if-eqz p2, :cond_41

    .line 41
    if-eqz p3, :cond_32

    invoke-static {}, Lorg/jshybugger/lh;->a()Ljava/lang/RuntimeException;

    .line 42
    :cond_32
    iput-object p2, p0, Lorg/jshybugger/mb;->z:Ljava/io/Reader;

    .line 43
    const/16 v0, 0x200

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/jshybugger/mb;->j:[C

    .line 44
    iput v2, p0, Lorg/jshybugger/mb;->A:I

    .line 50
    :goto_3c
    iput v2, p0, Lorg/jshybugger/mb;->k:I

    iput v2, p0, Lorg/jshybugger/mb;->B:I

    .line 51
    return-void

    .line 46
    :cond_41
    if-nez p3, :cond_46

    invoke-static {}, Lorg/jshybugger/lh;->a()Ljava/lang/RuntimeException;

    .line 47
    :cond_46
    iput-object p3, p0, Lorg/jshybugger/mb;->i:Ljava/lang/String;

    .line 48
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/jshybugger/mb;->A:I

    goto :goto_3c
.end method

.method private a(Z)I
    .registers 8

    .prologue
    const/16 v5, 0xd

    const/4 v2, -0x1

    const/16 v1, 0xa

    .line 1275
    iget v0, p0, Lorg/jshybugger/mb;->g:I

    if-eqz v0, :cond_38

    .line 1276
    iget v0, p0, Lorg/jshybugger/mb;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jshybugger/mb;->k:I

    .line 1277
    iget-object v0, p0, Lorg/jshybugger/mb;->f:[I

    iget v1, p0, Lorg/jshybugger/mb;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jshybugger/mb;->g:I

    aget v0, v0, v1

    .line 1325
    :cond_19
    :goto_19
    return v0

    .line 1287
    :cond_1a
    iget v0, p0, Lorg/jshybugger/mb;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jshybugger/mb;->k:I

    .line 1288
    iget-object v0, p0, Lorg/jshybugger/mb;->i:Ljava/lang/String;

    iget v3, p0, Lorg/jshybugger/mb;->B:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/jshybugger/mb;->B:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1300
    :goto_2c
    iget v3, p0, Lorg/jshybugger/mb;->y:I

    if-ltz v3, :cond_71

    .line 1301
    iget v3, p0, Lorg/jshybugger/mb;->y:I

    if-ne v3, v5, :cond_63

    if-ne v0, v1, :cond_63

    .line 1302
    iput v1, p0, Lorg/jshybugger/mb;->y:I

    .line 1282
    :cond_38
    iget-object v0, p0, Lorg/jshybugger/mb;->i:Ljava/lang/String;

    if-eqz v0, :cond_44

    .line 1283
    iget v0, p0, Lorg/jshybugger/mb;->B:I

    iget v3, p0, Lorg/jshybugger/mb;->A:I

    if-ne v0, v3, :cond_1a

    move v0, v2

    .line 1284
    goto :goto_19

    .line 1290
    :cond_44
    iget v0, p0, Lorg/jshybugger/mb;->B:I

    iget v3, p0, Lorg/jshybugger/mb;->A:I

    if-ne v0, v3, :cond_52

    .line 1291
    invoke-direct {p0}, Lorg/jshybugger/mb;->j()Z

    move-result v0

    if-nez v0, :cond_52

    move v0, v2

    .line 1292
    goto :goto_19

    .line 1296
    :cond_52
    iget v0, p0, Lorg/jshybugger/mb;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jshybugger/mb;->k:I

    .line 1297
    iget-object v0, p0, Lorg/jshybugger/mb;->j:[C

    iget v3, p0, Lorg/jshybugger/mb;->B:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/jshybugger/mb;->B:I

    aget-char v0, v0, v3

    goto :goto_2c

    .line 1305
    :cond_63
    iput v2, p0, Lorg/jshybugger/mb;->y:I

    .line 1306
    iget v3, p0, Lorg/jshybugger/mb;->B:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/jshybugger/mb;->x:I

    .line 1307
    iget v3, p0, Lorg/jshybugger/mb;->h:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/jshybugger/mb;->h:I

    .line 1310
    :cond_71
    const/16 v3, 0x7f

    if-gt v0, v3, :cond_7d

    .line 1311
    if-eq v0, v1, :cond_79

    if-ne v0, v5, :cond_19

    .line 1312
    :cond_79
    iput v0, p0, Lorg/jshybugger/mb;->y:I

    move v0, v1

    .line 1313
    goto :goto_19

    .line 1316
    :cond_7d
    const v3, 0xfeff

    if-eq v0, v3, :cond_19

    .line 1317
    if-eqz p1, :cond_8a

    invoke-static {v0}, Lorg/jshybugger/mb;->d(I)Z

    move-result v3

    if-nez v3, :cond_38

    .line 1318
    :cond_8a
    invoke-static {v0}, Lorg/jshybugger/lS;->a(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1321
    iput v0, p0, Lorg/jshybugger/mb;->y:I

    move v0, v1

    .line 1322
    goto :goto_19
.end method

.method static a(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 79
    invoke-static {p0}, Lorg/jshybugger/mb;->b(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static b(Ljava/lang/String;)I
    .registers 10

    .prologue
    const/16 v3, 0x72

    const/4 v7, 0x2

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/16 v1, 0x7f

    .line 87
    .line 154
    const/4 v2, 0x0

    .line 155
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    packed-switch v4, :pswitch_data_2f4

    :cond_f
    :pswitch_f
    move v1, v0

    .line 250
    :goto_10
    if-eqz v2, :cond_1b

    if-eq v2, p0, :cond_1b

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    move v1, v0

    .line 254
    :cond_1b
    :goto_1b
    if-nez v1, :cond_2f0

    .line 255
    :goto_1d
    return v0

    .line 156
    :pswitch_1e
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 157
    const/16 v3, 0x66

    if-ne v1, v3, :cond_31

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x69

    if-ne v1, v3, :cond_f

    const/16 v1, 0x70

    goto :goto_1b

    .line 158
    :cond_31
    const/16 v3, 0x6e

    if-ne v1, v3, :cond_40

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x69

    if-ne v1, v3, :cond_f

    const/16 v1, 0x34

    goto :goto_1b

    .line 159
    :cond_40
    const/16 v3, 0x6f

    if-ne v1, v3, :cond_f

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x64

    if-ne v1, v3, :cond_f

    const/16 v1, 0x76

    goto :goto_1b

    .line 161
    :pswitch_4f
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_30e

    move v1, v0

    .line 168
    goto :goto_10

    .line 162
    :sswitch_58
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_f

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x6f

    if-ne v1, v3, :cond_f

    const/16 v1, 0x77

    goto :goto_1b

    .line 163
    :sswitch_69
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x74

    if-ne v3, v4, :cond_f

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x6e

    if-ne v3, v4, :cond_f

    goto :goto_1b

    .line 164
    :sswitch_7a
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x74

    if-ne v1, v3, :cond_f

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x65

    if-ne v1, v3, :cond_f

    const/16 v1, 0x99

    goto :goto_1b

    .line 165
    :sswitch_8d
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x77

    if-ne v1, v3, :cond_f

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x65

    if-ne v1, v3, :cond_f

    const/16 v1, 0x1e

    goto/16 :goto_1b

    .line 166
    :sswitch_a1
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x79

    if-ne v1, v4, :cond_f

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_f

    const/16 v1, 0x51

    goto/16 :goto_1b

    .line 167
    :sswitch_b3
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_f

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x61

    if-ne v1, v3, :cond_f

    const/16 v1, 0x7a

    goto/16 :goto_1b

    .line 169
    :pswitch_c5
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_328

    move v1, v0

    .line 188
    goto/16 :goto_10

    .line 170
    :sswitch_cf
    const-string v2, "byte"

    goto/16 :goto_10

    .line 171
    :sswitch_d3
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 172
    const/16 v5, 0x65

    if-ne v4, v5, :cond_f0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x73

    if-ne v1, v3, :cond_f

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x61

    if-ne v1, v3, :cond_f

    const/16 v1, 0x73

    goto/16 :goto_1b

    .line 173
    :cond_f0
    if-ne v4, v3, :cond_f

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x61

    if-ne v3, v4, :cond_f

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x68

    if-ne v3, v4, :cond_f

    goto/16 :goto_1b

    .line 175
    :sswitch_104
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 176
    const/16 v4, 0x65

    if-ne v3, v4, :cond_121

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x73

    if-ne v1, v3, :cond_f

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_f

    const/16 v1, 0x71

    goto/16 :goto_1b

    .line 177
    :cond_121
    const/16 v4, 0x6d

    if-ne v3, v4, :cond_f

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x75

    if-ne v3, v4, :cond_f

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x6e

    if-ne v3, v4, :cond_f

    goto/16 :goto_1b

    .line 179
    :sswitch_137
    const-string v2, "goto"

    goto/16 :goto_10

    .line 180
    :sswitch_13b
    const-string v2, "long"

    goto/16 :goto_10

    .line 181
    :sswitch_13f
    const-string v1, "null"

    const/16 v2, 0x2a

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_10

    .line 182
    :sswitch_148
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 183
    const/16 v4, 0x65

    if-ne v1, v4, :cond_163

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x75

    if-ne v1, v4, :cond_f

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_f

    const/16 v1, 0x2d

    goto/16 :goto_1b

    .line 184
    :cond_163
    const/16 v3, 0x73

    if-ne v1, v3, :cond_f

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x69

    if-ne v1, v3, :cond_f

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x68

    if-ne v1, v3, :cond_f

    const/16 v1, 0x2b

    goto/16 :goto_1b

    .line 186
    :sswitch_17b
    const-string v1, "void"

    const/16 v2, 0x7e

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_10

    .line 187
    :sswitch_184
    const-string v1, "with"

    const/16 v2, 0x7b

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_10

    .line 189
    :pswitch_18d
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_34e

    :pswitch_194
    move v1, v0

    .line 208
    goto/16 :goto_10

    .line 190
    :pswitch_197
    const-string v2, "class"

    goto/16 :goto_10

    .line 191
    :pswitch_19b
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 192
    const/16 v3, 0x62

    if-ne v1, v3, :cond_1ac

    const-string v1, "break"

    const/16 v2, 0x78

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_10

    .line 193
    :cond_1ac
    const/16 v3, 0x79

    if-ne v1, v3, :cond_f

    const-string v1, "yield"

    const/16 v2, 0x48

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_10

    .line 195
    :pswitch_1b9
    const-string v1, "while"

    const/16 v2, 0x75

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_10

    .line 196
    :pswitch_1c2
    const-string v1, "false"

    const/16 v2, 0x2c

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_10

    .line 197
    :pswitch_1cb
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 198
    const/16 v4, 0x63

    if-ne v3, v4, :cond_1dc

    const-string v1, "const"

    const/16 v2, 0x9a

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_10

    .line 199
    :cond_1dc
    const/16 v4, 0x66

    if-ne v3, v4, :cond_f

    const-string v2, "final"

    goto/16 :goto_10

    .line 201
    :pswitch_1e4
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 202
    const/16 v4, 0x66

    if-ne v3, v4, :cond_1f0

    const-string v2, "float"

    goto/16 :goto_10

    .line 203
    :cond_1f0
    const/16 v4, 0x73

    if-ne v3, v4, :cond_f

    const-string v2, "short"

    goto/16 :goto_10

    .line 205
    :pswitch_1f8
    const-string v2, "super"

    goto/16 :goto_10

    .line 206
    :pswitch_1fc
    const-string v1, "throw"

    const/16 v2, 0x32

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_10

    .line 207
    :pswitch_205
    const-string v1, "catch"

    const/16 v2, 0x7c

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_10

    .line 209
    :pswitch_20e
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_37a

    move v1, v0

    .line 223
    goto/16 :goto_10

    .line 210
    :sswitch_218
    const-string v2, "native"

    goto/16 :goto_10

    .line 211
    :sswitch_21c
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 212
    const/16 v4, 0x64

    if-ne v1, v4, :cond_22d

    const-string v1, "delete"

    const/16 v2, 0x1f

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_10

    .line 213
    :cond_22d
    if-ne v1, v3, :cond_f

    const-string v1, "return"

    const/4 v2, 0x4

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_10

    .line 215
    :sswitch_237
    const-string v2, "throws"

    goto/16 :goto_10

    .line 216
    :sswitch_23b
    const-string v2, "import"

    goto/16 :goto_10

    .line 217
    :sswitch_23f
    const-string v2, "double"

    goto/16 :goto_10

    .line 218
    :sswitch_243
    const-string v2, "static"

    goto/16 :goto_10

    .line 219
    :sswitch_247
    const-string v2, "public"

    goto/16 :goto_10

    .line 220
    :sswitch_24b
    const-string v1, "switch"

    move-object v2, v1

    move v1, v3

    goto/16 :goto_10

    .line 221
    :sswitch_251
    const-string v2, "export"

    goto/16 :goto_10

    .line 222
    :sswitch_255
    const-string v1, "typeof"

    const/16 v2, 0x20

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_10

    .line 224
    :pswitch_25e
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_3a4

    move v1, v0

    .line 231
    goto/16 :goto_10

    .line 225
    :sswitch_268
    const-string v2, "package"

    goto/16 :goto_10

    .line 226
    :sswitch_26c
    const-string v1, "default"

    const/16 v2, 0x74

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_10

    .line 227
    :sswitch_275
    const-string v1, "finally"

    const/16 v2, 0x7d

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_10

    .line 228
    :sswitch_27e
    const-string v2, "boolean"

    goto/16 :goto_10

    .line 229
    :sswitch_282
    const-string v2, "private"

    goto/16 :goto_10

    .line 230
    :sswitch_286
    const-string v2, "extends"

    goto/16 :goto_10

    .line 232
    :pswitch_28a
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_3be

    move v1, v0

    .line 238
    goto/16 :goto_10

    .line 233
    :sswitch_294
    const-string v2, "abstract"

    goto/16 :goto_10

    .line 234
    :sswitch_298
    const-string v1, "continue"

    const/16 v2, 0x79

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_10

    .line 235
    :sswitch_2a1
    const-string v1, "debugger"

    const/16 v2, 0xa0

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_10

    .line 236
    :sswitch_2aa
    const-string v1, "function"

    const/16 v2, 0x6d

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_10

    .line 237
    :sswitch_2b3
    const-string v2, "volatile"

    goto/16 :goto_10

    .line 239
    :pswitch_2b7
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 240
    const/16 v4, 0x69

    if-ne v3, v4, :cond_2c3

    const-string v2, "interface"

    goto/16 :goto_10

    .line 241
    :cond_2c3
    const/16 v4, 0x70

    if-ne v3, v4, :cond_2cb

    const-string v2, "protected"

    goto/16 :goto_10

    .line 242
    :cond_2cb
    const/16 v4, 0x74

    if-ne v3, v4, :cond_f

    const-string v2, "transient"

    goto/16 :goto_10

    .line 244
    :pswitch_2d3
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 245
    const/16 v4, 0x6d

    if-ne v3, v4, :cond_2df

    const-string v2, "implements"

    goto/16 :goto_10

    .line 246
    :cond_2df
    const/16 v1, 0x6e

    if-ne v3, v1, :cond_f

    const-string v1, "instanceof"

    const/16 v2, 0x35

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_10

    .line 248
    :pswitch_2ec
    const-string v2, "synchronized"

    goto/16 :goto_10

    .line 255
    :cond_2f0
    and-int/lit16 v0, v1, 0xff

    goto/16 :goto_1d

    .line 155
    :pswitch_data_2f4
    .packed-switch 0x2
        :pswitch_1e
        :pswitch_4f
        :pswitch_c5
        :pswitch_18d
        :pswitch_20e
        :pswitch_25e
        :pswitch_28a
        :pswitch_2b7
        :pswitch_2d3
        :pswitch_f
        :pswitch_2ec
    .end packed-switch

    .line 161
    :sswitch_data_30e
    .sparse-switch
        0x66 -> :sswitch_58
        0x69 -> :sswitch_69
        0x6c -> :sswitch_7a
        0x6e -> :sswitch_8d
        0x74 -> :sswitch_a1
        0x76 -> :sswitch_b3
    .end sparse-switch

    .line 169
    :sswitch_data_328
    .sparse-switch
        0x62 -> :sswitch_cf
        0x63 -> :sswitch_d3
        0x65 -> :sswitch_104
        0x67 -> :sswitch_137
        0x6c -> :sswitch_13b
        0x6e -> :sswitch_13f
        0x74 -> :sswitch_148
        0x76 -> :sswitch_17b
        0x77 -> :sswitch_184
    .end sparse-switch

    .line 189
    :pswitch_data_34e
    .packed-switch 0x61
        :pswitch_197
        :pswitch_194
        :pswitch_194
        :pswitch_194
        :pswitch_19b
        :pswitch_194
        :pswitch_194
        :pswitch_194
        :pswitch_1b9
        :pswitch_194
        :pswitch_194
        :pswitch_1c2
        :pswitch_194
        :pswitch_1cb
        :pswitch_1e4
        :pswitch_1f8
        :pswitch_194
        :pswitch_1fc
        :pswitch_194
        :pswitch_205
    .end packed-switch

    .line 209
    :sswitch_data_37a
    .sparse-switch
        0x61 -> :sswitch_218
        0x65 -> :sswitch_21c
        0x68 -> :sswitch_237
        0x6d -> :sswitch_23b
        0x6f -> :sswitch_23f
        0x74 -> :sswitch_243
        0x75 -> :sswitch_247
        0x77 -> :sswitch_24b
        0x78 -> :sswitch_251
        0x79 -> :sswitch_255
    .end sparse-switch

    .line 224
    :sswitch_data_3a4
    .sparse-switch
        0x61 -> :sswitch_268
        0x65 -> :sswitch_26c
        0x69 -> :sswitch_275
        0x6f -> :sswitch_27e
        0x72 -> :sswitch_282
        0x78 -> :sswitch_286
    .end sparse-switch

    .line 232
    :sswitch_data_3be
    .sparse-switch
        0x61 -> :sswitch_294
        0x63 -> :sswitch_298
        0x64 -> :sswitch_2a1
        0x66 -> :sswitch_2aa
        0x76 -> :sswitch_2b3
    .end sparse-switch
.end method

.method private c(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1512
    iget-object v0, p0, Lorg/jshybugger/mb;->C:Lorg/jshybugger/lM;

    iget-object v0, v0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    .line 1513
    return-void
.end method

.method private static c(I)Z
    .registers 2

    .prologue
    .line 847
    const/16 v0, 0x30

    if-gt v0, p0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static d(I)Z
    .registers 3

    .prologue
    .line 866
    const/16 v0, 0x7f

    if-le p0, v0, :cond_f

    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private e(I)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 1226
    iget v0, p0, Lorg/jshybugger/mb;->v:I

    .line 1227
    iget-object v1, p0, Lorg/jshybugger/mb;->u:[C

    array-length v1, v1

    if-ne v0, v1, :cond_16

    .line 1228
    iget-object v1, p0, Lorg/jshybugger/mb;->u:[C

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [C

    .line 1229
    iget-object v2, p0, Lorg/jshybugger/mb;->u:[C

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1230
    iput-object v1, p0, Lorg/jshybugger/mb;->u:[C

    .line 1232
    :cond_16
    iget-object v1, p0, Lorg/jshybugger/mb;->u:[C

    int-to-char v2, p1

    aput-char v2, v1, v0

    .line 1233
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jshybugger/mb;->v:I

    .line 1234
    return-void
.end method

.method private f()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1220
    iget v0, p0, Lorg/jshybugger/mb;->k:I

    iput v0, p0, Lorg/jshybugger/mb;->m:I

    .line 1221
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/jshybugger/mb;->u:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/jshybugger/mb;->v:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private f(I)Z
    .registers 7

    .prologue
    const/4 v2, -0x1

    const/16 v1, 0xa

    .line 1251
    iget v0, p0, Lorg/jshybugger/mb;->g:I

    if-eqz v0, :cond_1f

    iget v0, p0, Lorg/jshybugger/mb;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jshybugger/mb;->k:I

    iget-object v0, p0, Lorg/jshybugger/mb;->f:[I

    iget v1, p0, Lorg/jshybugger/mb;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jshybugger/mb;->g:I

    aget v0, v0, v1

    .line 1252
    :cond_17
    :goto_17
    if-ne v0, p1, :cond_7f

    .line 1253
    iget v0, p0, Lorg/jshybugger/mb;->k:I

    iput v0, p0, Lorg/jshybugger/mb;->m:I

    .line 1254
    const/4 v0, 0x1

    .line 1257
    :goto_1e
    return v0

    .line 1251
    :cond_1f
    iget-object v0, p0, Lorg/jshybugger/mb;->i:Ljava/lang/String;

    if-eqz v0, :cond_4b

    iget v0, p0, Lorg/jshybugger/mb;->B:I

    iget v3, p0, Lorg/jshybugger/mb;->A:I

    if-ne v0, v3, :cond_2b

    move v0, v2

    goto :goto_17

    :cond_2b
    iget v0, p0, Lorg/jshybugger/mb;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jshybugger/mb;->k:I

    iget-object v0, p0, Lorg/jshybugger/mb;->i:Ljava/lang/String;

    iget v3, p0, Lorg/jshybugger/mb;->B:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/jshybugger/mb;->B:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_3d
    const/16 v3, 0x7f

    if-gt v0, v3, :cond_6a

    if-eq v0, v1, :cond_47

    const/16 v2, 0xd

    if-ne v0, v2, :cond_17

    :cond_47
    iput v0, p0, Lorg/jshybugger/mb;->y:I

    move v0, v1

    goto :goto_17

    :cond_4b
    iget v0, p0, Lorg/jshybugger/mb;->B:I

    iget v3, p0, Lorg/jshybugger/mb;->A:I

    if-ne v0, v3, :cond_59

    invoke-direct {p0}, Lorg/jshybugger/mb;->j()Z

    move-result v0

    if-nez v0, :cond_59

    move v0, v2

    goto :goto_17

    :cond_59
    iget v0, p0, Lorg/jshybugger/mb;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jshybugger/mb;->k:I

    iget-object v0, p0, Lorg/jshybugger/mb;->j:[C

    iget v3, p0, Lorg/jshybugger/mb;->B:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/jshybugger/mb;->B:I

    aget-char v0, v0, v3

    goto :goto_3d

    :cond_6a
    const v3, 0xfeff

    if-eq v0, v3, :cond_17

    invoke-static {v0}, Lorg/jshybugger/mb;->d(I)Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-static {v0}, Lorg/jshybugger/lS;->a(I)Z

    move-result v2

    if-eqz v2, :cond_17

    iput v0, p0, Lorg/jshybugger/mb;->y:I

    move v0, v1

    goto :goto_17

    .line 1256
    :cond_7f
    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->g(I)V

    .line 1257
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method private g()I
    .registers 2

    .prologue
    .line 1263
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->a(Z)I

    move-result v0

    .line 1264
    invoke-virtual {p0, v0}, Lorg/jshybugger/mb;->b(I)V

    .line 1265
    return v0
.end method

.method private g(I)V
    .registers 5

    .prologue
    .line 1377
    iget-object v0, p0, Lorg/jshybugger/mb;->f:[I

    iget v1, p0, Lorg/jshybugger/mb;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jshybugger/mb;->g:I

    aput p1, v0, v1

    .line 1378
    iget v0, p0, Lorg/jshybugger/mb;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jshybugger/mb;->k:I

    .line 1379
    return-void
.end method

.method private h()I
    .registers 2

    .prologue
    .line 1270
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->a(Z)I

    move-result v0

    return v0
.end method

.method private i()V
    .registers 3

    .prologue
    .line 1385
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->a(Z)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 1386
    :cond_c
    invoke-virtual {p0, v0}, Lorg/jshybugger/mb;->b(I)V

    .line 1387
    iget v0, p0, Lorg/jshybugger/mb;->k:I

    iput v0, p0, Lorg/jshybugger/mb;->m:I

    .line 1388
    return-void
.end method

.method private j()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 1448
    iget-object v1, p0, Lorg/jshybugger/mb;->i:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-static {}, Lorg/jshybugger/lh;->a()Ljava/lang/RuntimeException;

    .line 1449
    :cond_8
    iget v1, p0, Lorg/jshybugger/mb;->A:I

    iget-object v2, p0, Lorg/jshybugger/mb;->j:[C

    array-length v2, v2

    if-ne v1, v2, :cond_37

    .line 1450
    iget v1, p0, Lorg/jshybugger/mb;->x:I

    if-eqz v1, :cond_4a

    invoke-virtual {p0}, Lorg/jshybugger/mb;->e()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 1451
    iget-object v1, p0, Lorg/jshybugger/mb;->j:[C

    iget v2, p0, Lorg/jshybugger/mb;->x:I

    iget-object v3, p0, Lorg/jshybugger/mb;->j:[C

    iget v4, p0, Lorg/jshybugger/mb;->A:I

    iget v5, p0, Lorg/jshybugger/mb;->x:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1453
    iget v1, p0, Lorg/jshybugger/mb;->A:I

    iget v2, p0, Lorg/jshybugger/mb;->x:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/jshybugger/mb;->A:I

    .line 1454
    iget v1, p0, Lorg/jshybugger/mb;->B:I

    iget v2, p0, Lorg/jshybugger/mb;->x:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/jshybugger/mb;->B:I

    .line 1455
    iput v0, p0, Lorg/jshybugger/mb;->x:I

    .line 1462
    :cond_37
    :goto_37
    iget-object v1, p0, Lorg/jshybugger/mb;->z:Ljava/io/Reader;

    iget-object v2, p0, Lorg/jshybugger/mb;->j:[C

    iget v3, p0, Lorg/jshybugger/mb;->A:I

    iget-object v4, p0, Lorg/jshybugger/mb;->j:[C

    array-length v4, v4

    iget v5, p0, Lorg/jshybugger/mb;->A:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 1464
    if-gez v1, :cond_5b

    .line 1468
    :goto_49
    return v0

    .line 1457
    :cond_4a
    iget-object v1, p0, Lorg/jshybugger/mb;->j:[C

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [C

    .line 1458
    iget-object v2, p0, Lorg/jshybugger/mb;->j:[C

    iget v3, p0, Lorg/jshybugger/mb;->A:I

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1459
    iput-object v1, p0, Lorg/jshybugger/mb;->j:[C

    goto :goto_37

    .line 1467
    :cond_5b
    iget v0, p0, Lorg/jshybugger/mb;->A:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jshybugger/mb;->A:I

    .line 1468
    const/4 v0, 0x1

    goto :goto_49
.end method


# virtual methods
.method final a()I
    .registers 10

    .prologue
    const/16 v2, 0xa

    const/4 v5, -0x1

    const/16 v7, 0x3d

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 281
    :cond_7
    invoke-direct {p0, v3}, Lorg/jshybugger/mb;->a(Z)I

    move-result v4

    .line 282
    if-ne v4, v5, :cond_18

    .line 283
    iget v1, p0, Lorg/jshybugger/mb;->k:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jshybugger/mb;->l:I

    .line 284
    iget v1, p0, Lorg/jshybugger/mb;->k:I

    iput v1, p0, Lorg/jshybugger/mb;->m:I

    .line 830
    :goto_17
    return v0

    .line 286
    :cond_18
    if-ne v4, v2, :cond_28

    .line 287
    iput-boolean v0, p0, Lorg/jshybugger/mb;->t:Z

    .line 288
    iget v0, p0, Lorg/jshybugger/mb;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jshybugger/mb;->l:I

    .line 289
    iget v0, p0, Lorg/jshybugger/mb;->k:I

    iput v0, p0, Lorg/jshybugger/mb;->m:I

    move v0, v3

    .line 290
    goto :goto_17

    .line 291
    :cond_28
    const/16 v1, 0x7f

    if-gt v4, v1, :cond_58

    const/16 v1, 0x20

    if-eq v4, v1, :cond_3c

    const/16 v1, 0x9

    if-eq v4, v1, :cond_3c

    const/16 v1, 0xc

    if-eq v4, v1, :cond_3c

    const/16 v1, 0xb

    if-ne v4, v1, :cond_56

    :cond_3c
    move v1, v3

    :goto_3d
    if-nez v1, :cond_7

    .line 292
    const/16 v1, 0x2d

    if-eq v4, v1, :cond_45

    .line 293
    iput-boolean v3, p0, Lorg/jshybugger/mb;->t:Z

    .line 300
    :cond_45
    iget v1, p0, Lorg/jshybugger/mb;->k:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jshybugger/mb;->l:I

    .line 301
    iget v1, p0, Lorg/jshybugger/mb;->k:I

    iput v1, p0, Lorg/jshybugger/mb;->m:I

    .line 303
    const/16 v1, 0x40

    if-ne v4, v1, :cond_6e

    const/16 v0, 0x93

    goto :goto_17

    :cond_56
    move v1, v0

    .line 291
    goto :goto_3d

    :cond_58
    const/16 v1, 0xa0

    if-eq v4, v1, :cond_6a

    const v1, 0xfeff

    if-eq v4, v1, :cond_6a

    int-to-char v1, v4

    invoke-static {v1}, Ljava/lang/Character;->getType(C)I

    move-result v1

    const/16 v6, 0xc

    if-ne v1, v6, :cond_6c

    :cond_6a
    move v1, v3

    goto :goto_3d

    :cond_6c
    move v1, v0

    goto :goto_3d

    .line 309
    :cond_6e
    const/16 v1, 0x5c

    if-ne v4, v1, :cond_9d

    .line 310
    invoke-direct {p0, v3}, Lorg/jshybugger/mb;->a(Z)I

    move-result v1

    .line 311
    const/16 v4, 0x75

    if-ne v1, v4, :cond_95

    .line 314
    iput v0, p0, Lorg/jshybugger/mb;->v:I

    move v4, v3

    move v6, v3

    .line 328
    :goto_7e
    if-eqz v6, :cond_181

    move v1, v4

    .line 331
    :goto_81
    if-eqz v1, :cond_be

    move v2, v0

    move v1, v0

    .line 339
    :goto_85
    const/4 v6, 0x4

    if-eq v2, v6, :cond_ad

    .line 340
    invoke-direct {p0, v3}, Lorg/jshybugger/mb;->a(Z)I

    move-result v6

    .line 341
    invoke-static {v6, v1}, Lorg/jshybugger/lh;->a(II)I

    move-result v1

    .line 343
    if-ltz v1, :cond_ad

    .line 339
    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    .line 317
    :cond_95
    invoke-virtual {p0, v1}, Lorg/jshybugger/mb;->b(I)V

    .line 318
    const/16 v1, 0x5c

    move v4, v0

    move v6, v0

    goto :goto_7e

    .line 321
    :cond_9d
    int-to-char v1, v4

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v1

    .line 322
    if-eqz v1, :cond_a9

    .line 323
    iput v0, p0, Lorg/jshybugger/mb;->v:I

    .line 324
    invoke-direct {p0, v4}, Lorg/jshybugger/mb;->e(I)V

    :cond_a9
    move v6, v1

    move v1, v4

    move v4, v0

    goto :goto_7e

    .line 345
    :cond_ad
    if-gez v1, :cond_b9

    .line 346
    iget-object v0, p0, Lorg/jshybugger/mb;->C:Lorg/jshybugger/lM;

    const-string v1, "msg.invalid.escape"

    invoke-virtual {v0, v1}, Lorg/jshybugger/lM;->a(Ljava/lang/String;)V

    move v0, v5

    .line 347
    goto/16 :goto_17

    .line 349
    :cond_b9
    invoke-direct {p0, v1}, Lorg/jshybugger/mb;->e(I)V

    move v1, v0

    .line 351
    goto :goto_81

    .line 352
    :cond_be
    invoke-direct {p0, v3}, Lorg/jshybugger/mb;->a(Z)I

    move-result v2

    .line 353
    const/16 v6, 0x5c

    if-ne v2, v6, :cond_db

    .line 354
    invoke-direct {p0, v3}, Lorg/jshybugger/mb;->a(Z)I

    move-result v1

    .line 355
    const/16 v2, 0x75

    if-ne v1, v2, :cond_d1

    move v1, v3

    move v4, v3

    .line 357
    goto :goto_81

    .line 359
    :cond_d1
    iget-object v0, p0, Lorg/jshybugger/mb;->C:Lorg/jshybugger/lM;

    const-string v1, "msg.illegal.character"

    invoke-virtual {v0, v1}, Lorg/jshybugger/lM;->a(Ljava/lang/String;)V

    move v0, v5

    .line 360
    goto/16 :goto_17

    .line 363
    :cond_db
    if-eq v2, v5, :cond_ed

    const v6, 0xfeff

    if-eq v2, v6, :cond_ed

    int-to-char v6, v2

    invoke-static {v6}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v6

    if-eqz v6, :cond_ed

    .line 366
    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->e(I)V

    goto :goto_81

    .line 372
    :cond_ed
    invoke-virtual {p0, v2}, Lorg/jshybugger/mb;->b(I)V

    .line 374
    invoke-direct {p0}, Lorg/jshybugger/mb;->f()Ljava/lang/String;

    move-result-object v2

    .line 375
    if-nez v4, :cond_147

    .line 380
    invoke-static {v2}, Lorg/jshybugger/mb;->b(Ljava/lang/String;)I

    move-result v0

    .line 381
    if-eqz v0, :cond_138

    .line 382
    const/16 v1, 0x99

    if-eq v0, v1, :cond_104

    const/16 v1, 0x48

    if-ne v0, v1, :cond_5c1

    :cond_104
    iget-object v1, p0, Lorg/jshybugger/mb;->C:Lorg/jshybugger/lM;

    iget-object v1, v1, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    iget v1, v1, Lorg/jshybugger/kI;->b:I

    const/16 v3, 0xaa

    if-ge v1, v3, :cond_5c1

    .line 387
    const/16 v1, 0x99

    if-ne v0, v1, :cond_12a

    const-string v0, "let"

    :goto_114
    iput-object v0, p0, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    .line 388
    const/16 v0, 0x27

    move v1, v0

    .line 392
    :goto_119
    iget-object v0, p0, Lorg/jshybugger/mb;->w:Lorg/jshybugger/lL;

    invoke-virtual {v0, v2}, Lorg/jshybugger/lL;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    .line 393
    const/16 v0, 0x7f

    if-eq v1, v0, :cond_12d

    move v0, v1

    .line 394
    goto/16 :goto_17

    .line 387
    :cond_12a
    const-string v0, "yield"

    goto :goto_114

    .line 395
    :cond_12d
    iget-object v0, p0, Lorg/jshybugger/mb;->C:Lorg/jshybugger/lM;

    iget-object v0, v0, Lorg/jshybugger/lM;->a:Lorg/jshybugger/kI;

    iget-boolean v0, v0, Lorg/jshybugger/kI;->d:Z

    if-nez v0, :cond_138

    move v0, v1

    .line 398
    goto/16 :goto_17

    :cond_138
    move-object v0, v2

    .line 406
    :goto_139
    iget-object v1, p0, Lorg/jshybugger/mb;->w:Lorg/jshybugger/lL;

    invoke-virtual {v1, v0}, Lorg/jshybugger/lL;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    .line 407
    const/16 v0, 0x27

    goto/16 :goto_17

    .line 401
    :cond_147
    invoke-static {v2}, Lorg/jshybugger/mb;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5be

    .line 404
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v4, "\\u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    :goto_169
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x4

    if-ge v0, v2, :cond_179

    const/16 v2, 0x30

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_169

    :cond_179
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_139

    .line 411
    :cond_181
    invoke-static {v1}, Lorg/jshybugger/mb;->c(I)Z

    move-result v4

    if-nez v4, :cond_195

    const/16 v4, 0x2e

    if-ne v1, v4, :cond_282

    invoke-direct {p0}, Lorg/jshybugger/mb;->g()I

    move-result v4

    invoke-static {v4}, Lorg/jshybugger/mb;->c(I)Z

    move-result v4

    if-eqz v4, :cond_282

    .line 412
    :cond_195
    iput-boolean v0, p0, Lorg/jshybugger/mb;->d:Z

    .line 413
    iput v0, p0, Lorg/jshybugger/mb;->v:I

    .line 416
    const/16 v4, 0x30

    if-ne v1, v4, :cond_1d1

    .line 417
    invoke-direct {p0}, Lorg/jshybugger/mb;->h()I

    move-result v1

    .line 418
    const/16 v4, 0x78

    if-eq v1, v4, :cond_1a9

    const/16 v4, 0x58

    if-ne v1, v4, :cond_1c1

    .line 419
    :cond_1a9
    const/16 v4, 0x10

    .line 420
    invoke-direct {p0}, Lorg/jshybugger/mb;->h()I

    move-result v1

    .line 429
    :goto_1af
    const/16 v6, 0x10

    if-ne v4, v6, :cond_5b9

    .line 430
    :goto_1b3
    invoke-static {v1, v0}, Lorg/jshybugger/lh;->a(II)I

    move-result v6

    if-ltz v6, :cond_1ff

    .line 431
    invoke-direct {p0, v1}, Lorg/jshybugger/mb;->e(I)V

    .line 432
    invoke-direct {p0}, Lorg/jshybugger/mb;->h()I

    move-result v1

    goto :goto_1b3

    .line 421
    :cond_1c1
    invoke-static {v1}, Lorg/jshybugger/mb;->c(I)Z

    move-result v4

    if-eqz v4, :cond_1cc

    .line 422
    const/16 v4, 0x8

    .line 423
    iput-boolean v3, p0, Lorg/jshybugger/mb;->d:Z

    goto :goto_1af

    .line 425
    :cond_1cc
    const/16 v4, 0x30

    invoke-direct {p0, v4}, Lorg/jshybugger/mb;->e(I)V

    :cond_1d1
    move v4, v2

    goto :goto_1af

    .line 435
    :goto_1d3
    const/16 v6, 0x30

    if-gt v6, v4, :cond_1fc

    const/16 v6, 0x39

    if-gt v4, v6, :cond_1fc

    .line 442
    const/16 v6, 0x8

    if-ne v1, v6, :cond_1f1

    const/16 v6, 0x38

    if-lt v4, v6, :cond_1f1

    .line 443
    iget-object v6, p0, Lorg/jshybugger/mb;->C:Lorg/jshybugger/lM;

    const-string v7, "msg.bad.octal.literal"

    const/16 v1, 0x38

    if-ne v4, v1, :cond_1f9

    const-string v1, "8"

    :goto_1ed
    invoke-virtual {v6, v7, v1}, Lorg/jshybugger/lM;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 447
    :cond_1f1
    invoke-direct {p0, v4}, Lorg/jshybugger/mb;->e(I)V

    .line 448
    invoke-direct {p0}, Lorg/jshybugger/mb;->h()I

    move-result v4

    goto :goto_1d3

    .line 443
    :cond_1f9
    const-string v1, "9"

    goto :goto_1ed

    :cond_1fc
    move v8, v1

    move v1, v4

    move v4, v8

    .line 454
    :cond_1ff
    if-ne v4, v2, :cond_5b4

    const/16 v6, 0x2e

    if-eq v1, v6, :cond_20d

    const/16 v6, 0x65

    if-eq v1, v6, :cond_20d

    const/16 v6, 0x45

    if-ne v1, v6, :cond_5b4

    .line 456
    :cond_20d
    const/16 v3, 0x2e

    if-ne v1, v3, :cond_21e

    .line 458
    :cond_211
    invoke-direct {p0, v1}, Lorg/jshybugger/mb;->e(I)V

    .line 459
    invoke-direct {p0}, Lorg/jshybugger/mb;->h()I

    move-result v1

    .line 460
    invoke-static {v1}, Lorg/jshybugger/mb;->c(I)Z

    move-result v3

    if-nez v3, :cond_211

    .line 462
    :cond_21e
    const/16 v3, 0x65

    if-eq v1, v3, :cond_226

    const/16 v3, 0x45

    if-ne v1, v3, :cond_259

    .line 463
    :cond_226
    invoke-direct {p0, v1}, Lorg/jshybugger/mb;->e(I)V

    .line 464
    invoke-direct {p0}, Lorg/jshybugger/mb;->h()I

    move-result v1

    .line 465
    const/16 v3, 0x2b

    if-eq v1, v3, :cond_235

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_23c

    .line 466
    :cond_235
    invoke-direct {p0, v1}, Lorg/jshybugger/mb;->e(I)V

    .line 467
    invoke-direct {p0}, Lorg/jshybugger/mb;->h()I

    move-result v1

    .line 469
    :cond_23c
    invoke-static {v1}, Lorg/jshybugger/mb;->c(I)Z

    move-result v3

    if-nez v3, :cond_24c

    .line 470
    iget-object v0, p0, Lorg/jshybugger/mb;->C:Lorg/jshybugger/lM;

    const-string v1, "msg.missing.exponent"

    invoke-virtual {v0, v1}, Lorg/jshybugger/lM;->a(Ljava/lang/String;)V

    move v0, v5

    .line 471
    goto/16 :goto_17

    .line 474
    :cond_24c
    invoke-direct {p0, v1}, Lorg/jshybugger/mb;->e(I)V

    .line 475
    invoke-direct {p0}, Lorg/jshybugger/mb;->h()I

    move-result v1

    .line 476
    invoke-static {v1}, Lorg/jshybugger/mb;->c(I)Z

    move-result v3

    if-nez v3, :cond_24c

    :cond_259
    move v3, v1

    move v1, v0

    .line 479
    :goto_25b
    invoke-virtual {p0, v3}, Lorg/jshybugger/mb;->b(I)V

    .line 480
    invoke-direct {p0}, Lorg/jshybugger/mb;->f()Ljava/lang/String;

    move-result-object v3

    .line 481
    iput-object v3, p0, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    .line 484
    if-ne v4, v2, :cond_27d

    if-nez v1, :cond_27d

    .line 487
    :try_start_268
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_26b
    .catch Ljava/lang/NumberFormatException; {:try_start_268 .. :try_end_26b} :catch_272

    move-result-wide v0

    .line 497
    :goto_26c
    iput-wide v0, p0, Lorg/jshybugger/mb;->c:D

    .line 498
    const/16 v0, 0x28

    goto/16 :goto_17

    .line 490
    :catch_272
    move-exception v0

    iget-object v0, p0, Lorg/jshybugger/mb;->C:Lorg/jshybugger/lM;

    const-string v1, "msg.caught.nfe"

    invoke-virtual {v0, v1}, Lorg/jshybugger/lM;->a(Ljava/lang/String;)V

    move v0, v5

    .line 491
    goto/16 :goto_17

    .line 494
    :cond_27d
    invoke-static {v3, v0, v4}, Lorg/jshybugger/lS;->a(Ljava/lang/String;II)D

    move-result-wide v0

    goto :goto_26c

    .line 502
    :cond_282
    const/16 v4, 0x22

    if-eq v1, v4, :cond_28a

    const/16 v4, 0x27

    if-ne v1, v4, :cond_367

    .line 508
    :cond_28a
    iput v1, p0, Lorg/jshybugger/mb;->e:I

    .line 509
    iput v0, p0, Lorg/jshybugger/mb;->v:I

    .line 511
    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->a(Z)I

    move-result v1

    .line 512
    :cond_292
    :goto_292
    iget v3, p0, Lorg/jshybugger/mb;->e:I

    if-eq v1, v3, :cond_355

    .line 513
    if-eq v1, v2, :cond_29a

    if-ne v1, v5, :cond_2ab

    .line 514
    :cond_29a
    invoke-virtual {p0, v1}, Lorg/jshybugger/mb;->b(I)V

    .line 515
    iget v0, p0, Lorg/jshybugger/mb;->k:I

    iput v0, p0, Lorg/jshybugger/mb;->m:I

    .line 516
    iget-object v0, p0, Lorg/jshybugger/mb;->C:Lorg/jshybugger/lM;

    const-string v1, "msg.unterminated.string.lit"

    invoke-virtual {v0, v1}, Lorg/jshybugger/lM;->a(Ljava/lang/String;)V

    move v0, v5

    .line 517
    goto/16 :goto_17

    .line 520
    :cond_2ab
    const/16 v3, 0x5c

    if-ne v1, v3, :cond_2ed

    .line 524
    invoke-direct {p0}, Lorg/jshybugger/mb;->h()I

    move-result v1

    .line 525
    sparse-switch v1, :sswitch_data_5c4

    .line 586
    const/16 v3, 0x30

    if-gt v3, v1, :cond_2ed

    const/16 v3, 0x38

    if-ge v1, v3, :cond_2ed

    .line 587
    add-int/lit8 v1, v1, -0x30

    .line 588
    invoke-direct {p0}, Lorg/jshybugger/mb;->h()I

    move-result v3

    .line 589
    const/16 v4, 0x30

    if-gt v4, v3, :cond_2ea

    const/16 v4, 0x38

    if-ge v3, v4, :cond_2ea

    .line 590
    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x30

    .line 591
    invoke-direct {p0}, Lorg/jshybugger/mb;->h()I

    move-result v3

    .line 592
    const/16 v4, 0x30

    if-gt v4, v3, :cond_2ea

    const/16 v4, 0x38

    if-ge v3, v4, :cond_2ea

    const/16 v4, 0x1f

    if-gt v1, v4, :cond_2ea

    .line 595
    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x30

    .line 596
    invoke-direct {p0}, Lorg/jshybugger/mb;->h()I

    move-result v3

    .line 599
    :cond_2ea
    invoke-virtual {p0, v3}, Lorg/jshybugger/mb;->b(I)V

    .line 604
    :cond_2ed
    :goto_2ed
    invoke-direct {p0, v1}, Lorg/jshybugger/mb;->e(I)V

    .line 605
    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->a(Z)I

    move-result v1

    goto :goto_292

    .line 526
    :sswitch_2f5
    const/16 v1, 0x8

    goto :goto_2ed

    .line 527
    :sswitch_2f8
    const/16 v1, 0xc

    goto :goto_2ed

    :sswitch_2fb
    move v1, v2

    .line 528
    goto :goto_2ed

    .line 529
    :sswitch_2fd
    const/16 v1, 0xd

    goto :goto_2ed

    .line 530
    :sswitch_300
    const/16 v1, 0x9

    goto :goto_2ed

    .line 534
    :sswitch_303
    const/16 v1, 0xb

    goto :goto_2ed

    .line 540
    :sswitch_306
    iget v6, p0, Lorg/jshybugger/mb;->v:I

    .line 541
    const/16 v1, 0x75

    invoke-direct {p0, v1}, Lorg/jshybugger/mb;->e(I)V

    move v4, v0

    move v3, v0

    .line 543
    :goto_30f
    const/4 v1, 0x4

    if-eq v4, v1, :cond_323

    .line 544
    invoke-direct {p0}, Lorg/jshybugger/mb;->h()I

    move-result v1

    .line 545
    invoke-static {v1, v3}, Lorg/jshybugger/lh;->a(II)I

    move-result v3

    .line 546
    if-ltz v3, :cond_292

    .line 547
    invoke-direct {p0, v1}, Lorg/jshybugger/mb;->e(I)V

    .line 543
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_30f

    .line 553
    :cond_323
    iput v6, p0, Lorg/jshybugger/mb;->v:I

    move v1, v3

    .line 555
    goto :goto_2ed

    .line 559
    :sswitch_327
    invoke-direct {p0}, Lorg/jshybugger/mb;->h()I

    move-result v1

    .line 560
    invoke-static {v1, v0}, Lorg/jshybugger/lh;->a(II)I

    move-result v4

    .line 561
    if-gez v4, :cond_338

    .line 562
    const/16 v3, 0x78

    invoke-direct {p0, v3}, Lorg/jshybugger/mb;->e(I)V

    goto/16 :goto_292

    .line 566
    :cond_338
    invoke-direct {p0}, Lorg/jshybugger/mb;->h()I

    move-result v3

    .line 567
    invoke-static {v3, v4}, Lorg/jshybugger/lh;->a(II)I

    move-result v4

    .line 568
    if-gez v4, :cond_34d

    .line 569
    const/16 v4, 0x78

    invoke-direct {p0, v4}, Lorg/jshybugger/mb;->e(I)V

    .line 570
    invoke-direct {p0, v1}, Lorg/jshybugger/mb;->e(I)V

    move v1, v3

    .line 571
    goto/16 :goto_292

    :cond_34d
    move v1, v4

    .line 577
    goto :goto_2ed

    .line 582
    :sswitch_34f
    invoke-direct {p0}, Lorg/jshybugger/mb;->h()I

    move-result v1

    goto/16 :goto_292

    .line 608
    :cond_355
    invoke-direct {p0}, Lorg/jshybugger/mb;->f()Ljava/lang/String;

    move-result-object v0

    .line 609
    iget-object v1, p0, Lorg/jshybugger/mb;->w:Lorg/jshybugger/lL;

    invoke-virtual {v1, v0}, Lorg/jshybugger/lL;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    .line 610
    const/16 v0, 0x29

    goto/16 :goto_17

    .line 613
    :cond_367
    sparse-switch v1, :sswitch_data_5ea

    .line 829
    iget-object v0, p0, Lorg/jshybugger/mb;->C:Lorg/jshybugger/lM;

    const-string v1, "msg.illegal.character"

    invoke-virtual {v0, v1}, Lorg/jshybugger/lM;->a(Ljava/lang/String;)V

    move v0, v5

    .line 830
    goto/16 :goto_17

    .line 614
    :sswitch_374
    const/16 v0, 0x52

    goto/16 :goto_17

    .line 615
    :sswitch_378
    const/16 v0, 0x53

    goto/16 :goto_17

    .line 616
    :sswitch_37c
    const/16 v0, 0x54

    goto/16 :goto_17

    .line 617
    :sswitch_380
    const/16 v0, 0x55

    goto/16 :goto_17

    .line 618
    :sswitch_384
    const/16 v0, 0x56

    goto/16 :goto_17

    .line 619
    :sswitch_388
    const/16 v0, 0x57

    goto/16 :goto_17

    .line 620
    :sswitch_38c
    const/16 v0, 0x58

    goto/16 :goto_17

    .line 621
    :sswitch_390
    const/16 v0, 0x59

    goto/16 :goto_17

    .line 622
    :sswitch_394
    const/16 v0, 0x66

    goto/16 :goto_17

    .line 624
    :sswitch_398
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->f(I)Z

    move-result v0

    if-eqz v0, :cond_3a4

    .line 625
    const/16 v0, 0x90

    goto/16 :goto_17

    .line 627
    :cond_3a4
    const/16 v0, 0x67

    goto/16 :goto_17

    .line 630
    :sswitch_3a8
    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->f(I)Z

    move-result v0

    if-eqz v0, :cond_3b4

    .line 631
    const/16 v0, 0x8f

    goto/16 :goto_17

    .line 632
    :cond_3b4
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->f(I)Z

    move-result v0

    if-eqz v0, :cond_3c0

    .line 633
    const/16 v0, 0x92

    goto/16 :goto_17

    .line 635
    :cond_3c0
    const/16 v0, 0x6c

    goto/16 :goto_17

    .line 639
    :sswitch_3c4
    const/16 v0, 0x7c

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->f(I)Z

    move-result v0

    if-eqz v0, :cond_3d0

    .line 640
    const/16 v0, 0x68

    goto/16 :goto_17

    .line 641
    :cond_3d0
    invoke-direct {p0, v7}, Lorg/jshybugger/mb;->f(I)Z

    move-result v0

    if-eqz v0, :cond_3da

    .line 642
    const/16 v0, 0x5b

    goto/16 :goto_17

    .line 644
    :cond_3da
    const/16 v0, 0x9

    goto/16 :goto_17

    .line 648
    :sswitch_3de
    invoke-direct {p0, v7}, Lorg/jshybugger/mb;->f(I)Z

    move-result v0

    if-eqz v0, :cond_3e8

    .line 649
    const/16 v0, 0x5c

    goto/16 :goto_17

    :cond_3e8
    move v0, v2

    .line 651
    goto/16 :goto_17

    .line 655
    :sswitch_3eb
    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->f(I)Z

    move-result v0

    if-eqz v0, :cond_3f7

    .line 656
    const/16 v0, 0x69

    goto/16 :goto_17

    .line 657
    :cond_3f7
    invoke-direct {p0, v7}, Lorg/jshybugger/mb;->f(I)Z

    move-result v0

    if-eqz v0, :cond_401

    .line 658
    const/16 v0, 0x5d

    goto/16 :goto_17

    .line 660
    :cond_401
    const/16 v0, 0xb

    goto/16 :goto_17

    .line 664
    :sswitch_405
    invoke-direct {p0, v7}, Lorg/jshybugger/mb;->f(I)Z

    move-result v0

    if-eqz v0, :cond_419

    .line 665
    invoke-direct {p0, v7}, Lorg/jshybugger/mb;->f(I)Z

    move-result v0

    if-eqz v0, :cond_415

    .line 666
    const/16 v0, 0x2e

    goto/16 :goto_17

    .line 668
    :cond_415
    const/16 v0, 0xc

    goto/16 :goto_17

    .line 671
    :cond_419
    const/16 v0, 0x5a

    goto/16 :goto_17

    .line 675
    :sswitch_41d
    invoke-direct {p0, v7}, Lorg/jshybugger/mb;->f(I)Z

    move-result v0

    if-eqz v0, :cond_431

    .line 676
    invoke-direct {p0, v7}, Lorg/jshybugger/mb;->f(I)Z

    move-result v0

    if-eqz v0, :cond_42d

    .line 677
    const/16 v0, 0x2f

    goto/16 :goto_17

    .line 679
    :cond_42d
    const/16 v0, 0xd

    goto/16 :goto_17

    .line 682
    :cond_431
    const/16 v0, 0x1a

    goto/16 :goto_17

    .line 687
    :sswitch_435
    const/16 v0, 0x21

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->f(I)Z

    move-result v0

    if-eqz v0, :cond_468

    .line 688
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->f(I)Z

    move-result v0

    if-eqz v0, :cond_463

    .line 689
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->f(I)Z

    move-result v0

    if-eqz v0, :cond_45e

    .line 690
    iget v0, p0, Lorg/jshybugger/mb;->k:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lorg/jshybugger/mb;->l:I

    .line 691
    invoke-direct {p0}, Lorg/jshybugger/mb;->i()V

    .line 692
    sget-object v0, Lorg/jshybugger/ma;->d:Lorg/jshybugger/ma;

    iput-object v0, p0, Lorg/jshybugger/mb;->n:Lorg/jshybugger/ma;

    .line 693
    const/16 v0, 0xa1

    goto/16 :goto_17

    .line 695
    :cond_45e
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->g(I)V

    .line 697
    :cond_463
    const/16 v0, 0x21

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->g(I)V

    .line 699
    :cond_468
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->f(I)Z

    move-result v0

    if-eqz v0, :cond_47e

    .line 700
    invoke-direct {p0, v7}, Lorg/jshybugger/mb;->f(I)Z

    move-result v0

    if-eqz v0, :cond_47a

    .line 701
    const/16 v0, 0x5e

    goto/16 :goto_17

    .line 703
    :cond_47a
    const/16 v0, 0x12

    goto/16 :goto_17

    .line 706
    :cond_47e
    invoke-direct {p0, v7}, Lorg/jshybugger/mb;->f(I)Z

    move-result v0

    if-eqz v0, :cond_488

    .line 707
    const/16 v0, 0xf

    goto/16 :goto_17

    .line 709
    :cond_488
    const/16 v0, 0xe

    goto/16 :goto_17

    .line 714
    :sswitch_48c
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->f(I)Z

    move-result v0

    if-eqz v0, :cond_4b8

    .line 715
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->f(I)Z

    move-result v0

    if-eqz v0, :cond_4aa

    .line 716
    invoke-direct {p0, v7}, Lorg/jshybugger/mb;->f(I)Z

    move-result v0

    if-eqz v0, :cond_4a6

    .line 717
    const/16 v0, 0x60

    goto/16 :goto_17

    .line 719
    :cond_4a6
    const/16 v0, 0x14

    goto/16 :goto_17

    .line 722
    :cond_4aa
    invoke-direct {p0, v7}, Lorg/jshybugger/mb;->f(I)Z

    move-result v0

    if-eqz v0, :cond_4b4

    .line 723
    const/16 v0, 0x5f

    goto/16 :goto_17

    .line 725
    :cond_4b4
    const/16 v0, 0x13

    goto/16 :goto_17

    .line 729
    :cond_4b8
    invoke-direct {p0, v7}, Lorg/jshybugger/mb;->f(I)Z

    move-result v0

    if-eqz v0, :cond_4c2

    .line 730
    const/16 v0, 0x11

    goto/16 :goto_17

    .line 732
    :cond_4c2
    const/16 v0, 0x10

    goto/16 :goto_17

    .line 737
    :sswitch_4c6
    invoke-direct {p0, v7}, Lorg/jshybugger/mb;->f(I)Z

    move-result v0

    if-eqz v0, :cond_4d0

    .line 738
    const/16 v0, 0x63

    goto/16 :goto_17

    .line 740
    :cond_4d0
    const/16 v0, 0x17

    goto/16 :goto_17

    .line 744
    :sswitch_4d4
    const-string v1, ""

    invoke-direct {p0, v1}, Lorg/jshybugger/mb;->c(Ljava/lang/String;)V

    .line 746
    const/16 v1, 0x2f

    invoke-direct {p0, v1}, Lorg/jshybugger/mb;->f(I)Z

    move-result v1

    if-eqz v1, :cond_4f2

    .line 747
    iget v0, p0, Lorg/jshybugger/mb;->k:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/jshybugger/mb;->l:I

    .line 748
    invoke-direct {p0}, Lorg/jshybugger/mb;->i()V

    .line 749
    sget-object v0, Lorg/jshybugger/ma;->a:Lorg/jshybugger/ma;

    iput-object v0, p0, Lorg/jshybugger/mb;->n:Lorg/jshybugger/ma;

    .line 750
    const/16 v0, 0xa1

    goto/16 :goto_17

    .line 753
    :cond_4f2
    const/16 v1, 0x2a

    invoke-direct {p0, v1}, Lorg/jshybugger/mb;->f(I)Z

    move-result v1

    if-eqz v1, :cond_544

    .line 755
    iget v1, p0, Lorg/jshybugger/mb;->k:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lorg/jshybugger/mb;->l:I

    .line 756
    const/16 v1, 0x2a

    invoke-direct {p0, v1}, Lorg/jshybugger/mb;->f(I)Z

    move-result v1

    if-eqz v1, :cond_524

    .line 758
    sget-object v1, Lorg/jshybugger/ma;->c:Lorg/jshybugger/ma;

    iput-object v1, p0, Lorg/jshybugger/mb;->n:Lorg/jshybugger/ma;

    move v1, v3

    .line 763
    :cond_50d
    :goto_50d
    invoke-direct {p0}, Lorg/jshybugger/mb;->h()I

    move-result v2

    .line 764
    if-ne v2, v5, :cond_52a

    .line 765
    iget v0, p0, Lorg/jshybugger/mb;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jshybugger/mb;->m:I

    .line 766
    iget-object v0, p0, Lorg/jshybugger/mb;->C:Lorg/jshybugger/lM;

    const-string v1, "msg.unterminated.comment"

    invoke-virtual {v0, v1}, Lorg/jshybugger/lM;->a(Ljava/lang/String;)V

    .line 767
    const/16 v0, 0xa1

    goto/16 :goto_17

    .line 760
    :cond_524
    sget-object v1, Lorg/jshybugger/ma;->b:Lorg/jshybugger/ma;

    iput-object v1, p0, Lorg/jshybugger/mb;->n:Lorg/jshybugger/ma;

    move v1, v0

    goto :goto_50d

    .line 768
    :cond_52a
    const/16 v4, 0x2a

    if-ne v2, v4, :cond_530

    move v1, v3

    .line 769
    goto :goto_50d

    .line 770
    :cond_530
    const/16 v4, 0x2f

    if-ne v2, v4, :cond_53e

    .line 771
    if-eqz v1, :cond_50d

    .line 772
    iget v0, p0, Lorg/jshybugger/mb;->k:I

    iput v0, p0, Lorg/jshybugger/mb;->m:I

    .line 773
    const/16 v0, 0xa1

    goto/16 :goto_17

    .line 777
    :cond_53e
    iget v1, p0, Lorg/jshybugger/mb;->k:I

    iput v1, p0, Lorg/jshybugger/mb;->m:I

    move v1, v0

    goto :goto_50d

    .line 782
    :cond_544
    invoke-direct {p0, v7}, Lorg/jshybugger/mb;->f(I)Z

    move-result v0

    if-eqz v0, :cond_54e

    .line 783
    const/16 v0, 0x64

    goto/16 :goto_17

    .line 785
    :cond_54e
    const/16 v0, 0x18

    goto/16 :goto_17

    .line 789
    :sswitch_552
    invoke-direct {p0, v7}, Lorg/jshybugger/mb;->f(I)Z

    move-result v0

    if-eqz v0, :cond_55c

    .line 790
    const/16 v0, 0x65

    goto/16 :goto_17

    .line 792
    :cond_55c
    const/16 v0, 0x19

    goto/16 :goto_17

    .line 796
    :sswitch_560
    const/16 v0, 0x1b

    goto/16 :goto_17

    .line 799
    :sswitch_564
    invoke-direct {p0, v7}, Lorg/jshybugger/mb;->f(I)Z

    move-result v0

    if-eqz v0, :cond_56e

    .line 800
    const/16 v0, 0x61

    goto/16 :goto_17

    .line 801
    :cond_56e
    const/16 v0, 0x2b

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->f(I)Z

    move-result v0

    if-eqz v0, :cond_57a

    .line 802
    const/16 v0, 0x6a

    goto/16 :goto_17

    .line 804
    :cond_57a
    const/16 v0, 0x15

    goto/16 :goto_17

    .line 808
    :sswitch_57e
    invoke-direct {p0, v7}, Lorg/jshybugger/mb;->f(I)Z

    move-result v0

    if-eqz v0, :cond_58a

    .line 809
    const/16 v0, 0x62

    .line 825
    :goto_586
    iput-boolean v3, p0, Lorg/jshybugger/mb;->t:Z

    goto/16 :goto_17

    .line 810
    :cond_58a
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->f(I)Z

    move-result v0

    if-eqz v0, :cond_5b1

    .line 811
    iget-boolean v0, p0, Lorg/jshybugger/mb;->t:Z

    if-nez v0, :cond_5ae

    .line 814
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->f(I)Z

    move-result v0

    if-eqz v0, :cond_5ae

    .line 815
    const-string v0, "--"

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->c(Ljava/lang/String;)V

    .line 816
    invoke-direct {p0}, Lorg/jshybugger/mb;->i()V

    .line 817
    sget-object v0, Lorg/jshybugger/ma;->d:Lorg/jshybugger/ma;

    iput-object v0, p0, Lorg/jshybugger/mb;->n:Lorg/jshybugger/ma;

    .line 818
    const/16 v0, 0xa1

    goto/16 :goto_17

    .line 821
    :cond_5ae
    const/16 v0, 0x6b

    goto :goto_586

    .line 823
    :cond_5b1
    const/16 v0, 0x16

    goto :goto_586

    :cond_5b4
    move v8, v3

    move v3, v1

    move v1, v8

    goto/16 :goto_25b

    :cond_5b9
    move v8, v4

    move v4, v1

    move v1, v8

    goto/16 :goto_1d3

    :cond_5be
    move-object v0, v2

    goto/16 :goto_139

    :cond_5c1
    move v1, v0

    goto/16 :goto_119

    .line 525
    :sswitch_data_5c4
    .sparse-switch
        0xa -> :sswitch_34f
        0x62 -> :sswitch_2f5
        0x66 -> :sswitch_2f8
        0x6e -> :sswitch_2fb
        0x72 -> :sswitch_2fd
        0x74 -> :sswitch_300
        0x75 -> :sswitch_306
        0x76 -> :sswitch_303
        0x78 -> :sswitch_327
    .end sparse-switch

    .line 613
    :sswitch_data_5ea
    .sparse-switch
        0x21 -> :sswitch_41d
        0x25 -> :sswitch_552
        0x26 -> :sswitch_3eb
        0x28 -> :sswitch_388
        0x29 -> :sswitch_38c
        0x2a -> :sswitch_4c6
        0x2b -> :sswitch_564
        0x2c -> :sswitch_390
        0x2d -> :sswitch_57e
        0x2e -> :sswitch_3a8
        0x2f -> :sswitch_4d4
        0x3a -> :sswitch_398
        0x3b -> :sswitch_374
        0x3c -> :sswitch_435
        0x3d -> :sswitch_405
        0x3e -> :sswitch_48c
        0x3f -> :sswitch_394
        0x5b -> :sswitch_378
        0x5d -> :sswitch_37c
        0x5e -> :sswitch_3de
        0x7b -> :sswitch_380
        0x7c -> :sswitch_3c4
        0x7d -> :sswitch_384
        0x7e -> :sswitch_560
    .end sparse-switch
.end method

.method final a(I)V
    .registers 11

    .prologue
    const/16 v8, 0x6d

    const/16 v7, 0x69

    const/16 v6, 0x67

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 875
    iget v4, p0, Lorg/jshybugger/mb;->l:I

    .line 876
    iput v1, p0, Lorg/jshybugger/mb;->v:I

    .line 877
    const/16 v0, 0x64

    if-ne p1, v0, :cond_44

    .line 879
    const/16 v0, 0x3d

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->e(I)V

    :cond_15
    :goto_15
    move v0, v1

    .line 886
    :goto_16
    invoke-direct {p0, v3}, Lorg/jshybugger/mb;->a(Z)I

    move-result v2

    const/16 v5, 0x2f

    if-ne v2, v5, :cond_20

    if-eqz v0, :cond_67

    .line 887
    :cond_20
    const/16 v5, 0xa

    if-eq v2, v5, :cond_27

    const/4 v5, -0x1

    if-ne v2, v5, :cond_4c

    .line 888
    :cond_27
    invoke-virtual {p0, v2}, Lorg/jshybugger/mb;->b(I)V

    .line 889
    iget v0, p0, Lorg/jshybugger/mb;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jshybugger/mb;->m:I

    .line 890
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/jshybugger/mb;->u:[C

    iget v3, p0, Lorg/jshybugger/mb;->v:I

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    .line 891
    iget-object v0, p0, Lorg/jshybugger/mb;->C:Lorg/jshybugger/lM;

    const-string v1, "msg.unterminated.re.lit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    :goto_43
    return-void

    .line 881
    :cond_44
    const/16 v0, 0x18

    if-eq p1, v0, :cond_15

    invoke-static {}, Lorg/jshybugger/lh;->a()Ljava/lang/RuntimeException;

    goto :goto_15

    .line 894
    :cond_4c
    const/16 v5, 0x5c

    if-ne v2, v5, :cond_5b

    .line 895
    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->e(I)V

    .line 896
    invoke-direct {p0}, Lorg/jshybugger/mb;->h()I

    move-result v2

    .line 902
    :cond_57
    :goto_57
    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->e(I)V

    goto :goto_16

    .line 897
    :cond_5b
    const/16 v5, 0x5b

    if-ne v2, v5, :cond_61

    move v0, v3

    .line 898
    goto :goto_57

    .line 899
    :cond_61
    const/16 v5, 0x5d

    if-ne v2, v5, :cond_57

    move v0, v1

    .line 900
    goto :goto_57

    .line 904
    :cond_67
    iget v0, p0, Lorg/jshybugger/mb;->v:I

    .line 907
    :goto_69
    invoke-direct {p0, v6}, Lorg/jshybugger/mb;->f(I)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 908
    invoke-direct {p0, v6}, Lorg/jshybugger/mb;->e(I)V

    goto :goto_69

    .line 909
    :cond_73
    invoke-direct {p0, v7}, Lorg/jshybugger/mb;->f(I)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 910
    invoke-direct {p0, v7}, Lorg/jshybugger/mb;->e(I)V

    goto :goto_69

    .line 911
    :cond_7d
    invoke-direct {p0, v8}, Lorg/jshybugger/mb;->f(I)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 912
    invoke-direct {p0, v8}, Lorg/jshybugger/mb;->e(I)V

    goto :goto_69

    .line 913
    :cond_87
    const/16 v2, 0x79

    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->f(I)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 914
    const/16 v2, 0x79

    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->e(I)V

    goto :goto_69

    .line 918
    :cond_95
    iget v2, p0, Lorg/jshybugger/mb;->v:I

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/jshybugger/mb;->m:I

    .line 920
    invoke-direct {p0}, Lorg/jshybugger/mb;->g()I

    move-result v2

    const/16 v4, 0x5a

    if-gt v2, v4, :cond_cb

    const/16 v4, 0x41

    if-gt v4, v2, :cond_c9

    :cond_a8
    :goto_a8
    if-eqz v3, :cond_b2

    .line 921
    iget-object v2, p0, Lorg/jshybugger/mb;->C:Lorg/jshybugger/lM;

    const-string v3, "msg.invalid.re.flag"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/jshybugger/lM;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    :cond_b2
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/jshybugger/mb;->u:[C

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    iput-object v2, p0, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    .line 925
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/jshybugger/mb;->u:[C

    iget v3, p0, Lorg/jshybugger/mb;->v:I

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lorg/jshybugger/mb;->a:Ljava/lang/String;

    goto/16 :goto_43

    :cond_c9
    move v3, v1

    .line 920
    goto :goto_a8

    :cond_cb
    const/16 v4, 0x61

    if-gt v4, v2, :cond_d3

    const/16 v4, 0x7a

    if-le v2, v4, :cond_a8

    :cond_d3
    move v3, v1

    goto :goto_a8
.end method

.method final b()I
    .registers 8

    .prologue
    const/16 v6, 0x3e

    const/4 v5, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 953
    iget v0, p0, Lorg/jshybugger/mb;->k:I

    iput v0, p0, Lorg/jshybugger/mb;->l:I

    .line 954
    iput v3, p0, Lorg/jshybugger/mb;->v:I

    .line 956
    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->a(Z)I

    move-result v0

    move v4, v0

    :goto_11
    if-eq v4, v1, :cond_256

    .line 957
    iget-boolean v0, p0, Lorg/jshybugger/mb;->p:Z

    if-eqz v0, :cond_8c

    .line 958
    sparse-switch v4, :sswitch_data_268

    .line 993
    invoke-direct {p0, v4}, Lorg/jshybugger/mb;->e(I)V

    .line 994
    iput-boolean v3, p0, Lorg/jshybugger/mb;->o:Z

    .line 998
    :cond_1f
    :goto_1f
    iget-boolean v0, p0, Lorg/jshybugger/mb;->p:Z

    if-nez v0, :cond_92

    iget v0, p0, Lorg/jshybugger/mb;->q:I

    if-nez v0, :cond_92

    .line 999
    invoke-direct {p0}, Lorg/jshybugger/mb;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    .line 1000
    const/16 v0, 0x94

    .line 1100
    :goto_2f
    return v0

    .line 960
    :sswitch_30
    invoke-direct {p0, v4}, Lorg/jshybugger/mb;->e(I)V

    .line 961
    iput-boolean v3, p0, Lorg/jshybugger/mb;->p:Z

    .line 962
    iput-boolean v3, p0, Lorg/jshybugger/mb;->o:Z

    goto :goto_1f

    .line 965
    :sswitch_38
    invoke-direct {p0, v4}, Lorg/jshybugger/mb;->e(I)V

    .line 966
    invoke-direct {p0}, Lorg/jshybugger/mb;->g()I

    move-result v0

    if-ne v0, v6, :cond_1f

    .line 967
    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->a(Z)I

    move-result v0

    .line 968
    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->e(I)V

    .line 969
    iput-boolean v3, p0, Lorg/jshybugger/mb;->p:Z

    .line 970
    iget v0, p0, Lorg/jshybugger/mb;->q:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jshybugger/mb;->q:I

    goto :goto_1f

    .line 974
    :sswitch_51
    invoke-virtual {p0, v4}, Lorg/jshybugger/mb;->b(I)V

    .line 975
    invoke-direct {p0}, Lorg/jshybugger/mb;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    .line 976
    const/16 v0, 0x91

    goto :goto_2f

    .line 979
    :sswitch_5d
    invoke-direct {p0, v4}, Lorg/jshybugger/mb;->e(I)V

    .line 980
    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->a(Z)I

    move-result v0

    :goto_64
    if-eq v0, v1, :cond_75

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->e(I)V

    if-ne v0, v4, :cond_70

    move v0, v2

    :goto_6c
    if-nez v0, :cond_1f

    move v0, v1

    goto :goto_2f

    :cond_70
    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->a(Z)I

    move-result v0

    goto :goto_64

    :cond_75
    iput v3, p0, Lorg/jshybugger/mb;->v:I

    iput-object v5, p0, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    iget-object v0, p0, Lorg/jshybugger/mb;->C:Lorg/jshybugger/lM;

    const-string v4, "msg.XML.bad.form"

    invoke-virtual {v0, v4}, Lorg/jshybugger/lM;->a(Ljava/lang/String;)V

    move v0, v3

    goto :goto_6c

    .line 983
    :sswitch_82
    invoke-direct {p0, v4}, Lorg/jshybugger/mb;->e(I)V

    .line 984
    iput-boolean v2, p0, Lorg/jshybugger/mb;->o:Z

    goto :goto_1f

    .line 990
    :sswitch_88
    invoke-direct {p0, v4}, Lorg/jshybugger/mb;->e(I)V

    goto :goto_1f

    .line 1003
    :cond_8c
    sparse-switch v4, :sswitch_data_292

    .line 1090
    invoke-direct {p0, v4}, Lorg/jshybugger/mb;->e(I)V

    .line 956
    :cond_92
    :goto_92
    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->a(Z)I

    move-result v0

    move v4, v0

    goto/16 :goto_11

    .line 1005
    :sswitch_99
    invoke-direct {p0, v4}, Lorg/jshybugger/mb;->e(I)V

    .line 1006
    invoke-direct {p0}, Lorg/jshybugger/mb;->g()I

    move-result v0

    .line 1007
    sparse-switch v0, :sswitch_data_29c

    .line 1080
    iput-boolean v2, p0, Lorg/jshybugger/mb;->p:Z

    .line 1081
    iget v0, p0, Lorg/jshybugger/mb;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jshybugger/mb;->q:I

    goto :goto_92

    .line 1009
    :sswitch_ac
    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->a(Z)I

    move-result v0

    .line 1010
    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->e(I)V

    .line 1011
    invoke-direct {p0}, Lorg/jshybugger/mb;->g()I

    move-result v0

    .line 1012
    sparse-switch v0, :sswitch_data_2aa

    .line 1055
    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->a(Z)I

    move-result v0

    move v4, v0

    move v0, v2

    :goto_c0
    if-eq v4, v1, :cond_1e0

    invoke-direct {p0, v4}, Lorg/jshybugger/mb;->e(I)V

    packed-switch v4, :pswitch_data_2b4

    :cond_c8
    :goto_c8
    :pswitch_c8
    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->a(Z)I

    move-result v4

    goto :goto_c0

    .line 1014
    :sswitch_cd
    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->a(Z)I

    move-result v0

    .line 1015
    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->e(I)V

    .line 1016
    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->a(Z)I

    move-result v0

    .line 1017
    const/16 v4, 0x2d

    if-ne v0, v4, :cond_120

    .line 1018
    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->e(I)V

    .line 1019
    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->a(Z)I

    move-result v0

    :cond_e3
    :goto_e3
    if-eq v0, v1, :cond_113

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->e(I)V

    const/16 v4, 0x2d

    if-ne v0, v4, :cond_10e

    invoke-direct {p0}, Lorg/jshybugger/mb;->g()I

    move-result v0

    const/16 v4, 0x2d

    if-ne v0, v4, :cond_10e

    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->a(Z)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->e(I)V

    invoke-direct {p0}, Lorg/jshybugger/mb;->g()I

    move-result v4

    if-ne v4, v6, :cond_e3

    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->a(Z)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->e(I)V

    move v0, v2

    :goto_109
    if-nez v0, :cond_92

    move v0, v1

    goto/16 :goto_2f

    :cond_10e
    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->a(Z)I

    move-result v0

    goto :goto_e3

    :cond_113
    iput v3, p0, Lorg/jshybugger/mb;->v:I

    iput-object v5, p0, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    iget-object v0, p0, Lorg/jshybugger/mb;->C:Lorg/jshybugger/lM;

    const-string v4, "msg.XML.bad.form"

    invoke-virtual {v0, v4}, Lorg/jshybugger/lM;->a(Ljava/lang/String;)V

    move v0, v3

    goto :goto_109

    .line 1022
    :cond_120
    iput v3, p0, Lorg/jshybugger/mb;->v:I

    .line 1023
    iput-object v5, p0, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    .line 1024
    iget-object v0, p0, Lorg/jshybugger/mb;->C:Lorg/jshybugger/lM;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v0, v2}, Lorg/jshybugger/lM;->a(Ljava/lang/String;)V

    move v0, v1

    .line 1025
    goto/16 :goto_2f

    .line 1029
    :sswitch_12e
    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->a(Z)I

    move-result v0

    .line 1030
    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->e(I)V

    .line 1031
    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->a(Z)I

    move-result v0

    const/16 v4, 0x43

    if-ne v0, v4, :cond_1c4

    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->a(Z)I

    move-result v0

    const/16 v4, 0x44

    if-ne v0, v4, :cond_1c4

    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->a(Z)I

    move-result v0

    const/16 v4, 0x41

    if-ne v0, v4, :cond_1c4

    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->a(Z)I

    move-result v0

    const/16 v4, 0x54

    if-ne v0, v4, :cond_1c4

    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->a(Z)I

    move-result v0

    const/16 v4, 0x41

    if-ne v0, v4, :cond_1c4

    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->a(Z)I

    move-result v0

    const/16 v4, 0x5b

    if-ne v0, v4, :cond_1c4

    .line 1038
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->e(I)V

    .line 1039
    const/16 v0, 0x44

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->e(I)V

    .line 1040
    const/16 v0, 0x41

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->e(I)V

    .line 1041
    const/16 v0, 0x54

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->e(I)V

    .line 1042
    const/16 v0, 0x41

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->e(I)V

    .line 1043
    const/16 v0, 0x5b

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->e(I)V

    .line 1044
    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->a(Z)I

    move-result v0

    :cond_187
    :goto_187
    if-eq v0, v1, :cond_1b7

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->e(I)V

    const/16 v4, 0x5d

    if-ne v0, v4, :cond_1b2

    invoke-direct {p0}, Lorg/jshybugger/mb;->g()I

    move-result v0

    const/16 v4, 0x5d

    if-ne v0, v4, :cond_1b2

    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->a(Z)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->e(I)V

    invoke-direct {p0}, Lorg/jshybugger/mb;->g()I

    move-result v4

    if-ne v4, v6, :cond_187

    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->a(Z)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->e(I)V

    move v0, v2

    :goto_1ad
    if-nez v0, :cond_92

    move v0, v1

    goto/16 :goto_2f

    :cond_1b2
    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->a(Z)I

    move-result v0

    goto :goto_187

    :cond_1b7
    iput v3, p0, Lorg/jshybugger/mb;->v:I

    iput-object v5, p0, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    iget-object v0, p0, Lorg/jshybugger/mb;->C:Lorg/jshybugger/lM;

    const-string v4, "msg.XML.bad.form"

    invoke-virtual {v0, v4}, Lorg/jshybugger/lM;->a(Ljava/lang/String;)V

    move v0, v3

    goto :goto_1ad

    .line 1048
    :cond_1c4
    iput v3, p0, Lorg/jshybugger/mb;->v:I

    .line 1049
    iput-object v5, p0, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    .line 1050
    iget-object v0, p0, Lorg/jshybugger/mb;->C:Lorg/jshybugger/lM;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v0, v2}, Lorg/jshybugger/lM;->a(Ljava/lang/String;)V

    move v0, v1

    .line 1051
    goto/16 :goto_2f

    .line 1055
    :pswitch_1d2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_c8

    :pswitch_1d6
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_c8

    move v0, v2

    :goto_1db
    if-nez v0, :cond_92

    move v0, v1

    goto/16 :goto_2f

    :cond_1e0
    iput v3, p0, Lorg/jshybugger/mb;->v:I

    iput-object v5, p0, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    iget-object v0, p0, Lorg/jshybugger/mb;->C:Lorg/jshybugger/lM;

    const-string v4, "msg.XML.bad.form"

    invoke-virtual {v0, v4}, Lorg/jshybugger/lM;->a(Ljava/lang/String;)V

    move v0, v3

    goto :goto_1db

    .line 1060
    :sswitch_1ed
    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->a(Z)I

    move-result v0

    .line 1061
    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->e(I)V

    .line 1062
    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->a(Z)I

    move-result v0

    :goto_1f8
    if-eq v0, v1, :cond_219

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->e(I)V

    const/16 v4, 0x3f

    if-ne v0, v4, :cond_214

    invoke-direct {p0}, Lorg/jshybugger/mb;->g()I

    move-result v0

    if-ne v0, v6, :cond_214

    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->a(Z)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->e(I)V

    move v0, v2

    :goto_20f
    if-nez v0, :cond_92

    move v0, v1

    goto/16 :goto_2f

    :cond_214
    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->a(Z)I

    move-result v0

    goto :goto_1f8

    :cond_219
    iput v3, p0, Lorg/jshybugger/mb;->v:I

    iput-object v5, p0, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    iget-object v0, p0, Lorg/jshybugger/mb;->C:Lorg/jshybugger/lM;

    const-string v4, "msg.XML.bad.form"

    invoke-virtual {v0, v4}, Lorg/jshybugger/lM;->a(Ljava/lang/String;)V

    move v0, v3

    goto :goto_20f

    .line 1066
    :sswitch_226
    invoke-direct {p0, v2}, Lorg/jshybugger/mb;->a(Z)I

    move-result v0

    .line 1067
    invoke-direct {p0, v0}, Lorg/jshybugger/mb;->e(I)V

    .line 1068
    iget v0, p0, Lorg/jshybugger/mb;->q:I

    if-nez v0, :cond_23f

    .line 1070
    iput v3, p0, Lorg/jshybugger/mb;->v:I

    .line 1071
    iput-object v5, p0, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    .line 1072
    iget-object v0, p0, Lorg/jshybugger/mb;->C:Lorg/jshybugger/lM;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v0, v2}, Lorg/jshybugger/lM;->a(Ljava/lang/String;)V

    move v0, v1

    .line 1073
    goto/16 :goto_2f

    .line 1075
    :cond_23f
    iput-boolean v2, p0, Lorg/jshybugger/mb;->p:Z

    .line 1076
    iget v0, p0, Lorg/jshybugger/mb;->q:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jshybugger/mb;->q:I

    goto/16 :goto_92

    .line 1086
    :sswitch_249
    invoke-virtual {p0, v4}, Lorg/jshybugger/mb;->b(I)V

    .line 1087
    invoke-direct {p0}, Lorg/jshybugger/mb;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    .line 1088
    const/16 v0, 0x91

    goto/16 :goto_2f

    .line 1096
    :cond_256
    iget v0, p0, Lorg/jshybugger/mb;->k:I

    iput v0, p0, Lorg/jshybugger/mb;->m:I

    .line 1097
    iput v3, p0, Lorg/jshybugger/mb;->v:I

    .line 1098
    iput-object v5, p0, Lorg/jshybugger/mb;->b:Ljava/lang/String;

    .line 1099
    iget-object v0, p0, Lorg/jshybugger/mb;->C:Lorg/jshybugger/lM;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v0, v2}, Lorg/jshybugger/lM;->a(Ljava/lang/String;)V

    move v0, v1

    .line 1100
    goto/16 :goto_2f

    .line 958
    :sswitch_data_268
    .sparse-switch
        0x9 -> :sswitch_88
        0xa -> :sswitch_88
        0xd -> :sswitch_88
        0x20 -> :sswitch_88
        0x22 -> :sswitch_5d
        0x27 -> :sswitch_5d
        0x2f -> :sswitch_38
        0x3d -> :sswitch_82
        0x3e -> :sswitch_30
        0x7b -> :sswitch_51
    .end sparse-switch

    .line 1003
    :sswitch_data_292
    .sparse-switch
        0x3c -> :sswitch_99
        0x7b -> :sswitch_249
    .end sparse-switch

    .line 1007
    :sswitch_data_29c
    .sparse-switch
        0x21 -> :sswitch_ac
        0x2f -> :sswitch_226
        0x3f -> :sswitch_1ed
    .end sparse-switch

    .line 1012
    :sswitch_data_2aa
    .sparse-switch
        0x2d -> :sswitch_cd
        0x5b -> :sswitch_12e
    .end sparse-switch

    .line 1055
    :pswitch_data_2b4
    .packed-switch 0x3c
        :pswitch_1d2
        :pswitch_c8
        :pswitch_1d6
    .end packed-switch
.end method

.method b(I)V
    .registers 5

    .prologue
    .line 1243
    iget v0, p0, Lorg/jshybugger/mb;->g:I

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/jshybugger/mb;->f:[I

    iget v1, p0, Lorg/jshybugger/mb;->g:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_13

    .line 1244
    invoke-static {}, Lorg/jshybugger/lh;->a()Ljava/lang/RuntimeException;

    .line 1245
    :cond_13
    iget-object v0, p0, Lorg/jshybugger/mb;->f:[I

    iget v1, p0, Lorg/jshybugger/mb;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jshybugger/mb;->g:I

    aput p1, v0, v1

    .line 1246
    iget v0, p0, Lorg/jshybugger/mb;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jshybugger/mb;->k:I

    .line 1247
    return-void
.end method

.method final c()I
    .registers 3

    .prologue
    .line 1395
    iget v0, p0, Lorg/jshybugger/mb;->B:I

    iget v1, p0, Lorg/jshybugger/mb;->x:I

    sub-int/2addr v0, v1

    .line 1396
    iget v1, p0, Lorg/jshybugger/mb;->y:I

    if-ltz v1, :cond_b

    add-int/lit8 v0, v0, -0x1

    .line 1397
    :cond_b
    return v0
.end method

.method final d()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1402
    iget-object v0, p0, Lorg/jshybugger/mb;->i:Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 1404
    iget v0, p0, Lorg/jshybugger/mb;->B:I

    .line 1405
    iget v1, p0, Lorg/jshybugger/mb;->y:I

    if-ltz v1, :cond_15

    .line 1406
    add-int/lit8 v0, v0, -0x1

    .line 1415
    :cond_c
    iget-object v1, p0, Lorg/jshybugger/mb;->i:Ljava/lang/String;

    iget v2, p0, Lorg/jshybugger/mb;->x:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1442
    :goto_14
    return-object v0

    .line 1408
    :cond_15
    :goto_15
    iget v1, p0, Lorg/jshybugger/mb;->A:I

    if-eq v0, v1, :cond_c

    .line 1409
    iget-object v1, p0, Lorg/jshybugger/mb;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1410
    invoke-static {v1}, Lorg/jshybugger/lS;->a(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1411
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 1418
    :cond_28
    iget v0, p0, Lorg/jshybugger/mb;->B:I

    iget v1, p0, Lorg/jshybugger/mb;->x:I

    sub-int/2addr v0, v1

    .line 1419
    iget v1, p0, Lorg/jshybugger/mb;->y:I

    if-ltz v1, :cond_4d

    .line 1420
    add-int/lit8 v0, v0, -0x1

    .line 1442
    :cond_33
    :goto_33
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/jshybugger/mb;->j:[C

    iget v3, p0, Lorg/jshybugger/mb;->x:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v1

    goto :goto_14

    .line 1434
    :cond_3e
    iget v1, p0, Lorg/jshybugger/mb;->x:I

    add-int/2addr v1, v0

    .line 1436
    :cond_41
    iget-object v2, p0, Lorg/jshybugger/mb;->j:[C

    aget-char v1, v2, v1

    .line 1437
    invoke-static {v1}, Lorg/jshybugger/lS;->a(I)Z

    move-result v1

    if-nez v1, :cond_33

    .line 1438
    add-int/lit8 v0, v0, 0x1

    .line 1424
    :cond_4d
    iget v1, p0, Lorg/jshybugger/mb;->x:I

    add-int/2addr v1, v0

    .line 1425
    iget v2, p0, Lorg/jshybugger/mb;->A:I

    if-ne v1, v2, :cond_41

    .line 1427
    :try_start_54
    invoke-direct {p0}, Lorg/jshybugger/mb;->j()Z
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_5b

    move-result v1

    if-nez v1, :cond_3e

    goto :goto_33

    .line 1430
    :catch_5b
    move-exception v1

    goto :goto_33
.end method

.method e()Z
    .registers 3

    .prologue
    .line 1519
    iget v0, p0, Lorg/jshybugger/mb;->s:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method
