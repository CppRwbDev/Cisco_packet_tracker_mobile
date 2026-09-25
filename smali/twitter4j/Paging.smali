.class public final Ltwitter4j/Paging;
.super Ljava/lang/Object;
.source "Paging.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final COUNT:Ljava/lang/String; = "count"

.field private static final NULL_PARAMETER_ARRAY:[Ltwitter4j/HttpParameter;

.field private static final NULL_PARAMETER_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltwitter4j/HttpParameter;",
            ">;"
        }
    .end annotation
.end field

.field static final PER_PAGE:Ljava/lang/String; = "per_page"

.field static final S:[C

.field static final SMCP:[C

.field private static final serialVersionUID:J = -0x6448500cdfd4aeafL


# instance fields
.field private count:I

.field private maxId:J

.field private page:I

.field private sinceId:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/16 v1, 0x73

    aput-char v1, v0, v2

    sput-object v0, Ltwitter4j/Paging;->S:[C

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_1e

    sput-object v0, Ltwitter4j/Paging;->SMCP:[C

    .line 52
    new-array v0, v2, [Ltwitter4j/HttpParameter;

    sput-object v0, Ltwitter4j/Paging;->NULL_PARAMETER_ARRAY:[Ltwitter4j/HttpParameter;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Ltwitter4j/Paging;->NULL_PARAMETER_LIST:Ljava/util/List;

    return-void

    .line 41
    :array_1e
    .array-data 2
        0x73s
        0x6ds
        0x63s
        0x70s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Ltwitter4j/Paging;->page:I

    .line 34
    iput v0, p0, Ltwitter4j/Paging;->count:I

    .line 35
    iput-wide v2, p0, Ltwitter4j/Paging;->sinceId:J

    .line 36
    iput-wide v2, p0, Ltwitter4j/Paging;->maxId:J

    .line 132
    return-void
.end method

.method public constructor <init>(I)V
    .registers 6
    .param p1, "page"    # I

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Ltwitter4j/Paging;->page:I

    .line 34
    iput v0, p0, Ltwitter4j/Paging;->count:I

    .line 35
    iput-wide v2, p0, Ltwitter4j/Paging;->sinceId:J

    .line 36
    iput-wide v2, p0, Ltwitter4j/Paging;->maxId:J

    .line 135
    invoke-virtual {p0, p1}, Ltwitter4j/Paging;->setPage(I)V

    .line 136
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .param p1, "page"    # I
    .param p2, "count"    # I

    .prologue
    .line 143
    invoke-direct {p0, p1}, Ltwitter4j/Paging;-><init>(I)V

    .line 144
    invoke-virtual {p0, p2}, Ltwitter4j/Paging;->setCount(I)V

    .line 145
    return-void
.end method

.method public constructor <init>(IIJ)V
    .registers 6
    .param p1, "page"    # I
    .param p2, "count"    # I
    .param p3, "sinceId"    # J

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Ltwitter4j/Paging;-><init>(II)V

    .line 154
    invoke-virtual {p0, p3, p4}, Ltwitter4j/Paging;->setSinceId(J)V

    .line 155
    return-void
.end method

.method public constructor <init>(IIJJ)V
    .registers 8
    .param p1, "page"    # I
    .param p2, "count"    # I
    .param p3, "sinceId"    # J
    .param p5, "maxId"    # J

    .prologue
    .line 158
    invoke-direct {p0, p1, p2, p3, p4}, Ltwitter4j/Paging;-><init>(IIJ)V

    .line 159
    invoke-virtual {p0, p5, p6}, Ltwitter4j/Paging;->setMaxId(J)V

    .line 160
    return-void
.end method

.method public constructor <init>(IJ)V
    .registers 4
    .param p1, "page"    # I
    .param p2, "sinceId"    # J

    .prologue
    .line 148
    invoke-direct {p0, p1}, Ltwitter4j/Paging;-><init>(I)V

    .line 149
    invoke-virtual {p0, p2, p3}, Ltwitter4j/Paging;->setSinceId(J)V

    .line 150
    return-void
.end method

.method public constructor <init>(J)V
    .registers 8
    .param p1, "sinceId"    # J

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Ltwitter4j/Paging;->page:I

    .line 34
    iput v0, p0, Ltwitter4j/Paging;->count:I

    .line 35
    iput-wide v2, p0, Ltwitter4j/Paging;->sinceId:J

    .line 36
    iput-wide v2, p0, Ltwitter4j/Paging;->maxId:J

    .line 139
    invoke-virtual {p0, p1, p2}, Ltwitter4j/Paging;->setSinceId(J)V

    .line 140
    return-void
.end method

.method private addPostParameter([CCLjava/util/List;Ljava/lang/String;J)V
    .registers 14
    .param p1, "supportedParams"    # [C
    .param p2, "paramKey"    # C
    .param p4, "paramName"    # Ljava/lang/String;
    .param p5, "paramValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CC",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/HttpParameter;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .local p3, "pagingParams":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/HttpParameter;>;"
    const-wide/16 v4, -0x1

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "supported":Z
    array-length v3, p1

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_c

    aget-char v1, p1, v2

    .line 117
    .local v1, "supportedParam":C
    if-ne v1, p2, :cond_31

    .line 118
    const/4 v0, 0x1

    .line 122
    .end local v1    # "supportedParam":C
    :cond_c
    if-nez v0, :cond_34

    cmp-long v2, v4, p5

    if-eqz v2, :cond_34

    .line 123
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Paging parameter ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not supported with this operation."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    .restart local v1    # "supportedParam":C
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 126
    .end local v1    # "supportedParam":C
    :cond_34
    cmp-long v2, v4, p5

    if-eqz v2, :cond_44

    .line 127
    new-instance v2, Ltwitter4j/HttpParameter;

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p4, v3}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_44
    return-void
.end method


# virtual methods
.method asPostParameterArray()[Ltwitter4j/HttpParameter;
    .registers 4

    .prologue
    .line 55
    sget-object v1, Ltwitter4j/Paging;->SMCP:[C

    const-string v2, "count"

    invoke-virtual {p0, v1, v2}, Ltwitter4j/Paging;->asPostParameterList([CLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 56
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/HttpParameter;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    .line 57
    sget-object v1, Ltwitter4j/Paging;->NULL_PARAMETER_ARRAY:[Ltwitter4j/HttpParameter;

    .line 59
    :goto_10
    return-object v1

    :cond_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/HttpParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltwitter4j/HttpParameter;

    goto :goto_10
.end method

.method asPostParameterArray([CLjava/lang/String;)[Ltwitter4j/HttpParameter;
    .registers 11
    .param p1, "supportedParams"    # [C
    .param p2, "perPageParamName"    # Ljava/lang/String;

    .prologue
    .line 101
    new-instance v4, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .local v4, "pagingParams":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/HttpParameter;>;"
    const/16 v3, 0x73

    const-string v5, "since_id"

    invoke-virtual {p0}, Ltwitter4j/Paging;->getSinceId()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Ltwitter4j/Paging;->addPostParameter([CCLjava/util/List;Ljava/lang/String;J)V

    .line 103
    const/16 v3, 0x6d

    const-string v5, "max_id"

    invoke-virtual {p0}, Ltwitter4j/Paging;->getMaxId()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Ltwitter4j/Paging;->addPostParameter([CCLjava/util/List;Ljava/lang/String;J)V

    .line 104
    const/16 v3, 0x63

    invoke-virtual {p0}, Ltwitter4j/Paging;->getCount()I

    move-result v0

    int-to-long v6, v0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Ltwitter4j/Paging;->addPostParameter([CCLjava/util/List;Ljava/lang/String;J)V

    .line 105
    const/16 v3, 0x70

    const-string v5, "page"

    invoke-virtual {p0}, Ltwitter4j/Paging;->getPage()I

    move-result v0

    int-to-long v6, v0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Ltwitter4j/Paging;->addPostParameter([CCLjava/util/List;Ljava/lang/String;J)V

    .line 106
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_44

    .line 107
    sget-object v0, Ltwitter4j/Paging;->NULL_PARAMETER_ARRAY:[Ltwitter4j/HttpParameter;

    .line 109
    :goto_43
    return-object v0

    :cond_44
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ltwitter4j/HttpParameter;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltwitter4j/HttpParameter;

    goto :goto_43
.end method

.method asPostParameterList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/HttpParameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    sget-object v0, Ltwitter4j/Paging;->SMCP:[C

    const-string v1, "count"

    invoke-virtual {p0, v0, v1}, Ltwitter4j/Paging;->asPostParameterList([CLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method asPostParameterList([C)Ljava/util/List;
    .registers 3
    .param p1, "supportedParams"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/HttpParameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    const-string v0, "count"

    invoke-virtual {p0, p1, v0}, Ltwitter4j/Paging;->asPostParameterList([CLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method asPostParameterList([CLjava/lang/String;)Ljava/util/List;
    .registers 11
    .param p1, "supportedParams"    # [C
    .param p2, "perPageParamName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/HttpParameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v4, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    .local v4, "pagingParams":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/HttpParameter;>;"
    const/16 v3, 0x73

    const-string v5, "since_id"

    invoke-virtual {p0}, Ltwitter4j/Paging;->getSinceId()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Ltwitter4j/Paging;->addPostParameter([CCLjava/util/List;Ljava/lang/String;J)V

    .line 81
    const/16 v3, 0x6d

    const-string v5, "max_id"

    invoke-virtual {p0}, Ltwitter4j/Paging;->getMaxId()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Ltwitter4j/Paging;->addPostParameter([CCLjava/util/List;Ljava/lang/String;J)V

    .line 82
    const/16 v3, 0x63

    invoke-virtual {p0}, Ltwitter4j/Paging;->getCount()I

    move-result v0

    int-to-long v6, v0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Ltwitter4j/Paging;->addPostParameter([CCLjava/util/List;Ljava/lang/String;J)V

    .line 83
    const/16 v3, 0x70

    const-string v5, "page"

    invoke-virtual {p0}, Ltwitter4j/Paging;->getPage()I

    move-result v0

    int-to-long v6, v0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Ltwitter4j/Paging;->addPostParameter([CCLjava/util/List;Ljava/lang/String;J)V

    .line 84
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_43

    .line 85
    sget-object v4, Ltwitter4j/Paging;->NULL_PARAMETER_LIST:Ljava/util/List;

    .line 87
    .end local v4    # "pagingParams":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/HttpParameter;>;"
    :cond_43
    return-object v4
.end method

.method public count(I)Ltwitter4j/Paging;
    .registers 2
    .param p1, "count"    # I

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Ltwitter4j/Paging;->setCount(I)V

    .line 186
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 223
    if-ne p0, p1, :cond_5

    .line 233
    :cond_4
    :goto_4
    return v1

    .line 224
    :cond_5
    instance-of v3, p1, Ltwitter4j/Paging;

    if-nez v3, :cond_b

    move v1, v2

    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 226
    check-cast v0, Ltwitter4j/Paging;

    .line 228
    .local v0, "paging":Ltwitter4j/Paging;
    iget v3, p0, Ltwitter4j/Paging;->count:I

    iget v4, v0, Ltwitter4j/Paging;->count:I

    if-eq v3, v4, :cond_16

    move v1, v2

    goto :goto_4

    .line 229
    :cond_16
    iget-wide v4, p0, Ltwitter4j/Paging;->maxId:J

    iget-wide v6, v0, Ltwitter4j/Paging;->maxId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_20

    move v1, v2

    goto :goto_4

    .line 230
    :cond_20
    iget v3, p0, Ltwitter4j/Paging;->page:I

    iget v4, v0, Ltwitter4j/Paging;->page:I

    if-eq v3, v4, :cond_28

    move v1, v2

    goto :goto_4

    .line 231
    :cond_28
    iget-wide v4, p0, Ltwitter4j/Paging;->sinceId:J

    iget-wide v6, v0, Ltwitter4j/Paging;->sinceId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 174
    iget v0, p0, Ltwitter4j/Paging;->count:I

    return v0
.end method

.method public getMaxId()J
    .registers 3

    .prologue
    .line 206
    iget-wide v0, p0, Ltwitter4j/Paging;->maxId:J

    return-wide v0
.end method

.method public getPage()I
    .registers 2

    .prologue
    .line 163
    iget v0, p0, Ltwitter4j/Paging;->page:I

    return v0
.end method

.method public getSinceId()J
    .registers 3

    .prologue
    .line 190
    iget-wide v0, p0, Ltwitter4j/Paging;->sinceId:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 8

    .prologue
    const/16 v6, 0x20

    .line 238
    iget v0, p0, Ltwitter4j/Paging;->page:I

    .line 239
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/Paging;->count:I

    add-int v0, v1, v2

    .line 240
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Ltwitter4j/Paging;->sinceId:J

    iget-wide v4, p0, Ltwitter4j/Paging;->sinceId:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 241
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Ltwitter4j/Paging;->maxId:J

    iget-wide v4, p0, Ltwitter4j/Paging;->maxId:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 242
    return v0
.end method

.method public maxId(J)Ltwitter4j/Paging;
    .registers 4
    .param p1, "maxId"    # J

    .prologue
    .line 217
    invoke-virtual {p0, p1, p2}, Ltwitter4j/Paging;->setMaxId(J)V

    .line 218
    return-object p0
.end method

.method public setCount(I)V
    .registers 5
    .param p1, "count"    # I

    .prologue
    .line 178
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1c

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count should be positive integer. passed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_1c
    iput p1, p0, Ltwitter4j/Paging;->count:I

    .line 182
    return-void
.end method

.method public setMaxId(J)V
    .registers 6
    .param p1, "maxId"    # J

    .prologue
    .line 210
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_1f

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max_id should be positive integer. passed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_1f
    iput-wide p1, p0, Ltwitter4j/Paging;->maxId:J

    .line 214
    return-void
.end method

.method public setPage(I)V
    .registers 5
    .param p1, "page"    # I

    .prologue
    .line 167
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1c

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page should be positive integer. passed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_1c
    iput p1, p0, Ltwitter4j/Paging;->page:I

    .line 171
    return-void
.end method

.method public setSinceId(J)V
    .registers 6
    .param p1, "sinceId"    # J

    .prologue
    .line 194
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_1f

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "since_id should be positive integer. passed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_1f
    iput-wide p1, p0, Ltwitter4j/Paging;->sinceId:J

    .line 198
    return-void
.end method

.method public sinceId(J)Ltwitter4j/Paging;
    .registers 4
    .param p1, "sinceId"    # J

    .prologue
    .line 201
    invoke-virtual {p0, p1, p2}, Ltwitter4j/Paging;->setSinceId(J)V

    .line 202
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Paging{page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/Paging;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/Paging;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/Paging;->sinceId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/Paging;->maxId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
