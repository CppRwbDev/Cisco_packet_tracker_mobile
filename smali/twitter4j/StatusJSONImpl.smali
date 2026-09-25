.class final Ltwitter4j/StatusJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "StatusJSONImpl.java"

# interfaces
.implements Ltwitter4j/Status;
.implements Ljava/io/Serializable;


# static fields
.field private static final logger:Ltwitter4j/Logger;

.field private static final serialVersionUID:J = -0x59aac71ba3de09f1L


# instance fields
.field private contributorsIDs:[J

.field private createdAt:Ljava/util/Date;

.field private currentUserRetweetId:J

.field private favoriteCount:I

.field private geoLocation:Ltwitter4j/GeoLocation;

.field private hashtagEntities:[Ltwitter4j/HashtagEntity;

.field private id:J

.field private inReplyToScreenName:Ljava/lang/String;

.field private inReplyToStatusId:J

.field private inReplyToUserId:J

.field private isFavorited:Z

.field private isPossiblySensitive:Z

.field private isRetweeted:Z

.field private isTruncated:Z

.field private isoLanguageCode:Ljava/lang/String;

.field private lang:Ljava/lang/String;

.field private mediaEntities:[Ltwitter4j/MediaEntity;

.field private place:Ltwitter4j/Place;

.field private retweetCount:J

.field private retweetedStatus:Ltwitter4j/Status;

.field private scopes:Ltwitter4j/Scopes;

.field private source:Ljava/lang/String;

.field private symbolEntities:[Ltwitter4j/SymbolEntity;

.field private text:Ljava/lang/String;

.field private urlEntities:[Ltwitter4j/URLEntity;

.field private user:Ltwitter4j/User;

.field private userMentionEntities:[Ltwitter4j/UserMentionEntity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Ltwitter4j/StatusJSONImpl;

    invoke-static {v0}, Ltwitter4j/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/StatusJSONImpl;->logger:Ltwitter4j/Logger;

    return-void
.end method

.method constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 46
    iput-object v2, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 47
    iput-object v2, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    .line 62
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltwitter4j/StatusJSONImpl;->currentUserRetweetId:J

    .line 64
    iput-object v2, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 92
    return-void
.end method

.method constructor <init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .registers 7
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .param p2, "conf"    # Ltwitter4j/conf/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/HttpResponse;)V

    .line 46
    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 47
    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    .line 62
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Ltwitter4j/StatusJSONImpl;->currentUserRetweetId:J

    .line 64
    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 68
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object v0

    .line 69
    .local v0, "json":Ltwitter4j/JSONObject;
    invoke-direct {p0, v0}, Ltwitter4j/StatusJSONImpl;->init(Ltwitter4j/JSONObject;)V

    .line 70
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 71
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 72
    invoke-static {p0, v0}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_21
    return-void
.end method

.method constructor <init>(Ltwitter4j/JSONObject;)V
    .registers 5
    .param p1, "json"    # Ltwitter4j/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 46
    iput-object v2, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 47
    iput-object v2, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    .line 62
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltwitter4j/StatusJSONImpl;->currentUserRetweetId:J

    .line 64
    iput-object v2, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 86
    invoke-direct {p0, p1}, Ltwitter4j/StatusJSONImpl;->init(Ltwitter4j/JSONObject;)V

    .line 87
    return-void
.end method

.method constructor <init>(Ltwitter4j/JSONObject;Ltwitter4j/conf/Configuration;)V
    .registers 6
    .param p1, "json"    # Ltwitter4j/JSONObject;
    .param p2, "conf"    # Ltwitter4j/conf/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 46
    iput-object v2, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 47
    iput-object v2, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    .line 62
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltwitter4j/StatusJSONImpl;->currentUserRetweetId:J

    .line 64
    iput-object v2, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 78
    invoke-direct {p0, p1}, Ltwitter4j/StatusJSONImpl;->init(Ltwitter4j/JSONObject;)V

    .line 79
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 80
    invoke-static {p0, p1}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_1a
    return-void
.end method

.method static createStatusList(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    .registers 10
    .param p0, "res"    # Ltwitter4j/HttpResponse;
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/HttpResponse;",
            "Ltwitter4j/conf/Configuration;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 452
    :try_start_0
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 453
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 455
    :cond_9
    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->asJSONArray()Ltwitter4j/JSONArray;

    move-result-object v3

    .line 456
    .local v3, "list":Ltwitter4j/JSONArray;
    invoke-virtual {v3}, Ltwitter4j/JSONArray;->length()I

    move-result v4

    .line 457
    .local v4, "size":I
    new-instance v6, Ltwitter4j/ResponseListImpl;

    invoke-direct {v6, v4, p0}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/HttpResponse;)V

    .line 458
    .local v6, "statuses":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    if-ge v0, v4, :cond_31

    .line 459
    invoke-virtual {v3, v0}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v1

    .line 460
    .local v1, "json":Ltwitter4j/JSONObject;
    new-instance v5, Ltwitter4j/StatusJSONImpl;

    invoke-direct {v5, v1}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    .line 461
    .local v5, "status":Ltwitter4j/Status;
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 462
    invoke-static {v5, v1}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    :cond_2b
    invoke-interface {v6, v5}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 466
    .end local v1    # "json":Ltwitter4j/JSONObject;
    .end local v5    # "status":Ltwitter4j/Status;
    :cond_31
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 467
    invoke-static {v6, v3}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_3a} :catch_3b

    .line 469
    :cond_3a
    return-object v6

    .line 470
    .end local v0    # "i":I
    .end local v3    # "list":Ltwitter4j/JSONArray;
    .end local v4    # "size":I
    .end local v6    # "statuses":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    :catch_3b
    move-exception v2

    .line 471
    .local v2, "jsone":Ltwitter4j/JSONException;
    new-instance v7, Ltwitter4j/TwitterException;

    invoke-direct {v7, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v7
.end method

.method private init(Ltwitter4j/JSONObject;)V
    .registers 24
    .param p1, "json"    # Ltwitter4j/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 95
    const-string v17, "id"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Ltwitter4j/StatusJSONImpl;->id:J

    .line 96
    const-string v17, "source"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ltwitter4j/StatusJSONImpl;->source:Ljava/lang/String;

    .line 97
    const-string v17, "created_at"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Ltwitter4j/ParseUtil;->getDate(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/util/Date;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ltwitter4j/StatusJSONImpl;->createdAt:Ljava/util/Date;

    .line 98
    const-string v17, "truncated"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ltwitter4j/StatusJSONImpl;->isTruncated:Z

    .line 99
    const-string v17, "in_reply_to_status_id"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Ltwitter4j/StatusJSONImpl;->inReplyToStatusId:J

    .line 100
    const-string v17, "in_reply_to_user_id"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Ltwitter4j/StatusJSONImpl;->inReplyToUserId:J

    .line 101
    const-string v17, "favorited"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ltwitter4j/StatusJSONImpl;->isFavorited:Z

    .line 102
    const-string v17, "retweeted"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ltwitter4j/StatusJSONImpl;->isRetweeted:Z

    .line 103
    const-string v17, "in_reply_to_screen_name"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ltwitter4j/StatusJSONImpl;->inReplyToScreenName:Ljava/lang/String;

    .line 104
    const-string v17, "retweet_count"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Ltwitter4j/StatusJSONImpl;->retweetCount:J

    .line 105
    const-string v17, "favorite_count"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ltwitter4j/StatusJSONImpl;->favoriteCount:I

    .line 106
    const-string v17, "possibly_sensitive"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ltwitter4j/StatusJSONImpl;->isPossiblySensitive:Z

    .line 108
    :try_start_c0
    const-string v17, "user"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_e1

    .line 109
    new-instance v17, Ltwitter4j/UserJSONImpl;

    const-string v18, "user"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 111
    :cond_e1
    invoke-static/range {p1 .. p1}, Ltwitter4j/JSONImplFactory;->createGeoLocation(Ltwitter4j/JSONObject;)Ltwitter4j/GeoLocation;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 112
    const-string v17, "place"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_10c

    .line 113
    new-instance v17, Ltwitter4j/PlaceJSONImpl;

    const-string v18, "place"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ltwitter4j/PlaceJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    .line 116
    :cond_10c
    const-string v17, "retweeted_status"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_12d

    .line 117
    new-instance v17, Ltwitter4j/StatusJSONImpl;

    const-string v18, "retweeted_status"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ltwitter4j/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    .line 119
    :cond_12d
    const-string v17, "contributors"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_16f

    .line 120
    const-string v17, "contributors"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v4

    .line 121
    .local v4, "contributorsArray":Ltwitter4j/JSONArray;
    invoke-virtual {v4}, Ltwitter4j/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [J

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ltwitter4j/StatusJSONImpl;->contributorsIDs:[J

    .line 122
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_154
    invoke-virtual {v4}, Ltwitter4j/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_17d

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/StatusJSONImpl;->contributorsIDs:[J

    move-object/from16 v17, v0

    invoke-virtual {v4, v7}, Ltwitter4j/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    aput-wide v18, v17, v7

    .line 122
    add-int/lit8 v7, v7, 0x1

    goto :goto_154

    .line 126
    .end local v4    # "contributorsArray":Ltwitter4j/JSONArray;
    .end local v7    # "i":I
    :cond_16f
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [J

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ltwitter4j/StatusJSONImpl;->contributorsIDs:[J

    .line 128
    :cond_17d
    const-string v17, "entities"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2a8

    .line 129
    const-string v17, "entities"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v5

    .line 131
    .local v5, "entities":Ltwitter4j/JSONObject;
    const-string v17, "user_mentions"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1cc

    .line 132
    const-string v17, "user_mentions"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v16

    .line 133
    .local v16, "userMentionsArray":Ltwitter4j/JSONArray;
    invoke-virtual/range {v16 .. v16}, Ltwitter4j/JSONArray;->length()I

    move-result v9

    .line 134
    .local v9, "len":I
    new-array v0, v9, [Ltwitter4j/UserMentionEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    .line 135
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_1b4
    if-ge v7, v9, :cond_1cc

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    move-object/from16 v17, v0

    new-instance v18, Ltwitter4j/UserMentionEntityJSONImpl;

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ltwitter4j/UserMentionEntityJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    aput-object v18, v17, v7

    .line 135
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b4

    .line 139
    .end local v7    # "i":I
    .end local v9    # "len":I
    .end local v16    # "userMentionsArray":Ltwitter4j/JSONArray;
    :cond_1cc
    const-string v17, "urls"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_203

    .line 140
    const-string v17, "urls"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v15

    .line 141
    .local v15, "urlsArray":Ltwitter4j/JSONArray;
    invoke-virtual {v15}, Ltwitter4j/JSONArray;->length()I

    move-result v9

    .line 142
    .restart local v9    # "len":I
    new-array v0, v9, [Ltwitter4j/URLEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    .line 143
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_1ed
    if-ge v7, v9, :cond_203

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    move-object/from16 v17, v0

    new-instance v18, Ltwitter4j/URLEntityJSONImpl;

    invoke-virtual {v15, v7}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ltwitter4j/URLEntityJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    aput-object v18, v17, v7

    .line 143
    add-int/lit8 v7, v7, 0x1

    goto :goto_1ed

    .line 148
    .end local v7    # "i":I
    .end local v9    # "len":I
    .end local v15    # "urlsArray":Ltwitter4j/JSONArray;
    :cond_203
    const-string v17, "hashtags"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_23a

    .line 149
    const-string v17, "hashtags"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v6

    .line 150
    .local v6, "hashtagsArray":Ltwitter4j/JSONArray;
    invoke-virtual {v6}, Ltwitter4j/JSONArray;->length()I

    move-result v9

    .line 151
    .restart local v9    # "len":I
    new-array v0, v9, [Ltwitter4j/HashtagEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    .line 152
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_224
    if-ge v7, v9, :cond_23a

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    move-object/from16 v17, v0

    new-instance v18, Ltwitter4j/HashtagEntityJSONImpl;

    invoke-virtual {v6, v7}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ltwitter4j/HashtagEntityJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    aput-object v18, v17, v7

    .line 152
    add-int/lit8 v7, v7, 0x1

    goto :goto_224

    .line 157
    .end local v6    # "hashtagsArray":Ltwitter4j/JSONArray;
    .end local v7    # "i":I
    .end local v9    # "len":I
    :cond_23a
    const-string v17, "symbols"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_271

    .line 158
    const-string v17, "symbols"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v6

    .line 159
    .restart local v6    # "hashtagsArray":Ltwitter4j/JSONArray;
    invoke-virtual {v6}, Ltwitter4j/JSONArray;->length()I

    move-result v9

    .line 160
    .restart local v9    # "len":I
    new-array v0, v9, [Ltwitter4j/SymbolEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ltwitter4j/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    .line 161
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_25b
    if-ge v7, v9, :cond_271

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    move-object/from16 v17, v0

    new-instance v18, Ltwitter4j/HashtagEntityJSONImpl;

    invoke-virtual {v6, v7}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ltwitter4j/HashtagEntityJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    aput-object v18, v17, v7

    .line 161
    add-int/lit8 v7, v7, 0x1

    goto :goto_25b

    .line 167
    .end local v6    # "hashtagsArray":Ltwitter4j/JSONArray;
    .end local v7    # "i":I
    .end local v9    # "len":I
    :cond_271
    const-string v17, "media"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2a8

    .line 168
    const-string v17, "media"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v10

    .line 169
    .local v10, "mediaArray":Ltwitter4j/JSONArray;
    invoke-virtual {v10}, Ltwitter4j/JSONArray;->length()I

    move-result v9

    .line 170
    .restart local v9    # "len":I
    new-array v0, v9, [Ltwitter4j/MediaEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    .line 171
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_292
    if-ge v7, v9, :cond_2a8

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    move-object/from16 v17, v0

    new-instance v18, Ltwitter4j/MediaEntityJSONImpl;

    invoke-virtual {v10, v7}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ltwitter4j/MediaEntityJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    aput-object v18, v17, v7

    .line 171
    add-int/lit8 v7, v7, 0x1

    goto :goto_292

    .line 177
    .end local v5    # "entities":Ltwitter4j/JSONObject;
    .end local v7    # "i":I
    .end local v9    # "len":I
    .end local v10    # "mediaArray":Ltwitter4j/JSONArray;
    :cond_2a8
    const-string v17, "metadata"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2d6

    .line 178
    const-string v17, "metadata"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v11

    .line 179
    .local v11, "metadata":Ltwitter4j/JSONObject;
    const-string v17, "iso_language_code"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2d6

    .line 180
    const-string v17, "iso_language_code"

    move-object/from16 v0, v17

    invoke-static {v0, v11}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ltwitter4j/StatusJSONImpl;->isoLanguageCode:Ljava/lang/String;

    .line 184
    .end local v11    # "metadata":Ltwitter4j/JSONObject;
    :cond_2d6
    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    move-object/from16 v17, v0

    if-nez v17, :cond_3e8

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ltwitter4j/UserMentionEntity;

    move-object/from16 v17, v0

    :goto_2e6
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    move-object/from16 v17, v0

    if-nez v17, :cond_3f0

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ltwitter4j/URLEntity;

    move-object/from16 v17, v0

    :goto_2fc
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    move-object/from16 v17, v0

    if-nez v17, :cond_3f8

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ltwitter4j/HashtagEntity;

    move-object/from16 v17, v0

    :goto_312
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    move-object/from16 v17, v0

    if-nez v17, :cond_400

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ltwitter4j/SymbolEntity;

    move-object/from16 v17, v0

    :goto_328
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ltwitter4j/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    move-object/from16 v17, v0

    if-nez v17, :cond_408

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ltwitter4j/MediaEntity;

    move-object/from16 v17, v0

    :goto_33e
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    .line 189
    const-string v17, "text"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    move-object/from16 v21, v0

    invoke-static/range {v17 .. v21}, Ltwitter4j/HTMLEntity;->unescapeAndSlideEntityIncdices(Ljava/lang/String;[Ltwitter4j/UserMentionEntity;[Ltwitter4j/URLEntity;[Ltwitter4j/HashtagEntity;[Ltwitter4j/MediaEntity;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ltwitter4j/StatusJSONImpl;->text:Ljava/lang/String;

    .line 191
    const-string v17, "current_user_retweet"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_392

    .line 192
    const-string v17, "current_user_retweet"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v17

    const-string v18, "id"

    invoke-virtual/range {v17 .. v18}, Ltwitter4j/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Ltwitter4j/StatusJSONImpl;->currentUserRetweetId:J

    .line 194
    :cond_392
    const-string v17, "lang"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3ae

    .line 195
    const-string v17, "lang"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ltwitter4j/StatusJSONImpl;->lang:Ljava/lang/String;

    .line 198
    :cond_3ae
    const-string v17, "scopes"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_41d

    .line 199
    const-string v17, "scopes"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v14

    .line 200
    .local v14, "scopesJson":Ltwitter4j/JSONObject;
    const-string v17, "place_ids"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_41d

    .line 201
    const-string v17, "place_ids"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v13

    .line 202
    .local v13, "placeIdsArray":Ltwitter4j/JSONArray;
    invoke-virtual {v13}, Ltwitter4j/JSONArray;->length()I

    move-result v9

    .line 203
    .restart local v9    # "len":I
    new-array v12, v9, [Ljava/lang/String;

    .line 204
    .local v12, "placeIds":[Ljava/lang/String;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3dd
    if-ge v7, v9, :cond_410

    .line 205
    invoke-virtual {v13, v7}, Ltwitter4j/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v12, v7

    .line 204
    add-int/lit8 v7, v7, 0x1

    goto :goto_3dd

    .line 184
    .end local v7    # "i":I
    .end local v9    # "len":I
    .end local v12    # "placeIds":[Ljava/lang/String;
    .end local v13    # "placeIdsArray":Ltwitter4j/JSONArray;
    .end local v14    # "scopesJson":Ltwitter4j/JSONObject;
    :cond_3e8
    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    move-object/from16 v17, v0

    goto/16 :goto_2e6

    .line 185
    :cond_3f0
    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    move-object/from16 v17, v0

    goto/16 :goto_2fc

    .line 186
    :cond_3f8
    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    move-object/from16 v17, v0

    goto/16 :goto_312

    .line 187
    :cond_400
    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    move-object/from16 v17, v0

    goto/16 :goto_328

    .line 188
    :cond_408
    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    move-object/from16 v17, v0

    goto/16 :goto_33e

    .line 207
    .restart local v7    # "i":I
    .restart local v9    # "len":I
    .restart local v12    # "placeIds":[Ljava/lang/String;
    .restart local v13    # "placeIdsArray":Ltwitter4j/JSONArray;
    .restart local v14    # "scopesJson":Ltwitter4j/JSONObject;
    :cond_410
    new-instance v17, Ltwitter4j/ScopesImpl;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Ltwitter4j/ScopesImpl;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ltwitter4j/StatusJSONImpl;->scopes:Ltwitter4j/Scopes;
    :try_end_41d
    .catch Ltwitter4j/JSONException; {:try_start_c0 .. :try_end_41d} :catch_41e

    .line 213
    .end local v7    # "i":I
    .end local v9    # "len":I
    .end local v12    # "placeIds":[Ljava/lang/String;
    .end local v13    # "placeIdsArray":Ltwitter4j/JSONArray;
    .end local v14    # "scopesJson":Ltwitter4j/JSONObject;
    :cond_41d
    return-void

    .line 210
    :catch_41e
    move-exception v8

    .line 211
    .local v8, "jsone":Ltwitter4j/JSONException;
    new-instance v17, Ltwitter4j/TwitterException;

    move-object/from16 v0, v17

    invoke-direct {v0, v8}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v17
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 31
    check-cast p1, Ltwitter4j/Status;

    invoke-virtual {p0, p1}, Ltwitter4j/StatusJSONImpl;->compareTo(Ltwitter4j/Status;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ltwitter4j/Status;)I
    .registers 8
    .param p1, "that"    # Ltwitter4j/Status;

    .prologue
    .line 217
    iget-wide v2, p0, Ltwitter4j/StatusJSONImpl;->id:J

    invoke-interface {p1}, Ltwitter4j/Status;->getId()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 218
    .local v0, "delta":J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_12

    .line 219
    const/high16 v2, -0x80000000

    .line 223
    :goto_11
    return v2

    .line 220
    :cond_12
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1d

    .line 221
    const v2, 0x7fffffff

    goto :goto_11

    .line 223
    :cond_1d
    long-to-int v2, v0

    goto :goto_11
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 482
    if-nez p1, :cond_6

    move v0, v1

    .line 488
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_5
    :goto_5
    return v0

    .line 485
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_6
    if-eq p0, p1, :cond_5

    .line 488
    instance-of v2, p1, Ltwitter4j/Status;

    if-eqz v2, :cond_18

    check-cast p1, Ltwitter4j/Status;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {p1}, Ltwitter4j/Status;->getId()J

    move-result-wide v2

    iget-wide v4, p0, Ltwitter4j/StatusJSONImpl;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    :cond_18
    move v0, v1

    goto :goto_5
.end method

.method public getContributors()[J
    .registers 2

    .prologue
    .line 312
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->contributorsIDs:[J

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getCurrentUserRetweetId()J
    .registers 3

    .prologue
    .line 384
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->currentUserRetweetId:J

    return-wide v0
.end method

.method public getFavoriteCount()I
    .registers 2

    .prologue
    .line 336
    iget v0, p0, Ltwitter4j/StatusJSONImpl;->favoriteCount:I

    return v0
.end method

.method public getGeoLocation()Ltwitter4j/GeoLocation;
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    return-object v0
.end method

.method public getHashtagEntities()[Ltwitter4j/HashtagEntity;
    .registers 2

    .prologue
    .line 416
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 239
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->id:J

    return-wide v0
.end method

.method public getInReplyToScreenName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->inReplyToScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public getInReplyToStatusId()J
    .registers 3

    .prologue
    .line 272
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->inReplyToStatusId:J

    return-wide v0
.end method

.method public getInReplyToUserId()J
    .registers 3

    .prologue
    .line 280
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->inReplyToUserId:J

    return-wide v0
.end method

.method public getLang()Ljava/lang/String;
    .registers 2

    .prologue
    .line 446
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaEntities()[Ltwitter4j/MediaEntity;
    .registers 2

    .prologue
    .line 424
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    return-object v0
.end method

.method public getPlace()Ltwitter4j/Place;
    .registers 2

    .prologue
    .line 304
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    return-object v0
.end method

.method public getRetweetCount()I
    .registers 3

    .prologue
    .line 368
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->retweetCount:J

    long-to-int v0, v0

    return v0
.end method

.method public getRetweetedStatus()Ltwitter4j/Status;
    .registers 2

    .prologue
    .line 360
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    return-object v0
.end method

.method public getScopes()Ltwitter4j/Scopes;
    .registers 2

    .prologue
    .line 439
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->scopes:Ltwitter4j/Scopes;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbolEntities()[Ltwitter4j/SymbolEntity;
    .registers 2

    .prologue
    .line 432
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getURLEntities()[Ltwitter4j/URLEntity;
    .registers 2

    .prologue
    .line 408
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    return-object v0
.end method

.method public getUser()Ltwitter4j/User;
    .registers 2

    .prologue
    .line 344
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    return-object v0
.end method

.method public getUserMentionEntities()[Ltwitter4j/UserMentionEntity;
    .registers 2

    .prologue
    .line 400
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 477
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->id:J

    long-to-int v0, v0

    return v0
.end method

.method public isFavorited()Z
    .registers 2

    .prologue
    .line 320
    iget-boolean v0, p0, Ltwitter4j/StatusJSONImpl;->isFavorited:Z

    return v0
.end method

.method public isPossiblySensitive()Z
    .registers 2

    .prologue
    .line 392
    iget-boolean v0, p0, Ltwitter4j/StatusJSONImpl;->isPossiblySensitive:Z

    return v0
.end method

.method public isRetweet()Z
    .registers 2

    .prologue
    .line 352
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isRetweeted()Z
    .registers 2

    .prologue
    .line 328
    iget-boolean v0, p0, Ltwitter4j/StatusJSONImpl;->isRetweeted:Z

    return v0
.end method

.method public isRetweetedByMe()Z
    .registers 5

    .prologue
    .line 376
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->currentUserRetweetId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isTruncated()Z
    .registers 2

    .prologue
    .line 264
    iget-boolean v0, p0, Ltwitter4j/StatusJSONImpl;->isTruncated:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0x27

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusJSONImpl{createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/StatusJSONImpl;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isTruncated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/StatusJSONImpl;->isTruncated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inReplyToStatusId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/StatusJSONImpl;->inReplyToStatusId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inReplyToUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/StatusJSONImpl;->inReplyToUserId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFavorited="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/StatusJSONImpl;->isFavorited:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRetweeted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/StatusJSONImpl;->isRetweeted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", favoriteCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/StatusJSONImpl;->favoriteCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inReplyToScreenName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->inReplyToScreenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", geoLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", place="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", retweetCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/StatusJSONImpl;->retweetCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPossiblySensitive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/StatusJSONImpl;->isPossiblySensitive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isoLanguageCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->isoLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lang=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contributorsIDs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->contributorsIDs:[J

    .line 511
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", retweetedStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userMentionEntities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    .line 513
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", urlEntities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    .line 514
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hashtagEntities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    .line 515
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaEntities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    .line 516
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", symbolEntities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    .line 517
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentUserRetweetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/StatusJSONImpl;->currentUserRetweetId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
