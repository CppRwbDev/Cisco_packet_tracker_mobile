.class public final Ltwitter4j/TwitterFactory;
.super Ljava/lang/Object;
.source "TwitterFactory.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final DEFAULT_AUTHORIZATION:Ltwitter4j/auth/Authorization;

.field private static final SINGLETON:Ltwitter4j/Twitter;

.field private static final TWITTER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/Twitter;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x7d3ac09ed45ed66L


# instance fields
.field private final conf:Ltwitter4j/conf/Configuration;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    .line 39
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v7

    invoke-static {v7}, Ltwitter4j/auth/AuthorizationFactory;->getInstance(Ltwitter4j/conf/Configuration;)Ltwitter4j/auth/Authorization;

    move-result-object v7

    sput-object v7, Ltwitter4j/TwitterFactory;->DEFAULT_AUTHORIZATION:Ltwitter4j/auth/Authorization;

    .line 49
    :try_start_a
    const-string v7, "com.google.appengine.api.urlfetch.URLFetchService"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_f} :catch_51

    .line 50
    const/4 v6, 0x1

    .line 55
    .local v6, "gaeDetected":Z
    :goto_10
    const/4 v1, 0x0

    .line 56
    .local v1, "className":Ljava/lang/String;
    if-eqz v6, :cond_1c

    .line 57
    const-string v0, "twitter4j.AppEngineTwitterImpl"

    .line 59
    .local v0, "APP_ENGINE_TWITTER_IMPL":Ljava/lang/String;
    :try_start_15
    const-string v7, "twitter4j.AppEngineTwitterImpl"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 60
    const-string v1, "twitter4j.AppEngineTwitterImpl"
    :try_end_1c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_15 .. :try_end_1c} :catch_77

    .line 64
    .end local v0    # "APP_ENGINE_TWITTER_IMPL":Ljava/lang/String;
    :cond_1c
    :goto_1c
    if-nez v1, :cond_20

    .line 65
    const-string v1, "twitter4j.TwitterImpl"

    .line 70
    :cond_20
    :try_start_20
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 71
    .local v2, "clazz":Ljava/lang/Class;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ltwitter4j/conf/Configuration;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ltwitter4j/auth/Authorization;

    aput-object v9, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_34
    .catch Ljava/lang/NoSuchMethodException; {:try_start_20 .. :try_end_34} :catch_54
    .catch Ljava/lang/ClassNotFoundException; {:try_start_20 .. :try_end_34} :catch_5b

    move-result-object v4

    .line 77
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ltwitter4j/Twitter;>;"
    sput-object v4, Ltwitter4j/TwitterFactory;->TWITTER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    .line 80
    :try_start_37
    sget-object v7, Ltwitter4j/TwitterFactory;->TWITTER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ltwitter4j/TwitterFactory;->DEFAULT_AUTHORIZATION:Ltwitter4j/auth/Authorization;

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltwitter4j/Twitter;

    sput-object v7, Ltwitter4j/TwitterFactory;->SINGLETON:Ltwitter4j/Twitter;
    :try_end_50
    .catch Ljava/lang/InstantiationException; {:try_start_37 .. :try_end_50} :catch_62
    .catch Ljava/lang/IllegalAccessException; {:try_start_37 .. :try_end_50} :catch_69
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_37 .. :try_end_50} :catch_70

    .line 88
    return-void

    .line 51
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ltwitter4j/Twitter;>;"
    .end local v6    # "gaeDetected":Z
    :catch_51
    move-exception v3

    .line 52
    .local v3, "cnfe":Ljava/lang/ClassNotFoundException;
    const/4 v6, 0x0

    .restart local v6    # "gaeDetected":Z
    goto :goto_10

    .line 72
    .end local v3    # "cnfe":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "className":Ljava/lang/String;
    :catch_54
    move-exception v5

    .line 73
    .local v5, "e":Ljava/lang/NoSuchMethodException;
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 74
    .end local v5    # "e":Ljava/lang/NoSuchMethodException;
    :catch_5b
    move-exception v5

    .line 75
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 81
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "clazz":Ljava/lang/Class;
    .restart local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ltwitter4j/Twitter;>;"
    :catch_62
    move-exception v5

    .line 82
    .local v5, "e":Ljava/lang/InstantiationException;
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 83
    .end local v5    # "e":Ljava/lang/InstantiationException;
    :catch_69
    move-exception v5

    .line 84
    .local v5, "e":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 85
    .end local v5    # "e":Ljava/lang/IllegalAccessException;
    :catch_70
    move-exception v5

    .line 86
    .local v5, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 61
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ltwitter4j/Twitter;>;"
    .end local v5    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v0    # "APP_ENGINE_TWITTER_IMPL":Ljava/lang/String;
    :catch_77
    move-exception v7

    goto :goto_1c
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 94
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "configTreePath"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-static {p1}, Ltwitter4j/conf/ConfigurationContext;->getInstance(Ljava/lang/String;)Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Ltwitter4j/conf/Configuration;)V
    .registers 4
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    if-nez p1, :cond_d

    .line 105
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "configuration cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_d
    iput-object p1, p0, Ltwitter4j/TwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    .line 108
    return-void
.end method

.method public static getSingleton()Ltwitter4j/Twitter;
    .registers 1

    .prologue
    .line 167
    sget-object v0, Ltwitter4j/TwitterFactory;->SINGLETON:Ltwitter4j/Twitter;

    return-object v0
.end method


# virtual methods
.method public getInstance()Ltwitter4j/Twitter;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Ltwitter4j/TwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0}, Ltwitter4j/auth/AuthorizationFactory;->getInstance(Ltwitter4j/conf/Configuration;)Ltwitter4j/auth/Authorization;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/TwitterFactory;->getInstance(Ltwitter4j/auth/Authorization;)Ltwitter4j/Twitter;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ltwitter4j/auth/AccessToken;)Ltwitter4j/Twitter;
    .registers 7
    .param p1, "accessToken"    # Ltwitter4j/auth/AccessToken;

    .prologue
    .line 138
    iget-object v3, p0, Ltwitter4j/TwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getOAuthConsumerKey()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "consumerKey":Ljava/lang/String;
    iget-object v3, p0, Ltwitter4j/TwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getOAuthConsumerSecret()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "consumerSecret":Ljava/lang/String;
    if-nez v0, :cond_18

    if-nez v1, :cond_18

    .line 141
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Consumer key and Consumer secret not supplied."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 143
    :cond_18
    new-instance v2, Ltwitter4j/auth/OAuthAuthorization;

    iget-object v3, p0, Ltwitter4j/TwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v2, v3}, Ltwitter4j/auth/OAuthAuthorization;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 144
    .local v2, "oauth":Ltwitter4j/auth/OAuthAuthorization;
    invoke-virtual {v2, p1}, Ltwitter4j/auth/OAuthAuthorization;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V

    .line 145
    invoke-virtual {p0, v2}, Ltwitter4j/TwitterFactory;->getInstance(Ltwitter4j/auth/Authorization;)Ltwitter4j/Twitter;

    move-result-object v3

    return-object v3
.end method

.method public getInstance(Ltwitter4j/auth/Authorization;)Ltwitter4j/Twitter;
    .registers 7
    .param p1, "auth"    # Ltwitter4j/auth/Authorization;

    .prologue
    .line 150
    :try_start_0
    sget-object v1, Ltwitter4j/TwitterFactory;->TWITTER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Ltwitter4j/TwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/Twitter;
    :try_end_13
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_13} :catch_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_13} :catch_1b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_13} :catch_22

    return-object v1

    .line 151
    :catch_14
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 153
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1b
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 155
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_22
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
