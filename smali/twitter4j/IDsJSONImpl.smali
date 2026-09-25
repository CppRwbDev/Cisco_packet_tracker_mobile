.class final Ltwitter4j/IDsJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "IDsJSONImpl.java"

# interfaces
.implements Ltwitter4j/IDs;


# static fields
.field private static final serialVersionUID:J = 0x6123b5378a0306e8L


# instance fields
.field private ids:[J

.field private nextCursor:J

.field private previousCursor:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .line 45
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 32
    iput-wide v0, p0, Ltwitter4j/IDsJSONImpl;->previousCursor:J

    .line 33
    iput-wide v0, p0, Ltwitter4j/IDsJSONImpl;->nextCursor:J

    .line 46
    invoke-direct {p0, p1}, Ltwitter4j/IDsJSONImpl;->init(Ljava/lang/String;)V

    .line 47
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
    const-wide/16 v2, -0x1

    .line 36
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/HttpResponse;)V

    .line 32
    iput-wide v2, p0, Ltwitter4j/IDsJSONImpl;->previousCursor:J

    .line 33
    iput-wide v2, p0, Ltwitter4j/IDsJSONImpl;->nextCursor:J

    .line 37
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "json":Ljava/lang/String;
    invoke-direct {p0, v0}, Ltwitter4j/IDsJSONImpl;->init(Ljava/lang/String;)V

    .line 39
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 40
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 41
    invoke-static {p0, v0}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_1c
    return-void
.end method

.method private init(Ljava/lang/String;)V
    .registers 10
    .param p1, "jsonStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 52
    :try_start_0
    const-string v5, "{"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 53
    new-instance v2, Ltwitter4j/JSONObject;

    invoke-direct {v2, p1}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    .local v2, "json":Ltwitter4j/JSONObject;
    const-string v5, "ids"

    invoke-virtual {v2, v5}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v1

    .line 55
    .local v1, "idList":Ltwitter4j/JSONArray;
    invoke-virtual {v1}, Ltwitter4j/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [J

    iput-object v5, p0, Ltwitter4j/IDsJSONImpl;->ids:[J

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c
    invoke-virtual {v1}, Ltwitter4j/JSONArray;->length()I
    :try_end_1f
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_1f} :catch_4b

    move-result v5

    if-ge v0, v5, :cond_52

    .line 58
    :try_start_22
    iget-object v5, p0, Ltwitter4j/IDsJSONImpl;->ids:[J

    invoke-virtual {v1, v0}, Ltwitter4j/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v5, v0
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_2e} :catch_31
    .catch Ltwitter4j/JSONException; {:try_start_22 .. :try_end_2e} :catch_4b

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 59
    :catch_31
    move-exception v4

    .line 60
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    :try_start_32
    new-instance v5, Ltwitter4j/TwitterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Twitter API returned malformed response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_4b
    .catch Ltwitter4j/JSONException; {:try_start_32 .. :try_end_4b} :catch_4b

    .line 76
    .end local v0    # "i":I
    .end local v1    # "idList":Ltwitter4j/JSONArray;
    .end local v2    # "json":Ltwitter4j/JSONObject;
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    :catch_4b
    move-exception v3

    .line 77
    .local v3, "jsone":Ltwitter4j/JSONException;
    new-instance v5, Ltwitter4j/TwitterException;

    invoke-direct {v5, v3}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 63
    .end local v3    # "jsone":Ltwitter4j/JSONException;
    .restart local v0    # "i":I
    .restart local v1    # "idList":Ltwitter4j/JSONArray;
    .restart local v2    # "json":Ltwitter4j/JSONObject;
    :cond_52
    :try_start_52
    const-string v5, "previous_cursor"

    invoke-static {v5, v2}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v6

    iput-wide v6, p0, Ltwitter4j/IDsJSONImpl;->previousCursor:J

    .line 64
    const-string v5, "next_cursor"

    invoke-static {v5, v2}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v6

    iput-wide v6, p0, Ltwitter4j/IDsJSONImpl;->nextCursor:J

    .line 79
    .end local v2    # "json":Ltwitter4j/JSONObject;
    :cond_62
    return-void

    .line 66
    .end local v0    # "i":I
    .end local v1    # "idList":Ltwitter4j/JSONArray;
    :cond_63
    new-instance v1, Ltwitter4j/JSONArray;

    invoke-direct {v1, p1}, Ltwitter4j/JSONArray;-><init>(Ljava/lang/String;)V

    .line 67
    .restart local v1    # "idList":Ltwitter4j/JSONArray;
    invoke-virtual {v1}, Ltwitter4j/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [J

    iput-object v5, p0, Ltwitter4j/IDsJSONImpl;->ids:[J

    .line 68
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_71
    invoke-virtual {v1}, Ltwitter4j/JSONArray;->length()I
    :try_end_74
    .catch Ltwitter4j/JSONException; {:try_start_52 .. :try_end_74} :catch_4b

    move-result v5

    if-ge v0, v5, :cond_62

    .line 70
    :try_start_77
    iget-object v5, p0, Ltwitter4j/IDsJSONImpl;->ids:[J

    invoke-virtual {v1, v0}, Ltwitter4j/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v5, v0
    :try_end_83
    .catch Ljava/lang/NumberFormatException; {:try_start_77 .. :try_end_83} :catch_86
    .catch Ltwitter4j/JSONException; {:try_start_77 .. :try_end_83} :catch_4b

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    .line 71
    :catch_86
    move-exception v4

    .line 72
    .restart local v4    # "nfe":Ljava/lang/NumberFormatException;
    :try_start_87
    new-instance v5, Ltwitter4j/TwitterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Twitter API returned malformed response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_a0
    .catch Ltwitter4j/JSONException; {:try_start_87 .. :try_end_a0} :catch_4b
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    if-ne p0, p1, :cond_5

    .line 130
    :cond_4
    :goto_4
    return v1

    .line 124
    :cond_5
    instance-of v3, p1, Ltwitter4j/IDs;

    if-nez v3, :cond_b

    move v1, v2

    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 126
    check-cast v0, Ltwitter4j/IDs;

    .line 128
    .local v0, "iDs":Ltwitter4j/IDs;
    iget-object v3, p0, Ltwitter4j/IDsJSONImpl;->ids:[J

    invoke-interface {v0}, Ltwitter4j/IDs;->getIDs()[J

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public getIDs()[J
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Ltwitter4j/IDsJSONImpl;->ids:[J

    return-object v0
.end method

.method public getNextCursor()J
    .registers 3

    .prologue
    .line 118
    iget-wide v0, p0, Ltwitter4j/IDsJSONImpl;->nextCursor:J

    return-wide v0
.end method

.method public getPreviousCursor()J
    .registers 3

    .prologue
    .line 102
    iget-wide v0, p0, Ltwitter4j/IDsJSONImpl;->previousCursor:J

    return-wide v0
.end method

.method public hasNext()Z
    .registers 5

    .prologue
    .line 110
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Ltwitter4j/IDsJSONImpl;->nextCursor:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasPrevious()Z
    .registers 5

    .prologue
    .line 94
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Ltwitter4j/IDsJSONImpl;->previousCursor:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Ltwitter4j/IDsJSONImpl;->ids:[J

    if-eqz v0, :cond_b

    iget-object v0, p0, Ltwitter4j/IDsJSONImpl;->ids:[J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IDsJSONImpl{ids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/IDsJSONImpl;->ids:[J

    .line 141
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", previousCursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/IDsJSONImpl;->previousCursor:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nextCursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/IDsJSONImpl;->nextCursor:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
