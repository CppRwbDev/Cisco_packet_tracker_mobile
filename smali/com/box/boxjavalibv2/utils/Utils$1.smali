.class synthetic Lcom/box/boxjavalibv2/utils/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/box/boxjavalibv2/utils/Utils;
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
    .line 33
    invoke-static {}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->values()[Lcom/box/boxjavalibv2/dao/BoxResourceType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/box/boxjavalibv2/utils/Utils$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    :try_start_9
    sget-object v0, Lcom/box/boxjavalibv2/utils/Utils$1;->$SwitchMap$com$box$boxjavalibv2$dao$BoxResourceType:[I

    sget-object v1, Lcom/box/boxjavalibv2/dao/BoxResourceType;->FILE_VERSION:Lcom/box/boxjavalibv2/dao/BoxResourceType;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxResourceType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method
