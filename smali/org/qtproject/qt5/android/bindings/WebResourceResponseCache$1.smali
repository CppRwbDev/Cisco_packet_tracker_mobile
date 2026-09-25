.class Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache$1;
.super Landroid/util/LruCache;
.source "WebResourceResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache$CacheEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache;I)V
    .registers 3
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache;
    .param p2, "x0"    # I

    .prologue
    .line 36
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache$1;->this$0:Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 36
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache$CacheEntry;

    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache$1;->sizeOf(Ljava/lang/String;Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache$CacheEntry;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache$CacheEntry;)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache$CacheEntry;

    .prologue
    .line 38
    iget-object v0, p2, Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache$CacheEntry;->m_data:[B

    array-length v0, v0

    iget-object v1, p2, Lorg/qtproject/qt5/android/bindings/WebResourceResponseCache$CacheEntry;->m_mimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
