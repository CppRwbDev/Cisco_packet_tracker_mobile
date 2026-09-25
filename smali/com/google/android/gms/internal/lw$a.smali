.class public abstract Lcom/google/android/gms/internal/lw$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/lw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/lw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/lw$a$a;
    }
.end annotation


# direct methods
.method public static aK(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lw;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/internal/lw;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/internal/lw;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/lw$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/lw$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    sparse-switch p1, :sswitch_data_58c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_a
    return v7

    :sswitch_b
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_11
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/mb;->CREATOR:Lcom/google/android/gms/internal/mc;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3d

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/lv$a;->aJ(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lv;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/gms/internal/lw$a;->a(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/lv;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :cond_3d
    move-object v0, v5

    goto :goto_2a

    :sswitch_3f
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_65

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/lv$a;->aJ(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lv;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/lw$a;->a(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/lv;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :cond_65
    move-object v0, v5

    goto :goto_52

    :sswitch_67
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/lv$a;->aJ(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lv;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/lw$a;->a([Ljava/lang/String;Lcom/google/android/gms/internal/lv;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :sswitch_83
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/lv$a;->aJ(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lv;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/lw$a;->a(Lcom/google/android/gms/internal/lv;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_9c
    const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c2

    move v1, v7

    :goto_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c4

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_ba
    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/google/android/gms/internal/lw$a;->a(JZLandroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_c2
    move v1, v0

    goto :goto_ac

    :cond_c4
    move-object v0, v5

    goto :goto_ba

    :sswitch_c6
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e1

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_d9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lw$a;->removeActivityUpdates(Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_e1
    move-object v0, v5

    goto :goto_d9

    :sswitch_e3
    const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lw$a;->lT()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_f9

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v7}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_f9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_fe
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10f

    sget-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Lcom/google/android/gms/location/b;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/b;->cs(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v5

    :cond_10f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/a$a;->aI(Landroid/os/IBinder;)Lcom/google/android/gms/location/a;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/internal/lw$a;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/a;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_11f
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_130

    sget-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Lcom/google/android/gms/location/b;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/b;->cs(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v5

    :cond_130
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/a$a;->aI(Landroid/os/IBinder;)Lcom/google/android/gms/location/a;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5, v0, v1}, Lcom/google/android/gms/internal/lw$a;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/a;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_144
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16c

    sget-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Lcom/google/android/gms/location/b;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/b;->cs(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    move-object v1, v0

    :goto_156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16e

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_164
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/lw$a;->a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_16c
    move-object v1, v5

    goto :goto_156

    :cond_16e
    move-object v0, v5

    goto :goto_164

    :sswitch_170
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_181

    sget-object v0, Lcom/google/android/gms/internal/lz;->CREATOR:Lcom/google/android/gms/internal/ma;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ma;->cv(Landroid/os/Parcel;)Lcom/google/android/gms/internal/lz;

    move-result-object v5

    :cond_181
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/a$a;->aI(Landroid/os/IBinder;)Lcom/google/android/gms/location/a;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/internal/lw$a;->a(Lcom/google/android/gms/internal/lz;Lcom/google/android/gms/location/a;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_191
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b9

    sget-object v0, Lcom/google/android/gms/internal/lz;->CREATOR:Lcom/google/android/gms/internal/ma;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ma;->cv(Landroid/os/Parcel;)Lcom/google/android/gms/internal/lz;

    move-result-object v0

    move-object v1, v0

    :goto_1a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1bb

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_1b1
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/lw$a;->a(Lcom/google/android/gms/internal/lz;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_1b9
    move-object v1, v5

    goto :goto_1a3

    :cond_1bb
    move-object v0, v5

    goto :goto_1b1

    :sswitch_1bd
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/a$a;->aI(Landroid/os/IBinder;)Lcom/google/android/gms/location/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lw$a;->a(Lcom/google/android/gms/location/a;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_1d2
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1ed

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_1e5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lw$a;->a(Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_1ed
    move-object v0, v5

    goto :goto_1e5

    :sswitch_1ef
    const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1fb

    move v0, v7

    :cond_1fb
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lw$a;->setMockMode(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_203
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21e

    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    :goto_216
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lw$a;->setMockLocation(Landroid/location/Location;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_21e
    move-object v0, v5

    goto :goto_216

    :sswitch_220
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_25e

    sget-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/g;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/g;->cL(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    :goto_231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_260

    sget-object v0, Lcom/google/android/gms/internal/mi;->CREATOR:Lcom/google/android/gms/internal/mj;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mj;->cz(Landroid/os/Parcel;)Lcom/google/android/gms/internal/mi;

    move-result-object v3

    :goto_241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_262

    sget-object v0, Lcom/google/android/gms/internal/mw;->CREATOR:Lcom/google/android/gms/internal/mx;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mx;->cF(Landroid/os/Parcel;)Lcom/google/android/gms/internal/mw;

    move-result-object v4

    :goto_24d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mu$a;->aM(Landroid/os/IBinder;)Lcom/google/android/gms/internal/mu;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/lw$a;->a(Lcom/google/android/gms/maps/model/LatLngBounds;ILcom/google/android/gms/internal/mi;Lcom/google/android/gms/internal/mw;Lcom/google/android/gms/internal/mu;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_25e
    move-object v1, v5

    goto :goto_231

    :cond_260
    move-object v3, v5

    goto :goto_241

    :cond_262
    move-object v4, v5

    goto :goto_24d

    :sswitch_264
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2a6

    sget-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/g;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/g;->cL(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    :goto_275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2a8

    sget-object v0, Lcom/google/android/gms/internal/mi;->CREATOR:Lcom/google/android/gms/internal/mj;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mj;->cz(Landroid/os/Parcel;)Lcom/google/android/gms/internal/mi;

    move-result-object v4

    :goto_289
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_295

    sget-object v0, Lcom/google/android/gms/internal/mw;->CREATOR:Lcom/google/android/gms/internal/mx;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mx;->cF(Landroid/os/Parcel;)Lcom/google/android/gms/internal/mw;

    move-result-object v5

    :cond_295
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mu$a;->aM(Landroid/os/IBinder;)Lcom/google/android/gms/internal/mu;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/lw$a;->a(Lcom/google/android/gms/maps/model/LatLngBounds;ILjava/lang/String;Lcom/google/android/gms/internal/mi;Lcom/google/android/gms/internal/mw;Lcom/google/android/gms/internal/mu;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_2a6
    move-object v1, v5

    goto :goto_275

    :cond_2a8
    move-object v4, v5

    goto :goto_289

    :sswitch_2aa
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2bf

    sget-object v1, Lcom/google/android/gms/internal/mw;->CREATOR:Lcom/google/android/gms/internal/mx;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/mx;->cF(Landroid/os/Parcel;)Lcom/google/android/gms/internal/mw;

    move-result-object v5

    :cond_2bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mu$a;->aM(Landroid/os/IBinder;)Lcom/google/android/gms/internal/mu;

    move-result-object v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/gms/internal/lw$a;->a(Ljava/lang/String;Lcom/google/android/gms/internal/mw;Lcom/google/android/gms/internal/mu;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_2cf
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_308

    sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/i;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/i;->cM(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    :goto_2e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_30a

    sget-object v1, Lcom/google/android/gms/internal/mi;->CREATOR:Lcom/google/android/gms/internal/mj;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/mj;->cz(Landroid/os/Parcel;)Lcom/google/android/gms/internal/mi;

    move-result-object v1

    :goto_2ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2f8

    sget-object v2, Lcom/google/android/gms/internal/mw;->CREATOR:Lcom/google/android/gms/internal/mx;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/mx;->cF(Landroid/os/Parcel;)Lcom/google/android/gms/internal/mw;

    move-result-object v5

    :cond_2f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mu$a;->aM(Landroid/os/IBinder;)Lcom/google/android/gms/internal/mu;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v5, v2}, Lcom/google/android/gms/internal/lw$a;->a(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/internal/mi;Lcom/google/android/gms/internal/mw;Lcom/google/android/gms/internal/mu;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_308
    move-object v0, v5

    goto :goto_2e0

    :cond_30a
    move-object v1, v5

    goto :goto_2ec

    :sswitch_30c
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_339

    sget-object v0, Lcom/google/android/gms/internal/mi;->CREATOR:Lcom/google/android/gms/internal/mj;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mj;->cz(Landroid/os/Parcel;)Lcom/google/android/gms/internal/mi;

    move-result-object v0

    :goto_31d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_329

    sget-object v1, Lcom/google/android/gms/internal/mw;->CREATOR:Lcom/google/android/gms/internal/mx;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/mx;->cF(Landroid/os/Parcel;)Lcom/google/android/gms/internal/mw;

    move-result-object v5

    :cond_329
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mu$a;->aM(Landroid/os/IBinder;)Lcom/google/android/gms/internal/mu;

    move-result-object v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/gms/internal/lw$a;->a(Lcom/google/android/gms/internal/mi;Lcom/google/android/gms/internal/mw;Lcom/google/android/gms/internal/mu;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_339
    move-object v0, v5

    goto :goto_31d

    :sswitch_33b
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_350

    sget-object v1, Lcom/google/android/gms/internal/mw;->CREATOR:Lcom/google/android/gms/internal/mx;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/mx;->cF(Landroid/os/Parcel;)Lcom/google/android/gms/internal/mw;

    move-result-object v5

    :cond_350
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mu$a;->aM(Landroid/os/IBinder;)Lcom/google/android/gms/internal/mu;

    move-result-object v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/gms/internal/lw$a;->b(Ljava/lang/String;Lcom/google/android/gms/internal/mw;Lcom/google/android/gms/internal/mu;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_360
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_39e

    sget-object v0, Lcom/google/android/gms/internal/ms;->CREATOR:Lcom/google/android/gms/internal/mt;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mt;->cE(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ms;

    move-result-object v1

    :goto_371
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3a0

    sget-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/g;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/g;->cL(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    :goto_37d
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3a2

    sget-object v0, Lcom/google/android/gms/internal/mw;->CREATOR:Lcom/google/android/gms/internal/mx;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mx;->cF(Landroid/os/Parcel;)Lcom/google/android/gms/internal/mw;

    move-result-object v4

    :goto_38d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mu$a;->aM(Landroid/os/IBinder;)Lcom/google/android/gms/internal/mu;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/lw$a;->a(Lcom/google/android/gms/internal/ms;Lcom/google/android/gms/maps/model/LatLngBounds;Ljava/util/List;Lcom/google/android/gms/internal/mw;Lcom/google/android/gms/internal/mu;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_39e
    move-object v1, v5

    goto :goto_371

    :cond_3a0
    move-object v2, v5

    goto :goto_37d

    :cond_3a2
    move-object v4, v5

    goto :goto_38d

    :sswitch_3a4
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3d9

    sget-object v0, Lcom/google/android/gms/internal/mm;->CREATOR:Lcom/google/android/gms/internal/mn;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mn;->cB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/mm;

    move-result-object v0

    move-object v1, v0

    :goto_3b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3db

    sget-object v0, Lcom/google/android/gms/internal/mw;->CREATOR:Lcom/google/android/gms/internal/mx;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mx;->cF(Landroid/os/Parcel;)Lcom/google/android/gms/internal/mw;

    move-result-object v0

    move-object v2, v0

    :goto_3c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3dd

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_3d1
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/lw$a;->a(Lcom/google/android/gms/internal/mm;Lcom/google/android/gms/internal/mw;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_3d9
    move-object v1, v5

    goto :goto_3b6

    :cond_3db
    move-object v2, v5

    goto :goto_3c3

    :cond_3dd
    move-object v0, v5

    goto :goto_3d1

    :sswitch_3df
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_407

    sget-object v0, Lcom/google/android/gms/internal/mw;->CREATOR:Lcom/google/android/gms/internal/mx;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mx;->cF(Landroid/os/Parcel;)Lcom/google/android/gms/internal/mw;

    move-result-object v0

    move-object v1, v0

    :goto_3f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_409

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_3ff
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/lw$a;->a(Lcom/google/android/gms/internal/mw;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_407
    move-object v1, v5

    goto :goto_3f1

    :cond_409
    move-object v0, v5

    goto :goto_3ff

    :sswitch_40b
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_440

    sget-object v0, Lcom/google/android/gms/internal/mg;->CREATOR:Lcom/google/android/gms/internal/mh;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mh;->cy(Landroid/os/Parcel;)Lcom/google/android/gms/internal/mg;

    move-result-object v0

    move-object v1, v0

    :goto_41d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_442

    sget-object v0, Lcom/google/android/gms/internal/mw;->CREATOR:Lcom/google/android/gms/internal/mx;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mx;->cF(Landroid/os/Parcel;)Lcom/google/android/gms/internal/mw;

    move-result-object v0

    move-object v2, v0

    :goto_42a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_444

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_438
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/lw$a;->a(Lcom/google/android/gms/internal/mg;Lcom/google/android/gms/internal/mw;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_440
    move-object v1, v5

    goto :goto_41d

    :cond_442
    move-object v2, v5

    goto :goto_42a

    :cond_444
    move-object v0, v5

    goto :goto_438

    :sswitch_446
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_46e

    sget-object v0, Lcom/google/android/gms/internal/mw;->CREATOR:Lcom/google/android/gms/internal/mx;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mx;->cF(Landroid/os/Parcel;)Lcom/google/android/gms/internal/mw;

    move-result-object v0

    move-object v1, v0

    :goto_458
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_470

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_466
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/lw$a;->b(Lcom/google/android/gms/internal/mw;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_46e
    move-object v1, v5

    goto :goto_458

    :cond_470
    move-object v0, v5

    goto :goto_466

    :sswitch_472
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4b0

    sget-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/g;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/g;->cL(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    :goto_487
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4b2

    sget-object v0, Lcom/google/android/gms/internal/me;->CREATOR:Lcom/google/android/gms/internal/mf;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mf;->cx(Landroid/os/Parcel;)Lcom/google/android/gms/internal/me;

    move-result-object v3

    :goto_493
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4b4

    sget-object v0, Lcom/google/android/gms/internal/mw;->CREATOR:Lcom/google/android/gms/internal/mx;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mx;->cF(Landroid/os/Parcel;)Lcom/google/android/gms/internal/mw;

    move-result-object v4

    :goto_49f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mu$a;->aM(Landroid/os/IBinder;)Lcom/google/android/gms/internal/mu;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/lw$a;->a(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/internal/me;Lcom/google/android/gms/internal/mw;Lcom/google/android/gms/internal/mu;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_4b0
    move-object v2, v5

    goto :goto_487

    :cond_4b2
    move-object v3, v5

    goto :goto_493

    :cond_4b4
    move-object v4, v5

    goto :goto_49f

    :sswitch_4b6
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4e5

    sget-object v0, Lcom/google/android/gms/internal/mq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mq;

    :goto_4c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4d5

    sget-object v1, Lcom/google/android/gms/internal/mw;->CREATOR:Lcom/google/android/gms/internal/mx;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/mx;->cF(Landroid/os/Parcel;)Lcom/google/android/gms/internal/mw;

    move-result-object v5

    :cond_4d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mu$a;->aM(Landroid/os/IBinder;)Lcom/google/android/gms/internal/mu;

    move-result-object v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/gms/internal/lw$a;->a(Lcom/google/android/gms/internal/mq;Lcom/google/android/gms/internal/mw;Lcom/google/android/gms/internal/mu;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_4e5
    move-object v0, v5

    goto :goto_4c9

    :sswitch_4e7
    const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/lw$a;->bT(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_501

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v7}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_501
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_506
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_528

    sget-object v0, Lcom/google/android/gms/internal/mk;->CREATOR:Lcom/google/android/gms/internal/ml;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ml;->cA(Landroid/os/Parcel;)Lcom/google/android/gms/internal/mk;

    move-result-object v0

    :goto_517
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_523

    sget-object v1, Lcom/google/android/gms/internal/mw;->CREATOR:Lcom/google/android/gms/internal/mx;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/mx;->cF(Landroid/os/Parcel;)Lcom/google/android/gms/internal/mw;

    move-result-object v5

    :cond_523
    invoke-virtual {p0, v0, v5}, Lcom/google/android/gms/internal/lw$a;->a(Lcom/google/android/gms/internal/mk;Lcom/google/android/gms/internal/mw;)V

    goto/16 :goto_a

    :cond_528
    move-object v0, v5

    goto :goto_517

    :sswitch_52a
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_549

    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    :goto_53d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/lw$a;->a(Landroid/location/Location;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_549
    move-object v0, v5

    goto :goto_53d

    :sswitch_54b
    const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/lw$a;->bU(Ljava/lang/String;)Lcom/google/android/gms/location/c;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_565

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v7}, Lcom/google/android/gms/location/c;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_565
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_56a
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lw$a;->lU()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_a

    :sswitch_57b
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lw$a;->lV()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_a

    :sswitch_data_58c
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_3f
        0x3 -> :sswitch_67
        0x4 -> :sswitch_83
        0x5 -> :sswitch_9c
        0x6 -> :sswitch_c6
        0x7 -> :sswitch_e3
        0x8 -> :sswitch_fe
        0x9 -> :sswitch_144
        0xa -> :sswitch_1bd
        0xb -> :sswitch_1d2
        0xc -> :sswitch_1ef
        0xd -> :sswitch_203
        0xe -> :sswitch_220
        0xf -> :sswitch_2aa
        0x10 -> :sswitch_2cf
        0x11 -> :sswitch_30c
        0x12 -> :sswitch_3a4
        0x13 -> :sswitch_3df
        0x14 -> :sswitch_11f
        0x15 -> :sswitch_4e7
        0x19 -> :sswitch_506
        0x1a -> :sswitch_52a
        0x22 -> :sswitch_54b
        0x2a -> :sswitch_33b
        0x2e -> :sswitch_4b6
        0x2f -> :sswitch_264
        0x30 -> :sswitch_40b
        0x31 -> :sswitch_446
        0x32 -> :sswitch_360
        0x33 -> :sswitch_56a
        0x34 -> :sswitch_170
        0x35 -> :sswitch_191
        0x36 -> :sswitch_57b
        0x37 -> :sswitch_472
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
