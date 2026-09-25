.class Ltwitter4j/AccountSettingsJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "AccountSettingsJSONImpl.java"

# interfaces
.implements Ltwitter4j/AccountSettings;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x85ef5f106bca856L


# instance fields
.field private final ALWAYS_USE_HTTPS:Z

.field private final DISCOVERABLE_BY_EMAIL:Z

.field private final GEO_ENABLED:Z

.field private final LANGUAGE:Ljava/lang/String;

.field private final SCREEN_NAME:Ljava/lang/String;

.field private final SLEEP_END_TIME:Ljava/lang/String;

.field private final SLEEP_START_TIME:Ljava/lang/String;

.field private final SLEEP_TIME_ENABLED:Z

.field private final TIMEZONE:Ltwitter4j/TimeZone;

.field private final TREND_LOCATION:[Ltwitter4j/Location;


# direct methods
.method private constructor <init>(Ltwitter4j/HttpResponse;Ltwitter4j/JSONObject;)V
    .registers 10
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .param p2, "json"    # Ltwitter4j/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/HttpResponse;)V

    .line 41
    :try_start_3
    const-string v4, "sleep_time"

    invoke-virtual {p2, v4}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v3

    .line 42
    .local v3, "sleepTime":Ltwitter4j/JSONObject;
    const-string v4, "enabled"

    invoke-static {v4, v3}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v4

    iput-boolean v4, p0, Ltwitter4j/AccountSettingsJSONImpl;->SLEEP_TIME_ENABLED:Z

    .line 43
    const-string v4, "start_time"

    invoke-virtual {v3, v4}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ltwitter4j/AccountSettingsJSONImpl;->SLEEP_START_TIME:Ljava/lang/String;

    .line 44
    const-string v4, "end_time"

    invoke-virtual {v3, v4}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ltwitter4j/AccountSettingsJSONImpl;->SLEEP_END_TIME:Ljava/lang/String;

    .line 45
    const-string v4, "trend_location"

    invoke-virtual {p2, v4}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 46
    const/4 v4, 0x0

    new-array v4, v4, [Ltwitter4j/Location;

    iput-object v4, p0, Ltwitter4j/AccountSettingsJSONImpl;->TREND_LOCATION:[Ltwitter4j/Location;

    .line 54
    :cond_2e
    const-string v4, "geo_enabled"

    invoke-static {v4, p2}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v4

    iput-boolean v4, p0, Ltwitter4j/AccountSettingsJSONImpl;->GEO_ENABLED:Z

    .line 55
    const-string v4, "language"

    invoke-virtual {p2, v4}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ltwitter4j/AccountSettingsJSONImpl;->LANGUAGE:Ljava/lang/String;

    .line 56
    const-string v4, "always_use_https"

    invoke-static {v4, p2}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v4

    iput-boolean v4, p0, Ltwitter4j/AccountSettingsJSONImpl;->ALWAYS_USE_HTTPS:Z

    .line 57
    const-string v4, "discoverable_by_email"

    invoke-static {v4, p2}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v4

    iput-boolean v4, p0, Ltwitter4j/AccountSettingsJSONImpl;->DISCOVERABLE_BY_EMAIL:Z

    .line 59
    const-string v4, "time_zone"

    invoke-virtual {p2, v4}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 60
    const/4 v4, 0x0

    iput-object v4, p0, Ltwitter4j/AccountSettingsJSONImpl;->TIMEZONE:Ltwitter4j/TimeZone;

    .line 64
    :goto_59
    const-string v4, "screen_name"

    invoke-virtual {p2, v4}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ltwitter4j/AccountSettingsJSONImpl;->SCREEN_NAME:Ljava/lang/String;

    .line 68
    return-void

    .line 48
    :cond_62
    const-string v4, "trend_location"

    invoke-virtual {p2, v4}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v2

    .line 49
    .local v2, "locations":Ltwitter4j/JSONArray;
    invoke-virtual {v2}, Ltwitter4j/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Ltwitter4j/Location;

    iput-object v4, p0, Ltwitter4j/AccountSettingsJSONImpl;->TREND_LOCATION:[Ltwitter4j/Location;

    .line 50
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_71
    invoke-virtual {v2}, Ltwitter4j/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_2e

    .line 51
    iget-object v4, p0, Ltwitter4j/AccountSettingsJSONImpl;->TREND_LOCATION:[Ltwitter4j/Location;

    new-instance v5, Ltwitter4j/LocationJSONImpl;

    invoke-virtual {v2, v1}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Ltwitter4j/LocationJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    aput-object v5, v4, v1

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    .line 62
    .end local v1    # "i":I
    .end local v2    # "locations":Ltwitter4j/JSONArray;
    :cond_87
    new-instance v4, Ltwitter4j/TimeZoneJSONImpl;

    const-string v5, "time_zone"

    invoke-virtual {p2, v5}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Ltwitter4j/TimeZoneJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    iput-object v4, p0, Ltwitter4j/AccountSettingsJSONImpl;->TIMEZONE:Ltwitter4j/TimeZone;
    :try_end_94
    .catch Ltwitter4j/JSONException; {:try_start_3 .. :try_end_94} :catch_95

    goto :goto_59

    .line 65
    .end local v3    # "sleepTime":Ltwitter4j/JSONObject;
    :catch_95
    move-exception v0

    .line 66
    .local v0, "e":Ltwitter4j/JSONException;
    new-instance v4, Ltwitter4j/TwitterException;

    invoke-direct {v4, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method constructor <init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .registers 4
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .param p2, "conf"    # Ltwitter4j/conf/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ltwitter4j/AccountSettingsJSONImpl;-><init>(Ltwitter4j/HttpResponse;Ltwitter4j/JSONObject;)V

    .line 72
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 73
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 74
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_17
    return-void
.end method

.method constructor <init>(Ltwitter4j/JSONObject;)V
    .registers 3
    .param p1, "json"    # Ltwitter4j/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ltwitter4j/AccountSettingsJSONImpl;-><init>(Ltwitter4j/HttpResponse;Ltwitter4j/JSONObject;)V

    .line 80
    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Ltwitter4j/AccountSettingsJSONImpl;->LANGUAGE:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Ltwitter4j/AccountSettingsJSONImpl;->SCREEN_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getSleepEndTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Ltwitter4j/AccountSettingsJSONImpl;->SLEEP_END_TIME:Ljava/lang/String;

    return-object v0
.end method

.method public getSleepStartTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Ltwitter4j/AccountSettingsJSONImpl;->SLEEP_START_TIME:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ltwitter4j/TimeZone;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Ltwitter4j/AccountSettingsJSONImpl;->TIMEZONE:Ltwitter4j/TimeZone;

    return-object v0
.end method

.method public getTrendLocations()[Ltwitter4j/Location;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Ltwitter4j/AccountSettingsJSONImpl;->TREND_LOCATION:[Ltwitter4j/Location;

    return-object v0
.end method

.method public isAlwaysUseHttps()Z
    .registers 2

    .prologue
    .line 114
    iget-boolean v0, p0, Ltwitter4j/AccountSettingsJSONImpl;->ALWAYS_USE_HTTPS:Z

    return v0
.end method

.method public isDiscoverableByEmail()Z
    .registers 2

    .prologue
    .line 109
    iget-boolean v0, p0, Ltwitter4j/AccountSettingsJSONImpl;->DISCOVERABLE_BY_EMAIL:Z

    return v0
.end method

.method public isGeoEnabled()Z
    .registers 2

    .prologue
    .line 104
    iget-boolean v0, p0, Ltwitter4j/AccountSettingsJSONImpl;->GEO_ENABLED:Z

    return v0
.end method

.method public isSleepTimeEnabled()Z
    .registers 2

    .prologue
    .line 84
    iget-boolean v0, p0, Ltwitter4j/AccountSettingsJSONImpl;->SLEEP_TIME_ENABLED:Z

    return v0
.end method
