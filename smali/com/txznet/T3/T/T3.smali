.class public Lcom/txznet/T3/T/T3;
.super Landroid/widget/ListView;
.source "Proguard"


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    const v1, 0x1fffffff

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/ListView;->onMeasure(II)V

    return-void
.end method
