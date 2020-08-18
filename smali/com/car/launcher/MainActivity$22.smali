.class Lcom/car/launcher/MainActivity$22;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/launcher/MainActivity;->updateSimCarProviderUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/launcher/MainActivity;


# direct methods
.method constructor <init>(Lcom/car/launcher/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launcher/MainActivity$22;->this$0:Lcom/car/launcher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/car/launcher/MainActivity$22;->this$0:Lcom/car/launcher/MainActivity;

    invoke-static {v0}, Lcom/car/launcher/MainActivity;->access$100(Lcom/car/launcher/MainActivity;)Lcom/car/launcher/MainActivity$SimType;

    move-result-object v0

    sget-object v1, Lcom/car/launcher/MainActivity$SimType;->CHE_LIAN:Lcom/car/launcher/MainActivity$SimType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/car/launcher/MainActivity$22;->this$0:Lcom/car/launcher/MainActivity;

    invoke-static {v0}, Lcom/car/launcher/StartsUtil;->startTianAn(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/launcher/MainActivity$22;->this$0:Lcom/car/launcher/MainActivity;

    invoke-static {v0}, Lcom/car/launcher/MainActivity;->access$100(Lcom/car/launcher/MainActivity;)Lcom/car/launcher/MainActivity$SimType;

    move-result-object v0

    sget-object v1, Lcom/car/launcher/MainActivity$SimType;->ECAR:Lcom/car/launcher/MainActivity$SimType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/car/launcher/MainActivity$22;->this$0:Lcom/car/launcher/MainActivity;

    invoke-static {v0}, Lcom/car/launcher/StartsUtil;->startEcar(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/car/launcher/MainActivity$22;->this$0:Lcom/car/launcher/MainActivity;

    invoke-static {v0}, Lcom/car/launcher/MainActivity;->access$100(Lcom/car/launcher/MainActivity;)Lcom/car/launcher/MainActivity$SimType;

    move-result-object v0

    sget-object v1, Lcom/car/launcher/MainActivity$SimType;->ECAR2:Lcom/car/launcher/MainActivity$SimType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/car/launcher/MainActivity$22;->this$0:Lcom/car/launcher/MainActivity;

    invoke-static {v0}, Lcom/car/launcher/StartsUtil;->startEcar2(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/car/launcher/MainActivity$22;->this$0:Lcom/car/launcher/MainActivity;

    const v1, 0x7f060002

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
