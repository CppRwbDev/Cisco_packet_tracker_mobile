.class public Lcom/box/boxjavalibv2/responseparsers/PreviewResponseParser;
.super Lcom/box/restclientv2/responseparsers/DefaultFileResponseParser;
.source "PreviewResponseParser.java"


# static fields
.field private static final DELIM_LINKS:Ljava/lang/String; = ","

.field private static final DELIM_LINK_PARAM:Ljava/lang/String; = ";"

.field private static final FIRST:Ljava/lang/String; = "first"

.field private static final HEADER_LINK:Ljava/lang/String; = "Link"

.field private static final LAST:Ljava/lang/String; = "last"

.field private static final PAGE:Ljava/lang/String; = "page"

.field private static final REL:Ljava/lang/String; = "rel"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/box/restclientv2/responseparsers/DefaultFileResponseParser;-><init>()V

    return-void
.end method

.method private getQueryIntValue(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 91
    const/4 v3, -0x1

    .line 94
    .local v3, "result":I
    :try_start_1
    new-instance v4, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;

    invoke-direct {v4, p1}, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .local v4, "ub":Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;
    invoke-virtual {v4}, Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;->getQueryParams()Ljava/util/List;

    move-result-object v2

    .line 96
    .local v2, "queries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 97
    .local v1, "pair":Lorg/apache/http/NameValuePair;
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 98
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_2d

    move-result v3

    .line 106
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pair":Lorg/apache/http/NameValuePair;
    .end local v2    # "queries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v4    # "ub":Lcom/box/restclientv2/httpclientsupport/HttpClientURIBuilder;
    :cond_2c
    :goto_2c
    return v3

    .line 103
    :catch_2d
    move-exception v5

    goto :goto_2c
.end method

.method private parseLinks(Lcom/box/boxjavalibv2/dao/BoxPreview;Lcom/box/restclientv2/responses/DefaultBoxResponse;)V
    .registers 22
    .param p1, "preview"    # Lcom/box/boxjavalibv2/dao/BoxPreview;
    .param p2, "response"    # Lcom/box/restclientv2/responses/DefaultBoxResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual/range {p2 .. p2}, Lcom/box/restclientv2/responses/DefaultBoxResponse;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v17

    const-string v18, "Link"

    invoke-interface/range {v17 .. v18}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    .line 41
    .local v5, "header":Lorg/apache/http/Header;
    if-nez v5, :cond_d

    .line 88
    :cond_c
    return-void

    .line 44
    :cond_d
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 45
    .local v11, "linkHeader":Ljava/lang/String;
    if-eqz v11, :cond_c

    .line 46
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 47
    .local v13, "links":[Ljava/lang/String;
    move-object v2, v13

    .local v2, "arr$":[Ljava/lang/String;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1e
    if-ge v7, v9, :cond_c

    aget-object v10, v2, v7

    .line 48
    .local v10, "link":Ljava/lang/String;
    const-string v17, ";"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 49
    .local v16, "segments":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3a

    .line 47
    :cond_37
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    .line 52
    :cond_3a
    const/16 v17, 0x0

    aget-object v17, v16, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 53
    .local v12, "linkPart":Ljava/lang/String;
    const-string v17, "<"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_37

    const-string v17, ">"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_37

    .line 55
    const/16 v17, 0x1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 57
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_67
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_37

    .line 58
    aget-object v17, v16, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const-string v18, "="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 59
    .local v14, "rel":[Ljava/lang/String;
    array-length v0, v14

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_93

    const-string v17, "rel"

    const/16 v18, 0x0

    aget-object v18, v14, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_96

    .line 57
    :cond_93
    :goto_93
    add-int/lit8 v6, v6, 0x1

    goto :goto_67

    .line 62
    :cond_96
    const/16 v17, 0x1

    aget-object v15, v14, v17

    .line 63
    .local v15, "relValue":Ljava/lang/String;
    const-string v17, "\""

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_be

    const-string v17, "\""

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_be

    .line 64
    const/16 v17, 0x1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 67
    :cond_be
    :try_start_be
    const-string v17, "first"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_ee

    .line 68
    const-string v17, "page"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v12, v1}, Lcom/box/boxjavalibv2/responseparsers/PreviewResponseParser;->getQueryIntValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 69
    .local v4, "fPage":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_d9

    .line 70
    const/4 v4, 0x1

    .line 72
    :cond_d9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/box/boxjavalibv2/dao/BoxPreview;->setFirstPage(Ljava/lang/Integer;)V
    :try_end_e4
    .catch Ljava/lang/NumberFormatException; {:try_start_be .. :try_end_e4} :catch_e5

    goto :goto_93

    .line 82
    .end local v4    # "fPage":I
    :catch_e5
    move-exception v3

    .line 83
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v17, Lcom/box/restclientv2/exceptions/BoxRestException;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lcom/box/restclientv2/exceptions/BoxRestException;-><init>(Ljava/lang/Exception;)V

    throw v17

    .line 74
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_ee
    :try_start_ee
    const-string v17, "last"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_93

    .line 75
    const-string v17, "page"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v12, v1}, Lcom/box/boxjavalibv2/responseparsers/PreviewResponseParser;->getQueryIntValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 76
    .local v8, "lPage":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ge v8, v0, :cond_109

    .line 77
    const/4 v8, 0x1

    .line 79
    :cond_109
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/box/boxjavalibv2/dao/BoxPreview;->setLastPage(I)V
    :try_end_10e
    .catch Ljava/lang/NumberFormatException; {:try_start_ee .. :try_end_10e} :catch_e5

    goto :goto_93
.end method


# virtual methods
.method public parse(Lcom/box/restclientv2/responses/IBoxResponse;)Lcom/box/boxjavalibv2/dao/BoxPreview;
    .registers 6
    .param p1, "response"    # Lcom/box/restclientv2/responses/IBoxResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/box/restclientv2/responseparsers/DefaultFileResponseParser;->parse(Lcom/box/restclientv2/responses/IBoxResponse;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 32
    .local v0, "is":Ljava/io/InputStream;
    new-instance v1, Lcom/box/boxjavalibv2/dao/BoxPreview;

    invoke-direct {v1}, Lcom/box/boxjavalibv2/dao/BoxPreview;-><init>()V

    .line 33
    .local v1, "preview":Lcom/box/boxjavalibv2/dao/BoxPreview;
    invoke-virtual {v1, v0}, Lcom/box/boxjavalibv2/dao/BoxPreview;->setContent(Ljava/io/InputStream;)V

    .line 34
    invoke-interface {p1}, Lcom/box/restclientv2/responses/IBoxResponse;->getContentLength()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/box/boxjavalibv2/dao/BoxPreview;->setContentLength(D)V

    .line 35
    check-cast p1, Lcom/box/restclientv2/responses/DefaultBoxResponse;

    .end local p1    # "response":Lcom/box/restclientv2/responses/IBoxResponse;
    invoke-direct {p0, v1, p1}, Lcom/box/boxjavalibv2/responseparsers/PreviewResponseParser;->parseLinks(Lcom/box/boxjavalibv2/dao/BoxPreview;Lcom/box/restclientv2/responses/DefaultBoxResponse;)V

    .line 36
    return-object v1
.end method

.method public bridge synthetic parse(Lcom/box/restclientv2/responses/IBoxResponse;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Lcom/box/restclientv2/responses/IBoxResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/box/boxjavalibv2/responseparsers/PreviewResponseParser;->parse(Lcom/box/restclientv2/responses/IBoxResponse;)Lcom/box/boxjavalibv2/dao/BoxPreview;

    move-result-object v0

    return-object v0
.end method
