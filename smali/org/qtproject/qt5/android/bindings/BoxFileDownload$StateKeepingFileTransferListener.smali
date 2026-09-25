.class Lorg/qtproject/qt5/android/bindings/BoxFileDownload$StateKeepingFileTransferListener;
.super Ljava/lang/Object;
.source "BoxFileDownload.java"

# interfaces
.implements Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt5/android/bindings/BoxFileDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateKeepingFileTransferListener"
.end annotation


# instance fields
.field protected mBytesTransferred:J

.field protected mCancelled:Z

.field protected mException:Ljava/io/IOException;

.field protected mStatus:Ljava/lang/String;

.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/BoxFileDownload;


# direct methods
.method private constructor <init>(Lorg/qtproject/qt5/android/bindings/BoxFileDownload;)V
    .registers 3

    .prologue
    .line 83
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/BoxFileDownload$StateKeepingFileTransferListener;->this$0:Lorg/qtproject/qt5/android/bindings/BoxFileDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/qtproject/qt5/android/bindings/BoxFileDownload$StateKeepingFileTransferListener;->mCancelled:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/qtproject/qt5/android/bindings/BoxFileDownload;Lorg/qtproject/qt5/android/bindings/BoxFileDownload$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/qtproject/qt5/android/bindings/BoxFileDownload;
    .param p2, "x1"    # Lorg/qtproject/qt5/android/bindings/BoxFileDownload$1;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lorg/qtproject/qt5/android/bindings/BoxFileDownload$StateKeepingFileTransferListener;-><init>(Lorg/qtproject/qt5/android/bindings/BoxFileDownload;)V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/qtproject/qt5/android/bindings/BoxFileDownload$StateKeepingFileTransferListener;->mCancelled:Z

    .line 98
    return-void
.end method

.method public onComplete(Ljava/lang/String;)V
    .registers 2
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/BoxFileDownload$StateKeepingFileTransferListener;->mStatus:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public onIOException(Ljava/io/IOException;)V
    .registers 2
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 108
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/BoxFileDownload$StateKeepingFileTransferListener;->mException:Ljava/io/IOException;

    .line 109
    return-void
.end method

.method public onProgress(J)V
    .registers 4
    .param p1, "bytesTransferred"    # J

    .prologue
    .line 102
    iput-wide p1, p0, Lorg/qtproject/qt5/android/bindings/BoxFileDownload$StateKeepingFileTransferListener;->mBytesTransferred:J

    .line 104
    return-void
.end method
