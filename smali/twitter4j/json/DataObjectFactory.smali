.class public final Ltwitter4j/json/DataObjectFactory;
.super Ljava/lang/Object;
.source "DataObjectFactory.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "not intended to be instantiated."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static createAccountTotals(Ljava/lang/String;)Ltwitter4j/AccountTotals;
    .registers 2
    .param p0, "rawJSON"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {p0}, Ltwitter4j/TwitterObjectFactory;->createAccountTotals(Ljava/lang/String;)Ltwitter4j/AccountTotals;

    move-result-object v0

    return-object v0
.end method

.method public static createCategory(Ljava/lang/String;)Ltwitter4j/Category;
    .registers 2
    .param p0, "rawJSON"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {p0}, Ltwitter4j/TwitterObjectFactory;->createCategory(Ljava/lang/String;)Ltwitter4j/Category;

    move-result-object v0

    return-object v0
.end method

.method public static createDirectMessage(Ljava/lang/String;)Ltwitter4j/DirectMessage;
    .registers 2
    .param p0, "rawJSON"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {p0}, Ltwitter4j/TwitterObjectFactory;->createDirectMessage(Ljava/lang/String;)Ltwitter4j/DirectMessage;

    move-result-object v0

    return-object v0
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
    .line 150
    invoke-static {p0}, Ltwitter4j/TwitterObjectFactory;->createIDs(Ljava/lang/String;)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public static createLocation(Ljava/lang/String;)Ltwitter4j/Location;
    .registers 2
    .param p0, "rawJSON"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-static {p0}, Ltwitter4j/TwitterObjectFactory;->createLocation(Ljava/lang/String;)Ltwitter4j/Location;

    move-result-object v0

    return-object v0
.end method

.method public static createOEmbed(Ljava/lang/String;)Ltwitter4j/OEmbed;
    .registers 2
    .param p0, "rawJSON"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-static {p0}, Ltwitter4j/TwitterObjectFactory;->createOEmbed(Ljava/lang/String;)Ltwitter4j/OEmbed;

    move-result-object v0

    return-object v0
.end method

.method public static createObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .param p0, "rawJSON"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 246
    invoke-static {p0}, Ltwitter4j/TwitterObjectFactory;->createObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static createPlace(Ljava/lang/String;)Ltwitter4j/Place;
    .registers 2
    .param p0, "rawJSON"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {p0}, Ltwitter4j/TwitterObjectFactory;->createPlace(Ljava/lang/String;)Ltwitter4j/Place;

    move-result-object v0

    return-object v0
.end method

.method public static createRateLimitStatus(Ljava/lang/String;)Ljava/util/Map;
    .registers 2
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
    .line 162
    invoke-static {p0}, Ltwitter4j/TwitterObjectFactory;->createRateLimitStatus(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static createRelationship(Ljava/lang/String;)Ltwitter4j/Relationship;
    .registers 2
    .param p0, "rawJSON"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {p0}, Ltwitter4j/TwitterObjectFactory;->createRelationship(Ljava/lang/String;)Ltwitter4j/Relationship;

    move-result-object v0

    return-object v0
.end method

.method public static createSavedSearch(Ljava/lang/String;)Ltwitter4j/SavedSearch;
    .registers 2
    .param p0, "rawJSON"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {p0}, Ltwitter4j/TwitterObjectFactory;->createSavedSearch(Ljava/lang/String;)Ltwitter4j/SavedSearch;

    move-result-object v0

    return-object v0
.end method

.method public static createStatus(Ljava/lang/String;)Ltwitter4j/Status;
    .registers 2
    .param p0, "rawJSON"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p0}, Ltwitter4j/TwitterObjectFactory;->createStatus(Ljava/lang/String;)Ltwitter4j/Status;

    move-result-object v0

    return-object v0
.end method

.method public static createTrend(Ljava/lang/String;)Ltwitter4j/Trend;
    .registers 2
    .param p0, "rawJSON"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {p0}, Ltwitter4j/TwitterObjectFactory;->createTrend(Ljava/lang/String;)Ltwitter4j/Trend;

    move-result-object v0

    return-object v0
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
    .line 138
    invoke-static {p0}, Ltwitter4j/TwitterObjectFactory;->createTrends(Ljava/lang/String;)Ltwitter4j/Trends;

    move-result-object v0

    return-object v0
.end method

.method public static createUser(Ljava/lang/String;)Ltwitter4j/User;
    .registers 2
    .param p0, "rawJSON"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {p0}, Ltwitter4j/TwitterObjectFactory;->createUser(Ljava/lang/String;)Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method

.method public static createUserList(Ljava/lang/String;)Ltwitter4j/UserList;
    .registers 2
    .param p0, "rawJSON"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-static {p0}, Ltwitter4j/TwitterObjectFactory;->createUserList(Ljava/lang/String;)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public static getRawJSON(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 42
    invoke-static {p0}, Ltwitter4j/TwitterObjectFactory;->getRawJSON(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
