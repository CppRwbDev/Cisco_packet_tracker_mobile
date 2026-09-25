.class Ltwitter4j/TwitterAPIConfigurationJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "TwitterAPIConfigurationJSONImpl.java"

# interfaces
.implements Ltwitter4j/TwitterAPIConfiguration;


# static fields
.field private static final serialVersionUID:J = -0x31ce59ac93ba9d46L


# instance fields
.field private charactersReservedPerMedia:I

.field private maxMediaPerUpload:I

.field private nonUsernamePaths:[Ljava/lang/String;

.field private photoSizeLimit:I

.field private photoSizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ltwitter4j/MediaEntity$Size;",
            ">;"
        }
    .end annotation
.end field

.field private shortURLLength:I

.field private shortURLLengthHttps:I


# direct methods
.method constructor <init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .registers 13
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .param p2, "conf"    # Ltwitter4j/conf/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/HttpResponse;)V

    .line 43
    :try_start_3
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object v1

    .line 44
    .local v1, "json":Ltwitter4j/JSONObject;
    const-string v6, "photo_size_limit"

    invoke-static {v6, v1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v6

    iput v6, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizeLimit:I

    .line 45
    const-string v6, "short_url_length"

    invoke-static {v6, v1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v6

    iput v6, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLength:I

    .line 46
    const-string v6, "short_url_length_https"

    invoke-static {v6, v1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v6

    iput v6, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLengthHttps:I

    .line 47
    const-string v6, "characters_reserved_per_media"

    invoke-static {v6, v1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v6

    iput v6, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->charactersReservedPerMedia:I

    .line 49
    const-string v6, "photo_sizes"

    invoke-virtual {v1, v6}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v5

    .line 50
    .local v5, "sizes":Ltwitter4j/JSONObject;
    new-instance v6, Ljava/util/HashMap;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    iput-object v6, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    .line 51
    iget-object v6, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    sget-object v7, Ltwitter4j/MediaEntity$Size;->LARGE:Ljava/lang/Integer;

    new-instance v8, Ltwitter4j/MediaEntityJSONImpl$Size;

    const-string v9, "large"

    invoke-virtual {v5, v9}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v9

    invoke-direct {v8, v9}, Ltwitter4j/MediaEntityJSONImpl$Size;-><init>(Ltwitter4j/JSONObject;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v6, "med"

    invoke-virtual {v5, v6}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b5

    .line 55
    const-string v6, "medium"

    invoke-virtual {v5, v6}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v3

    .line 59
    .local v3, "medium":Ltwitter4j/JSONObject;
    :goto_55
    iget-object v6, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    sget-object v7, Ltwitter4j/MediaEntity$Size;->MEDIUM:Ljava/lang/Integer;

    new-instance v8, Ltwitter4j/MediaEntityJSONImpl$Size;

    invoke-direct {v8, v3}, Ltwitter4j/MediaEntityJSONImpl$Size;-><init>(Ltwitter4j/JSONObject;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v6, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    sget-object v7, Ltwitter4j/MediaEntity$Size;->SMALL:Ljava/lang/Integer;

    new-instance v8, Ltwitter4j/MediaEntityJSONImpl$Size;

    const-string v9, "small"

    invoke-virtual {v5, v9}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v9

    invoke-direct {v8, v9}, Ltwitter4j/MediaEntityJSONImpl$Size;-><init>(Ltwitter4j/JSONObject;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v6, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    sget-object v7, Ltwitter4j/MediaEntity$Size;->THUMB:Ljava/lang/Integer;

    new-instance v8, Ltwitter4j/MediaEntityJSONImpl$Size;

    const-string v9, "thumb"

    invoke-virtual {v5, v9}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v9

    invoke-direct {v8, v9}, Ltwitter4j/MediaEntityJSONImpl$Size;-><init>(Ltwitter4j/JSONObject;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v6

    if-eqz v6, :cond_95

    .line 63
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 64
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object v6

    invoke-static {p0, v6}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_95
    const-string v6, "non_username_paths"

    invoke-virtual {v1, v6}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v4

    .line 67
    .local v4, "nonUsernamePathsJSONArray":Ltwitter4j/JSONArray;
    invoke-virtual {v4}, Ltwitter4j/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a4
    invoke-virtual {v4}, Ltwitter4j/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_bc

    .line 69
    iget-object v6, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    invoke-virtual {v4, v0}, Ltwitter4j/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_a4

    .line 57
    .end local v0    # "i":I
    .end local v3    # "medium":Ltwitter4j/JSONObject;
    .end local v4    # "nonUsernamePathsJSONArray":Ltwitter4j/JSONArray;
    :cond_b5
    const-string v6, "med"

    invoke-virtual {v5, v6}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v3

    .restart local v3    # "medium":Ltwitter4j/JSONObject;
    goto :goto_55

    .line 71
    .restart local v0    # "i":I
    .restart local v4    # "nonUsernamePathsJSONArray":Ltwitter4j/JSONArray;
    :cond_bc
    const-string v6, "max_media_per_upload"

    invoke-static {v6, v1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v6

    iput v6, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->maxMediaPerUpload:I
    :try_end_c4
    .catch Ltwitter4j/JSONException; {:try_start_3 .. :try_end_c4} :catch_c5

    .line 75
    return-void

    .line 72
    .end local v0    # "i":I
    .end local v1    # "json":Ltwitter4j/JSONObject;
    .end local v3    # "medium":Ltwitter4j/JSONObject;
    .end local v4    # "nonUsernamePathsJSONArray":Ltwitter4j/JSONArray;
    .end local v5    # "sizes":Ltwitter4j/JSONObject;
    :catch_c5
    move-exception v2

    .line 73
    .local v2, "jsone":Ltwitter4j/JSONException;
    new-instance v6, Ltwitter4j/TwitterException;

    invoke-direct {v6, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    if-ne p0, p1, :cond_5

    .line 151
    :cond_4
    :goto_4
    return v1

    .line 136
    :cond_5
    instance-of v3, p1, Ltwitter4j/TwitterAPIConfigurationJSONImpl;

    if-nez v3, :cond_b

    move v1, v2

    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 138
    check-cast v0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;

    .line 140
    .local v0, "that":Ltwitter4j/TwitterAPIConfigurationJSONImpl;
    iget v3, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->charactersReservedPerMedia:I

    iget v4, v0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->charactersReservedPerMedia:I

    if-eq v3, v4, :cond_16

    move v1, v2

    .line 141
    goto :goto_4

    .line 142
    :cond_16
    iget v3, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->maxMediaPerUpload:I

    iget v4, v0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->maxMediaPerUpload:I

    if-eq v3, v4, :cond_1e

    move v1, v2

    goto :goto_4

    .line 143
    :cond_1e
    iget v3, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizeLimit:I

    iget v4, v0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizeLimit:I

    if-eq v3, v4, :cond_26

    move v1, v2

    goto :goto_4

    .line 144
    :cond_26
    iget v3, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLength:I

    iget v4, v0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLength:I

    if-eq v3, v4, :cond_2e

    move v1, v2

    goto :goto_4

    .line 145
    :cond_2e
    iget v3, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLengthHttps:I

    iget v4, v0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLengthHttps:I

    if-eq v3, v4, :cond_36

    move v1, v2

    goto :goto_4

    .line 146
    :cond_36
    iget-object v3, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    move v1, v2

    .line 147
    goto :goto_4

    .line 148
    :cond_42
    iget-object v3, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    if-eqz v3, :cond_52

    iget-object v3, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    iget-object v4, v0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_50
    move v1, v2

    .line 149
    goto :goto_4

    .line 148
    :cond_52
    iget-object v3, v0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    if-eqz v3, :cond_4

    goto :goto_50
.end method

.method public getCharactersReservedPerMedia()I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->charactersReservedPerMedia:I

    return v0
.end method

.method public getMaxMediaPerUpload()I
    .registers 2

    .prologue
    .line 130
    iget v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->maxMediaPerUpload:I

    return v0
.end method

.method public getNonUsernamePaths()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoSizeLimit()I
    .registers 2

    .prologue
    .line 82
    iget v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizeLimit:I

    return v0
.end method

.method public getPhotoSizes()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ltwitter4j/MediaEntity$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    return-object v0
.end method

.method public getShortURLLength()I
    .registers 2

    .prologue
    .line 90
    iget v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLength:I

    return v0
.end method

.method public getShortURLLengthHttps()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLengthHttps:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 156
    iget v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizeLimit:I

    .line 157
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLength:I

    add-int v0, v1, v3

    .line 158
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLengthHttps:I

    add-int v0, v1, v3

    .line 159
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->charactersReservedPerMedia:I

    add-int v0, v1, v3

    .line 160
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    if-eqz v1, :cond_38

    iget-object v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    :goto_21
    add-int v0, v3, v1

    .line 161
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    if-eqz v3, :cond_2f

    iget-object v2, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    :cond_2f
    add-int v0, v1, v2

    .line 162
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->maxMediaPerUpload:I

    add-int v0, v1, v2

    .line 163
    return v0

    :cond_38
    move v1, v2

    .line 160
    goto :goto_21
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TwitterAPIConfigurationJSONImpl{photoSizeLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizeLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shortURLLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shortURLLengthHttps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLengthHttps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", charactersReservedPerMedia="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->charactersReservedPerMedia:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", photoSizes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nonUsernamePaths="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    if-nez v0, :cond_67

    const/4 v0, 0x0

    .line 174
    :goto_4c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxMediaPerUpload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->maxMediaPerUpload:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 168
    :cond_67
    iget-object v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    .line 174
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_4c
.end method
