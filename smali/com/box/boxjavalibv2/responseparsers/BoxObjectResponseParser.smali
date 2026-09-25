.class public Lcom/box/boxjavalibv2/responseparsers/BoxObjectResponseParser;
.super Lcom/box/restclientv2/responseparsers/DefaultBoxJSONResponseParser;
.source "BoxObjectResponseParser.java"


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)V
    .registers 3
    .param p1, "cls"    # Ljava/lang/Class;
    .param p2, "parser"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/box/restclientv2/responseparsers/DefaultBoxJSONResponseParser;-><init>(Ljava/lang/Class;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;)V

    .line 21
    return-void
.end method
