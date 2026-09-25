.class public final Lorg/jshybugger/gk;
.super Ljava/lang/Object;
.source "EmptyArrays.java"


# static fields
.field public static final a:[B

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/StackTraceElement;

.field public static final d:[Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 23
    new-array v0, v1, [B

    sput-object v0, Lorg/jshybugger/gk;->a:[B

    .line 24
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lorg/jshybugger/gk;->b:[Ljava/lang/String;

    .line 32
    new-array v0, v1, [Ljava/lang/StackTraceElement;

    sput-object v0, Lorg/jshybugger/gk;->c:[Ljava/lang/StackTraceElement;

    .line 33
    new-array v0, v1, [Ljava/nio/ByteBuffer;

    sput-object v0, Lorg/jshybugger/gk;->d:[Ljava/nio/ByteBuffer;

    return-void
.end method
