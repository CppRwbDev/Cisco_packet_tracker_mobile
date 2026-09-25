.class Ltwitter4j/ResponseListImpl;
.super Ljava/util/ArrayList;
.source "ResponseListImpl.java"

# interfaces
.implements Ltwitter4j/ResponseList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;",
        "Ltwitter4j/ResponseList",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7e5ed61656096958L


# instance fields
.field private transient accessLevel:I

.field private transient rateLimitStatus:Ltwitter4j/RateLimitStatus;


# direct methods
.method constructor <init>(ILtwitter4j/HttpResponse;)V
    .registers 4
    .param p1, "size"    # I
    .param p2, "res"    # Ltwitter4j/HttpResponse;

    .prologue
    .line 36
    .local p0, "this":Ltwitter4j/ResponseListImpl;, "Ltwitter4j/ResponseListImpl<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/ResponseListImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 37
    invoke-direct {p0, p2}, Ltwitter4j/ResponseListImpl;->init(Ltwitter4j/HttpResponse;)V

    .line 38
    return-void
.end method

.method constructor <init>(Ltwitter4j/HttpResponse;)V
    .registers 3
    .param p1, "res"    # Ltwitter4j/HttpResponse;

    .prologue
    .line 31
    .local p0, "this":Ltwitter4j/ResponseListImpl;, "Ltwitter4j/ResponseListImpl<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/ResponseListImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 32
    invoke-direct {p0, p1}, Ltwitter4j/ResponseListImpl;->init(Ltwitter4j/HttpResponse;)V

    .line 33
    return-void
.end method

.method constructor <init>(Ltwitter4j/RateLimitStatus;I)V
    .registers 4
    .param p1, "rateLimitStatus"    # Ltwitter4j/RateLimitStatus;
    .param p2, "accessLevel"    # I

    .prologue
    .line 41
    .local p0, "this":Ltwitter4j/ResponseListImpl;, "Ltwitter4j/ResponseListImpl<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/ResponseListImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 42
    iput-object p1, p0, Ltwitter4j/ResponseListImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 43
    iput p2, p0, Ltwitter4j/ResponseListImpl;->accessLevel:I

    .line 44
    return-void
.end method

.method private init(Ltwitter4j/HttpResponse;)V
    .registers 3
    .param p1, "res"    # Ltwitter4j/HttpResponse;

    .prologue
    .line 47
    .local p0, "this":Ltwitter4j/ResponseListImpl;, "Ltwitter4j/ResponseListImpl<TT;>;"
    invoke-static {p1}, Ltwitter4j/RateLimitStatusJSONImpl;->createFromResponseHeader(Ltwitter4j/HttpResponse;)Ltwitter4j/RateLimitStatus;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/ResponseListImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 48
    invoke-static {p1}, Ltwitter4j/ParseUtil;->toAccessLevel(Ltwitter4j/HttpResponse;)I

    move-result v0

    iput v0, p0, Ltwitter4j/ResponseListImpl;->accessLevel:I

    .line 49
    return-void
.end method


# virtual methods
.method public getAccessLevel()I
    .registers 2

    .prologue
    .line 64
    .local p0, "this":Ltwitter4j/ResponseListImpl;, "Ltwitter4j/ResponseListImpl<TT;>;"
    iget v0, p0, Ltwitter4j/ResponseListImpl;->accessLevel:I

    return v0
.end method

.method public getRateLimitStatus()Ltwitter4j/RateLimitStatus;
    .registers 2

    .prologue
    .line 56
    .local p0, "this":Ltwitter4j/ResponseListImpl;, "Ltwitter4j/ResponseListImpl<TT;>;"
    iget-object v0, p0, Ltwitter4j/ResponseListImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    return-object v0
.end method
