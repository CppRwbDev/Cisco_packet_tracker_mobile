.class public final Ltwitter4j/OEmbedRequest;
.super Ljava/lang/Object;
.source "OEmbedRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/OEmbedRequest$Align;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x677263dd4692eabdL


# instance fields
.field private align:Ltwitter4j/OEmbedRequest$Align;

.field private hideMedia:Z

.field private hideThread:Z

.field private lang:Ljava/lang/String;

.field private maxWidth:I

.field private omitScript:Z

.field private related:[Ljava/lang/String;

.field private final statusId:J

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .registers 7
    .param p1, "statusId"    # J
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v0, p0, Ltwitter4j/OEmbedRequest;->hideMedia:Z

    .line 33
    iput-boolean v0, p0, Ltwitter4j/OEmbedRequest;->hideThread:Z

    .line 34
    iput-boolean v1, p0, Ltwitter4j/OEmbedRequest;->omitScript:Z

    .line 35
    sget-object v0, Ltwitter4j/OEmbedRequest$Align;->NONE:Ltwitter4j/OEmbedRequest$Align;

    iput-object v0, p0, Ltwitter4j/OEmbedRequest;->align:Ltwitter4j/OEmbedRequest$Align;

    .line 36
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Ltwitter4j/OEmbedRequest;->related:[Ljava/lang/String;

    .line 40
    iput-wide p1, p0, Ltwitter4j/OEmbedRequest;->statusId:J

    .line 41
    iput-object p3, p0, Ltwitter4j/OEmbedRequest;->url:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private appendParameter(Ljava/lang/String;JLjava/util/List;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/HttpParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p4, "params":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/HttpParameter;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p2

    if-gtz v0, :cond_12

    .line 139
    new-instance v0, Ltwitter4j/HttpParameter;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_12
    return-void
.end method

.method private appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/HttpParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/HttpParameter;>;"
    if-eqz p2, :cond_a

    .line 133
    new-instance v0, Ltwitter4j/HttpParameter;

    invoke-direct {v0, p1, p2}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_a
    return-void
.end method


# virtual methods
.method public HideMedia(Z)Ltwitter4j/OEmbedRequest;
    .registers 2
    .param p1, "hideMedia"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Ltwitter4j/OEmbedRequest;->hideMedia:Z

    .line 59
    return-object p0
.end method

.method public HideThread(Z)Ltwitter4j/OEmbedRequest;
    .registers 2
    .param p1, "hideThread"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Ltwitter4j/OEmbedRequest;->hideThread:Z

    .line 68
    return-object p0
.end method

.method public MaxWidth(I)Ltwitter4j/OEmbedRequest;
    .registers 2
    .param p1, "maxWidth"    # I

    .prologue
    .line 49
    iput p1, p0, Ltwitter4j/OEmbedRequest;->maxWidth:I

    .line 50
    return-object p0
.end method

.method public align(Ltwitter4j/OEmbedRequest$Align;)Ltwitter4j/OEmbedRequest;
    .registers 2
    .param p1, "align"    # Ltwitter4j/OEmbedRequest$Align;

    .prologue
    .line 85
    iput-object p1, p0, Ltwitter4j/OEmbedRequest;->align:Ltwitter4j/OEmbedRequest$Align;

    .line 86
    return-object p0
.end method

.method asHttpParameterArray()[Ltwitter4j/HttpParameter;
    .registers 7

    .prologue
    .line 115
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    .local v1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltwitter4j/HttpParameter;>;"
    const-string v2, "id"

    iget-wide v4, p0, Ltwitter4j/OEmbedRequest;->statusId:J

    invoke-direct {p0, v2, v4, v5, v1}, Ltwitter4j/OEmbedRequest;->appendParameter(Ljava/lang/String;JLjava/util/List;)V

    .line 117
    const-string v2, "url"

    iget-object v3, p0, Ltwitter4j/OEmbedRequest;->url:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/OEmbedRequest;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 118
    const-string v2, "maxwidth"

    iget v3, p0, Ltwitter4j/OEmbedRequest;->maxWidth:I

    int-to-long v4, v3

    invoke-direct {p0, v2, v4, v5, v1}, Ltwitter4j/OEmbedRequest;->appendParameter(Ljava/lang/String;JLjava/util/List;)V

    .line 119
    new-instance v2, Ltwitter4j/HttpParameter;

    const-string v3, "hide_media"

    iget-boolean v4, p0, Ltwitter4j/OEmbedRequest;->hideMedia:Z

    invoke-direct {v2, v3, v4}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v2, Ltwitter4j/HttpParameter;

    const-string v3, "hide_thread"

    iget-boolean v4, p0, Ltwitter4j/OEmbedRequest;->hideThread:Z

    invoke-direct {v2, v3, v4}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v2, Ltwitter4j/HttpParameter;

    const-string v3, "omit_script"

    iget-boolean v4, p0, Ltwitter4j/OEmbedRequest;->omitScript:Z

    invoke-direct {v2, v3, v4}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v2, Ltwitter4j/HttpParameter;

    const-string v3, "align"

    iget-object v4, p0, Ltwitter4j/OEmbedRequest;->align:Ltwitter4j/OEmbedRequest$Align;

    invoke-virtual {v4}, Ltwitter4j/OEmbedRequest$Align;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v2, p0, Ltwitter4j/OEmbedRequest;->related:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_65

    .line 124
    const-string v2, "related"

    iget-object v3, p0, Ltwitter4j/OEmbedRequest;->related:[Ljava/lang/String;

    invoke-static {v3}, Ltwitter4j/StringUtil;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/OEmbedRequest;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 126
    :cond_65
    const-string v2, "lang"

    iget-object v3, p0, Ltwitter4j/OEmbedRequest;->lang:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/OEmbedRequest;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 127
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ltwitter4j/HttpParameter;

    .line 128
    .local v0, "paramArray":[Ltwitter4j/HttpParameter;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ltwitter4j/HttpParameter;

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    if-ne p0, p1, :cond_5

    .line 160
    :cond_4
    :goto_4
    return v1

    .line 146
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 148
    check-cast v0, Ltwitter4j/OEmbedRequest;

    .line 150
    .local v0, "that":Ltwitter4j/OEmbedRequest;
    iget-boolean v3, p0, Ltwitter4j/OEmbedRequest;->hideMedia:Z

    iget-boolean v4, v0, Ltwitter4j/OEmbedRequest;->hideMedia:Z

    if-eq v3, v4, :cond_1e

    move v1, v2

    goto :goto_4

    .line 151
    :cond_1e
    iget-boolean v3, p0, Ltwitter4j/OEmbedRequest;->hideThread:Z

    iget-boolean v4, v0, Ltwitter4j/OEmbedRequest;->hideThread:Z

    if-eq v3, v4, :cond_26

    move v1, v2

    goto :goto_4

    .line 152
    :cond_26
    iget v3, p0, Ltwitter4j/OEmbedRequest;->maxWidth:I

    iget v4, v0, Ltwitter4j/OEmbedRequest;->maxWidth:I

    if-eq v3, v4, :cond_2e

    move v1, v2

    goto :goto_4

    .line 153
    :cond_2e
    iget-boolean v3, p0, Ltwitter4j/OEmbedRequest;->omitScript:Z

    iget-boolean v4, v0, Ltwitter4j/OEmbedRequest;->omitScript:Z

    if-eq v3, v4, :cond_36

    move v1, v2

    goto :goto_4

    .line 154
    :cond_36
    iget-wide v4, p0, Ltwitter4j/OEmbedRequest;->statusId:J

    iget-wide v6, v0, Ltwitter4j/OEmbedRequest;->statusId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_40

    move v1, v2

    goto :goto_4

    .line 155
    :cond_40
    iget-object v3, p0, Ltwitter4j/OEmbedRequest;->align:Ltwitter4j/OEmbedRequest$Align;

    iget-object v4, v0, Ltwitter4j/OEmbedRequest;->align:Ltwitter4j/OEmbedRequest$Align;

    if-eq v3, v4, :cond_48

    move v1, v2

    goto :goto_4

    .line 156
    :cond_48
    iget-object v3, p0, Ltwitter4j/OEmbedRequest;->lang:Ljava/lang/String;

    if-eqz v3, :cond_58

    iget-object v3, p0, Ltwitter4j/OEmbedRequest;->lang:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/OEmbedRequest;->lang:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    :cond_56
    move v1, v2

    goto :goto_4

    :cond_58
    iget-object v3, v0, Ltwitter4j/OEmbedRequest;->lang:Ljava/lang/String;

    if-nez v3, :cond_56

    .line 157
    :cond_5c
    iget-object v3, p0, Ltwitter4j/OEmbedRequest;->related:[Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/OEmbedRequest;->related:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    move v1, v2

    goto :goto_4

    .line 158
    :cond_68
    iget-object v3, p0, Ltwitter4j/OEmbedRequest;->url:Ljava/lang/String;

    if-eqz v3, :cond_78

    iget-object v3, p0, Ltwitter4j/OEmbedRequest;->url:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/OEmbedRequest;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_76
    move v1, v2

    goto :goto_4

    :cond_78
    iget-object v3, v0, Ltwitter4j/OEmbedRequest;->url:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_76
.end method

.method public hashCode()I
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    iget-wide v4, p0, Ltwitter4j/OEmbedRequest;->statusId:J

    iget-wide v6, p0, Ltwitter4j/OEmbedRequest;->statusId:J

    const/16 v1, 0x20

    ushr-long/2addr v6, v1

    xor-long/2addr v4, v6

    long-to-int v0, v4

    .line 166
    .local v0, "result":I
    mul-int/lit8 v4, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/OEmbedRequest;->url:Ljava/lang/String;

    if-eqz v1, :cond_64

    iget-object v1, p0, Ltwitter4j/OEmbedRequest;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_17
    add-int v0, v4, v1

    .line 167
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Ltwitter4j/OEmbedRequest;->maxWidth:I

    add-int v0, v1, v4

    .line 168
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Ltwitter4j/OEmbedRequest;->hideMedia:Z

    if-eqz v1, :cond_66

    move v1, v3

    :goto_26
    add-int v0, v4, v1

    .line 169
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Ltwitter4j/OEmbedRequest;->hideThread:Z

    if-eqz v1, :cond_68

    move v1, v3

    :goto_2f
    add-int v0, v4, v1

    .line 170
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Ltwitter4j/OEmbedRequest;->omitScript:Z

    if-eqz v4, :cond_6a

    :goto_37
    add-int v0, v1, v3

    .line 171
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/OEmbedRequest;->align:Ltwitter4j/OEmbedRequest$Align;

    if-eqz v1, :cond_6c

    iget-object v1, p0, Ltwitter4j/OEmbedRequest;->align:Ltwitter4j/OEmbedRequest$Align;

    invoke-virtual {v1}, Ltwitter4j/OEmbedRequest$Align;->hashCode()I

    move-result v1

    :goto_45
    add-int v0, v3, v1

    .line 172
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/OEmbedRequest;->related:[Ljava/lang/String;

    if-eqz v1, :cond_6e

    iget-object v1, p0, Ltwitter4j/OEmbedRequest;->related:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    :goto_53
    add-int v0, v3, v1

    .line 173
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/OEmbedRequest;->lang:Ljava/lang/String;

    if-eqz v3, :cond_61

    iget-object v2, p0, Ltwitter4j/OEmbedRequest;->lang:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_61
    add-int v0, v1, v2

    .line 174
    return v0

    :cond_64
    move v1, v2

    .line 166
    goto :goto_17

    :cond_66
    move v1, v2

    .line 168
    goto :goto_26

    :cond_68
    move v1, v2

    .line 169
    goto :goto_2f

    :cond_6a
    move v3, v2

    .line 170
    goto :goto_37

    :cond_6c
    move v1, v2

    .line 171
    goto :goto_45

    :cond_6e
    move v1, v2

    .line 172
    goto :goto_53
.end method

.method public lang(Ljava/lang/String;)Ltwitter4j/OEmbedRequest;
    .registers 2
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Ltwitter4j/OEmbedRequest;->lang:Ljava/lang/String;

    .line 104
    return-object p0
.end method

.method public omitScript(Z)Ltwitter4j/OEmbedRequest;
    .registers 2
    .param p1, "omitScript"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Ltwitter4j/OEmbedRequest;->omitScript:Z

    .line 77
    return-object p0
.end method

.method public related([Ljava/lang/String;)Ltwitter4j/OEmbedRequest;
    .registers 2
    .param p1, "related"    # [Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Ltwitter4j/OEmbedRequest;->related:[Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public setAlign(Ltwitter4j/OEmbedRequest$Align;)V
    .registers 2
    .param p1, "align"    # Ltwitter4j/OEmbedRequest$Align;

    .prologue
    .line 81
    iput-object p1, p0, Ltwitter4j/OEmbedRequest;->align:Ltwitter4j/OEmbedRequest$Align;

    .line 82
    return-void
.end method

.method public setHideMedia(Z)V
    .registers 2
    .param p1, "hideMedia"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Ltwitter4j/OEmbedRequest;->hideMedia:Z

    .line 55
    return-void
.end method

.method public setHideThread(Z)V
    .registers 2
    .param p1, "hideThread"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Ltwitter4j/OEmbedRequest;->hideThread:Z

    .line 64
    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .registers 2
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Ltwitter4j/OEmbedRequest;->lang:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setMaxWidth(I)V
    .registers 2
    .param p1, "maxWidth"    # I

    .prologue
    .line 45
    iput p1, p0, Ltwitter4j/OEmbedRequest;->maxWidth:I

    .line 46
    return-void
.end method

.method public setOmitScript(Z)V
    .registers 2
    .param p1, "omitScript"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Ltwitter4j/OEmbedRequest;->omitScript:Z

    .line 73
    return-void
.end method

.method public setRelated([Ljava/lang/String;)V
    .registers 2
    .param p1, "related"    # [Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Ltwitter4j/OEmbedRequest;->related:[Ljava/lang/String;

    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0x27

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OEmbedRequest{statusId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/OEmbedRequest;->statusId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/OEmbedRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/OEmbedRequest;->maxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hideMedia="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/OEmbedRequest;->hideMedia:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hideThread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/OEmbedRequest;->hideThread:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", omitScript="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/OEmbedRequest;->omitScript:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", align="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/OEmbedRequest;->align:Ltwitter4j/OEmbedRequest$Align;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", related="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Ltwitter4j/OEmbedRequest;->related:[Ljava/lang/String;

    if-nez v0, :cond_89

    const/4 v0, 0x0

    .line 187
    :goto_6a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lang=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/OEmbedRequest;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 179
    :cond_89
    iget-object v0, p0, Ltwitter4j/OEmbedRequest;->related:[Ljava/lang/String;

    .line 187
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_6a
.end method
