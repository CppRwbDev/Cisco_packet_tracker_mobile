.class public Lcom/dropbox/client2/DropboxAPI$Entry;
.super Ljava/lang/Object;
.source "DropboxAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/client2/DropboxAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# static fields
.field public static final JsonExtractor:Lcom/dropbox/client2/jsonextract/JsonExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/client2/jsonextract/JsonExtractor",
            "<",
            "Lcom/dropbox/client2/DropboxAPI$Entry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bytes:J

.field public clientMtime:Ljava/lang/String;

.field public contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/client2/DropboxAPI$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public hash:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public isDeleted:Z

.field public isDir:Z

.field public mimeType:Ljava/lang/String;

.field public modified:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public rev:Ljava/lang/String;

.field public root:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field public thumbExists:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 357
    new-instance v0, Lcom/dropbox/client2/DropboxAPI$Entry$1;

    invoke-direct {v0}, Lcom/dropbox/client2/DropboxAPI$Entry$1;-><init>()V

    sput-object v0, Lcom/dropbox/client2/DropboxAPI$Entry;->JsonExtractor:Lcom/dropbox/client2/jsonextract/JsonExtractor;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 302
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    const-string v3, "bytes"

    invoke-static {p1, v3}, Lcom/dropbox/client2/DropboxAPI;->getFromMapAsLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/dropbox/client2/DropboxAPI$Entry;->bytes:J

    .line 304
    const-string v3, "hash"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/dropbox/client2/DropboxAPI$Entry;->hash:Ljava/lang/String;

    .line 305
    const-string v3, "icon"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/dropbox/client2/DropboxAPI$Entry;->icon:Ljava/lang/String;

    .line 306
    const-string v3, "is_dir"

    invoke-static {p1, v3}, Lcom/dropbox/client2/DropboxAPI;->getFromMapAsBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/dropbox/client2/DropboxAPI$Entry;->isDir:Z

    .line 307
    const-string v3, "modified"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/dropbox/client2/DropboxAPI$Entry;->modified:Ljava/lang/String;

    .line 308
    const-string v3, "client_mtime"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/dropbox/client2/DropboxAPI$Entry;->clientMtime:Ljava/lang/String;

    .line 309
    const-string v3, "path"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/dropbox/client2/DropboxAPI$Entry;->path:Ljava/lang/String;

    .line 310
    const-string v3, "root"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/dropbox/client2/DropboxAPI$Entry;->root:Ljava/lang/String;

    .line 311
    const-string v3, "size"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/dropbox/client2/DropboxAPI$Entry;->size:Ljava/lang/String;

    .line 312
    const-string v3, "mime_type"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/dropbox/client2/DropboxAPI$Entry;->mimeType:Ljava/lang/String;

    .line 313
    const-string v3, "rev"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/dropbox/client2/DropboxAPI$Entry;->rev:Ljava/lang/String;

    .line 314
    const-string v3, "thumb_exists"

    invoke-static {p1, v3}, Lcom/dropbox/client2/DropboxAPI;->getFromMapAsBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/dropbox/client2/DropboxAPI$Entry;->thumbExists:Z

    .line 315
    const-string v3, "is_deleted"

    invoke-static {p1, v3}, Lcom/dropbox/client2/DropboxAPI;->getFromMapAsBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/dropbox/client2/DropboxAPI$Entry;->isDeleted:Z

    .line 317
    const-string v3, "contents"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 318
    .local v2, "json_contents":Ljava/lang/Object;
    if-eqz v2, :cond_b1

    instance-of v3, v2, Lorg/json/simple/JSONArray;

    if-eqz v3, :cond_b1

    .line 319
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/dropbox/client2/DropboxAPI$Entry;->contents:Ljava/util/List;

    .line 321
    check-cast v2, Lorg/json/simple/JSONArray;

    .end local v2    # "json_contents":Ljava/lang/Object;
    invoke-virtual {v2}, Lorg/json/simple/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 322
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_96
    :goto_96
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 323
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 324
    .local v0, "entry":Ljava/lang/Object;
    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_96

    .line 325
    iget-object v3, p0, Lcom/dropbox/client2/DropboxAPI$Entry;->contents:Ljava/util/List;

    new-instance v4, Lcom/dropbox/client2/DropboxAPI$Entry;

    check-cast v0, Ljava/util/Map;

    .end local v0    # "entry":Ljava/lang/Object;
    invoke-direct {v4, v0}, Lcom/dropbox/client2/DropboxAPI$Entry;-><init>(Ljava/util/Map;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_96

    .line 329
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v2    # "json_contents":Ljava/lang/Object;
    :cond_b1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/dropbox/client2/DropboxAPI$Entry;->contents:Ljava/util/List;

    .line 331
    .end local v2    # "json_contents":Ljava/lang/Object;
    :cond_b4
    return-void
.end method


# virtual methods
.method public fileName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 341
    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI$Entry;->path:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 342
    .local v0, "ind":I
    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI$Entry;->path:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/dropbox/client2/DropboxAPI$Entry;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public parentPath()Ljava/lang/String;
    .registers 5

    .prologue
    .line 349
    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI$Entry;->path:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 350
    const-string v1, ""

    .line 353
    :goto_c
    return-object v1

    .line 352
    :cond_d
    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI$Entry;->path:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 353
    .local v0, "ind":I
    iget-object v1, p0, Lcom/dropbox/client2/DropboxAPI$Entry;->path:Ljava/lang/String;

    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_c
.end method
