.class public abstract Lcom/google/android/gms/internal/hx;
.super Lcom/google/android/gms/internal/hw$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/hw$a;"
    }
.end annotation


# instance fields
.field protected CH:Lcom/google/android/gms/common/api/BaseImplementation$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/hw$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/hx;->CH:Lcom/google/android/gms/common/api/BaseImplementation$b;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/Status;Z)V
    .registers 3

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/hm$b;)V
    .registers 2

    return-void
.end method
