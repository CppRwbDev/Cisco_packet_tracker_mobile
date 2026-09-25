.class Lorg/apache/http/impl/client/cache/WarningValue;
.super Ljava/lang/Object;
.source "WarningValue.java"


# static fields
.field private static final ASCTIME_DATE:Ljava/lang/String; = "(Mon|Tue|Wed|Thu|Fri|Sat|Sun) ((Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) ( |\\d)\\d) (\\d{2}:\\d{2}:\\d{2}) \\d{4}"

.field private static final DATE1:Ljava/lang/String; = "\\d{2} (Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) \\d{4}"

.field private static final DATE2:Ljava/lang/String; = "\\d{2}-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)-\\d{2}"

.field private static final DATE3:Ljava/lang/String; = "(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) ( |\\d)\\d"

.field private static final DOMAINLABEL:Ljava/lang/String; = "\\p{Alnum}([\\p{Alnum}-]*\\p{Alnum})?"

.field private static final HOST:Ljava/lang/String; = "((\\p{Alnum}([\\p{Alnum}-]*\\p{Alnum})?\\.)*\\p{Alpha}([\\p{Alnum}-]*\\p{Alnum})?\\.?)|(\\d+\\.\\d+\\.\\d+\\.\\d+)"

.field private static final HOSTNAME:Ljava/lang/String; = "(\\p{Alnum}([\\p{Alnum}-]*\\p{Alnum})?\\.)*\\p{Alpha}([\\p{Alnum}-]*\\p{Alnum})?\\.?"

.field private static final HOSTPORT:Ljava/lang/String; = "(((\\p{Alnum}([\\p{Alnum}-]*\\p{Alnum})?\\.)*\\p{Alpha}([\\p{Alnum}-]*\\p{Alnum})?\\.?)|(\\d+\\.\\d+\\.\\d+\\.\\d+))(\\:\\d*)?"

.field private static final HOSTPORT_PATTERN:Ljava/util/regex/Pattern;

.field private static final HTTP_DATE:Ljava/lang/String; = "((Mon|Tue|Wed|Thu|Fri|Sat|Sun), (\\d{2} (Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) \\d{4}) (\\d{2}:\\d{2}:\\d{2}) GMT)|((Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday), (\\d{2}-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)-\\d{2}) (\\d{2}:\\d{2}:\\d{2}) GMT)|((Mon|Tue|Wed|Thu|Fri|Sat|Sun) ((Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) ( |\\d)\\d) (\\d{2}:\\d{2}:\\d{2}) \\d{4})"

.field private static final IPV4ADDRESS:Ljava/lang/String; = "\\d+\\.\\d+\\.\\d+\\.\\d+"

.field private static final MONTH:Ljava/lang/String; = "Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec"

.field private static final PORT:Ljava/lang/String; = "\\d*"

.field private static final RFC1123_DATE:Ljava/lang/String; = "(Mon|Tue|Wed|Thu|Fri|Sat|Sun), (\\d{2} (Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) \\d{4}) (\\d{2}:\\d{2}:\\d{2}) GMT"

.field private static final RFC850_DATE:Ljava/lang/String; = "(Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday), (\\d{2}-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)-\\d{2}) (\\d{2}:\\d{2}:\\d{2}) GMT"

.field private static final TIME:Ljava/lang/String; = "\\d{2}:\\d{2}:\\d{2}"

.field private static final TOPLABEL:Ljava/lang/String; = "\\p{Alpha}([\\p{Alnum}-]*\\p{Alnum})?"

.field private static final WARN_DATE:Ljava/lang/String; = "\"(((Mon|Tue|Wed|Thu|Fri|Sat|Sun), (\\d{2} (Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) \\d{4}) (\\d{2}:\\d{2}:\\d{2}) GMT)|((Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday), (\\d{2}-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)-\\d{2}) (\\d{2}:\\d{2}:\\d{2}) GMT)|((Mon|Tue|Wed|Thu|Fri|Sat|Sun) ((Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) ( |\\d)\\d) (\\d{2}:\\d{2}:\\d{2}) \\d{4}))\""

.field private static final WARN_DATE_PATTERN:Ljava/util/regex/Pattern;

.field private static final WEEKDAY:Ljava/lang/String; = "Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday"

.field private static final WKDAY:Ljava/lang/String; = "Mon|Tue|Wed|Thu|Fri|Sat|Sun"


# instance fields
.field private init_offs:I

.field private offs:I

.field private src:Ljava/lang/String;

.field private warnAgent:Ljava/lang/String;

.field private warnCode:I

.field private warnDate:Ljava/util/Date;

.field private warnText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 170
    const-string v0, "(((\\p{Alnum}([\\p{Alnum}-]*\\p{Alnum})?\\.)*\\p{Alpha}([\\p{Alnum}-]*\\p{Alnum})?\\.?)|(\\d+\\.\\d+\\.\\d+\\.\\d+))(\\:\\d*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/client/cache/WarningValue;->HOSTPORT_PATTERN:Ljava/util/regex/Pattern;

    .line 245
    const-string v0, "\"(((Mon|Tue|Wed|Thu|Fri|Sat|Sun), (\\d{2} (Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) \\d{4}) (\\d{2}:\\d{2}:\\d{2}) GMT)|((Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday), (\\d{2}-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)-\\d{2}) (\\d{2}:\\d{2}:\\d{2}) GMT)|((Mon|Tue|Wed|Thu|Fri|Sat|Sun) ((Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) ( |\\d)\\d) (\\d{2}:\\d{2}:\\d{2}) \\d{4}))\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/client/cache/WarningValue;->WARN_DATE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/client/cache/WarningValue;-><init>(Ljava/lang/String;I)V

    .line 56
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "offs"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p2, p0, Lorg/apache/http/impl/client/cache/WarningValue;->init_offs:I

    iput p2, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    .line 60
    iput-object p1, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lorg/apache/http/impl/client/cache/WarningValue;->consumeWarnValue()V

    .line 62
    return-void
.end method

.method public static getWarningValues(Lorg/apache/http/Header;)[Lorg/apache/http/impl/client/cache/WarningValue;
    .registers 9
    .param p0, "h"    # Lorg/apache/http/Header;

    .prologue
    .line 73
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v3, "out":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/impl/client/cache/WarningValue;>;"
    invoke-interface {p0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "src":Ljava/lang/String;
    const/4 v2, 0x0

    .line 76
    .local v2, "offs":I
    :goto_a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_25

    .line 78
    :try_start_10
    new-instance v5, Lorg/apache/http/impl/client/cache/WarningValue;

    invoke-direct {v5, v4, v2}, Lorg/apache/http/impl/client/cache/WarningValue;-><init>(Ljava/lang/String;I)V

    .line 79
    .local v5, "wv":Lorg/apache/http/impl/client/cache/WarningValue;
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget v2, v5, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_1a} :catch_1b

    goto :goto_a

    .line 81
    .end local v5    # "wv":Lorg/apache/http/impl/client/cache/WarningValue;
    :catch_1b
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/16 v7, 0x2c

    invoke-virtual {v4, v7, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 83
    .local v1, "nextComma":I
    const/4 v7, -0x1

    if-ne v1, v7, :cond_2f

    .line 87
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "nextComma":I
    :cond_25
    const/4 v7, 0x0

    new-array v6, v7, [Lorg/apache/http/impl/client/cache/WarningValue;

    .line 88
    .local v6, "wvs":[Lorg/apache/http/impl/client/cache/WarningValue;
    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/apache/http/impl/client/cache/WarningValue;

    return-object v7

    .line 84
    .end local v6    # "wvs":[Lorg/apache/http/impl/client/cache/WarningValue;
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "nextComma":I
    :cond_2f
    add-int/lit8 v2, v1, 0x1

    .line 85
    goto :goto_a
.end method

.method private isChar(C)Z
    .registers 4
    .param p1, "c"    # C

    .prologue
    .line 121
    move v0, p1

    .line 122
    .local v0, "i":I
    if-ltz v0, :cond_9

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_9

    const/4 v1, 0x1

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private isControl(C)Z
    .registers 4
    .param p1, "c"    # C

    .prologue
    .line 130
    move v0, p1

    .line 131
    .local v0, "i":I
    const/16 v1, 0x7f

    if-eq v0, v1, :cond_b

    if-ltz v0, :cond_d

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_d

    :cond_b
    const/4 v1, 0x1

    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private isSeparator(C)Z
    .registers 3
    .param p1, "c"    # C

    .prologue
    .line 141
    const/16 v0, 0x28

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x29

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x40

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x22

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x5d

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x3f

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x20

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x9

    if-ne p1, v0, :cond_4e

    :cond_4c
    const/4 v0, 0x1

    :goto_4d
    return v0

    :cond_4e
    const/4 v0, 0x0

    goto :goto_4d
.end method

.method private isTokenChar(C)Z
    .registers 3
    .param p1, "c"    # C

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/cache/WarningValue;->isChar(C)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/cache/WarningValue;->isControl(C)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/cache/WarningValue;->isSeparator(C)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private parseError()V
    .registers 5

    .prologue
    .line 304
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v2, p0, Lorg/apache/http/impl/client/cache/WarningValue;->init_offs:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad warn code \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected consumeCharacter(C)V
    .registers 4
    .param p1, "c"    # C

    .prologue
    .line 281
    iget v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_16

    iget-object v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq p1, v0, :cond_19

    .line 283
    :cond_16
    invoke-direct {p0}, Lorg/apache/http/impl/client/cache/WarningValue;->parseError()V

    .line 285
    :cond_19
    iget v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    .line 286
    return-void
.end method

.method protected consumeHostPort()V
    .registers 5

    .prologue
    .line 173
    sget-object v1, Lorg/apache/http/impl/client/cache/WarningValue;->HOSTPORT_PATTERN:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v3, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 174
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-direct {p0}, Lorg/apache/http/impl/client/cache/WarningValue;->parseError()V

    .line 175
    :cond_17
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    if-eqz v1, :cond_20

    invoke-direct {p0}, Lorg/apache/http/impl/client/cache/WarningValue;->parseError()V

    .line 176
    :cond_20
    iget v1, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    .line 177
    return-void
.end method

.method protected consumeLinearWhitespace()V
    .registers 3

    .prologue
    .line 96
    :goto_0
    iget v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    iget-object v1, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 97
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_5a

    .line 115
    :cond_15
    return-void

    .line 99
    :sswitch_16
    iget v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_15

    iget-object v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4c

    iget-object v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_15

    .line 105
    :cond_4c
    iget v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    .line 113
    :sswitch_52
    iget v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    goto :goto_0

    .line 97
    nop

    :sswitch_data_5a
    .sparse-switch
        0x9 -> :sswitch_52
        0xd -> :sswitch_16
        0x20 -> :sswitch_52
    .end sparse-switch
.end method

.method protected consumeQuotedString()V
    .registers 6

    .prologue
    const/16 v4, 0x22

    .line 204
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v3, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_f

    invoke-direct {p0}, Lorg/apache/http/impl/client/cache/WarningValue;->parseError()V

    .line 205
    :cond_f
    iget v2, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    .line 206
    const/4 v1, 0x0

    .line 207
    .local v1, "foundEnd":Z
    :goto_16
    iget v2, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    iget-object v3, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_6e

    if-nez v1, :cond_6e

    .line 208
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v3, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 209
    .local v0, "c":C
    iget v2, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_51

    const/16 v2, 0x5c

    if-ne v0, v2, :cond_51

    iget-object v2, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v3, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/http/impl/client/cache/WarningValue;->isChar(C)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 211
    iget v2, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    goto :goto_16

    .line 212
    :cond_51
    if-ne v0, v4, :cond_5b

    .line 213
    const/4 v1, 0x1

    .line 214
    iget v2, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    goto :goto_16

    .line 215
    :cond_5b
    if-eq v0, v4, :cond_6a

    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/cache/WarningValue;->isControl(C)Z

    move-result v2

    if-nez v2, :cond_6a

    .line 216
    iget v2, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    goto :goto_16

    .line 218
    :cond_6a
    invoke-direct {p0}, Lorg/apache/http/impl/client/cache/WarningValue;->parseError()V

    goto :goto_16

    .line 221
    .end local v0    # "c":C
    :cond_6e
    if-nez v1, :cond_73

    invoke-direct {p0}, Lorg/apache/http/impl/client/cache/WarningValue;->parseError()V

    .line 222
    :cond_73
    return-void
.end method

.method protected consumeToken()V
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/cache/WarningValue;->isTokenChar(C)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-direct {p0}, Lorg/apache/http/impl/client/cache/WarningValue;->parseError()V

    .line 153
    :cond_11
    :goto_11
    iget v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    iget-object v1, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 154
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/cache/WarningValue;->isTokenChar(C)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 157
    :cond_29
    return-void

    .line 155
    :cond_2a
    iget v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    goto :goto_11
.end method

.method protected consumeWarnAgent()V
    .registers 6

    .prologue
    const/16 v4, 0x20

    .line 185
    iget v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    .line 187
    .local v0, "curr_offs":I
    :try_start_4
    invoke-virtual {p0}, Lorg/apache/http/impl/client/cache/WarningValue;->consumeHostPort()V

    .line 188
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v3, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/impl/client/cache/WarningValue;->warnAgent:Ljava/lang/String;

    .line 189
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lorg/apache/http/impl/client/cache/WarningValue;->consumeCharacter(C)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_16} :catch_17

    .line 197
    :goto_16
    return-void

    .line 191
    :catch_17
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iput v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    .line 194
    invoke-virtual {p0}, Lorg/apache/http/impl/client/cache/WarningValue;->consumeToken()V

    .line 195
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v3, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/impl/client/cache/WarningValue;->warnAgent:Ljava/lang/String;

    .line 196
    invoke-virtual {p0, v4}, Lorg/apache/http/impl/client/cache/WarningValue;->consumeCharacter(C)V

    goto :goto_16
.end method

.method protected consumeWarnCode()V
    .registers 4

    .prologue
    .line 292
    iget v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_48

    iget-object v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4b

    .line 297
    :cond_48
    invoke-direct {p0}, Lorg/apache/http/impl/client/cache/WarningValue;->parseError()V

    .line 299
    :cond_4b
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    iget v2, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->warnCode:I

    .line 300
    iget v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    .line 301
    return-void
.end method

.method protected consumeWarnDate()V
    .registers 7

    .prologue
    .line 251
    iget v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    .line 252
    .local v0, "curr":I
    sget-object v3, Lorg/apache/http/impl/client/cache/WarningValue;->WARN_DATE_PATTERN:Ljava/util/regex/Pattern;

    iget-object v4, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v5, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 253
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-nez v3, :cond_19

    invoke-direct {p0}, Lorg/apache/http/impl/client/cache/WarningValue;->parseError()V

    .line 254
    :cond_19
    iget v3, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    .line 256
    :try_start_22
    iget-object v3, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/http/impl/client/cache/WarningValue;->warnDate:Ljava/util/Date;
    :try_end_34
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_22 .. :try_end_34} :catch_35

    .line 260
    return-void

    .line 257
    :catch_35
    move-exception v1

    .line 258
    .local v1, "e":Lorg/apache/http/impl/cookie/DateParseException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "couldn\'t parse a parseable date"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected consumeWarnText()V
    .registers 4

    .prologue
    .line 228
    iget v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    .line 229
    .local v0, "curr":I
    invoke-virtual {p0}, Lorg/apache/http/impl/client/cache/WarningValue;->consumeQuotedString()V

    .line 230
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v2, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/impl/client/cache/WarningValue;->warnText:Ljava/lang/String;

    .line 231
    return-void
.end method

.method protected consumeWarnValue()V
    .registers 4

    .prologue
    const/16 v2, 0x20

    .line 266
    invoke-virtual {p0}, Lorg/apache/http/impl/client/cache/WarningValue;->consumeLinearWhitespace()V

    .line 267
    invoke-virtual {p0}, Lorg/apache/http/impl/client/cache/WarningValue;->consumeWarnCode()V

    .line 268
    invoke-virtual {p0}, Lorg/apache/http/impl/client/cache/WarningValue;->consumeWarnAgent()V

    .line 269
    invoke-virtual {p0}, Lorg/apache/http/impl/client/cache/WarningValue;->consumeWarnText()V

    .line 270
    iget v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_38

    iget-object v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_38

    iget-object v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_38

    .line 271
    invoke-virtual {p0, v2}, Lorg/apache/http/impl/client/cache/WarningValue;->consumeCharacter(C)V

    .line 272
    invoke-virtual {p0}, Lorg/apache/http/impl/client/cache/WarningValue;->consumeWarnDate()V

    .line 274
    :cond_38
    invoke-virtual {p0}, Lorg/apache/http/impl/client/cache/WarningValue;->consumeLinearWhitespace()V

    .line 275
    iget v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->offs:I

    iget-object v1, p0, Lorg/apache/http/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_4a

    .line 276
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/cache/WarningValue;->consumeCharacter(C)V

    .line 278
    :cond_4a
    return-void
.end method

.method public getWarnAgent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->warnAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getWarnCode()I
    .registers 2

    .prologue
    .line 311
    iget v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->warnCode:I

    return v0
.end method

.method public getWarnDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->warnDate:Ljava/util/Date;

    return-object v0
.end method

.method public getWarnText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->warnText:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 351
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/WarningValue;->warnDate:Ljava/util/Date;

    if-eqz v0, :cond_2a

    .line 352
    const-string v0, "%d %s %s \"%s\""

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lorg/apache/http/impl/client/cache/WarningValue;->warnCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/apache/http/impl/client/cache/WarningValue;->warnAgent:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lorg/apache/http/impl/client/cache/WarningValue;->warnText:Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v2, p0, Lorg/apache/http/impl/client/cache/WarningValue;->warnDate:Ljava/util/Date;

    invoke-static {v2}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 355
    :goto_29
    return-object v0

    :cond_2a
    const-string v0, "%d %s %s"

    new-array v1, v6, [Ljava/lang/Object;

    iget v2, p0, Lorg/apache/http/impl/client/cache/WarningValue;->warnCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/apache/http/impl/client/cache/WarningValue;->warnAgent:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lorg/apache/http/impl/client/cache/WarningValue;->warnText:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_29
.end method
