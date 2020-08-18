.class public Lcom/txznet/T3/T/T;
.super Lcom/txznet/comm/T/T3;
.source "Proguard"


# static fields
.field static T:Lcom/txznet/T3/T/TN;

.field private static T2:Z

.field static T3:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private TG:Landroid/view/View$OnClickListener;

.field private TN:Lcom/txznet/T3/T/T3;

.field private Te:Landroid/widget/RelativeLayout;

.field private Tn:Landroid/view/View$OnClickListener;

.field private Tw:Landroid/widget/ImageButton;

.field private Ty:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/txznet/T3/T/T;->T2:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/txznet/T3/T/T;->T3:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/txznet/comm/T/T3;-><init>()V

    new-instance v0, Lcom/txznet/T3/T/T$1;

    invoke-direct {v0, p0}, Lcom/txznet/T3/T/T$1;-><init>(Lcom/txznet/T3/T/T;)V

    iput-object v0, p0, Lcom/txznet/T3/T/T;->Tn:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/txznet/T3/T/T$2;

    invoke-direct {v0, p0}, Lcom/txznet/T3/T/T$2;-><init>(Lcom/txznet/T3/T/T;)V

    iput-object v0, p0, Lcom/txznet/T3/T/T;->TG:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static T(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7

    new-instance v5, Lcom/txznet/T3/T/Te;

    invoke-direct {v5, p1}, Lcom/txznet/T3/T/Te;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/txznet/T3/T/Te;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v5}, Lcom/txznet/T3/T/Te;->T()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Lcom/txznet/T3/T/Te;->T3()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/txznet/T3/T/T$3;

    move-object v2, p1

    move-object v3, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/txznet/T3/T/T$3;-><init>(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;ILcom/txznet/T3/T/Te;)V

    invoke-virtual {v5, v0}, Lcom/txznet/T3/T/Te;->T(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/txznet/T3/T/T$4;

    invoke-direct {v0, v5}, Lcom/txznet/T3/T/T$4;-><init>(Lcom/txznet/T3/T/Te;)V

    invoke-virtual {v5, v0}, Lcom/txznet/T3/T/Te;->T3(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5}, Lcom/txznet/T3/T/Te;->show()V

    return-void
.end method

.method private T(Z)V
    .locals 3

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/txznet/T3/T/T;->Te:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    sget-object v0, Lcom/txznet/T3/T/T;->T3:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/txznet/T3/T/T;->Te:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    sget-object v0, Lcom/txznet/T3/T/T;->T:Lcom/txznet/T3/T/TN;

    invoke-virtual {v0, p1}, Lcom/txznet/T3/T/TN;->T(Z)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private TN()V
    .locals 2

    sget v0, Lcom/txznet/txz/comm/R$id;->lv_command:I

    invoke-virtual {p0, v0}, Lcom/txznet/T3/T/T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/txznet/T3/T/T3;

    iput-object v0, p0, Lcom/txznet/T3/T/T;->TN:Lcom/txznet/T3/T/T3;

    sget v0, Lcom/txznet/txz/comm/R$id;->imgbnt_add:I

    invoke-virtual {p0, v0}, Lcom/txznet/T3/T/T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/txznet/T3/T/T;->Tw:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/txznet/T3/T/T;->Tw:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/txznet/T3/T/T;->TG:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/txznet/txz/comm/R$id;->layout_addcommand:I

    invoke-virtual {p0, v0}, Lcom/txznet/T3/T/T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/txznet/T3/T/T;->Te:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/txznet/T3/T/T;->Te:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/txznet/T3/T/T;->TG:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/txznet/txz/comm/R$id;->imgbnt_backToSetting:I

    invoke-virtual {p0, v0}, Lcom/txznet/T3/T/T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txznet/T3/T/T;->Ty:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/txznet/T3/T/T;->Ty:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txznet/T3/T/T;->Tn:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private Te()V
    .locals 4

    invoke-static {}, Lcom/txznet/comm/T3/T/T3;->TN()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v2, Lcom/txznet/T3/T/T;->T3:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/txznet/T3/T/T;->T3:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/txznet/comm/T/T3;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/txznet/txz/comm/R$layout;->layout_asrcommand:I

    invoke-virtual {p0, v0}, Lcom/txznet/T3/T/T;->setContentView(I)V

    invoke-direct {p0}, Lcom/txznet/T3/T/T;->TN()V

    invoke-direct {p0}, Lcom/txznet/T3/T/T;->Te()V

    new-instance v0, Lcom/txznet/T3/T/TN;

    invoke-direct {v0, p0}, Lcom/txznet/T3/T/TN;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/txznet/T3/T/T;->T:Lcom/txznet/T3/T/TN;

    iget-object v0, p0, Lcom/txznet/T3/T/T;->TN:Lcom/txznet/T3/T/T3;

    sget-object v1, Lcom/txznet/T3/T/T;->T:Lcom/txznet/T3/T/TN;

    invoke-virtual {v0, v1}, Lcom/txznet/T3/T/T3;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/txznet/T3/T/T;->T:Lcom/txznet/T3/T/TN;

    invoke-super {p0}, Lcom/txznet/comm/T/T3;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    sget-object v0, Lcom/txznet/T3/T/T;->T3:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/txznet/T3/T/T;->Te()V

    :cond_0
    sget-object v0, Lcom/txznet/T3/T/T;->T:Lcom/txznet/T3/T/TN;

    if-nez v0, :cond_1

    new-instance v0, Lcom/txznet/T3/T/TN;

    invoke-direct {v0, p0}, Lcom/txznet/T3/T/TN;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/txznet/T3/T/T;->T:Lcom/txznet/T3/T/TN;

    :cond_1
    sget-object v0, Lcom/txznet/T3/T/T;->T:Lcom/txznet/T3/T/TN;

    invoke-virtual {v0}, Lcom/txznet/T3/T/TN;->notifyDataSetChanged()V

    invoke-super {p0, p1}, Lcom/txznet/comm/T/T3;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    sget-boolean v0, Lcom/txznet/T3/T/T;->T2:Z

    invoke-direct {p0, v0}, Lcom/txznet/T3/T/T;->T(Z)V

    invoke-super {p0}, Lcom/txznet/comm/T/T3;->onResume()V

    return-void
.end method
