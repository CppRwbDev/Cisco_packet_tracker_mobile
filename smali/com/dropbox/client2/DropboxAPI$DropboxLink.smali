.class public Lcom/dropbox/client2/DropboxAPI$DropboxLink;
.super Ljava/lang/Object;
.source "DropboxAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/client2/DropboxAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DropboxLink"
.end annotation


# instance fields
.field public final expires:Ljava/util/Date;

.field public final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "returl"    # Ljava/lang/String;
    .param p2, "secure"    # Z

    .prologue
    .line 1162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1163
    if-nez p2, :cond_1d

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1164
    const-string v0, "https://"

    const-string v1, "http://"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1165
    const-string v0, ":443/"

    const-string v1, "/"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1167
    :cond_1d
    iput-object p1, p0, Lcom/dropbox/client2/DropboxAPI$DropboxLink;->url:Ljava/lang/String;

    .line 1168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/client2/DropboxAPI$DropboxLink;->expires:Ljava/util/Date;

    .line 1169
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .registers 3
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
    .line 1172
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/dropbox/client2/DropboxAPI$DropboxLink;-><init>(Ljava/util/Map;Z)V

    .line 1173
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/dropbox/client2/DropboxAPI$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Lcom/dropbox/client2/DropboxAPI$1;

    .prologue
    .line 1156
    invoke-direct {p0, p1}, Lcom/dropbox/client2/DropboxAPI$DropboxLink;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Z)V
    .registers 7
    .param p2, "secure"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1184
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1185
    const-string v2, "url"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1186
    .local v1, "returl":Ljava/lang/String;
    const-string v2, "expires"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1187
    .local v0, "exp":Ljava/lang/String;
    if-eqz v0, :cond_38

    .line 1188
    invoke-static {v0}, Lcom/dropbox/client2/RESTUtility;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/dropbox/client2/DropboxAPI$DropboxLink;->expires:Ljava/util/Date;

    .line 1193
    :goto_1b
    if-nez p2, :cond_35

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1194
    const-string v2, "https://"

    const-string v3, "http://"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1195
    const-string v2, ":443/"

    const-string v3, "/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1197
    :cond_35
    iput-object v1, p0, Lcom/dropbox/client2/DropboxAPI$DropboxLink;->url:Ljava/lang/String;

    .line 1198
    return-void

    .line 1190
    :cond_38
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/dropbox/client2/DropboxAPI$DropboxLink;->expires:Ljava/util/Date;

    goto :goto_1b
.end method

.method synthetic constructor <init>(Ljava/util/Map;ZLcom/dropbox/client2/DropboxAPI$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lcom/dropbox/client2/DropboxAPI$1;

    .prologue
    .line 1156
    invoke-direct {p0, p1, p2}, Lcom/dropbox/client2/DropboxAPI$DropboxLink;-><init>(Ljava/util/Map;Z)V

    return-void
.end method
