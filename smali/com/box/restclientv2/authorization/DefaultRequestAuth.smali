.class public abstract Lcom/box/restclientv2/authorization/DefaultRequestAuth;
.super Ljava/lang/Object;
.source "DefaultRequestAuth.java"

# interfaces
.implements Lcom/box/restclientv2/authorization/IBoxRequestAuth;


# static fields
.field public static final AUTH_HEADER_NAME:Ljava/lang/String; = "Authorization"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setAuth(Lcom/box/restclientv2/requestsbase/IBoxRequest;)V
    .registers 5
    .param p1, "request"    # Lcom/box/restclientv2/requestsbase/IBoxRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation

    .prologue
    .line 17
    instance-of v0, p1, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;

    if-nez v0, :cond_35

    .line 18
    new-instance v0, Lcom/box/restclientv2/exceptions/BoxRestException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "class does not match, expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/box/restclientv2/requestsbase/DefaultBoxRequest;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";current:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/box/restclientv2/exceptions/BoxRestException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_35
    return-void
.end method
