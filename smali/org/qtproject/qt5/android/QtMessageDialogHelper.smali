.class public Lorg/qtproject/qt5/android/QtMessageDialogHelper;
.super Ljava/lang/Object;
.source "QtMessageDialogHelper.java"


# instance fields
.field private m_activity:Landroid/app/Activity;

.field private m_buttonsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/qtproject/qt5/android/ButtonStruct;",
            ">;"
        }
    .end annotation
.end field

.field private m_detailedText:Landroid/text/Spanned;

.field private m_dialog:Landroid/app/AlertDialog;

.field private m_handler:J

.field private m_icon:I

.field private m_informativeText:Landroid/text/Spanned;

.field private m_text:Landroid/text/Spanned;

.field private m_theme:Landroid/content/res/Resources$Theme;

.field private m_title:Landroid/text/Spanned;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    const/4 v0, 0x0

    iput v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_icon:I

    .line 417
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_handler:J

    .line 88
    iput-object p1, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lorg/qtproject/qt5/android/QtMessageDialogHelper;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_dialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/qtproject/qt5/android/QtMessageDialogHelper;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->getStyledDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lorg/qtproject/qt5/android/QtMessageDialogHelper;Landroid/content/res/Resources$Theme;)Landroid/content/res/Resources$Theme;
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_theme:Landroid/content/res/Resources$Theme;

    return-object p1
.end method

.method static synthetic access$300(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/text/Spanned;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_title:Landroid/text/Spanned;

    return-object v0
.end method

.method static synthetic access$400(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_buttonsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/text/Spanned;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_text:Landroid/text/Spanned;

    return-object v0
.end method

.method static synthetic access$700(Lorg/qtproject/qt5/android/QtMessageDialogHelper;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->setTextAppearance(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/text/Spanned;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_informativeText:Landroid/text/Spanned;

    return-object v0
.end method

.method static synthetic access$900(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/text/Spanned;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_detailedText:Landroid/text/Spanned;

    return-object v0
.end method

.method private getIconDrawable()Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 100
    iget v1, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_icon:I

    if-nez v1, :cond_6

    .line 145
    :goto_5
    return-object v0

    .line 103
    :cond_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_39

    .line 105
    :try_start_c
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 106
    iget-object v2, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_theme:Landroid/content/res/Resources$Theme;

    const-string v3, "android.R$attr"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "alertDialogIcon"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 107
    iget-object v2, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_33} :catch_35

    move-result-object v0

    goto :goto_5

    .line 108
    :catch_35
    move-exception v1

    .line 109
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    :cond_39
    iget v1, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_icon:I

    packed-switch v1, :pswitch_data_a4

    goto :goto_5

    .line 118
    :pswitch_3f
    :try_start_3f
    iget-object v1, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "android.R$drawable"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "ic_dialog_info"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_59} :catch_5b

    move-result-object v0

    goto :goto_5

    .line 119
    :catch_5b
    move-exception v1

    .line 120
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 132
    :pswitch_60
    :try_start_60
    iget-object v1, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "android.R$drawable"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "ic_dialog_alert"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_7a} :catch_7c

    move-result-object v0

    goto :goto_5

    .line 133
    :catch_7c
    move-exception v1

    .line 134
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 139
    :pswitch_81
    :try_start_81
    iget-object v1, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "android.R$drawable"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "ic_menu_help"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_9b} :catch_9e

    move-result-object v0

    goto/16 :goto_5

    .line 140
    :catch_9e
    move-exception v1

    .line 141
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 114
    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_60
        :pswitch_60
        :pswitch_81
    .end packed-switch
.end method

.method private getStyledDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 201
    const/4 v0, 0x1

    new-array v0, v0, [I

    const-string v1, "android.R$attr"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    aput v1, v0, v3

    .line 202
    iget-object v1, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 203
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 204
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 205
    return-object v1
.end method

.method private setTextAppearance(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    const/16 v6, 0x3138

    .line 178
    :try_start_2
    const-string v0, "android.R$styleable"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "TextAppearance"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    .line 179
    iget-object v1, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_theme:Landroid/content/res/Resources$Theme;

    const/4 v2, 0x0

    const-string v3, "android.R$attr"

    .line 181
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    const-string v4, "android.R$style"

    .line 182
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 179
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 183
    const-string v1, "android.R$styleable"

    .line 184
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "TextAppearance_textSize"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    .line 183
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 185
    if-eqz v1, :cond_59

    .line 186
    const/4 v2, 0x0

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 188
    :cond_59
    const-string v1, "android.R$styleable"

    .line 189
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "TextAppearance_textColor"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    const/16 v2, 0x3138

    .line 188
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 190
    if-eq v1, v6, :cond_75

    .line 191
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    :cond_75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_78} :catch_79

    .line 197
    :goto_78
    return-void

    .line 194
    :catch_79
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_78
.end method


# virtual methods
.method public addButton(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 170
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_buttonsList:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_buttonsList:Ljava/util/ArrayList;

    .line 172
    :cond_b
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_buttonsList:Ljava/util/ArrayList;

    new-instance v1, Lorg/qtproject/qt5/android/ButtonStruct;

    invoke-direct {v1, p0, p1, p2}, Lorg/qtproject/qt5/android/ButtonStruct;-><init>(Lorg/qtproject/qt5/android/QtMessageDialogHelper;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    return-void
.end method

.method public handler()J
    .registers 3

    .prologue
    .line 397
    iget-wide v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_handler:J

    return-wide v0
.end method

.method public hide()V
    .registers 3

    .prologue
    .line 385
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    new-instance v1, Lorg/qtproject/qt5/android/QtMessageDialogHelper$2;

    invoke-direct {v1, p0}, Lorg/qtproject/qt5/android/QtMessageDialogHelper$2;-><init>(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 393
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 402
    const/4 v0, 0x0

    iput v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_icon:I

    .line 403
    iput-object v1, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_title:Landroid/text/Spanned;

    .line 404
    iput-object v1, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_text:Landroid/text/Spanned;

    .line 405
    iput-object v1, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_informativeText:Landroid/text/Spanned;

    .line 406
    iput-object v1, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_detailedText:Landroid/text/Spanned;

    .line 407
    iput-object v1, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_buttonsList:Ljava/util/ArrayList;

    .line 408
    iput-object v1, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_dialog:Landroid/app/AlertDialog;

    .line 409
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_handler:J

    .line 410
    return-void
.end method

.method public setDetailedText(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 165
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_detailedText:Landroid/text/Spanned;

    .line 166
    return-void
.end method

.method public setIcon(I)V
    .registers 2

    .prologue
    .line 94
    iput p1, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_icon:I

    .line 96
    return-void
.end method

.method public setInformativeText(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 160
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_informativeText:Landroid/text/Spanned;

    .line 161
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 155
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_text:Landroid/text/Spanned;

    .line 156
    return-void
.end method

.method public setTile(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 150
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_title:Landroid/text/Spanned;

    .line 151
    return-void
.end method

.method public show(J)V
    .registers 6

    .prologue
    .line 211
    iput-wide p1, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_handler:J

    .line 212
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    new-instance v1, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;

    invoke-direct {v1, p0}, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;-><init>(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 381
    return-void
.end method
