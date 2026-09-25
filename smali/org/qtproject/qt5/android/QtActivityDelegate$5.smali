.class Lorg/qtproject/qt5/android/QtActivityDelegate$5;
.super Ljava/lang/Object;
.source "QtActivityDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/QtActivityDelegate;->openContextMenu(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;

.field final synthetic val$h:I

.field final synthetic val$w:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/QtActivityDelegate;IIII)V
    .registers 6

    .prologue
    .line 1088
    iput-object p1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$5;->this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;

    iput p2, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$5;->val$w:I

    iput p3, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$5;->val$h:I

    iput p4, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$5;->val$x:I

    iput p5, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$5;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 1091
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    iget v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$5;->val$w:I

    if-lez v0, :cond_e

    iget v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$5;->val$h:I

    if-gtz v0, :cond_1e

    .line 1092
    :cond_e
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$5;->this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtActivityDelegate;->access$200(Lorg/qtproject/qt5/android/QtActivityDelegate;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$5;->this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;

    invoke-static {v1}, Lorg/qtproject/qt5/android/QtActivityDelegate;->access$700(Lorg/qtproject/qt5/android/QtActivityDelegate;)Lorg/qtproject/qt5/android/QtLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->openContextMenu(Landroid/view/View;)V

    .line 1102
    :goto_1d
    return-void

    .line 1093
    :cond_1e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_5d

    .line 1094
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$5;->this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtActivityDelegate;->access$700(Lorg/qtproject/qt5/android/QtActivityDelegate;)Lorg/qtproject/qt5/android/QtLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$5;->this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;

    invoke-static {v1}, Lorg/qtproject/qt5/android/QtActivityDelegate;->access$000(Lorg/qtproject/qt5/android/QtActivityDelegate;)Lorg/qtproject/qt5/android/QtEditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/qtproject/qt5/android/QtLayout;->removeView(Landroid/view/View;)V

    .line 1095
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$5;->this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtActivityDelegate;->access$700(Lorg/qtproject/qt5/android/QtActivityDelegate;)Lorg/qtproject/qt5/android/QtLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$5;->this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;

    invoke-static {v1}, Lorg/qtproject/qt5/android/QtActivityDelegate;->access$000(Lorg/qtproject/qt5/android/QtActivityDelegate;)Lorg/qtproject/qt5/android/QtEditText;

    move-result-object v1

    new-instance v2, Lorg/qtproject/qt5/android/QtLayout$LayoutParams;

    iget v3, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$5;->val$w:I

    iget v4, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$5;->val$h:I

    iget v5, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$5;->val$x:I

    iget v6, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$5;->val$y:I

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/qtproject/qt5/android/QtLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Lorg/qtproject/qt5/android/QtLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1096
    invoke-static {}, Lorg/qtproject/qt5/android/QtPopupMenu;->getInstance()Lorg/qtproject/qt5/android/QtPopupMenu;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$5;->this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;

    invoke-static {v1}, Lorg/qtproject/qt5/android/QtActivityDelegate;->access$000(Lorg/qtproject/qt5/android/QtActivityDelegate;)Lorg/qtproject/qt5/android/QtEditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/qtproject/qt5/android/QtPopupMenu;->showMenu(Landroid/view/View;)V

    goto :goto_1d

    .line 1098
    :cond_5d
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$5;->this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtActivityDelegate;->access$700(Lorg/qtproject/qt5/android/QtActivityDelegate;)Lorg/qtproject/qt5/android/QtLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$5;->this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;

    invoke-static {v1}, Lorg/qtproject/qt5/android/QtActivityDelegate;->access$000(Lorg/qtproject/qt5/android/QtActivityDelegate;)Lorg/qtproject/qt5/android/QtEditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/qtproject/qt5/android/QtLayout;->removeView(Landroid/view/View;)V

    .line 1099
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$5;->this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtActivityDelegate;->access$700(Lorg/qtproject/qt5/android/QtActivityDelegate;)Lorg/qtproject/qt5/android/QtLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$5;->this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;

    invoke-static {v1}, Lorg/qtproject/qt5/android/QtActivityDelegate;->access$000(Lorg/qtproject/qt5/android/QtActivityDelegate;)Lorg/qtproject/qt5/android/QtEditText;

    move-result-object v1

    new-instance v2, Lorg/qtproject/qt5/android/QtLayout$LayoutParams;

    iget v3, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$5;->val$w:I

    iget v4, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$5;->val$h:I

    iget v5, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$5;->val$x:I

    iget v6, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$5;->val$y:I

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/qtproject/qt5/android/QtLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Lorg/qtproject/qt5/android/QtLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1100
    invoke-static {}, Lorg/qtproject/qt5/android/QtPopupMenu14;->getInstance()Lorg/qtproject/qt5/android/QtPopupMenu14;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$5;->this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;

    invoke-static {v1}, Lorg/qtproject/qt5/android/QtActivityDelegate;->access$000(Lorg/qtproject/qt5/android/QtActivityDelegate;)Lorg/qtproject/qt5/android/QtEditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/qtproject/qt5/android/QtPopupMenu14;->showMenu(Landroid/view/View;)V

    goto :goto_1d
.end method
