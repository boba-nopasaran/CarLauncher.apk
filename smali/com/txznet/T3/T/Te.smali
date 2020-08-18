.class public Lcom/txznet/T3/T/Te;
.super Landroid/app/Dialog;
.source "Proguard"


# instance fields
.field T:Landroid/content/Context;

.field private T2:Landroid/widget/Button;

.field private T3:Landroid/widget/EditText;

.field private TN:Landroid/widget/Button;

.field private Te:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/txznet/txz/comm/R$style;->TXZ_Dialog_Style:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/txznet/T3/T/Te;->T:Landroid/content/Context;

    invoke-direct {p0}, Lcom/txznet/T3/T/Te;->T2()V

    return-void
.end method

.method static synthetic T(Lcom/txznet/T3/T/Te;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/txznet/T3/T/Te;->T3:Landroid/widget/EditText;

    return-object v0
.end method

.method private T2()V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/txznet/T3/T/Te;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/txznet/txz/comm/R$layout;->layout_edit:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    sget v5, Lcom/txznet/txz/comm/R$id;->txt_dialogTitle:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/txznet/T3/T/Te;->Te:Landroid/widget/TextView;

    sget v5, Lcom/txznet/txz/comm/R$id;->et_command:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/txznet/T3/T/Te;->T3:Landroid/widget/EditText;

    sget v5, Lcom/txznet/txz/comm/R$id;->commit_editCommand:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/txznet/T3/T/Te;->T2:Landroid/widget/Button;

    sget v5, Lcom/txznet/txz/comm/R$id;->cancel_editCommand:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/txznet/T3/T/Te;->TN:Landroid/widget/Button;

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/txznet/T3/T/Te;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Landroid/view/Window;->setLayout(II)V

    iget-object v5, p0, Lcom/txznet/T3/T/Te;->T3:Landroid/widget/EditText;

    new-instance v6, Lcom/txznet/T3/T/Te$1;

    invoke-direct {v6, p0}, Lcom/txznet/T3/T/Te$1;-><init>(Lcom/txznet/T3/T/Te;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-super {p0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public T()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/txznet/T3/T/Te;->T3:Landroid/widget/EditText;

    return-object v0
.end method

.method public T(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/txznet/T3/T/Te;->T2:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public T3()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/txznet/T3/T/Te;->Te:Landroid/widget/TextView;

    return-object v0
.end method

.method public T3(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/txznet/T3/T/Te;->TN:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    return-void
.end method
