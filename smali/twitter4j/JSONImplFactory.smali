.class Ltwitter4j/JSONImplFactory;
.super Ljava/lang/Object;
.source "JSONImplFactory.java"

# interfaces
.implements Ltwitter4j/ObjectFactory;


# static fields
.field private static final serialVersionUID:J = -0x19b91a22483a58afL


# instance fields
.field private final conf:Ltwitter4j/conf/Configuration;


# direct methods
.method public constructor <init>(Ltwitter4j/conf/Configuration;)V
    .registers 2
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    .line 34
    return-void
.end method

.method static coordinatesAsGeoLocationArray(Ltwitter4j/JSONArray;)[[Ltwitter4j/GeoLocation;
    .registers 13
    .param p0, "coordinates"    # Ltwitter4j/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 94
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/JSONArray;->length()I

    move-result v6

    new-array v1, v6, [[Ltwitter4j/GeoLocation;

    .line 95
    .local v1, "boundingBox":[[Ltwitter4j/GeoLocation;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    invoke-virtual {p0}, Ltwitter4j/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_44

    .line 96
    invoke-virtual {p0, v3}, Ltwitter4j/JSONArray;->getJSONArray(I)Ltwitter4j/JSONArray;

    move-result-object v0

    .line 97
    .local v0, "array":Ltwitter4j/JSONArray;
    invoke-virtual {v0}, Ltwitter4j/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [Ltwitter4j/GeoLocation;

    aput-object v6, v1, v3

    .line 98
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1a
    invoke-virtual {v0}, Ltwitter4j/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_3a

    .line 99
    invoke-virtual {v0, v4}, Ltwitter4j/JSONArray;->getJSONArray(I)Ltwitter4j/JSONArray;

    move-result-object v2

    .line 100
    .local v2, "coordinate":Ltwitter4j/JSONArray;
    aget-object v6, v1, v3

    new-instance v7, Ltwitter4j/GeoLocation;

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ltwitter4j/JSONArray;->getDouble(I)D

    move-result-wide v8

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ltwitter4j/JSONArray;->getDouble(I)D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Ltwitter4j/GeoLocation;-><init>(DD)V

    aput-object v7, v6, v4
    :try_end_37
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_37} :catch_3d

    .line 98
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 95
    .end local v2    # "coordinate":Ltwitter4j/JSONArray;
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 104
    .end local v0    # "array":Ltwitter4j/JSONArray;
    .end local v1    # "boundingBox":[[Ltwitter4j/GeoLocation;
    .end local v3    # "i":I
    .end local v4    # "j":I
    :catch_3d
    move-exception v5

    .line 105
    .local v5, "jsone":Ltwitter4j/JSONException;
    new-instance v6, Ltwitter4j/TwitterException;

    invoke-direct {v6, v5}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 103
    .end local v5    # "jsone":Ltwitter4j/JSONException;
    .restart local v1    # "boundingBox":[[Ltwitter4j/GeoLocation;
    .restart local v3    # "i":I
    :cond_44
    return-object v1
.end method

.method static createGeoLocation(Ltwitter4j/JSONObject;)Ltwitter4j/GeoLocation;
    .registers 9
    .param p0, "json"    # Ltwitter4j/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 77
    :try_start_0
    const-string v3, "coordinates"

    invoke-virtual {p0, v3}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 78
    const-string v3, "coordinates"

    invoke-virtual {p0, v3}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v3

    const-string v4, "coordinates"

    .line 79
    invoke-virtual {v3, v4}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "coordinates":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 81
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "point":[Ljava/lang/String;
    new-instance v3, Ltwitter4j/GeoLocation;

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 v6, 0x0

    aget-object v6, v2, v6

    .line 83
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Ltwitter4j/GeoLocation;-><init>(DD)V
    :try_end_38
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_38} :catch_39

    .line 88
    .end local v0    # "coordinates":Ljava/lang/String;
    .end local v2    # "point":[Ljava/lang/String;
    :goto_38
    return-object v3

    .line 85
    :catch_39
    move-exception v1

    .line 86
    .local v1, "jsone":Ltwitter4j/JSONException;
    new-instance v3, Ltwitter4j/TwitterException;

    invoke-direct {v3, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 88
    .end local v1    # "jsone":Ltwitter4j/JSONException;
    :cond_40
    const/4 v3, 0x0

    goto :goto_38
.end method

.method public static createHashtagEntity(IILjava/lang/String;)Ltwitter4j/HashtagEntity;
    .registers 4
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 280
    new-instance v0, Ltwitter4j/HashtagEntityJSONImpl;

    invoke-direct {v0, p0, p1, p2}, Ltwitter4j/HashtagEntityJSONImpl;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public static createRateLimitStatusFromResponseHeader(Ltwitter4j/HttpResponse;)Ltwitter4j/RateLimitStatus;
    .registers 2
    .param p0, "res"    # Ltwitter4j/HttpResponse;

    .prologue
    .line 110
    invoke-static {p0}, Ltwitter4j/RateLimitStatusJSONImpl;->createFromResponseHeader(Ltwitter4j/HttpResponse;)Ltwitter4j/RateLimitStatus;

    move-result-object v0

    return-object v0
.end method

.method public static createUrlEntity(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/URLEntity;
    .registers 11
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "expandedURL"    # Ljava/lang/String;
    .param p4, "displayURL"    # Ljava/lang/String;

    .prologue
    .line 301
    new-instance v0, Ltwitter4j/URLEntityJSONImpl;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ltwitter4j/URLEntityJSONImpl;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createUserMentionEntity(IILjava/lang/String;Ljava/lang/String;J)Ltwitter4j/UserMentionEntity;
    .registers 14
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "screenName"    # Ljava/lang/String;
    .param p4, "id"    # J

    .prologue
    .line 291
    new-instance v1, Ltwitter4j/UserMentionEntityJSONImpl;

    move v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Ltwitter4j/UserMentionEntityJSONImpl;-><init>(IILjava/lang/String;Ljava/lang/String;J)V

    return-object v1
.end method


# virtual methods
.method public createAUserList(Ltwitter4j/HttpResponse;)Ltwitter4j/UserList;
    .registers 4
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 167
    new-instance v0, Ltwitter4j/UserListJSONImpl;

    iget-object v1, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, p1, v1}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createAUserList(Ltwitter4j/JSONObject;)Ltwitter4j/UserList;
    .registers 3
    .param p1, "json"    # Ltwitter4j/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Ltwitter4j/UserListJSONImpl;

    invoke-direct {v0, p1}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    return-object v0
.end method

.method public createAccountSettings(Ltwitter4j/HttpResponse;)Ltwitter4j/AccountSettings;
    .registers 4
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 212
    new-instance v0, Ltwitter4j/AccountSettingsJSONImpl;

    iget-object v1, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, p1, v1}, Ltwitter4j/AccountSettingsJSONImpl;-><init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createAccountTotals(Ltwitter4j/HttpResponse;)Ltwitter4j/AccountTotals;
    .registers 4
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 207
    new-instance v0, Ltwitter4j/AccountTotalsJSONImpl;

    iget-object v1, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, p1, v1}, Ltwitter4j/AccountTotalsJSONImpl;-><init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createCategoryList(Ltwitter4j/HttpResponse;)Ltwitter4j/ResponseList;
    .registers 3
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Category;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {p1, v0}, Ltwitter4j/CategoryJSONImpl;->createCategoriesList(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public createDirectMessage(Ltwitter4j/HttpResponse;)Ltwitter4j/DirectMessage;
    .registers 4
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 187
    new-instance v0, Ltwitter4j/DirectMessageJSONImpl;

    iget-object v1, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, p1, v1}, Ltwitter4j/DirectMessageJSONImpl;-><init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createDirectMessageList(Ltwitter4j/HttpResponse;)Ltwitter4j/ResponseList;
    .registers 3
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/HttpResponse;",
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
    .line 192
    iget-object v0, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {p1, v0}, Ltwitter4j/DirectMessageJSONImpl;->createDirectMessageList(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public createEmptyResponseList()Ltwitter4j/ResponseList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ltwitter4j/ResponseList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 265
    new-instance v0, Ltwitter4j/ResponseListImpl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/HttpResponse;)V

    return-object v0
.end method

.method public createFriendshipList(Ltwitter4j/HttpResponse;)Ltwitter4j/ResponseList;
    .registers 3
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/HttpResponse;",
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
    .line 202
    iget-object v0, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {p1, v0}, Ltwitter4j/FriendshipJSONImpl;->createFriendshipList(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public createIDs(Ltwitter4j/HttpResponse;)Ltwitter4j/IDs;
    .registers 4
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Ltwitter4j/IDsJSONImpl;

    iget-object v1, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, p1, v1}, Ltwitter4j/IDsJSONImpl;-><init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createLanguageList(Ltwitter4j/HttpResponse;)Ltwitter4j/ResponseList;
    .registers 3
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/api/HelpResources$Language;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {p1, v0}, Ltwitter4j/LanguageJSONImpl;->createLanguageList(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public createLocationList(Ltwitter4j/HttpResponse;)Ltwitter4j/ResponseList;
    .registers 3
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Location;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {p1, v0}, Ltwitter4j/LocationJSONImpl;->createLocationList(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public createOEmbed(Ltwitter4j/HttpResponse;)Ltwitter4j/OEmbed;
    .registers 4
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 270
    new-instance v0, Ltwitter4j/OEmbedJSONImpl;

    iget-object v1, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, p1, v1}, Ltwitter4j/OEmbedJSONImpl;-><init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createPagableUserList(Ltwitter4j/HttpResponse;)Ltwitter4j/PagableResponseList;
    .registers 3
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/HttpResponse;",
            ")",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {p1, v0}, Ltwitter4j/UserJSONImpl;->createPagableUserList(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public createPagableUserListList(Ltwitter4j/HttpResponse;)Ltwitter4j/PagableResponseList;
    .registers 3
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/HttpResponse;",
            ")",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {p1, v0}, Ltwitter4j/UserListJSONImpl;->createPagableUserListList(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public createPlace(Ltwitter4j/HttpResponse;)Ltwitter4j/Place;
    .registers 4
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 232
    new-instance v0, Ltwitter4j/PlaceJSONImpl;

    iget-object v1, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, p1, v1}, Ltwitter4j/PlaceJSONImpl;-><init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createPlaceList(Ltwitter4j/HttpResponse;)Ltwitter4j/ResponseList;
    .registers 6
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Place;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 238
    :try_start_0
    iget-object v1, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {p1, v1}, Ltwitter4j/PlaceJSONImpl;->createPlaceList(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    :try_end_5
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 241
    :goto_6
    return-object v1

    .line 239
    :catch_7
    move-exception v0

    .line 240
    .local v0, "te":Ltwitter4j/TwitterException;
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x194

    if-ne v1, v2, :cond_18

    .line 241
    new-instance v1, Ltwitter4j/ResponseListImpl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/HttpResponse;)V

    goto :goto_6

    .line 243
    :cond_18
    throw v0
.end method

.method public createQueryResult(Ltwitter4j/HttpResponse;Ltwitter4j/Query;)Ltwitter4j/QueryResult;
    .registers 6
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .param p2, "query"    # Ltwitter4j/Query;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 145
    :try_start_0
    new-instance v1, Ltwitter4j/QueryResultJSONImpl;

    iget-object v2, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v1, p1, v2}, Ltwitter4j/QueryResultJSONImpl;-><init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V
    :try_end_7
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_7} :catch_8

    .line 148
    :goto_7
    return-object v1

    .line 146
    :catch_8
    move-exception v0

    .line 147
    .local v0, "te":Ltwitter4j/TwitterException;
    const/16 v1, 0x194

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v2

    if-ne v1, v2, :cond_17

    .line 148
    new-instance v1, Ltwitter4j/QueryResultJSONImpl;

    invoke-direct {v1, p2}, Ltwitter4j/QueryResultJSONImpl;-><init>(Ltwitter4j/Query;)V

    goto :goto_7

    .line 150
    :cond_17
    throw v0
.end method

.method public createRateLimitStatuses(Ltwitter4j/HttpResponse;)Ljava/util/Map;
    .registers 3
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/HttpResponse;",
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
    .line 54
    iget-object v0, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {p1, v0}, Ltwitter4j/RateLimitStatusJSONImpl;->createRateLimitStatuses(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public createRelationship(Ltwitter4j/HttpResponse;)Ltwitter4j/Relationship;
    .registers 4
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Ltwitter4j/RelationshipJSONImpl;

    iget-object v1, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, p1, v1}, Ltwitter4j/RelationshipJSONImpl;-><init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createSavedSearch(Ltwitter4j/HttpResponse;)Ltwitter4j/SavedSearch;
    .registers 4
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 217
    new-instance v0, Ltwitter4j/SavedSearchJSONImpl;

    iget-object v1, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, p1, v1}, Ltwitter4j/SavedSearchJSONImpl;-><init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createSavedSearchList(Ltwitter4j/HttpResponse;)Ltwitter4j/ResponseList;
    .registers 3
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/SavedSearch;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {p1, v0}, Ltwitter4j/SavedSearchJSONImpl;->createSavedSearchList(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public createSimilarPlaces(Ltwitter4j/HttpResponse;)Ltwitter4j/SimilarPlaces;
    .registers 3
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {p1, v0}, Ltwitter4j/SimilarPlacesImpl;->createSimilarPlaces(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/SimilarPlaces;

    move-result-object v0

    return-object v0
.end method

.method public createStatus(Ltwitter4j/HttpResponse;)Ltwitter4j/Status;
    .registers 4
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Ltwitter4j/StatusJSONImpl;

    iget-object v1, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, p1, v1}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createStatus(Ltwitter4j/JSONObject;)Ltwitter4j/Status;
    .registers 3
    .param p1, "json"    # Ltwitter4j/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Ltwitter4j/StatusJSONImpl;

    invoke-direct {v0, p1}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    return-object v0
.end method

.method public createStatusList(Ltwitter4j/HttpResponse;)Ltwitter4j/ResponseList;
    .registers 3
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/HttpResponse;",
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
    .line 64
    iget-object v0, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {p1, v0}, Ltwitter4j/StatusJSONImpl;->createStatusList(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public createTrends(Ltwitter4j/HttpResponse;)Ltwitter4j/Trends;
    .registers 4
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Ltwitter4j/TrendsJSONImpl;

    iget-object v1, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, p1, v1}, Ltwitter4j/TrendsJSONImpl;-><init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createTwitterAPIConfiguration(Ltwitter4j/HttpResponse;)Ltwitter4j/TwitterAPIConfiguration;
    .registers 4
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 255
    new-instance v0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;

    iget-object v1, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, p1, v1}, Ltwitter4j/TwitterAPIConfigurationJSONImpl;-><init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createUser(Ltwitter4j/HttpResponse;)Ltwitter4j/User;
    .registers 4
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Ltwitter4j/UserJSONImpl;

    iget-object v1, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, p1, v1}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createUser(Ltwitter4j/JSONObject;)Ltwitter4j/User;
    .registers 3
    .param p1, "json"    # Ltwitter4j/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ltwitter4j/UserJSONImpl;

    invoke-direct {v0, p1}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    return-object v0
.end method

.method public createUserList(Ltwitter4j/HttpResponse;)Ltwitter4j/ResponseList;
    .registers 3
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {p1, v0}, Ltwitter4j/UserJSONImpl;->createUserList(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public createUserListFromJSONArray(Ltwitter4j/HttpResponse;)Ltwitter4j/ResponseList;
    .registers 4
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asJSONArray()Ltwitter4j/JSONArray;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, p1, v1}, Ltwitter4j/UserJSONImpl;->createUserList(Ltwitter4j/JSONArray;Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public createUserListFromJSONArray_Users(Ltwitter4j/HttpResponse;)Ltwitter4j/ResponseList;
    .registers 5
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 136
    :try_start_0
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object v1

    const-string v2, "users"

    invoke-virtual {v1, v2}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v1, p1, v2}, Ltwitter4j/UserJSONImpl;->createUserList(Ltwitter4j/JSONArray;Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    :try_end_f
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v1

    return-object v1

    .line 137
    :catch_11
    move-exception v0

    .line 138
    .local v0, "jsone":Ltwitter4j/JSONException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public createUserListList(Ltwitter4j/HttpResponse;)Ltwitter4j/ResponseList;
    .registers 3
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {p1, v0}, Ltwitter4j/UserListJSONImpl;->createUserListList(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 306
    if-ne p0, p1, :cond_5

    .line 314
    :cond_4
    :goto_4
    return v1

    .line 307
    :cond_5
    instance-of v3, p1, Ltwitter4j/JSONImplFactory;

    if-nez v3, :cond_b

    move v1, v2

    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 309
    check-cast v0, Ltwitter4j/JSONImplFactory;

    .line 311
    .local v0, "that":Ltwitter4j/JSONImplFactory;
    iget-object v3, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    iget-object v4, v0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_1c
    move v1, v2

    .line 312
    goto :goto_4

    .line 311
    :cond_1e
    iget-object v3, v0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    if-eqz v3, :cond_4

    goto :goto_1c
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    if-eqz v0, :cond_b

    iget-object v0, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSONImplFactory{conf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/JSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
