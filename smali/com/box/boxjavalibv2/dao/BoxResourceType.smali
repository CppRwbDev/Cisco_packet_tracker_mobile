.class public final enum Lcom/box/boxjavalibv2/dao/BoxResourceType;
.super Ljava/lang/Enum;
.source "BoxResourceType.java"

# interfaces
.implements Lcom/box/boxjavalibv2/dao/IBoxType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/box/boxjavalibv2/dao/BoxResourceType;",
        ">;",
        "Lcom/box/boxjavalibv2/dao/IBoxType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/box/boxjavalibv2/dao/BoxResourceType;

.field public static final enum COLLABORATION:Lcom/box/boxjavalibv2/dao/BoxResourceType;

.field public static final enum COLLABORATIONS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

.field public static final enum COMMENT:Lcom/box/boxjavalibv2/dao/BoxResourceType;

.field public static final enum COMMENTS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

.field public static final enum EMAIL_ALIAS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

.field public static final enum EMAIL_ALIASES:Lcom/box/boxjavalibv2/dao/BoxResourceType;

.field public static final enum ERROR:Lcom/box/boxjavalibv2/dao/BoxResourceType;

.field public static final enum EVENT:Lcom/box/boxjavalibv2/dao/BoxResourceType;

.field public static final enum EVENTS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

.field public static final enum FILE:Lcom/box/boxjavalibv2/dao/BoxResourceType;

.field public static final enum FILES:Lcom/box/boxjavalibv2/dao/BoxResourceType;

.field public static final enum FILE_VERSION:Lcom/box/boxjavalibv2/dao/BoxResourceType;

.field public static final enum FILE_VERSIONS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

.field public static final enum FOLDER:Lcom/box/boxjavalibv2/dao/BoxResourceType;

.field public static final enum GROUP:Lcom/box/boxjavalibv2/dao/BoxResourceType;

.field public static final enum GROUPS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

.field public static final enum GROUP_MEMBERSHIP:Lcom/box/boxjavalibv2/dao/BoxResourceType;

.field public static final enum GROUP_MEMBERSHIPS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

.field public static final enum ITEM:Lcom/box/boxjavalibv2/dao/BoxResourceType;

.field public static final enum ITEMS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

.field public static final enum ITEM_PERMISSIONS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

.field public static final enum LOCK:Lcom/box/boxjavalibv2/dao/BoxResourceType;

.field public static final enum OAUTH_DATA:Lcom/box/boxjavalibv2/dao/BoxResourceType;

.field public static final enum PREVIEW:Lcom/box/boxjavalibv2/dao/BoxResourceType;

.field public static final enum REALTIME_SERVER:Lcom/box/boxjavalibv2/dao/BoxResourceType;

.field public static final enum SERVICE_ACTION:Lcom/box/boxjavalibv2/dao/BoxResourceType;

.field public static final enum THUMBNAIL:Lcom/box/boxjavalibv2/dao/BoxResourceType;

.field public static final enum USER:Lcom/box/boxjavalibv2/dao/BoxResourceType;

.field public static final enum USERS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

.field public static final enum WEB_LINK:Lcom/box/boxjavalibv2/dao/BoxResourceType;

.field public static final enum WEB_LINKS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

.field private static final typeToLowercaseString:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/box/boxjavalibv2/dao/BoxResourceType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 12
    new-instance v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    const-string v6, "ITEM"

    invoke-direct {v5, v6, v8}, Lcom/box/boxjavalibv2/dao/BoxResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ITEM:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .line 14
    new-instance v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    const-string v6, "ITEMS"

    invoke-direct {v5, v6, v9}, Lcom/box/boxjavalibv2/dao/BoxResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ITEMS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .line 16
    new-instance v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    const-string v6, "FILE"

    invoke-direct {v5, v6, v10}, Lcom/box/boxjavalibv2/dao/BoxResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FILE:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .line 18
    new-instance v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    const-string v6, "FILES"

    invoke-direct {v5, v6, v11}, Lcom/box/boxjavalibv2/dao/BoxResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FILES:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .line 20
    new-instance v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    const-string v6, "WEB_LINK"

    invoke-direct {v5, v6, v12}, Lcom/box/boxjavalibv2/dao/BoxResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->WEB_LINK:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .line 22
    new-instance v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    const-string v6, "WEB_LINKS"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/box/boxjavalibv2/dao/BoxResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->WEB_LINKS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .line 24
    new-instance v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    const-string v6, "PREVIEW"

    const/4 v7, 0x6

    invoke-direct {v5, v6, v7}, Lcom/box/boxjavalibv2/dao/BoxResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->PREVIEW:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .line 26
    new-instance v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    const-string v6, "FOLDER"

    const/4 v7, 0x7

    invoke-direct {v5, v6, v7}, Lcom/box/boxjavalibv2/dao/BoxResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FOLDER:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .line 28
    new-instance v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    const-string v6, "USER"

    const/16 v7, 0x8

    invoke-direct {v5, v6, v7}, Lcom/box/boxjavalibv2/dao/BoxResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->USER:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .line 30
    new-instance v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    const-string v6, "USERS"

    const/16 v7, 0x9

    invoke-direct {v5, v6, v7}, Lcom/box/boxjavalibv2/dao/BoxResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->USERS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .line 32
    new-instance v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    const-string v6, "GROUP"

    const/16 v7, 0xa

    invoke-direct {v5, v6, v7}, Lcom/box/boxjavalibv2/dao/BoxResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->GROUP:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .line 34
    new-instance v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    const-string v6, "GROUPS"

    const/16 v7, 0xb

    invoke-direct {v5, v6, v7}, Lcom/box/boxjavalibv2/dao/BoxResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->GROUPS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .line 36
    new-instance v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    const-string v6, "COMMENT"

    const/16 v7, 0xc

    invoke-direct {v5, v6, v7}, Lcom/box/boxjavalibv2/dao/BoxResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->COMMENT:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .line 38
    new-instance v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    const-string v6, "COMMENTS"

    const/16 v7, 0xd

    invoke-direct {v5, v6, v7}, Lcom/box/boxjavalibv2/dao/BoxResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->COMMENTS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .line 40
    new-instance v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    const-string v6, "FILE_VERSION"

    const/16 v7, 0xe

    invoke-direct {v5, v6, v7}, Lcom/box/boxjavalibv2/dao/BoxResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FILE_VERSION:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .line 42
    new-instance v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    const-string v6, "FILE_VERSIONS"

    const/16 v7, 0xf

    invoke-direct {v5, v6, v7}, Lcom/box/boxjavalibv2/dao/BoxResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FILE_VERSIONS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .line 44
    new-instance v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    const-string v6, "COLLABORATION"

    const/16 v7, 0x10

    invoke-direct {v5, v6, v7}, Lcom/box/boxjavalibv2/dao/BoxResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->COLLABORATION:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .line 46
    new-instance v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    const-string v6, "COLLABORATIONS"

    const/16 v7, 0x11

    invoke-direct {v5, v6, v7}, Lcom/box/boxjavalibv2/dao/BoxResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->COLLABORATIONS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .line 48
    new-instance v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    const-string v6, "EMAIL_ALIAS"

    const/16 v7, 0x12

    invoke-direct {v5, v6, v7}, Lcom/box/boxjavalibv2/dao/BoxResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->EMAIL_ALIAS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .line 50
    new-instance v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    const-string v6, "EMAIL_ALIASES"

    const/16 v7, 0x13

    invoke-direct {v5, v6, v7}, Lcom/box/boxjavalibv2/dao/BoxResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->EMAIL_ALIASES:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .line 52
    new-instance v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    const-string v6, "OAUTH_DATA"

    const/16 v7, 0x14

    invoke-direct {v5, v6, v7}, Lcom/box/boxjavalibv2/dao/BoxResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->OAUTH_DATA:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .line 54
    new-instance v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    const-string v6, "ERROR"

    const/16 v7, 0x15

    invoke-direct {v5, v6, v7}, Lcom/box/boxjavalibv2/dao/BoxResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ERROR:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .line 56
    new-instance v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    const-string v6, "EVENT"

    const/16 v7, 0x16

    invoke-direct {v5, v6, v7}, Lcom/box/boxjavalibv2/dao/BoxResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->EVENT:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .line 58
    new-instance v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    const-string v6, "EVENTS"

    const/16 v7, 0x17

    invoke-direct {v5, v6, v7}, Lcom/box/boxjavalibv2/dao/BoxResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->EVENTS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .line 60
    new-instance v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    const-string v6, "REALTIME_SERVER"

    const/16 v7, 0x18

    invoke-direct {v5, v6, v7}, Lcom/box/boxjavalibv2/dao/BoxResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->REALTIME_SERVER:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .line 62
    new-instance v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    const-string v6, "LOCK"

    const/16 v7, 0x19

    invoke-direct {v5, v6, v7}, Lcom/box/boxjavalibv2/dao/BoxResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->LOCK:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .line 64
    new-instance v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    const-string v6, "ITEM_PERMISSIONS"

    const/16 v7, 0x1a

    invoke-direct {v5, v6, v7}, Lcom/box/boxjavalibv2/dao/BoxResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ITEM_PERMISSIONS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .line 66
    new-instance v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    const-string v6, "SERVICE_ACTION"

    const/16 v7, 0x1b

    invoke-direct {v5, v6, v7}, Lcom/box/boxjavalibv2/dao/BoxResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->SERVICE_ACTION:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .line 68
    new-instance v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    const-string v6, "GROUP_MEMBERSHIP"

    const/16 v7, 0x1c

    invoke-direct {v5, v6, v7}, Lcom/box/boxjavalibv2/dao/BoxResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->GROUP_MEMBERSHIP:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .line 70
    new-instance v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    const-string v6, "GROUP_MEMBERSHIPS"

    const/16 v7, 0x1d

    invoke-direct {v5, v6, v7}, Lcom/box/boxjavalibv2/dao/BoxResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->GROUP_MEMBERSHIPS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    new-instance v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    const-string v6, "THUMBNAIL"

    const/16 v7, 0x1e

    invoke-direct {v5, v6, v7}, Lcom/box/boxjavalibv2/dao/BoxResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->THUMBNAIL:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .line 10
    const/16 v5, 0x1f

    new-array v5, v5, [Lcom/box/boxjavalibv2/dao/BoxResourceType;

    sget-object v6, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ITEM:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    aput-object v6, v5, v8

    sget-object v6, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ITEMS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    aput-object v6, v5, v9

    sget-object v6, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FILE:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    aput-object v6, v5, v10

    sget-object v6, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FILES:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    aput-object v6, v5, v11

    sget-object v6, Lcom/box/boxjavalibv2/dao/BoxResourceType;->WEB_LINK:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    aput-object v6, v5, v12

    const/4 v6, 0x5

    sget-object v7, Lcom/box/boxjavalibv2/dao/BoxResourceType;->WEB_LINKS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    sget-object v7, Lcom/box/boxjavalibv2/dao/BoxResourceType;->PREVIEW:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    aput-object v7, v5, v6

    const/4 v6, 0x7

    sget-object v7, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FOLDER:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    aput-object v7, v5, v6

    const/16 v6, 0x8

    sget-object v7, Lcom/box/boxjavalibv2/dao/BoxResourceType;->USER:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    aput-object v7, v5, v6

    const/16 v6, 0x9

    sget-object v7, Lcom/box/boxjavalibv2/dao/BoxResourceType;->USERS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    aput-object v7, v5, v6

    const/16 v6, 0xa

    sget-object v7, Lcom/box/boxjavalibv2/dao/BoxResourceType;->GROUP:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    aput-object v7, v5, v6

    const/16 v6, 0xb

    sget-object v7, Lcom/box/boxjavalibv2/dao/BoxResourceType;->GROUPS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    aput-object v7, v5, v6

    const/16 v6, 0xc

    sget-object v7, Lcom/box/boxjavalibv2/dao/BoxResourceType;->COMMENT:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    aput-object v7, v5, v6

    const/16 v6, 0xd

    sget-object v7, Lcom/box/boxjavalibv2/dao/BoxResourceType;->COMMENTS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    aput-object v7, v5, v6

    const/16 v6, 0xe

    sget-object v7, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FILE_VERSION:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    aput-object v7, v5, v6

    const/16 v6, 0xf

    sget-object v7, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FILE_VERSIONS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    aput-object v7, v5, v6

    const/16 v6, 0x10

    sget-object v7, Lcom/box/boxjavalibv2/dao/BoxResourceType;->COLLABORATION:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    aput-object v7, v5, v6

    const/16 v6, 0x11

    sget-object v7, Lcom/box/boxjavalibv2/dao/BoxResourceType;->COLLABORATIONS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    aput-object v7, v5, v6

    const/16 v6, 0x12

    sget-object v7, Lcom/box/boxjavalibv2/dao/BoxResourceType;->EMAIL_ALIAS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    aput-object v7, v5, v6

    const/16 v6, 0x13

    sget-object v7, Lcom/box/boxjavalibv2/dao/BoxResourceType;->EMAIL_ALIASES:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    aput-object v7, v5, v6

    const/16 v6, 0x14

    sget-object v7, Lcom/box/boxjavalibv2/dao/BoxResourceType;->OAUTH_DATA:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    aput-object v7, v5, v6

    const/16 v6, 0x15

    sget-object v7, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ERROR:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    aput-object v7, v5, v6

    const/16 v6, 0x16

    sget-object v7, Lcom/box/boxjavalibv2/dao/BoxResourceType;->EVENT:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    aput-object v7, v5, v6

    const/16 v6, 0x17

    sget-object v7, Lcom/box/boxjavalibv2/dao/BoxResourceType;->EVENTS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    aput-object v7, v5, v6

    const/16 v6, 0x18

    sget-object v7, Lcom/box/boxjavalibv2/dao/BoxResourceType;->REALTIME_SERVER:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    aput-object v7, v5, v6

    const/16 v6, 0x19

    sget-object v7, Lcom/box/boxjavalibv2/dao/BoxResourceType;->LOCK:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    aput-object v7, v5, v6

    const/16 v6, 0x1a

    sget-object v7, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ITEM_PERMISSIONS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    aput-object v7, v5, v6

    const/16 v6, 0x1b

    sget-object v7, Lcom/box/boxjavalibv2/dao/BoxResourceType;->SERVICE_ACTION:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    aput-object v7, v5, v6

    const/16 v6, 0x1c

    sget-object v7, Lcom/box/boxjavalibv2/dao/BoxResourceType;->GROUP_MEMBERSHIP:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    aput-object v7, v5, v6

    const/16 v6, 0x1d

    sget-object v7, Lcom/box/boxjavalibv2/dao/BoxResourceType;->GROUP_MEMBERSHIPS:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    aput-object v7, v5, v6

    const/16 v6, 0x1e

    sget-object v7, Lcom/box/boxjavalibv2/dao/BoxResourceType;->THUMBNAIL:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    aput-object v7, v5, v6

    sput-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->$VALUES:[Lcom/box/boxjavalibv2/dao/BoxResourceType;

    .line 73
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->typeToLowercaseString:Ljava/util/Map;

    .line 75
    invoke-static {}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->values()[Lcom/box/boxjavalibv2/dao/BoxResourceType;

    move-result-object v0

    .local v0, "arr$":[Lcom/box/boxjavalibv2/dao/BoxResourceType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_20d
    if-ge v1, v2, :cond_223

    aget-object v4, v0, v1

    .line 76
    .local v4, "type":Lcom/box/boxjavalibv2/dao/BoxResourceType;
    invoke-virtual {v4}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->name()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "str":Ljava/lang/String;
    sget-object v5, Lcom/box/boxjavalibv2/dao/BoxResourceType;->typeToLowercaseString:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_20d

    .line 79
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "type":Lcom/box/boxjavalibv2/dao/BoxResourceType;
    :cond_223
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getTypeFromLowercaseString(Ljava/lang/String;)Lcom/box/boxjavalibv2/dao/BoxResourceType;
    .registers 3
    .param p0, "string"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 104
    const-class v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/box/boxjavalibv2/dao/BoxResourceType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;

    return-object v0
.end method

.method public static values()[Lcom/box/boxjavalibv2/dao/BoxResourceType;
    .registers 1

    .prologue
    .line 10
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;->$VALUES:[Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v0}, [Lcom/box/boxjavalibv2/dao/BoxResourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/box/boxjavalibv2/dao/BoxResourceType;

    return-object v0
.end method


# virtual methods
.method public toPluralString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    sget-object v0, Lcom/box/boxjavalibv2/dao/BoxResourceType;->typeToLowercaseString:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
