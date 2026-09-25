.class public Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;
.super Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
.source "BoxCommentRequestObject.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;-><init>()V

    .line 14
    return-void
.end method

.method public static addCommentRequestObject(Lcom/box/boxjavalibv2/dao/IBoxType;Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;
    .registers 7
    .param p0, "type"    # Lcom/box/boxjavalibv2/dao/IBoxType;
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v1, Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;

    invoke-direct {v1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;-><init>()V

    .line 32
    .local v1, "obj":Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;
    const-string v3, "@\\[\\d+:(.*?)\\]"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 33
    .local v2, "regex":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 34
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 35
    invoke-virtual {v1, p0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;->setItem(Lcom/box/boxjavalibv2/dao/IBoxType;Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;->setTaggedMessage(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;

    move-result-object v3

    .line 37
    :goto_1d
    return-object v3

    :cond_1e
    invoke-virtual {v1, p0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;->setItem(Lcom/box/boxjavalibv2/dao/IBoxType;Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;->setMessage(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;

    move-result-object v3

    goto :goto_1d
.end method

.method private static getItemEntity(Lcom/box/boxjavalibv2/dao/IBoxType;Ljava/lang/String;)Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;
    .registers 5
    .param p0, "type"    # Lcom/box/boxjavalibv2/dao/IBoxType;
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v0, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;-><init>()V

    .line 92
    .local v0, "entity":Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;
    const-string v1, "type"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-object v0
.end method

.method public static updateCommentRequestObject(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;
    .registers 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 48
    new-instance v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;-><init>()V

    .line 49
    .local v0, "obj":Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;
    invoke-virtual {v0, p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;->setMessage(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public setItem(Lcom/box/boxjavalibv2/dao/IBoxType;Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;
    .registers 5
    .param p1, "type"    # Lcom/box/boxjavalibv2/dao/IBoxType;
    .param p2, "itemId"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string v0, "item"

    invoke-static {p1, p2}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;->getItemEntity(Lcom/box/boxjavalibv2/dao/IBoxType;Ljava/lang/String;)Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 60
    const-string v0, "message"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-object p0
.end method

.method public setTaggedMessage(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string v0, "tagged_message"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxCommentRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-object p0
.end method
