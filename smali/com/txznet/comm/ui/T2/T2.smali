.class public Lcom/txznet/comm/ui/T2/T2;
.super Lcom/txznet/comm/ui/T2/T3;
.source "Proguard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/comm/ui/T2/T2$T;
    }
.end annotation


# instance fields
.field private TG:Z

.field protected TN:Lcom/txznet/comm/ui/T2/T2$T;

.field private TR:Z

.field private TW:Lcom/txznet/comm/ui/T3$T;

.field protected Te:Z

.field Tn:Lcom/txznet/sdk/TXZWheelControlManager$OnTXZWheelControlListener;

.field protected Tw:[I

.field protected Ty:[Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/txznet/comm/ui/T2/T3;-><init>()V

    iput-boolean v0, p0, Lcom/txznet/comm/ui/T2/T2;->Te:Z

    iput-boolean v0, p0, Lcom/txznet/comm/ui/T2/T2;->TR:Z

    new-instance v0, Lcom/txznet/comm/ui/T2/T2$7;

    invoke-direct {v0, p0}, Lcom/txznet/comm/ui/T2/T2$7;-><init>(Lcom/txznet/comm/ui/T2/T2;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/T2/T2;->TW:Lcom/txznet/comm/ui/T3$T;

    new-instance v0, Lcom/txznet/comm/ui/T2/T2$8;

    invoke-direct {v0, p0}, Lcom/txznet/comm/ui/T2/T2$8;-><init>(Lcom/txznet/comm/ui/T2/T2;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/T2/T2;->Tn:Lcom/txznet/sdk/TXZWheelControlManager$OnTXZWheelControlListener;

    return-void
.end method

.method private T()V
    .locals 2

    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    iget-object v0, v0, Lcom/txznet/comm/ui/T2/T2$T;->Tn:Landroid/widget/Button;

    new-instance v1, Lcom/txznet/comm/ui/T2/T2$1;

    invoke-direct {v1, p0}, Lcom/txznet/comm/ui/T2/T2$1;-><init>(Lcom/txznet/comm/ui/T2/T2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    iget-object v0, v0, Lcom/txznet/comm/ui/T2/T2$T;->TG:Landroid/widget/Button;

    new-instance v1, Lcom/txznet/comm/ui/T2/T2$2;

    invoke-direct {v1, p0}, Lcom/txznet/comm/ui/T2/T2$2;-><init>(Lcom/txznet/comm/ui/T2/T2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    iget-object v0, v0, Lcom/txznet/comm/ui/T2/T2$T;->TR:Landroid/widget/Button;

    new-instance v1, Lcom/txznet/comm/ui/T2/T2$3;

    invoke-direct {v1, p0}, Lcom/txznet/comm/ui/T2/T2$3;-><init>(Lcom/txznet/comm/ui/T2/T2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    iget-object v0, v0, Lcom/txznet/comm/ui/T2/T2$T;->T:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    iget-object v0, v0, Lcom/txznet/comm/ui/T2/T2$T;->Tn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    iget-object v0, v0, Lcom/txznet/comm/ui/T2/T2$T;->TG:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    iget-object v0, v0, Lcom/txznet/comm/ui/T2/T2$T;->TR:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    iget-object v0, v0, Lcom/txznet/comm/ui/T2/T2$T;->TN:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/txznet/comm/ui/T2/T2$4;

    invoke-direct {v1, p0}, Lcom/txznet/comm/ui/T2/T2$4;-><init>(Lcom/txznet/comm/ui/T2/T2;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private T(Landroid/widget/TextView;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v2, 0x0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_2

    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxHeight()I

    move-result v4

    if-ne v3, v4, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/txznet/comm/ui/T2/T2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    div-float/2addr v3, v0

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v1, v3, -0x1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/4 v3, 0x2

    int-to-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_0
    if-eqz v2, :cond_3

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    goto :goto_1
.end method

.method static synthetic T(Lcom/txznet/comm/ui/T2/T2;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/txznet/comm/ui/T2/T2;->T(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic T(Lcom/txznet/comm/ui/T2/T2;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/txznet/comm/ui/T2/T2;->TG:Z

    return v0
.end method

.method static synthetic T(Lcom/txznet/comm/ui/T2/T2;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/txznet/comm/ui/T2/T2;->TG:Z

    return p1
.end method


# virtual methods
.method protected T(Landroid/widget/Button;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    invoke-static {p2}, Lcom/txznet/txz/util/T;->T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected T2(Ljava/lang/String;)Lcom/txznet/comm/ui/T2/T2;
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    iget-object v0, v0, Lcom/txznet/comm/ui/T2/T2$T;->Tn:Landroid/widget/Button;

    invoke-virtual {p0, v0, p1}, Lcom/txznet/comm/ui/T2/T2;->T(Landroid/widget/Button;Ljava/lang/String;)V

    return-object p0
.end method

.method public T2()V
    .locals 0

    return-void
.end method

.method protected T3(Ljava/lang/String;)Lcom/txznet/comm/ui/T2/T2;
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/txznet/comm/ui/T2/T2;->Te:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    iget-object v0, v0, Lcom/txznet/comm/ui/T2/T2$T;->TN:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    iget-object v0, v0, Lcom/txznet/comm/ui/T2/T2$T;->TN:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    iget-object v0, v0, Lcom/txznet/comm/ui/T2/T2$T;->Tw:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    iget-object v0, v0, Lcom/txznet/comm/ui/T2/T2$T;->Ty:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    iget-object v0, v0, Lcom/txznet/comm/ui/T2/T2$T;->Ty:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/txznet/txz/util/T;->T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    iget-object v0, v0, Lcom/txznet/comm/ui/T2/T2$T;->Ty:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    iget-object v0, v0, Lcom/txznet/comm/ui/T2/T2$T;->Ty:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    iget-object v0, v0, Lcom/txznet/comm/ui/T2/T2$T;->Tw:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    iget-object v0, v0, Lcom/txznet/comm/ui/T2/T2$T;->TN:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    iget-object v0, v0, Lcom/txznet/comm/ui/T2/T2$T;->TN:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/txznet/txz/util/T;->T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public TG()V
    .locals 0

    return-void
.end method

.method protected TN(Ljava/lang/String;)Lcom/txznet/comm/ui/T2/T2;
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    iget-object v0, v0, Lcom/txznet/comm/ui/T2/T2$T;->TR:Landroid/widget/Button;

    invoke-virtual {p0, v0, p1}, Lcom/txznet/comm/ui/T2/T2;->T(Landroid/widget/Button;Ljava/lang/String;)V

    return-object p0
.end method

.method public TN()V
    .locals 0

    return-void
.end method

.method protected TR()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/txznet/comm/ui/T2/T2;->Ty:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/txznet/comm/ui/T2/T2;->Ty:[Landroid/view/View;

    aget-object v1, v1, v0

    new-instance v2, Lcom/txznet/comm/ui/T2/T2$5;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/txznet/comm/ui/T2/T2$5;-><init>(Lcom/txznet/comm/ui/T2/T2;Ljava/lang/Integer;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected TW()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/txznet/comm/ui/T2/T2;->Tw:[I

    array-length v1, v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/txznet/comm/ui/T2/T2;->Tw:[I

    const/4 v2, 0x1

    aput v2, v1, v3

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/txznet/comm/ui/T2/T2;->Tw:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/txznet/comm/ui/T2/T2;->Tw:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public Te()V
    .locals 0

    return-void
.end method

.method protected Tw()Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Lcom/txznet/comm/ui/T2/T2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/txznet/txz/comm/R$layout;->comm_win_messagebox:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/txznet/comm/ui/T2/T2$T;

    invoke-direct {v1}, Lcom/txznet/comm/ui/T2/T2$T;-><init>()V

    iput-object v1, p0, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    iget-object v1, p0, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    sget v2, Lcom/txznet/txz/comm/R$id;->frmMessageBox_Blank:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/txznet/comm/ui/T2/T2$T;->T:Landroid/view/View;

    iget-object v1, p0, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    sget v2, Lcom/txznet/txz/comm/R$id;->llMessageBox_shadow:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/txznet/comm/ui/T2/T2$T;->T3:Landroid/view/View;

    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    sget v1, Lcom/txznet/txz/comm/R$id;->txtMessageBox_Title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/txznet/comm/ui/T2/T2$T;->T2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    sget v1, Lcom/txznet/txz/comm/R$id;->txtMessageBox_Message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/txznet/comm/ui/T2/T2$T;->TN:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    sget v1, Lcom/txznet/txz/comm/R$id;->lvMessageBox_Message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, v2, Lcom/txznet/comm/ui/T2/T2$T;->Te:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    sget v1, Lcom/txznet/txz/comm/R$id;->slMessageBox_Scroll:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, v2, Lcom/txznet/comm/ui/T2/T2$T;->Tw:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    sget v1, Lcom/txznet/txz/comm/R$id;->txtMessageBox_Scroll_Message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/txznet/comm/ui/T2/T2$T;->Ty:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    sget v1, Lcom/txznet/txz/comm/R$id;->btnMessageBox_Button1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v2, Lcom/txznet/comm/ui/T2/T2$T;->Tn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    sget v1, Lcom/txznet/txz/comm/R$id;->btnMessageBox_Button3:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v2, Lcom/txznet/comm/ui/T2/T2$T;->TG:Landroid/widget/Button;

    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    sget v1, Lcom/txznet/txz/comm/R$id;->btnMessageBox_Button2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v2, Lcom/txznet/comm/ui/T2/T2$T;->TR:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/txznet/comm/ui/T2/T2;->T()V

    return-object v0
.end method

.method public dismiss()V
    .locals 3

    invoke-super {p0}, Lcom/txznet/comm/ui/T2/T3;->dismiss()V

    iget-boolean v1, p0, Lcom/txznet/comm/ui/T2/T2;->TR:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/txznet/comm/ui/T2/T2;->TR:Z

    :try_start_0
    invoke-static {}, Lcom/txznet/comm/ui/T;->T()Lcom/txznet/comm/ui/T3;

    move-result-object v1

    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T2;->TW:Lcom/txznet/comm/ui/T3$T;

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/T3;->unregisterObserver(Ljava/lang/Object;)V

    invoke-static {}, Lcom/txznet/sdk/TXZWheelControlManager;->getInstance()Lcom/txznet/sdk/TXZWheelControlManager;

    move-result-object v1

    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T2;->Tn:Lcom/txznet/sdk/TXZWheelControlManager$OnTXZWheelControlListener;

    invoke-virtual {v1, v2}, Lcom/txznet/sdk/TXZWheelControlManager;->unregisterWheelControlListener(Lcom/txznet/sdk/TXZWheelControlManager$OnTXZWheelControlListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/txznet/txz/comm/R$id;->frmMessageBox_Blank:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/txznet/comm/ui/T2/T2;->Te()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/txznet/txz/comm/R$id;->btnMessageBox_Button1:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/txznet/comm/ui/T2/T2;->T2()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/txznet/txz/comm/R$id;->btnMessageBox_Button2:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/txznet/comm/ui/T2/T2;->TN()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/txznet/txz/comm/R$id;->btnMessageBox_Button3:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/txznet/comm/ui/T2/T2;->TG()V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/txznet/comm/ui/T2/T3;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :sswitch_0
    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T2;->Tw:[I

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T2;->Tw:[I

    aget v2, v2, v0

    if-ne v2, v1, :cond_3

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T2;->Tw:[I

    aput v4, v2, v0

    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T2;->Tw:[I

    add-int/lit8 v3, v0, -0x1

    aput v1, v2, v3

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/txznet/comm/ui/T2/T2;->TR()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T2;->Tw:[I

    array-length v2, v2

    if-le v2, v1, :cond_1

    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T2;->Tw:[I

    iget-object v3, p0, Lcom/txznet/comm/ui/T2/T2;->Tw:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aput v1, v2, v3

    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T2;->Tw:[I

    aput v4, v2, v0

    goto :goto_2

    :cond_3
    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T2;->Tw:[I

    aput v1, v2, v4

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :sswitch_1
    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T2;->Tw:[I

    array-length v2, v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T2;->Tw:[I

    aget v2, v2, v0

    if-ne v2, v1, :cond_7

    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T2;->Tw:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_6

    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T2;->Tw:[I

    aput v4, v2, v0

    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T2;->Tw:[I

    add-int/lit8 v3, v0, 0x1

    aput v1, v2, v3

    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/txznet/comm/ui/T2/T2;->TR()V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T2;->Tw:[I

    array-length v2, v2

    if-le v2, v1, :cond_5

    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T2;->Tw:[I

    aput v4, v2, v0

    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T2;->Tw:[I

    aput v1, v2, v4

    goto :goto_4

    :cond_7
    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T2;->Tw:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_8

    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T2;->Tw:[I

    iget-object v3, p0, Lcom/txznet/comm/ui/T2/T2;->Tw:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aput v1, v2, v3

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :sswitch_2
    const/4 v0, 0x0

    :goto_5
    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T2;->Tw:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T2;->Tw:[I

    aget v2, v2, v0

    if-ne v2, v1, :cond_9

    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T2;->Ty:[Landroid/view/View;

    aget-object v2, v2, v0

    new-instance v3, Lcom/txznet/comm/ui/T2/T2$6;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/txznet/comm/ui/T2/T2$6;-><init>(Lcom/txznet/comm/ui/T2/T2;Ljava/lang/Integer;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :sswitch_3
    invoke-virtual {p0}, Lcom/txznet/comm/ui/T2/T2;->dismiss()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method public show()V
    .locals 3

    invoke-super {p0}, Lcom/txznet/comm/ui/T2/T3;->show()V

    iget-boolean v1, p0, Lcom/txznet/comm/ui/T2/T2;->TR:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/txznet/comm/ui/T2/T2;->TR:Z

    :try_start_0
    invoke-static {}, Lcom/txznet/comm/ui/T;->T()Lcom/txznet/comm/ui/T3;

    move-result-object v1

    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T2;->TW:Lcom/txznet/comm/ui/T3$T;

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/T3;->registerObserver(Ljava/lang/Object;)V

    invoke-static {}, Lcom/txznet/sdk/TXZWheelControlManager;->getInstance()Lcom/txznet/sdk/TXZWheelControlManager;

    move-result-object v1

    iget-object v2, p0, Lcom/txznet/comm/ui/T2/T2;->Tn:Lcom/txznet/sdk/TXZWheelControlManager$OnTXZWheelControlListener;

    invoke-virtual {v1, v2}, Lcom/txznet/sdk/TXZWheelControlManager;->registerWheelControlListener(Lcom/txznet/sdk/TXZWheelControlManager$OnTXZWheelControlListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/txznet/comm/ui/T2/T2;->TW()V

    invoke-virtual {p0}, Lcom/txznet/comm/ui/T2/T2;->TR()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
