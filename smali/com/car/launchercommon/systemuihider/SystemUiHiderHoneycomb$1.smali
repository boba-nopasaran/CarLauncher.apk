.class Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb$1;
.super Ljava/lang/Object;
.source "SystemUiHiderHoneycomb.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb$1;->this$0:Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 6

    const/16 v5, 0x10

    const/4 v4, 0x1

    const/16 v3, 0x400

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb$1;->this$0:Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;

    invoke-static {v0}, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->access$000(Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;)I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v5, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb$1;->this$0:Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;

    iget-object v0, v0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    iget-object v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb$1;->this$0:Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;

    iget-object v0, v0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    iget-object v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb$1;->this$0:Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;

    iget-object v0, v0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mOnVisibilityChangeListener:Lcom/car/launchercommon/systemuihider/SystemUiHider$OnVisibilityChangeListener;

    invoke-interface {v0, v2}, Lcom/car/launchercommon/systemuihider/SystemUiHider$OnVisibilityChangeListener;->onVisibilityChange(Z)V

    iget-object v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb$1;->this$0:Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;

    invoke-static {v0, v2}, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->access$102(Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;Z)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb$1;->this$0:Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;

    iget-object v0, v0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mAnchorView:Landroid/view/View;

    iget-object v1, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb$1;->this$0:Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;

    invoke-static {v1}, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->access$200(Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v5, :cond_2

    iget-object v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb$1;->this$0:Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;

    iget-object v0, v0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    iget-object v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb$1;->this$0:Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;

    iget-object v0, v0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_2
    iget-object v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb$1;->this$0:Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;

    iget-object v0, v0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mOnVisibilityChangeListener:Lcom/car/launchercommon/systemuihider/SystemUiHider$OnVisibilityChangeListener;

    invoke-interface {v0, v4}, Lcom/car/launchercommon/systemuihider/SystemUiHider$OnVisibilityChangeListener;->onVisibilityChange(Z)V

    iget-object v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb$1;->this$0:Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;

    invoke-static {v0, v4}, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->access$102(Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;Z)Z

    goto :goto_0
.end method
