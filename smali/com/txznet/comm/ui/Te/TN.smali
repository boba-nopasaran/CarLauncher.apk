.class public Lcom/txznet/comm/ui/Te/TN;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static T2:Lcom/txznet/comm/ui/Te/TN;


# instance fields
.field public T:Z

.field private T0:Lcom/txznet/comm/ui/TR/T3/TJ;

.field public T3:Lcom/txznet/comm/ui/TR/T;

.field private T5:Z

.field private T7:Lcom/txznet/comm/ui/TR/T3/T3;

.field private TB:Lcom/txznet/comm/ui/TR/T3/Tw;

.field private TF:Ljava/lang/String;

.field private TG:Lcom/txznet/comm/ui/TR/T3/T7;

.field private TH:Lcom/txznet/comm/ui/TR/T3/TP;

.field private TJ:Lcom/txznet/comm/ui/TR/T3/T2;

.field private TL:Lcom/txznet/comm/ui/TR/T3/Ty;

.field private TN:Lcom/txznet/comm/ui/Te/T2;

.field private TO:Lcom/txznet/comm/ui/TR/T3/TR;

.field private TP:Lcom/txznet/comm/ui/TR/T3/TL;

.field private TQ:Lcom/txznet/comm/ui/TR/T3/Te;

.field private TR:Lcom/txznet/comm/ui/TR/T3/T;

.field private TW:Lcom/txznet/comm/ui/TR/T3/TH;

.field private Tc:Lcom/txznet/comm/ui/TR/T3/TN;

.field private Te:Lcom/txznet/comm/ui/TR/T3/TB;

.field private Tk:I

.field private Tn:Lcom/txznet/comm/ui/TR/T3/TO;

.field private To:Lcom/txznet/comm/ui/TR/T3/TG;

.field private Tr:Lcom/txznet/comm/ui/TR/T3/TQ;

.field private Tt:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/txznet/comm/ui/TR/T3;",
            ">;"
        }
    .end annotation
.end field

.field private Tu:I

.field private Tw:Z

.field private Ty:Lcom/txznet/comm/ui/TR/T3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/txznet/comm/ui/Te/TN;

    invoke-direct {v0}, Lcom/txznet/comm/ui/Te/TN;-><init>()V

    sput-object v0, Lcom/txznet/comm/ui/Te/TN;->T2:Lcom/txznet/comm/ui/Te/TN;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/txznet/comm/ui/Te/TN;->Tw:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tk:I

    const-string v0, ""

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/txznet/comm/ui/Te/TN;->T:Z

    new-instance v0, Lcom/txznet/comm/ui/Te/TN$2;

    invoke-direct {v0, p0}, Lcom/txznet/comm/ui/Te/TN$2;-><init>(Lcom/txznet/comm/ui/Te/TN;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->T3:Lcom/txznet/comm/ui/TR/T;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tt:Ljava/util/LinkedList;

    iput-boolean v1, p0, Lcom/txznet/comm/ui/Te/TN;->T5:Z

    iput v1, p0, Lcom/txznet/comm/ui/Te/TN;->Tu:I

    return-void
.end method

.method static synthetic T(Lcom/txznet/comm/ui/Te/TN;)Lcom/txznet/comm/ui/Te/T2;
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TN:Lcom/txznet/comm/ui/Te/T2;

    return-object v0
.end method

.method public static T()Lcom/txznet/comm/ui/Te/TN;
    .locals 1

    sget-object v0, Lcom/txznet/comm/ui/Te/TN;->T2:Lcom/txznet/comm/ui/Te/TN;

    return-object v0
.end method

.method private T0()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/txznet/comm/ui/Te/TN;->T2(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/comm/ui/Te/TN;->T5:Z

    return-void
.end method

.method private T2(I)V
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tn:Lcom/txznet/comm/ui/TR/T3/TO;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/txznet/comm/ui/Te/TN;->T5:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tn:Lcom/txznet/comm/ui/TR/T3/TO;

    invoke-virtual {v0, p1}, Lcom/txznet/comm/ui/TR/T3/TO;->T(I)V

    goto :goto_0
.end method

.method static synthetic T3(Lcom/txznet/comm/ui/Te/TN;)V
    .locals 0

    invoke-direct {p0}, Lcom/txznet/comm/ui/Te/TN;->Tc()V

    return-void
.end method

.method private Tc()V
    .locals 1

    iget-boolean v0, p0, Lcom/txznet/comm/ui/Te/TN;->T5:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tu:I

    invoke-direct {p0, v0}, Lcom/txznet/comm/ui/Te/TN;->T2(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/txznet/comm/ui/Te/TN;->T5:Z

    goto :goto_0
.end method


# virtual methods
.method public T(I)V
    .locals 0

    iput p1, p0, Lcom/txznet/comm/ui/Te/TN;->Tu:I

    invoke-direct {p0, p1}, Lcom/txznet/comm/ui/Te/TN;->T2(I)V

    return-void
.end method

.method public T(II)V
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Te:Lcom/txznet/comm/ui/TR/T3/TB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Te:Lcom/txznet/comm/ui/TR/T3/TB;

    invoke-virtual {v0, p1, p2}, Lcom/txznet/comm/ui/TR/T3/TB;->T(II)V

    invoke-static {}, Lcom/txznet/comm/ui/TN/T3;->T()Lcom/txznet/comm/ui/TN/T3;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/txznet/comm/ui/TN/T3;->T(II)V

    :cond_0
    return-void
.end method

.method public T(ILandroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TN:Lcom/txznet/comm/ui/Te/T2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TN:Lcom/txznet/comm/ui/Te/T2;

    invoke-virtual {v0, p1, p2}, Lcom/txznet/comm/ui/Te/T2;->T(ILandroid/view/View;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public T(Landroid/view/View;)V
    .locals 1

    const-string v0, "[UI2.0] add third record view"

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tw:Z

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TN:Lcom/txznet/comm/ui/Te/T2;

    invoke-virtual {v0, p1}, Lcom/txznet/comm/ui/Te/T2;->T(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public T(Lcom/txznet/comm/ui/TR/T3/TB;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/comm/ui/Te/TN;->Te:Lcom/txznet/comm/ui/TR/T3/TB;

    return-void
.end method

.method public T(Lcom/txznet/comm/ui/TR/T3;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/txznet/comm/ui/Te/TN;->Ty:Lcom/txznet/comm/ui/TR/T3;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tt:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/txznet/comm/ui/TN/T3;->T()Lcom/txznet/comm/ui/TN/T3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/txznet/comm/ui/TN/T3;->T(Lcom/txznet/comm/ui/TR/T2;)V

    instance-of v0, p1, Lcom/txznet/comm/ui/TR/T3/TB;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/txznet/comm/ui/TR/T3;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->T3:Lcom/txznet/comm/ui/TR/T;

    invoke-virtual {p1, v0}, Lcom/txznet/comm/ui/TR/T3;->T(Lcom/txznet/comm/ui/TR/T;)V

    invoke-direct {p0}, Lcom/txznet/comm/ui/Te/TN;->T0()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->T3:Lcom/txznet/comm/ui/TR/T;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/txznet/comm/ui/TR/T;->T(Landroid/view/animation/Animation;I)V

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->T3:Lcom/txznet/comm/ui/TR/T;

    const/4 v1, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/txznet/comm/ui/TR/T;->T(Landroid/view/animation/Animation;I)V

    invoke-direct {p0}, Lcom/txznet/comm/ui/Te/TN;->Tc()V

    goto :goto_0
.end method

.method public T(Z)V
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Te:Lcom/txznet/comm/ui/TR/T3/TB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Te:Lcom/txznet/comm/ui/TR/T3/TB;

    invoke-virtual {v0, p1}, Lcom/txznet/comm/ui/TR/T3/TB;->T(Z)V

    :cond_0
    return-void
.end method

.method public T2()V
    .locals 4

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T2()I

    move-result v0

    iput v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tk:I

    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->TN()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init view prefix:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T3()I

    move-result v0

    if-ne v0, v3, :cond_3

    invoke-static {}, Lcom/txznet/comm/ui/Te/T/Tw;->Te()Lcom/txznet/comm/ui/Te/T/Tw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/Tw;->TN()V

    invoke-static {}, Lcom/txznet/comm/ui/Te/T/Tw;->Te()Lcom/txznet/comm/ui/Te/T/Tw;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TN:Lcom/txznet/comm/ui/Te/T2;

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Te/TN;->T3()V

    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T3()I

    move-result v0

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tn:Lcom/txznet/comm/ui/TR/T3/TO;

    new-instance v1, Lcom/txznet/comm/ui/TR/T/TQ;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lcom/txznet/comm/ui/TR/T/TQ;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/TR/T3/TO;->T(Lcom/txznet/comm/ui/TR/T/TQ;)Lcom/txznet/comm/ui/TR/TN$T;

    move-result-object v0

    iget-object v0, v0, Lcom/txznet/comm/ui/TR/TN$T;->T3:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/txznet/comm/ui/Te/TN;->T3(Landroid/view/View;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Te:Lcom/txznet/comm/ui/TR/T3/TB;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TG:Lcom/txznet/comm/ui/TR/T3/T7;

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Te:Lcom/txznet/comm/ui/TR/T3/TB;

    :cond_2
    iput-boolean v3, p0, Lcom/txznet/comm/ui/Te/TN;->T:Z

    return-void

    :cond_3
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T3()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/txznet/comm/ui/Te/T/TN;->Te()Lcom/txznet/comm/ui/Te/T/TN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/TN;->TN()V

    invoke-static {}, Lcom/txznet/comm/ui/Te/T/TN;->Te()Lcom/txznet/comm/ui/Te/T/TN;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TN:Lcom/txznet/comm/ui/Te/T2;

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T3()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tn:Lcom/txznet/comm/ui/TR/T3/TO;

    new-instance v1, Lcom/txznet/comm/ui/TR/T/TQ;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lcom/txznet/comm/ui/TR/T/TQ;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/TR/T3/TO;->T(Lcom/txznet/comm/ui/TR/T/TQ;)Lcom/txznet/comm/ui/TR/TN$T;

    move-result-object v0

    iget-object v0, v0, Lcom/txznet/comm/ui/TR/TN$T;->T3:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/txznet/comm/ui/Te/TN;->T3(Landroid/view/View;)V

    goto :goto_1
.end method

.method public T3()V
    .locals 4

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UI2.0]start init view:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "RecordView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3/TO;

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->Tn:Lcom/txznet/comm/ui/TR/T3/TO;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->Tn:Lcom/txznet/comm/ui/TR/T3/TO;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3/TO;->T3()V

    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PoiListView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3/T7;

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TG:Lcom/txznet/comm/ui/TR/T3/T7;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TG:Lcom/txznet/comm/ui/TR/T3/T7;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3/T7;->T3()V

    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "AudioListView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3/T;

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TR:Lcom/txznet/comm/ui/TR/T3/T;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TR:Lcom/txznet/comm/ui/TR/T3/T;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3/T;->T3()V

    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "WeChatListView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3/TH;

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TW:Lcom/txznet/comm/ui/TR/T3/TH;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TW:Lcom/txznet/comm/ui/TR/T3/TH;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3/TH;->T3()V

    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ChatToSysView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3/Tw;

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TB:Lcom/txznet/comm/ui/TR/T3/Tw;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TB:Lcom/txznet/comm/ui/TR/T3/Tw;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3/Tw;->T3()V

    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ChatFromSysView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3/T2;

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TJ:Lcom/txznet/comm/ui/TR/T3/T2;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TJ:Lcom/txznet/comm/ui/TR/T3/T2;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3/T2;->T3()V

    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TtsListView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3/TL;

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TP:Lcom/txznet/comm/ui/TR/T3/TL;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TP:Lcom/txznet/comm/ui/TR/T3/TL;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3/TL;->T3()V

    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SimListView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3/TQ;

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->Tr:Lcom/txznet/comm/ui/TR/T3/TQ;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->Tr:Lcom/txznet/comm/ui/TR/T3/TQ;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3/TQ;->T3()V

    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CallListView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3/T3;

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->T7:Lcom/txznet/comm/ui/TR/T3/T3;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->T7:Lcom/txznet/comm/ui/TR/T3/T3;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3/T3;->T3()V

    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HelpListView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3/TR;

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TO:Lcom/txznet/comm/ui/TR/T3/TR;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TO:Lcom/txznet/comm/ui/TR/T3/TR;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3/TR;->T3()V

    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CinemaListView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3/TG;

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->To:Lcom/txznet/comm/ui/TR/T3/TG;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->To:Lcom/txznet/comm/ui/TR/T3/TG;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3/TG;->T3()V

    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ChatShockView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3/Te;

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TQ:Lcom/txznet/comm/ui/TR/T3/Te;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TQ:Lcom/txznet/comm/ui/TR/T3/Te;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3/Te;->T3()V

    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ChatWeatherView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3/Ty;

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TL:Lcom/txznet/comm/ui/TR/T3/Ty;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TL:Lcom/txznet/comm/ui/TR/T3/Ty;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3/Ty;->T3()V

    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "NoTtsQrcodeView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3/TP;

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TH:Lcom/txznet/comm/ui/TR/T3/TP;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->TH:Lcom/txznet/comm/ui/TR/T3/TP;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3/TP;->T3()V

    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ListTitleView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3/TJ;

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->T0:Lcom/txznet/comm/ui/TR/T3/TJ;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->T0:Lcom/txznet/comm/ui/TR/T3/TJ;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3/TJ;->T3()V

    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/ui/Te/TN;->TF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ChatMapView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3/TN;

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->Tc:Lcom/txznet/comm/ui/TR/T3/TN;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN;->Tc:Lcom/txznet/comm/ui/TR/T3/TN;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3/TN;->T3()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "[UI2.0]init view error!"

    invoke-static {v1}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public T3(I)V
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tn:Lcom/txznet/comm/ui/TR/T3/TO;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/txznet/comm/ui/Te/TN;->T5:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tn:Lcom/txznet/comm/ui/TR/T3/TO;

    invoke-virtual {v0, p1}, Lcom/txznet/comm/ui/TR/T3/TO;->T3(I)V

    :cond_0
    return-void
.end method

.method public T3(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tw:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TN:Lcom/txznet/comm/ui/Te/T2;

    invoke-virtual {v0, p1}, Lcom/txznet/comm/ui/Te/T2;->T(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/txznet/comm/ui/Te/TN$1;

    invoke-direct {v0, p0, p1}, Lcom/txznet/comm/ui/Te/TN$1;-><init>(Lcom/txznet/comm/ui/Te/TN;Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/txznet/comm/ui/TN;->T(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method

.method public T7()Lcom/txznet/comm/ui/TR/T3/TR;
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TO:Lcom/txznet/comm/ui/TR/T3/TR;

    return-object v0
.end method

.method public TB()Lcom/txznet/comm/ui/TR/T3/TL;
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TP:Lcom/txznet/comm/ui/TR/T3/TL;

    return-object v0
.end method

.method public TG()Lcom/txznet/comm/ui/TR/T3/T;
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TR:Lcom/txznet/comm/ui/TR/T3/T;

    return-object v0
.end method

.method public TH()Lcom/txznet/comm/ui/TR/T3/TP;
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TH:Lcom/txznet/comm/ui/TR/T3/TP;

    return-object v0
.end method

.method public TJ()Lcom/txznet/comm/ui/TR/T3/Tw;
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TB:Lcom/txznet/comm/ui/TR/T3/Tw;

    return-object v0
.end method

.method public TL()Lcom/txznet/comm/ui/TR/T3/Ty;
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TL:Lcom/txznet/comm/ui/TR/T3/Ty;

    return-object v0
.end method

.method public TN()V
    .locals 3

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tn:Lcom/txznet/comm/ui/TR/T3/TO;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T3()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tn:Lcom/txznet/comm/ui/TR/T3/TO;

    new-instance v1, Lcom/txznet/comm/ui/TR/T/TQ;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lcom/txznet/comm/ui/TR/T/TQ;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/TR/T3/TO;->T(Lcom/txznet/comm/ui/TR/T/TQ;)Lcom/txznet/comm/ui/TR/TN$T;

    move-result-object v0

    iget-object v0, v0, Lcom/txznet/comm/ui/TR/TN$T;->T3:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/txznet/comm/ui/Te/TN;->T3(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T3()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tn:Lcom/txznet/comm/ui/TR/T3/TO;

    new-instance v1, Lcom/txznet/comm/ui/TR/T/TQ;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lcom/txznet/comm/ui/TR/T/TQ;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/TR/T3/TO;->T(Lcom/txznet/comm/ui/TR/T/TQ;)Lcom/txznet/comm/ui/TR/TN$T;

    move-result-object v0

    iget-object v0, v0, Lcom/txznet/comm/ui/TR/TN$T;->T3:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/txznet/comm/ui/Te/TN;->T3(Landroid/view/View;)V

    goto :goto_0
.end method

.method public TO()Lcom/txznet/comm/ui/TR/T3/TG;
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->To:Lcom/txznet/comm/ui/TR/T3/TG;

    return-object v0
.end method

.method public TP()Lcom/txznet/comm/ui/TR/T3/TQ;
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tr:Lcom/txznet/comm/ui/TR/T3/TQ;

    return-object v0
.end method

.method public TQ()Lcom/txznet/comm/ui/TR/T3/TN;
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tc:Lcom/txznet/comm/ui/TR/T3/TN;

    return-object v0
.end method

.method public TR()Lcom/txznet/comm/ui/TR/T3/TH;
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TW:Lcom/txznet/comm/ui/TR/T3/TH;

    return-object v0
.end method

.method public TW()Lcom/txznet/comm/ui/TR/T3/T2;
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TJ:Lcom/txznet/comm/ui/TR/T3/T2;

    return-object v0
.end method

.method public Te()V
    .locals 3

    iget-object v2, p0, Lcom/txznet/comm/ui/Te/TN;->Tt:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/txznet/comm/ui/Te/TN;->Tt:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TR/T3;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TR/T3;->T2()V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/txznet/comm/ui/Te/TN;->Tt:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    goto :goto_0
.end method

.method public Tn()Lcom/txznet/comm/ui/TR/T3/T7;
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TG:Lcom/txznet/comm/ui/TR/T3/T7;

    return-object v0
.end method

.method public To()Lcom/txznet/comm/ui/TR/T3/Te;
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TQ:Lcom/txznet/comm/ui/TR/T3/Te;

    return-object v0
.end method

.method public Tr()Lcom/txznet/comm/ui/TR/T3/T3;
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->T7:Lcom/txznet/comm/ui/TR/T3/T3;

    return-object v0
.end method

.method public Tw()V
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tn:Lcom/txznet/comm/ui/TR/T3/TO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->Tn:Lcom/txznet/comm/ui/TR/T3/TO;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/TR/T3/TO;->T2()V

    :cond_0
    return-void
.end method

.method public Ty()Lcom/txznet/comm/ui/Te/T2;
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TN:Lcom/txznet/comm/ui/Te/T2;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/txznet/comm/ui/Te/T/Tw;->Te()Lcom/txznet/comm/ui/Te/T/Tw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/Tw;->TN()V

    invoke-static {}, Lcom/txznet/comm/ui/Te/T/Tw;->Te()Lcom/txznet/comm/ui/Te/T/Tw;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TN:Lcom/txznet/comm/ui/Te/T2;

    :cond_0
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN;->TN:Lcom/txznet/comm/ui/Te/T2;

    return-object v0
.end method
