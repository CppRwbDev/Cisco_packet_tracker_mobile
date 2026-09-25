.class public abstract Lcom/google/android/gms/gcm/Task;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private final adq:Ljava/lang/String;

.field private final adr:Z

.field private final ads:Z

.field private final mTag:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/gcm/Task;->adq:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/gcm/Task;->mTag:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->adr:Z

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->ads:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/gcm/Task;->adq:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/gcm/Task;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public isPersisted()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->ads:Z

    return v0
.end method

.method public isUpdateCurrent()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->adr:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/gcm/Task;->adq:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/gcm/Task;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->adr:Z

    if-eqz v0, :cond_1c

    move v0, v1

    :goto_11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->ads:Z

    if-eqz v0, :cond_1e

    :goto_18
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_1c
    move v0, v2

    goto :goto_11

    :cond_1e
    move v1, v2

    goto :goto_18
.end method
