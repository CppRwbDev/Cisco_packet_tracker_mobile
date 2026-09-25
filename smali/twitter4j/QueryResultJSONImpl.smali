.class final Ltwitter4j/QueryResultJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "QueryResultJSONImpl.java"

# interfaces
.implements Ltwitter4j/QueryResult;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4a6101184cfac714L


# instance fields
.field private completedIn:D

.field private count:I

.field private maxId:J

.field private nextResults:Ljava/lang/String;

.field private query:Ljava/lang/String;

.field private refreshUrl:Ljava/lang/String;

.field private sinceId:J

.field private tweets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .registers 12
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .param p2, "conf"    # Ltwitter4j/conf/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/HttpResponse;)V

    .line 43
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object v2

    .line 45
    .local v2, "json":Ltwitter4j/JSONObject;
    :try_start_7
    const-string v6, "search_metadata"

    invoke-virtual {v2, v6}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v4

    .line 46
    .local v4, "searchMetaData":Ltwitter4j/JSONObject;
    const-string v6, "completed_in"

    invoke-static {v6, v4}, Ltwitter4j/ParseUtil;->getDouble(Ljava/lang/String;Ltwitter4j/JSONObject;)D

    move-result-wide v6

    iput-wide v6, p0, Ltwitter4j/QueryResultJSONImpl;->completedIn:D

    .line 47
    const-string v6, "count"

    invoke-static {v6, v4}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v6

    iput v6, p0, Ltwitter4j/QueryResultJSONImpl;->count:I

    .line 48
    const-string v6, "max_id"

    invoke-static {v6, v4}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v6

    iput-wide v6, p0, Ltwitter4j/QueryResultJSONImpl;->maxId:J

    .line 49
    const-string v6, "next_results"

    invoke-virtual {v4, v6}, Ltwitter4j/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7f

    const-string v6, "next_results"

    invoke-virtual {v4, v6}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_33
    iput-object v6, p0, Ltwitter4j/QueryResultJSONImpl;->nextResults:Ljava/lang/String;

    .line 50
    const-string v6, "query"

    invoke-static {v6, v4}, Ltwitter4j/ParseUtil;->getURLDecodedString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/QueryResultJSONImpl;->query:Ljava/lang/String;

    .line 51
    const-string v6, "refresh_url"

    invoke-static {v6, v4}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/QueryResultJSONImpl;->refreshUrl:Ljava/lang/String;

    .line 52
    const-string v6, "since_id"

    invoke-static {v6, v4}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v6

    iput-wide v6, p0, Ltwitter4j/QueryResultJSONImpl;->sinceId:J

    .line 54
    const-string v6, "statuses"

    invoke-virtual {v2, v6}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v0

    .line 55
    .local v0, "array":Ltwitter4j/JSONArray;
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ltwitter4j/JSONArray;->length()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Ltwitter4j/QueryResultJSONImpl;->tweets:Ljava/util/List;

    .line 56
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v6

    if-eqz v6, :cond_67

    .line 57
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 59
    :cond_67
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_68
    invoke-virtual {v0}, Ltwitter4j/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_a7

    .line 60
    invoke-virtual {v0, v1}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v5

    .line 61
    .local v5, "tweet":Ltwitter4j/JSONObject;
    iget-object v6, p0, Ltwitter4j/QueryResultJSONImpl;->tweets:Ljava/util/List;

    new-instance v7, Ltwitter4j/StatusJSONImpl;

    invoke-direct {v7, v5, p2}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/JSONObject;Ltwitter4j/conf/Configuration;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7c
    .catch Ltwitter4j/JSONException; {:try_start_7 .. :try_end_7c} :catch_81

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    .line 49
    .end local v0    # "array":Ltwitter4j/JSONArray;
    .end local v1    # "i":I
    .end local v5    # "tweet":Ltwitter4j/JSONObject;
    :cond_7f
    const/4 v6, 0x0

    goto :goto_33

    .line 63
    .end local v4    # "searchMetaData":Ltwitter4j/JSONObject;
    :catch_81
    move-exception v3

    .line 64
    .local v3, "jsone":Ltwitter4j/JSONException;
    new-instance v6, Ltwitter4j/TwitterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ltwitter4j/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ltwitter4j/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 66
    .end local v3    # "jsone":Ltwitter4j/JSONException;
    .restart local v0    # "array":Ltwitter4j/JSONArray;
    .restart local v1    # "i":I
    .restart local v4    # "searchMetaData":Ltwitter4j/JSONObject;
    :cond_a7
    return-void
.end method

.method constructor <init>(Ltwitter4j/Query;)V
    .registers 4
    .param p1, "query"    # Ltwitter4j/Query;

    .prologue
    .line 69
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 70
    invoke-virtual {p1}, Ltwitter4j/Query;->getSinceId()J

    move-result-wide v0

    iput-wide v0, p0, Ltwitter4j/QueryResultJSONImpl;->sinceId:J

    .line 71
    invoke-virtual {p1}, Ltwitter4j/Query;->getCount()I

    move-result v0

    iput v0, p0, Ltwitter4j/QueryResultJSONImpl;->count:I

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltwitter4j/QueryResultJSONImpl;->tweets:Ljava/util/List;

    .line 73
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 149
    if-ne p0, p1, :cond_5

    .line 165
    :cond_4
    :goto_4
    return v1

    .line 150
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

    .line 152
    check-cast v0, Ltwitter4j/QueryResult;

    .line 154
    .local v0, "that":Ltwitter4j/QueryResult;
    invoke-interface {v0}, Ltwitter4j/QueryResult;->getCompletedIn()D

    move-result-wide v4

    iget-wide v6, p0, Ltwitter4j/QueryResultJSONImpl;->completedIn:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_24

    move v1, v2

    .line 155
    goto :goto_4

    .line 156
    :cond_24
    iget-wide v4, p0, Ltwitter4j/QueryResultJSONImpl;->maxId:J

    invoke-interface {v0}, Ltwitter4j/QueryResult;->getMaxId()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_30

    move v1, v2

    goto :goto_4

    .line 157
    :cond_30
    iget v3, p0, Ltwitter4j/QueryResultJSONImpl;->count:I

    invoke-interface {v0}, Ltwitter4j/QueryResult;->getCount()I

    move-result v4

    if-eq v3, v4, :cond_3a

    move v1, v2

    goto :goto_4

    .line 158
    :cond_3a
    iget-wide v4, p0, Ltwitter4j/QueryResultJSONImpl;->sinceId:J

    invoke-interface {v0}, Ltwitter4j/QueryResult;->getSinceId()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_46

    move v1, v2

    goto :goto_4

    .line 159
    :cond_46
    iget-object v3, p0, Ltwitter4j/QueryResultJSONImpl;->query:Ljava/lang/String;

    invoke-interface {v0}, Ltwitter4j/QueryResult;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    move v1, v2

    goto :goto_4

    .line 160
    :cond_54
    iget-object v3, p0, Ltwitter4j/QueryResultJSONImpl;->refreshUrl:Ljava/lang/String;

    if-eqz v3, :cond_66

    iget-object v3, p0, Ltwitter4j/QueryResultJSONImpl;->refreshUrl:Ljava/lang/String;

    invoke-interface {v0}, Ltwitter4j/QueryResult;->getRefreshURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6c

    :cond_64
    move v1, v2

    .line 161
    goto :goto_4

    .line 160
    :cond_66
    invoke-interface {v0}, Ltwitter4j/QueryResult;->getRefreshURL()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_64

    .line 162
    :cond_6c
    iget-object v3, p0, Ltwitter4j/QueryResultJSONImpl;->tweets:Ljava/util/List;

    if-eqz v3, :cond_7e

    iget-object v3, p0, Ltwitter4j/QueryResultJSONImpl;->tweets:Ljava/util/List;

    invoke-interface {v0}, Ltwitter4j/QueryResult;->getTweets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_7c
    move v1, v2

    .line 163
    goto :goto_4

    .line 162
    :cond_7e
    invoke-interface {v0}, Ltwitter4j/QueryResult;->getTweets()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    goto :goto_7c
.end method

.method public getCompletedIn()D
    .registers 3

    .prologue
    .line 109
    iget-wide v0, p0, Ltwitter4j/QueryResultJSONImpl;->completedIn:D

    return-wide v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 101
    iget v0, p0, Ltwitter4j/QueryResultJSONImpl;->count:I

    return v0
.end method

.method public getMaxId()J
    .registers 3

    .prologue
    .line 88
    iget-wide v0, p0, Ltwitter4j/QueryResultJSONImpl;->maxId:J

    return-wide v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Ltwitter4j/QueryResultJSONImpl;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Ltwitter4j/QueryResultJSONImpl;->refreshUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSinceId()J
    .registers 3

    .prologue
    .line 80
    iget-wide v0, p0, Ltwitter4j/QueryResultJSONImpl;->sinceId:J

    return-wide v0
.end method

.method public getTweets()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Ltwitter4j/QueryResultJSONImpl;->tweets:Ljava/util/List;

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Ltwitter4j/QueryResultJSONImpl;->nextResults:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 12

    .prologue
    const/4 v4, 0x0

    const/16 v10, 0x20

    .line 172
    iget-wide v6, p0, Ltwitter4j/QueryResultJSONImpl;->sinceId:J

    iget-wide v8, p0, Ltwitter4j/QueryResultJSONImpl;->sinceId:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v0, v6

    .line 173
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v6, p0, Ltwitter4j/QueryResultJSONImpl;->maxId:J

    iget-wide v8, p0, Ltwitter4j/QueryResultJSONImpl;->maxId:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v5, v6

    add-int v0, v1, v5

    .line 174
    mul-int/lit8 v5, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/QueryResultJSONImpl;->refreshUrl:Ljava/lang/String;

    if-eqz v1, :cond_58

    iget-object v1, p0, Ltwitter4j/QueryResultJSONImpl;->refreshUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_21
    add-int v0, v5, v1

    .line 175
    mul-int/lit8 v1, v0, 0x1f

    iget v5, p0, Ltwitter4j/QueryResultJSONImpl;->count:I

    add-int v0, v1, v5

    .line 176
    iget-wide v6, p0, Ltwitter4j/QueryResultJSONImpl;->completedIn:D

    const-wide/16 v8, 0x0

    cmpl-double v1, v6, v8

    if-eqz v1, :cond_5a

    iget-wide v6, p0, Ltwitter4j/QueryResultJSONImpl;->completedIn:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 177
    .local v2, "temp":J
    :goto_37
    mul-int/lit8 v1, v0, 0x1f

    ushr-long v6, v2, v10

    xor-long/2addr v6, v2

    long-to-int v5, v6

    add-int v0, v1, v5

    .line 178
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Ltwitter4j/QueryResultJSONImpl;->query:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v0, v1, v5

    .line 179
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Ltwitter4j/QueryResultJSONImpl;->tweets:Ljava/util/List;

    if-eqz v5, :cond_55

    iget-object v4, p0, Ltwitter4j/QueryResultJSONImpl;->tweets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->hashCode()I

    move-result v4

    :cond_55
    add-int v0, v1, v4

    .line 180
    return v0

    .end local v2    # "temp":J
    :cond_58
    move v1, v4

    .line 174
    goto :goto_21

    .line 176
    :cond_5a
    const-wide/16 v2, 0x0

    goto :goto_37
.end method

.method public nextQuery()Ltwitter4j/Query;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Ltwitter4j/QueryResultJSONImpl;->nextResults:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 134
    const/4 v0, 0x0

    .line 136
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Ltwitter4j/QueryResultJSONImpl;->nextResults:Ljava/lang/String;

    invoke-static {v0}, Ltwitter4j/Query;->createWithNextPageQuery(Ljava/lang/String;)Ltwitter4j/Query;

    move-result-object v0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0x27

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QueryResultJSONImpl{sinceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/QueryResultJSONImpl;->sinceId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/QueryResultJSONImpl;->maxId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refreshUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/QueryResultJSONImpl;->refreshUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/QueryResultJSONImpl;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", completedIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/QueryResultJSONImpl;->completedIn:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", query=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/QueryResultJSONImpl;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tweets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/QueryResultJSONImpl;->tweets:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
