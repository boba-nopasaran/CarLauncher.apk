.class public Lcom/car/launcher/GpsWidget;
.super Landroid/widget/RelativeLayout;
.source "GpsWidget.java"

# interfaces
.implements Lcom/car/launchercommon/CustomUI$CustomizableView;


# static fields
.field private static final TAG:Ljava/lang/String; = "LC.GpsWidget"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGpsNumber:I

.field private mNumber:Landroid/widget/TextView;

.field private mRootView:Landroid/view/View;

.field private mTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/car/launcher/GpsWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/launcher/GpsWidget;->mGpsNumber:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/car/launcher/GpsWidget;->mTextColor:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030005

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/car/launcher/GpsWidget;->mRootView:Landroid/view/View;

    iput-object p1, p0, Lcom/car/launcher/GpsWidget;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/car/launcher/GpsWidget;->mRootView:Landroid/view/View;

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/car/launcher/GpsWidget;->mNumber:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setGpsNumber(I)V
    .locals 2

    iput p1, p0, Lcom/car/launcher/GpsWidget;->mGpsNumber:I

    iget-object v0, p0, Lcom/car/launcher/GpsWidget;->mNumber:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/car/launcher/GpsWidget;->mNumber:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/launcher/GpsWidget;->mNumber:Landroid/widget/TextView;

    iget v1, p0, Lcom/car/launcher/GpsWidget;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setGpsNumberVisibility(I)V
    .locals 2

    iget-object v0, p0, Lcom/car/launcher/GpsWidget;->mNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/car/launcher/GpsWidget;->mRootView:Landroid/view/View;

    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    iput p1, p0, Lcom/car/launcher/GpsWidget;->mTextColor:I

    iget v0, p0, Lcom/car/launcher/GpsWidget;->mGpsNumber:I

    invoke-virtual {p0, v0}, Lcom/car/launcher/GpsWidget;->setGpsNumber(I)V

    iget-object v0, p0, Lcom/car/launcher/GpsWidget;->mRootView:Landroid/view/View;

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
