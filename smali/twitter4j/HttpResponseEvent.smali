.class public final Ltwitter4j/HttpResponseEvent;
.super Ljava/lang/Object;
.source "HttpResponseEvent.java"


# instance fields
.field private final request:Ltwitter4j/HttpRequest;

.field private final response:Ltwitter4j/HttpResponse;

.field private final twitterException:Ltwitter4j/TwitterException;


# direct methods
.method constructor <init>(Ltwitter4j/HttpRequest;Ltwitter4j/HttpResponse;Ltwitter4j/TwitterException;)V
    .registers 4
    .param p1, "request"    # Ltwitter4j/HttpRequest;
    .param p2, "response"    # Ltwitter4j/HttpResponse;
    .param p3, "te"    # Ltwitter4j/TwitterException;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    .line 33
    iput-object p2, p0, Ltwitter4j/HttpResponseEvent;->response:Ltwitter4j/HttpResponse;

    .line 34
    iput-object p3, p0, Ltwitter4j/HttpResponseEvent;->twitterException:Ltwitter4j/TwitterException;

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    if-ne p0, p1, :cond_5

    .line 80
    :cond_4
    :goto_4
    return v1

    .line 71
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

    .line 73
    check-cast v0, Ltwitter4j/HttpResponseEvent;

    .line 75
    .local v0, "that":Ltwitter4j/HttpResponseEvent;
    iget-object v3, p0, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    if-eqz v3, :cond_26

    iget-object v3, p0, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    iget-object v4, v0, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    invoke-virtual {v3, v4}, Ltwitter4j/HttpRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    :cond_24
    move v1, v2

    .line 76
    goto :goto_4

    .line 75
    :cond_26
    iget-object v3, v0, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    if-nez v3, :cond_24

    .line 77
    :cond_2a
    iget-object v3, p0, Ltwitter4j/HttpResponseEvent;->response:Ltwitter4j/HttpResponse;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Ltwitter4j/HttpResponseEvent;->response:Ltwitter4j/HttpResponse;

    iget-object v4, v0, Ltwitter4j/HttpResponseEvent;->response:Ltwitter4j/HttpResponse;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_38
    move v1, v2

    .line 78
    goto :goto_4

    .line 77
    :cond_3a
    iget-object v3, v0, Ltwitter4j/HttpResponseEvent;->response:Ltwitter4j/HttpResponse;

    if-eqz v3, :cond_4

    goto :goto_38
.end method

.method public getRequest()Ltwitter4j/HttpRequest;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    return-object v0
.end method

.method public getResponse()Ltwitter4j/HttpResponse;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Ltwitter4j/HttpResponseEvent;->response:Ltwitter4j/HttpResponse;

    return-object v0
.end method

.method public getTwitterException()Ltwitter4j/TwitterException;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Ltwitter4j/HttpResponseEvent;->twitterException:Ltwitter4j/TwitterException;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v2, p0, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    invoke-virtual {v2}, Ltwitter4j/HttpRequest;->hashCode()I

    move-result v0

    .line 86
    .local v0, "result":I
    :goto_b
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/HttpResponseEvent;->response:Ltwitter4j/HttpResponse;

    if-eqz v3, :cond_17

    iget-object v1, p0, Ltwitter4j/HttpResponseEvent;->response:Ltwitter4j/HttpResponse;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_17
    add-int v0, v2, v1

    .line 87
    return v0

    .end local v0    # "result":I
    :cond_1a
    move v0, v1

    .line 85
    goto :goto_b
.end method

.method public isAuthenticated()Z
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    invoke-virtual {v0}, Ltwitter4j/HttpRequest;->getAuthorization()Ltwitter4j/auth/Authorization;

    move-result-object v0

    invoke-interface {v0}, Ltwitter4j/auth/Authorization;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpResponseEvent{request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HttpResponseEvent;->response:Ltwitter4j/HttpResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
