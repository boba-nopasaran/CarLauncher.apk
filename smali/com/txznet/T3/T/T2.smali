.class public Lcom/txznet/T3/T/T2;
.super Lcom/txznet/comm/T/T3;
.source "Proguard"


# static fields
.field public static T:Ljava/lang/String;

.field private static Tt:I


# instance fields
.field private T0:Landroid/widget/TextView;

.field private T1:Landroid/view/View$OnClickListener;

.field final T2:[Ljava/lang/String;

.field final T3:[Ljava/lang/String;

.field private T5:Landroid/view/View$OnClickListener;

.field private T7:Landroid/widget/RelativeLayout;

.field private TB:Landroid/widget/RelativeLayout;

.field private TF:I

.field private TG:Lcom/txznet/comm/ui/view/CheckedImageView;

.field private TH:Landroid/widget/Button;

.field private TJ:Landroid/widget/RelativeLayout;

.field private TL:Landroid/widget/Button;

.field final TN:[Ljava/lang/String;

.field private TO:Landroid/widget/TextView;

.field private TP:Landroid/widget/RelativeLayout;

.field private TQ:Landroid/widget/Button;

.field private TR:Lcom/txznet/comm/ui/view/CheckedImageView;

.field private TW:Landroid/widget/RelativeLayout;

.field private TY:Landroid/view/View$OnClickListener;

.field private TZ:Landroid/view/View$OnClickListener;

.field private Tc:Landroid/widget/TextView;

.field final Te:[Ljava/lang/String;

.field private Tf:Landroid/view/View$OnClickListener;

.field private Tg:Landroid/view/View$OnClickListener;

.field private Tk:I

.field Tn:Lcom/txznet/comm/T3/T/T3$T;

.field private To:Landroid/widget/Button;

.field private Tr:Landroid/widget/RelativeLayout;

.field private Tu:Landroid/view/View$OnClickListener;

.field Tw:Ljava/lang/String;

.field Ty:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/txz/commandConfig.properties"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/txznet/T3/T/T2;->T:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/txznet/T3/T/T2;->Tt:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    invoke-direct {p0}, Lcom/txznet/comm/T/T3;-><init>()V

    iput v2, p0, Lcom/txznet/T3/T/T2;->Tk:I

    iput v2, p0, Lcom/txznet/T3/T/T2;->TF:I

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u6781\u9ad8\uff08\u9002\u5408\u5608\u6742\u73af\u5883\uff0c\u6781\u6613\u88ab\u5524\u9192\uff09"

    aput-object v1, v0, v3

    const-string v1, "\u9ad8\uff08\u9002\u5408\u566a\u97f3\u73af\u5883\uff0c\u5bb9\u6613\u88ab\u5524\u9192\uff09"

    aput-object v1, v0, v4

    const-string v1, "\u6b63\u5e38\uff08\u9002\u5408\u666e\u901a\u73af\u5883\uff0c\u63a8\u8350\uff09"

    aput-object v1, v0, v2

    const-string v1, "\u4f4e\uff08\u9002\u5408\u5b89\u9759\u73af\u5883\uff0c\u8f83\u96be\u88ab\u5524\u9192\uff09"

    aput-object v1, v0, v5

    const-string v1, "\u6781\u4f4e\uff08\u9002\u5408\u5b89\u9759\u73af\u5883\uff0c\u6781\u96be\u88ab\u5524\u9192\uff09"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/txznet/T3/T/T2;->T3:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u6781\u9ad8"

    aput-object v1, v0, v3

    const-string v1, "\u9ad8"

    aput-object v1, v0, v4

    const-string v1, "\u6b63\u5e38"

    aput-object v1, v0, v2

    const-string v1, "\u4f4e"

    aput-object v1, v0, v5

    const-string v1, "\u6781\u4f4e"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/txznet/T3/T/T2;->T2:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u6781\u5feb\uff08\u9002\u5408\u6025\u6027\u5b50\uff0c\u6781\u5bb9\u6613\u6f0f\u542c\u5185\u5bb9\uff09"

    aput-object v1, v0, v3

    const-string v1, "\u5feb\uff08\u9002\u5408\u6025\u6027\u5b50\uff0c\u5bb9\u6613\u6f0f\u542c\u5185\u5bb9\uff09"

    aput-object v1, v0, v4

    const-string v1, "\u6b63\u5e38\uff08\u63a8\u8350\uff09"

    aput-object v1, v0, v2

    const-string v1, "\u6162\uff08\u9002\u5408\u6162\u6027\u5b50\uff0c\u5bb9\u6613\u4e0d\u8010\u70e6\uff09"

    aput-object v1, v0, v5

    const-string v1, "\u6781\u6162\uff08\u9002\u5408\u6162\u6027\u5b50\uff0c\u6781\u5bb9\u6613\u4e0d\u8010\u70e6\uff09"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/txznet/T3/T/T2;->TN:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u6781\u5feb"

    aput-object v1, v0, v3

    const-string v1, "\u5feb"

    aput-object v1, v0, v4

    const-string v1, "\u6b63\u5e38"

    aput-object v1, v0, v2

    const-string v1, "\u6162"

    aput-object v1, v0, v5

    const-string v1, "\u6781\u6162"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/txznet/T3/T/T2;->Te:[Ljava/lang/String;

    new-instance v0, Lcom/txznet/T3/T/T2$1;

    invoke-direct {v0, p0}, Lcom/txznet/T3/T/T2$1;-><init>(Lcom/txznet/T3/T/T2;)V

    iput-object v0, p0, Lcom/txznet/T3/T/T2;->T5:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/txznet/T3/T/T2$3;

    invoke-direct {v0, p0}, Lcom/txznet/T3/T/T2$3;-><init>(Lcom/txznet/T3/T/T2;)V

    iput-object v0, p0, Lcom/txznet/T3/T/T2;->Tu:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/txznet/T3/T/T2$4;

    invoke-direct {v0, p0}, Lcom/txznet/T3/T/T2$4;-><init>(Lcom/txznet/T3/T/T2;)V

    iput-object v0, p0, Lcom/txznet/T3/T/T2;->Tf:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/txznet/T3/T/T2$5;

    invoke-direct {v0, p0}, Lcom/txznet/T3/T/T2$5;-><init>(Lcom/txznet/T3/T/T2;)V

    iput-object v0, p0, Lcom/txznet/T3/T/T2;->T1:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/txznet/T3/T/T2$6;

    invoke-direct {v0, p0}, Lcom/txznet/T3/T/T2$6;-><init>(Lcom/txznet/T3/T/T2;)V

    iput-object v0, p0, Lcom/txznet/T3/T/T2;->Tg:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/txznet/T3/T/T2$7;

    invoke-direct {v0, p0}, Lcom/txznet/T3/T/T2$7;-><init>(Lcom/txznet/T3/T/T2;)V

    iput-object v0, p0, Lcom/txznet/T3/T/T2;->TY:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/txznet/T3/T/T2$8;

    invoke-direct {v0, p0}, Lcom/txznet/T3/T/T2$8;-><init>(Lcom/txznet/T3/T/T2;)V

    iput-object v0, p0, Lcom/txznet/T3/T/T2;->TZ:Landroid/view/View$OnClickListener;

    const-string v0, ""

    iput-object v0, p0, Lcom/txznet/T3/T/T2;->Tw:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/txznet/T3/T/T2;->Ty:Ljava/lang/String;

    new-instance v0, Lcom/txznet/T3/T/T2$9;

    invoke-direct {v0, p0}, Lcom/txznet/T3/T/T2$9;-><init>(Lcom/txznet/T3/T/T2;)V

    iput-object v0, p0, Lcom/txznet/T3/T/T2;->Tn:Lcom/txznet/comm/T3/T/T3$T;

    return-void
.end method

.method static synthetic T(Lcom/txznet/T3/T/T2;I)I
    .locals 0

    iput p1, p0, Lcom/txznet/T3/T/T2;->TF:I

    return p1
.end method

.method static synthetic T(Lcom/txznet/T3/T/T2;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    invoke-direct {p0, p1}, Lcom/txznet/T3/T/T2;->T(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private T(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x23

    if-gt v0, v1, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lcom/txznet/T3/T/T2;->TF:I

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3c

    if-gt v0, v1, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/txznet/T3/T/T2;->TF:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x50

    if-gt v0, v1, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcom/txznet/T3/T/T2;->TF:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x5f

    if-gt v0, v1, :cond_3

    const/4 v0, 0x1

    iput v0, p0, Lcom/txznet/T3/T/T2;->TF:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/txznet/T3/T/T2;->TF:I

    goto :goto_0
.end method

.method private T(F)V
    .locals 1

    const v0, -0x3fa66666    # -3.4f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/txznet/T3/T/T2;->Tk:I

    :goto_0
    return-void

    :cond_0
    const v0, -0x3fb33333    # -3.2f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/txznet/T3/T/T2;->Tk:I

    goto :goto_0

    :cond_1
    const/high16 v0, -0x3fc00000    # -3.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcom/txznet/T3/T/T2;->Tk:I

    goto :goto_0

    :cond_2
    const v0, -0x3fcccccd    # -2.8f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_3

    const/4 v0, 0x3

    iput v0, p0, Lcom/txznet/T3/T/T2;->Tk:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/txznet/T3/T/T2;->Tk:I

    goto :goto_0
.end method

.method private T(I)V
    .locals 5

    const/16 v1, 0x8

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/txznet/T3/T/T2;->TW:Landroid/widget/RelativeLayout;

    rem-int/lit8 v0, p1, 0x2

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/txznet/T3/T/T2;->TJ:Landroid/widget/RelativeLayout;

    div-int/lit8 v0, p1, 0x2

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/txznet/T3/T/T2;->TB:Landroid/widget/RelativeLayout;

    div-int/lit8 v0, p1, 0x4

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/txznet/T3/T/T2;->TP:Landroid/widget/RelativeLayout;

    div-int/lit8 v0, p1, 0x8

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/txznet/T3/T/T2;->Tr:Landroid/widget/RelativeLayout;

    div-int/lit8 v0, p1, 0x10

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v4, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/txznet/T3/T/T2;->T7:Landroid/widget/RelativeLayout;

    div-int/lit8 v3, p1, 0x20

    rem-int/lit8 v3, v3, 0x2

    if-ne v3, v4, :cond_5

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_5
.end method

.method static synthetic T(Lcom/txznet/T3/T/T2;)V
    .locals 0

    invoke-direct {p0}, Lcom/txznet/T3/T/T2;->Ty()V

    return-void
.end method

.method static synthetic T(Lcom/txznet/T3/T/T2;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/txznet/T3/T/T2;->T(F)V

    return-void
.end method

.method static synthetic T2(Lcom/txznet/T3/T/T2;)Lcom/txznet/comm/ui/view/CheckedImageView;
    .locals 1

    iget-object v0, p0, Lcom/txznet/T3/T/T2;->TG:Lcom/txznet/comm/ui/view/CheckedImageView;

    return-object v0
.end method

.method static synthetic T3(Lcom/txznet/T3/T/T2;I)I
    .locals 0

    iput p1, p0, Lcom/txznet/T3/T/T2;->Tk:I

    return p1
.end method

.method static synthetic T3(Lcom/txznet/T3/T/T2;)V
    .locals 0

    invoke-direct {p0}, Lcom/txznet/T3/T/T2;->Tw()V

    return-void
.end method

.method static synthetic TN(Lcom/txznet/T3/T/T2;)Lcom/txznet/comm/ui/view/CheckedImageView;
    .locals 1

    iget-object v0, p0, Lcom/txznet/T3/T/T2;->TR:Lcom/txznet/comm/ui/view/CheckedImageView;

    return-object v0
.end method

.method private TN()V
    .locals 2

    sget v0, Lcom/txznet/txz/comm/R$id;->layout_wakeSwitch:I

    invoke-virtual {p0, v0}, Lcom/txznet/T3/T/T2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/txznet/T3/T/T2;->TW:Landroid/widget/RelativeLayout;

    sget v0, Lcom/txznet/txz/comm/R$id;->layout_windowSwitch:I

    invoke-virtual {p0, v0}, Lcom/txznet/T3/T/T2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/txznet/T3/T/T2;->TJ:Landroid/widget/RelativeLayout;

    sget v0, Lcom/txznet/txz/comm/R$id;->layout_arsCommand:I

    invoke-virtual {p0, v0}, Lcom/txznet/T3/T/T2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/txznet/T3/T/T2;->TB:Landroid/widget/RelativeLayout;

    sget v0, Lcom/txznet/txz/comm/R$id;->layout_recogdB:I

    invoke-virtual {p0, v0}, Lcom/txznet/T3/T/T2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/txznet/T3/T/T2;->TP:Landroid/widget/RelativeLayout;

    sget v0, Lcom/txznet/txz/comm/R$id;->layout_ttsdB:I

    invoke-virtual {p0, v0}, Lcom/txznet/T3/T/T2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/txznet/T3/T/T2;->Tr:Landroid/widget/RelativeLayout;

    sget v0, Lcom/txznet/txz/comm/R$id;->layout_reset:I

    invoke-virtual {p0, v0}, Lcom/txznet/T3/T/T2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/txznet/T3/T/T2;->T7:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/txznet/T3/T/T2;->TW:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/txznet/T3/T/T2;->TY:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/txznet/T3/T/T2;->TJ:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/txznet/T3/T/T2;->TZ:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/txznet/txz/comm/R$id;->iv_wakeSwitch:I

    invoke-virtual {p0, v0}, Lcom/txznet/T3/T/T2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/txznet/comm/ui/view/CheckedImageView;

    iput-object v0, p0, Lcom/txznet/T3/T/T2;->TG:Lcom/txznet/comm/ui/view/CheckedImageView;

    sget v0, Lcom/txznet/txz/comm/R$id;->iv_windowSwitch:I

    invoke-virtual {p0, v0}, Lcom/txznet/T3/T/T2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/txznet/comm/ui/view/CheckedImageView;

    iput-object v0, p0, Lcom/txznet/T3/T/T2;->TR:Lcom/txznet/comm/ui/view/CheckedImageView;

    sget v0, Lcom/txznet/txz/comm/R$id;->imgbnt_backToRecord:I

    invoke-virtual {p0, v0}, Lcom/txznet/T3/T/T2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txznet/T3/T/T2;->TO:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/txznet/T3/T/T2;->TO:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txznet/T3/T/T2;->T5:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/txznet/txz/comm/R$id;->bntHint_command:I

    invoke-virtual {p0, v0}, Lcom/txznet/T3/T/T2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/txznet/T3/T/T2;->To:Landroid/widget/Button;

    iget-object v0, p0, Lcom/txznet/T3/T/T2;->To:Landroid/widget/Button;

    iget-object v1, p0, Lcom/txznet/T3/T/T2;->Tu:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/txznet/txz/comm/R$id;->bntHint_recogdB:I

    invoke-virtual {p0, v0}, Lcom/txznet/T3/T/T2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/txznet/T3/T/T2;->TQ:Landroid/widget/Button;

    iget-object v0, p0, Lcom/txznet/T3/T/T2;->TQ:Landroid/widget/Button;

    iget-object v1, p0, Lcom/txznet/T3/T/T2;->Tf:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/txznet/txz/comm/R$id;->bntHint_TtsdB:I

    invoke-virtual {p0, v0}, Lcom/txznet/T3/T/T2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/txznet/T3/T/T2;->TL:Landroid/widget/Button;

    iget-object v0, p0, Lcom/txznet/T3/T/T2;->TL:Landroid/widget/Button;

    iget-object v1, p0, Lcom/txznet/T3/T/T2;->T1:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/txznet/txz/comm/R$id;->txt_recogValue:I

    invoke-virtual {p0, v0}, Lcom/txznet/T3/T/T2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txznet/T3/T/T2;->T0:Landroid/widget/TextView;

    sget v0, Lcom/txznet/txz/comm/R$id;->txt_ttsValue:I

    invoke-virtual {p0, v0}, Lcom/txznet/T3/T/T2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txznet/T3/T/T2;->Tc:Landroid/widget/TextView;

    sget v0, Lcom/txznet/txz/comm/R$id;->bntHint_reset:I

    invoke-virtual {p0, v0}, Lcom/txznet/T3/T/T2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/txznet/T3/T/T2;->TH:Landroid/widget/Button;

    iget-object v0, p0, Lcom/txznet/T3/T/T2;->TH:Landroid/widget/Button;

    iget-object v1, p0, Lcom/txznet/T3/T/T2;->Tg:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic Te(Lcom/txznet/T3/T/T2;)I
    .locals 1

    iget v0, p0, Lcom/txznet/T3/T/T2;->Tk:I

    return v0
.end method

.method private Te()V
    .locals 6

    invoke-static {}, Lcom/txznet/comm/T3/T/T3;->T2()Ljava/lang/Float;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/txznet/T3/T/T2;->T(F)V

    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T/T3;->Te()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/txznet/T3/T/T2;->T(Ljava/lang/Integer;)Ljava/lang/Integer;

    :cond_1
    iget-object v4, p0, Lcom/txznet/T3/T/T2;->T2:[Ljava/lang/String;

    iget v5, p0, Lcom/txznet/T3/T/T2;->Tk:I

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/txznet/T3/T/T2;->Tw:Ljava/lang/String;

    iget-object v4, p0, Lcom/txznet/T3/T/T2;->Te:[Ljava/lang/String;

    iget v5, p0, Lcom/txznet/T3/T/T2;->TF:I

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/txznet/T3/T/T2;->Ty:Ljava/lang/String;

    iget-object v4, p0, Lcom/txznet/T3/T/T2;->T0:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/txznet/T3/T/T2;->Tw:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/txznet/T3/T/T2;->Tc:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/txznet/T3/T/T2;->Ty:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/txznet/comm/T3/T/T3;->Tw()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/txznet/T3/T/T2;->TG:Lcom/txznet/comm/ui/view/CheckedImageView;

    invoke-static {}, Lcom/txznet/comm/T3/T/T3;->Tw()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/txznet/comm/ui/view/CheckedImageView;->setChecked(Z)V

    :cond_2
    invoke-static {}, Lcom/txznet/comm/T3/T/T3;->Ty()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/txznet/comm/T3/T/T3;->Ty()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FLOAT_NONE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/txznet/T3/T/T2;->TR:Lcom/txznet/comm/ui/view/CheckedImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/txznet/comm/ui/view/CheckedImageView;->setChecked(Z)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v4, p0, Lcom/txznet/T3/T/T2;->TR:Lcom/txznet/comm/ui/view/CheckedImageView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/txznet/comm/ui/view/CheckedImageView;->setChecked(Z)V

    goto :goto_0
.end method

.method static synthetic Tn(Lcom/txznet/T3/T/T2;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/txznet/T3/T/T2;->Tc:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic Tw(Lcom/txznet/T3/T/T2;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/txznet/T3/T/T2;->T0:Landroid/widget/TextView;

    return-object v0
.end method

.method private Tw()V
    .locals 7

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x4

    invoke-direct {v0, p0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v4, "\u8bed\u97f3\u64ad\u62a5\u901f\u5ea6"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const v4, 0x3f666666    # 0.9f

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v4, p0, Lcom/txznet/T3/T/T2;->TN:[Ljava/lang/String;

    iget v5, p0, Lcom/txznet/T3/T/T2;->TF:I

    new-instance v6, Lcom/txznet/T3/T/T2$10;

    invoke-direct {v6, p0}, Lcom/txznet/T3/T/T2$10;-><init>(Lcom/txznet/T3/T/T2;)V

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic Ty(Lcom/txznet/T3/T/T2;)I
    .locals 1

    iget v0, p0, Lcom/txznet/T3/T/T2;->TF:I

    return v0
.end method

.method private Ty()V
    .locals 7

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x4

    invoke-direct {v0, p0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v4, "\u8bed\u97f3\u5524\u9192\u7075\u654f\u5ea6"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const v4, 0x3f666666    # 0.9f

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/16 v4, 0x320

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v4, 0x1f4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v4, p0, Lcom/txznet/T3/T/T2;->T3:[Ljava/lang/String;

    iget v5, p0, Lcom/txznet/T3/T/T2;->Tk:I

    new-instance v6, Lcom/txznet/T3/T/T2$2;

    invoke-direct {v6, p0}, Lcom/txznet/T3/T/T2$2;-><init>(Lcom/txznet/T3/T/T2;)V

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/txznet/comm/T/T3;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/txznet/txz/comm/R$layout;->activity_setting:I

    invoke-virtual {p0, v0}, Lcom/txznet/T3/T/T2;->setContentView(I)V

    invoke-direct {p0}, Lcom/txznet/T3/T/T2;->TN()V

    invoke-direct {p0}, Lcom/txznet/T3/T/T2;->Te()V

    iget-object v0, p0, Lcom/txznet/T3/T/T2;->Tn:Lcom/txznet/comm/T3/T/T3$T;

    invoke-static {v0}, Lcom/txznet/comm/T3/T/T3;->T(Lcom/txznet/comm/T3/T/T3$T;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/txznet/T3/T/T2;->Tn:Lcom/txznet/comm/T3/T/T3$T;

    invoke-static {v0}, Lcom/txznet/comm/T3/T/T3;->T3(Lcom/txznet/comm/T3/T/T3$T;)V

    invoke-super {p0}, Lcom/txznet/comm/T/T3;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/txznet/T3/T/T2;->T0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/txznet/T3/T/T2;->Tc:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/txznet/T3/T/T2;->Te()V

    :cond_1
    iget-object v0, p0, Lcom/txznet/T3/T/T2;->T0:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txznet/T3/T/T2;->Tw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/txznet/T3/T/T2;->Tc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txznet/T3/T/T2;->Ty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-super {p0, p1}, Lcom/txznet/comm/T/T3;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/txznet/comm/T/T3;->onResume()V

    sget v0, Lcom/txznet/T3/T/T2;->Tt:I

    invoke-direct {p0, v0}, Lcom/txznet/T3/T/T2;->T(I)V

    iget-object v0, p0, Lcom/txznet/T3/T/T2;->Tn:Lcom/txznet/comm/T3/T/T3$T;

    invoke-static {v0}, Lcom/txznet/comm/T3/T/T3;->T(Lcom/txznet/comm/T3/T/T3$T;)V

    return-void
.end method
