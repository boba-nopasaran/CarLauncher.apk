.class public abstract Lcom/car/launchercommon/TwoWayAbsListView;
.super Lcom/car/launchercommon/TwoWayAdapterView;
.source "TwoWayAbsListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/launchercommon/TwoWayAbsListView$1;,
        Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;,
        Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;,
        Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;,
        Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;,
        Lcom/car/launchercommon/TwoWayAbsListView$RecyclerListener;,
        Lcom/car/launchercommon/TwoWayAbsListView$LayoutParams;,
        Lcom/car/launchercommon/TwoWayAbsListView$CheckForTap;,
        Lcom/car/launchercommon/TwoWayAbsListView$CheckForKeyLongPress;,
        Lcom/car/launchercommon/TwoWayAbsListView$CheckForLongPress;,
        Lcom/car/launchercommon/TwoWayAbsListView$PerformClick;,
        Lcom/car/launchercommon/TwoWayAbsListView$WindowRunnnable;,
        Lcom/car/launchercommon/TwoWayAbsListView$SavedState;,
        Lcom/car/launchercommon/TwoWayAbsListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/car/launchercommon/TwoWayAdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field static final SCROLL_HORIZONTAL:I = 0x1

.field static final SCROLL_VERTICAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TwoWayAbsListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1


# instance fields
.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field private mCacheColorHint:I

.field mCachingStarted:Z

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field mDataSetObserver:Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/car/launchercommon/TwoWayAdapterView",
            "<",
            "Landroid/widget/ListAdapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field private mDensityScale:F

.field mDrawSelectorOnTop:Z

.field private mFlingProfilingStarted:Z

.field private mIsChildViewEnabled:Z

.field final mIsScrap:[Z

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionPosition:I

.field mMotionX:I

.field mMotionY:I

.field private mOnScrollListener:Lcom/car/launchercommon/TwoWayAbsListView$OnScrollListener;

.field private mPendingCheckForKeyLongPress:Lcom/car/launchercommon/TwoWayAbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Lcom/car/launchercommon/TwoWayAbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPerformClick:Lcom/car/launchercommon/TwoWayAbsListView$PerformClick;

.field protected mPortraitOrientation:Z

.field final mRecycler:Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;

.field mResurrectToPosition:I

.field mScrollDown:Landroid/view/View;

.field mScrollLeft:Landroid/view/View;

.field private mScrollProfilingStarted:Z

.field mScrollRight:Landroid/view/View;

.field mScrollUp:Landroid/view/View;

.field protected mScrollVertically:Z

.field private mScrollVerticallyLandscape:Z

.field private mScrollVerticallyPortrait:Z

.field mScrollingCacheEnabled:Z

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTouchFrame:Landroid/graphics/Rect;

.field protected mTouchHandler:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

.field mTouchMode:I

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/car/launchercommon/TwoWayAdapterView;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mLayoutMode:I

    iput-boolean v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mDrawSelectorOnTop:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;

    invoke-direct {v0, p0}, Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;-><init>(Lcom/car/launchercommon/TwoWayAbsListView;)V

    iput-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mRecycler:Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;

    iput v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectionLeftPadding:I

    iput v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectionTopPadding:I

    iput v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectionRightPadding:I

    iput v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectionBottomPadding:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iput v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mWidthMeasureSpec:I

    iput v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    iput v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectedTop:I

    iput-boolean v3, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSmoothScrollbarEnabled:Z

    iput v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mResurrectToPosition:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    iput v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mLastTouchMode:I

    iput-boolean v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollProfilingStarted:Z

    iput-boolean v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mFlingProfilingStarted:Z

    iput v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mLastScrollState:I

    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mIsScrap:[Z

    iput v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mActivePointerId:I

    invoke-direct {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->initAbsListView()V

    invoke-direct {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->setupScrollInfo()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Lcom/car/launchercommon/TwoWayAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    const/4 v11, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/car/launchercommon/TwoWayAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v10, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mLayoutMode:I

    iput-boolean v10, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mDrawSelectorOnTop:Z

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    new-instance v8, Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;

    invoke-direct {v8, p0}, Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;-><init>(Lcom/car/launchercommon/TwoWayAbsListView;)V

    iput-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mRecycler:Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;

    iput v10, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectionLeftPadding:I

    iput v10, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectionTopPadding:I

    iput v10, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectionRightPadding:I

    iput v10, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectionBottomPadding:I

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iput v10, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mWidthMeasureSpec:I

    iput v11, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    iput v10, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectedTop:I

    iput-boolean v9, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSmoothScrollbarEnabled:Z

    iput v11, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mResurrectToPosition:I

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    iput v11, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mLastTouchMode:I

    iput-boolean v10, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollProfilingStarted:Z

    iput-boolean v10, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mFlingProfilingStarted:Z

    iput v10, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mLastScrollState:I

    new-array v8, v9, [Z

    iput-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mIsScrap:[Z

    iput v11, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mActivePointerId:I

    invoke-direct {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->initAbsListView()V

    sget-object v8, Lcom/car/launchercommon/R$styleable;->TwoWayAbsListView:[I

    invoke-virtual {p1, p2, v8, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v8, Lcom/car/launchercommon/R$styleable;->TwoWayAbsListView_listSelector:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/car/launchercommon/TwoWayAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    sget v8, Lcom/car/launchercommon/R$styleable;->TwoWayAbsListView_drawSelectorOnTop:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mDrawSelectorOnTop:Z

    sget v8, Lcom/car/launchercommon/R$styleable;->TwoWayAbsListView_stackFromBottom:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/car/launchercommon/TwoWayAbsListView;->setStackFromBottom(Z)V

    sget v8, Lcom/car/launchercommon/R$styleable;->TwoWayAbsListView_scrollingCache:I

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/car/launchercommon/TwoWayAbsListView;->setScrollingCacheEnabled(Z)V

    sget v8, Lcom/car/launchercommon/R$styleable;->TwoWayAbsListView_transcriptMode:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/car/launchercommon/TwoWayAbsListView;->setTranscriptMode(I)V

    sget v8, Lcom/car/launchercommon/R$styleable;->TwoWayAbsListView_cacheColorHint:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->setCacheColorHint(I)V

    sget v8, Lcom/car/launchercommon/R$styleable;->TwoWayAbsListView_smoothScrollbar:I

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/car/launchercommon/TwoWayAbsListView;->setSmoothScrollbarEnabled(Z)V

    sget v8, Lcom/car/launchercommon/R$styleable;->TwoWayAbsListView_scrollDirectionPortrait:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-nez v3, :cond_1

    move v8, v9

    :goto_0
    iput-boolean v8, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollVerticallyPortrait:Z

    sget v8, Lcom/car/launchercommon/R$styleable;->TwoWayAbsListView_scrollDirectionLandscape:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    iput-boolean v9, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollVerticallyLandscape:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->setupScrollInfo()V

    return-void

    :cond_1
    move v8, v10

    goto :goto_0

    :cond_2
    move v9, v10

    goto :goto_1
.end method

.method static synthetic access$1200(Lcom/car/launchercommon/TwoWayAbsListView;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/car/launchercommon/TwoWayAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/car/launchercommon/TwoWayAbsListView;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/car/launchercommon/TwoWayAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/car/launchercommon/TwoWayAbsListView;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/car/launchercommon/TwoWayAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/car/launchercommon/TwoWayAbsListView;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/car/launchercommon/TwoWayAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/car/launchercommon/TwoWayAbsListView;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/car/launchercommon/TwoWayAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/car/launchercommon/TwoWayAbsListView;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/car/launchercommon/TwoWayAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/car/launchercommon/TwoWayAbsListView;)I
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mLastTouchMode:I

    return v0
.end method

.method static synthetic access$1802(Lcom/car/launchercommon/TwoWayAbsListView;I)I
    .locals 0

    iput p1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mLastTouchMode:I

    return p1
.end method

.method static synthetic access$1900(Lcom/car/launchercommon/TwoWayAbsListView;)I
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchSlop:I

    return v0
.end method

.method static synthetic access$200(Lcom/car/launchercommon/TwoWayAbsListView;)I
    .locals 1

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/car/launchercommon/TwoWayAbsListView;)I
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mLastScrollState:I

    return v0
.end method

.method static synthetic access$2002(Lcom/car/launchercommon/TwoWayAbsListView;I)I
    .locals 0

    iput p1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mLastScrollState:I

    return p1
.end method

.method static synthetic access$2100(Lcom/car/launchercommon/TwoWayAbsListView;)Lcom/car/launchercommon/TwoWayAbsListView$OnScrollListener;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mOnScrollListener:Lcom/car/launchercommon/TwoWayAbsListView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/car/launchercommon/TwoWayAbsListView;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/car/launchercommon/TwoWayAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/car/launchercommon/TwoWayAbsListView;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/car/launchercommon/TwoWayAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/car/launchercommon/TwoWayAbsListView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/car/launchercommon/TwoWayAbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/car/launchercommon/TwoWayAbsListView;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/car/launchercommon/TwoWayAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/car/launchercommon/TwoWayAbsListView;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/car/launchercommon/TwoWayAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/car/launchercommon/TwoWayAbsListView;)Landroid/view/VelocityTracker;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/car/launchercommon/TwoWayAbsListView;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/car/launchercommon/TwoWayAbsListView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/car/launchercommon/TwoWayAbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/car/launchercommon/TwoWayAbsListView;)Lcom/car/launchercommon/TwoWayAbsListView$PerformClick;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mPerformClick:Lcom/car/launchercommon/TwoWayAbsListView$PerformClick;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/car/launchercommon/TwoWayAbsListView;Lcom/car/launchercommon/TwoWayAbsListView$PerformClick;)Lcom/car/launchercommon/TwoWayAbsListView$PerformClick;
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mPerformClick:Lcom/car/launchercommon/TwoWayAbsListView$PerformClick;

    return-object p1
.end method

.method static synthetic access$300(Lcom/car/launchercommon/TwoWayAbsListView;)I
    .locals 1

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/car/launchercommon/TwoWayAbsListView;)I
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$3302(Lcom/car/launchercommon/TwoWayAbsListView;I)I
    .locals 0

    iput p1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mActivePointerId:I

    return p1
.end method

.method static synthetic access$3400(Lcom/car/launchercommon/TwoWayAbsListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->initOrResetVelocityTracker()V

    return-void
.end method

.method static synthetic access$3500(Lcom/car/launchercommon/TwoWayAbsListView;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/car/launchercommon/TwoWayAbsListView;->detachViewsFromParent(II)V

    return-void
.end method

.method static synthetic access$3600(Lcom/car/launchercommon/TwoWayAbsListView;)I
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic access$3800(Lcom/car/launchercommon/TwoWayAbsListView;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/car/launchercommon/TwoWayAbsListView;->detachViewsFromParent(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/car/launchercommon/TwoWayAbsListView;Landroid/view/View;IJ)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/car/launchercommon/TwoWayAbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/car/launchercommon/TwoWayAbsListView;)Lcom/car/launchercommon/TwoWayAbsListView$CheckForLongPress;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mPendingCheckForLongPress:Lcom/car/launchercommon/TwoWayAbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$602(Lcom/car/launchercommon/TwoWayAbsListView;Lcom/car/launchercommon/TwoWayAbsListView$CheckForLongPress;)Lcom/car/launchercommon/TwoWayAbsListView$CheckForLongPress;
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mPendingCheckForLongPress:Lcom/car/launchercommon/TwoWayAbsListView$CheckForLongPress;

    return-object p1
.end method

.method private checkScrap(Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    const-string v4, "Consistency"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TwoWayAbsListView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has a view in its scrap heap still attached to a parent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0, v3}, Lcom/car/launchercommon/TwoWayAbsListView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_3

    const/4 v2, 0x0

    const-string v4, "Consistency"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TwoWayAbsListView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has a view in its scrap heap that is also a direct child: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8

    sparse-switch p2, :sswitch_data_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    :goto_0
    sub-int v2, v0, v4

    sub-int v3, v1, v5

    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    :sswitch_1
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    iget v1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    goto :goto_0

    :sswitch_3
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    iget v5, p0, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :sswitch_4
    iget v6, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private initAbsListView()V
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/car/launchercommon/TwoWayAbsListView;->setClickable(Z)V

    invoke-virtual {p0, v2}, Lcom/car/launchercommon/TwoWayAbsListView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->setWillNotDraw(Z)V

    invoke-virtual {p0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/car/launchercommon/TwoWayAbsListView;->setScrollingCacheEnabled(Z)V

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mMaximumVelocity:I

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mDensityScale:F

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mPortraitOrientation:Z

    iput-boolean v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollVertically:Z

    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private orientationChanged()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mPortraitOrientation:Z

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mPortraitOrientation:Z

    iget-boolean v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mPortraitOrientation:Z

    if-eq v1, v2, :cond_2

    move v0, v3

    :goto_1
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->setupScrollInfo()V

    iget-object v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mRecycler:Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v2}, Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;->scrapActiveViews()V

    :cond_0
    return v0

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private performLongPress(Landroid/view/View;IJ)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mOnItemLongClickListener:Lcom/car/launchercommon/TwoWayAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mOnItemLongClickListener:Lcom/car/launchercommon/TwoWayAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/car/launchercommon/TwoWayAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/car/launchercommon/TwoWayAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    :cond_0
    if-nez v6, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/car/launchercommon/TwoWayAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-super {p0, p0}, Lcom/car/launchercommon/TwoWayAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    :cond_1
    if-eqz v6, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/car/launchercommon/TwoWayAbsListView;->performHapticFeedback(I)Z

    :cond_2
    return v6
.end method

.method private positionSelector(IIII)V
    .locals 5

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private setupScrollInfo()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mPortraitOrientation:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollVerticallyPortrait:Z

    :goto_0
    iput-boolean v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollVertically:Z

    iget-boolean v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollVertically:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    invoke-direct {v0, p0}, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;-><init>(Lcom/car/launchercommon/TwoWayAbsListView;)V

    iput-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchHandler:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    invoke-virtual {p0, v2}, Lcom/car/launchercommon/TwoWayAbsListView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/car/launchercommon/TwoWayAbsListView;->setIsVertical(Z)V

    :goto_1
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollVerticallyLandscape:Z

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    invoke-direct {v0, p0}, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;-><init>(Lcom/car/launchercommon/TwoWayAbsListView;)V

    iput-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchHandler:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    invoke-virtual {p0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/car/launchercommon/TwoWayAbsListView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->setIsVertical(Z)V

    goto :goto_1
.end method

.method private useDefaultSelector()V
    .locals 2

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/car/launchercommon/TwoWayAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {p0, v4}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected checkConsistency(I)Z
    .locals 10

    const/4 v4, 0x1

    const/4 v1, 0x1

    iget-object v7, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mRecycler:Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;

    invoke-static {v7}, Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;->access$900(Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;)[Landroid/view/View;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v7, v0, v3

    if-eqz v7, :cond_0

    const/4 v4, 0x0

    const-string v7, "Consistency"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AbsListView "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has a view in its active recycler: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mRecycler:Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;

    invoke-static {v7}, Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;->access$1000(Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/car/launchercommon/TwoWayAbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v4, 0x0

    :cond_2
    iget-object v7, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mRecycler:Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;

    invoke-static {v7}, Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;->access$1100(Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;)[Ljava/util/ArrayList;

    move-result-object v6

    array-length v2, v6

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v7, v6, v3

    invoke-direct {p0, v7}, Lcom/car/launchercommon/TwoWayAbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v4, 0x0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return v4
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/car/launchercommon/TwoWayAbsListView$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    iget-boolean v7, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollVertically:Z

    if-nez v7, :cond_3

    iget-boolean v7, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    mul-int/lit8 v1, v0, 0x64

    invoke-virtual {p0, v6}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    if-lez v5, :cond_0

    mul-int/lit8 v6, v2, 0x64

    div-int/2addr v6, v5

    add-int/2addr v1, v6

    :cond_0
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getWidth()I

    move-result v6

    sub-int v6, v3, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v5

    sub-int/2addr v1, v6

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v6

    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 11

    const/4 v7, 0x0

    iget v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v0

    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    iget-boolean v8, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollVertically:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    invoke-virtual {p0, v7}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    if-lez v6, :cond_0

    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v4, 0x64

    div-int/2addr v9, v6

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mItemCount:I

    if-nez v2, :cond_2

    const/4 v3, 0x0

    :goto_1
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v3

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_0

    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    div-int/lit8 v7, v0, 0x2

    add-int v3, v2, v7

    goto :goto_1
.end method

.method protected computeHorizontalScrollRange()I
    .locals 3

    iget-boolean v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollVertically:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mItemCount:I

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    iget-boolean v7, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollVertically:Z

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    mul-int/lit8 v2, v1, 0x64

    invoke-virtual {p0, v6}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_0

    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    sub-int/2addr v2, v6

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v6

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    const/4 v7, 0x0

    iget v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v0

    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    iget-boolean v8, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollVertically:Z

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    invoke-virtual {p0, v7}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_0

    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v5, 0x64

    div-int/2addr v9, v3

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getScrollY()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mItemCount:I

    if-nez v2, :cond_2

    const/4 v4, 0x0

    :goto_1
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v4

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_0

    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    move v4, v1

    goto :goto_1

    :cond_3
    div-int/lit8 v7, v0, 0x2

    add-int v4, v2, v7

    goto :goto_1
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    iget-boolean v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollVertically:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mItemCount:I

    goto :goto_0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    new-instance v0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/car/launchercommon/TwoWayAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mDrawSelectorOnTop:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/car/launchercommon/TwoWayAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/car/launchercommon/TwoWayAdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/car/launchercommon/TwoWayAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Lcom/car/launchercommon/TwoWayAdapterView;->drawableStateChanged()V

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method findClosestMotionRow(I)I
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/car/launchercommon/TwoWayAbsListView;->findMotionRowX(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method findClosestMotionRowY(I)I
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/car/launchercommon/TwoWayAbsListView;->findMotionRowY(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method abstract findMotionRowX(I)I
.end method

.method abstract findMotionRowY(I)I
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/car/launchercommon/TwoWayAbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/car/launchercommon/TwoWayAbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/car/launchercommon/TwoWayAbsListView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/car/launchercommon/TwoWayAbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/car/launchercommon/TwoWayAbsListView$LayoutParams;
    .locals 2

    new-instance v0, Lcom/car/launchercommon/TwoWayAbsListView$LayoutParams;

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/car/launchercommon/TwoWayAbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 8

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v1

    invoke-super {p0}, Lcom/car/launchercommon/TwoWayAdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    if-eqz v1, :cond_0

    iget-boolean v6, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollVertically:Z

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v6, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    add-int/2addr v6, v1

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getVerticalFadingEdgeLength()I

    move-result v6

    int-to-float v3, v6

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getPaddingBottom()I

    move-result v5

    sub-int v6, v4, v5

    if-le v0, v6, :cond_0

    sub-int v6, v0, v4

    add-int/2addr v6, v5

    int-to-float v6, v6

    div-float v2, v6, v3

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mCacheColorHint:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0, p1}, Lcom/car/launchercommon/TwoWayAbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/car/launchercommon/TwoWayAdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 6

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v0

    invoke-super {p0}, Lcom/car/launchercommon/TwoWayAdapterView;->getLeftFadingEdgeStrength()F

    move-result v1

    if-eqz v0, :cond_0

    iget-boolean v5, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollVertically:Z

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v5, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    if-lez v5, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v5

    int-to-float v2, v5

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getPaddingLeft()I

    move-result v4

    if-ge v3, v4, :cond_0

    sub-int v5, v3, v4

    neg-int v5, v5

    int-to-float v5, v5

    div-float v1, v5, v2

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 8

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v0

    invoke-super {p0}, Lcom/car/launchercommon/TwoWayAdapterView;->getRightFadingEdgeStrength()F

    move-result v1

    if-eqz v0, :cond_0

    iget-boolean v6, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollVertically:Z

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v6, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v6

    int-to-float v2, v6

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getPaddingRight()I

    move-result v3

    sub-int v6, v5, v3

    if-le v4, v6, :cond_0

    sub-int v6, v4, v5

    add-int/2addr v6, v3

    int-to-float v6, v6

    div-float v1, v6, v2

    goto :goto_0
.end method

.method public getScrollDirectionLandscape()I
    .locals 1

    iget-boolean v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollVerticallyLandscape:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getScrollDirectionPortrait()I
    .locals 1

    iget-boolean v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollVerticallyPortrait:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectedPosition:I

    iget v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mCacheColorHint:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 6

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v0

    invoke-super {p0}, Lcom/car/launchercommon/TwoWayAdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    if-eqz v0, :cond_0

    iget-boolean v5, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollVertically:Z

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v5, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    if-lez v5, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v2, v5

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getPaddingTop()I

    move-result v3

    if-ge v4, v3, :cond_0

    sub-int v5, v4, v3

    neg-int v5, v5

    int-to-float v5, v5

    div-float v1, v5, v2

    goto :goto_0
.end method

.method public getTranscriptMode()I
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mTranscriptMode:I

    return v0
.end method

.method protected handleDataChanged()V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v8, 0x5

    const/4 v4, 0x1

    const/4 v7, 0x0

    iget v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mItemCount:I

    if-lez v0, :cond_b

    iget-boolean v5, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mNeedSync:Z

    if-eqz v5, :cond_3

    iput-boolean v7, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mNeedSync:Z

    iget v5, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mTranscriptMode:I

    if-eq v5, v10, :cond_0

    iget v5, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mTranscriptMode:I

    if-ne v5, v4, :cond_2

    iget v5, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mOldItemCount:I

    if-lt v5, v6, :cond_2

    :cond_0
    const/4 v4, 0x3

    iput v4, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mLayoutMode:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v5, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSyncMode:I

    packed-switch v5, :pswitch_data_0

    :cond_3
    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->isInTouchMode()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getSelectedItemPosition()I

    move-result v1

    if-lt v1, v0, :cond_4

    add-int/lit8 v1, v0, -0x1

    :cond_4
    if-gez v1, :cond_5

    const/4 v1, 0x0

    :cond_5
    invoke-virtual {p0, v1, v4}, Lcom/car/launchercommon/TwoWayAbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    if-ltz v2, :cond_9

    invoke-virtual {p0, v2}, Lcom/car/launchercommon/TwoWayAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_6

    iput v8, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mLayoutMode:I

    iget v4, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSyncPosition:I

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v5, v0, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSyncPosition:I

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->findSyncPosition()I

    move-result v1

    if-ltz v1, :cond_3

    invoke-virtual {p0, v1, v4}, Lcom/car/launchercommon/TwoWayAbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    if-ne v2, v1, :cond_3

    iput v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSyncPosition:I

    iget-boolean v4, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mIsVertical:Z

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getHeight()I

    move-result v3

    :goto_1
    iget-wide v4, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSyncSize:J

    int-to-long v6, v3

    cmp-long v4, v4, v6

    if-nez v4, :cond_8

    iput v8, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mLayoutMode:I

    :goto_2
    invoke-virtual {p0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getWidth()I

    move-result v3

    goto :goto_1

    :cond_8
    iput v10, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mLayoutMode:I

    goto :goto_2

    :pswitch_1
    iput v8, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mLayoutMode:I

    iget v4, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSyncPosition:I

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v5, v0, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSyncPosition:I

    goto :goto_0

    :cond_9
    invoke-virtual {p0, v1, v7}, Lcom/car/launchercommon/TwoWayAbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    if-ltz v2, :cond_b

    invoke-virtual {p0, v2}, Lcom/car/launchercommon/TwoWayAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    :cond_a
    iget v5, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mResurrectToPosition:I

    if-gez v5, :cond_1

    :cond_b
    iget-boolean v5, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_c

    const/4 v4, 0x3

    :cond_c
    iput v4, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mLayoutMode:I

    iput v9, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectedPosition:I

    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectedRowId:J

    iput v9, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mNextSelectedPosition:I

    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mNextSelectedRowId:J

    iput-boolean v7, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mNeedSync:Z

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->checkSelectionChanged()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method hideSelector()V
    .locals 3

    const/4 v2, -0x1

    iget v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectedPosition:I

    iput v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mResurrectToPosition:I

    :cond_0
    iget v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mNextSelectedPosition:I

    iget v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mNextSelectedPosition:I

    iput v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mResurrectToPosition:I

    :cond_1
    invoke-virtual {p0, v2}, Lcom/car/launchercommon/TwoWayAbsListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v2}, Lcom/car/launchercommon/TwoWayAbsListView;->setNextSelectedPositionInt(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectedTop:I

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mDataChanged:Z

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->rememberSyncState()V

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->requestLayout()V

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->invalidate()V

    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mOnScrollListener:Lcom/car/launchercommon/TwoWayAbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mOnScrollListener:Lcom/car/launchercommon/TwoWayAbsListView$OnScrollListener;

    iget v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/car/launchercommon/TwoWayAbsListView$OnScrollListener;->onScroll(Lcom/car/launchercommon/TwoWayAbsListView;III)V

    :cond_0
    return-void
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mStackFromBottom:Z

    return v0
.end method

.method keyPressed()V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectedPosition:I

    iget v6, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    :cond_3
    invoke-virtual {p0, v7}, Lcom/car/launchercommon/TwoWayAbsListView;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->isLongClickable()Z

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    if-eqz v1, :cond_6

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v5, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mDataChanged:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mPendingCheckForKeyLongPress:Lcom/car/launchercommon/TwoWayAbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_5

    new-instance v5, Lcom/car/launchercommon/TwoWayAbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/car/launchercommon/TwoWayAbsListView$CheckForKeyLongPress;-><init>(Lcom/car/launchercommon/TwoWayAbsListView;Lcom/car/launchercommon/TwoWayAbsListView$1;)V

    iput-object v5, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mPendingCheckForKeyLongPress:Lcom/car/launchercommon/TwoWayAbsListView$CheckForKeyLongPress;

    :cond_5
    iget-object v5, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mPendingCheckForKeyLongPress:Lcom/car/launchercommon/TwoWayAbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Lcom/car/launchercommon/TwoWayAbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mPendingCheckForKeyLongPress:Lcom/car/launchercommon/TwoWayAbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/car/launchercommon/TwoWayAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_6
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1
.end method

.method protected layoutChildren()V
    .locals 0

    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    aput-boolean v3, p2, v3

    iget-object v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mRecycler:Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mRecycler:Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v2, v1}, Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    iget v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v2, 0x1

    aput-boolean v2, p2, v3

    invoke-virtual {v0}, Landroid/view/View;->onFinishTemporaryDetach()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/car/launchercommon/TwoWayAdapterView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6

    iget-boolean v4, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    invoke-super {p0, p1}, Lcom/car/launchercommon/TwoWayAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    sget-object v4, Lcom/car/launchercommon/TwoWayAbsListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Lcom/car/launchercommon/TwoWayAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    const/4 v0, -0x1

    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    :goto_1
    if-ltz v2, :cond_2

    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    move v0, v2

    :cond_2
    if-ltz v0, :cond_0

    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/car/launchercommon/TwoWayAdapterView;->onDetachedFromWindow()V

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mRecycler:Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;->clear()V

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/car/launchercommon/TwoWayAdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->resurrectSelection()Z

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchHandler:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0, p1}, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v6, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/car/launchercommon/TwoWayAdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    :sswitch_0
    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectedPosition:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectedPosition:I

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectedPosition:I

    iget v3, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectedPosition:I

    iget-wide v4, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/car/launchercommon/TwoWayAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    :cond_2
    invoke-virtual {p0, v6}, Lcom/car/launchercommon/TwoWayAbsListView;->setPressed(Z)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-direct {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->orientationChanged()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->setupScrollInfo()V

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/car/launchercommon/TwoWayAdapterView;->onLayout(ZIIII)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mInLayout:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mRecycler:Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v2}, Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;->markChildrenDirty()V

    :cond_2
    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->layoutChildren()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mInLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-direct {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->orientationChanged()Z

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->useDefaultSelector()V

    :cond_0
    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectionLeftPadding:I

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectionTopPadding:I

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectionRightPadding:I

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectionBottomPadding:I

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    move-object v0, p1

    check-cast v0, Lcom/car/launchercommon/TwoWayAbsListView$SavedState;

    invoke-virtual {v0}, Lcom/car/launchercommon/TwoWayAbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/car/launchercommon/TwoWayAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iput-boolean v4, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mDataChanged:Z

    iget v1, v0, Lcom/car/launchercommon/TwoWayAbsListView$SavedState;->height:I

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSyncSize:J

    iget-wide v2, v0, Lcom/car/launchercommon/TwoWayAbsListView$SavedState;->selectedId:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_1

    iput-boolean v4, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mNeedSync:Z

    iget-wide v2, v0, Lcom/car/launchercommon/TwoWayAbsListView$SavedState;->selectedId:J

    iput-wide v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSyncRowId:J

    iget v1, v0, Lcom/car/launchercommon/TwoWayAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSyncPosition:I

    iget v1, v0, Lcom/car/launchercommon/TwoWayAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSpecificTop:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSyncMode:I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->requestLayout()V

    return-void

    :cond_1
    iget-wide v2, v0, Lcom/car/launchercommon/TwoWayAbsListView$SavedState;->firstId:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_0

    invoke-virtual {p0, v5}, Lcom/car/launchercommon/TwoWayAbsListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v5}, Lcom/car/launchercommon/TwoWayAbsListView;->setNextSelectedPositionInt(I)V

    iput-boolean v4, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mNeedSync:Z

    iget-wide v2, v0, Lcom/car/launchercommon/TwoWayAbsListView$SavedState;->firstId:J

    iput-wide v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSyncRowId:J

    iget v1, v0, Lcom/car/launchercommon/TwoWayAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSyncPosition:I

    iget v1, v0, Lcom/car/launchercommon/TwoWayAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSpecificTop:I

    iput v4, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSyncMode:I

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 12

    const-wide/16 v10, -0x1

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/car/launchercommon/TwoWayAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v4

    new-instance v1, Lcom/car/launchercommon/TwoWayAbsListView$SavedState;

    invoke-direct {v1, v4}, Lcom/car/launchercommon/TwoWayAbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/car/launchercommon/TwoWayAbsListView$SavedState;->selectedId:J

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getHeight()I

    move-result v7

    iput v7, v1, Lcom/car/launchercommon/TwoWayAbsListView$SavedState;->height:I

    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-ltz v7, :cond_1

    iget v6, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectedTop:I

    iput v6, v1, Lcom/car/launchercommon/TwoWayAbsListView$SavedState;->viewTop:I

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getSelectedItemPosition()I

    move-result v6

    iput v6, v1, Lcom/car/launchercommon/TwoWayAbsListView$SavedState;->position:I

    iput-wide v10, v1, Lcom/car/launchercommon/TwoWayAbsListView$SavedState;->firstId:J

    :goto_1
    return-object v1

    :cond_0
    move v0, v6

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {p0, v6}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-boolean v6, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollVertically:Z

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, v1, Lcom/car/launchercommon/TwoWayAbsListView$SavedState;->viewTop:I

    :goto_2
    iget v6, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    iput v6, v1, Lcom/car/launchercommon/TwoWayAbsListView$SavedState;->position:I

    iget-object v6, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v7, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    invoke-interface {v6, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/car/launchercommon/TwoWayAbsListView$SavedState;->firstId:J

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, v1, Lcom/car/launchercommon/TwoWayAbsListView$SavedState;->viewTop:I

    goto :goto_2

    :cond_3
    iput v6, v1, Lcom/car/launchercommon/TwoWayAbsListView$SavedState;->viewTop:I

    iput-wide v10, v1, Lcom/car/launchercommon/TwoWayAbsListView$SavedState;->firstId:J

    iput v6, v1, Lcom/car/launchercommon/TwoWayAbsListView$SavedState;->position:I

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mDataChanged:Z

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->rememberSyncState()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchHandler:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0, p1}, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchHandler:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0, p1}, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->onTouchModeChanged(Z)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/car/launchercommon/TwoWayAdapterView;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchHandler:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0, p1}, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public pointToPosition(II)I
    .locals 5

    iget-object v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    :cond_0
    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    :goto_0
    if-ltz v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    add-int/2addr v4, v3

    :goto_1
    return v4

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public pointToRowId(II)J
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/car/launchercommon/TwoWayAbsListView;->pointToPosition(II)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_0
.end method

.method positionSelector(Landroid/view/View;)V
    .locals 6

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/car/launchercommon/TwoWayAbsListView;->positionSelector(IIII)V

    iget-boolean v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mIsChildViewEnabled:Z

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_0

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mIsChildViewEnabled:Z

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->refreshDrawableState()V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v1

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mRecycler:Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;

    invoke-static {v5}, Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;->access$800(Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;)Lcom/car/launchercommon/TwoWayAbsListView$RecyclerListener;

    move-result-object v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/car/launchercommon/TwoWayAbsListView$LayoutParams;

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mRecycler:Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;

    iget v6, v4, Lcom/car/launchercommon/TwoWayAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_0

    invoke-interface {v3, v0}, Lcom/car/launchercommon/TwoWayAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mRecycler:Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->removeAllViewsInLayout()V

    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    iget v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mResurrectToPosition:I

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mOnScrollListener:Lcom/car/launchercommon/TwoWayAbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mOnScrollListener:Lcom/car/launchercommon/TwoWayAbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/car/launchercommon/TwoWayAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/car/launchercommon/TwoWayAbsListView;I)V

    iput p1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mLastScrollState:I

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mInLayout:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/car/launchercommon/TwoWayAdapterView;->requestLayout()V

    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->resetList()V

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->requestLayout()V

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->invalidate()V

    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->removeAllViewsInLayout()V

    iput v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    iput-boolean v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mDataChanged:Z

    iput-boolean v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mNeedSync:Z

    iput v3, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mOldSelectedPosition:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mOldSelectedRowId:J

    invoke-virtual {p0, v3}, Lcom/car/launchercommon/TwoWayAbsListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v3}, Lcom/car/launchercommon/TwoWayAbsListView;->setNextSelectedPositionInt(I)V

    iput v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectedTop:I

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->invalidate()V

    return-void
.end method

.method resurrectSelection()Z
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchHandler:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0}, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->resurrectSelection()Z

    move-result v0

    return v0
.end method

.method public setCacheColorHint(I)V
    .locals 3

    iget v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1

    iput p1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mCacheColorHint:I

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mRecycler:Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;->setCacheColorHint(I)V

    :cond_1
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mDrawSelectorOnTop:Z

    return-void
.end method

.method public setOnScrollListener(Lcom/car/launchercommon/TwoWayAbsListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mOnScrollListener:Lcom/car/launchercommon/TwoWayAbsListView$OnScrollListener;

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->invokeOnItemScrollListener()V

    return-void
.end method

.method public setRecyclerListener(Lcom/car/launchercommon/TwoWayAbsListView$RecyclerListener;)V
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mRecycler:Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;

    invoke-static {v0, p1}, Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;->access$802(Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;Lcom/car/launchercommon/TwoWayAbsListView$RecyclerListener;)Lcom/car/launchercommon/TwoWayAbsListView$RecyclerListener;

    return-void
.end method

.method public setScrollDirectionLandscape(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollVerticallyLandscape:Z

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollVerticallyLandscape:Z

    iget-boolean v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollVerticallyLandscape:Z

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->setupScrollInfo()V

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->resetList()V

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mRecycler:Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;->clear()V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setScrollDirectionPortrait(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollVerticallyPortrait:Z

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollVerticallyPortrait:Z

    iget-boolean v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollVerticallyPortrait:Z

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->setupScrollInfo()V

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->resetList()V

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mRecycler:Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;->clear()V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollUp:Landroid/view/View;

    iput-object p2, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollDown:Landroid/view/View;

    iput-object p3, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollLeft:Landroid/view/View;

    iput-object p4, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollRight:Landroid/view/View;

    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchHandler:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0}, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->clearScrollingCache()V

    :cond_0
    iput-boolean p1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollingCacheEnabled:Z

    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/car/launchercommon/TwoWayAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectionLeftPadding:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectionTopPadding:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectionRightPadding:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectionBottomPadding:I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSmoothScrollbarEnabled:Z

    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mStackFromBottom:Z

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0

    iput p1, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mTranscriptMode:I

    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7

    invoke-virtual {p0, p1}, Lcom/car/launchercommon/TwoWayAbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_2

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mOnItemLongClickListener:Lcom/car/launchercommon/TwoWayAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mOnItemLongClickListener:Lcom/car/launchercommon/TwoWayAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/car/launchercommon/TwoWayAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/car/launchercommon/TwoWayAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    :cond_0
    if-nez v6, :cond_1

    iget v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/car/launchercommon/TwoWayAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-super {p0, p1}, Lcom/car/launchercommon/TwoWayAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchHandler:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0, p1, p2}, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->smoothScrollBy(II)V

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchHandler:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0, p1}, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->smoothScrollToPosition(I)V

    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchHandler:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0, p1, p2}, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->smoothScrollToPosition(II)V

    return-void
.end method

.method public startScrollIfNeeded(I)Z
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchHandler:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0, p1}, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->startScrollIfNeeded(I)Z

    move-result v0

    return v0
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method updateScrollIndicators()V
    .locals 12

    const/4 v9, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollVertically:Z

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    if-lez v8, :cond_8

    move v3, v6

    :goto_0
    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual {p0, v7}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    iget-object v10, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-ge v8, v10, :cond_9

    move v3, v6

    :cond_0
    :goto_1
    iget-object v10, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v3, :cond_a

    move v8, v7

    :goto_2
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollVertically:Z

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v5

    iget v8, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    add-int/2addr v8, v5

    iget v10, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mItemCount:I

    if-ge v8, v10, :cond_b

    move v0, v6

    :goto_3
    if-nez v0, :cond_2

    if-lez v5, :cond_2

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {p0, v8}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getBottom()I

    move-result v10

    iget-object v11, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    if-le v8, v10, :cond_c

    move v0, v6

    :cond_2
    :goto_4
    iget-object v10, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_d

    move v8, v7

    :goto_5
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollLeft:Landroid/view/View;

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollVertically:Z

    if-nez v8, :cond_5

    iget v8, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    if-lez v8, :cond_e

    move v1, v6

    :goto_6
    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    invoke-virtual {p0, v7}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v8

    iget-object v10, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    if-ge v8, v10, :cond_f

    move v1, v6

    :cond_4
    :goto_7
    iget-object v10, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollLeft:Landroid/view/View;

    if-eqz v1, :cond_10

    move v8, v7

    :goto_8
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollRight:Landroid/view/View;

    if-eqz v8, :cond_7

    iget-boolean v8, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollVertically:Z

    if-nez v8, :cond_7

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v5

    iget v8, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    add-int/2addr v8, v5

    iget v10, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mItemCount:I

    if-ge v8, v10, :cond_11

    move v2, v6

    :goto_9
    if-nez v2, :cond_6

    if-lez v5, :cond_6

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {p0, v8}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->getRight()I

    move-result v10

    iget-object v11, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    if-le v8, v10, :cond_12

    move v2, v6

    :cond_6
    :goto_a
    iget-object v6, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollRight:Landroid/view/View;

    if-eqz v2, :cond_13

    :goto_b
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void

    :cond_8
    move v3, v7

    goto/16 :goto_0

    :cond_9
    move v3, v7

    goto/16 :goto_1

    :cond_a
    move v8, v9

    goto/16 :goto_2

    :cond_b
    move v0, v7

    goto/16 :goto_3

    :cond_c
    move v0, v7

    goto :goto_4

    :cond_d
    move v8, v9

    goto :goto_5

    :cond_e
    move v1, v7

    goto :goto_6

    :cond_f
    move v1, v7

    goto :goto_7

    :cond_10
    move v8, v9

    goto :goto_8

    :cond_11
    move v2, v7

    goto :goto_9

    :cond_12
    move v2, v7

    goto :goto_a

    :cond_13
    move v7, v9

    goto :goto_b
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lcom/car/launchercommon/TwoWayAdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
