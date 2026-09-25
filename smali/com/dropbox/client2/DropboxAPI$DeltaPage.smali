.class public final Lcom/dropbox/client2/DropboxAPI$DeltaPage;
.super Ljava/lang/Object;
.source "DropboxAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/client2/DropboxAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeltaPage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MD:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final cursor:Ljava/lang/String;

.field public final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/client2/DropboxAPI$DeltaEntry",
            "<TMD;>;>;"
        }
    .end annotation
.end field

.field public final hasMore:Z

.field public final reset:Z


# direct methods
.method public constructor <init>(ZLjava/util/List;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "reset"    # Z
    .param p3, "cursor"    # Ljava/lang/String;
    .param p4, "hasMore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/client2/DropboxAPI$DeltaEntry",
            "<TMD;>;>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 2322
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI$DeltaPage;, "Lcom/dropbox/client2/DropboxAPI$DeltaPage<TMD;>;"
    .local p2, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/client2/DropboxAPI$DeltaEntry<TMD;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2323
    iput-boolean p1, p0, Lcom/dropbox/client2/DropboxAPI$DeltaPage;->reset:Z

    .line 2324
    iput-object p2, p0, Lcom/dropbox/client2/DropboxAPI$DeltaPage;->entries:Ljava/util/List;

    .line 2325
    iput-object p3, p0, Lcom/dropbox/client2/DropboxAPI$DeltaPage;->cursor:Ljava/lang/String;

    .line 2326
    iput-boolean p4, p0, Lcom/dropbox/client2/DropboxAPI$DeltaPage;->hasMore:Z

    .line 2327
    return-void
.end method

.method public static extractFromJson(Lcom/dropbox/client2/jsonextract/JsonThing;Lcom/dropbox/client2/jsonextract/JsonExtractor;)Lcom/dropbox/client2/DropboxAPI$DeltaPage;
    .registers 9
    .param p0, "j"    # Lcom/dropbox/client2/jsonextract/JsonThing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MD:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/client2/jsonextract/JsonThing;",
            "Lcom/dropbox/client2/jsonextract/JsonExtractor",
            "<TMD;>;)",
            "Lcom/dropbox/client2/DropboxAPI$DeltaPage",
            "<TMD;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/jsonextract/JsonExtractionException;
        }
    .end annotation

    .prologue
    .line 2330
    .local p1, "entryExtractor":Lcom/dropbox/client2/jsonextract/JsonExtractor;, "Lcom/dropbox/client2/jsonextract/JsonExtractor<TMD;>;"
    invoke-virtual {p0}, Lcom/dropbox/client2/jsonextract/JsonThing;->expectMap()Lcom/dropbox/client2/jsonextract/JsonMap;

    move-result-object v3

    .line 2331
    .local v3, "m":Lcom/dropbox/client2/jsonextract/JsonMap;
    const-string v5, "reset"

    invoke-virtual {v3, v5}, Lcom/dropbox/client2/jsonextract/JsonMap;->get(Ljava/lang/String;)Lcom/dropbox/client2/jsonextract/JsonThing;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dropbox/client2/jsonextract/JsonThing;->expectBoolean()Z

    move-result v4

    .line 2332
    .local v4, "reset":Z
    const-string v5, "cursor"

    invoke-virtual {v3, v5}, Lcom/dropbox/client2/jsonextract/JsonMap;->get(Ljava/lang/String;)Lcom/dropbox/client2/jsonextract/JsonThing;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dropbox/client2/jsonextract/JsonThing;->expectString()Ljava/lang/String;

    move-result-object v0

    .line 2333
    .local v0, "cursor":Ljava/lang/String;
    const-string v5, "has_more"

    invoke-virtual {v3, v5}, Lcom/dropbox/client2/jsonextract/JsonMap;->get(Ljava/lang/String;)Lcom/dropbox/client2/jsonextract/JsonThing;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dropbox/client2/jsonextract/JsonThing;->expectBoolean()Z

    move-result v2

    .line 2334
    .local v2, "hasMore":Z
    const-string v5, "entries"

    invoke-virtual {v3, v5}, Lcom/dropbox/client2/jsonextract/JsonMap;->get(Ljava/lang/String;)Lcom/dropbox/client2/jsonextract/JsonThing;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dropbox/client2/jsonextract/JsonThing;->expectList()Lcom/dropbox/client2/jsonextract/JsonList;

    move-result-object v5

    new-instance v6, Lcom/dropbox/client2/DropboxAPI$DeltaEntry$JsonExtractor;

    invoke-direct {v6, p1}, Lcom/dropbox/client2/DropboxAPI$DeltaEntry$JsonExtractor;-><init>(Lcom/dropbox/client2/jsonextract/JsonExtractor;)V

    invoke-virtual {v5, v6}, Lcom/dropbox/client2/jsonextract/JsonList;->extract(Lcom/dropbox/client2/jsonextract/JsonExtractor;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2336
    .local v1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/client2/DropboxAPI$DeltaEntry<TMD;>;>;"
    new-instance v5, Lcom/dropbox/client2/DropboxAPI$DeltaPage;

    invoke-direct {v5, v4, v1, v0, v2}, Lcom/dropbox/client2/DropboxAPI$DeltaPage;-><init>(ZLjava/util/List;Ljava/lang/String;Z)V

    return-object v5
.end method
