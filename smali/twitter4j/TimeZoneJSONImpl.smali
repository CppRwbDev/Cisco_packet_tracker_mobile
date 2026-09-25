.class public Ltwitter4j/TimeZoneJSONImpl;
.super Ljava/lang/Object;
.source "TimeZoneJSONImpl.java"

# interfaces
.implements Ltwitter4j/TimeZone;


# static fields
.field private static final serialVersionUID:J = 0x1232d3faed98fb0L


# instance fields
.field private final NAME:Ljava/lang/String;

.field private final TZINFO_NAME:Ljava/lang/String;

.field private final UTC_OFFSET:I


# direct methods
.method constructor <init>(Ltwitter4j/JSONObject;)V
    .registers 4
    .param p1, "jSONObject"    # Ltwitter4j/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    :try_start_3
    const-string v1, "utc_offset"

    invoke-static {v1, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v1

    iput v1, p0, Ltwitter4j/TimeZoneJSONImpl;->UTC_OFFSET:I

    .line 31
    const-string v1, "name"

    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/TimeZoneJSONImpl;->NAME:Ljava/lang/String;

    .line 32
    const-string v1, "tzinfo_name"

    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/TimeZoneJSONImpl;->TZINFO_NAME:Ljava/lang/String;
    :try_end_1b
    .catch Ltwitter4j/JSONException; {:try_start_3 .. :try_end_1b} :catch_1c

    .line 36
    return-void

    .line 33
    :catch_1c
    move-exception v0

    .line 34
    .local v0, "jsone":Ltwitter4j/JSONException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Ltwitter4j/TimeZoneJSONImpl;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public tzinfoName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Ltwitter4j/TimeZoneJSONImpl;->TZINFO_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public utcOffset()I
    .registers 2

    .prologue
    .line 50
    iget v0, p0, Ltwitter4j/TimeZoneJSONImpl;->UTC_OFFSET:I

    return v0
.end method
