.class public Lcom/txznet/comm/ui/T/T;
.super Landroid/widget/BaseAdapter;
.source "Proguard"


# instance fields
.field T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private T2:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private T3:Landroid/view/animation/Animation;

.field private TN:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {}, Lcom/txznet/comm/ui/TG/T2;->T()Landroid/view/animation/AnimationSet;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/comm/ui/T/T;->T3:Landroid/view/animation/Animation;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/ui/T/T;->T2:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/ui/T/T;->T:Ljava/util/List;

    return-void
.end method

.method private T(ILandroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/txznet/comm/ui/T/T;->TN:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/T/T;->TN:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/txznet/comm/ui/T/T;->T2:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/txznet/comm/ui/T/T;->T2:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/txznet/comm/ui/T/T;->T:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/txznet/comm/ui/T/T;->T3:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/txznet/comm/ui/T/T;->T2:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method


# virtual methods
.method public T()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/ui/T/T;->T:Ljava/util/List;

    invoke-virtual {p0}, Lcom/txznet/comm/ui/T/T;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/txznet/comm/ui/T/T;->T2:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public T(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/T/T;->T:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/txznet/comm/ui/T/T;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/T/T;->T:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-object v1, p0, Lcom/txznet/comm/ui/T/T;->T:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/txznet/comm/ui/T/T;->T(ILandroid/view/View;)V

    return-object v0
.end method
