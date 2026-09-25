.class public Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;
.super Lcom/box/boxjavalibv2/dao/BoxCollection;
.source "BoxAndroidCollection.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    new-instance v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection$1;

    invoke-direct {v0}, Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection$1;-><init>()V

    sput-object v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxCollection;-><init>()V

    .line 14
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 17
    new-instance v0, Lcom/box/boxandroidlibv2/dao/BoxParcel;

    invoke-direct {v0, p1}, Lcom/box/boxandroidlibv2/dao/BoxParcel;-><init>(Landroid/os/Parcel;)V

    invoke-direct {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxCollection;-><init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V

    .line 18
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection$1;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;)V
    .registers 2
    .param p1, "obj"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxCollection;-><init>(Lcom/box/boxjavalibv2/dao/BoxCollection;)V

    .line 27
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
    .line 35
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxCollection;-><init>(Ljava/util/Map;)V

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 45
    new-instance v0, Lcom/box/boxandroidlibv2/dao/BoxParcel;

    invoke-direct {v0, p1}, Lcom/box/boxandroidlibv2/dao/BoxParcel;-><init>(Landroid/os/Parcel;)V

    invoke-super {p0, v0, p2}, Lcom/box/boxjavalibv2/dao/BoxCollection;->writeToParcel(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;I)V

    .line 46
    return-void
.end method
