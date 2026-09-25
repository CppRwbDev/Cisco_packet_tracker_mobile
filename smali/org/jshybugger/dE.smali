.class public final enum Lorg/jshybugger/de;
.super Ljava/lang/Enum;
.source "ZlibWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jshybugger/de;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/jshybugger/de;

.field public static final enum b:Lorg/jshybugger/de;

.field public static final enum c:Lorg/jshybugger/de;

.field public static final enum d:Lorg/jshybugger/de;

.field private static final synthetic e:[Lorg/jshybugger/de;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lorg/jshybugger/de;

    const-string v1, "ZLIB"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/de;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jshybugger/de;->a:Lorg/jshybugger/de;

    .line 30
    new-instance v0, Lorg/jshybugger/de;

    const-string v1, "GZIP"

    invoke-direct {v0, v1, v3}, Lorg/jshybugger/de;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jshybugger/de;->b:Lorg/jshybugger/de;

    .line 34
    new-instance v0, Lorg/jshybugger/de;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lorg/jshybugger/de;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jshybugger/de;->c:Lorg/jshybugger/de;

    .line 39
    new-instance v0, Lorg/jshybugger/de;

    const-string v1, "ZLIB_OR_NONE"

    invoke-direct {v0, v1, v5}, Lorg/jshybugger/de;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jshybugger/de;->d:Lorg/jshybugger/de;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/jshybugger/de;

    sget-object v1, Lorg/jshybugger/de;->a:Lorg/jshybugger/de;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jshybugger/de;->b:Lorg/jshybugger/de;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jshybugger/de;->c:Lorg/jshybugger/de;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jshybugger/de;->d:Lorg/jshybugger/de;

    aput-object v1, v0, v5

    sput-object v0, Lorg/jshybugger/de;->e:[Lorg/jshybugger/de;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lorg/jshybugger/de;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lorg/jshybugger/de;->e:[Lorg/jshybugger/de;

    invoke-virtual {v0}, [Lorg/jshybugger/de;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jshybugger/de;

    return-object v0
.end method
