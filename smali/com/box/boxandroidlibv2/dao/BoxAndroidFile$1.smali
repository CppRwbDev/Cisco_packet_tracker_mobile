.class final Lcom/box/boxandroidlibv2/dao/BoxAndroidFile$1;
.super Ljava/lang/Object;
.source "BoxAndroidFile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/box/boxandroidlibv2/dao/BoxAndroidFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/box/boxandroidlibv2/dao/BoxAndroidFile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/box/boxandroidlibv2/dao/BoxAndroidFile;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 100
    new-instance v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidFile;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidFile;-><init>(Landroid/os/Parcel;Lcom/box/boxandroidlibv2/dao/BoxAndroidFile$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidFile$1;->createFromParcel(Landroid/os/Parcel;)Lcom/box/boxandroidlibv2/dao/BoxAndroidFile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/box/boxandroidlibv2/dao/BoxAndroidFile;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 105
    new-array v0, p1, [Lcom/box/boxandroidlibv2/dao/BoxAndroidFile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidFile$1;->newArray(I)[Lcom/box/boxandroidlibv2/dao/BoxAndroidFile;

    move-result-object v0

    return-object v0
.end method
