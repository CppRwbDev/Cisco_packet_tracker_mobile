.class final Ltwitter4j/DirectMessageJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "DirectMessageJSONImpl.java"

# interfaces
.implements Ltwitter4j/DirectMessage;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x626f10a4d0a22d89L


# instance fields
.field private createdAt:Ljava/util/Date;

.field private hashtagEntities:[Ltwitter4j/HashtagEntity;

.field private id:J

.field private mediaEntities:[Ltwitter4j/MediaEntity;

.field private recipient:Ltwitter4j/User;

.field private recipientId:J

.field private recipientScreenName:Ljava/lang/String;

.field private sender:Ltwitter4j/User;

.field private senderId:J

.field private senderScreenName:Ljava/lang/String;

.field private symbolEntities:[Ltwitter4j/SymbolEntity;

.field private text:Ljava/lang/String;

.field private urlEntities:[Ltwitter4j/URLEntity;

.field private userMentionEntities:[Ltwitter4j/UserMentionEntity;


# direct methods
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
    .line 46
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/HttpResponse;)V

    .line 47
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object v0

    .line 48
    .local v0, "json":Ltwitter4j/JSONObject;
    invoke-direct {p0, v0}, Ltwitter4j/DirectMessageJSONImpl;->init(Ltwitter4j/JSONObject;)V

    .line 49
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 50
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 51
    invoke-static {p0, v0}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_16
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
    .line 55
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 56
    invoke-direct {p0, p1}, Ltwitter4j/DirectMessageJSONImpl;->init(Ltwitter4j/JSONObject;)V

    .line 57
    return-void
.end method

.method static createDirectMessageList(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
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
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 249
    :try_start_0
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 250
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 252
    :cond_9
    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->asJSONArray()Ltwitter4j/JSONArray;

    move-result-object v5

    .line 253
    .local v5, "list":Ltwitter4j/JSONArray;
    invoke-virtual {v5}, Ltwitter4j/JSONArray;->length()I

    move-result v6

    .line 254
    .local v6, "size":I
    new-instance v1, Ltwitter4j/ResponseListImpl;

    invoke-direct {v1, v6, p0}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/HttpResponse;)V

    .line 255
    .local v1, "directMessages":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/DirectMessage;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    if-ge v2, v6, :cond_31

    .line 256
    invoke-virtual {v5, v2}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v3

    .line 257
    .local v3, "json":Ltwitter4j/JSONObject;
    new-instance v0, Ltwitter4j/DirectMessageJSONImpl;

    invoke-direct {v0, v3}, Ltwitter4j/DirectMessageJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    .line 258
    .local v0, "directMessage":Ltwitter4j/DirectMessage;
    invoke-interface {v1, v0}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 260
    invoke-static {v0, v3}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 263
    .end local v0    # "directMessage":Ltwitter4j/DirectMessage;
    .end local v3    # "json":Ltwitter4j/JSONObject;
    :cond_31
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 264
    invoke-static {v1, v5}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_3a} :catch_3b

    .line 266
    :cond_3a
    return-object v1

    .line 267
    .end local v1    # "directMessages":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/DirectMessage;>;"
    .end local v2    # "i":I
    .end local v5    # "list":Ltwitter4j/JSONArray;
    .end local v6    # "size":I
    :catch_3b
    move-exception v4

    .line 268
    .local v4, "jsone":Ltwitter4j/JSONException;
    new-instance v7, Ltwitter4j/TwitterException;

    invoke-direct {v7, v4}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v7
.end method

.method private init(Ltwitter4j/JSONObject;)V
    .registers 16
    .param p1, "json"    # Ltwitter4j/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 60
    const-string v9, "id"

    invoke-static {v9, p1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v10

    iput-wide v10, p0, Ltwitter4j/DirectMessageJSONImpl;->id:J

    .line 61
    const-string v9, "sender_id"

    invoke-static {v9, p1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v10

    iput-wide v10, p0, Ltwitter4j/DirectMessageJSONImpl;->senderId:J

    .line 62
    const-string v9, "recipient_id"

    invoke-static {v9, p1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v10

    iput-wide v10, p0, Ltwitter4j/DirectMessageJSONImpl;->recipientId:J

    .line 63
    const-string v9, "created_at"

    invoke-static {v9, p1}, Ltwitter4j/ParseUtil;->getDate(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/util/Date;

    move-result-object v9

    iput-object v9, p0, Ltwitter4j/DirectMessageJSONImpl;->createdAt:Ljava/util/Date;

    .line 64
    const-string v9, "sender_screen_name"

    invoke-static {v9, p1}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Ltwitter4j/DirectMessageJSONImpl;->senderScreenName:Ljava/lang/String;

    .line 65
    const-string v9, "recipient_screen_name"

    invoke-static {v9, p1}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Ltwitter4j/DirectMessageJSONImpl;->recipientScreenName:Ljava/lang/String;

    .line 67
    :try_start_30
    new-instance v9, Ltwitter4j/UserJSONImpl;

    const-string v10, "sender"

    invoke-virtual {p1, v10}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v10

    invoke-direct {v9, v10}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    iput-object v9, p0, Ltwitter4j/DirectMessageJSONImpl;->sender:Ltwitter4j/User;

    .line 68
    new-instance v9, Ltwitter4j/UserJSONImpl;

    const-string v10, "recipient"

    invoke-virtual {p1, v10}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v10

    invoke-direct {v9, v10}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    iput-object v9, p0, Ltwitter4j/DirectMessageJSONImpl;->recipient:Ltwitter4j/User;

    .line 69
    const-string v9, "entities"

    invoke-virtual {p1, v9}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_125

    .line 70
    const-string v9, "entities"

    invoke-virtual {p1, v9}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v0

    .line 72
    .local v0, "entities":Ltwitter4j/JSONObject;
    const-string v9, "user_mentions"

    invoke-virtual {v0, v9}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_81

    .line 73
    const-string v9, "user_mentions"

    invoke-virtual {v0, v9}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v8

    .line 74
    .local v8, "userMentionsArray":Ltwitter4j/JSONArray;
    invoke-virtual {v8}, Ltwitter4j/JSONArray;->length()I

    move-result v4

    .line 75
    .local v4, "len":I
    new-array v9, v4, [Ltwitter4j/UserMentionEntity;

    iput-object v9, p0, Ltwitter4j/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    .line 76
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6f
    if-ge v2, v4, :cond_81

    .line 77
    iget-object v9, p0, Ltwitter4j/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    new-instance v10, Ltwitter4j/UserMentionEntityJSONImpl;

    invoke-virtual {v8, v2}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v11

    invoke-direct {v10, v11}, Ltwitter4j/UserMentionEntityJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    aput-object v10, v9, v2

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_6f

    .line 81
    .end local v2    # "i":I
    .end local v4    # "len":I
    .end local v8    # "userMentionsArray":Ltwitter4j/JSONArray;
    :cond_81
    const-string v9, "urls"

    invoke-virtual {v0, v9}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_aa

    .line 82
    const-string v9, "urls"

    invoke-virtual {v0, v9}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v7

    .line 83
    .local v7, "urlsArray":Ltwitter4j/JSONArray;
    invoke-virtual {v7}, Ltwitter4j/JSONArray;->length()I

    move-result v4

    .line 84
    .restart local v4    # "len":I
    new-array v9, v4, [Ltwitter4j/URLEntity;

    iput-object v9, p0, Ltwitter4j/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    .line 85
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_98
    if-ge v2, v4, :cond_aa

    .line 86
    iget-object v9, p0, Ltwitter4j/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    new-instance v10, Ltwitter4j/URLEntityJSONImpl;

    invoke-virtual {v7, v2}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v11

    invoke-direct {v10, v11}, Ltwitter4j/URLEntityJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    aput-object v10, v9, v2

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_98

    .line 90
    .end local v2    # "i":I
    .end local v4    # "len":I
    .end local v7    # "urlsArray":Ltwitter4j/JSONArray;
    :cond_aa
    const-string v9, "hashtags"

    invoke-virtual {v0, v9}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d3

    .line 91
    const-string v9, "hashtags"

    invoke-virtual {v0, v9}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v1

    .line 92
    .local v1, "hashtagsArray":Ltwitter4j/JSONArray;
    invoke-virtual {v1}, Ltwitter4j/JSONArray;->length()I

    move-result v4

    .line 93
    .restart local v4    # "len":I
    new-array v9, v4, [Ltwitter4j/HashtagEntity;

    iput-object v9, p0, Ltwitter4j/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    .line 94
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_c1
    if-ge v2, v4, :cond_d3

    .line 95
    iget-object v9, p0, Ltwitter4j/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    new-instance v10, Ltwitter4j/HashtagEntityJSONImpl;

    invoke-virtual {v1, v2}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v11

    invoke-direct {v10, v11}, Ltwitter4j/HashtagEntityJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    aput-object v10, v9, v2

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_c1

    .line 99
    .end local v1    # "hashtagsArray":Ltwitter4j/JSONArray;
    .end local v2    # "i":I
    .end local v4    # "len":I
    :cond_d3
    const-string v9, "symbols"

    invoke-virtual {v0, v9}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_fc

    .line 100
    const-string v9, "symbols"

    invoke-virtual {v0, v9}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v6

    .line 101
    .local v6, "symbolsArray":Ltwitter4j/JSONArray;
    invoke-virtual {v6}, Ltwitter4j/JSONArray;->length()I

    move-result v4

    .line 102
    .restart local v4    # "len":I
    new-array v9, v4, [Ltwitter4j/SymbolEntity;

    iput-object v9, p0, Ltwitter4j/DirectMessageJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    .line 103
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_ea
    if-ge v2, v4, :cond_fc

    .line 105
    iget-object v9, p0, Ltwitter4j/DirectMessageJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    new-instance v10, Ltwitter4j/HashtagEntityJSONImpl;

    invoke-virtual {v6, v2}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v11

    invoke-direct {v10, v11}, Ltwitter4j/HashtagEntityJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    aput-object v10, v9, v2

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_ea

    .line 109
    .end local v2    # "i":I
    .end local v4    # "len":I
    .end local v6    # "symbolsArray":Ltwitter4j/JSONArray;
    :cond_fc
    const-string v9, "media"

    invoke-virtual {v0, v9}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_125

    .line 110
    const-string v9, "media"

    invoke-virtual {v0, v9}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v5

    .line 111
    .local v5, "mediaArray":Ltwitter4j/JSONArray;
    invoke-virtual {v5}, Ltwitter4j/JSONArray;->length()I

    move-result v4

    .line 112
    .restart local v4    # "len":I
    new-array v9, v4, [Ltwitter4j/MediaEntity;

    iput-object v9, p0, Ltwitter4j/DirectMessageJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    .line 113
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_113
    if-ge v2, v4, :cond_125

    .line 114
    iget-object v9, p0, Ltwitter4j/DirectMessageJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    new-instance v10, Ltwitter4j/MediaEntityJSONImpl;

    invoke-virtual {v5, v2}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v11

    invoke-direct {v10, v11}, Ltwitter4j/MediaEntityJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    aput-object v10, v9, v2

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_113

    .line 118
    .end local v0    # "entities":Ltwitter4j/JSONObject;
    .end local v2    # "i":I
    .end local v4    # "len":I
    .end local v5    # "mediaArray":Ltwitter4j/JSONArray;
    :cond_125
    iget-object v9, p0, Ltwitter4j/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    if-nez v9, :cond_167

    const/4 v9, 0x0

    new-array v9, v9, [Ltwitter4j/UserMentionEntity;

    :goto_12c
    iput-object v9, p0, Ltwitter4j/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    .line 119
    iget-object v9, p0, Ltwitter4j/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    if-nez v9, :cond_16a

    const/4 v9, 0x0

    new-array v9, v9, [Ltwitter4j/URLEntity;

    :goto_135
    iput-object v9, p0, Ltwitter4j/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    .line 120
    iget-object v9, p0, Ltwitter4j/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    if-nez v9, :cond_16d

    const/4 v9, 0x0

    new-array v9, v9, [Ltwitter4j/HashtagEntity;

    :goto_13e
    iput-object v9, p0, Ltwitter4j/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    .line 121
    iget-object v9, p0, Ltwitter4j/DirectMessageJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    if-nez v9, :cond_170

    const/4 v9, 0x0

    new-array v9, v9, [Ltwitter4j/SymbolEntity;

    :goto_147
    iput-object v9, p0, Ltwitter4j/DirectMessageJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    .line 122
    iget-object v9, p0, Ltwitter4j/DirectMessageJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    if-nez v9, :cond_173

    const/4 v9, 0x0

    new-array v9, v9, [Ltwitter4j/MediaEntity;

    :goto_150
    iput-object v9, p0, Ltwitter4j/DirectMessageJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    .line 123
    const-string v9, "text"

    invoke-virtual {p1, v9}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Ltwitter4j/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    iget-object v11, p0, Ltwitter4j/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    iget-object v12, p0, Ltwitter4j/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    iget-object v13, p0, Ltwitter4j/DirectMessageJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    invoke-static {v9, v10, v11, v12, v13}, Ltwitter4j/HTMLEntity;->unescapeAndSlideEntityIncdices(Ljava/lang/String;[Ltwitter4j/UserMentionEntity;[Ltwitter4j/URLEntity;[Ltwitter4j/HashtagEntity;[Ltwitter4j/MediaEntity;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Ltwitter4j/DirectMessageJSONImpl;->text:Ljava/lang/String;

    .line 128
    return-void

    .line 118
    :cond_167
    iget-object v9, p0, Ltwitter4j/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    goto :goto_12c

    .line 119
    :cond_16a
    iget-object v9, p0, Ltwitter4j/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    goto :goto_135

    .line 120
    :cond_16d
    iget-object v9, p0, Ltwitter4j/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    goto :goto_13e

    .line 121
    :cond_170
    iget-object v9, p0, Ltwitter4j/DirectMessageJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    goto :goto_147

    .line 122
    :cond_173
    iget-object v9, p0, Ltwitter4j/DirectMessageJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;
    :try_end_175
    .catch Ltwitter4j/JSONException; {:try_start_30 .. :try_end_175} :catch_176

    goto :goto_150

    .line 125
    :catch_176
    move-exception v3

    .line 126
    .local v3, "jsone":Ltwitter4j/JSONException;
    new-instance v9, Ltwitter4j/TwitterException;

    invoke-direct {v9, v3}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v9
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 279
    if-nez p1, :cond_6

    move v0, v1

    .line 285
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_5
    :goto_5
    return v0

    .line 282
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_6
    if-eq p0, p1, :cond_5

    .line 285
    instance-of v2, p1, Ltwitter4j/DirectMessage;

    if-eqz v2, :cond_18

    check-cast p1, Ltwitter4j/DirectMessage;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {p1}, Ltwitter4j/DirectMessage;->getId()J

    move-result-wide v2

    iget-wide v4, p0, Ltwitter4j/DirectMessageJSONImpl;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    :cond_18
    move v0, v1

    goto :goto_5
.end method

.method public getCreatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getHashtagEntities()[Ltwitter4j/HashtagEntity;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 135
    iget-wide v0, p0, Ltwitter4j/DirectMessageJSONImpl;->id:J

    return-wide v0
.end method

.method public getMediaEntities()[Ltwitter4j/MediaEntity;
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    return-object v0
.end method

.method public getRecipient()Ltwitter4j/User;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->recipient:Ltwitter4j/User;

    return-object v0
.end method

.method public getRecipientId()J
    .registers 3

    .prologue
    .line 159
    iget-wide v0, p0, Ltwitter4j/DirectMessageJSONImpl;->recipientId:J

    return-wide v0
.end method

.method public getRecipientScreenName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->recipientScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public getSender()Ltwitter4j/User;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->sender:Ltwitter4j/User;

    return-object v0
.end method

.method public getSenderId()J
    .registers 3

    .prologue
    .line 151
    iget-wide v0, p0, Ltwitter4j/DirectMessageJSONImpl;->senderId:J

    return-wide v0
.end method

.method public getSenderScreenName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->senderScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbolEntities()[Ltwitter4j/SymbolEntity;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getURLEntities()[Ltwitter4j/URLEntity;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    return-object v0
.end method

.method public getUserMentionEntities()[Ltwitter4j/UserMentionEntity;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 274
    iget-wide v0, p0, Ltwitter4j/DirectMessageJSONImpl;->id:J

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0x27

    const/4 v1, 0x0

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DirectMessageJSONImpl{id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/DirectMessageJSONImpl;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", text=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/DirectMessageJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", sender_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/DirectMessageJSONImpl;->senderId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", recipient_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/DirectMessageJSONImpl;->recipientId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", created_at="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/DirectMessageJSONImpl;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", userMentionEntities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    if-nez v0, :cond_e4

    move-object v0, v1

    .line 296
    :goto_53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", urlEntities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    if-nez v0, :cond_ec

    move-object v0, v1

    .line 297
    :goto_62
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", hashtagEntities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    if-nez v0, :cond_f4

    move-object v0, v1

    .line 298
    :goto_71
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", sender_screen_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/DirectMessageJSONImpl;->senderScreenName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", recipient_screen_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/DirectMessageJSONImpl;->recipientScreenName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", sender="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/DirectMessageJSONImpl;->sender:Ltwitter4j/User;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", recipient="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/DirectMessageJSONImpl;->recipient:Ltwitter4j/User;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", userMentionEntities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    if-nez v0, :cond_fc

    move-object v0, v1

    .line 303
    :goto_b8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", urlEntities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    if-nez v0, :cond_103

    move-object v0, v1

    .line 304
    :goto_c7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", hashtagEntities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    if-nez v2, :cond_10a

    .line 305
    :goto_d5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 290
    :cond_e4
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    .line 296
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_53

    :cond_ec
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    .line 297
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_62

    :cond_f4
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    .line 298
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_71

    :cond_fc
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    .line 303
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_b8

    :cond_103
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    .line 304
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_c7

    :cond_10a
    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    .line 305
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_d5
.end method
