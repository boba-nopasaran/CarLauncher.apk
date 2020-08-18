.class public Lcom/txznet/comm/ui/view/BoundedLinearLayout;
.super Landroid/widget/FrameLayout;
.source "Proguard"

# interfaces
.implements Lcom/txznet/comm/ui/IKeepClass;


# instance fields
.field private T:I

.field private T3:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iget v3, p0, Lcom/txznet/comm/ui/view/BoundedLinearLayout;->T:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/txznet/comm/ui/view/BoundedLinearLayout;->T:I

    if-ge v3, v2, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iget v3, p0, Lcom/txznet/comm/ui/view/BoundedLinearLayout;->T:I

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v3, p0, Lcom/txznet/comm/ui/view/BoundedLinearLayout;->T3:I

    if-lez v3, :cond_1

    iget v3, p0, Lcom/txznet/comm/ui/view/BoundedLinearLayout;->T3:I

    if-ge v3, v1, :cond_1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iget v3, p0, Lcom/txznet/comm/ui/view/BoundedLinearLayout;->T3:I

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setBoundedHeight(I)V
    .locals 0

    iput p1, p0, Lcom/txznet/comm/ui/view/BoundedLinearLayout;->T3:I

    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/BoundedLinearLayout;->invalidate()V

    return-void
.end method

.method public setBoundedWidth(I)V
    .locals 0

    iput p1, p0, Lcom/txznet/comm/ui/view/BoundedLinearLayout;->T:I

    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/BoundedLinearLayout;->invalidate()V

    return-void
.end method
