.class public Lcom/txznet/comm/ui/Te/T/TN;
.super Lcom/txznet/comm/ui/Te/T2;
.source "Proguard"


# static fields
.field private static T3:Lcom/txznet/comm/ui/Te/T/TN;


# instance fields
.field private T2:Lcom/txznet/comm/ui/Te/T/Te;

.field private TN:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/txznet/comm/ui/Te/T/TN;

    invoke-direct {v0}, Lcom/txznet/comm/ui/Te/T/TN;-><init>()V

    sput-object v0, Lcom/txznet/comm/ui/Te/T/TN;->T3:Lcom/txznet/comm/ui/Te/T/TN;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/txznet/comm/ui/Te/T2;-><init>()V

    return-void
.end method

.method public static Te()Lcom/txznet/comm/ui/Te/T/TN;
    .locals 1

    sget-object v0, Lcom/txznet/comm/ui/Te/T/TN;->T3:Lcom/txznet/comm/ui/Te/T/TN;

    return-object v0
.end method

.method private Tw()V
    .locals 2

    new-instance v0, Lcom/txznet/comm/ui/Te/T/Te;

    invoke-direct {v0}, Lcom/txznet/comm/ui/Te/T/Te;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/TN;->T2:Lcom/txznet/comm/ui/Te/T/Te;

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/TN;->T2:Lcom/txznet/comm/ui/Te/T/Te;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/Te;->TN()V

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/TN;->TN:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/TN;->T2:Lcom/txznet/comm/ui/Te/T/Te;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/TN;->TN:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/Te/T/Te;->T(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public T(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/TN;->T2:Lcom/txznet/comm/ui/Te/T/Te;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/TN;->T2:Lcom/txznet/comm/ui/Te/T/Te;

    invoke-virtual {v0, p1, p2, p3}, Lcom/txznet/comm/ui/Te/T/Te;->T(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public T()V
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/TN;->T2:Lcom/txznet/comm/ui/Te/T/Te;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/Te;->T()V

    return-void
.end method

.method public T(Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/txznet/comm/ui/Te/T/TN;->TN:Landroid/view/View;

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/TN;->T2:Lcom/txznet/comm/ui/Te/T/Te;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/TN;->T2:Lcom/txznet/comm/ui/Te/T/Te;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/TN;->TN:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/Te/T/Te;->T(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public T2()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/TN;->T2:Lcom/txznet/comm/ui/Te/T/Te;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/txznet/comm/ui/Te/T/TN;->Tw()V

    :cond_0
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/TN;->T2:Lcom/txznet/comm/ui/Te/T/Te;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/Te;->T2()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public T3()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/TN;->T2:Lcom/txznet/comm/ui/Te/T/Te;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/TN;->T2:Lcom/txznet/comm/ui/Te/T/Te;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/Te;->T()V

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/TN;->T2:Lcom/txznet/comm/ui/Te/T/Te;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/Te;->T3()V

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/T/TN;->T2:Lcom/txznet/comm/ui/Te/T/Te;

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/T/TN;->TN:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public TN()V
    .locals 0

    invoke-super {p0}, Lcom/txznet/comm/ui/Te/T2;->TN()V

    return-void
.end method
