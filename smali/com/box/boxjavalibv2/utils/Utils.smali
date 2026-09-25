.class public final Lcom/box/boxjavalibv2/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/box/boxjavalibv2/utils/Utils$1;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static consumeHttpEntity(Lorg/apache/http/HttpEntity;)V
    .registers 3
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    if-nez p0, :cond_3

    .line 102
    :cond_2
    :goto_2
    return-void

    .line 96
    :cond_3
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 98
    .local v0, "instream":Ljava/io/InputStream;
    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_2
.end method

.method public static consumeHttpEntityQuietly(Lorg/apache/http/HttpEntity;)V
    .registers 2
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 76
    :try_start_0
    invoke-static {p0}, Lcom/box/boxjavalibv2/utils/Utils;->consumeHttpEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 80
    :goto_3
    return-void

    .line 78
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public static getContainerString(Lcom/box/boxjavalibv2/dao/BoxResourceType;)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .prologue
    .line 33
    sget-object v0, Lcom/box/boxjavalibv2/utils/Utils$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 37
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->toPluralString()Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0

    .line 35
    :pswitch_10
    const-string v0, "versions"

    goto :goto_f

    .line 33
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
    .end packed-switch
.end method

.method public static getTypedObjects(Lcom/box/boxjavalibv2/dao/BoxCollection;Ljava/lang/Class;)Ljava/util/List;
    .registers 7
    .param p0, "collection"    # Lcom/box/boxjavalibv2/dao/BoxCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/box/boxjavalibv2/dao/BoxTypedObject;",
            ">(",
            "Lcom/box/boxjavalibv2/dao/BoxCollection;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v3, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxCollection;->getEntries()Ljava/util/ArrayList;

    move-result-object v1

    .line 55
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/box/boxjavalibv2/dao/BoxTypedObject;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/box/boxjavalibv2/dao/BoxTypedObject;

    .line 56
    .local v2, "object":Lcom/box/boxjavalibv2/dao/BoxTypedObject;
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 57
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 61
    .end local v2    # "object":Lcom/box/boxjavalibv2/dao/BoxTypedObject;
    :cond_23
    return-object v3
.end method
