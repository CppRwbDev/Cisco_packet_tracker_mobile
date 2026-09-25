.class public final Lorg/jshybugger/ec;
.super Ljava/lang/Object;
.source "HttpVersion.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/jshybugger/ec;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lorg/jshybugger/ec;

.field public static final b:Lorg/jshybugger/ec;

.field private static final c:Ljava/util/regex/Pattern;


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:I

.field private final g:Ljava/lang/String;

.field private final h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 28
    const-string v0, "(\\S+)/(\\d+)\\.(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/ec;->c:Ljava/util/regex/Pattern;

    .line 37
    new-instance v0, Lorg/jshybugger/ec;

    const-string v1, "HTTP"

    invoke-direct {v0, v1, v2, v3, v3}, Lorg/jshybugger/ec;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/jshybugger/ec;->a:Lorg/jshybugger/ec;

    .line 42
    new-instance v0, Lorg/jshybugger/ec;

    const-string v1, "HTTP"

    invoke-direct {v0, v1, v2, v2, v2}, Lorg/jshybugger/ec;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/jshybugger/ec;->b:Lorg/jshybugger/ec;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .registers 9

    .prologue
    const/4 v3, 0x1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    if-nez p1, :cond_e

    .line 151
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "protocolName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty protocolName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_24
    const/4 v0, 0x0

    :goto_25
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4a

    .line 160
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 162
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid character in protocolName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 166
    :cond_4a
    if-gez p3, :cond_54

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative minorVersion"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_54
    iput-object v1, p0, Lorg/jshybugger/ec;->d:Ljava/lang/String;

    .line 174
    iput v3, p0, Lorg/jshybugger/ec;->e:I

    .line 175
    iput p3, p0, Lorg/jshybugger/ec;->f:I

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/ec;->g:Ljava/lang/String;

    .line 177
    iput-boolean p4, p0, Lorg/jshybugger/ec;->h:Z

    .line 178
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    if-nez p1, :cond_e

    .line 116
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "text"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty text"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_24
    sget-object v1, Lorg/jshybugger/ec;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_45

    .line 126
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid version format: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_45
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/ec;->d:Ljava/lang/String;

    .line 130
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/jshybugger/ec;->e:I

    .line 131
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/jshybugger/ec;->f:I

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jshybugger/ec;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jshybugger/ec;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jshybugger/ec;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/ec;->g:Ljava/lang/String;

    .line 133
    iput-boolean v3, p0, Lorg/jshybugger/ec;->h:Z

    .line 134
    return-void
.end method

.method public static a(Ljava/lang/String;)Lorg/jshybugger/ec;
    .registers 4

    .prologue
    .line 53
    if-nez p0, :cond_a

    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "text"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1c
    invoke-static {v1}, Lorg/jshybugger/ec;->b(Ljava/lang/String;)Lorg/jshybugger/ec;

    move-result-object v0

    .line 75
    if-nez v0, :cond_32

    .line 76
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-static {v1}, Lorg/jshybugger/ec;->b(Ljava/lang/String;)Lorg/jshybugger/ec;

    move-result-object v0

    .line 79
    if-nez v0, :cond_32

    .line 81
    new-instance v0, Lorg/jshybugger/ec;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ec;-><init>(Ljava/lang/String;Z)V

    .line 84
    :cond_32
    return-object v0
.end method

.method private static b(Ljava/lang/String;)Lorg/jshybugger/ec;
    .registers 2

    .prologue
    .line 88
    const-string v0, "HTTP/1.1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 89
    sget-object v0, Lorg/jshybugger/ec;->b:Lorg/jshybugger/ec;

    .line 94
    :goto_a
    return-object v0

    .line 91
    :cond_b
    const-string v0, "HTTP/1.0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 92
    sget-object v0, Lorg/jshybugger/ec;->a:Lorg/jshybugger/ec;

    goto :goto_a

    .line 94
    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 191
    iget v0, p0, Lorg/jshybugger/ec;->e:I

    return v0
.end method

.method public final a(Lorg/jshybugger/ec;)I
    .registers 4

    .prologue
    .line 244
    iget-object v0, p0, Lorg/jshybugger/ec;->d:Ljava/lang/String;

    iget-object v1, p1, Lorg/jshybugger/ec;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 245
    if-eqz v0, :cond_b

    .line 254
    :cond_a
    :goto_a
    return v0

    .line 249
    :cond_b
    iget v0, p0, Lorg/jshybugger/ec;->e:I

    iget v1, p1, Lorg/jshybugger/ec;->e:I

    sub-int/2addr v0, v1

    .line 250
    if-nez v0, :cond_a

    .line 254
    iget v0, p0, Lorg/jshybugger/ec;->f:I

    iget v1, p1, Lorg/jshybugger/ec;->f:I

    sub-int/2addr v0, v1

    goto :goto_a
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 198
    iget v0, p0, Lorg/jshybugger/ec;->f:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lorg/jshybugger/ec;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 26
    check-cast p1, Lorg/jshybugger/ec;

    invoke-virtual {p0, p1}, Lorg/jshybugger/ec;->a(Lorg/jshybugger/ec;)I

    move-result v0

    return v0
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 213
    iget-boolean v0, p0, Lorg/jshybugger/ec;->h:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 232
    instance-of v1, p1, Lorg/jshybugger/ec;

    if-nez v1, :cond_6

    .line 237
    :cond_5
    :goto_5
    return v0

    .line 236
    :cond_6
    check-cast p1, Lorg/jshybugger/ec;

    .line 237
    iget v1, p0, Lorg/jshybugger/ec;->f:I

    iget v2, p1, Lorg/jshybugger/ec;->f:I

    if-ne v1, v2, :cond_5

    iget v1, p0, Lorg/jshybugger/ec;->e:I

    iget v2, p1, Lorg/jshybugger/ec;->e:I

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lorg/jshybugger/ec;->d:Ljava/lang/String;

    iget-object v2, p1, Lorg/jshybugger/ec;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final hashCode()I
    .registers 3

    .prologue
    .line 226
    iget-object v0, p0, Lorg/jshybugger/ec;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/jshybugger/ec;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/jshybugger/ec;->f:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lorg/jshybugger/ec;->g:Ljava/lang/String;

    return-object v0
.end method
