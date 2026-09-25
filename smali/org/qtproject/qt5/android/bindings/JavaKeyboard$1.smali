.class Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;
.super Ljava/lang/Object;
.source "JavaKeyboard.java"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt5/android/bindings/JavaKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)V
    .registers 2
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    .prologue
    .line 36
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .registers 13
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 41
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    iget-object v1, v1, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 42
    const/4 v1, -0x5

    if-ne p1, v1, :cond_14

    .line 43
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-virtual {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->closeKeyboard()V

    .line 50
    :cond_14
    const/16 v1, 0xf

    if-ne p1, v1, :cond_b4

    .line 51
    const-string v1, "JAKB"

    const-string v4, "primary Code is 15"

    invoke-static {v1, v4}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v4, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$000(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Z

    move-result v1

    if-nez v1, :cond_83

    move v1, v2

    :goto_2a
    invoke-static {v4, v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$002(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;Z)Z

    .line 53
    iget-object v4, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$200(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/app/Activity;

    move-result-object v1

    const v5, 0x7f0a003a

    invoke-virtual {v1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/KeyboardView;

    invoke-static {v4, v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$102(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView;

    .line 55
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$000(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Z

    move-result v1

    if-ne v1, v2, :cond_92

    .line 57
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$300(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Z

    move-result v1

    if-ne v1, v2, :cond_85

    .line 59
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-virtual {v1, v3}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->openKeyboardIndex(I)V

    .line 60
    const-string v1, "JAKB"

    const-string v2, "shift is on. caps is on. lower"

    invoke-static {v1, v2}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_5d
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$100(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    .line 82
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$100(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v1

    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v2}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$400(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 83
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$200(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 189
    :goto_82
    return-void

    :cond_83
    move v1, v3

    .line 52
    goto :goto_2a

    .line 64
    :cond_85
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-virtual {v1, v8}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->openKeyboardIndex(I)V

    .line 65
    const-string v1, "JAKB"

    const-string v2, "shift is on. caps is off. upper"

    invoke-static {v1, v2}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    .line 70
    :cond_92
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$300(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Z

    move-result v1

    if-ne v1, v2, :cond_a7

    .line 72
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-virtual {v1, v8}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->openKeyboardIndex(I)V

    .line 73
    const-string v1, "JAKB"

    const-string v2, "shift is off. caps is on. upper"

    invoke-static {v1, v2}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    .line 77
    :cond_a7
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-virtual {v1, v3}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->openKeyboardIndex(I)V

    .line 78
    const-string v1, "JAKB"

    const-string v2, "shift is off. caps is off. lower"

    invoke-static {v1, v2}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    .line 85
    :cond_b4
    const/16 v1, -0x66

    if-ne p1, v1, :cond_116

    .line 86
    iget-object v4, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$300(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Z

    move-result v1

    if-nez v1, :cond_10e

    move v1, v2

    :goto_c3
    invoke-static {v4, v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$302(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;Z)Z

    .line 87
    iget-object v4, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$200(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/app/Activity;

    move-result-object v1

    const v5, 0x7f0a003a

    invoke-virtual {v1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/KeyboardView;

    invoke-static {v4, v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$102(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView;

    .line 89
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$300(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Z

    move-result v1

    if-ne v1, v2, :cond_110

    .line 90
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-virtual {v1, v8}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->openKeyboardIndex(I)V

    .line 95
    :goto_e7
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$100(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    .line 96
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$100(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v1

    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v2}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$400(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 97
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$200(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_82

    :cond_10e
    move v1, v3

    .line 86
    goto :goto_c3

    .line 93
    :cond_110
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-virtual {v1, v3}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->openKeyboardIndex(I)V

    goto :goto_e7

    .line 100
    :cond_116
    const/16 v1, -0x67

    if-ne p1, v1, :cond_179

    .line 101
    iget-object v4, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$300(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Z

    move-result v1

    if-nez v1, :cond_171

    move v1, v2

    :goto_125
    invoke-static {v4, v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$302(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;Z)Z

    .line 102
    iget-object v4, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$200(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/app/Activity;

    move-result-object v1

    const v5, 0x7f0a003a

    invoke-virtual {v1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/KeyboardView;

    invoke-static {v4, v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$102(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView;

    .line 104
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$300(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Z

    move-result v1

    if-ne v1, v2, :cond_173

    .line 105
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->openKeyboardIndex(I)V

    .line 110
    :goto_14a
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$100(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    .line 111
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$100(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v1

    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v2}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$400(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 112
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$200(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_82

    :cond_171
    move v1, v3

    .line 101
    goto :goto_125

    .line 108
    :cond_173
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-virtual {v1, v9}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->openKeyboardIndex(I)V

    goto :goto_14a

    .line 115
    :cond_179
    const/16 v1, 0x96

    if-ne p1, v1, :cond_1aa

    .line 116
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->openKeyboardIndex(I)V

    .line 117
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$100(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    .line 118
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$100(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v1

    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v2}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$400(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 119
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$200(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_82

    .line 122
    :cond_1aa
    const/16 v1, 0x97

    if-ne p1, v1, :cond_24d

    .line 123
    const-string v1, "JAKB"

    const-string v4, "primary Code is 15"

    invoke-static {v1, v4}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v4, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$000(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Z

    move-result v1

    if-nez v1, :cond_21a

    move v1, v2

    :goto_1c0
    invoke-static {v4, v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$002(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;Z)Z

    .line 125
    iget-object v4, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$200(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/app/Activity;

    move-result-object v1

    const v5, 0x7f0a003a

    invoke-virtual {v1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/KeyboardView;

    invoke-static {v4, v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$102(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView;

    .line 127
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$000(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Z

    move-result v1

    if-ne v1, v2, :cond_22a

    .line 129
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$300(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Z

    move-result v1

    if-ne v1, v2, :cond_21c

    .line 131
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-virtual {v1, v9}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->openKeyboardIndex(I)V

    .line 132
    const-string v1, "JAKB"

    const-string v2, "shift is on. caps is on. lower"

    invoke-static {v1, v2}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :goto_1f3
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$100(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    .line 154
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$100(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v1

    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v2}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$400(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 155
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$200(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_82

    :cond_21a
    move v1, v3

    .line 124
    goto :goto_1c0

    .line 136
    :cond_21c
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->openKeyboardIndex(I)V

    .line 137
    const-string v1, "JAKB"

    const-string v2, "shift is on. caps is off. upper"

    invoke-static {v1, v2}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f3

    .line 142
    :cond_22a
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$300(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Z

    move-result v1

    if-ne v1, v2, :cond_240

    .line 144
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->openKeyboardIndex(I)V

    .line 145
    const-string v1, "JAKB"

    const-string v2, "shift is off. caps is on. upper"

    invoke-static {v1, v2}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f3

    .line 149
    :cond_240
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-virtual {v1, v9}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->openKeyboardIndex(I)V

    .line 150
    const-string v1, "JAKB"

    const-string v2, "shift is off. caps is off. lower"

    invoke-static {v1, v2}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f3

    .line 160
    :cond_24d
    const-string v1, "JAKB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "primary Code is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$000(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Z

    move-result v1

    if-ne v1, v2, :cond_28e

    .line 164
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$300(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Z

    move-result v1

    if-ne v1, v2, :cond_2b8

    .line 165
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$500(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    cmpg-double v1, v4, v6

    if-gtz v1, :cond_2b2

    .line 167
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->openKeyboardIndex(I)V

    .line 171
    :goto_287
    const-string v1, "JAKB"

    const-string v4, "key was entered. Change shift back to false. Upper"

    invoke-static {v1, v4}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_28e
    :goto_28e
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1, v3}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$002(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;Z)Z

    .line 187
    const-string v1, "javascript:onKeyEvent(\"%d\");"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "url":Ljava/lang/String;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getFrontEndBridge()Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_82

    .line 169
    .end local v0    # "url":Ljava/lang/String;
    :cond_2b2
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-virtual {v1, v8}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->openKeyboardIndex(I)V

    goto :goto_287

    .line 174
    :cond_2b8
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$500(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    cmpg-double v1, v4, v6

    if-gtz v1, :cond_2d1

    .line 176
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-virtual {v1, v9}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->openKeyboardIndex(I)V

    .line 180
    :goto_2c9
    const-string v1, "JAKB"

    const-string v4, "key was entered. Change shift back to false. Lower"

    invoke-static {v1, v4}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28e

    .line 178
    :cond_2d1
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-virtual {v1, v3}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->openKeyboardIndex(I)V

    goto :goto_2c9
.end method

.method public onPress(I)V
    .registers 2
    .param p1, "arg0"    # I

    .prologue
    .line 193
    return-void
.end method

.method public onRelease(I)V
    .registers 2
    .param p1, "primaryCode"    # I

    .prologue
    .line 197
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 201
    return-void
.end method

.method public swipeDown()V
    .registers 1

    .prologue
    .line 205
    return-void
.end method

.method public swipeLeft()V
    .registers 1

    .prologue
    .line 209
    return-void
.end method

.method public swipeRight()V
    .registers 1

    .prologue
    .line 213
    return-void
.end method

.method public swipeUp()V
    .registers 1

    .prologue
    .line 217
    return-void
.end method
