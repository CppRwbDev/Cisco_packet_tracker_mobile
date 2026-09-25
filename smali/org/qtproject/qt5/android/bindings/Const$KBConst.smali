.class public Lorg/qtproject/qt5/android/bindings/Const$KBConst;
.super Ljava/lang/Object;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt5/android/bindings/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KBConst"
.end annotation


# static fields
.field static final CodeCancel:I = -0x5

.field static final CodeSpace:I = 0x20


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/Const;


# direct methods
.method public constructor <init>(Lorg/qtproject/qt5/android/bindings/Const;)V
    .registers 2
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/Const;

    .prologue
    .line 53
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/Const$KBConst;->this$0:Lorg/qtproject/qt5/android/bindings/Const;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
