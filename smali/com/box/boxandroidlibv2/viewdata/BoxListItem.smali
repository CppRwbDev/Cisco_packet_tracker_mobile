.class public final Lcom/box/boxandroidlibv2/viewdata/BoxListItem;
.super Ljava/lang/Object;
.source "BoxListItem.java"


# static fields
.field public static final TOTAL_FILE_TYPES:I = 0x3

.field public static final TYPE_BOX_FILE_ITEM:I = 0x1

.field public static final TYPE_BOX_FOLDER_ITEM:I = 0x0

.field public static final TYPE_FUTURE_TASK:I = 0x2


# instance fields
.field private mBoxItem:Lcom/box/boxjavalibv2/dao/BoxItem;

.field private mIdentifier:Ljava/lang/String;

.field private mTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<*>;"
        }
    .end annotation
.end field

.field private mType:I


# direct methods
.method public constructor <init>(Lcom/box/boxjavalibv2/dao/BoxItem;Ljava/lang/String;)V
    .registers 4
    .param p1, "boxItem"    # Lcom/box/boxjavalibv2/dao/BoxItem;
    .param p2, "identifier"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->mBoxItem:Lcom/box/boxjavalibv2/dao/BoxItem;

    .line 33
    instance-of v0, p1, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

    if-eqz v0, :cond_10

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->mType:I

    .line 39
    :goto_c
    invoke-direct {p0, p2}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->setIdentifier(Ljava/lang/String;)V

    .line 40
    return-void

    .line 37
    :cond_10
    const/4 v0, 0x1

    iput v0, p0, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->mType:I

    goto :goto_c
.end method

.method public constructor <init>(Ljava/util/concurrent/FutureTask;Ljava/lang/String;)V
    .registers 4
    .param p2, "identifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/FutureTask",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->mTask:Ljava/util/concurrent/FutureTask;

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->mType:I

    .line 51
    invoke-direct {p0, p2}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->setIdentifier(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method private setIdentifier(Ljava/lang/String;)V
    .registers 2
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->mIdentifier:Ljava/lang/String;

    .line 105
    return-void
.end method


# virtual methods
.method public getBoxItem()Lcom/box/boxjavalibv2/dao/BoxItem;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->mBoxItem:Lcom/box/boxjavalibv2/dao/BoxItem;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getTask()Ljava/util/concurrent/FutureTask;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/FutureTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->mTask:Ljava/util/concurrent/FutureTask;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 87
    iget v0, p0, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->mType:I

    return v0
.end method

.method public setTask(Ljava/util/concurrent/FutureTask;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/FutureTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<*>;"
    iput-object p1, p0, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->mTask:Ljava/util/concurrent/FutureTask;

    .line 62
    return-void
.end method
