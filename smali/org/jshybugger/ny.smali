.class abstract Lorg/jshybugger/nY;
.super Ljava/lang/Object;
.source "NamedLoggerBase.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/jshybugger/nS;


# instance fields
.field protected b:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lorg/jshybugger/nY;->b:Ljava/lang/String;

    return-object v0
.end method
