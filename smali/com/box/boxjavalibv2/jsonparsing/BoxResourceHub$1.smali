.class synthetic Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;
.super Ljava/lang/Object;
.source "BoxResourceHub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 56
    invoke-static {}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->values()[Lcom/box/boxjavalibv2/dao/BoxResourceType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    :try_start_9
    sget-object v0, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FILE:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_1b8

    :goto_14
    :try_start_14
    sget-object v0, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->PREVIEW:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1b5

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->THUMBNAIL:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_1b2

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FOLDER:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_1af

    :goto_35
    :try_start_35
    sget-object v0, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->WEB_LINK:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_1ac

    :goto_40
    :try_start_40
    sget-object v0, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->USER:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_1a9

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->GROUP:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_1a6

    :goto_56
    :try_start_56
    sget-object v0, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->GROUP_MEMBERSHIP:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_1a3

    :goto_62
    :try_start_62
    sget-object v0, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FILE_VERSION:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_1a0

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ITEM:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_19d

    :goto_7a
    :try_start_7a
    sget-object v0, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->COMMENT:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_19a

    :goto_86
    :try_start_86
    sget-object v0, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->COLLABORATION:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_197

    :goto_92
    :try_start_92
    sget-object v0, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->EMAIL_ALIAS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_194

    :goto_9e
    :try_start_9e
    sget-object v0, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->OAUTH_DATA:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_191

    :goto_aa
    :try_start_aa
    sget-object v0, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->EVENT:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_18e

    :goto_b6
    :try_start_b6
    sget-object v0, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->EVENTS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_18b

    :goto_c2
    :try_start_c2
    sget-object v0, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->REALTIME_SERVER:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c2 .. :try_end_ce} :catch_188

    :goto_ce
    :try_start_ce
    sget-object v0, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->LOCK:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ce .. :try_end_da} :catch_185

    :goto_da
    :try_start_da
    sget-object v0, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ITEM_PERMISSIONS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_da .. :try_end_e6} :catch_182

    :goto_e6
    :try_start_e6
    sget-object v0, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ERROR:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e6 .. :try_end_f2} :catch_17f

    :goto_f2
    :try_start_f2
    sget-object v0, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ITEMS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_fe
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f2 .. :try_end_fe} :catch_17d

    :goto_fe
    :try_start_fe
    sget-object v0, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FILES:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_10a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fe .. :try_end_10a} :catch_17b

    :goto_10a
    :try_start_10a
    sget-object v0, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->USERS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_116
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10a .. :try_end_116} :catch_179

    :goto_116
    :try_start_116
    sget-object v0, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->GROUPS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_122
    .catch Ljava/lang/NoSuchFieldError; {:try_start_116 .. :try_end_122} :catch_177

    :goto_122
    :try_start_122
    sget-object v0, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->COMMENTS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_12e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_122 .. :try_end_12e} :catch_175

    :goto_12e
    :try_start_12e
    sget-object v0, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FILE_VERSIONS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_13a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12e .. :try_end_13a} :catch_173

    :goto_13a
    :try_start_13a
    sget-object v0, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->COLLABORATIONS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_146
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13a .. :try_end_146} :catch_171

    :goto_146
    :try_start_146
    sget-object v0, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->EMAIL_ALIASES:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_152
    .catch Ljava/lang/NoSuchFieldError; {:try_start_146 .. :try_end_152} :catch_16f

    :goto_152
    :try_start_152
    sget-object v0, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->WEB_LINKS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_15e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_152 .. :try_end_15e} :catch_16d

    :goto_15e
    :try_start_15e
    sget-object v0, Lcom/box/boxjavalibv2/jsonparsing/BoxResourceHub$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->GROUP_MEMBERSHIPS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_16a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15e .. :try_end_16a} :catch_16b

    :goto_16a
    return-void

    :catch_16b
    move-exception v0

    goto :goto_16a

    :catch_16d
    move-exception v0

    goto :goto_15e

    :catch_16f
    move-exception v0

    goto :goto_152

    :catch_171
    move-exception v0

    goto :goto_146

    :catch_173
    move-exception v0

    goto :goto_13a

    :catch_175
    move-exception v0

    goto :goto_12e

    :catch_177
    move-exception v0

    goto :goto_122

    :catch_179
    move-exception v0

    goto :goto_116

    :catch_17b
    move-exception v0

    goto :goto_10a

    :catch_17d
    move-exception v0

    goto :goto_fe

    :catch_17f
    move-exception v0

    goto/16 :goto_f2

    :catch_182
    move-exception v0

    goto/16 :goto_e6

    :catch_185
    move-exception v0

    goto/16 :goto_da

    :catch_188
    move-exception v0

    goto/16 :goto_ce

    :catch_18b
    move-exception v0

    goto/16 :goto_c2

    :catch_18e
    move-exception v0

    goto/16 :goto_b6

    :catch_191
    move-exception v0

    goto/16 :goto_aa

    :catch_194
    move-exception v0

    goto/16 :goto_9e

    :catch_197
    move-exception v0

    goto/16 :goto_92

    :catch_19a
    move-exception v0

    goto/16 :goto_86

    :catch_19d
    move-exception v0

    goto/16 :goto_7a

    :catch_1a0
    move-exception v0

    goto/16 :goto_6e

    :catch_1a3
    move-exception v0

    goto/16 :goto_62

    :catch_1a6
    move-exception v0

    goto/16 :goto_56

    :catch_1a9
    move-exception v0

    goto/16 :goto_4b

    :catch_1ac
    move-exception v0

    goto/16 :goto_40

    :catch_1af
    move-exception v0

    goto/16 :goto_35

    :catch_1b2
    move-exception v0

    goto/16 :goto_2a

    :catch_1b5
    move-exception v0

    goto/16 :goto_1f

    :catch_1b8
    move-exception v0

    goto/16 :goto_14
.end method
