.class public final Ltwitter4j/HttpClientFactory;
.super Ljava/lang/Object;
.source "HttpClientFactory.java"


# static fields
.field private static final HTTP_CLIENT_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

.field private static final HTTP_CLIENT_IMPLEMENTATION:Ljava/lang/String; = "twitter4j.http.httpClient"

.field private static final confClientMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ltwitter4j/HttpClientConfiguration;",
            "Ltwitter4j/HttpClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 36
    .local v0, "clazz":Ljava/lang/Class;
    const-string v4, "twitter4j.http.httpClient"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "httpClientImpl":Ljava/lang/String;
    if-eqz v2, :cond_d

    .line 39
    :try_start_9
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_c} :catch_41

    move-result-object v0

    .line 43
    :cond_d
    :goto_d
    if-nez v0, :cond_15

    .line 45
    :try_start_f
    const-string v4, "twitter4j.AlternativeHttpClientImpl"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_14
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_14} :catch_43

    move-result-object v0

    .line 49
    :cond_15
    :goto_15
    if-nez v0, :cond_1d

    .line 51
    :try_start_17
    const-string v4, "twitter4j.HttpClientImpl"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_1c} :catch_33

    move-result-object v0

    .line 57
    :cond_1d
    const/4 v4, 0x1

    :try_start_1e
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ltwitter4j/HttpClientConfiguration;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    sput-object v4, Ltwitter4j/HttpClientFactory;->HTTP_CLIENT_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    :try_end_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1e .. :try_end_2b} :catch_3a

    .line 63
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Ltwitter4j/HttpClientFactory;->confClientMap:Ljava/util/HashMap;

    return-void

    .line 52
    :catch_33
    move-exception v1

    .line 53
    .local v1, "cnfe":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 58
    .end local v1    # "cnfe":Ljava/lang/ClassNotFoundException;
    :catch_3a
    move-exception v3

    .line 59
    .local v3, "nsme":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 40
    .end local v3    # "nsme":Ljava/lang/NoSuchMethodException;
    :catch_41
    move-exception v4

    goto :goto_d

    .line 46
    :catch_43
    move-exception v4

    goto :goto_15
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Ltwitter4j/HttpClient;
    .registers 1

    .prologue
    .line 66
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-interface {v0}, Ltwitter4j/conf/Configuration;->getHttpClientConfiguration()Ltwitter4j/HttpClientConfiguration;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/HttpClientFactory;->getInstance(Ltwitter4j/HttpClientConfiguration;)Ltwitter4j/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ltwitter4j/HttpClientConfiguration;)Ltwitter4j/HttpClient;
    .registers 7
    .param p0, "conf"    # Ltwitter4j/HttpClientConfiguration;

    .prologue
    .line 70
    sget-object v3, Ltwitter4j/HttpClientFactory;->confClientMap:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/HttpClient;

    .line 72
    .local v1, "client":Ltwitter4j/HttpClient;
    if-nez v1, :cond_1f

    .line 73
    :try_start_a
    sget-object v3, Ltwitter4j/HttpClientFactory;->HTTP_CLIENT_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ltwitter4j/HttpClient;

    move-object v1, v0

    .line 74
    sget-object v3, Ltwitter4j/HttpClientFactory;->confClientMap:Ljava/util/HashMap;

    invoke-virtual {v3, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/InstantiationException; {:try_start_a .. :try_end_1f} :catch_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_1f} :catch_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_1f} :catch_2e

    .line 83
    :cond_1f
    return-object v1

    .line 76
    :catch_20
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 78
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_27
    move-exception v2

    .line 79
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 80
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2e
    move-exception v2

    .line 81
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method
