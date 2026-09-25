.class final Lcom/box/boxandroidlibv2/dao/BoxAndroidItemPermissions$1;
.super Ljava/lang/Object;
.source "BoxAndroidItemPermissions.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/box/boxandroidlibv2/dao/BoxAndroidItemPermissions;
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
        "Lcom/box/boxandroidlibv2/dao/BoxAndroidItemPermissions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/box/boxandroidlibv2/dao/BoxAndroidItemPermissions;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 52
    new-instance v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidItemPermissions;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidItemPermissions;-><init>(Landroid/os/Parcel;Lcom/box/boxandroidlibv2/dao/BoxAndroidItemPermissions$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidItemPermissions$1;->createFromParcel(Landroid/os/Parcel;)Lcom/box/boxandroidlibv2/dao/BoxAndroidItemPermissions;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/box/boxandroidlibv2/dao/BoxAndroidItemPermissions;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 57
    new-array v0, p1, [Lcom/box/boxandroidlibv2/dao/BoxAndroidItemPermissions;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidItemPermissions$1;->newArray(I)[Lcom/box/boxandroidlibv2/dao/BoxAndroidItemPermissions;

    move-result-object v0

    return-object v0
.end method
