.class public Lcom/car/launchercommon/systemuihider/SystemUiHiderBase;
.super Lcom/car/launchercommon/systemuihider/SystemUiHider;
.source "SystemUiHiderBase.java"


# instance fields
.field private mVisible:Z


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/car/launchercommon/systemuihider/SystemUiHider;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderBase;->mVisible:Z

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 3

    const/16 v2, 0x400

    const/4 v1, 0x0

    iget v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderBase;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    iget-object v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderBase;->mOnVisibilityChangeListener:Lcom/car/launchercommon/systemuihider/SystemUiHider$OnVisibilityChangeListener;

    invoke-interface {v0, v1}, Lcom/car/launchercommon/systemuihider/SystemUiHider$OnVisibilityChangeListener;->onVisibilityChange(Z)V

    iput-boolean v1, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderBase;->mVisible:Z

    return-void
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderBase;->mVisible:Z

    return v0
.end method

.method public setup()V
    .locals 2

    const/16 v1, 0x300

    iget v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderBase;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderBase;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    iget-object v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderBase;->mOnVisibilityChangeListener:Lcom/car/launchercommon/systemuihider/SystemUiHider$OnVisibilityChangeListener;

    invoke-interface {v0, v3}, Lcom/car/launchercommon/systemuihider/SystemUiHider$OnVisibilityChangeListener;->onVisibilityChange(Z)V

    iput-boolean v3, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderBase;->mVisible:Z

    return-void
.end method
