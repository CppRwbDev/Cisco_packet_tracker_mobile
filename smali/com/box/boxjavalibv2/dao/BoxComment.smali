.class public Lcom/box/boxjavalibv2/dao/BoxComment;
.super Lcom/box/boxjavalibv2/dao/BoxTypedObject;
.source "BoxComment.java"


# static fields
.field public static final AT_MENTION_TAG_REGEX:Ljava/lang/String; = "@\\[\\d+:(.*?)\\]"

.field public static final FIELD_CREATED_BY:Ljava/lang/String; = "created_by"

.field public static final FIELD_IS_REPLY_COMMENT:Ljava/lang/String; = "is_reply_comment"

.field public static final FIELD_ITEM:Ljava/lang/String; = "item"

.field public static final FIELD_MESSAGE:Ljava/lang/String; = "message"

.field public static final FIELD_TAGGED_MESSAGE:Ljava/lang/String; = "tagged_message"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>()V

    .line 24
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;->COMMENT:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxComment;->setType(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/BoxComment;)V
    .registers 2
    .param p1, "obj"    # Lcom/box/boxjavalibv2/dao/BoxComment;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>(Lcom/box/boxjavalibv2/dao/BoxTypedObject;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V
    .registers 2
    .param p1, "in"    # Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
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
    .line 42
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;-><init>(Ljava/util/Map;)V

    .line 43
    return-void
.end method

.method private setCreatedBy(Lcom/box/boxjavalibv2/dao/BoxUser;)V
    .registers 3
    .param p1, "createdBy"    # Lcom/box/boxjavalibv2/dao/BoxUser;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created_by"
    .end annotation

    .prologue
    .line 126
    const-string v0, "created_by"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxComment;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method private setIsReplyComment(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "isReplyComment"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_reply_comment"
    .end annotation

    .prologue
    .line 63
    const-string v0, "is_reply_comment"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxComment;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method private setItem(Lcom/box/boxjavalibv2/dao/BoxTypedObject;)V
    .registers 3
    .param p1, "item"    # Lcom/box/boxjavalibv2/dao/BoxTypedObject;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "item"
    .end annotation

    .prologue
    .line 147
    const-string v0, "item"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxComment;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method private setMessage(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "message"
    .end annotation

    .prologue
    .line 84
    const-string v0, "message"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxComment;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method private setTaggedMessage(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "tagged_message"
    .end annotation

    .prologue
    .line 105
    const-string v0, "tagged_message"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/dao/BoxComment;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    return-void
.end method


# virtual methods
.method public getCreatedBy()Lcom/box/boxjavalibv2/dao/BoxUser;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created_by"
    .end annotation

    .prologue
    .line 115
    const-string v0, "created_by"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxComment;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxUser;

    return-object v0
.end method

.method public getItem()Lcom/box/boxjavalibv2/dao/BoxTypedObject;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "item"
    .end annotation

    .prologue
    .line 136
    const-string v0, "item"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxComment;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxTypedObject;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "message"
    .end annotation

    .prologue
    .line 73
    const-string v0, "message"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxComment;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTaggedMessage()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "tagged_message"
    .end annotation

    .prologue
    .line 94
    const-string v0, "tagged_message"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxComment;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isReplyComment()Ljava/lang/Boolean;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_reply_comment"
    .end annotation

    .prologue
    .line 52
    const-string v0, "is_reply_comment"

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxComment;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method
