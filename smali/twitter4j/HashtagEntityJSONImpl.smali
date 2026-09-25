.class Ltwitter4j/HashtagEntityJSONImpl;
.super Ltwitter4j/EntityIndex;
.source "HashtagEntityJSONImpl.java"

# interfaces
.implements Ltwitter4j/HashtagEntity;
.implements Ltwitter4j/SymbolEntity;


# static fields
.field private static final serialVersionUID:J = -0x49ccb94b06a4978aL


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ltwitter4j/EntityIndex;-><init>()V

    .line 45
    return-void
.end method

.method constructor <init>(IILjava/lang/String;)V
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ltwitter4j/EntityIndex;-><init>()V

    .line 37
    invoke-virtual {p0, p1}, Ltwitter4j/HashtagEntityJSONImpl;->setStart(I)V

    .line 38
    invoke-virtual {p0, p2}, Ltwitter4j/HashtagEntityJSONImpl;->setEnd(I)V

    .line 39
    iput-object p3, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    .line 40
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
    .line 31
    invoke-direct {p0}, Ltwitter4j/EntityIndex;-><init>()V

    .line 32
    invoke-direct {p0, p1}, Ltwitter4j/HashtagEntityJSONImpl;->init(Ltwitter4j/JSONObject;)V

    .line 33
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
    .line 49
    :try_start_0
    const-string v2, "indices"

    invoke-virtual {p1, v2}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v0

    .line 50
    .local v0, "indicesArray":Ltwitter4j/JSONArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ltwitter4j/JSONArray;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Ltwitter4j/HashtagEntityJSONImpl;->setStart(I)V

    .line 51
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ltwitter4j/JSONArray;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Ltwitter4j/HashtagEntityJSONImpl;->setEnd(I)V

    .line 53
    const-string v2, "text"

    invoke-virtual {p1, v2}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 54
    const-string v2, "text"

    invoke-virtual {p1, v2}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;
    :try_end_26
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_26} :catch_27

    .line 59
    :cond_26
    return-void

    .line 56
    .end local v0    # "indicesArray":Ltwitter4j/JSONArray;
    :catch_27
    move-exception v1

    .line 57
    .local v1, "jsone":Ltwitter4j/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 87
    if-ne p0, p1, :cond_5

    .line 94
    :cond_4
    :goto_4
    return v1

    .line 88
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

    .line 90
    check-cast v0, Ltwitter4j/HashtagEntityJSONImpl;

    .line 92
    .local v0, "that":Ltwitter4j/HashtagEntityJSONImpl;
    iget-object v3, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    if-eqz v3, :cond_26

    iget-object v3, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_24
    move v1, v2

    goto :goto_4

    :cond_26
    iget-object v3, v0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_24
.end method

.method public getEnd()I
    .registers 2

    .prologue
    .line 82
    invoke-super {p0}, Ltwitter4j/EntityIndex;->getEnd()I

    move-result v0

    return v0
.end method

.method public getStart()I
    .registers 2

    .prologue
    .line 74
    invoke-super {p0}, Ltwitter4j/EntityIndex;->getStart()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

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
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HashtagEntityJSONImpl{text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
