.class public abstract Lcom/google/android/gms/internal/ko$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/ko;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ko;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ko$a$a;
    }
.end annotation


# direct methods
.method public static as(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ko;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/internal/ko;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/internal/ko;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/ko$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ko$a$a;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_360

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    :sswitch_a
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_9

    :sswitch_11
    const-string v2, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_24

    sget-object v0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;

    :cond_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/km$a;->aq(Landroid/os/IBinder;)Lcom/google/android/gms/internal/km;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ko$a;->a(Lcom/google/android/gms/fitness/request/DataSourcesRequest;Lcom/google/android/gms/internal/km;Ljava/lang/String;)V

    move v0, v1

    goto :goto_9

    :sswitch_35
    const-string v2, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_48

    sget-object v0, Lcom/google/android/gms/fitness/request/n;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/n;

    :cond_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ks$a;->aw(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ks;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ko$a;->a(Lcom/google/android/gms/fitness/request/n;Lcom/google/android/gms/internal/ks;Ljava/lang/String;)V

    move v0, v1

    goto :goto_9

    :sswitch_59
    const-string v2, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6c

    sget-object v0, Lcom/google/android/gms/fitness/request/p;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/p;

    :cond_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ks$a;->aw(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ks;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ko$a;->a(Lcom/google/android/gms/fitness/request/p;Lcom/google/android/gms/internal/ks;Ljava/lang/String;)V

    move v0, v1

    goto :goto_9

    :sswitch_7d
    const-string v2, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_90

    sget-object v0, Lcom/google/android/gms/fitness/request/ae;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/ae;

    :cond_90
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ks$a;->aw(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ks;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ko$a;->a(Lcom/google/android/gms/fitness/request/ae;Lcom/google/android/gms/internal/ks;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_a2
    const-string v2, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b5

    sget-object v0, Lcom/google/android/gms/fitness/request/ah;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/ah;

    :cond_b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ks$a;->aw(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ks;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ko$a;->a(Lcom/google/android/gms/fitness/request/ah;Lcom/google/android/gms/internal/ks;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_c7
    const-string v2, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_da

    sget-object v0, Lcom/google/android/gms/fitness/request/l;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/l;

    :cond_da
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/kp$a;->at(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kp;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ko$a;->a(Lcom/google/android/gms/fitness/request/l;Lcom/google/android/gms/internal/kp;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_ec
    const-string v2, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_ff

    sget-object v0, Lcom/google/android/gms/fitness/request/DataInsertRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/DataInsertRequest;

    :cond_ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ks$a;->aw(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ks;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ko$a;->a(Lcom/google/android/gms/fitness/request/DataInsertRequest;Lcom/google/android/gms/internal/ks;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_111
    const-string v2, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_124

    sget-object v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;

    :cond_124
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ks$a;->aw(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ks;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ko$a;->a(Lcom/google/android/gms/fitness/request/DataDeleteRequest;Lcom/google/android/gms/internal/ks;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_9

    :sswitch_139
    const-string v2, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_14c

    sget-object v0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;

    :cond_14c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/kn$a;->ar(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kn;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ko$a;->a(Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;Lcom/google/android/gms/internal/kn;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_15e
    const-string v2, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_171

    sget-object v0, Lcom/google/android/gms/fitness/request/i;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/i;

    :cond_171
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/kn$a;->ar(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kn;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ko$a;->a(Lcom/google/android/gms/fitness/request/i;Lcom/google/android/gms/internal/kn;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_183
    const-string v2, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_196

    sget-object v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/DataReadRequest;

    :cond_196
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/kl$a;->ap(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kl;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ko$a;->a(Lcom/google/android/gms/fitness/request/DataReadRequest;Lcom/google/android/gms/internal/kl;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_1a8
    const-string v2, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1bb

    sget-object v0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;

    :cond_1bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ks$a;->aw(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ks;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ko$a;->a(Lcom/google/android/gms/fitness/request/SessionInsertRequest;Lcom/google/android/gms/internal/ks;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_1cd
    const-string v2, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1e0

    sget-object v0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/SessionReadRequest;

    :cond_1e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/kq$a;->au(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kq;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ko$a;->a(Lcom/google/android/gms/fitness/request/SessionReadRequest;Lcom/google/android/gms/internal/kq;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_1f2
    const-string v2, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_205

    sget-object v0, Lcom/google/android/gms/fitness/request/v;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/v;

    :cond_205
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ks$a;->aw(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ks;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ko$a;->a(Lcom/google/android/gms/fitness/request/v;Lcom/google/android/gms/internal/ks;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_217
    const-string v2, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_22a

    sget-object v0, Lcom/google/android/gms/fitness/request/x;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/x;

    :cond_22a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/kr$a;->av(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kr;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ko$a;->a(Lcom/google/android/gms/fitness/request/x;Lcom/google/android/gms/internal/kr;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_23c
    const-string v2, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_24f

    sget-object v0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;

    :cond_24f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ks$a;->aw(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ks;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ko$a;->a(Lcom/google/android/gms/fitness/request/StartBleScanRequest;Lcom/google/android/gms/internal/ks;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_261
    const-string v2, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_274

    sget-object v0, Lcom/google/android/gms/fitness/request/ac;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/ac;

    :cond_274
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ks$a;->aw(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ks;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ko$a;->a(Lcom/google/android/gms/fitness/request/ac;Lcom/google/android/gms/internal/ks;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_286
    const-string v2, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_299

    sget-object v0, Lcom/google/android/gms/fitness/request/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/b;

    :cond_299
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ks$a;->aw(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ks;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ko$a;->a(Lcom/google/android/gms/fitness/request/b;Lcom/google/android/gms/internal/ks;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_2ab
    const-string v2, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2be

    sget-object v0, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;

    :cond_2be
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ks$a;->aw(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ks;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ko$a;->a(Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;Lcom/google/android/gms/internal/ks;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_2d0
    const-string v2, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2e3

    sget-object v0, Lcom/google/android/gms/fitness/request/t;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/t;

    :cond_2e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ks$a;->aw(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ks;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ko$a;->a(Lcom/google/android/gms/fitness/request/t;Lcom/google/android/gms/internal/ks;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_2f5
    const-string v2, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_308

    sget-object v0, Lcom/google/android/gms/fitness/request/z;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/z;

    :cond_308
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ks$a;->aw(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ks;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ko$a;->a(Lcom/google/android/gms/fitness/request/z;Lcom/google/android/gms/internal/ks;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_31a
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ks$a;->aw(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ks;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/ko$a;->a(Lcom/google/android/gms/internal/ks;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_331
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ks$a;->aw(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ks;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/ko$a;->b(Lcom/google/android/gms/internal/ks;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_348
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/le$a;->ax(Landroid/os/IBinder;)Lcom/google/android/gms/internal/le;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/ko$a;->a(Lcom/google/android/gms/internal/le;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_9

    nop

    :sswitch_data_360
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_35
        0x3 -> :sswitch_59
        0x4 -> :sswitch_7d
        0x5 -> :sswitch_a2
        0x6 -> :sswitch_c7
        0x7 -> :sswitch_ec
        0x8 -> :sswitch_183
        0x9 -> :sswitch_1a8
        0xa -> :sswitch_1cd
        0xb -> :sswitch_1f2
        0xc -> :sswitch_217
        0xd -> :sswitch_139
        0xe -> :sswitch_15e
        0xf -> :sswitch_23c
        0x10 -> :sswitch_261
        0x11 -> :sswitch_286
        0x12 -> :sswitch_2ab
        0x13 -> :sswitch_111
        0x14 -> :sswitch_2d0
        0x15 -> :sswitch_2f5
        0x16 -> :sswitch_31a
        0x17 -> :sswitch_331
        0x18 -> :sswitch_348
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
