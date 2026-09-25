.class Lorg/qtproject/qt5/android/QtActivityDelegate$2;
.super Ljava/lang/Object;
.source "QtActivityDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/QtActivityDelegate;->showSoftwareKeyboard(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/QtActivityDelegate;)V
    .registers 2

    .prologue
    .line 318
    iput-object p1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$2;->this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 321
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$2;->this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtActivityDelegate;->access$100(Lorg/qtproject/qt5/android/QtActivityDelegate;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$2;->this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;

    invoke-static {v1}, Lorg/qtproject/qt5/android/QtActivityDelegate;->access$000(Lorg/qtproject/qt5/android/QtActivityDelegate;)Lorg/qtproject/qt5/android/QtEditText;

    move-result-object v1

    new-instance v2, Lorg/qtproject/qt5/android/QtActivityDelegate$2$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lorg/qtproject/qt5/android/QtActivityDelegate$2$1;-><init>(Lorg/qtproject/qt5/android/QtActivityDelegate$2;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 338
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$2;->this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtActivityDelegate;->access$000(Lorg/qtproject/qt5/android/QtActivityDelegate;)Lorg/qtproject/qt5/android/QtEditText;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt5/android/QtEditText;->m_optionsChanged:Z

    if-eqz v0, :cond_3b

    .line 339
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$2;->this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtActivityDelegate;->access$100(Lorg/qtproject/qt5/android/QtActivityDelegate;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$2;->this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;

    invoke-static {v1}, Lorg/qtproject/qt5/android/QtActivityDelegate;->access$000(Lorg/qtproject/qt5/android/QtActivityDelegate;)Lorg/qtproject/qt5/android/QtEditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 340
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$2;->this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtActivityDelegate;->access$000(Lorg/qtproject/qt5/android/QtActivityDelegate;)Lorg/qtproject/qt5/android/QtEditText;

    move-result-object v0

    iput-boolean v4, v0, Lorg/qtproject/qt5/android/QtEditText;->m_optionsChanged:Z

    .line 342
    :cond_3b
    return-void
.end method
