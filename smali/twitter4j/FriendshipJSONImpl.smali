.class Ltwitter4j/FriendshipJSONImpl;
.super Ljava/lang/Object;
.source "FriendshipJSONImpl.java"

# interfaces
.implements Ltwitter4j/Friendship;


# static fields
.field private static final serialVersionUID:J = 0x5f0666af66c839c2L


# instance fields
.field private followedBy:Z

.field private following:Z

.field private final id:J

.field private final name:Ljava/lang/String;

.field private final screenName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/JSONObject;)V
    .registers 9
    .param p1, "json"    # Ltwitter4j/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v4, p0, Ltwitter4j/FriendshipJSONImpl;->following:Z

    .line 31
    iput-boolean v4, p0, Ltwitter4j/FriendshipJSONImpl;->followedBy:Z

    .line 36
    :try_start_8
    const-string v4, "id"

    invoke-static {v4, p1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v4

    iput-wide v4, p0, Ltwitter4j/FriendshipJSONImpl;->id:J

    .line 37
    const-string v4, "name"

    invoke-virtual {p1, v4}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ltwitter4j/FriendshipJSONImpl;->name:Ljava/lang/String;

    .line 38
    const-string v4, "screen_name"

    invoke-virtual {p1, v4}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ltwitter4j/FriendshipJSONImpl;->screenName:Ljava/lang/String;

    .line 39
    const-string v4, "connections"

    invoke-virtual {p1, v4}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v1

    .line 40
    .local v1, "connections":Ltwitter4j/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_27
    invoke-virtual {v1}, Ltwitter4j/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_71

    .line 41
    invoke-virtual {v1, v2}, Ltwitter4j/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "connection":Ljava/lang/String;
    const-string v4, "following"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 43
    const/4 v4, 0x1

    iput-boolean v4, p0, Ltwitter4j/FriendshipJSONImpl;->following:Z

    .line 40
    :cond_3c
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 44
    :cond_3f
    const-string v4, "followed_by"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 45
    const/4 v4, 0x1

    iput-boolean v4, p0, Ltwitter4j/FriendshipJSONImpl;->followedBy:Z
    :try_end_4a
    .catch Ltwitter4j/JSONException; {:try_start_8 .. :try_end_4a} :catch_4b

    goto :goto_3c

    .line 48
    .end local v0    # "connection":Ljava/lang/String;
    .end local v1    # "connections":Ltwitter4j/JSONArray;
    .end local v2    # "i":I
    :catch_4b
    move-exception v3

    .line 49
    .local v3, "jsone":Ltwitter4j/JSONException;
    new-instance v4, Ltwitter4j/TwitterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ltwitter4j/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ltwitter4j/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 51
    .end local v3    # "jsone":Ltwitter4j/JSONException;
    .restart local v1    # "connections":Ltwitter4j/JSONArray;
    .restart local v2    # "i":I
    :cond_71
    return-void
.end method

.method static createFriendshipList(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
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
            "Ltwitter4j/Friendship;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 56
    :try_start_0
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 57
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 59
    :cond_9
    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->asJSONArray()Ltwitter4j/JSONArray;

    move-result-object v5

    .line 60
    .local v5, "list":Ltwitter4j/JSONArray;
    invoke-virtual {v5}, Ltwitter4j/JSONArray;->length()I

    move-result v6

    .line 61
    .local v6, "size":I
    new-instance v1, Ltwitter4j/ResponseListImpl;

    invoke-direct {v1, v6, p0}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/HttpResponse;)V

    .line 62
    .local v1, "friendshipList":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Friendship;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    if-ge v2, v6, :cond_31

    .line 63
    invoke-virtual {v5, v2}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v3

    .line 64
    .local v3, "json":Ltwitter4j/JSONObject;
    new-instance v0, Ltwitter4j/FriendshipJSONImpl;

    invoke-direct {v0, v3}, Ltwitter4j/FriendshipJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    .line 65
    .local v0, "friendship":Ltwitter4j/Friendship;
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 66
    invoke-static {v0, v3}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_2b
    invoke-interface {v1, v0}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 70
    .end local v0    # "friendship":Ltwitter4j/Friendship;
    .end local v3    # "json":Ltwitter4j/JSONObject;
    :cond_31
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 71
    invoke-static {v1, v5}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_3a} :catch_3b

    .line 73
    :cond_3a
    return-object v1

    .line 74
    .end local v1    # "friendshipList":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Friendship;>;"
    .end local v2    # "i":I
    .end local v5    # "list":Ltwitter4j/JSONArray;
    .end local v6    # "size":I
    :catch_3b
    move-exception v4

    .line 75
    .local v4, "jsone":Ltwitter4j/JSONException;
    new-instance v7, Ltwitter4j/TwitterException;

    invoke-direct {v7, v4}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v7
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    if-ne p0, p1, :cond_5

    .line 117
    :cond_4
    :goto_4
    return v1

    .line 107
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

    .line 109
    check-cast v0, Ltwitter4j/FriendshipJSONImpl;

    .line 111
    .local v0, "that":Ltwitter4j/FriendshipJSONImpl;
    iget-boolean v3, p0, Ltwitter4j/FriendshipJSONImpl;->followedBy:Z

    iget-boolean v4, v0, Ltwitter4j/FriendshipJSONImpl;->followedBy:Z

    if-eq v3, v4, :cond_1e

    move v1, v2

    goto :goto_4

    .line 112
    :cond_1e
    iget-boolean v3, p0, Ltwitter4j/FriendshipJSONImpl;->following:Z

    iget-boolean v4, v0, Ltwitter4j/FriendshipJSONImpl;->following:Z

    if-eq v3, v4, :cond_26

    move v1, v2

    goto :goto_4

    .line 113
    :cond_26
    iget-wide v4, p0, Ltwitter4j/FriendshipJSONImpl;->id:J

    iget-wide v6, v0, Ltwitter4j/FriendshipJSONImpl;->id:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_30

    move v1, v2

    goto :goto_4

    .line 114
    :cond_30
    iget-object v3, p0, Ltwitter4j/FriendshipJSONImpl;->name:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/FriendshipJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    move v1, v2

    goto :goto_4

    .line 115
    :cond_3c
    iget-object v3, p0, Ltwitter4j/FriendshipJSONImpl;->screenName:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/FriendshipJSONImpl;->screenName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 81
    iget-wide v0, p0, Ltwitter4j/FriendshipJSONImpl;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Ltwitter4j/FriendshipJSONImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Ltwitter4j/FriendshipJSONImpl;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 122
    iget-wide v4, p0, Ltwitter4j/FriendshipJSONImpl;->id:J

    iget-wide v6, p0, Ltwitter4j/FriendshipJSONImpl;->id:J

    const/16 v1, 0x20

    ushr-long/2addr v6, v1

    xor-long/2addr v4, v6

    long-to-int v0, v4

    .line 123
    .local v0, "result":I
    mul-int/lit8 v4, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/FriendshipJSONImpl;->name:Ljava/lang/String;

    if-eqz v1, :cond_39

    iget-object v1, p0, Ltwitter4j/FriendshipJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_17
    add-int v0, v4, v1

    .line 124
    mul-int/lit8 v4, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/FriendshipJSONImpl;->screenName:Ljava/lang/String;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Ltwitter4j/FriendshipJSONImpl;->screenName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_25
    add-int v0, v4, v1

    .line 125
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Ltwitter4j/FriendshipJSONImpl;->following:Z

    if-eqz v1, :cond_3d

    move v1, v3

    :goto_2e
    add-int v0, v4, v1

    .line 126
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Ltwitter4j/FriendshipJSONImpl;->followedBy:Z

    if-eqz v4, :cond_3f

    :goto_36
    add-int v0, v1, v3

    .line 127
    return v0

    :cond_39
    move v1, v2

    .line 123
    goto :goto_17

    :cond_3b
    move v1, v2

    .line 124
    goto :goto_25

    :cond_3d
    move v1, v2

    .line 125
    goto :goto_2e

    :cond_3f
    move v3, v2

    .line 126
    goto :goto_36
.end method

.method public isFollowedBy()Z
    .registers 2

    .prologue
    .line 101
    iget-boolean v0, p0, Ltwitter4j/FriendshipJSONImpl;->followedBy:Z

    return v0
.end method

.method public isFollowing()Z
    .registers 2

    .prologue
    .line 96
    iget-boolean v0, p0, Ltwitter4j/FriendshipJSONImpl;->following:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0x27

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FriendshipJSONImpl{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/FriendshipJSONImpl;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/FriendshipJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screenName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/FriendshipJSONImpl;->screenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", following="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/FriendshipJSONImpl;->following:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", followedBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/FriendshipJSONImpl;->followedBy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
