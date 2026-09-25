.class public Ltwitter4j/SimilarPlacesImpl;
.super Ltwitter4j/ResponseListImpl;
.source "SimilarPlacesImpl.java"

# interfaces
.implements Ltwitter4j/SimilarPlaces;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltwitter4j/ResponseListImpl",
        "<",
        "Ltwitter4j/Place;",
        ">;",
        "Ltwitter4j/SimilarPlaces;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x33bccd3d7d47c6b5L


# instance fields
.field private final token:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/ResponseList;Ltwitter4j/HttpResponse;Ljava/lang/String;)V
    .registers 5
    .param p2, "res"    # Ltwitter4j/HttpResponse;
    .param p3, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Place;",
            ">;",
            "Ltwitter4j/HttpResponse;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "places":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Place;>;"
    invoke-interface {p1}, Ltwitter4j/ResponseList;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/HttpResponse;)V

    .line 31
    invoke-virtual {p0, p1}, Ltwitter4j/SimilarPlacesImpl;->addAll(Ljava/util/Collection;)Z

    .line 32
    iput-object p3, p0, Ltwitter4j/SimilarPlacesImpl;->token:Ljava/lang/String;

    .line 33
    return-void
.end method

.method static createSimilarPlaces(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/SimilarPlaces;
    .registers 8
    .param p0, "res"    # Ltwitter4j/HttpResponse;
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 47
    .local v0, "json":Ltwitter4j/JSONObject;
    :try_start_1
    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object v0

    .line 48
    const-string v3, "result"

    invoke-virtual {v0, v3}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v2

    .line 49
    .local v2, "result":Ltwitter4j/JSONObject;
    new-instance v3, Ltwitter4j/SimilarPlacesImpl;

    const-string v4, "places"

    invoke-virtual {v2, v4}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v4

    invoke-static {v4, p0, p1}, Ltwitter4j/PlaceJSONImpl;->createPlaceList(Ltwitter4j/JSONArray;Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v4

    const-string v5, "token"

    .line 50
    invoke-virtual {v2, v5}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, p0, v5}, Ltwitter4j/SimilarPlacesImpl;-><init>(Ltwitter4j/ResponseList;Ltwitter4j/HttpResponse;Ljava/lang/String;)V
    :try_end_20
    .catch Ltwitter4j/JSONException; {:try_start_1 .. :try_end_20} :catch_21

    return-object v3

    .line 51
    .end local v2    # "result":Ltwitter4j/JSONObject;
    :catch_21
    move-exception v1

    .line 52
    .local v1, "jsone":Ltwitter4j/JSONException;
    new-instance v3, Ltwitter4j/TwitterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ltwitter4j/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ltwitter4j/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public bridge synthetic getAccessLevel()I
    .registers 2

    .prologue
    .line 25
    invoke-super {p0}, Ltwitter4j/ResponseListImpl;->getAccessLevel()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getRateLimitStatus()Ltwitter4j/RateLimitStatus;
    .registers 2

    .prologue
    .line 25
    invoke-super {p0}, Ltwitter4j/ResponseListImpl;->getRateLimitStatus()Ltwitter4j/RateLimitStatus;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Ltwitter4j/SimilarPlacesImpl;->token:Ljava/lang/String;

    return-object v0
.end method
