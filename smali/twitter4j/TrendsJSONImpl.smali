.class final Ltwitter4j/TrendsJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "TrendsJSONImpl.java"

# interfaces
.implements Ltwitter4j/Trends;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1c84bb4ff87a8afbL


# instance fields
.field private asOf:Ljava/util/Date;

.field private location:Ltwitter4j/Location;

.field private trendAt:Ljava/util/Date;

.field private trends:[Ltwitter4j/Trend;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "jsonStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ltwitter4j/TrendsJSONImpl;-><init>(Ljava/lang/String;Z)V

    .line 55
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "jsonStr"    # Ljava/lang/String;
    .param p2, "storeJSON"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 58
    invoke-virtual {p0, p1, p2}, Ltwitter4j/TrendsJSONImpl;->init(Ljava/lang/String;Z)V

    .line 59
    return-void
.end method

.method constructor <init>(Ljava/util/Date;Ltwitter4j/Location;Ljava/util/Date;[Ltwitter4j/Trend;)V
    .registers 5
    .param p1, "asOf"    # Ljava/util/Date;
    .param p2, "location"    # Ltwitter4j/Location;
    .param p3, "trendAt"    # Ljava/util/Date;
    .param p4, "trends"    # [Ltwitter4j/Trend;

    .prologue
    .line 85
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 86
    iput-object p1, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    .line 87
    iput-object p2, p0, Ltwitter4j/TrendsJSONImpl;->location:Ltwitter4j/Location;

    .line 88
    iput-object p3, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    .line 89
    iput-object p4, p0, Ltwitter4j/TrendsJSONImpl;->trends:[Ltwitter4j/Trend;

    .line 90
    return-void
.end method

.method constructor <init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .registers 5
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .param p2, "conf"    # Ltwitter4j/conf/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/HttpResponse;)V

    .line 46
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Ltwitter4j/TrendsJSONImpl;->init(Ljava/lang/String;Z)V

    .line 47
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 48
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 49
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_1e
    return-void
.end method

.method static createTrendsList(Ltwitter4j/HttpResponse;Z)Ltwitter4j/ResponseList;
    .registers 15
    .param p0, "res"    # Ltwitter4j/HttpResponse;
    .param p1, "storeJSON"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/HttpResponse;",
            "Z)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Trends;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object v3

    .line 98
    .local v3, "json":Ltwitter4j/JSONObject;
    :try_start_4
    const-string v10, "as_of"

    invoke-virtual {v3, v10}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ltwitter4j/ParseUtil;->parseTrendsDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 99
    .local v1, "asOf":Ljava/util/Date;
    const-string v10, "trends"

    invoke-virtual {v3, v10}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v9

    .line 100
    .local v9, "trendsJson":Ltwitter4j/JSONObject;
    invoke-static {v3, p1}, Ltwitter4j/TrendsJSONImpl;->extractLocation(Ltwitter4j/JSONObject;Z)Ltwitter4j/Location;

    move-result-object v6

    .line 101
    .local v6, "location":Ltwitter4j/Location;
    new-instance v7, Ltwitter4j/ResponseListImpl;

    invoke-virtual {v9}, Ltwitter4j/JSONObject;->length()I

    move-result v10

    invoke-direct {v7, v10, p0}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/HttpResponse;)V

    .line 102
    .local v7, "trends":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Trends;>;"
    invoke-virtual {v9}, Ltwitter4j/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 103
    .local v2, "ite":Ljava/util/Iterator;
    :cond_25
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a4

    .line 104
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 105
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v9, v5}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v0

    .line 106
    .local v0, "array":Ltwitter4j/JSONArray;
    invoke-static {v0, p1}, Ltwitter4j/TrendsJSONImpl;->jsonArrayToTrendArray(Ltwitter4j/JSONArray;Z)[Ltwitter4j/Trend;

    move-result-object v8

    .line 107
    .local v8, "trendsArray":[Ltwitter4j/Trend;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x13

    if-ne v10, v11, :cond_76

    .line 109
    new-instance v10, Ltwitter4j/TrendsJSONImpl;

    const-string v11, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v5, v11}, Ltwitter4j/ParseUtil;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    invoke-direct {v10, v1, v6, v11, v8}, Ltwitter4j/TrendsJSONImpl;-><init>(Ljava/util/Date;Ltwitter4j/Location;Ljava/util/Date;[Ltwitter4j/Trend;)V

    invoke-interface {v7, v10}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z
    :try_end_4f
    .catch Ltwitter4j/JSONException; {:try_start_4 .. :try_end_4f} :catch_50

    goto :goto_25

    .line 123
    .end local v0    # "array":Ltwitter4j/JSONArray;
    .end local v1    # "asOf":Ljava/util/Date;
    .end local v2    # "ite":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "location":Ltwitter4j/Location;
    .end local v7    # "trends":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Trends;>;"
    .end local v8    # "trendsArray":[Ltwitter4j/Trend;
    .end local v9    # "trendsJson":Ltwitter4j/JSONObject;
    :catch_50
    move-exception v4

    .line 124
    .local v4, "jsone":Ltwitter4j/JSONException;
    new-instance v10, Ltwitter4j/TwitterException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ltwitter4j/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v4}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 111
    .end local v4    # "jsone":Ltwitter4j/JSONException;
    .restart local v0    # "array":Ltwitter4j/JSONArray;
    .restart local v1    # "asOf":Ljava/util/Date;
    .restart local v2    # "ite":Ljava/util/Iterator;
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "location":Ltwitter4j/Location;
    .restart local v7    # "trends":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Trends;>;"
    .restart local v8    # "trendsArray":[Ltwitter4j/Trend;
    .restart local v9    # "trendsJson":Ltwitter4j/JSONObject;
    :cond_76
    :try_start_76
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x10

    if-ne v10, v11, :cond_8d

    .line 113
    new-instance v10, Ltwitter4j/TrendsJSONImpl;

    const-string v11, "yyyy-MM-dd HH:mm"

    invoke-static {v5, v11}, Ltwitter4j/ParseUtil;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    invoke-direct {v10, v1, v6, v11, v8}, Ltwitter4j/TrendsJSONImpl;-><init>(Ljava/util/Date;Ltwitter4j/Location;Ljava/util/Date;[Ltwitter4j/Trend;)V

    invoke-interface {v7, v10}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 115
    :cond_8d
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0xa

    if-ne v10, v11, :cond_25

    .line 117
    new-instance v10, Ltwitter4j/TrendsJSONImpl;

    const-string v11, "yyyy-MM-dd"

    invoke-static {v5, v11}, Ltwitter4j/ParseUtil;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    invoke-direct {v10, v1, v6, v11, v8}, Ltwitter4j/TrendsJSONImpl;-><init>(Ljava/util/Date;Ltwitter4j/Location;Ljava/util/Date;[Ltwitter4j/Trend;)V

    invoke-interface {v7, v10}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 121
    .end local v0    # "array":Ltwitter4j/JSONArray;
    .end local v5    # "key":Ljava/lang/String;
    .end local v8    # "trendsArray":[Ltwitter4j/Trend;
    :cond_a4
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_a7
    .catch Ltwitter4j/JSONException; {:try_start_76 .. :try_end_a7} :catch_50

    .line 122
    return-object v7
.end method

.method private static extractLocation(Ltwitter4j/JSONObject;Z)Ltwitter4j/Location;
    .registers 7
    .param p0, "json"    # Ltwitter4j/JSONObject;
    .param p1, "storeJSON"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 129
    const-string v3, "locations"

    invoke-virtual {p0, v3}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 130
    const/4 v1, 0x0

    .line 144
    :goto_9
    return-object v1

    .line 134
    :cond_a
    :try_start_a
    const-string v3, "locations"

    invoke-virtual {p0, v3}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v3

    invoke-static {v3, p1}, Ltwitter4j/LocationJSONImpl;->createLocationList(Ltwitter4j/JSONArray;Z)Ltwitter4j/ResponseList;
    :try_end_13
    .catch Ltwitter4j/JSONException; {:try_start_a .. :try_end_13} :catch_22

    move-result-object v2

    .line 139
    .local v2, "locations":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Location;>;"
    invoke-interface {v2}, Ltwitter4j/ResponseList;->size()I

    move-result v3

    if-eqz v3, :cond_2b

    .line 140
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ltwitter4j/ResponseList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/Location;

    .local v1, "location":Ltwitter4j/Location;
    goto :goto_9

    .line 135
    .end local v1    # "location":Ltwitter4j/Location;
    .end local v2    # "locations":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Location;>;"
    :catch_22
    move-exception v0

    .line 136
    .local v0, "e":Ltwitter4j/JSONException;
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "locations can\'t be null"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 142
    .end local v0    # "e":Ltwitter4j/JSONException;
    .restart local v2    # "locations":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Location;>;"
    :cond_2b
    const/4 v1, 0x0

    .restart local v1    # "location":Ltwitter4j/Location;
    goto :goto_9
.end method

.method private static jsonArrayToTrendArray(Ltwitter4j/JSONArray;Z)[Ltwitter4j/Trend;
    .registers 6
    .param p0, "array"    # Ltwitter4j/JSONArray;
    .param p1, "storeJSON"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p0}, Ltwitter4j/JSONArray;->length()I

    move-result v3

    new-array v2, v3, [Ltwitter4j/Trend;

    .line 149
    .local v2, "trends":[Ltwitter4j/Trend;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    invoke-virtual {p0}, Ltwitter4j/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1b

    .line 150
    invoke-virtual {p0, v0}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v1

    .line 151
    .local v1, "trend":Ltwitter4j/JSONObject;
    new-instance v3, Ltwitter4j/TrendJSONImpl;

    invoke-direct {v3, v1, p1}, Ltwitter4j/TrendJSONImpl;-><init>(Ltwitter4j/JSONObject;Z)V

    aput-object v3, v2, v0

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 153
    .end local v1    # "trend":Ltwitter4j/JSONObject;
    :cond_1b
    return-object v2
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 32
    check-cast p1, Ltwitter4j/Trends;

    invoke-virtual {p0, p1}, Ltwitter4j/TrendsJSONImpl;->compareTo(Ltwitter4j/Trends;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ltwitter4j/Trends;)I
    .registers 4
    .param p1, "that"    # Ltwitter4j/Trends;

    .prologue
    .line 41
    iget-object v0, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    invoke-interface {p1}, Ltwitter4j/Trends;->getTrendAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 190
    if-ne p0, p1, :cond_5

    .line 201
    :cond_4
    :goto_4
    return v1

    .line 191
    :cond_5
    instance-of v3, p1, Ltwitter4j/Trends;

    if-nez v3, :cond_b

    move v1, v2

    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 193
    check-cast v0, Ltwitter4j/Trends;

    .line 195
    .local v0, "trends1":Ltwitter4j/Trends;
    iget-object v3, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    if-eqz v3, :cond_20

    iget-object v3, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    invoke-interface {v0}, Ltwitter4j/Trends;->getAsOf()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    :cond_1e
    move v1, v2

    .line 196
    goto :goto_4

    .line 195
    :cond_20
    invoke-interface {v0}, Ltwitter4j/Trends;->getAsOf()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_1e

    .line 197
    :cond_26
    iget-object v3, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    if-eqz v3, :cond_38

    iget-object v3, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    invoke-interface {v0}, Ltwitter4j/Trends;->getTrendAt()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    :cond_36
    move v1, v2

    .line 198
    goto :goto_4

    .line 197
    :cond_38
    invoke-interface {v0}, Ltwitter4j/Trends;->getTrendAt()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_36

    .line 199
    :cond_3e
    iget-object v3, p0, Ltwitter4j/TrendsJSONImpl;->trends:[Ltwitter4j/Trend;

    invoke-interface {v0}, Ltwitter4j/Trends;->getTrends()[Ltwitter4j/Trend;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public getAsOf()Ljava/util/Date;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    return-object v0
.end method

.method public getLocation()Ltwitter4j/Location;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Ltwitter4j/TrendsJSONImpl;->location:Ltwitter4j/Location;

    return-object v0
.end method

.method public getTrendAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    return-object v0
.end method

.method public getTrends()[Ltwitter4j/Trend;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Ltwitter4j/TrendsJSONImpl;->trends:[Ltwitter4j/Trend;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 206
    iget-object v2, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    if-eqz v2, :cond_28

    iget-object v2, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v0

    .line 207
    .local v0, "result":I
    :goto_b
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_17
    add-int v0, v3, v2

    .line 208
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/TrendsJSONImpl;->trends:[Ltwitter4j/Trend;

    if-eqz v3, :cond_25

    iget-object v1, p0, Ltwitter4j/TrendsJSONImpl;->trends:[Ltwitter4j/Trend;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    :cond_25
    add-int v0, v2, v1

    .line 209
    return v0

    .end local v0    # "result":I
    :cond_28
    move v0, v1

    .line 206
    goto :goto_b

    .restart local v0    # "result":I
    :cond_2a
    move v2, v1

    .line 207
    goto :goto_17
.end method

.method init(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "jsonStr"    # Ljava/lang/String;
    .param p2, "storeJSON"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 64
    :try_start_0
    const-string v3, "["

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 65
    new-instance v0, Ltwitter4j/JSONArray;

    invoke-direct {v0, p1}, Ltwitter4j/JSONArray;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "array":Ltwitter4j/JSONArray;
    invoke-virtual {v0}, Ltwitter4j/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_3b

    .line 67
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v1

    .line 74
    .end local v0    # "array":Ltwitter4j/JSONArray;
    .local v1, "json":Ltwitter4j/JSONObject;
    :goto_18
    const-string v3, "as_of"

    invoke-virtual {v1, v3}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltwitter4j/ParseUtil;->parseTrendsDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    .line 75
    invoke-static {v1, p2}, Ltwitter4j/TrendsJSONImpl;->extractLocation(Ltwitter4j/JSONObject;Z)Ltwitter4j/Location;

    move-result-object v3

    iput-object v3, p0, Ltwitter4j/TrendsJSONImpl;->location:Ltwitter4j/Location;

    .line 76
    const-string v3, "trends"

    invoke-virtual {v1, v3}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v0

    .line 77
    .restart local v0    # "array":Ltwitter4j/JSONArray;
    iget-object v3, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    iput-object v3, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    .line 78
    invoke-static {v0, p2}, Ltwitter4j/TrendsJSONImpl;->jsonArrayToTrendArray(Ltwitter4j/JSONArray;Z)[Ltwitter4j/Trend;

    move-result-object v3

    iput-object v3, p0, Ltwitter4j/TrendsJSONImpl;->trends:[Ltwitter4j/Trend;

    .line 82
    return-void

    .line 69
    .end local v1    # "json":Ltwitter4j/JSONObject;
    :cond_3b
    new-instance v3, Ltwitter4j/TwitterException;

    const-string v4, "No trends found on the specified woeid"

    invoke-direct {v3, v4}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_43
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_43} :catch_43

    .line 79
    .end local v0    # "array":Ltwitter4j/JSONArray;
    :catch_43
    move-exception v2

    .line 80
    .local v2, "jsone":Ltwitter4j/JSONException;
    new-instance v3, Ltwitter4j/TwitterException;

    invoke-virtual {v2}, Ltwitter4j/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 72
    .end local v2    # "jsone":Ltwitter4j/JSONException;
    :cond_4e
    :try_start_4e
    new-instance v1, Ltwitter4j/JSONObject;

    invoke-direct {v1, p1}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_53
    .catch Ltwitter4j/JSONException; {:try_start_4e .. :try_end_53} :catch_43

    .restart local v1    # "json":Ltwitter4j/JSONObject;
    goto :goto_18
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrendsJSONImpl{asOf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trendAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trends="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Ltwitter4j/TrendsJSONImpl;->trends:[Ltwitter4j/Trend;

    if-nez v0, :cond_37

    const/4 v0, 0x0

    .line 217
    :goto_28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 214
    :cond_37
    iget-object v0, p0, Ltwitter4j/TrendsJSONImpl;->trends:[Ltwitter4j/Trend;

    .line 217
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_28
.end method
