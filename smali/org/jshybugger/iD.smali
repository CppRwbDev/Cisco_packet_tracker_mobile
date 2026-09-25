.class public Lorg/jshybugger/id;
.super Ljava/lang/Object;
.source "SelfSignedSslEngineSource.java"

# interfaces
.implements Lorg/jshybugger/jD;


# static fields
.field private static final a:Lorg/jshybugger/nS;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Z

.field private e:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const-class v0, Lorg/jshybugger/id;

    invoke-static {v0}, Lorg/jshybugger/nT;->a(Ljava/lang/Class;)Lorg/jshybugger/nS;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/id;->a:Lorg/jshybugger/nS;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jshybugger/id;-><init>(Z)V

    .line 81
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZZ)V
    .registers 12

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean p2, p0, Lorg/jshybugger/id;->c:Z

    .line 61
    iput-boolean p3, p0, Lorg/jshybugger/id;->d:Z

    .line 62
    iput-object p1, p0, Lorg/jshybugger/id;->b:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/jshybugger/id;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_85

    sget-object v0, Lorg/jshybugger/id;->a:Lorg/jshybugger/nS;

    const-string v1, "Not deleting keystore"

    invoke-interface {v0, v1}, Lorg/jshybugger/nS;->b(Ljava/lang/String;)V

    .line 64
    :goto_25
    const-string v0, "ssl.KeyManagerFactory.algorithm"

    invoke-static {v0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_143

    const-string v0, "SunX509"

    move-object v1, v0

    :goto_30
    :try_start_30
    sget-boolean v0, Lorg/jshybugger/jk;->a:Z

    if-eqz v0, :cond_123

    const-string v0, "BKS"

    :goto_36
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/jshybugger/id;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "jsHybugger proxy"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-static {v1}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v2

    const-string v3, "jsHybugger proxy"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    iget-boolean v0, p0, Lorg/jshybugger/id;->c:Z

    if-nez v0, :cond_127

    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    move-object v1, v0

    :goto_6e
    iget-boolean v0, p0, Lorg/jshybugger/id;->d:Z

    if-eqz v0, :cond_135

    invoke-virtual {v2}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    :goto_76
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    iput-object v2, p0, Lorg/jshybugger/id;->e:Ljavax/net/ssl/SSLContext;

    iget-object v2, p0, Lorg/jshybugger/id;->e:Ljavax/net/ssl/SSLContext;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_84} :catch_13a

    return-void

    .line 63
    :cond_85
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "keytool"

    aput-object v1, v0, v3

    const-string v1, "-genkey"

    aput-object v1, v0, v4

    const-string v1, "-alias"

    aput-object v1, v0, v5

    const-string v1, "jsHybugger"

    aput-object v1, v0, v6

    const-string v1, "-keysize"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "4096"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "-validity"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "36500"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "-keyalg"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "RSA"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "-dname"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "CN=jshybugger.local"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "-keypass"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "jsHybugger proxy"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "-storepass"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "jsHybugger proxy"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "-keystore"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p0, Lorg/jshybugger/id;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/jshybugger/id;->a([Ljava/lang/String;)Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "keytool"

    aput-object v1, v0, v3

    const-string v1, "-exportcert"

    aput-object v1, v0, v4

    const-string v1, "-alias"

    aput-object v1, v0, v5

    const-string v1, "jsHybugger"

    aput-object v1, v0, v6

    const-string v1, "-keystore"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    iget-object v2, p0, Lorg/jshybugger/id;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "-storepass"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "jsHybugger proxy"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "-file"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "jshybugger.cert"

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/jshybugger/id;->a([Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_25

    .line 64
    :cond_123
    :try_start_123
    const-string v0, "JKS"

    goto/16 :goto_36

    :cond_127
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v3, Lorg/jshybugger/ie;

    invoke-direct {v3, p0}, Lorg/jshybugger/ie;-><init>(Lorg/jshybugger/id;)V

    aput-object v3, v0, v1

    move-object v1, v0

    goto/16 :goto_6e

    :cond_135
    const/4 v0, 0x0

    new-array v0, v0, [Ljavax/net/ssl/KeyManager;
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_138} :catch_13a

    goto/16 :goto_76

    :catch_13a
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    const-string v2, "Failed to initialize the server-side SSLContext"

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_143
    move-object v1, v0

    goto/16 :goto_30
.end method

.method public constructor <init>(Z)V
    .registers 3

    .prologue
    .line 72
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/id;-><init>(ZZ)V

    .line 73
    return-void
.end method

.method private constructor <init>(ZZ)V
    .registers 5

    .prologue
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "jshybugger."

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lorg/jshybugger/jk;->a:Z

    if-eqz v0, :cond_1a

    const-string v0, "bks"

    :goto_d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lorg/jshybugger/id;-><init>(Ljava/lang/String;ZZ)V

    .line 77
    return-void

    .line 76
    :cond_1a
    const-string v0, "jks"

    goto :goto_d
.end method

.method private static varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 174
    sget-object v0, Lorg/jshybugger/id;->a:Lorg/jshybugger/nS;

    const-string v1, "Running \'{}\'"

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/jshybugger/nS;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    new-instance v0, Ljava/lang/ProcessBuilder;

    invoke-direct {v0, p0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 177
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 179
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 180
    sget-object v1, Lorg/jshybugger/id;->a:Lorg/jshybugger/nS;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Completed native call: \'{}\'\nResponse: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/jshybugger/nS;->c(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_3a} :catch_3b

    .line 185
    :goto_3a
    return-object v0

    .line 183
    :catch_3b
    move-exception v0

    .line 184
    sget-object v1, Lorg/jshybugger/id;->a:Lorg/jshybugger/nS;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error running commands: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/jshybugger/nS;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    const-string v0, ""

    goto :goto_3a
.end method


# virtual methods
.method public final e_()Ljavax/net/ssl/SSLEngine;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/jshybugger/id;->e:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    .line 86
    return-object v0
.end method
