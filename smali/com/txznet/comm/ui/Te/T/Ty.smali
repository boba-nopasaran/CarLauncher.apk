.class public Lcom/txznet/comm/ui/Te/T/Ty;
.super Lcom/txznet/comm/ui/Te/T2;
.source "Proguard"


# instance fields
.field private T2:Landroid/widget/FrameLayout;

.field private T3:Landroid/widget/LinearLayout$LayoutParams;

.field private TG:Landroid/widget/FrameLayout;

.field private TN:Landroid/widget/LinearLayout$LayoutParams;

.field private TR:Landroid/widget/LinearLayout$LayoutParams;

.field private Te:Lcom/txznet/comm/ui/Te/T/T;

.field private Tn:Landroid/widget/FrameLayout$LayoutParams;

.field private Tw:Landroid/widget/FrameLayout$LayoutParams;

.field private Ty:Lcom/txznet/comm/ui/Te/T/T2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/txznet/comm/ui/Te/T2;-><init>()V

    return-void
.end method


# virtual methods
.method public T(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Ljava/lang/Object;
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Te/T/Ty;->T2()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :sswitch_0
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Te:Lcom/txznet/comm/ui/Te/T/T;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/T;->T()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Ty:Lcom/txznet/comm/ui/Te/T/T2;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/T2;->T()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Ty:Lcom/txznet/comm/ui/Te/T/T2;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/T2;->T3()V

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Te:Lcom/txznet/comm/ui/Te/T/T;

    invoke-virtual {v0, p2}, Lcom/txznet/comm/ui/Te/T/T;->T(Landroid/view/View;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Ty:Lcom/txznet/comm/ui/Te/T/T2;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/T2;->T3()V

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Ty:Lcom/txznet/comm/ui/Te/T/T2;

    invoke-virtual {v0, p2}, Lcom/txznet/comm/ui/Te/T/T2;->T(Landroid/view/View;)V

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Te:Lcom/txznet/comm/ui/Te/T/T;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/T;->T()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Ty:Lcom/txznet/comm/ui/Te/T/T2;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/T2;->T()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->TG:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->TG:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
    .end sparse-switch
.end method

.method public T()V
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Ty:Lcom/txznet/comm/ui/Te/T/T2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Te:Lcom/txznet/comm/ui/Te/T/T;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Ty:Lcom/txznet/comm/ui/Te/T/T2;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/T2;->T3()V

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Te:Lcom/txznet/comm/ui/Te/T/T;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/T;->T3()V

    :cond_0
    return-void
.end method

.method public T(Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->TG:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->TG:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->TG:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public T3()V
    .locals 0

    return-void
.end method

.method public TN()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-super {p0}, Lcom/txznet/comm/ui/Te/T2;->TN()V

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->T:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->T:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->T3:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->T:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/Ty;->T3:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->T:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->T:Landroid/widget/LinearLayout;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->TG:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->TR:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->T:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/Ty;->TG:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/txznet/comm/ui/Te/T/Ty;->TR:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->T2:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-direct {v0, v4, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->TN:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->T2:Landroid/widget/FrameLayout;

    const-string v1, "x24"

    invoke-static {v1}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    const-string v2, "x24"

    invoke-static {v2}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    new-instance v0, Lcom/txznet/comm/ui/Te/T/T;

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/txznet/comm/ui/Te/T/T;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Te:Lcom/txznet/comm/ui/Te/T/T;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Tw:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->T2:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Te:Lcom/txznet/comm/ui/Te/T/T;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/Te/T/T;->T()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Tw:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/txznet/comm/ui/Te/T/T2;

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/txznet/comm/ui/Te/T/T2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Ty:Lcom/txznet/comm/ui/Te/T/T2;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Tn:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->T2:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Ty:Lcom/txznet/comm/ui/Te/T/T2;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/Te/T/T2;->T()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Tn:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->T:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/Ty;->T2:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/txznet/comm/ui/Te/T/Ty;->TN:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->T2:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->T2:Landroid/widget/FrameLayout;

    const-string v1, "x24"

    invoke-static {v1}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    const-string v2, "x24"

    invoke-static {v2}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_0
.end method
