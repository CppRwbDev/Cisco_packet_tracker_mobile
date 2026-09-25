.class public abstract Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/games/internal/IRoomServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/IRoomServiceCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static aE(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IRoomServiceCallbacks;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
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

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_1c0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_9
    return v1

    :sswitch_a
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_10
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->c(IILjava/lang/String;)V

    goto :goto_9

    :sswitch_25
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->a(Ljava/lang/String;[BI)V

    goto :goto_9

    :sswitch_3a
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->bM(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_47
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->bN(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_54
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->bO(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_61
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->bP(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_6e
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->bQ(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_7b
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_8d
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->b(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_9f
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->c(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_b1
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->d(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_c3
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->e(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_d5
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->f(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_e7
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->onP2PConnected(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_f5
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->onP2PDisconnected(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_103
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->kH()V

    goto/16 :goto_9

    :sswitch_10d
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->g(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_11f
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->c(Ljava/lang/String;[B)V

    goto/16 :goto_9

    :sswitch_131
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->bR(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_13f
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->dF(I)V

    goto/16 :goto_9

    :sswitch_14d
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->aD(Landroid/os/IBinder;)V

    goto/16 :goto_9

    :sswitch_15b
    const-string v2, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_16c

    sget-object v0, Lcom/google/android/gms/games/internal/ConnectionInfo;->CREATOR:Lcom/google/android/gms/games/internal/ConnectionInfoCreator;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/games/internal/ConnectionInfoCreator;->cf(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/ConnectionInfo;

    move-result-object v0

    :cond_16c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->a(Lcom/google/android/gms/games/internal/ConnectionInfo;)V

    goto/16 :goto_9

    :sswitch_171
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->kI()V

    goto/16 :goto_9

    :sswitch_17b
    const-string v2, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_18e

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    :cond_18e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->a(Landroid/os/ParcelFileDescriptor;I)V

    goto/16 :goto_9

    :sswitch_197
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->v(Ljava/lang/String;I)V

    goto/16 :goto_9

    :sswitch_1a9
    const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1be

    move v0, v1

    :goto_1b9
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->i(Ljava/lang/String;Z)V

    goto/16 :goto_9

    :cond_1be
    const/4 v0, 0x0

    goto :goto_1b9

    :sswitch_data_1c0
    .sparse-switch
        0x3e9 -> :sswitch_10
        0x3ea -> :sswitch_25
        0x3eb -> :sswitch_3a
        0x3ec -> :sswitch_47
        0x3ed -> :sswitch_54
        0x3ee -> :sswitch_61
        0x3ef -> :sswitch_6e
        0x3f0 -> :sswitch_7b
        0x3f1 -> :sswitch_8d
        0x3f2 -> :sswitch_9f
        0x3f3 -> :sswitch_b1
        0x3f4 -> :sswitch_c3
        0x3f5 -> :sswitch_d5
        0x3f6 -> :sswitch_e7
        0x3f7 -> :sswitch_f5
        0x3f8 -> :sswitch_103
        0x3f9 -> :sswitch_10d
        0x3fa -> :sswitch_11f
        0x3fb -> :sswitch_131
        0x3fc -> :sswitch_13f
        0x3fd -> :sswitch_14d
        0x3fe -> :sswitch_15b
        0x3ff -> :sswitch_171
        0x400 -> :sswitch_17b
        0x401 -> :sswitch_197
        0x402 -> :sswitch_1a9
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
