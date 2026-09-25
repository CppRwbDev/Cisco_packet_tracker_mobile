.class public Lorg/qtproject/qt5/android/QtInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "QtInputConnection.java"


# static fields
.field private static final ID_ADD_TO_DICTIONARY:I = 0x102002a

.field private static final ID_COPY:I = 0x1020021

.field private static final ID_COPY_URL:I = 0x1020023

.field private static final ID_CUT:I = 0x1020020

.field private static final ID_PASTE:I = 0x1020022

.field private static final ID_SELECT_ALL:I = 0x102001f

.field private static final ID_SWITCH_INPUT_METHOD:I = 0x1020024


# instance fields
.field private m_view:Lorg/qtproject/qt5/android/QtEditText;


# direct methods
.method public constructor <init>(Lorg/qtproject/qt5/android/QtEditText;)V
    .registers 3

    .prologue
    .line 110
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt5/android/QtInputConnection;->m_view:Lorg/qtproject/qt5/android/QtEditText;

    .line 111
    iput-object p1, p0, Lorg/qtproject/qt5/android/QtInputConnection;->m_view:Lorg/qtproject/qt5/android/QtEditText;

    .line 112
    return-void
.end method

.method private setClosing(Z)V
    .registers 6

    .prologue
    .line 101
    if-eqz p1, :cond_f

    .line 102
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtInputConnection;->m_view:Lorg/qtproject/qt5/android/QtEditText;

    new-instance v1, Lorg/qtproject/qt5/android/HideKeyboardRunnable;

    invoke-direct {v1}, Lorg/qtproject/qt5/android/HideKeyboardRunnable;-><init>()V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lorg/qtproject/qt5/android/QtEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    :goto_e
    return-void

    .line 104
    :cond_f
    invoke-static {}, Lorg/qtproject/qt5/android/QtNative;->activityDelegate()Lorg/qtproject/qt5/android/QtActivityDelegate;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/qtproject/qt5/android/QtActivityDelegate;->setKeyboardVisibility(ZJ)Z

    goto :goto_e
.end method


# virtual methods
.method public beginBatchEdit()Z
    .registers 2

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/qtproject/qt5/android/QtInputConnection;->setClosing(Z)V

    .line 118
    invoke-static {}, Lorg/qtproject/qt5/android/QtNativeInputConnection;->beginBatchEdit()Z

    move-result v0

    return v0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .registers 4

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/qtproject/qt5/android/QtInputConnection;->setClosing(Z)V

    .line 132
    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getPosition()I

    move-result v1

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/QtNativeInputConnection;->commitCompletion(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .registers 4

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/qtproject/qt5/android/QtInputConnection;->setClosing(Z)V

    .line 139
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/qtproject/qt5/android/QtNativeInputConnection;->commitText(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .registers 4

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/qtproject/qt5/android/QtInputConnection;->setClosing(Z)V

    .line 146
    invoke-static {p1, p2}, Lorg/qtproject/qt5/android/QtNativeInputConnection;->deleteSurroundingText(II)Z

    move-result v0

    return v0
.end method

.method public endBatchEdit()Z
    .registers 2

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/qtproject/qt5/android/QtInputConnection;->setClosing(Z)V

    .line 125
    invoke-static {}, Lorg/qtproject/qt5/android/QtNativeInputConnection;->endBatchEdit()Z

    move-result v0

    return v0
.end method

.method public finishComposingText()Z
    .registers 2

    .prologue
    .line 153
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/qtproject/qt5/android/QtInputConnection;->setClosing(Z)V

    .line 154
    invoke-static {}, Lorg/qtproject/qt5/android/QtNativeInputConnection;->finishComposingText()Z

    move-result v0

    return v0
.end method

.method public getCursorCapsMode(I)I
    .registers 3

    .prologue
    .line 160
    invoke-static {p1}, Lorg/qtproject/qt5/android/QtNativeInputConnection;->getCursorCapsMode(I)I

    move-result v0

    return v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 6

    .prologue
    .line 166
    iget v0, p1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    iget v1, p1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    invoke-static {v0, v1, p2}, Lorg/qtproject/qt5/android/QtNativeInputConnection;->getExtractedText(III)Lorg/qtproject/qt5/android/QtExtractedText;

    move-result-object v1

    .line 169
    if-nez v1, :cond_c

    .line 170
    const/4 v0, 0x0

    .line 179
    :goto_b
    return-object v0

    .line 172
    :cond_c
    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 173
    iget v2, v1, Lorg/qtproject/qt5/android/QtExtractedText;->partialEndOffset:I

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 174
    iget v2, v1, Lorg/qtproject/qt5/android/QtExtractedText;->partialStartOffset:I

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 175
    iget v2, v1, Lorg/qtproject/qt5/android/QtExtractedText;->selectionEnd:I

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 176
    iget v2, v1, Lorg/qtproject/qt5/android/QtExtractedText;->selectionStart:I

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 177
    iget v2, v1, Lorg/qtproject/qt5/android/QtExtractedText;->startOffset:I

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 178
    iget-object v1, v1, Lorg/qtproject/qt5/android/QtExtractedText;->text:Ljava/lang/String;

    iput-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_b
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 184
    invoke-static {p1}, Lorg/qtproject/qt5/android/QtNativeInputConnection;->getSelectedText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .registers 4

    .prologue
    .line 190
    invoke-static {p1, p2}, Lorg/qtproject/qt5/android/QtNativeInputConnection;->getTextAfterCursor(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .registers 4

    .prologue
    .line 196
    invoke-static {p1, p2}, Lorg/qtproject/qt5/android/QtNativeInputConnection;->getTextBeforeCursor(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public performContextMenuAction(I)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 202
    packed-switch p1, :pswitch_data_3a

    .line 232
    :pswitch_4
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->performContextMenuAction(I)Z

    move-result v0

    :goto_8
    return v0

    .line 204
    :pswitch_9
    invoke-static {}, Lorg/qtproject/qt5/android/QtNativeInputConnection;->selectAll()Z

    move-result v0

    goto :goto_8

    .line 206
    :pswitch_e
    invoke-static {}, Lorg/qtproject/qt5/android/QtNativeInputConnection;->copy()Z

    move-result v0

    goto :goto_8

    .line 208
    :pswitch_13
    invoke-static {}, Lorg/qtproject/qt5/android/QtNativeInputConnection;->copyURL()Z

    move-result v0

    goto :goto_8

    .line 210
    :pswitch_18
    invoke-static {}, Lorg/qtproject/qt5/android/QtNativeInputConnection;->cut()Z

    move-result v0

    goto :goto_8

    .line 212
    :pswitch_1d
    invoke-static {}, Lorg/qtproject/qt5/android/QtNativeInputConnection;->paste()Z

    move-result v0

    goto :goto_8

    .line 215
    :pswitch_22
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtInputConnection;->m_view:Lorg/qtproject/qt5/android/QtEditText;

    invoke-virtual {v0}, Lorg/qtproject/qt5/android/QtEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 216
    if-eqz v0, :cond_35

    .line 217
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    :cond_35
    move v0, v1

    .line 219
    goto :goto_8

    :pswitch_37
    move v0, v1

    .line 230
    goto :goto_8

    .line 202
    nop

    :pswitch_data_3a
    .packed-switch 0x102001f
        :pswitch_9
        :pswitch_18
        :pswitch_e
        :pswitch_1d
        :pswitch_13
        :pswitch_22
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_37
    .end packed-switch
.end method

.method public setComposingRegion(II)Z
    .registers 4

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/qtproject/qt5/android/QtInputConnection;->setClosing(Z)V

    .line 246
    invoke-static {p1, p2}, Lorg/qtproject/qt5/android/QtNativeInputConnection;->setComposingRegion(II)Z

    move-result v0

    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .registers 4

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/qtproject/qt5/android/QtInputConnection;->setClosing(Z)V

    .line 239
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/qtproject/qt5/android/QtNativeInputConnection;->setComposingText(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setSelection(II)Z
    .registers 4

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/qtproject/qt5/android/QtInputConnection;->setClosing(Z)V

    .line 253
    invoke-static {p1, p2}, Lorg/qtproject/qt5/android/QtNativeInputConnection;->setSelection(II)Z

    move-result v0

    return v0
.end method
