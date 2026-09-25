.class public Lorg/qtproject/qt5/android/QtEditText;
.super Landroid/view/View;
.source "QtEditText.java"


# instance fields
.field m_activityDelegate:Lorg/qtproject/qt5/android/QtActivityDelegate;

.field m_imeOptions:I

.field m_initialCapsMode:I

.field m_inputType:I

.field m_optionsChanged:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/qtproject/qt5/android/QtActivityDelegate;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45
    iput v0, p0, Lorg/qtproject/qt5/android/QtEditText;->m_initialCapsMode:I

    .line 46
    iput v0, p0, Lorg/qtproject/qt5/android/QtEditText;->m_imeOptions:I

    .line 47
    iput v1, p0, Lorg/qtproject/qt5/android/QtEditText;->m_inputType:I

    .line 48
    iput-boolean v0, p0, Lorg/qtproject/qt5/android/QtEditText;->m_optionsChanged:Z

    .line 79
    invoke-virtual {p0, v1}, Lorg/qtproject/qt5/android/QtEditText;->setFocusable(Z)V

    .line 80
    invoke-virtual {p0, v1}, Lorg/qtproject/qt5/android/QtEditText;->setFocusableInTouchMode(Z)V

    .line 81
    iput-object p2, p0, Lorg/qtproject/qt5/android/QtEditText;->m_activityDelegate:Lorg/qtproject/qt5/android/QtActivityDelegate;

    .line 82
    return-void
.end method


# virtual methods
.method public getActivityDelegate()Lorg/qtproject/qt5/android/QtActivityDelegate;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtEditText;->m_activityDelegate:Lorg/qtproject/qt5/android/QtActivityDelegate;

    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 4

    .prologue
    .line 91
    iget v0, p0, Lorg/qtproject/qt5/android/QtEditText;->m_inputType:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 92
    iget v0, p0, Lorg/qtproject/qt5/android/QtEditText;->m_imeOptions:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 93
    iget v0, p0, Lorg/qtproject/qt5/android/QtEditText;->m_initialCapsMode:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 94
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 95
    new-instance v0, Lorg/qtproject/qt5/android/QtInputConnection;

    invoke-direct {v0, p0}, Lorg/qtproject/qt5/android/QtInputConnection;-><init>(Lorg/qtproject/qt5/android/QtEditText;)V

    return-object v0
.end method

.method public setImeOptions(I)V
    .registers 3

    .prologue
    .line 53
    iget v0, p0, Lorg/qtproject/qt5/android/QtEditText;->m_imeOptions:I

    if-ne p1, v0, :cond_5

    .line 57
    :goto_4
    return-void

    .line 55
    :cond_5
    iput p1, p0, Lorg/qtproject/qt5/android/QtEditText;->m_imeOptions:I

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/qtproject/qt5/android/QtEditText;->m_optionsChanged:Z

    goto :goto_4
.end method

.method public setInitialCapsMode(I)V
    .registers 3

    .prologue
    .line 61
    iget v0, p0, Lorg/qtproject/qt5/android/QtEditText;->m_initialCapsMode:I

    if-ne p1, v0, :cond_5

    .line 65
    :goto_4
    return-void

    .line 63
    :cond_5
    iput p1, p0, Lorg/qtproject/qt5/android/QtEditText;->m_initialCapsMode:I

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/qtproject/qt5/android/QtEditText;->m_optionsChanged:Z

    goto :goto_4
.end method

.method public setInputType(I)V
    .registers 3

    .prologue
    .line 70
    iget v0, p0, Lorg/qtproject/qt5/android/QtEditText;->m_inputType:I

    if-ne p1, v0, :cond_5

    .line 74
    :goto_4
    return-void

    .line 72
    :cond_5
    iput p1, p0, Lorg/qtproject/qt5/android/QtEditText;->m_inputType:I

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/qtproject/qt5/android/QtEditText;->m_optionsChanged:Z

    goto :goto_4
.end method
