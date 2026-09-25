.class public final Lcom/fasterxml/jackson/core/io/CharTypes;
.super Ljava/lang/Object;
.source "CharTypes.java"


# static fields
.field private static final HEX_BYTES:[B

.field private static final HEX_CHARS:[C

.field static final sHexValues:[I

.field static final sInputCodes:[I

.field static final sInputCodesComment:[I

.field static final sInputCodesJsNames:[I

.field static final sInputCodesUtf8:[I

.field static final sInputCodesUtf8JsNames:[I

.field static final sOutputEscapes128:[I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/16 v8, 0xa

    const/16 v7, 0x100

    const/4 v1, -0x1

    const/16 v4, 0x80

    const/4 v2, 0x0

    .line 13
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->HEX_CHARS:[C

    .line 16
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->HEX_CHARS:[C

    array-length v3, v0

    .line 17
    new-array v0, v3, [B

    sput-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->HEX_BYTES:[B

    move v0, v2

    .line 18
    :goto_18
    if-ge v0, v3, :cond_26

    .line 19
    sget-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->HEX_BYTES:[B

    sget-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->HEX_CHARS:[C

    aget-char v6, v6, v0

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    .line 18
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 34
    :cond_26
    new-array v3, v7, [I

    move v0, v2

    .line 36
    :goto_29
    const/16 v5, 0x20

    if-ge v0, v5, :cond_32

    .line 37
    aput v1, v3, v0

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 40
    :cond_32
    const/16 v0, 0x22

    const/4 v5, 0x1

    aput v5, v3, v0

    .line 41
    const/16 v0, 0x5c

    const/4 v5, 0x1

    aput v5, v3, v0

    .line 42
    sput-object v3, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodes:[I

    .line 51
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodes:[I

    array-length v0, v0

    new-array v5, v0, [I

    .line 52
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodes:[I

    sget-object v3, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodes:[I

    array-length v3, v3

    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v4

    .line 53
    :goto_4c
    if-ge v3, v7, :cond_6d

    .line 57
    and-int/lit16 v0, v3, 0xe0

    const/16 v6, 0xc0

    if-ne v0, v6, :cond_5b

    .line 58
    const/4 v0, 0x2

    .line 68
    :goto_55
    aput v0, v5, v3

    .line 53
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4c

    .line 59
    :cond_5b
    and-int/lit16 v0, v3, 0xf0

    const/16 v6, 0xe0

    if-ne v0, v6, :cond_63

    .line 60
    const/4 v0, 0x3

    goto :goto_55

    .line 61
    :cond_63
    and-int/lit16 v0, v3, 0xf8

    const/16 v6, 0xf0

    if-ne v0, v6, :cond_6b

    .line 63
    const/4 v0, 0x4

    goto :goto_55

    :cond_6b
    move v0, v1

    .line 66
    goto :goto_55

    .line 70
    :cond_6d
    sput-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUtf8:[I

    .line 81
    new-array v3, v7, [I

    .line 83
    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([II)V

    .line 85
    const/16 v0, 0x21

    :goto_76
    if-ge v0, v7, :cond_84

    .line 86
    int-to-char v5, v0

    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 87
    aput v2, v3, v0

    .line 85
    :cond_81
    add-int/lit8 v0, v0, 0x1

    goto :goto_76

    .line 93
    :cond_84
    const/16 v0, 0x40

    aput v2, v3, v0

    .line 94
    const/16 v0, 0x23

    aput v2, v3, v0

    .line 95
    const/16 v0, 0x2a

    aput v2, v3, v0

    .line 96
    const/16 v0, 0x2d

    aput v2, v3, v0

    .line 97
    const/16 v0, 0x2b

    aput v2, v3, v0

    .line 98
    sput-object v3, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesJsNames:[I

    .line 108
    new-array v0, v7, [I

    .line 110
    sget-object v3, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesJsNames:[I

    sget-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesJsNames:[I

    array-length v5, v5

    invoke-static {v3, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    invoke-static {v0, v4, v4, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 112
    sput-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUtf8JsNames:[I

    .line 119
    new-array v0, v7, [I

    sput-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    .line 122
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUtf8:[I

    sget-object v3, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    invoke-static {v0, v4, v3, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    const/16 v3, 0x20

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 126
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    const/16 v3, 0x9

    aput v2, v0, v3

    .line 127
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    aput v8, v0, v8

    .line 128
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    const/16 v3, 0xd

    const/16 v5, 0xd

    aput v5, v0, v3

    .line 129
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    const/16 v3, 0x2a

    const/16 v5, 0x2a

    aput v5, v0, v3

    .line 138
    new-array v3, v4, [I

    move v0, v2

    .line 140
    :goto_d8
    const/16 v5, 0x20

    if-ge v0, v5, :cond_e1

    .line 142
    aput v1, v3, v0

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_d8

    .line 147
    :cond_e1
    const/16 v0, 0x22

    const/16 v5, 0x22

    aput v5, v3, v0

    .line 148
    const/16 v0, 0x5c

    const/16 v5, 0x5c

    aput v5, v3, v0

    .line 150
    const/16 v0, 0x8

    const/16 v5, 0x62

    aput v5, v3, v0

    .line 151
    const/16 v0, 0x9

    const/16 v5, 0x74

    aput v5, v3, v0

    .line 152
    const/16 v0, 0xc

    const/16 v5, 0x66

    aput v5, v3, v0

    .line 153
    const/16 v0, 0x6e

    aput v0, v3, v8

    .line 154
    const/16 v0, 0xd

    const/16 v5, 0x72

    aput v5, v3, v0

    .line 155
    sput-object v3, Lcom/fasterxml/jackson/core/io/CharTypes;->sOutputEscapes128:[I

    .line 163
    new-array v0, v4, [I

    sput-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    .line 165
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    move v0, v2

    .line 166
    :goto_115
    if-ge v0, v8, :cond_120

    .line 167
    sget-object v1, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    add-int/lit8 v3, v0, 0x30

    aput v0, v1, v3

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_115

    :cond_120
    move v0, v2

    .line 169
    :goto_121
    const/4 v1, 0x6

    if-ge v0, v1, :cond_137

    .line 170
    sget-object v1, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v3, v0, 0xa

    aput v3, v1, v2

    .line 171
    sget-object v1, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    add-int/lit8 v2, v0, 0x41

    add-int/lit8 v3, v0, 0xa

    aput v3, v1, v2

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_121

    .line 173
    :cond_137
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 10

    .prologue
    const/16 v7, 0x30

    .line 199
    sget-object v1, Lcom/fasterxml/jackson/core/io/CharTypes;->sOutputEscapes128:[I

    .line 200
    array-length v2, v1

    .line 201
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_a
    if-ge v0, v3, :cond_48

    .line 202
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 203
    if-ge v4, v2, :cond_16

    aget v5, v1, v4

    if-nez v5, :cond_1c

    .line 204
    :cond_16
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 207
    :cond_1c
    const/16 v5, 0x5c

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    aget v5, v1, v4

    .line 209
    if-gez v5, :cond_43

    .line 218
    const/16 v5, 0x75

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    sget-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->HEX_CHARS:[C

    shr-int/lit8 v6, v4, 0x4

    aget-char v5, v5, v6

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    sget-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->HEX_CHARS:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v5, v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 225
    :cond_43
    int-to-char v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 228
    :cond_48
    return-void
.end method

.method public static charToHex(I)I
    .registers 2

    .prologue
    .line 194
    const/16 v0, 0x7f

    if-le p0, v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    aget v0, v0, p0

    goto :goto_5
.end method

.method public static copyHexBytes()[B
    .registers 1

    .prologue
    .line 237
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->HEX_BYTES:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public static copyHexChars()[C
    .registers 1

    .prologue
    .line 232
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->HEX_CHARS:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    return-object v0
.end method

.method public static get7BitOutputEscapes()[I
    .registers 1

    .prologue
    .line 190
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sOutputEscapes128:[I

    return-object v0
.end method

.method public static getInputCodeComment()[I
    .registers 1

    .prologue
    .line 181
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    return-object v0
.end method

.method public static getInputCodeLatin1()[I
    .registers 1

    .prologue
    .line 175
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodes:[I

    return-object v0
.end method

.method public static getInputCodeLatin1JsNames()[I
    .registers 1

    .prologue
    .line 178
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesJsNames:[I

    return-object v0
.end method

.method public static getInputCodeUtf8()[I
    .registers 1

    .prologue
    .line 176
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUtf8:[I

    return-object v0
.end method

.method public static getInputCodeUtf8JsNames()[I
    .registers 1

    .prologue
    .line 179
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUtf8JsNames:[I

    return-object v0
.end method
