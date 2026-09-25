.class final Ltwitter4j/URLEntityJSONImpl;
.super Ltwitter4j/EntityIndex;
.source "URLEntityJSONImpl.java"

# interfaces
.implements Ltwitter4j/URLEntity;


# static fields
.field private static final serialVersionUID:J = 0x65c6035c458ad1a4L


# instance fields
.field private displayURL:Ljava/lang/String;

.field private expandedURL:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ltwitter4j/EntityIndex;-><init>()V

    .line 49
    return-void
.end method

.method constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "expandedURL"    # Ljava/lang/String;
    .param p5, "displayURL"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ltwitter4j/EntityIndex;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Ltwitter4j/URLEntityJSONImpl;->setStart(I)V

    .line 40
    invoke-virtual {p0, p2}, Ltwitter4j/URLEntityJSONImpl;->setEnd(I)V

    .line 41
    iput-object p3, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    .line 44
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
    .line 33
    invoke-direct {p0}, Ltwitter4j/EntityIndex;-><init>()V

    .line 34
    invoke-direct {p0, p1}, Ltwitter4j/URLEntityJSONImpl;->init(Ltwitter4j/JSONObject;)V

    .line 35
    return-void
.end method

.method private init(Ltwitter4j/JSONObject;)V
    .registers 5
    .param p1, "json"    # Ltwitter4j/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 53
    :try_start_0
    const-string v2, "indices"

    invoke-virtual {p1, v2}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v0

    .line 54
    .local v0, "indicesArray":Ltwitter4j/JSONArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ltwitter4j/JSONArray;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Ltwitter4j/URLEntityJSONImpl;->setStart(I)V

    .line 55
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ltwitter4j/JSONArray;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Ltwitter4j/URLEntityJSONImpl;->setEnd(I)V

    .line 57
    const-string v2, "url"

    invoke-virtual {p1, v2}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/lang/String;

    .line 58
    const-string v2, "expanded_url"

    invoke-virtual {p1, v2}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 61
    const-string v2, "expanded_url"

    invoke-virtual {p1, v2}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/lang/String;

    .line 66
    :goto_2e
    const-string v2, "display_url"

    invoke-virtual {p1, v2}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4b

    .line 69
    const-string v2, "display_url"

    invoke-virtual {p1, v2}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    .line 76
    :goto_3e
    return-void

    .line 63
    :cond_3f
    iget-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/lang/String;

    iput-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/lang/String;
    :try_end_43
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_43} :catch_44

    goto :goto_2e

    .line 73
    .end local v0    # "indicesArray":Ltwitter4j/JSONArray;
    :catch_44
    move-exception v1

    .line 74
    .local v1, "jsone":Ltwitter4j/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 71
    .end local v1    # "jsone":Ltwitter4j/JSONException;
    .restart local v0    # "indicesArray":Ltwitter4j/JSONArray;
    :cond_4b
    :try_start_4b
    iget-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/lang/String;

    iput-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;
    :try_end_4f
    .catch Ltwitter4j/JSONException; {:try_start_4b .. :try_end_4f} :catch_44

    goto :goto_3e
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    if-ne p0, p1, :cond_5

    .line 137
    :cond_4
    :goto_4
    return v1

    .line 129
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

    .line 131
    check-cast v0, Ltwitter4j/URLEntityJSONImpl;

    .line 133
    .local v0, "that":Ltwitter4j/URLEntityJSONImpl;
    iget-object v3, p0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    if-eqz v3, :cond_26

    iget-object v3, p0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    :cond_24
    move v1, v2

    goto :goto_4

    :cond_26
    iget-object v3, v0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    if-nez v3, :cond_24

    .line 134
    :cond_2a
    iget-object v3, p0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/lang/String;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    :cond_38
    move v1, v2

    goto :goto_4

    :cond_3a
    iget-object v3, v0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/lang/String;

    if-nez v3, :cond_38

    .line 135
    :cond_3e
    iget-object v3, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/lang/String;

    if-eqz v3, :cond_4e

    iget-object v3, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_4c
    move v1, v2

    goto :goto_4

    :cond_4e
    iget-object v3, v0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_4c
.end method

.method public getDisplayURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()I
    .registers 2

    .prologue
    .line 123
    invoke-super {p0}, Ltwitter4j/EntityIndex;->getEnd()I

    move-result v0

    return v0
.end method

.method public getExpandedURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()I
    .registers 2

    .prologue
    .line 115
    invoke-super {p0}, Ltwitter4j/EntityIndex;->getStart()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/lang/String;

    if-eqz v2, :cond_28

    iget-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 143
    .local v0, "result":I
    :goto_b
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/lang/String;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int v0, v3, v2

    .line 144
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    if-eqz v3, :cond_25

    iget-object v1, p0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_25
    add-int v0, v2, v1

    .line 145
    return v0

    .end local v0    # "result":I
    :cond_28
    move v0, v1

    .line 142
    goto :goto_b

    .restart local v0    # "result":I
    :cond_2a
    move v2, v1

    .line 143
    goto :goto_17
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URLEntityJSONImpl{url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expandedURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
