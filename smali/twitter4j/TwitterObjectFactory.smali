.class public final Ltwitter4j/TwitterObjectFactory;
.super Ljava/lang/Object;
.source "TwitterObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/TwitterObjectFactory$2;
    }
.end annotation


# static fields
.field private static final rawJsonMap:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field

.field private static registeredAtleastOnce:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    new-instance v0, Ltwitter4j/TwitterObjectFactory$1;

    invoke-direct {v0}, Ltwitter4j/TwitterObjectFactory$1;-><init>()V

    sput-object v0, Ltwitter4j/TwitterObjectFactory;->rawJsonMap:Ljava/lang/ThreadLocal;

    .line 333
    const/4 v0, 0x0

    sput-boolean v0, Ltwitter4j/TwitterObjectFactory;->registeredAtleastOnce:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "not intended to be instantiated."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static clearThreadLocalMap()V
    .registers 1

    .prologue
    .line 330
    sget-object v0, Ltwitter4j/TwitterObjectFactory;->rawJsonMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 331
    return-void
.end method

.method public static createAccountTotals(Ljava/lang/String;)Ltwitter4j/AccountTotals;
    .registers 4
    .param p0, "rawJSON"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 87
    :try_start_0
    new-instance v1, Ltwitter4j/AccountTotalsJSONImpl;

    new-instance v2, Ltwitter4j/JSONObject;

    invoke-direct {v2, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ltwitter4j/AccountTotalsJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_a
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v1

    .line 88
    :catch_b
    move-exception v0

    .line 89
    .local v0, "e":Ltwitter4j/JSONException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static createCategory(Ljava/lang/String;)Ltwitter4j/Category;
    .registers 4
    .param p0, "rawJSON"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 207
    :try_start_0
    new-instance v1, Ltwitter4j/CategoryJSONImpl;

    new-instance v2, Ltwitter4j/JSONObject;

    invoke-direct {v2, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ltwitter4j/CategoryJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_a
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v1

    .line 208
    :catch_b
    move-exception v0

    .line 209
    .local v0, "e":Ltwitter4j/JSONException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static createDirectMessage(Ljava/lang/String;)Ltwitter4j/DirectMessage;
    .registers 4
    .param p0, "rawJSON"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 223
    :try_start_0
    new-instance v1, Ltwitter4j/DirectMessageJSONImpl;

    new-instance v2, Ltwitter4j/JSONObject;

    invoke-direct {v2, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ltwitter4j/DirectMessageJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_a
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v1

    .line 224
    :catch_b
    move-exception v0

    .line 225
    .local v0, "e":Ltwitter4j/JSONException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static createIDs(Ljava/lang/String;)Ltwitter4j/IDs;
    .registers 2
    .param p0, "rawJSON"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Ltwitter4j/IDsJSONImpl;

    invoke-direct {v0, p0}, Ltwitter4j/IDsJSONImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createLocation(Ljava/lang/String;)Ltwitter4j/Location;
    .registers 4
    .param p0, "rawJSON"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 239
    :try_start_0
    new-instance v1, Ltwitter4j/LocationJSONImpl;

    new-instance v2, Ltwitter4j/JSONObject;

    invoke-direct {v2, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ltwitter4j/LocationJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_a
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v1

    .line 240
    :catch_b
    move-exception v0

    .line 241
    .local v0, "e":Ltwitter4j/JSONException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static createOEmbed(Ljava/lang/String;)Ltwitter4j/OEmbed;
    .registers 4
    .param p0, "rawJSON"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 271
    :try_start_0
    new-instance v1, Ltwitter4j/OEmbedJSONImpl;

    new-instance v2, Ltwitter4j/JSONObject;

    invoke-direct {v2, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ltwitter4j/OEmbedJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_a
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v1

    .line 272
    :catch_b
    move-exception v0

    .line 273
    .local v0, "e":Ltwitter4j/JSONException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static createObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .param p0, "rawJSON"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 298
    :try_start_0
    new-instance v1, Ltwitter4j/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    .line 299
    .local v1, "json":Ltwitter4j/JSONObject;
    invoke-static {v1}, Ltwitter4j/JSONObjectType;->determine(Ltwitter4j/JSONObject;)Ltwitter4j/JSONObjectType$Type;

    move-result-object v2

    .line 300
    .local v2, "jsonObjectType":Ltwitter4j/JSONObjectType$Type;
    sget-object v3, Ltwitter4j/TwitterObjectFactory$2;->$SwitchMap$twitter4j$JSONObjectType$Type:[I

    invoke-virtual {v2}, Ltwitter4j/JSONObjectType$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_5c

    .line 317
    .end local v1    # "json":Ltwitter4j/JSONObject;
    :goto_14
    :pswitch_14
    return-object v1

    .line 302
    .restart local v1    # "json":Ltwitter4j/JSONObject;
    :pswitch_15
    new-instance v3, Ltwitter4j/DirectMessageJSONImpl;

    const-string v4, "direct_message"

    invoke-virtual {v1, v4}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Ltwitter4j/DirectMessageJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    invoke-static {v3, v1}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_14

    .line 304
    :pswitch_25
    new-instance v3, Ltwitter4j/StatusJSONImpl;

    invoke-direct {v3, v1}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    invoke-static {v3, v1}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_14

    .line 306
    :pswitch_2f
    new-instance v3, Ltwitter4j/DirectMessageJSONImpl;

    const-string v4, "direct_message"

    invoke-virtual {v1, v4}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Ltwitter4j/DirectMessageJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    invoke-static {v3, v1}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_14

    .line 308
    :pswitch_3f
    new-instance v3, Ltwitter4j/StatusDeletionNoticeImpl;

    const-string v4, "delete"

    invoke-virtual {v1, v4}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v4

    const-string v5, "status"

    invoke-virtual {v4, v5}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Ltwitter4j/StatusDeletionNoticeImpl;-><init>(Ltwitter4j/JSONObject;)V

    invoke-static {v3, v1}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_53} :catch_55

    move-result-object v1

    goto :goto_14

    .line 319
    .end local v1    # "json":Ltwitter4j/JSONObject;
    .end local v2    # "jsonObjectType":Ltwitter4j/JSONObjectType$Type;
    :catch_55
    move-exception v0

    .line 320
    .local v0, "e":Ltwitter4j/JSONException;
    new-instance v3, Ltwitter4j/TwitterException;

    invoke-direct {v3, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 300
    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_15
        :pswitch_25
        :pswitch_2f
        :pswitch_3f
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method public static createPlace(Ljava/lang/String;)Ltwitter4j/Place;
    .registers 4
    .param p0, "rawJSON"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 119
    :try_start_0
    new-instance v1, Ltwitter4j/PlaceJSONImpl;

    new-instance v2, Ltwitter4j/JSONObject;

    invoke-direct {v2, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ltwitter4j/PlaceJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_a
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v1

    .line 120
    :catch_b
    move-exception v0

    .line 121
    .local v0, "e":Ltwitter4j/JSONException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static createRateLimitStatus(Ljava/lang/String;)Ljava/util/Map;
    .registers 3
    .param p0, "rawJSON"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 191
    :try_start_0
    new-instance v1, Ltwitter4j/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ltwitter4j/RateLimitStatusJSONImpl;->createRateLimitStatuses(Ltwitter4j/JSONObject;)Ljava/util/Map;
    :try_end_8
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v1

    return-object v1

    .line 192
    :catch_a
    move-exception v0

    .line 193
    .local v0, "e":Ltwitter4j/JSONException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static createRelationship(Ljava/lang/String;)Ltwitter4j/Relationship;
    .registers 4
    .param p0, "rawJSON"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 103
    :try_start_0
    new-instance v1, Ltwitter4j/RelationshipJSONImpl;

    new-instance v2, Ltwitter4j/JSONObject;

    invoke-direct {v2, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ltwitter4j/RelationshipJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_a
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v1

    .line 104
    :catch_b
    move-exception v0

    .line 105
    .local v0, "e":Ltwitter4j/JSONException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static createSavedSearch(Ljava/lang/String;)Ltwitter4j/SavedSearch;
    .registers 4
    .param p0, "rawJSON"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 135
    :try_start_0
    new-instance v1, Ltwitter4j/SavedSearchJSONImpl;

    new-instance v2, Ltwitter4j/JSONObject;

    invoke-direct {v2, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ltwitter4j/SavedSearchJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_a
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v1

    .line 136
    :catch_b
    move-exception v0

    .line 137
    .local v0, "e":Ltwitter4j/JSONException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static createStatus(Ljava/lang/String;)Ltwitter4j/Status;
    .registers 4
    .param p0, "rawJSON"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 55
    :try_start_0
    new-instance v1, Ltwitter4j/StatusJSONImpl;

    new-instance v2, Ltwitter4j/JSONObject;

    invoke-direct {v2, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_a
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v1

    .line 56
    :catch_b
    move-exception v0

    .line 57
    .local v0, "e":Ltwitter4j/JSONException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static createTrend(Ljava/lang/String;)Ltwitter4j/Trend;
    .registers 4
    .param p0, "rawJSON"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 151
    :try_start_0
    new-instance v1, Ltwitter4j/TrendJSONImpl;

    new-instance v2, Ltwitter4j/JSONObject;

    invoke-direct {v2, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ltwitter4j/TrendJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_a
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v1

    .line 152
    :catch_b
    move-exception v0

    .line 153
    .local v0, "e":Ltwitter4j/JSONException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static createTrends(Ljava/lang/String;)Ltwitter4j/Trends;
    .registers 2
    .param p0, "rawJSON"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Ltwitter4j/TrendsJSONImpl;

    invoke-direct {v0, p0}, Ltwitter4j/TrendsJSONImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createUser(Ljava/lang/String;)Ltwitter4j/User;
    .registers 4
    .param p0, "rawJSON"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 71
    :try_start_0
    new-instance v1, Ltwitter4j/UserJSONImpl;

    new-instance v2, Ltwitter4j/JSONObject;

    invoke-direct {v2, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_a
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v1

    .line 72
    :catch_b
    move-exception v0

    .line 73
    .local v0, "e":Ltwitter4j/JSONException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static createUserList(Ljava/lang/String;)Ltwitter4j/UserList;
    .registers 4
    .param p0, "rawJSON"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 255
    :try_start_0
    new-instance v1, Ltwitter4j/UserListJSONImpl;

    new-instance v2, Ltwitter4j/JSONObject;

    invoke-direct {v2, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_a
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v1

    .line 256
    :catch_b
    move-exception v0

    .line 257
    .local v0, "e":Ltwitter4j/JSONException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static getRawJSON(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 31
    sget-boolean v1, Ltwitter4j/TwitterObjectFactory;->registeredAtleastOnce:Z

    if-nez v1, :cond_c

    .line 32
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Apparently jsonStoreEnabled is not set to true."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_c
    sget-object v1, Ltwitter4j/TwitterObjectFactory;->rawJsonMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    .local v0, "json":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1f

    .line 36
    check-cast v0, Ljava/lang/String;

    .line 41
    .end local v0    # "json":Ljava/lang/Object;
    :goto_1e
    return-object v0

    .line 37
    .restart local v0    # "json":Ljava/lang/Object;
    :cond_1f
    if-eqz v0, :cond_26

    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 41
    :cond_26
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method static registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "json"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "key":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    sput-boolean v0, Ltwitter4j/TwitterObjectFactory;->registeredAtleastOnce:Z

    .line 341
    sget-object v0, Ltwitter4j/TwitterObjectFactory;->rawJsonMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    return-object p0
.end method
