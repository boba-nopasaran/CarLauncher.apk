.class public Lcom/car/launcher/MusicWidget;
.super Landroid/widget/LinearLayout;
.source "MusicWidget.java"

# interfaces
.implements Lcom/car/launchercommon/MusicTool$Callback;
.implements Lcom/car/launchercommon/CustomUI$CustomizableView;


# static fields
.field private static final TAG:Ljava/lang/String; = "LC.MusicWidget"


# instance fields
.field private mArtistView:Landroid/widget/TextView;

.field private mMusicTool:Lcom/car/launchercommon/MusicTool;

.field private mNextButton:Landroid/widget/ImageButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mPlayButton:Landroid/widget/ImageButton;

.field private mPlayListener:Landroid/view/View$OnClickListener;

.field private mPreviousButton:Landroid/widget/ImageButton;

.field private mPreviousListener:Landroid/view/View$OnClickListener;

.field private mRootView:Landroid/view/View;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/car/launcher/MusicWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/car/launcher/LauncherApplication;->getInstance()Lcom/car/launchercommon/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/car/launchercommon/BaseApplication;->getMusicTool()Lcom/car/launchercommon/MusicTool;

    move-result-object v1

    iput-object v1, p0, Lcom/car/launcher/MusicWidget;->mMusicTool:Lcom/car/launchercommon/MusicTool;

    new-instance v1, Lcom/car/launcher/MusicWidget$1;

    invoke-direct {v1, p0}, Lcom/car/launcher/MusicWidget$1;-><init>(Lcom/car/launcher/MusicWidget;)V

    iput-object v1, p0, Lcom/car/launcher/MusicWidget;->mPlayListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/car/launcher/MusicWidget$2;

    invoke-direct {v1, p0}, Lcom/car/launcher/MusicWidget$2;-><init>(Lcom/car/launcher/MusicWidget;)V

    iput-object v1, p0, Lcom/car/launcher/MusicWidget;->mNextListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/car/launcher/MusicWidget$3;

    invoke-direct {v1, p0}, Lcom/car/launcher/MusicWidget$3;-><init>(Lcom/car/launcher/MusicWidget;)V

    iput-object v1, p0, Lcom/car/launcher/MusicWidget;->mPreviousListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030008

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/car/launcher/MusicWidget;->mRootView:Landroid/view/View;

    :goto_0
    iput-object p1, p0, Lcom/car/launcher/MusicWidget;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/car/launcher/MusicWidget;->mRootView:Landroid/view/View;

    const v2, 0x7f09002c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/car/launcher/MusicWidget;->mPlayButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/car/launcher/MusicWidget;->mPlayButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/launcher/MusicWidget;->mPlayButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/car/launcher/MusicWidget;->mPlayListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v1, p0, Lcom/car/launcher/MusicWidget;->mRootView:Landroid/view/View;

    const v2, 0x7f09002d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/car/launcher/MusicWidget;->mNextButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/car/launcher/MusicWidget;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/car/launcher/MusicWidget;->mNextButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/car/launcher/MusicWidget;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v1, p0, Lcom/car/launcher/MusicWidget;->mRootView:Landroid/view/View;

    const v2, 0x7f09002b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/car/launcher/MusicWidget;->mPreviousButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/car/launcher/MusicWidget;->mPreviousButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/car/launcher/MusicWidget;->mPreviousButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/car/launcher/MusicWidget;->mPreviousListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v1, p0, Lcom/car/launcher/MusicWidget;->mRootView:Landroid/view/View;

    const v2, 0x7f090029

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/car/launcher/MusicWidget;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/car/launcher/MusicWidget;->mRootView:Landroid/view/View;

    const v2, 0x7f09002a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/car/launcher/MusicWidget;->mArtistView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/car/launcher/MusicWidget;->mTitleView:Landroid/widget/TextView;

    const v2, 0x7f060021

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/car/launcher/MusicWidget;->mMusicTool:Lcom/car/launchercommon/MusicTool;

    invoke-virtual {v1, p0}, Lcom/car/launchercommon/MusicTool;->setCallback(Lcom/car/launchercommon/MusicTool$Callback;)V

    return-void

    :cond_3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030007

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/car/launcher/MusicWidget;->mRootView:Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/car/launcher/MusicWidget;)Lcom/car/launchercommon/MusicTool;
    .locals 1

    iget-object v0, p0, Lcom/car/launcher/MusicWidget;->mMusicTool:Lcom/car/launchercommon/MusicTool;

    return-object v0
.end method

.method private refreshStatus()V
    .locals 5

    iget-object v3, p0, Lcom/car/launcher/MusicWidget;->mMusicTool:Lcom/car/launchercommon/MusicTool;

    invoke-virtual {v3}, Lcom/car/launchercommon/MusicTool;->isReady()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/car/launcher/MusicWidget;->mMusicTool:Lcom/car/launchercommon/MusicTool;

    invoke-virtual {v3}, Lcom/car/launchercommon/MusicTool;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/car/launcher/MusicWidget;->mPlayButton:Landroid/widget/ImageButton;

    const v4, 0x7f020028

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_1
    iget-object v3, p0, Lcom/car/launcher/MusicWidget;->mMusicTool:Lcom/car/launchercommon/MusicTool;

    invoke-virtual {v3}, Lcom/car/launchercommon/MusicTool;->getTrackName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/car/launcher/MusicWidget;->mMusicTool:Lcom/car/launchercommon/MusicTool;

    invoke-virtual {v3}, Lcom/car/launchercommon/MusicTool;->getArtistName()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/car/launcher/MusicWidget;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/car/launcher/MusicWidget;->mArtistView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/car/launcher/MusicWidget;->mArtistView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/car/launcher/MusicWidget;->mPlayButton:Landroid/widget/ImageButton;

    const v4, 0x7f020029

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/car/launcher/MusicWidget;->mTitleView:Landroid/widget/TextView;

    const v4, 0x7f060021

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/car/launcher/MusicWidget;->mArtistView:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/car/launcher/MusicWidget;->mArtistView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    invoke-direct {p0}, Lcom/car/launcher/MusicWidget;->refreshStatus()V

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onReady()V
    .locals 0

    invoke-direct {p0}, Lcom/car/launcher/MusicWidget;->refreshStatus()V

    return-void
.end method

.method public onStateChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/car/launcher/MusicWidget;->refreshStatus()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/car/launcher/MusicWidget;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/car/launcher/MusicWidget;->mArtistView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
