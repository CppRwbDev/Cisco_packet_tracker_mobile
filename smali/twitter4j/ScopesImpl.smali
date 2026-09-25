.class public Ltwitter4j/ScopesImpl;
.super Ljava/lang/Object;
.source "ScopesImpl.java"

# interfaces
.implements Ltwitter4j/Scopes;


# instance fields
.field private final placeIds:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 2
    .param p1, "placeIds"    # [Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Ltwitter4j/ScopesImpl;->placeIds:[Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getPlaceIds()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Ltwitter4j/ScopesImpl;->placeIds:[Ljava/lang/String;

    return-object v0
.end method
