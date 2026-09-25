.class Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;
.super Ljava/lang/Object;
.source "QtMessageDialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/QtMessageDialogHelper;->show(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)V
    .registers 2

    .prologue
    .line 212
    iput-object p1, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 215
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 216
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 218
    :cond_1d
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v2}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$002(Lorg/qtproject/qt5/android/QtMessageDialogHelper;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 219
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    iget-object v1, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v1}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$202(Lorg/qtproject/qt5/android/QtMessageDialogHelper;Landroid/content/res/Resources$Theme;)Landroid/content/res/Resources$Theme;

    .line 221
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$300(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/text/Spanned;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 222
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v1}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$300(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 223
    :cond_5f
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1$1;

    invoke-direct {v1, p0}, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1$1;-><init>(Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 229
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$400(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_241

    const/4 v0, 0x1

    :goto_7c
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 230
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$400(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_244

    const/4 v0, 0x1

    :goto_8e
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 231
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v1}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$500(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 232
    new-instance v5, Landroid/widget/ScrollView;

    iget-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 233
    new-instance v6, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 234
    const/4 v2, 0x1

    .line 235
    const/4 v0, 0x0

    .line 236
    new-instance v4, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1$2;

    invoke-direct {v4, p0}, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1$2;-><init>(Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;)V

    .line 247
    iget-object v1, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v1}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$600(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/text/Spanned;

    move-result-object v1

    if-eqz v1, :cond_30b

    .line 249
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v1}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 250
    const/4 v1, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    .line 251
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 252
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 254
    iget-object v2, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v2}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$600(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v2, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    const-string v3, "textAppearanceMedium"

    const-string v7, "TextAppearance_Medium"

    invoke-static {v2, v0, v3, v7}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$700(Lorg/qtproject/qt5/android/QtMessageDialogHelper;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v7, -0x2

    invoke-direct {v2, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 258
    const/16 v3, 0x10

    const/16 v7, 0x8

    const/16 v8, 0x10

    const/16 v9, 0x8

    invoke-virtual {v2, v3, v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 259
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 260
    invoke-virtual {v6, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    :goto_107
    iget-object v2, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v2}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$800(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/text/Spanned;

    move-result-object v2

    if-eqz v2, :cond_159

    .line 266
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v3}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 267
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setId(I)V

    .line 268
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 269
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 271
    iget-object v1, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v1}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$800(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v1, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    const-string v7, "textAppearanceMedium"

    const-string v8, "TextAppearance_Medium"

    invoke-static {v1, v2, v7, v8}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$700(Lorg/qtproject/qt5/android/QtMessageDialogHelper;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v1, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 275
    const/16 v7, 0x10

    const/16 v8, 0x8

    const/16 v9, 0x10

    const/16 v10, 0x8

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 276
    if-eqz v0, :cond_247

    .line 277
    const/4 v7, 0x3

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v1, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 280
    :goto_154
    invoke-virtual {v6, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    move v1, v3

    .line 284
    :cond_159
    iget-object v2, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v2}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$900(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/text/Spanned;

    move-result-object v2

    if-eqz v2, :cond_306

    .line 286
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v3}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 287
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setId(I)V

    .line 288
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 289
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 291
    iget-object v1, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v1}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$900(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v1, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    const-string v4, "textAppearanceSmall"

    const-string v7, "TextAppearance_Small"

    invoke-static {v1, v2, v4, v7}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$700(Lorg/qtproject/qt5/android/QtMessageDialogHelper;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v7, -0x2

    invoke-direct {v1, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 295
    const/16 v4, 0x10

    const/16 v7, 0x8

    const/16 v8, 0x10

    const/16 v9, 0x8

    invoke-virtual {v1, v4, v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 296
    if-eqz v0, :cond_24e

    .line 297
    const/4 v4, 0x3

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 300
    :goto_1a6
    invoke-virtual {v6, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v1, v2

    move v0, v3

    .line 304
    :goto_1ab
    iget-object v2, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v2}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$400(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2d7

    .line 306
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v2}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v7, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 307
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 308
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setId(I)V

    .line 309
    const/4 v0, 0x1

    .line 310
    iget-object v2, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v2}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$400(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v2, v0

    :goto_1d3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_277

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/qtproject/qt5/android/ButtonStruct;

    .line 313
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xa

    if-le v3, v4, :cond_266

    .line 315
    :try_start_1e5
    new-instance v3, Landroid/widget/Button;

    iget-object v4, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v4}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v4

    const/4 v10, 0x0

    const-string v11, "android.R$attr"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-string v12, "borderlessButtonStyle"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    invoke-direct {v3, v4, v10, v11}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    :try_end_202
    .catch Ljava/lang/Exception; {:try_start_1e5 .. :try_end_202} :catch_255

    .line 324
    :goto_202
    iget-object v4, v0, Lorg/qtproject/qt5/android/ButtonStruct;->m_text:Landroid/text/Spanned;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 325
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    if-nez v2, :cond_232

    .line 329
    new-instance v0, Landroid/view/View;

    iget-object v2, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v2}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 330
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xa

    if-le v2, v4, :cond_232

    .line 332
    :try_start_21d
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x1

    const/4 v10, -0x1

    invoke-direct {v2, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 333
    iget-object v4, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    const-string v10, "dividerVertical"

    invoke-static {v4, v10}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$1000(Lorg/qtproject/qt5/android/QtMessageDialogHelper;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    invoke-virtual {v7, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_232
    .catch Ljava/lang/Exception; {:try_start_21d .. :try_end_232} :catch_272

    .line 341
    :cond_232
    :goto_232
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 342
    invoke-virtual {v7, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    const/4 v0, 0x0

    move v2, v0

    .line 344
    goto :goto_1d3

    .line 229
    :cond_241
    const/4 v0, 0x0

    goto/16 :goto_7c

    .line 230
    :cond_244
    const/4 v0, 0x0

    goto/16 :goto_8e

    .line 279
    :cond_247
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_154

    .line 299
    :cond_24e
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_1a6

    .line 316
    :catch_255
    move-exception v3

    move-object v4, v3

    .line 317
    new-instance v3, Landroid/widget/Button;

    iget-object v10, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v10}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 318
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_202

    .line 321
    :cond_266
    new-instance v3, Landroid/widget/Button;

    iget-object v4, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v4}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    goto :goto_202

    .line 335
    :catch_272
    move-exception v0

    .line 336
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_232

    .line 346
    :cond_277
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-le v0, v2, :cond_2b5

    .line 348
    :try_start_27d
    new-instance v0, Landroid/view/View;

    iget-object v2, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v2}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 349
    add-int/lit8 v2, v8, 0x1

    invoke-virtual {v0, v8}, Landroid/view/View;->setId(I)V

    .line 350
    iget-object v2, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    const-string v3, "dividerHorizontal"

    invoke-static {v2, v3}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$1000(Lorg/qtproject/qt5/android/QtMessageDialogHelper;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 351
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 352
    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v3, v4, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 353
    if-eqz v1, :cond_2ed

    .line 354
    const/4 v3, 0x3

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 358
    :goto_2b1
    invoke-virtual {v6, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2b4
    .catch Ljava/lang/Exception; {:try_start_27d .. :try_end_2b4} :catch_2f3

    move-object v1, v0

    .line 364
    :cond_2b5
    :goto_2b5
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 365
    if-eqz v1, :cond_2f8

    .line 366
    const/4 v2, 0x3

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 370
    :goto_2c6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_2fe

    .line 371
    const/4 v1, 0x2

    const/16 v2, 0xc

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 374
    :goto_2d4
    invoke-virtual {v6, v7, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    :cond_2d7
    invoke-virtual {v5, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 377
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 378
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 379
    return-void

    .line 357
    :cond_2ed
    const/16 v3, 0xa

    :try_start_2ef
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
    :try_end_2f2
    .catch Ljava/lang/Exception; {:try_start_2ef .. :try_end_2f2} :catch_2f3

    goto :goto_2b1

    .line 360
    :catch_2f3
    move-exception v0

    .line 361
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b5

    .line 369
    :cond_2f8
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2c6

    .line 373
    :cond_2fe
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2d4

    :cond_306
    move-object v13, v0

    move v0, v1

    move-object v1, v13

    goto/16 :goto_1ab

    :cond_30b
    move v1, v2

    goto/16 :goto_107
.end method
