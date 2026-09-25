.class public Lcom/box/boxandroidlibv2/exceptions/BoxAndroidLibException;
.super Ljava/lang/Exception;
.source "BoxAndroidLibException.java"

# interfaces
.implements Lcom/box/boxandroidlibv2/exceptions/IBoxAndroidLibException;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private rawException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/box/boxandroidlibv2/exceptions/BoxAndroidLibException;->rawException:Ljava/lang/Exception;

    .line 27
    return-void
.end method


# virtual methods
.method public getRawException()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/box/boxandroidlibv2/exceptions/BoxAndroidLibException;->rawException:Ljava/lang/Exception;

    return-object v0
.end method
