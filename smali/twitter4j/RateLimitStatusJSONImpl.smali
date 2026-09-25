.class final Ltwitter4j/RateLimitStatusJSONImpl;
.super Ljava/lang/Object;
.source "RateLimitStatusJSONImpl.java"

# interfaces
.implements Ltwitter4j/RateLimitStatus;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6c1cd6cd5a4eb3adL


# instance fields
.field private limit:I

.field private remaining:I

.field private resetTimeInSeconds:I

.field private secondsUntilReset:I


# direct methods
.method private constructor <init>(III)V
    .registers 10
    .param p1, "limit"    # I
    .param p2, "remaining"    # I
    .param p3, "resetTimeInSeconds"    # I

    .prologue
    const-wide/16 v4, 0x3e8

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->limit:I

    .line 73
    iput p2, p0, Ltwitter4j/RateLimitStatusJSONImpl;->remaining:I

    .line 74
    iput p3, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    .line 75
    int-to-long v0, p3

    mul-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    .line 76
    return-void
.end method

.method constructor <init>(Ltwitter4j/JSONObject;)V
    .registers 2
    .param p1, "json"    # Ltwitter4j/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p0, p1}, Ltwitter4j/RateLimitStatusJSONImpl;->init(Ltwitter4j/JSONObject;)V

    .line 80
    return-void
.end method

.method static createFromResponseHeader(Ltwitter4j/HttpResponse;)Ltwitter4j/RateLimitStatus;
    .registers 11
    .param p0, "res"    # Ltwitter4j/HttpResponse;

    .prologue
    const/4 v8, 0x0

    .line 90
    if-nez p0, :cond_4

    .line 116
    :cond_3
    :goto_3
    return-object v8

    .line 97
    :cond_4
    const-string v9, "X-Rate-Limit-Limit"

    invoke-virtual {p0, v9}, Ltwitter4j/HttpResponse;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 98
    .local v7, "strLimit":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 99
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 103
    .local v0, "limit":I
    const-string v9, "X-Rate-Limit-Remaining"

    invoke-virtual {p0, v9}, Ltwitter4j/HttpResponse;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "remaining":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 109
    .local v4, "remainingHits":I
    const-string v9, "X-Rate-Limit-Reset"

    invoke-virtual {p0, v9}, Ltwitter4j/HttpResponse;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, "reset":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 111
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 112
    .local v2, "longReset":J
    long-to-int v6, v2

    .line 116
    .local v6, "resetTimeInSeconds":I
    new-instance v8, Ltwitter4j/RateLimitStatusJSONImpl;

    invoke-direct {v8, v0, v4, v6}, Ltwitter4j/RateLimitStatusJSONImpl;-><init>(III)V

    goto :goto_3
.end method

.method static createRateLimitStatuses(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ljava/util/Map;
    .registers 5
    .param p0, "res"    # Ltwitter4j/HttpResponse;
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/HttpResponse;",
            "Ltwitter4j/conf/Configuration;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ltwitter4j/RateLimitStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object v0

    .line 42
    .local v0, "json":Ltwitter4j/JSONObject;
    invoke-static {v0}, Ltwitter4j/RateLimitStatusJSONImpl;->createRateLimitStatuses(Ltwitter4j/JSONObject;)Ljava/util/Map;

    move-result-object v1

    .line 43
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ltwitter4j/RateLimitStatus;>;"
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 44
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 45
    invoke-static {v1, v0}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_14
    return-object v1
.end method

.method static createRateLimitStatuses(Ltwitter4j/JSONObject;)Ljava/util/Map;
    .registers 11
    .param p0, "json"    # Ltwitter4j/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ltwitter4j/RateLimitStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 51
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ltwitter4j/RateLimitStatus;>;"
    :try_start_5
    const-string v9, "resources"

    invoke-virtual {p0, v9}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v8

    .line 54
    .local v8, "resources":Ltwitter4j/JSONObject;
    invoke-virtual {v8}, Ltwitter4j/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 55
    .local v7, "resourceKeys":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_43

    .line 56
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v6

    .line 57
    .local v6, "resource":Ltwitter4j/JSONObject;
    invoke-virtual {v6}, Ltwitter4j/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 58
    .local v1, "endpointKeys":Ljava/util/Iterator;
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    .local v0, "endpoint":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v5

    .line 61
    .local v5, "rateLimitStatusJSON":Ltwitter4j/JSONObject;
    new-instance v4, Ltwitter4j/RateLimitStatusJSONImpl;

    invoke-direct {v4, v5}, Ltwitter4j/RateLimitStatusJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    .line 62
    .local v4, "rateLimitStatus":Ltwitter4j/RateLimitStatus;
    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catch Ltwitter4j/JSONException; {:try_start_5 .. :try_end_3b} :catch_3c

    goto :goto_23

    .line 66
    .end local v0    # "endpoint":Ljava/lang/String;
    .end local v1    # "endpointKeys":Ljava/util/Iterator;
    .end local v4    # "rateLimitStatus":Ltwitter4j/RateLimitStatus;
    .end local v5    # "rateLimitStatusJSON":Ltwitter4j/JSONObject;
    .end local v6    # "resource":Ltwitter4j/JSONObject;
    .end local v7    # "resourceKeys":Ljava/util/Iterator;
    .end local v8    # "resources":Ltwitter4j/JSONObject;
    :catch_3c
    move-exception v2

    .line 67
    .local v2, "jsone":Ltwitter4j/JSONException;
    new-instance v9, Ltwitter4j/TwitterException;

    invoke-direct {v9, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v9

    .line 65
    .end local v2    # "jsone":Ltwitter4j/JSONException;
    .restart local v7    # "resourceKeys":Ljava/util/Iterator;
    .restart local v8    # "resources":Ltwitter4j/JSONObject;
    :cond_43
    :try_start_43
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    :try_end_46
    .catch Ltwitter4j/JSONException; {:try_start_43 .. :try_end_46} :catch_3c

    move-result-object v9

    return-object v9
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 153
    if-ne p0, p1, :cond_5

    .line 163
    :cond_4
    :goto_4
    return v1

    .line 154
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

    .line 156
    check-cast v0, Ltwitter4j/RateLimitStatusJSONImpl;

    .line 158
    .local v0, "that":Ltwitter4j/RateLimitStatusJSONImpl;
    iget v3, p0, Ltwitter4j/RateLimitStatusJSONImpl;->limit:I

    iget v4, v0, Ltwitter4j/RateLimitStatusJSONImpl;->limit:I

    if-eq v3, v4, :cond_1e

    move v1, v2

    goto :goto_4

    .line 159
    :cond_1e
    iget v3, p0, Ltwitter4j/RateLimitStatusJSONImpl;->remaining:I

    iget v4, v0, Ltwitter4j/RateLimitStatusJSONImpl;->remaining:I

    if-eq v3, v4, :cond_26

    move v1, v2

    goto :goto_4

    .line 160
    :cond_26
    iget v3, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    iget v4, v0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    if-eq v3, v4, :cond_2e

    move v1, v2

    goto :goto_4

    .line 161
    :cond_2e
    iget v3, p0, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    iget v4, v0, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public getLimit()I
    .registers 2

    .prologue
    .line 132
    iget v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->limit:I

    return v0
.end method

.method public getRemaining()I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->remaining:I

    return v0
.end method

.method public getResetTimeInSeconds()I
    .registers 2

    .prologue
    .line 140
    iget v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    return v0
.end method

.method public getSecondsUntilReset()I
    .registers 2

    .prologue
    .line 148
    iget v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 168
    iget v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->remaining:I

    .line 169
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/RateLimitStatusJSONImpl;->limit:I

    add-int v0, v1, v2

    .line 170
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    add-int v0, v1, v2

    .line 171
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    add-int v0, v1, v2

    .line 172
    return v0
.end method

.method init(Ltwitter4j/JSONObject;)V
    .registers 8
    .param p1, "json"    # Ltwitter4j/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x3e8

    .line 83
    const-string v0, "limit"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->limit:I

    .line 84
    const-string v0, "remaining"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->remaining:I

    .line 85
    const-string v0, "reset"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    .line 86
    iget v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    int-to-long v0, v0

    mul-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RateLimitStatusJSONImpl{remaining="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->remaining:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resetTimeInSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secondsUntilReset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
