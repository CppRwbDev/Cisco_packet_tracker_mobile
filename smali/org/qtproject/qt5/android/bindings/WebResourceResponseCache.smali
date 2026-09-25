.class public Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache;
.super Ljava/lang/Object;
.source "WebResourceResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache$CacheEntry;
    }
.end annotation


# instance fields
.field private m_cache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache$1;

    const v1, 0x989680

    invoke-direct {v0, p0, v1}, Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache$1;-><init>(Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache;I)V

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache;->m_cache:Landroid/util/LruCache;

    return-void
.end method

.method private make_web_response(Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache$CacheEntry;)Landroid/webkit/WebResourceResponse;
    .registers 7
    .param p1, "entry"    # Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache$CacheEntry;

    .prologue
    .line 52
    if-eqz p1, :cond_17

    iget-object v0, p1, Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache$CacheEntry;->m_data:[B

    if-eqz v0, :cond_17

    .line 53
    new-instance v0, Landroid/webkit/WebResourceResponse;

    iget-object v1, p1, Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache$CacheEntry;->m_mimeType:Ljava/lang/String;

    const-string v2, "UTF-8"

    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, p1, Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache$CacheEntry;->m_data:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 54
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private put(Ljava/lang/String;Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache$CacheEntry;)Landroid/webkit/WebResourceResponse;
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "entry"    # Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache$CacheEntry;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache;->m_cache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {p0, p1}, Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache;->get(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache;->m_cache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache$CacheEntry;

    invoke-direct {p0, v0}, Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache;->make_web_response(Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache$CacheEntry;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "istream"    # Ljava/io/InputStream;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 42
    const-string v0, "WRRC"

    const-string v1, "put(): url: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache$CacheEntry;

    invoke-direct {v0, p1, p2, p3}, Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache$CacheEntry;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache;->put(Ljava/lang/String;Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache$CacheEntry;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method
