.class public Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub;
.super Lcom/box/boxjavalibv2/jsonparsing/BaseBoxResourceHub;
.source "BoxResourceHub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/box/boxjavalibv2/jsonparsing/BaseBoxResourceHub;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public getAllTypes()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/box/boxjavalibv2/dao/IBoxType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub;->getLowerCaseStringToTypeMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getClass(Lcom/box/boxjavalibv2/dao/IBoxType;)Ljava/lang/Class;
    .registers 4
    .param p1, "type"    # Lcom/box/boxjavalibv2/dao/IBoxType;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub;->getConcreteClassForIBoxType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 41
    invoke-virtual {p0, p1}, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub;->getObjectClassGivenConcreteIBoxType(Lcom/box/boxjavalibv2/dao/IBoxType;)Ljava/lang/Class;

    move-result-object v0

    .line 44
    :goto_12
    return-object v0

    :cond_13
    invoke-super {p0, p1}, Lcom/box/boxjavalibv2/jsonparsing/BaseBoxResourceHub;->getClass(Lcom/box/boxjavalibv2/dao/IBoxType;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_12
.end method

.method protected getConcreteClassForIBoxType()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 116
    const-class v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    return-object v0
.end method

.method protected getObjectClassGivenConcreteIBoxType(Lcom/box/boxjavalibv2/dao/IBoxType;)Ljava/lang/Class;
    .registers 4
    .param p1, "type"    # Lcom/box/boxjavalibv2/dao/IBoxType;

    .prologue
    .line 56
    sget-object v0, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    check-cast p1, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .end local p1    # "type":Lcom/box/boxjavalibv2/dao/IBoxType;
    invoke-virtual {p1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_50

    .line 109
    const-class v0, Lcom/box/boxjavalibv2/dao/BoxTypedObject;

    :goto_f
    return-object v0

    .line 58
    :pswitch_10
    const-class v0, Lcom/box/boxjavalibv2/dao/BoxFile;

    goto :goto_f

    .line 60
    :pswitch_13
    const-class v0, Lcom/box/boxjavalibv2/dao/BoxPreview;

    goto :goto_f

    .line 62
    :pswitch_16
    const-class v0, Lcom/box/boxjavalibv2/dao/BoxThumbnail;

    goto :goto_f

    .line 64
    :pswitch_19
    const-class v0, Lcom/box/boxjavalibv2/dao/BoxFolder;

    goto :goto_f

    .line 66
    :pswitch_1c
    const-class v0, Lcom/box/boxjavalibv2/dao/BoxWebLink;

    goto :goto_f

    .line 68
    :pswitch_1f
    const-class v0, Lcom/box/boxjavalibv2/dao/BoxUser;

    goto :goto_f

    .line 70
    :pswitch_22
    const-class v0, Lcom/box/boxjavalibv2/dao/BoxGroup;

    goto :goto_f

    .line 72
    :pswitch_25
    const-class v0, Lcom/box/boxjavalibv2/dao/BoxGroupMembership;

    goto :goto_f

    .line 74
    :pswitch_28
    const-class v0, Lcom/box/boxjavalibv2/dao/BoxFileVersion;

    goto :goto_f

    .line 76
    :pswitch_2b
    const-class v0, Lcom/box/boxjavalibv2/dao/BoxItem;

    goto :goto_f

    .line 78
    :pswitch_2e
    const-class v0, Lcom/box/boxjavalibv2/dao/BoxComment;

    goto :goto_f

    .line 80
    :pswitch_31
    const-class v0, Lcom/box/boxjavalibv2/dao/BoxCollaboration;

    goto :goto_f

    .line 82
    :pswitch_34
    const-class v0, Lcom/box/boxjavalibv2/dao/BoxEmailAlias;

    goto :goto_f

    .line 84
    :pswitch_37
    const-class v0, Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    goto :goto_f

    .line 86
    :pswitch_3a
    const-class v0, Lcom/box/boxjavalibv2/dao/BoxEvent;

    goto :goto_f

    .line 88
    :pswitch_3d
    const-class v0, Lcom/box/boxjavalibv2/dao/BoxEventCollection;

    goto :goto_f

    .line 90
    :pswitch_40
    const-class v0, Lcom/box/boxjavalibv2/dao/BoxRealTimeServer;

    goto :goto_f

    .line 92
    :pswitch_43
    const-class v0, Lcom/box/boxjavalibv2/dao/BoxLock;

    goto :goto_f

    .line 94
    :pswitch_46
    const-class v0, Lcom/box/boxjavalibv2/dao/BoxItemPermissions;

    goto :goto_f

    .line 96
    :pswitch_49
    const-class v0, Lcom/box/boxjavalibv2/dao/BoxServerError;

    goto :goto_f

    .line 107
    :pswitch_4c
    const-class v0, Lcom/box/boxjavalibv2/dao/BoxCollection;

    goto :goto_f

    .line 56
    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_46
        :pswitch_49
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
    .end packed-switch
.end method

.method public getTypeFromLowercaseString(Ljava/lang/String;)Lcom/box/boxjavalibv2/dao/IBoxType;
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub;->getLowerCaseStringToTypeMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/IBoxType;

    return-object v0
.end method

.method protected initializeTypes()V
    .registers 2

    .prologue
    .line 126
    invoke-super {p0}, Lcom/box/boxjavalibv2/jsonparsing/BaseBoxResourceHub;->initializeTypes()V

    .line 127
    const-class v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {p0, v0}, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub;->initializeEnumTypes(Ljava/lang/Class;)V

    .line 128
    return-void
.end method
