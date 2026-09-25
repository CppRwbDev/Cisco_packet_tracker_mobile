.class public Ltwitter4j/auth/OAuth2Token;
.super Ljava/lang/Object;
.source "OAuth2Token.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7cb268ce5538dff0L


# instance fields
.field private accessToken:Ljava/lang/String;

.field private tokenType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "tokenType"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Ltwitter4j/auth/OAuth2Token;->tokenType:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Ltwitter4j/auth/OAuth2Token;->accessToken:Ljava/lang/String;

    .line 48
    return-void
.end method

.method constructor <init>(Ltwitter4j/HttpResponse;)V
    .registers 5
    .param p1, "res"    # Ltwitter4j/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object v0

    .line 38
    .local v0, "json":Ltwitter4j/JSONObject;
    const-string v1, "token_type"

    invoke-static {v1, v0}, Ltwitter4j/auth/OAuth2Token;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/auth/OAuth2Token;->tokenType:Ljava/lang/String;

    .line 40
    :try_start_f
    const-string v1, "access_token"

    invoke-static {v1, v0}, Ltwitter4j/auth/OAuth2Token;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/auth/OAuth2Token;->accessToken:Ljava/lang/String;
    :try_end_1d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_1d} :catch_1e

    .line 43
    :goto_1d
    return-void

    .line 41
    :catch_1e
    move-exception v1

    goto :goto_1d
.end method

.method private static getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "json"    # Ltwitter4j/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 101
    :try_start_1
    invoke-virtual {p1, p0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 107
    :goto_7
    return-object v1

    .line 104
    :cond_8
    invoke-virtual {p1, p0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ltwitter4j/JSONException; {:try_start_1 .. :try_end_b} :catch_d

    move-result-object v1

    goto :goto_7

    .line 106
    :catch_d
    move-exception v0

    .line 107
    .local v0, "jsone":Ltwitter4j/JSONException;
    goto :goto_7
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 69
    if-eqz p1, :cond_7

    instance-of v2, p1, Ltwitter4j/auth/OAuth2Token;

    if-nez v2, :cond_8

    .line 81
    :cond_7
    :goto_7
    return v1

    :cond_8
    move-object v0, p1

    .line 73
    check-cast v0, Ltwitter4j/auth/OAuth2Token;

    .line 74
    .local v0, "that":Ltwitter4j/auth/OAuth2Token;
    iget-object v2, p0, Ltwitter4j/auth/OAuth2Token;->tokenType:Ljava/lang/String;

    if-eqz v2, :cond_29

    iget-object v2, p0, Ltwitter4j/auth/OAuth2Token;->tokenType:Ljava/lang/String;

    iget-object v3, v0, Ltwitter4j/auth/OAuth2Token;->tokenType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 77
    :cond_19
    iget-object v2, p0, Ltwitter4j/auth/OAuth2Token;->accessToken:Ljava/lang/String;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Ltwitter4j/auth/OAuth2Token;->accessToken:Ljava/lang/String;

    iget-object v3, v0, Ltwitter4j/auth/OAuth2Token;->accessToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 81
    :cond_27
    const/4 v1, 0x1

    goto :goto_7

    .line 74
    :cond_29
    iget-object v2, v0, Ltwitter4j/auth/OAuth2Token;->tokenType:Ljava/lang/String;

    if-eqz v2, :cond_19

    goto :goto_7

    .line 77
    :cond_2e
    iget-object v2, v0, Ltwitter4j/auth/OAuth2Token;->accessToken:Ljava/lang/String;

    if-eqz v2, :cond_27

    goto :goto_7
.end method

.method generateAuthorizationHeader()Ljava/lang/String;
    .registers 4

    .prologue
    .line 59
    const-string v0, ""

    .line 61
    .local v0, "encoded":Ljava/lang/String;
    :try_start_2
    iget-object v1, p0, Ltwitter4j/auth/OAuth2Token;->accessToken:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_9} :catch_1e

    move-result-object v0

    .line 64
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 62
    :catch_1e
    move-exception v1

    goto :goto_a
.end method

.method public getAccessToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Ltwitter4j/auth/OAuth2Token;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Ltwitter4j/auth/OAuth2Token;->tokenType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 86
    iget-object v2, p0, Ltwitter4j/auth/OAuth2Token;->tokenType:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Ltwitter4j/auth/OAuth2Token;->tokenType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 87
    .local v0, "result":I
    :goto_b
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/auth/OAuth2Token;->accessToken:Ljava/lang/String;

    if-eqz v3, :cond_17

    iget-object v1, p0, Ltwitter4j/auth/OAuth2Token;->accessToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_17
    add-int v0, v2, v1

    .line 88
    return v0

    .end local v0    # "result":I
    :cond_1a
    move v0, v1

    .line 86
    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OAuth2Token{tokenType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/auth/OAuth2Token;->tokenType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accessToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/auth/OAuth2Token;->accessToken:Ljava/lang/String;

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
