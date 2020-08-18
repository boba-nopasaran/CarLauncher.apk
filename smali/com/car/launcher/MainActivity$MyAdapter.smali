.class public Lcom/car/launcher/MainActivity$MyAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launcher/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/launcher/MainActivity;


# direct methods
.method public constructor <init>(Lcom/car/launcher/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launcher/MainActivity$MyAdapter;->this$0:Lcom/car/launcher/MainActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/car/launcher/MainActivity$MyAdapter;->this$0:Lcom/car/launcher/MainActivity;

    invoke-static {v0}, Lcom/car/launcher/MainActivity;->access$000(Lcom/car/launcher/MainActivity;)[Landroid/view/View;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/car/launcher/MainActivity$MyAdapter;->this$0:Lcom/car/launcher/MainActivity;

    invoke-static {v0}, Lcom/car/launcher/MainActivity;->access$000(Lcom/car/launcher/MainActivity;)[Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/car/launcher/MainActivity$MyAdapter;->this$0:Lcom/car/launcher/MainActivity;

    invoke-static {v1}, Lcom/car/launcher/MainActivity;->access$000(Lcom/car/launcher/MainActivity;)[Landroid/view/View;

    move-result-object v1

    array-length v1, v1

    rem-int v1, p2, v1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/car/launcher/MainActivity$MyAdapter;->this$0:Lcom/car/launcher/MainActivity;

    invoke-static {v0}, Lcom/car/launcher/MainActivity;->access$000(Lcom/car/launcher/MainActivity;)[Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/car/launcher/MainActivity$MyAdapter;->this$0:Lcom/car/launcher/MainActivity;

    invoke-static {v1}, Lcom/car/launcher/MainActivity;->access$000(Lcom/car/launcher/MainActivity;)[Landroid/view/View;

    move-result-object v1

    array-length v1, v1

    rem-int v1, p2, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
