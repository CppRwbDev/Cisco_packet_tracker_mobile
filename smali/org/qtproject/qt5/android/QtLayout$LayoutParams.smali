.class public Lorg/qtproject/qt5/android/QtLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "QtLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt5/android/QtLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    .prologue
    .line 192
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 193
    iput p3, p0, Lorg/qtproject/qt5/android/QtLayout$LayoutParams;->x:I

    .line 194
    iput p4, p0, Lorg/qtproject/qt5/android/QtLayout$LayoutParams;->y:I

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    .prologue
    .line 202
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    return-void
.end method
