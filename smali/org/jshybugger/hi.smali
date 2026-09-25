.class final Lorg/jshybugger/hI;
.super Ljava/lang/Object;
.source "DebugInstrumentationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/io/BufferedInputStream;

.field private synthetic b:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lorg/jshybugger/hE;Ljava/io/BufferedInputStream;Ljava/io/OutputStream;)V
    .registers 4

    .prologue
    .line 988
    iput-object p2, p0, Lorg/jshybugger/hI;->a:Ljava/io/BufferedInputStream;

    iput-object p3, p0, Lorg/jshybugger/hI;->b:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 991
    const/16 v0, 0x1000

    :try_start_2
    new-array v0, v0, [B

    .line 992
    :goto_4
    iget-object v1, p0, Lorg/jshybugger/hI;->a:Ljava/io/BufferedInputStream;

    invoke-virtual {v1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_22

    .line 996
    iget-object v2, p0, Lorg/jshybugger/hI;->b:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_12} :catch_13
    .catchall {:try_start_2 .. :try_end_12} :catchall_37

    goto :goto_4

    .line 1000
    :catch_13
    move-exception v0

    .line 1001
    :try_start_14
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_37

    .line 1005
    :try_start_17
    iget-object v0, p0, Lorg/jshybugger/hI;->a:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 1006
    iget-object v0, p0, Lorg/jshybugger/hI;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_21} :catch_32

    .line 1010
    :goto_21
    return-void

    .line 1005
    :cond_22
    :try_start_22
    iget-object v0, p0, Lorg/jshybugger/hI;->a:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 1006
    iget-object v0, p0, Lorg/jshybugger/hI;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2c} :catch_2d

    goto :goto_21

    .line 1007
    :catch_2d
    move-exception v0

    .line 1008
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    .line 1007
    :catch_32
    move-exception v0

    .line 1008
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    .line 1004
    :catchall_37
    move-exception v0

    .line 1005
    :try_start_38
    iget-object v1, p0, Lorg/jshybugger/hI;->a:Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 1006
    iget-object v1, p0, Lorg/jshybugger/hI;->b:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_42} :catch_43

    .line 1009
    :goto_42
    throw v0

    .line 1007
    :catch_43
    move-exception v1

    .line 1008
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42
.end method
