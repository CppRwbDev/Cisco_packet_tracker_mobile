.class public final Ltwitter4j/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final NULL_PARAMETERS:[Ltwitter4j/HttpParameter;

.field private static final serialVersionUID:J = 0x2eb4a519dbc50ddcL


# instance fields
.field private final authorization:Ltwitter4j/auth/Authorization;

.field private final method:Ltwitter4j/RequestMethod;

.field private final parameters:[Ltwitter4j/HttpParameter;

.field private final requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const/4 v0, 0x0

    new-array v0, v0, [Ltwitter4j/HttpParameter;

    sput-object v0, Ltwitter4j/HttpRequest;->NULL_PARAMETERS:[Ltwitter4j/HttpParameter;

    return-void
.end method

.method public constructor <init>(Ltwitter4j/RequestMethod;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V
    .registers 8
    .param p1, "method"    # Ltwitter4j/RequestMethod;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "parameters"    # [Ltwitter4j/HttpParameter;
    .param p4, "authorization"    # Ltwitter4j/auth/Authorization;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/RequestMethod;",
            "Ljava/lang/String;",
            "[",
            "Ltwitter4j/HttpParameter;",
            "Ltwitter4j/auth/Authorization;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p5, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Ltwitter4j/HttpRequest;->method:Ltwitter4j/RequestMethod;

    .line 55
    sget-object v0, Ltwitter4j/RequestMethod;->POST:Ltwitter4j/RequestMethod;

    if-eq p1, v0, :cond_34

    if-eqz p3, :cond_34

    array-length v0, p3

    if-eqz v0, :cond_34

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ltwitter4j/HttpParameter;->encodeParameters([Ltwitter4j/HttpParameter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/HttpRequest;->url:Ljava/lang/String;

    .line 57
    sget-object v0, Ltwitter4j/HttpRequest;->NULL_PARAMETERS:[Ltwitter4j/HttpParameter;

    iput-object v0, p0, Ltwitter4j/HttpRequest;->parameters:[Ltwitter4j/HttpParameter;

    .line 62
    :goto_2f
    iput-object p4, p0, Ltwitter4j/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    .line 63
    iput-object p5, p0, Ltwitter4j/HttpRequest;->requestHeaders:Ljava/util/Map;

    .line 64
    return-void

    .line 59
    :cond_34
    iput-object p2, p0, Ltwitter4j/HttpRequest;->url:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Ltwitter4j/HttpRequest;->parameters:[Ltwitter4j/HttpParameter;

    goto :goto_2f
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    if-ne p0, p1, :cond_5

    .line 103
    :cond_4
    :goto_4
    return v1

    .line 89
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

    .line 91
    check-cast v0, Ltwitter4j/HttpRequest;

    .line 93
    .local v0, "that":Ltwitter4j/HttpRequest;
    iget-object v3, p0, Ltwitter4j/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    if-eqz v3, :cond_26

    iget-object v3, p0, Ltwitter4j/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    iget-object v4, v0, Ltwitter4j/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    :cond_24
    move v1, v2

    .line 94
    goto :goto_4

    .line 93
    :cond_26
    iget-object v3, v0, Ltwitter4j/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    if-nez v3, :cond_24

    .line 95
    :cond_2a
    iget-object v3, p0, Ltwitter4j/HttpRequest;->parameters:[Ltwitter4j/HttpParameter;

    iget-object v4, v0, Ltwitter4j/HttpRequest;->parameters:[Ltwitter4j/HttpParameter;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    move v1, v2

    goto :goto_4

    .line 96
    :cond_36
    iget-object v3, p0, Ltwitter4j/HttpRequest;->requestHeaders:Ljava/util/Map;

    if-eqz v3, :cond_46

    iget-object v3, p0, Ltwitter4j/HttpRequest;->requestHeaders:Ljava/util/Map;

    iget-object v4, v0, Ltwitter4j/HttpRequest;->requestHeaders:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    :cond_44
    move v1, v2

    .line 97
    goto :goto_4

    .line 96
    :cond_46
    iget-object v3, v0, Ltwitter4j/HttpRequest;->requestHeaders:Ljava/util/Map;

    if-nez v3, :cond_44

    .line 98
    :cond_4a
    iget-object v3, p0, Ltwitter4j/HttpRequest;->method:Ltwitter4j/RequestMethod;

    if-eqz v3, :cond_5a

    iget-object v3, p0, Ltwitter4j/HttpRequest;->method:Ltwitter4j/RequestMethod;

    iget-object v4, v0, Ltwitter4j/HttpRequest;->method:Ltwitter4j/RequestMethod;

    invoke-virtual {v3, v4}, Ltwitter4j/RequestMethod;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    :cond_58
    move v1, v2

    .line 99
    goto :goto_4

    .line 98
    :cond_5a
    iget-object v3, v0, Ltwitter4j/HttpRequest;->method:Ltwitter4j/RequestMethod;

    if-nez v3, :cond_58

    .line 100
    :cond_5e
    iget-object v3, p0, Ltwitter4j/HttpRequest;->url:Ljava/lang/String;

    if-eqz v3, :cond_6e

    iget-object v3, p0, Ltwitter4j/HttpRequest;->url:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/HttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_6c
    move v1, v2

    .line 101
    goto :goto_4

    .line 100
    :cond_6e
    iget-object v3, v0, Ltwitter4j/HttpRequest;->url:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_6c
.end method

.method public getAuthorization()Ltwitter4j/auth/Authorization;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Ltwitter4j/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    return-object v0
.end method

.method public getMethod()Ltwitter4j/RequestMethod;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Ltwitter4j/HttpRequest;->method:Ltwitter4j/RequestMethod;

    return-object v0
.end method

.method public getParameters()[Ltwitter4j/HttpParameter;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Ltwitter4j/HttpRequest;->parameters:[Ltwitter4j/HttpParameter;

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Ltwitter4j/HttpRequest;->requestHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Ltwitter4j/HttpRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v2, p0, Ltwitter4j/HttpRequest;->method:Ltwitter4j/RequestMethod;

    if-eqz v2, :cond_44

    iget-object v2, p0, Ltwitter4j/HttpRequest;->method:Ltwitter4j/RequestMethod;

    invoke-virtual {v2}, Ltwitter4j/RequestMethod;->hashCode()I

    move-result v0

    .line 109
    .local v0, "result":I
    :goto_b
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/HttpRequest;->url:Ljava/lang/String;

    if-eqz v2, :cond_46

    iget-object v2, p0, Ltwitter4j/HttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int v0, v3, v2

    .line 110
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/HttpRequest;->parameters:[Ltwitter4j/HttpParameter;

    if-eqz v2, :cond_48

    iget-object v2, p0, Ltwitter4j/HttpRequest;->parameters:[Ltwitter4j/HttpParameter;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    :goto_25
    add-int v0, v3, v2

    .line 111
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    if-eqz v2, :cond_4a

    iget-object v2, p0, Ltwitter4j/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_33
    add-int v0, v3, v2

    .line 112
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/HttpRequest;->requestHeaders:Ljava/util/Map;

    if-eqz v3, :cond_41

    iget-object v1, p0, Ltwitter4j/HttpRequest;->requestHeaders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    :cond_41
    add-int v0, v2, v1

    .line 113
    return v0

    .end local v0    # "result":I
    :cond_44
    move v0, v1

    .line 108
    goto :goto_b

    .restart local v0    # "result":I
    :cond_46
    move v2, v1

    .line 109
    goto :goto_17

    :cond_48
    move v2, v1

    .line 110
    goto :goto_25

    :cond_4a
    move v2, v1

    .line 111
    goto :goto_33
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpRequest{requestMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HttpRequest;->method:Ltwitter4j/RequestMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", postParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Ltwitter4j/HttpRequest;->parameters:[Ltwitter4j/HttpParameter;

    if-nez v0, :cond_55

    const/4 v0, 0x0

    .line 121
    :goto_2e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authentication="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HttpRequest;->requestHeaders:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 118
    :cond_55
    iget-object v0, p0, Ltwitter4j/HttpRequest;->parameters:[Ltwitter4j/HttpParameter;

    .line 121
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_2e
.end method
