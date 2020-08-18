.class public abstract Lcom/car/launchercommon/systemuihider/SystemUiHider;
.super Ljava/lang/Object;
.source "SystemUiHider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/launchercommon/systemuihider/SystemUiHider$OnVisibilityChangeListener;
    }
.end annotation


# static fields
.field public static final FLAG_FULLSCREEN:I = 0x2

.field public static final FLAG_HIDE_NAVIGATION:I = 0x6

.field public static final FLAG_LAYOUT_IN_SCREEN_OLDER_DEVICES:I = 0x1

.field private static sDummyListener:Lcom/car/launchercommon/systemuihider/SystemUiHider$OnVisibilityChangeListener;


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mAnchorView:Landroid/view/View;

.field protected mFlags:I

.field protected mOnVisibilityChangeListener:Lcom/car/launchercommon/systemuihider/SystemUiHider$OnVisibilityChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/car/launchercommon/systemuihider/SystemUiHider$1;

    invoke-direct {v0}, Lcom/car/launchercommon/systemuihider/SystemUiHider$1;-><init>()V

    sput-object v0, Lcom/car/launchercommon/systemuihider/SystemUiHider;->sDummyListener:Lcom/car/launchercommon/systemuihider/SystemUiHider$OnVisibilityChangeListener;

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/car/launchercommon/systemuihider/SystemUiHider;->sDummyListener:Lcom/car/launchercommon/systemuihider/SystemUiHider$OnVisibilityChangeListener;

    iput-object v0, p0, Lcom/car/launchercommon/systemuihider/SystemUiHider;->mOnVisibilityChangeListener:Lcom/car/launchercommon/systemuihider/SystemUiHider$OnVisibilityChangeListener;

    iput-object p1, p0, Lcom/car/launchercommon/systemuihider/SystemUiHider;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/car/launchercommon/systemuihider/SystemUiHider;->mAnchorView:Landroid/view/View;

    iput p3, p0, Lcom/car/launchercommon/systemuihider/SystemUiHider;->mFlags:I

    return-void
.end method

.method public static getInstance(Landroid/app/Activity;Landroid/view/View;I)Lcom/car/launchercommon/systemuihider/SystemUiHider;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;

    invoke-direct {v0, p0, p1, p2}, Lcom/car/launchercommon/systemuihider/SystemUiHiderHoneycomb;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/car/launchercommon/systemuihider/SystemUiHiderBase;

    invoke-direct {v0, p0, p1, p2}, Lcom/car/launchercommon/systemuihider/SystemUiHiderBase;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    goto :goto_0
.end method


# virtual methods
.method public abstract hide()V
.end method

.method public abstract isVisible()Z
.end method

.method public setOnVisibilityChangeListener(Lcom/car/launchercommon/systemuihider/SystemUiHider$OnVisibilityChangeListener;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/car/launchercommon/systemuihider/SystemUiHider;->sDummyListener:Lcom/car/launchercommon/systemuihider/SystemUiHider$OnVisibilityChangeListener;

    :cond_0
    iput-object p1, p0, Lcom/car/launchercommon/systemuihider/SystemUiHider;->mOnVisibilityChangeListener:Lcom/car/launchercommon/systemuihider/SystemUiHider$OnVisibilityChangeListener;

    return-void
.end method

.method public abstract setup()V
.end method

.method public abstract show()V
.end method

.method public toggle()V
    .locals 1

    invoke-virtual {p0}, Lcom/car/launchercommon/systemuihider/SystemUiHider;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/car/launchercommon/systemuihider/SystemUiHider;->hide()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/car/launchercommon/systemuihider/SystemUiHider;->show()V

    goto :goto_0
.end method
