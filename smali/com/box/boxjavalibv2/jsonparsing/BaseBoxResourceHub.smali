.class public abstract Lcom/box/boxjavalibv2/jsonparsing/BaseBoxResourceHub;
.super Ljava/lang/Object;
.source "BaseBoxResourceHub.java"

# interfaces
.implements Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;


# instance fields
.field protected final lowercaseStringToType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/box/boxjavalibv2/dao/IBoxType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/box/boxjavalibv2/jsonparsing/BaseBoxResourceHub;->lowercaseStringToType:Ljava/util/Map;

    .line 17
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/jsonparsing/BaseBoxResourceHub;->initializeTypes()V

    .line 18
    return-void
.end method


# virtual methods
.method public getClass(Lcom/box/boxjavalibv2/dao/IBoxType;)Ljava/lang/Class;
    .registers 3
    .param p1, "type"    # Lcom/box/boxjavalibv2/dao/IBoxType;

    .prologue
    .line 23
    const-class v0, Lcom/box/boxjavalibv2/dao/BoxObject;

    return-object v0
.end method

.method protected abstract getConcreteClassForIBoxType()Ljava/lang/Class;
.end method

.method protected getLowerCaseStringToTypeMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/box/boxjavalibv2/dao/IBoxType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/box/boxjavalibv2/jsonparsing/BaseBoxResourceHub;->lowercaseStringToType:Ljava/util/Map;

    return-object v0
.end method

.method protected abstract getObjectClassGivenConcreteIBoxType(Lcom/box/boxjavalibv2/dao/IBoxType;)Ljava/lang/Class;
.end method

.method protected declared-synchronized initializeEnumTypes(Ljava/lang/Class;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum;>;"
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/jsonparsing/BaseBoxResourceHub;->getLowerCaseStringToTypeMap()Ljava/util/Map;

    move-result-object v3

    .line 57
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/box/boxjavalibv2/dao/IBoxType;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Enum;

    .line 58
    .local v6, "types":[Ljava/lang/Enum;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/Enum;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_e
    if-ge v1, v2, :cond_24

    aget-object v5, v0, v1

    .line 59
    .local v5, "type":Ljava/lang/Enum;
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, "str":Ljava/lang/String;
    check-cast v5, Lcom/box/boxjavalibv2/dao/IBoxType;

    .end local v5    # "type":Ljava/lang/Enum;
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_26

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 62
    .end local v4    # "str":Ljava/lang/String;
    :cond_24
    monitor-exit p0

    return-void

    .line 56
    .end local v0    # "arr$":[Ljava/lang/Enum;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/box/boxjavalibv2/dao/IBoxType;>;"
    .end local v6    # "types":[Ljava/lang/Enum;
    :catchall_26
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method protected initializeTypes()V
    .registers 1

    .prologue
    .line 52
    return-void
.end method
