.class public final Ltwitter4j/HttpParameter;
.super Ljava/lang/Object;
.source "HttpParameter.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field private static final GIF:Ljava/lang/String; = "image/gif"

.field private static final JPEG:Ljava/lang/String; = "image/jpeg"

.field private static final OCTET:Ljava/lang/String; = "application/octet-stream"

.field private static final PNG:Ljava/lang/String; = "image/png"

.field private static final serialVersionUID:J = 0x382981cb088625a4L


# instance fields
.field private file:Ljava/io/File;

.field private fileBody:Ljava/io/InputStream;

.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    .line 35
    iput-object v0, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 64
    iput-object p1, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 65
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    .line 35
    iput-object v0, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 54
    iput-object p1, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 55
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    .line 35
    iput-object v0, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 59
    iput-object p1, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 60
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    .line 35
    iput-object v0, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 43
    iput-object p1, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    .line 35
    iput-object v0, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 38
    iput-object p1, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "fileBody"    # Ljava/io/InputStream;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    .line 35
    iput-object v0, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 48
    iput-object p1, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    .line 50
    iput-object p3, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    .line 35
    iput-object v0, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 69
    iput-object p1, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 70
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    .line 71
    return-void
.end method

.method static containsFile(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/HttpParameter;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "params":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/HttpParameter;>;"
    const/4 v0, 0x0

    .line 175
    .local v0, "containsFile":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/HttpParameter;

    .line 176
    .local v1, "param":Ltwitter4j/HttpParameter;
    invoke-virtual {v1}, Ltwitter4j/HttpParameter;->isFile()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 177
    const/4 v0, 0x1

    .line 181
    .end local v1    # "param":Ltwitter4j/HttpParameter;
    :cond_18
    return v0
.end method

.method public static containsFile([Ltwitter4j/HttpParameter;)Z
    .registers 6
    .param p0, "params"    # [Ltwitter4j/HttpParameter;

    .prologue
    const/4 v2, 0x0

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "containsFile":Z
    if-nez p0, :cond_5

    .line 169
    :goto_4
    return v2

    .line 163
    :cond_5
    array-length v3, p0

    :goto_6
    if-ge v2, v3, :cond_11

    aget-object v1, p0, v2

    .line 164
    .local v1, "param":Ltwitter4j/HttpParameter;
    invoke-virtual {v1}, Ltwitter4j/HttpParameter;->isFile()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 165
    const/4 v0, 0x1

    .end local v1    # "param":Ltwitter4j/HttpParameter;
    :cond_11
    move v2, v0

    .line 169
    goto :goto_4

    .line 163
    .restart local v1    # "param":Ltwitter4j/HttpParameter;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 259
    const/4 v1, 0x0

    .line 261
    .local v1, "encoded":Ljava/lang/String;
    :try_start_1
    const-string v4, "UTF-8"

    invoke-static {p0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_6} :catch_62

    move-result-object v1

    .line 264
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 266
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_5d

    .line 267
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 268
    .local v2, "focus":C
    const/16 v4, 0x2a

    if-ne v2, v4, :cond_27

    .line 269
    const-string v4, "%2A"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :goto_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 270
    :cond_27
    const/16 v4, 0x2b

    if-ne v2, v4, :cond_31

    .line 271
    const-string v4, "%20"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 272
    :cond_31
    const/16 v4, 0x25

    if-ne v2, v4, :cond_59

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_59

    add-int/lit8 v4, v3, 0x1

    .line 273
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x37

    if-ne v4, v5, :cond_59

    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x45

    if-ne v4, v5, :cond_59

    .line 274
    const/16 v4, 0x7e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    add-int/lit8 v3, v3, 0x2

    goto :goto_24

    .line 277
    :cond_59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 280
    .end local v2    # "focus":C
    :cond_5d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 262
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v3    # "i":I
    :catch_62
    move-exception v4

    goto :goto_7
.end method

.method public static encodeParameters([Ltwitter4j/HttpParameter;)Ljava/lang/String;
    .registers 6
    .param p0, "httpParams"    # [Ltwitter4j/HttpParameter;

    .prologue
    .line 234
    if-nez p0, :cond_5

    .line 235
    const-string v2, ""

    .line 248
    :goto_4
    return-object v2

    .line 237
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_60

    .line 239
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ltwitter4j/HttpParameter;->isFile()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 240
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parameter ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p0, v1

    iget-object v4, v4, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]should be text"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 242
    :cond_39
    if-eqz v1, :cond_40

    .line 243
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_40
    aget-object v2, p0, v1

    iget-object v2, v2, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    invoke-static {v2}, Ltwitter4j/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    .line 246
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v1

    iget-object v3, v3, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    invoke-static {v3}, Ltwitter4j/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 248
    :cond_60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static getParameterArray(Ljava/lang/String;I)[Ltwitter4j/HttpParameter;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 189
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ltwitter4j/HttpParameter;->getParameterArray(Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/HttpParameter;

    move-result-object v0

    return-object v0
.end method

.method public static getParameterArray(Ljava/lang/String;ILjava/lang/String;I)[Ltwitter4j/HttpParameter;
    .registers 6
    .param p0, "name1"    # Ljava/lang/String;
    .param p1, "value1"    # I
    .param p2, "name2"    # Ljava/lang/String;
    .param p3, "value2"    # I

    .prologue
    .line 200
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, p2, v1}, Ltwitter4j/HttpParameter;->getParameterArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/HttpParameter;

    move-result-object v0

    return-object v0
.end method

.method public static getParameterArray(Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/HttpParameter;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 185
    const/4 v0, 0x1

    new-array v0, v0, [Ltwitter4j/HttpParameter;

    const/4 v1, 0x0

    new-instance v2, Ltwitter4j/HttpParameter;

    invoke-direct {v2, p0, p1}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getParameterArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/HttpParameter;
    .registers 7
    .param p0, "name1"    # Ljava/lang/String;
    .param p1, "value1"    # Ljava/lang/String;
    .param p2, "name2"    # Ljava/lang/String;
    .param p3, "value2"    # Ljava/lang/String;

    .prologue
    .line 194
    const/4 v0, 0x2

    new-array v0, v0, [Ltwitter4j/HttpParameter;

    const/4 v1, 0x0

    new-instance v2, Ltwitter4j/HttpParameter;

    invoke-direct {v2, p0, p1}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ltwitter4j/HttpParameter;

    invoke-direct {v2, p2, p3}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 225
    move-object v1, p1

    check-cast v1, Ltwitter4j/HttpParameter;

    .line 226
    .local v1, "that":Ltwitter4j/HttpParameter;
    iget-object v2, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 227
    .local v0, "compared":I
    if-nez v0, :cond_15

    .line 228
    iget-object v2, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 230
    :cond_15
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    if-ne p0, p1, :cond_5

    .line 155
    :cond_4
    :goto_4
    return v1

    .line 143
    :cond_5
    instance-of v3, p1, Ltwitter4j/HttpParameter;

    if-nez v3, :cond_b

    move v1, v2

    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 145
    check-cast v0, Ltwitter4j/HttpParameter;

    .line 147
    .local v0, "that":Ltwitter4j/HttpParameter;
    iget-object v3, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    iget-object v4, v0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    :cond_1c
    move v1, v2

    .line 148
    goto :goto_4

    .line 147
    :cond_1e
    iget-object v3, v0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    if-nez v3, :cond_1c

    .line 149
    :cond_22
    iget-object v3, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    if-eqz v3, :cond_32

    iget-object v3, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    iget-object v4, v0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    :cond_30
    move v1, v2

    .line 150
    goto :goto_4

    .line 149
    :cond_32
    iget-object v3, v0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    if-nez v3, :cond_30

    .line 151
    :cond_36
    iget-object v3, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    move v1, v2

    goto :goto_4

    .line 152
    :cond_42
    iget-object v3, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    if-eqz v3, :cond_52

    iget-object v3, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_50
    move v1, v2

    .line 153
    goto :goto_4

    .line 152
    :cond_52
    iget-object v3, v0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_50
.end method

.method public getContentType()Ljava/lang/String;
    .registers 6

    .prologue
    .line 106
    invoke-virtual {p0}, Ltwitter4j/HttpParameter;->isFile()Z

    move-result v3

    if-nez v3, :cond_e

    .line 107
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "not a file"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 110
    :cond_e
    iget-object v3, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "extensions":Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 112
    .local v2, "index":I
    const/4 v3, -0x1

    if-ne v3, v2, :cond_20

    .line 114
    const-string v0, "application/octet-stream"

    .line 137
    .local v0, "contentType":Ljava/lang/String;
    :goto_1f
    return-object v0

    .line 116
    .end local v0    # "contentType":Ljava/lang/String;
    :cond_20
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5b

    .line 118
    const-string v3, "gif"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 119
    const-string v0, "image/gif"

    .restart local v0    # "contentType":Ljava/lang/String;
    goto :goto_1f

    .line 120
    .end local v0    # "contentType":Ljava/lang/String;
    :cond_42
    const-string v3, "png"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 121
    const-string v0, "image/png"

    .restart local v0    # "contentType":Ljava/lang/String;
    goto :goto_1f

    .line 122
    .end local v0    # "contentType":Ljava/lang/String;
    :cond_4d
    const-string v3, "jpg"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 123
    const-string v0, "image/jpeg"

    .restart local v0    # "contentType":Ljava/lang/String;
    goto :goto_1f

    .line 125
    .end local v0    # "contentType":Ljava/lang/String;
    :cond_58
    const-string v0, "application/octet-stream"

    .restart local v0    # "contentType":Ljava/lang/String;
    goto :goto_1f

    .line 127
    .end local v0    # "contentType":Ljava/lang/String;
    :cond_5b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_70

    .line 128
    const-string v3, "jpeg"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 129
    const-string v0, "image/jpeg"

    .restart local v0    # "contentType":Ljava/lang/String;
    goto :goto_1f

    .line 131
    .end local v0    # "contentType":Ljava/lang/String;
    :cond_6d
    const-string v0, "application/octet-stream"

    .restart local v0    # "contentType":Ljava/lang/String;
    goto :goto_1f

    .line 134
    .end local v0    # "contentType":Ljava/lang/String;
    :cond_70
    const-string v0, "application/octet-stream"

    .restart local v0    # "contentType":Ljava/lang/String;
    goto :goto_1f
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFileBody()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasFileBody()Z
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 205
    iget-object v1, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 206
    .local v0, "result":I
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    if-eqz v1, :cond_32

    iget-object v1, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_13
    add-int v0, v3, v1

    .line 207
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    if-eqz v1, :cond_34

    iget-object v1, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->hashCode()I

    move-result v1

    :goto_21
    add-int v0, v3, v1

    .line 208
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    if-eqz v3, :cond_2f

    iget-object v2, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_2f
    add-int v0, v1, v2

    .line 209
    return v0

    :cond_32
    move v1, v2

    .line 206
    goto :goto_13

    :cond_34
    move v1, v2

    .line 207
    goto :goto_21
.end method

.method public isFile()Z
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PostParameter{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
