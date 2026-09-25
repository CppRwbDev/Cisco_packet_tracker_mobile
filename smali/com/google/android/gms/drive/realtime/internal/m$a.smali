.class public abstract Lcom/google/android/gms/drive/realtime/internal/m$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/drive/realtime/internal/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/realtime/internal/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/realtime/internal/m$a$a;
    }
.end annotation


# direct methods
.method public static ai(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/m;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/drive/realtime/internal/m;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/drive/realtime/internal/m;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/drive/realtime/internal/m$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
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

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_488

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    :sswitch_a
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v6

    goto :goto_9

    :sswitch_11
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/drive/realtime/internal/n$a;->aj(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/n;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/n;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto :goto_9

    :sswitch_2a
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/realtime/internal/c$a;->Y(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Lcom/google/android/gms/drive/realtime/internal/c;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto :goto_9

    :sswitch_3f
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/realtime/internal/o$a;->ak(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Lcom/google/android/gms/drive/realtime/internal/o;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto :goto_9

    :sswitch_54
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/realtime/internal/c$a;->Y(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/m$a;->b(Lcom/google/android/gms/drive/realtime/internal/c;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto :goto_9

    :sswitch_69
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/realtime/internal/o$a;->ak(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/m$a;->b(Lcom/google/android/gms/drive/realtime/internal/o;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto :goto_9

    :sswitch_7e
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/realtime/internal/l$a;->ah(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/l;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Lcom/google/android/gms/drive/realtime/internal/l;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_94
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/drive/realtime/internal/f$a;->ab(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/f;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/f;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_b2
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/drive/realtime/internal/l$a;->ah(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/l;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/l;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_cc
    const-string v1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e1

    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->z(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    :cond_e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/drive/realtime/internal/j$a;->af(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/j;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/realtime/internal/j;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_f2
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/drive/realtime/internal/j$a;->af(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/j;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/j;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_10c
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/drive/realtime/internal/f$a;->ab(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/f;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/f;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_126
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/drive/realtime/internal/g$a;->ac(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/g;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/g;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_144
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/drive/realtime/internal/l$a;->ah(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/l;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/realtime/internal/m$a;->b(Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/l;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_15e
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/drive/realtime/internal/n$a;->aj(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/n;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/realtime/internal/m$a;->b(Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/n;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_178
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/drive/realtime/internal/j$a;->af(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/j;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/drive/realtime/internal/j;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_19a
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/drive/realtime/internal/j$a;->af(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/j;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;IILcom/google/android/gms/drive/realtime/internal/j;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_1bc
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/drive/realtime/internal/j$a;->af(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/j;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/j;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_1da
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/drive/realtime/internal/f$a;->ab(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/f;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/realtime/internal/m$a;->b(Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/f;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_1f4
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/drive/realtime/internal/l$a;->ah(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/l;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/realtime/internal/m$a;->c(Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/l;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_20e
    const-string v1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_227

    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->z(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    :cond_227
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/drive/realtime/internal/j$a;->af(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/j;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;ILcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/realtime/internal/j;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_238
    const-string v1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_251

    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->z(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    :cond_251
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/drive/realtime/internal/g$a;->ac(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/g;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;ILcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/realtime/internal/g;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_262
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/drive/realtime/internal/g$a;->ac(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/g;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;IILcom/google/android/gms/drive/realtime/internal/g;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_284
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/realtime/internal/j$a;->af(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/j;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;ILjava/lang/String;ILcom/google/android/gms/drive/realtime/internal/j;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_2ab
    const-string v1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2be

    sget-object v0, Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;

    :cond_2be
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/drive/realtime/internal/o$a;->ak(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/o;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;Lcom/google/android/gms/drive/realtime/internal/o;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_2cf
    const-string v1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2e2

    sget-object v0, Lcom/google/android/gms/drive/realtime/internal/EndCompoundOperationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/realtime/internal/EndCompoundOperationRequest;

    :cond_2e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/drive/realtime/internal/j$a;->af(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/j;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Lcom/google/android/gms/drive/realtime/internal/EndCompoundOperationRequest;Lcom/google/android/gms/drive/realtime/internal/j;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_2f3
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/realtime/internal/j$a;->af(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Lcom/google/android/gms/drive/realtime/internal/j;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_309
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/realtime/internal/j$a;->af(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/m$a;->b(Lcom/google/android/gms/drive/realtime/internal/j;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_31f
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/realtime/internal/c$a;->Y(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/m$a;->c(Lcom/google/android/gms/drive/realtime/internal/c;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_335
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/realtime/internal/c$a;->Y(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/m$a;->d(Lcom/google/android/gms/drive/realtime/internal/c;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_34b
    const-string v1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_35e

    sget-object v0, Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;

    :cond_35e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/drive/realtime/internal/n$a;->aj(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/n;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;Lcom/google/android/gms/drive/realtime/internal/n;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_36f
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/drive/realtime/internal/k$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/k;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/k;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_389
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/drive/realtime/internal/o$a;->ak(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/o;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;ILcom/google/android/gms/drive/realtime/internal/o;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_3a7
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/realtime/internal/l$a;->ah(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/l;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/m$a;->b(Lcom/google/android/gms/drive/realtime/internal/l;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_3bd
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/drive/realtime/internal/j$a;->af(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/j;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(ILcom/google/android/gms/drive/realtime/internal/j;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_3d7
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/realtime/internal/e$a;->aa(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Lcom/google/android/gms/drive/realtime/internal/e;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_3ed
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/realtime/internal/d$a;->Z(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Lcom/google/android/gms/drive/realtime/internal/d;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_403
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/realtime/internal/i$a;->ae(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Lcom/google/android/gms/drive/realtime/internal/i;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_419
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/realtime/internal/h$a;->ad(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Lcom/google/android/gms/drive/realtime/internal/h;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_42f
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/drive/realtime/internal/o$a;->ak(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/o;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/o;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_449
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/drive/realtime/internal/o$a;->ak(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/o;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/realtime/internal/m$a;->b(Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/o;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_463
    const-string v1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_476

    sget-object v0, Lcom/google/android/gms/drive/realtime/internal/EndCompoundOperationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/realtime/internal/EndCompoundOperationRequest;

    :cond_476
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/drive/realtime/internal/o$a;->ak(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/o;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Lcom/google/android/gms/drive/realtime/internal/EndCompoundOperationRequest;Lcom/google/android/gms/drive/realtime/internal/o;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    nop

    :sswitch_data_488
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2a
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_94
        0x5 -> :sswitch_b2
        0x6 -> :sswitch_cc
        0x7 -> :sswitch_f2
        0x8 -> :sswitch_144
        0x9 -> :sswitch_15e
        0xa -> :sswitch_178
        0xb -> :sswitch_19a
        0xc -> :sswitch_1bc
        0xd -> :sswitch_1da
        0xe -> :sswitch_1f4
        0xf -> :sswitch_20e
        0x10 -> :sswitch_238
        0x11 -> :sswitch_262
        0x12 -> :sswitch_2ab
        0x13 -> :sswitch_463
        0x14 -> :sswitch_10c
        0x15 -> :sswitch_126
        0x16 -> :sswitch_2f3
        0x17 -> :sswitch_309
        0x18 -> :sswitch_31f
        0x19 -> :sswitch_335
        0x1a -> :sswitch_34b
        0x1b -> :sswitch_36f
        0x1c -> :sswitch_389
        0x1d -> :sswitch_3a7
        0x1e -> :sswitch_3bd
        0x1f -> :sswitch_3d7
        0x20 -> :sswitch_3ed
        0x21 -> :sswitch_54
        0x22 -> :sswitch_403
        0x23 -> :sswitch_69
        0x24 -> :sswitch_419
        0x25 -> :sswitch_284
        0x26 -> :sswitch_42f
        0x27 -> :sswitch_449
        0x28 -> :sswitch_7e
        0x29 -> :sswitch_2cf
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
