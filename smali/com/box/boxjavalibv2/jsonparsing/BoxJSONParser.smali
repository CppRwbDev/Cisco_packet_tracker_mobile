.class public Lcom/box/boxjavalibv2/jsonparsing/BoxJSONParser;
.super Ljava/lang/Object;
.source "BoxJSONParser.java"

# interfaces
.implements Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;


# instance fields
.field private final mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method public constructor <init>(Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;)V
    .registers 10
    .param p1, "hub"    # Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

    .prologue
    const/4 v7, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v2, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    iput-object v2, p0, Lcom/box/boxjavalibv2/jsonparsing/BoxJSONParser;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 30
    iget-object v2, p0, Lcom/box/boxjavalibv2/jsonparsing/BoxJSONParser;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v3, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 31
    iget-object v2, p0, Lcom/box/boxjavalibv2/jsonparsing/BoxJSONParser;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v3, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_NULL_FOR_PRIMITIVES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {v2, v3, v7}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 32
    iget-object v2, p0, Lcom/box/boxjavalibv2/jsonparsing/BoxJSONParser;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v3, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {v2, v3, v7}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 33
    invoke-interface {p1}, Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;->getAllTypes()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/box/boxjavalibv2/dao/IBoxType;

    .line 34
    .local v1, "type":Lcom/box/boxjavalibv2/dao/IBoxType;
    iget-object v2, p0, Lcom/box/boxjavalibv2/jsonparsing/BoxJSONParser;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    new-instance v4, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    invoke-interface {p1, v1}, Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;->getClass(Lcom/box/boxjavalibv2/dao/IBoxType;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerSubtypes([Lcom/fasterxml/jackson/databind/jsontype/NamedType;)V

    goto :goto_28

    .line 36
    .end local v1    # "type":Lcom/box/boxjavalibv2/dao/IBoxType;
    :cond_4c
    return-void
.end method


# virtual methods
.method public convertBoxObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/boxjavalibv2/exceptions/BoxJSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/jsonparsing/BoxJSONParser;->getObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_7
    .catch Lcom/fasterxml/jackson/core/JsonGenerationException; {:try_start_0 .. :try_end_7} :catch_9
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_7} :catch_10

    move-result-object v1

    return-object v1

    .line 86
    :catch_9
    move-exception v0

    .line 87
    .local v0, "e":Lcom/fasterxml/jackson/core/JsonGenerationException;
    new-instance v1, Lcom/box/boxjavalibv2/exceptions/BoxJSONException;

    invoke-direct {v1, v0}, Lcom/box/boxjavalibv2/exceptions/BoxJSONException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 89
    .end local v0    # "e":Lcom/fasterxml/jackson/core/JsonGenerationException;
    :catch_10
    move-exception v0

    .line 90
    .local v0, "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    new-instance v1, Lcom/box/boxjavalibv2/exceptions/BoxJSONException;

    invoke-direct {v1, v0}, Lcom/box/boxjavalibv2/exceptions/BoxJSONException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public convertBoxObjectToJSONStringQuietly(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 45
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/box/boxjavalibv2/jsonparsing/BoxJSONParser;->convertBoxObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_4
    .catch Lcom/box/boxjavalibv2/exceptions/BoxJSONException; {:try_start_1 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_8

    move-result-object v1

    .line 51
    :goto_5
    return-object v1

    .line 47
    :catch_6
    move-exception v0

    .line 48
    .local v0, "e":Lcom/box/boxjavalibv2/exceptions/BoxJSONException;
    goto :goto_5

    .line 50
    .end local v0    # "e":Lcom/box/boxjavalibv2/exceptions/BoxJSONException;
    :catch_8
    move-exception v0

    .line 51
    .local v0, "e":Ljava/io/IOException;
    goto :goto_5
.end method

.method protected getObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/box/boxjavalibv2/jsonparsing/BoxJSONParser;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
.end method

.method public parseIntoBoxObject(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/boxjavalibv2/exceptions/BoxJSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    .local p2, "theClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    new-instance v2, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v2}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    .line 98
    .local v2, "jsonFactory":Lcom/fasterxml/jackson/core/JsonFactory;
    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v1

    .line 99
    .local v1, "jp":Lcom/fasterxml/jackson/core/JsonParser;
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/jsonparsing/BoxJSONParser;->getObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v3

    invoke-virtual {v3, v1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_10
    .catch Lcom/fasterxml/jackson/core/JsonGenerationException; {:try_start_0 .. :try_end_10} :catch_12
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_10} :catch_19
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_10} :catch_20

    move-result-object v3

    return-object v3

    .line 101
    .end local v1    # "jp":Lcom/fasterxml/jackson/core/JsonParser;
    .end local v2    # "jsonFactory":Lcom/fasterxml/jackson/core/JsonFactory;
    :catch_12
    move-exception v0

    .line 102
    .local v0, "e":Lcom/fasterxml/jackson/core/JsonGenerationException;
    new-instance v3, Lcom/box/boxjavalibv2/exceptions/BoxJSONException;

    invoke-direct {v3, v0}, Lcom/box/boxjavalibv2/exceptions/BoxJSONException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 104
    .end local v0    # "e":Lcom/fasterxml/jackson/core/JsonGenerationException;
    :catch_19
    move-exception v0

    .line 105
    .local v0, "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    new-instance v3, Lcom/box/boxjavalibv2/exceptions/BoxJSONException;

    invoke-direct {v3, v0}, Lcom/box/boxjavalibv2/exceptions/BoxJSONException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 107
    .end local v0    # "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    :catch_20
    move-exception v0

    .line 108
    .local v0, "e":Lcom/fasterxml/jackson/core/JsonParseException;
    new-instance v3, Lcom/box/boxjavalibv2/exceptions/BoxJSONException;

    invoke-direct {v3, v0}, Lcom/box/boxjavalibv2/exceptions/BoxJSONException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public parseIntoBoxObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .param p1, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/boxjavalibv2/exceptions/BoxJSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    .local p2, "theClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    new-instance v2, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v2}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    .line 116
    .local v2, "jsonFactory":Lcom/fasterxml/jackson/core/JsonFactory;
    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v1

    .line 117
    .local v1, "jp":Lcom/fasterxml/jackson/core/JsonParser;
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/jsonparsing/BoxJSONParser;->getObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v3

    invoke-virtual {v3, v1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_10
    .catch Lcom/fasterxml/jackson/core/JsonGenerationException; {:try_start_0 .. :try_end_10} :catch_12
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_10} :catch_19
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_10} :catch_20

    move-result-object v3

    return-object v3

    .line 119
    .end local v1    # "jp":Lcom/fasterxml/jackson/core/JsonParser;
    .end local v2    # "jsonFactory":Lcom/fasterxml/jackson/core/JsonFactory;
    :catch_12
    move-exception v0

    .line 120
    .local v0, "e":Lcom/fasterxml/jackson/core/JsonGenerationException;
    new-instance v3, Lcom/box/boxjavalibv2/exceptions/BoxJSONException;

    invoke-direct {v3, v0}, Lcom/box/boxjavalibv2/exceptions/BoxJSONException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 122
    .end local v0    # "e":Lcom/fasterxml/jackson/core/JsonGenerationException;
    :catch_19
    move-exception v0

    .line 123
    .local v0, "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    new-instance v3, Lcom/box/boxjavalibv2/exceptions/BoxJSONException;

    invoke-direct {v3, v0}, Lcom/box/boxjavalibv2/exceptions/BoxJSONException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 125
    .end local v0    # "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    :catch_20
    move-exception v0

    .line 126
    .local v0, "e":Lcom/fasterxml/jackson/core/JsonParseException;
    new-instance v3, Lcom/box/boxjavalibv2/exceptions/BoxJSONException;

    invoke-direct {v3, v0}, Lcom/box/boxjavalibv2/exceptions/BoxJSONException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public parseIntoBoxObjectQuietly(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p2, "theClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 58
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/box/boxjavalibv2/jsonparsing/BoxJSONParser;->parseIntoBoxObject(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_4
    .catch Lcom/box/boxjavalibv2/exceptions/BoxJSONException; {:try_start_1 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_8

    move-result-object v1

    .line 64
    :goto_5
    return-object v1

    .line 60
    :catch_6
    move-exception v0

    .line 61
    .local v0, "e":Lcom/box/boxjavalibv2/exceptions/BoxJSONException;
    goto :goto_5

    .line 63
    .end local v0    # "e":Lcom/box/boxjavalibv2/exceptions/BoxJSONException;
    :catch_8
    move-exception v0

    .line 64
    .local v0, "e":Ljava/io/IOException;
    goto :goto_5
.end method

.method public parseIntoBoxObjectQuietly(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .param p1, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p2, "theClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 71
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/box/boxjavalibv2/jsonparsing/BoxJSONParser;->parseIntoBoxObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_4
    .catch Lcom/box/boxjavalibv2/exceptions/BoxJSONException; {:try_start_1 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_8

    move-result-object v1

    .line 77
    :goto_5
    return-object v1

    .line 73
    :catch_6
    move-exception v0

    .line 74
    .local v0, "e":Lcom/box/boxjavalibv2/exceptions/BoxJSONException;
    goto :goto_5

    .line 76
    .end local v0    # "e":Lcom/box/boxjavalibv2/exceptions/BoxJSONException;
    :catch_8
    move-exception v0

    .line 77
    .local v0, "e":Ljava/io/IOException;
    goto :goto_5
.end method
