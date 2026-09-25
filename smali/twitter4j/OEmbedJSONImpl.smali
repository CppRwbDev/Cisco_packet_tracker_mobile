.class public Ltwitter4j/OEmbedJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "OEmbedJSONImpl.java"

# interfaces
.implements Ltwitter4j/OEmbed;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1ea3afbfb4fc197bL


# instance fields
.field private authorName:Ljava/lang/String;

.field private authorURL:Ljava/lang/String;

.field private cacheAge:J

.field private html:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private version:Ljava/lang/String;

.field private width:I


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
    .line 35
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/HttpResponse;)V

    .line 36
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object v0

    .line 37
    .local v0, "json":Ltwitter4j/JSONObject;
    invoke-direct {p0, v0}, Ltwitter4j/OEmbedJSONImpl;->init(Ltwitter4j/JSONObject;)V

    .line 38
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 39
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 40
    invoke-static {p0, v0}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
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
    .line 45
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 46
    invoke-direct {p0, p1}, Ltwitter4j/OEmbedJSONImpl;->init(Ltwitter4j/JSONObject;)V

    .line 47
    return-void
.end method

.method private init(Ltwitter4j/JSONObject;)V
    .registers 6
    .param p1, "json"    # Ltwitter4j/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 51
    :try_start_0
    const-string v1, "html"

    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/OEmbedJSONImpl;->html:Ljava/lang/String;

    .line 52
    const-string v1, "author_name"

    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    .line 53
    const-string v1, "url"

    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/OEmbedJSONImpl;->url:Ljava/lang/String;

    .line 54
    const-string v1, "version"

    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/OEmbedJSONImpl;->version:Ljava/lang/String;

    .line 55
    const-string v1, "cache_age"

    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Ltwitter4j/OEmbedJSONImpl;->cacheAge:J

    .line 56
    const-string v1, "author_url"

    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    .line 57
    const-string v1, "width"

    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ltwitter4j/OEmbedJSONImpl;->width:I
    :try_end_38
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_38} :catch_39

    .line 66
    return-void

    .line 63
    :catch_39
    move-exception v0

    .line 64
    .local v0, "jsone":Ltwitter4j/JSONException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    if-ne p0, p1, :cond_5

    .line 118
    :cond_4
    :goto_4
    return v1

    .line 106
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

    .line 108
    check-cast v0, Ltwitter4j/OEmbedJSONImpl;

    .line 110
    .local v0, "that":Ltwitter4j/OEmbedJSONImpl;
    iget-wide v4, p0, Ltwitter4j/OEmbedJSONImpl;->cacheAge:J

    iget-wide v6, v0, Ltwitter4j/OEmbedJSONImpl;->cacheAge:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_20

    move v1, v2

    goto :goto_4

    .line 111
    :cond_20
    iget v3, p0, Ltwitter4j/OEmbedJSONImpl;->width:I

    iget v4, v0, Ltwitter4j/OEmbedJSONImpl;->width:I

    if-eq v3, v4, :cond_28

    move v1, v2

    goto :goto_4

    .line 112
    :cond_28
    iget-object v3, p0, Ltwitter4j/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    if-eqz v3, :cond_38

    iget-object v3, p0, Ltwitter4j/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    :cond_36
    move v1, v2

    goto :goto_4

    :cond_38
    iget-object v3, v0, Ltwitter4j/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    if-nez v3, :cond_36

    .line 113
    :cond_3c
    iget-object v3, p0, Ltwitter4j/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    if-eqz v3, :cond_4c

    iget-object v3, p0, Ltwitter4j/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    :cond_4a
    move v1, v2

    goto :goto_4

    :cond_4c
    iget-object v3, v0, Ltwitter4j/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    if-nez v3, :cond_4a

    .line 114
    :cond_50
    iget-object v3, p0, Ltwitter4j/OEmbedJSONImpl;->html:Ljava/lang/String;

    if-eqz v3, :cond_60

    iget-object v3, p0, Ltwitter4j/OEmbedJSONImpl;->html:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/OEmbedJSONImpl;->html:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    :cond_5e
    move v1, v2

    goto :goto_4

    :cond_60
    iget-object v3, v0, Ltwitter4j/OEmbedJSONImpl;->html:Ljava/lang/String;

    if-nez v3, :cond_5e

    .line 115
    :cond_64
    iget-object v3, p0, Ltwitter4j/OEmbedJSONImpl;->url:Ljava/lang/String;

    if-eqz v3, :cond_74

    iget-object v3, p0, Ltwitter4j/OEmbedJSONImpl;->url:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/OEmbedJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_78

    :cond_72
    move v1, v2

    goto :goto_4

    :cond_74
    iget-object v3, v0, Ltwitter4j/OEmbedJSONImpl;->url:Ljava/lang/String;

    if-nez v3, :cond_72

    .line 116
    :cond_78
    iget-object v3, p0, Ltwitter4j/OEmbedJSONImpl;->version:Ljava/lang/String;

    if-eqz v3, :cond_89

    iget-object v3, p0, Ltwitter4j/OEmbedJSONImpl;->version:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/OEmbedJSONImpl;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_86
    move v1, v2

    goto/16 :goto_4

    :cond_89
    iget-object v3, v0, Ltwitter4j/OEmbedJSONImpl;->version:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_86
.end method

.method public bridge synthetic getAccessLevel()I
    .registers 2

    .prologue
    .line 24
    invoke-super {p0}, Ltwitter4j/TwitterResponseImpl;->getAccessLevel()I

    move-result v0

    return v0
.end method

.method public getAuthorName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheAge()J
    .registers 3

    .prologue
    .line 90
    iget-wide v0, p0, Ltwitter4j/OEmbedJSONImpl;->cacheAge:J

    return-wide v0
.end method

.method public getHtml()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->html:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getRateLimitStatus()Ltwitter4j/RateLimitStatus;
    .registers 2

    .prologue
    .line 24
    invoke-super {p0}, Ltwitter4j/TwitterResponseImpl;->getRateLimitStatus()Ltwitter4j/RateLimitStatus;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 100
    iget v0, p0, Ltwitter4j/OEmbedJSONImpl;->width:I

    return v0
.end method

.method public hashCode()I
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v2, p0, Ltwitter4j/OEmbedJSONImpl;->html:Ljava/lang/String;

    if-eqz v2, :cond_57

    iget-object v2, p0, Ltwitter4j/OEmbedJSONImpl;->html:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 124
    .local v0, "result":I
    :goto_b
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    if-eqz v2, :cond_59

    iget-object v2, p0, Ltwitter4j/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int v0, v3, v2

    .line 125
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/OEmbedJSONImpl;->url:Ljava/lang/String;

    if-eqz v2, :cond_5b

    iget-object v2, p0, Ltwitter4j/OEmbedJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_25
    add-int v0, v3, v2

    .line 126
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/OEmbedJSONImpl;->version:Ljava/lang/String;

    if-eqz v2, :cond_5d

    iget-object v2, p0, Ltwitter4j/OEmbedJSONImpl;->version:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_33
    add-int v0, v3, v2

    .line 127
    mul-int/lit8 v2, v0, 0x1f

    iget-wide v4, p0, Ltwitter4j/OEmbedJSONImpl;->cacheAge:J

    iget-wide v6, p0, Ltwitter4j/OEmbedJSONImpl;->cacheAge:J

    const/16 v3, 0x20

    ushr-long/2addr v6, v3

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v0, v2, v3

    .line 128
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    if-eqz v3, :cond_4e

    iget-object v1, p0, Ltwitter4j/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_4e
    add-int v0, v2, v1

    .line 129
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/OEmbedJSONImpl;->width:I

    add-int v0, v1, v2

    .line 130
    return v0

    .end local v0    # "result":I
    :cond_57
    move v0, v1

    .line 123
    goto :goto_b

    .restart local v0    # "result":I
    :cond_59
    move v2, v1

    .line 124
    goto :goto_17

    :cond_5b
    move v2, v1

    .line 125
    goto :goto_25

    :cond_5d
    move v2, v1

    .line 126
    goto :goto_33
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0x27

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OEmbedJSONImpl{html=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/OEmbedJSONImpl;->html:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authorName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/OEmbedJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/OEmbedJSONImpl;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cacheAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/OEmbedJSONImpl;->cacheAge:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authorURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/OEmbedJSONImpl;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
