.class public Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;
.super Lcom/car/launchercommon/systemuihider/SystemUiHiderBase;
.source "SystemUiHiderHoneycomb.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private mHideFlags:I

.field private mShowFlags:I

.field private mSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

.field private mTestFlags:I

.field private mVisible:Z


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/car/launchercommon/systemuihider/SystemUiHiderBase;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    iput-boolean v1, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mVisible:Z

    new-instance v0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb$1;

    invoke-direct {v0, p0}, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb$1;-><init>(Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;)V

    iput-object v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mShowFlags:I

    iput v1, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mHideFlags:I

    iput v1, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mTestFlags:I

    iget v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mShowFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mShowFlags:I

    iget v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mHideFlags:I

    or-int/lit16 v0, v0, 0x404

    iput v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mHideFlags:I

    :cond_0
    iget v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mFlags:I

    and-int/lit8 v0, v0, 0x6

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mShowFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mShowFlags:I

    iget v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mHideFlags:I

    or-int/lit16 v0, v0, 0x202

    iput v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mHideFlags:I

    iget v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mTestFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mTestFlags:I

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;)I
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mTestFlags:I

    return v0
.end method

.method static synthetic access$102(Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mVisible:Z

    return p1
.end method

.method static synthetic access$200(Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;)I
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mShowFlags:I

    return v0
.end method


# virtual methods
.method public hide()V
    .locals 3

    iget-object v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mAnchorView:Landroid/view/View;

    iget v1, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mHideFlags:I

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    or-int/lit16 v1, v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mVisible:Z

    return v0
.end method

.method public setup()V
    .locals 2

    iget-object v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mAnchorView:Landroid/view/View;

    iget-object v1, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public show()V
    .locals 3

    iget-object v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mAnchorView:Landroid/view/View;

    iget v1, p0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;->mShowFlags:I

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
