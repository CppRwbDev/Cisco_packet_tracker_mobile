.class public Ltwitter4j/JSONTokener;
.super Ljava/lang/Object;
.source "JSONTokener.java"


# instance fields
.field private character:I

.field private eof:Z

.field private index:I

.field private line:I

.field private previous:C

.field private final reader:Ljava/io/Reader;

.field private usePrevious:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Ltwitter4j/JSONTokener;-><init>(Ljava/io/Reader;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 5
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1a

    .end local p1    # "reader":Ljava/io/Reader;
    :goto_b
    iput-object p1, p0, Ltwitter4j/JSONTokener;->reader:Ljava/io/Reader;

    .line 56
    iput-boolean v1, p0, Ltwitter4j/JSONTokener;->eof:Z

    .line 57
    iput-boolean v1, p0, Ltwitter4j/JSONTokener;->usePrevious:Z

    .line 58
    iput-char v1, p0, Ltwitter4j/JSONTokener;->previous:C

    .line 59
    iput v1, p0, Ltwitter4j/JSONTokener;->index:I

    .line 60
    iput v2, p0, Ltwitter4j/JSONTokener;->character:I

    .line 61
    iput v2, p0, Ltwitter4j/JSONTokener;->line:I

    .line 62
    return-void

    .line 54
    .restart local p1    # "reader":Ljava/io/Reader;
    :cond_1a
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p1, v0

    goto :goto_b
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ltwitter4j/JSONTokener;-><init>(Ljava/io/Reader;)V

    .line 80
    return-void
.end method


# virtual methods
.method public back()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 89
    iget-boolean v0, p0, Ltwitter4j/JSONTokener;->usePrevious:Z

    if-nez v0, :cond_8

    iget v0, p0, Ltwitter4j/JSONTokener;->index:I

    if-gtz v0, :cond_10

    .line 90
    :cond_8
    new-instance v0, Ltwitter4j/JSONException;

    const-string v1, "Stepping back two steps is not supported"

    invoke-direct {v0, v1}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_10
    iget v0, p0, Ltwitter4j/JSONTokener;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ltwitter4j/JSONTokener;->index:I

    .line 93
    iget v0, p0, Ltwitter4j/JSONTokener;->character:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ltwitter4j/JSONTokener;->character:I

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltwitter4j/JSONTokener;->usePrevious:Z

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/JSONTokener;->eof:Z

    .line 96
    return-void
.end method

.method public end()Z
    .registers 2

    .prologue
    .line 100
    iget-boolean v0, p0, Ltwitter4j/JSONTokener;->eof:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Ltwitter4j/JSONTokener;->usePrevious:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public more()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->next()C

    .line 112
    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->end()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 113
    const/4 v0, 0x0

    .line 116
    :goto_a
    return v0

    .line 115
    :cond_b
    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->back()V

    .line 116
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public next()C
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 127
    iget-boolean v4, p0, Ltwitter4j/JSONTokener;->usePrevious:Z

    if-eqz v4, :cond_28

    .line 128
    iput-boolean v2, p0, Ltwitter4j/JSONTokener;->usePrevious:Z

    .line 129
    iget-char v0, p0, Ltwitter4j/JSONTokener;->previous:C

    .line 142
    .local v0, "c":I
    :cond_c
    :goto_c
    iget v4, p0, Ltwitter4j/JSONTokener;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ltwitter4j/JSONTokener;->index:I

    .line 143
    iget-char v4, p0, Ltwitter4j/JSONTokener;->previous:C

    const/16 v5, 0xd

    if-ne v4, v5, :cond_3d

    .line 144
    iget v4, p0, Ltwitter4j/JSONTokener;->line:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ltwitter4j/JSONTokener;->line:I

    .line 145
    if-ne v0, v6, :cond_3b

    :goto_20
    iput v2, p0, Ltwitter4j/JSONTokener;->character:I

    .line 152
    :goto_22
    int-to-char v2, v0

    iput-char v2, p0, Ltwitter4j/JSONTokener;->previous:C

    .line 153
    iget-char v2, p0, Ltwitter4j/JSONTokener;->previous:C

    return v2

    .line 132
    .end local v0    # "c":I
    :cond_28
    :try_start_28
    iget-object v4, p0, Ltwitter4j/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {v4}, Ljava/io/Reader;->read()I
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_34

    move-result v0

    .line 137
    .restart local v0    # "c":I
    if-gtz v0, :cond_c

    .line 138
    iput-boolean v3, p0, Ltwitter4j/JSONTokener;->eof:Z

    .line 139
    const/4 v0, 0x0

    goto :goto_c

    .line 133
    .end local v0    # "c":I
    :catch_34
    move-exception v1

    .line 134
    .local v1, "exception":Ljava/io/IOException;
    new-instance v2, Ltwitter4j/JSONException;

    invoke-direct {v2, v1}, Ltwitter4j/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .end local v1    # "exception":Ljava/io/IOException;
    .restart local v0    # "c":I
    :cond_3b
    move v2, v3

    .line 145
    goto :goto_20

    .line 146
    :cond_3d
    if-ne v0, v6, :cond_48

    .line 147
    iget v3, p0, Ltwitter4j/JSONTokener;->line:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ltwitter4j/JSONTokener;->line:I

    .line 148
    iput v2, p0, Ltwitter4j/JSONTokener;->character:I

    goto :goto_22

    .line 150
    :cond_48
    iget v2, p0, Ltwitter4j/JSONTokener;->character:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ltwitter4j/JSONTokener;->character:I

    goto :goto_22
.end method

.method public next(C)C
    .registers 5
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->next()C

    move-result v0

    .line 167
    .local v0, "n":C
    if-eq v0, p1, :cond_2e

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and instead saw \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ltwitter4j/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object v1

    throw v1

    .line 171
    :cond_2e
    return v0
.end method

.method public next(I)Ljava/lang/String;
    .registers 5
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 184
    if-nez p1, :cond_5

    .line 185
    const-string v2, ""

    .line 198
    :goto_4
    return-object v2

    .line 188
    :cond_5
    new-array v0, p1, [C

    .line 189
    .local v0, "chars":[C
    const/4 v1, 0x0

    .line 191
    .local v1, "pos":I
    :goto_8
    if-ge v1, p1, :cond_20

    .line 192
    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->next()C

    move-result v2

    aput-char v2, v0, v1

    .line 193
    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->end()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 194
    const-string v2, "Substring bounds error"

    invoke-virtual {p0, v2}, Ltwitter4j/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object v2

    throw v2

    .line 196
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 198
    :cond_20
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_4
.end method

.method public nextClean()C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 210
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->next()C

    move-result v0

    .line 211
    .local v0, "c":C
    if-eqz v0, :cond_a

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    .line 212
    :cond_a
    return v0
.end method

.method public nextString(C)Ljava/lang/String;
    .registers 6
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_5
    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->next()C

    move-result v0

    .line 235
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_5e

    .line 272
    if-ne v0, p1, :cond_5a

    .line 273
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 239
    :sswitch_13
    const-string v2, "Unterminated string"

    invoke-virtual {p0, v2}, Ltwitter4j/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object v2

    throw v2

    .line 241
    :sswitch_1a
    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->next()C

    move-result v0

    .line 242
    sparse-switch v0, :sswitch_data_70

    .line 268
    const-string v2, "Illegal escape."

    invoke-virtual {p0, v2}, Ltwitter4j/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object v2

    throw v2

    .line 244
    :sswitch_28
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 247
    :sswitch_2e
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 250
    :sswitch_34
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 253
    :sswitch_3a
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 256
    :sswitch_40
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 259
    :sswitch_46
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Ltwitter4j/JSONTokener;->next(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 265
    :sswitch_56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 275
    :cond_5a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 235
    :sswitch_data_5e
    .sparse-switch
        0x0 -> :sswitch_13
        0xa -> :sswitch_13
        0xd -> :sswitch_13
        0x5c -> :sswitch_1a
    .end sparse-switch

    .line 242
    :sswitch_data_70
    .sparse-switch
        0x22 -> :sswitch_56
        0x27 -> :sswitch_56
        0x2f -> :sswitch_56
        0x5c -> :sswitch_56
        0x62 -> :sswitch_28
        0x66 -> :sswitch_3a
        0x6e -> :sswitch_34
        0x72 -> :sswitch_40
        0x74 -> :sswitch_2e
        0x75 -> :sswitch_46
    .end sparse-switch
.end method

.method public nextValue()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->nextClean()C

    move-result v0

    .line 291
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_56

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_c
    const/16 v3, 0x20

    if-lt v0, v3, :cond_37

    const-string v3, ",:]}/\\\"[{;=#"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_37

    .line 314
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->next()C

    move-result v0

    goto :goto_c

    .line 294
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :sswitch_20
    invoke-virtual {p0, v0}, Ltwitter4j/JSONTokener;->nextString(C)Ljava/lang/String;

    move-result-object v3

    .line 323
    :goto_24
    return-object v3

    .line 296
    :sswitch_25
    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->back()V

    .line 297
    new-instance v3, Ltwitter4j/JSONObject;

    invoke-direct {v3, p0}, Ltwitter4j/JSONObject;-><init>(Ltwitter4j/JSONTokener;)V

    goto :goto_24

    .line 299
    :sswitch_2e
    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->back()V

    .line 300
    new-instance v3, Ltwitter4j/JSONArray;

    invoke-direct {v3, p0}, Ltwitter4j/JSONArray;-><init>(Ltwitter4j/JSONTokener;)V

    goto :goto_24

    .line 317
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_37
    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->back()V

    .line 319
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "string":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 321
    const-string v3, "Missing value"

    invoke-virtual {p0, v3}, Ltwitter4j/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object v3

    throw v3

    .line 323
    :cond_51
    invoke-static {v2}, Ltwitter4j/JSONObject;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_24

    .line 291
    :sswitch_data_56
    .sparse-switch
        0x22 -> :sswitch_20
        0x27 -> :sswitch_20
        0x5b -> :sswitch_2e
        0x7b -> :sswitch_25
    .end sparse-switch
.end method

.method public syntaxError(Ljava/lang/String;)Ltwitter4j/JSONException;
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 334
    new-instance v0, Ltwitter4j/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/JSONTokener;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [character "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/JSONTokener;->character:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/JSONTokener;->line:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
