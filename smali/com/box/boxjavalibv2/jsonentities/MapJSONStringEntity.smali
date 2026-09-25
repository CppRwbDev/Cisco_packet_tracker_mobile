.class public Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;
.super Ljava/util/LinkedHashMap;
.source "MapJSONStringEntity.java"

# interfaces
.implements Lcom/box/boxjavalibv2/jsonentities/IBoxJSONStringEntity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/box/boxjavalibv2/jsonentities/IBoxJSONStringEntity;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public toJSONString(Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)Ljava/lang/String;
    .registers 3
    .param p1, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/boxjavalibv2/exceptions/BoxJSONException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-interface {p1, p0}, Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;->convertBoxObjectToJSONStringQuietly(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
