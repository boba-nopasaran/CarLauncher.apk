.class public Lcom/txznet/comm/ui/Te/T/Tw;
.super Lcom/txznet/comm/ui/Te/T2;
.source "Proguard"


# static fields
.field private static T3:Lcom/txznet/comm/ui/Te/T/Tw;

.field private static final Te:Ljava/lang/String;


# instance fields
.field private T2:Lcom/txznet/comm/ui/Te/T/Ty;

.field private TN:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/txznet/comm/ui/Te/T/Tw;

    invoke-direct {v0}, Lcom/txznet/comm/ui/Te/T/Tw;-><init>()V

    sput-object v0, Lcom/txznet/comm/ui/Te/T/Tw;->T3:Lcom/txznet/comm/ui/Te/T/Tw;

    const-class v0, Lcom/txznet/comm/ui/Te/T/Tw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/txznet/comm/ui/Te/T/Tw;->Te:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/txznet/comm/ui/Te/T2;-><init>()V

    return-void
.end method

.method public static Te()Lcom/txznet/comm/ui/Te/T/Tw;
    .locals 1

    sget-object v0, Lcom/txznet/comm/ui/Te/T/Tw;->T3:Lcom/txznet/comm/ui/Te/T/Tw;

    return-object v0
.end method

.method private Tw()V
    .locals 2

    new-instance v0, Lcom/txznet/comm/ui/Te/T/Ty;

    invoke-direct {v0}, Lcom/txznet/comm/ui/Te/T/Ty;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/Tw;->T2:Lcom/txznet/comm/ui/Te/T/Ty;

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Tw;->T2:Lcom/txznet/comm/ui/Te/T/Ty;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/Ty;->TN()V

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Tw;->TN:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Tw;->T2:Lcom/txznet/comm/ui/Te/T/Ty;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/Tw;->TN:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/Te/T/Ty;->T(Landroid/view/View;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/txznet/comm/ui/Te/T/Tw;->Te:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " createLayout mTrueLayout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/Tw;->T2:Lcom/txznet/comm/ui/Te/T/Ty;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public T(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Tw;->T2:Lcom/txznet/comm/ui/Te/T/Ty;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Tw;->T2:Lcom/txznet/comm/ui/Te/T/Ty;

    invoke-virtual {v0, p1, p2, p3}, Lcom/txznet/comm/ui/Te/T/Ty;->T(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public T()V
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Tw;->T2:Lcom/txznet/comm/ui/Te/T/Ty;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/Ty;->T()V

    return-void
.end method

.method public T(Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/txznet/comm/ui/Te/T/Tw;->TN:Landroid/view/View;

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Tw;->T2:Lcom/txznet/comm/ui/Te/T/Ty;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Tw;->T2:Lcom/txznet/comm/ui/Te/T/Ty;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/Tw;->TN:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/Te/T/Ty;->T(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public T2()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Tw;->T2:Lcom/txznet/comm/ui/Te/T/Ty;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/txznet/comm/ui/Te/T/Tw;->Tw()V

    :cond_0
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Tw;->T2:Lcom/txznet/comm/ui/Te/T/Ty;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/Ty;->T2()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public T3()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/txznet/comm/ui/Te/T/Tw;->Te:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " release"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Tw;->T2:Lcom/txznet/comm/ui/Te/T/Ty;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Tw;->T2:Lcom/txznet/comm/ui/Te/T/Ty;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/Ty;->T()V

    iput-object v2, p0, Lcom/txznet/comm/ui/Te/T/Tw;->T2:Lcom/txznet/comm/ui/Te/T/Ty;

    iput-object v2, p0, Lcom/txznet/comm/ui/Te/T/Tw;->TN:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public TN()V
    .locals 0

    invoke-super {p0}, Lcom/txznet/comm/ui/Te/T2;->TN()V

    return-void
.end method
