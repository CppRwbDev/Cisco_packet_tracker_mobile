.class public interface abstract Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;
.super Ljava/lang/Object;
.source "IBoxResourceHub.java"


# virtual methods
.method public abstract getAllTypes()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/box/boxjavalibv2/dao/IBoxType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getClass(Lcom/box/boxjavalibv2/dao/IBoxType;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/box/boxjavalibv2/dao/IBoxType;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/box/boxjavalibv2/dao/BoxObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTypeFromLowercaseString(Ljava/lang/String;)Lcom/box/boxjavalibv2/dao/IBoxType;
.end method
