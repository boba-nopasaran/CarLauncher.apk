.class public Lcom/txznet/comm/ui/Te/T/T3;
.super Lcom/txznet/comm/ui/Te/T;
.source "Proguard"


# instance fields
.field private T:Landroid/widget/ListView;

.field private T2:Landroid/content/Context;

.field private T3:Lcom/txznet/comm/ui/T/T;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/txznet/comm/ui/Te/T;-><init>()V

    iput-object p1, p0, Lcom/txznet/comm/ui/Te/T/T3;->T2:Landroid/content/Context;

    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/T3;->T:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/T3;->T:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0x777778

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/T3;->T:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/T3;->T:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    new-instance v0, Lcom/txznet/comm/ui/T/T;

    invoke-direct {v0}, Lcom/txznet/comm/ui/T/T;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/T3;->T3:Lcom/txznet/comm/ui/T/T;

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/T3;->T:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/T3;->T3:Lcom/txznet/comm/ui/T/T;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public T()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/T3;->T:Landroid/widget/ListView;

    return-object v0
.end method

.method public T(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/T3;->T3:Lcom/txznet/comm/ui/T/T;

    invoke-virtual {v0, p1}, Lcom/txznet/comm/ui/T/T;->T(Landroid/view/View;)V

    return-void
.end method

.method public T2()V
    .locals 2

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/T3;->T3:Lcom/txznet/comm/ui/T/T;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/T/T;->T()V

    new-instance v0, Lcom/txznet/comm/ui/T/T;

    invoke-direct {v0}, Lcom/txznet/comm/ui/T/T;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/T3;->T3:Lcom/txznet/comm/ui/T/T;

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/T3;->T:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/T3;->T3:Lcom/txznet/comm/ui/T/T;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public T3()V
    .locals 2

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/T3;->T:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/T3;->T3:Lcom/txznet/comm/ui/T/T;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/T/T;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/T3;->T:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    return-void
.end method
