.class public Lcom/box/boxandroidlibv2/jsonparsing/AndroidBoxResourceHub;
.super Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub;
.source "AndroidBoxResourceHub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub;-><init>()V

    return-void
.end method


# virtual methods
.method protected getObjectClassGivenConcreteIBoxType(Lcom/box/boxjavalibv2/dao/IBoxType;)Ljava/lang/Class;
    .registers 4
    .param p1, "type"    # Lcom/box/boxjavalibv2/dao/IBoxType;

    .prologue
    .line 30
    sget-object v1, Lcom/box/boxandroidlibv2/jsonparsing/AndroidBoxResourceHub$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    move-object v0, p1

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_40

    .line 71
    invoke-super {p0, p1}, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub;->getObjectClassGivenConcreteIBoxType(Lcom/box/boxjavalibv2/dao/IBoxType;)Ljava/lang/Class;

    move-result-object v0

    :goto_12
    return-object v0

    .line 32
    :pswitch_13
    const-class v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidFile;

    goto :goto_12

    .line 34
    :pswitch_16
    const-class v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

    goto :goto_12

    .line 36
    :pswitch_19
    const-class v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidUser;

    goto :goto_12

    .line 38
    :pswitch_1c
    const-class v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidGroup;

    goto :goto_12

    .line 40
    :pswitch_1f
    const-class v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidGroupMembership;

    goto :goto_12

    .line 42
    :pswitch_22
    const-class v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidFileVersion;

    goto :goto_12

    .line 44
    :pswitch_25
    const-class v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidComment;

    goto :goto_12

    .line 46
    :pswitch_28
    const-class v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidCollaboration;

    goto :goto_12

    .line 48
    :pswitch_2b
    const-class v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidEmailAlias;

    goto :goto_12

    .line 50
    :pswitch_2e
    const-class v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;

    goto :goto_12

    .line 52
    :pswitch_31
    const-class v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidWebLink;

    goto :goto_12

    .line 54
    :pswitch_34
    const-class v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidEvent;

    goto :goto_12

    .line 56
    :pswitch_37
    const-class v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidItemPermissions;

    goto :goto_12

    .line 67
    :pswitch_3a
    const-class v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;

    goto :goto_12

    .line 69
    :pswitch_3d
    const-class v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidEventCollection;

    goto :goto_12

    .line 30
    :pswitch_data_40
    .packed-switch 0x1
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
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3d
    .end packed-switch
.end method
