.class Landroid/support/v4/widget/TextViewCompatJbMr1;
.super Ljava/lang/Object;
.source "TextViewCompatJbMr1.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .local v0, "rtl":Z
    :goto_0
    if-eqz v0, :cond_1

    move-object v1, p3

    :goto_1
    if-eqz v0, :cond_2

    .end local p1    # "start":Landroid/graphics/drawable/Drawable;
    :goto_2
    invoke-virtual {p0, v1, p2, p1, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .end local v0    # "rtl":Z
    .restart local p1    # "start":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "rtl":Z
    goto :goto_0

    :cond_1
    move-object v1, p1

    goto :goto_1

    :cond_2
    move-object p1, p3

    goto :goto_2
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .local v0, "rtl":Z
    :goto_0
    if-eqz v0, :cond_1

    move v1, p3

    :goto_1
    if-eqz v0, :cond_2

    .end local p1    # "start":I
    :goto_2
    invoke-virtual {p0, v1, p2, p1, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void

    .end local v0    # "rtl":Z
    .restart local p1    # "start":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "rtl":Z
    goto :goto_0

    :cond_1
    move v1, p1

    goto :goto_1

    :cond_2
    move p1, p3

    goto :goto_2
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .local v0, "rtl":Z
    :goto_0
    if-eqz v0, :cond_1

    move-object v1, p3

    :goto_1
    if-eqz v0, :cond_2

    .end local p1    # "start":Landroid/graphics/drawable/Drawable;
    :goto_2
    invoke-virtual {p0, v1, p2, p1, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .end local v0    # "rtl":Z
    .restart local p1    # "start":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "rtl":Z
    goto :goto_0

    :cond_1
    move-object v1, p1

    goto :goto_1

    :cond_2
    move-object p1, p3

    goto :goto_2
.end method
