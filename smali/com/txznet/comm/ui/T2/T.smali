.class public abstract Lcom/txznet/comm/ui/T2/T;
.super Lcom/txznet/comm/ui/T2/T2;
.source "Proguard"


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/txznet/comm/ui/T2/T2;-><init>()V

    const-string v0, "\u786e\u5b9a"

    invoke-virtual {p0, v0}, Lcom/txznet/comm/ui/T2/T;->T2(Ljava/lang/String;)Lcom/txznet/comm/ui/T2/T2;

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p0, v0}, Lcom/txznet/comm/ui/T2/T;->TN(Ljava/lang/String;)Lcom/txznet/comm/ui/T2/T2;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/txznet/comm/ui/T2/T;->Tw:[I

    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T;->Tw:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/txznet/comm/ui/T2/T;->Ty:[Landroid/view/View;

    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T;->Ty:[Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    iget-object v2, v2, Lcom/txznet/comm/ui/T2/T2$T;->Tn:Landroid/widget/Button;

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T;->Ty:[Landroid/view/View;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    iget-object v2, v2, Lcom/txznet/comm/ui/T2/T2$T;->TR:Landroid/widget/Button;

    aput-object v2, v0, v1

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;)Lcom/txznet/comm/ui/T2/T;
    .locals 0

    invoke-super {p0, p1}, Lcom/txznet/comm/ui/T2/T2;->T3(Ljava/lang/String;)Lcom/txznet/comm/ui/T2/T2;

    return-object p0
.end method

.method public abstract T()V
.end method

.method public T2()V
    .locals 0

    invoke-virtual {p0}, Lcom/txznet/comm/ui/T2/T;->T()V

    invoke-virtual {p0}, Lcom/txznet/comm/ui/T2/T;->dismiss()V

    return-void
.end method

.method public synthetic T3(Ljava/lang/String;)Lcom/txznet/comm/ui/T2/T2;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/txznet/comm/ui/T2/T;->T(Ljava/lang/String;)Lcom/txznet/comm/ui/T2/T;

    move-result-object v0

    return-object v0
.end method

.method public T3()V
    .locals 0

    return-void
.end method

.method public TN()V
    .locals 0

    invoke-virtual {p0}, Lcom/txznet/comm/ui/T2/T;->T3()V

    invoke-virtual {p0}, Lcom/txznet/comm/ui/T2/T;->dismiss()V

    return-void
.end method

.method public Te()V
    .locals 0

    invoke-virtual {p0}, Lcom/txznet/comm/ui/T2/T;->TN()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/txznet/comm/ui/T2/T;->T3()V

    invoke-virtual {p0}, Lcom/txznet/comm/ui/T2/T;->dismiss()V

    return-void
.end method
