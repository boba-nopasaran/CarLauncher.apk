.class public Lcom/txznet/comm/ui/view/CheckedImageView;
.super Landroid/widget/ImageView;
.source "Proguard"

# interfaces
.implements Lcom/txznet/comm/ui/IKeepClass;


# instance fields
.field protected T:Z

.field private T2:Landroid/graphics/drawable/Drawable;

.field private T3:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/txznet/comm/ui/view/CheckedImageView;->T(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/txznet/comm/ui/view/CheckedImageView;->T(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/txznet/comm/ui/view/CheckedImageView;->T(Landroid/content/Context;)V

    return-void
.end method

.method private T(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/CheckedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/txznet/txz/comm/R$drawable;->asr_switch_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/comm/ui/view/CheckedImageView;->T3:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/CheckedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/txznet/txz/comm/R$drawable;->asr_switch_off:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/comm/ui/view/CheckedImageView;->T2:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/txznet/comm/ui/view/CheckedImageView;->T:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/txznet/comm/ui/view/CheckedImageView;->T:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/view/CheckedImageView;->T3:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/txznet/comm/ui/view/CheckedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/txznet/comm/ui/view/CheckedImageView;->T2:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
