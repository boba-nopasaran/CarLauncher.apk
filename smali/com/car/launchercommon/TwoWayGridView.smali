.class public Lcom/car/launchercommon/TwoWayGridView;
.super Lcom/car/launchercommon/TwoWayAbsListView;
.source "TwoWayGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/launchercommon/TwoWayGridView$1;,
        Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;,
        Lcom/car/launchercommon/TwoWayGridView$VerticalGridBuilder;,
        Lcom/car/launchercommon/TwoWayGridView$GridBuilder;
    }
.end annotation


# static fields
.field public static final AUTO_FIT:I = -0x1

.field public static final DEBUG:Z = false

.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3

.field public static final TAG:Ljava/lang/String; = "TwoWayGridView"


# instance fields
.field private mColumnWidth:I

.field private mGravity:I

.field protected mGridBuilder:Lcom/car/launchercommon/TwoWayGridView$GridBuilder;

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mNumRows:I

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mRequestedNumRows:I

.field private mRequestedRowHeight:I

.field private mRequestedVerticalSpacing:I

.field private mRowHeight:I

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/car/launchercommon/TwoWayAbsListView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mNumColumns:I

    iput v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mNumRows:I

    iput v2, p0, Lcom/car/launchercommon/TwoWayGridView;->mHorizontalSpacing:I

    iput v2, p0, Lcom/car/launchercommon/TwoWayGridView;->mVerticalSpacing:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mStretchMode:I

    iput-object v1, p0, Lcom/car/launchercommon/TwoWayGridView;->mReferenceView:Landroid/view/View;

    iput-object v1, p0, Lcom/car/launchercommon/TwoWayGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    const/4 v0, 0x3

    iput v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mGravity:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mTempRect:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/car/launchercommon/TwoWayGridView;->mGridBuilder:Lcom/car/launchercommon/TwoWayGridView$GridBuilder;

    invoke-direct {p0}, Lcom/car/launchercommon/TwoWayGridView;->setupGridType()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/car/launchercommon/TwoWayGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    invoke-direct {p0, p1, p2, p3}, Lcom/car/launchercommon/TwoWayAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v8, -0x1

    iput v8, p0, Lcom/car/launchercommon/TwoWayGridView;->mNumColumns:I

    const/4 v8, -0x1

    iput v8, p0, Lcom/car/launchercommon/TwoWayGridView;->mNumRows:I

    const/4 v8, 0x0

    iput v8, p0, Lcom/car/launchercommon/TwoWayGridView;->mHorizontalSpacing:I

    const/4 v8, 0x0

    iput v8, p0, Lcom/car/launchercommon/TwoWayGridView;->mVerticalSpacing:I

    const/4 v8, 0x2

    iput v8, p0, Lcom/car/launchercommon/TwoWayGridView;->mStretchMode:I

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/car/launchercommon/TwoWayGridView;->mReferenceView:Landroid/view/View;

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/car/launchercommon/TwoWayGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    const/4 v8, 0x3

    iput v8, p0, Lcom/car/launchercommon/TwoWayGridView;->mGravity:I

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/car/launchercommon/TwoWayGridView;->mTempRect:Landroid/graphics/Rect;

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/car/launchercommon/TwoWayGridView;->mGridBuilder:Lcom/car/launchercommon/TwoWayGridView$GridBuilder;

    sget-object v8, Lcom/car/launchercommon/R$styleable;->TwoWayGridView:[I

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v8, Lcom/car/launchercommon/R$styleable;->TwoWayGridView_horizontalSpacing:I

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/car/launchercommon/TwoWayGridView;->setHorizontalSpacing(I)V

    sget v8, Lcom/car/launchercommon/R$styleable;->TwoWayGridView_verticalSpacing:I

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/car/launchercommon/TwoWayGridView;->setVerticalSpacing(I)V

    sget v8, Lcom/car/launchercommon/R$styleable;->TwoWayGridView_stretchMode:I

    const/4 v9, 0x2

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {p0, v3}, Lcom/car/launchercommon/TwoWayGridView;->setStretchMode(I)V

    :cond_0
    sget v8, Lcom/car/launchercommon/R$styleable;->TwoWayGridView_columnWidth:I

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/car/launchercommon/TwoWayGridView;->setColumnWidth(I)V

    :cond_1
    sget v8, Lcom/car/launchercommon/R$styleable;->TwoWayGridView_rowHeight:I

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {p0, v6}, Lcom/car/launchercommon/TwoWayGridView;->setRowHeight(I)V

    :cond_2
    sget v8, Lcom/car/launchercommon/R$styleable;->TwoWayGridView_numColumns:I

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/car/launchercommon/TwoWayGridView;->setNumColumns(I)V

    sget v8, Lcom/car/launchercommon/R$styleable;->TwoWayGridView_numRows:I

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/car/launchercommon/TwoWayGridView;->setNumRows(I)V

    sget v8, Lcom/car/launchercommon/R$styleable;->TwoWayGridView_gravity:I

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-ltz v3, :cond_3

    invoke-virtual {p0, v3}, Lcom/car/launchercommon/TwoWayGridView;->setGravity(I)V

    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/car/launchercommon/TwoWayGridView;->setupGridType()V

    return-void
.end method

.method static synthetic access$1000(Lcom/car/launchercommon/TwoWayGridView;)I
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mRequestedHorizontalSpacing:I

    return v0
.end method

.method static synthetic access$1100(Lcom/car/launchercommon/TwoWayGridView;)I
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mRequestedColumnWidth:I

    return v0
.end method

.method static synthetic access$1200(Lcom/car/launchercommon/TwoWayGridView;)I
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mRequestedVerticalSpacing:I

    return v0
.end method

.method static synthetic access$1300(Lcom/car/launchercommon/TwoWayGridView;)I
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mRequestedNumColumns:I

    return v0
.end method

.method static synthetic access$1400(Lcom/car/launchercommon/TwoWayGridView;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/car/launchercommon/TwoWayGridView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/car/launchercommon/TwoWayGridView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->detachAllViewsFromParent()V

    return-void
.end method

.method static synthetic access$1600(Lcom/car/launchercommon/TwoWayGridView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/car/launchercommon/TwoWayGridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/car/launchercommon/TwoWayGridView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/car/launchercommon/TwoWayGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/car/launchercommon/TwoWayGridView;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/car/launchercommon/TwoWayGridView;->cleanupLayoutState(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/car/launchercommon/TwoWayGridView;)I
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mGravity:I

    return v0
.end method

.method static synthetic access$2000(Lcom/car/launchercommon/TwoWayGridView;)I
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mNumRows:I

    return v0
.end method

.method static synthetic access$2002(Lcom/car/launchercommon/TwoWayGridView;I)I
    .locals 0

    iput p1, p0, Lcom/car/launchercommon/TwoWayGridView;->mNumRows:I

    return p1
.end method

.method static synthetic access$2100(Lcom/car/launchercommon/TwoWayGridView;)I
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mRowHeight:I

    return v0
.end method

.method static synthetic access$2102(Lcom/car/launchercommon/TwoWayGridView;I)I
    .locals 0

    iput p1, p0, Lcom/car/launchercommon/TwoWayGridView;->mRowHeight:I

    return p1
.end method

.method static synthetic access$2200(Lcom/car/launchercommon/TwoWayGridView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->detachAllViewsFromParent()V

    return-void
.end method

.method static synthetic access$2300(Lcom/car/launchercommon/TwoWayGridView;)I
    .locals 1

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->getHorizontalScrollbarHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/car/launchercommon/TwoWayGridView;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/car/launchercommon/TwoWayGridView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$2500(Lcom/car/launchercommon/TwoWayGridView;)I
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mRequestedRowHeight:I

    return v0
.end method

.method static synthetic access$2600(Lcom/car/launchercommon/TwoWayGridView;)I
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mRequestedNumRows:I

    return v0
.end method

.method static synthetic access$2700(Lcom/car/launchercommon/TwoWayGridView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/car/launchercommon/TwoWayGridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/car/launchercommon/TwoWayGridView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/car/launchercommon/TwoWayGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/car/launchercommon/TwoWayGridView;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/car/launchercommon/TwoWayGridView;->cleanupLayoutState(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/car/launchercommon/TwoWayGridView;)I
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mNumColumns:I

    return v0
.end method

.method static synthetic access$302(Lcom/car/launchercommon/TwoWayGridView;I)I
    .locals 0

    iput p1, p0, Lcom/car/launchercommon/TwoWayGridView;->mNumColumns:I

    return p1
.end method

.method static synthetic access$400(Lcom/car/launchercommon/TwoWayGridView;)I
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mVerticalSpacing:I

    return v0
.end method

.method static synthetic access$402(Lcom/car/launchercommon/TwoWayGridView;I)I
    .locals 0

    iput p1, p0, Lcom/car/launchercommon/TwoWayGridView;->mVerticalSpacing:I

    return p1
.end method

.method static synthetic access$500(Lcom/car/launchercommon/TwoWayGridView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mReferenceView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Lcom/car/launchercommon/TwoWayGridView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/TwoWayGridView;->mReferenceView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$600(Lcom/car/launchercommon/TwoWayGridView;)I
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mColumnWidth:I

    return v0
.end method

.method static synthetic access$602(Lcom/car/launchercommon/TwoWayGridView;I)I
    .locals 0

    iput p1, p0, Lcom/car/launchercommon/TwoWayGridView;->mColumnWidth:I

    return p1
.end method

.method static synthetic access$700(Lcom/car/launchercommon/TwoWayGridView;)I
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mHorizontalSpacing:I

    return v0
.end method

.method static synthetic access$702(Lcom/car/launchercommon/TwoWayGridView;I)I
    .locals 0

    iput p1, p0, Lcom/car/launchercommon/TwoWayGridView;->mHorizontalSpacing:I

    return p1
.end method

.method static synthetic access$800(Lcom/car/launchercommon/TwoWayGridView;)I
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mStretchMode:I

    return v0
.end method

.method static synthetic access$900(Lcom/car/launchercommon/TwoWayGridView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$902(Lcom/car/launchercommon/TwoWayGridView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/TwoWayGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    return-object p1
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v2, 0x0

    const/16 v6, 0x82

    const/16 v5, 0x21

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-boolean v4, p0, Lcom/car/launchercommon/TwoWayGridView;->mDataChanged:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->layoutChildren()V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_3

    iget v4, p0, Lcom/car/launchercommon/TwoWayGridView;->mSelectedPosition:I

    if-gez v4, :cond_2

    sparse-switch p1, :sswitch_data_0

    :cond_2
    sparse-switch p1, :sswitch_data_1

    :cond_3
    :goto_1
    if-eqz v1, :cond_a

    move v2, v3

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->resurrectSelection()Z

    move v2, v3

    goto :goto_0

    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView;->mGridBuilder:Lcom/car/launchercommon/TwoWayGridView$GridBuilder;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Lcom/car/launchercommon/TwoWayGridView$GridBuilder;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v5}, Lcom/car/launchercommon/TwoWayGridView;->fullScroll(I)Z

    move-result v1

    goto :goto_1

    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView;->mGridBuilder:Lcom/car/launchercommon/TwoWayGridView$GridBuilder;

    const/16 v5, 0x42

    invoke-virtual {v4, v5}, Lcom/car/launchercommon/TwoWayGridView$GridBuilder;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v6}, Lcom/car/launchercommon/TwoWayGridView;->fullScroll(I)Z

    move-result v1

    goto :goto_1

    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView;->mGridBuilder:Lcom/car/launchercommon/TwoWayGridView$GridBuilder;

    invoke-virtual {v4, v5}, Lcom/car/launchercommon/TwoWayGridView$GridBuilder;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v5}, Lcom/car/launchercommon/TwoWayGridView;->fullScroll(I)Z

    move-result v1

    goto :goto_1

    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView;->mGridBuilder:Lcom/car/launchercommon/TwoWayGridView$GridBuilder;

    invoke-virtual {v4, v6}, Lcom/car/launchercommon/TwoWayGridView$GridBuilder;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v6}, Lcom/car/launchercommon/TwoWayGridView;->fullScroll(I)Z

    move-result v1

    goto :goto_1

    :sswitch_5
    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_8

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->keyPressed()V

    :cond_8
    move v2, v3

    goto :goto_0

    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p0, v6}, Lcom/car/launchercommon/TwoWayGridView;->pageScroll(I)Z

    move-result v1

    goto :goto_1

    :cond_9
    invoke-virtual {p0, v5}, Lcom/car/launchercommon/TwoWayGridView;->pageScroll(I)Z

    move-result v1

    goto :goto_1

    :cond_a
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-super {p0, p1, p3}, Lcom/car/launchercommon/TwoWayAbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    :pswitch_1
    invoke-super {p0, p1, p3}, Lcom/car/launchercommon/TwoWayAbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/car/launchercommon/TwoWayAbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_5
        0x3e -> :sswitch_6
        0x42 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setupGridType()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mScrollVertically:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/car/launchercommon/TwoWayGridView$VerticalGridBuilder;

    invoke-direct {v0, p0, v1}, Lcom/car/launchercommon/TwoWayGridView$VerticalGridBuilder;-><init>(Lcom/car/launchercommon/TwoWayGridView;Lcom/car/launchercommon/TwoWayGridView$1;)V

    iput-object v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mGridBuilder:Lcom/car/launchercommon/TwoWayGridView$GridBuilder;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;

    invoke-direct {v0, p0, v1}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;-><init>(Lcom/car/launchercommon/TwoWayGridView;Lcom/car/launchercommon/TwoWayGridView$1;)V

    iput-object v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mGridBuilder:Lcom/car/launchercommon/TwoWayGridView$GridBuilder;

    goto :goto_0
.end method


# virtual methods
.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 4

    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    invoke-direct {v0}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    :cond_0
    iput p4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    iput p3, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    iget v2, p0, Lcom/car/launchercommon/TwoWayGridView;->mNumColumns:I

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    iget v2, p0, Lcom/car/launchercommon/TwoWayGridView;->mNumColumns:I

    div-int v2, p4, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    iget-boolean v2, p0, Lcom/car/launchercommon/TwoWayGridView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/car/launchercommon/TwoWayGridView;->mNumColumns:I

    rem-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    iget v2, p0, Lcom/car/launchercommon/TwoWayGridView;->mNumColumns:I

    div-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    :goto_0
    return-void

    :cond_1
    add-int/lit8 v2, p4, -0x1

    sub-int v1, v2, p3

    iget v2, p0, Lcom/car/launchercommon/TwoWayGridView;->mNumColumns:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/car/launchercommon/TwoWayGridView;->mNumColumns:I

    rem-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/car/launchercommon/TwoWayGridView;->mNumColumns:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 10

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    iget-boolean v9, p0, Lcom/car/launchercommon/TwoWayGridView;->mScrollVertically:Z

    if-nez v9, :cond_2

    iget v4, p0, Lcom/car/launchercommon/TwoWayGridView;->mNumRows:I

    add-int v9, v1, v4

    add-int/lit8 v9, v9, -0x1

    div-int v0, v9, v4

    mul-int/lit8 v2, v0, 0x64

    invoke-virtual {p0, v8}, Lcom/car/launchercommon/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v7

    if-lez v7, :cond_0

    mul-int/lit8 v8, v3, 0x64

    div-int/2addr v8, v7

    add-int/2addr v2, v8

    :cond_0
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p0, v8}, Lcom/car/launchercommon/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v7

    if-lez v7, :cond_1

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->getWidth()I

    move-result v8

    sub-int v8, v5, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v7

    sub-int/2addr v2, v8

    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v8

    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 10

    const/4 v6, 0x0

    iget v7, p0, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    if-ltz v7, :cond_0

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_0

    iget-boolean v7, p0, Lcom/car/launchercommon/TwoWayGridView;->mScrollVertically:Z

    if-nez v7, :cond_0

    invoke-virtual {p0, v6}, Lcom/car/launchercommon/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    if-lez v5, :cond_0

    iget v2, p0, Lcom/car/launchercommon/TwoWayGridView;->mNumRows:I

    iget v7, p0, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    div-int v4, v7, v2

    iget v7, p0, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, -0x1

    div-int v0, v7, v2

    mul-int/lit8 v7, v4, 0x64

    mul-int/lit8 v8, v1, 0x64

    div-int/2addr v8, v5

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->getScrollX()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    int-to-float v9, v0

    mul-float/2addr v8, v9

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_0
    return v6
.end method

.method protected computeHorizontalScrollRange()I
    .locals 4

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/car/launchercommon/TwoWayGridView;->mScrollVertically:Z

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    iget v1, p0, Lcom/car/launchercommon/TwoWayGridView;->mNumRows:I

    iget v3, p0, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    div-int v0, v3, v1

    mul-int/lit8 v3, v0, 0x64

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 10

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    iget-boolean v9, p0, Lcom/car/launchercommon/TwoWayGridView;->mScrollVertically:Z

    if-eqz v9, :cond_2

    iget v4, p0, Lcom/car/launchercommon/TwoWayGridView;->mNumColumns:I

    add-int v9, v1, v4

    add-int/lit8 v9, v9, -0x1

    div-int v5, v9, v4

    mul-int/lit8 v2, v5, 0x64

    invoke-virtual {p0, v8}, Lcom/car/launchercommon/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_0

    mul-int/lit8 v8, v6, 0x64

    div-int/2addr v8, v3

    add-int/2addr v2, v8

    :cond_0
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p0, v8}, Lcom/car/launchercommon/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->getHeight()I

    move-result v8

    sub-int v8, v0, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v2, v8

    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v8

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 10

    const/4 v6, 0x0

    iget v7, p0, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    if-ltz v7, :cond_0

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_0

    iget-boolean v7, p0, Lcom/car/launchercommon/TwoWayGridView;->mScrollVertically:Z

    if-eqz v7, :cond_0

    invoke-virtual {p0, v6}, Lcom/car/launchercommon/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/car/launchercommon/TwoWayGridView;->mNumColumns:I

    iget v7, p0, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    div-int v5, v7, v1

    iget v7, p0, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    add-int/2addr v7, v1

    add-int/lit8 v7, v7, -0x1

    div-int v2, v7, v1

    mul-int/lit8 v7, v5, 0x64

    mul-int/lit8 v8, v3, 0x64

    div-int/2addr v8, v0

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->getScrollY()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    int-to-float v9, v2

    mul-float/2addr v8, v9

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_0
    return v6
.end method

.method protected computeVerticalScrollRange()I
    .locals 4

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/car/launchercommon/TwoWayGridView;->mScrollVertically:Z

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    iget v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mNumColumns:I

    iget v3, p0, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    div-int v1, v3, v0

    mul-int/lit8 v3, v1, 0x64

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0
.end method

.method fillGap(Z)V
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mGridBuilder:Lcom/car/launchercommon/TwoWayGridView$GridBuilder;

    invoke-virtual {v0, p1}, Lcom/car/launchercommon/TwoWayGridView$GridBuilder;->fillGap(Z)V

    return-void
.end method

.method findMotionRowX(I)I
    .locals 4

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    iget v2, p0, Lcom/car/launchercommon/TwoWayGridView;->mNumRows:I

    iget-boolean v3, p0, Lcom/car/launchercommon/TwoWayGridView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/car/launchercommon/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt p1, v3, :cond_0

    iget v3, p0, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    :goto_1
    return v3

    :cond_0
    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, -0x1

    :goto_2
    if-ltz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/car/launchercommon/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_2

    iget v3, p0, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    :cond_2
    sub-int/2addr v1, v2

    goto :goto_2

    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method findMotionRowY(I)I
    .locals 4

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    iget v2, p0, Lcom/car/launchercommon/TwoWayGridView;->mNumColumns:I

    iget-boolean v3, p0, Lcom/car/launchercommon/TwoWayGridView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/car/launchercommon/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    iget v3, p0, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    :goto_1
    return v3

    :cond_0
    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, -0x1

    :goto_2
    if-ltz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/car/launchercommon/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    iget v3, p0, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    :cond_2
    sub-int/2addr v1, v2

    goto :goto_2

    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method fullScroll(I)Z
    .locals 3

    const/4 v2, 0x2

    const/4 v0, 0x0

    const/16 v1, 0x21

    if-ne p1, v1, :cond_2

    iput v2, p0, Lcom/car/launchercommon/TwoWayGridView;->mLayoutMode:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/car/launchercommon/TwoWayGridView;->setSelectionInt(I)V

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->invokeOnItemScrollListener()V

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    :cond_1
    return v0

    :cond_2
    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    iput v2, p0, Lcom/car/launchercommon/TwoWayGridView;->mLayoutMode:I

    iget v1, p0, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/car/launchercommon/TwoWayGridView;->setSelectionInt(I)V

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->invokeOnItemScrollListener()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getStretchMode()I
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mStretchMode:I

    return v0
.end method

.method protected layoutChildren()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/car/launchercommon/TwoWayGridView;->mBlockLayoutRequests:Z

    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/car/launchercommon/TwoWayAbsListView;->layoutChildren()V

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->invalidate()V

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->resetList()V

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/car/launchercommon/TwoWayGridView;->mBlockLayoutRequests:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/car/launchercommon/TwoWayGridView;->mGridBuilder:Lcom/car/launchercommon/TwoWayGridView$GridBuilder;

    invoke-virtual {v1}, Lcom/car/launchercommon/TwoWayGridView$GridBuilder;->layoutChildren()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/car/launchercommon/TwoWayGridView;->mBlockLayoutRequests:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    if-nez v0, :cond_3

    iput-boolean v2, p0, Lcom/car/launchercommon/TwoWayGridView;->mBlockLayoutRequests:Z

    :cond_3
    throw v1
.end method

.method lookForSelectablePosition(IZ)I
    .locals 3

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move p1, v1

    :cond_1
    :goto_0
    return p1

    :cond_2
    if-ltz p1, :cond_3

    iget v2, p0, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    if-lt p1, v2, :cond_1

    :cond_3
    move p1, v1

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 9

    invoke-super {p0, p1, p2, p3}, Lcom/car/launchercommon/TwoWayAbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    const/4 v1, -0x1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->getScrollX()I

    move-result v7

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->getScrollY()I

    move-result v8

    invoke-virtual {p3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    iget-object v6, p0, Lcom/car/launchercommon/TwoWayGridView;->mTempRect:Landroid/graphics/Rect;

    const v4, 0x7fffffff

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v7, p0, Lcom/car/launchercommon/TwoWayGridView;->mGridBuilder:Lcom/car/launchercommon/TwoWayGridView$GridBuilder;

    invoke-virtual {v7, v3, p2}, Lcom/car/launchercommon/TwoWayGridView$GridBuilder;->isCandidateSelection(II)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/car/launchercommon/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v5, v6}, Lcom/car/launchercommon/TwoWayGridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {p3, v6, p2}, Lcom/car/launchercommon/TwoWayGridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    if-ge v2, v4, :cond_0

    move v4, v2

    move v1, v3

    goto :goto_1

    :cond_2
    if-ltz v1, :cond_3

    iget v7, p0, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Lcom/car/launchercommon/TwoWayGridView;->setSelection(I)V

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->requestLayout()V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/car/launchercommon/TwoWayGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/car/launchercommon/TwoWayGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/car/launchercommon/TwoWayGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/car/launchercommon/TwoWayAbsListView;->onMeasure(II)V

    iget-boolean v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mScrollVertically:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mGridBuilder:Lcom/car/launchercommon/TwoWayGridView$GridBuilder;

    instance-of v0, v0, Lcom/car/launchercommon/TwoWayGridView$VerticalGridBuilder;

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mScrollVertically:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mGridBuilder:Lcom/car/launchercommon/TwoWayGridView$GridBuilder;

    instance-of v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/car/launchercommon/TwoWayGridView;->setupGridType()V

    :cond_2
    iget-object v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mGridBuilder:Lcom/car/launchercommon/TwoWayGridView$GridBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/car/launchercommon/TwoWayGridView$GridBuilder;->measure(II)V

    return-void
.end method

.method pageScroll(I)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/16 v2, 0x21

    if-ne p1, v2, :cond_2

    iget v2, p0, Lcom/car/launchercommon/TwoWayGridView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/car/launchercommon/TwoWayGridView;->setSelectionInt(I)V

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->invokeOnItemScrollListener()V

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/car/launchercommon/TwoWayGridView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/car/launchercommon/TwoWayGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/car/launchercommon/TwoWayGridView;->mDataSetObserver:Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->resetList()V

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayGridView;->mRecycler:Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;->clear()V

    iput-object p1, p0, Lcom/car/launchercommon/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, -0x1

    iput v1, p0, Lcom/car/launchercommon/TwoWayGridView;->mOldSelectedPosition:I

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/car/launchercommon/TwoWayGridView;->mOldSelectedRowId:J

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    iput v1, p0, Lcom/car/launchercommon/TwoWayGridView;->mOldItemCount:I

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    iput-boolean v5, p0, Lcom/car/launchercommon/TwoWayGridView;->mDataChanged:Z

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->checkFocus()V

    new-instance v1, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;-><init>(Lcom/car/launchercommon/TwoWayAdapterView;)V

    iput-object v1, p0, Lcom/car/launchercommon/TwoWayGridView;->mDataSetObserver:Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/car/launchercommon/TwoWayGridView;->mDataSetObserver:Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayGridView;->mRecycler:Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;

    iget-object v2, p0, Lcom/car/launchercommon/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;->setViewTypeCount(I)V

    iget-boolean v1, p0, Lcom/car/launchercommon/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Lcom/car/launchercommon/TwoWayGridView;->lookForSelectablePosition(IZ)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/car/launchercommon/TwoWayGridView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v0}, Lcom/car/launchercommon/TwoWayGridView;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->checkSelectionChanged()V

    :goto_1
    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->requestLayout()V

    return-void

    :cond_1
    invoke-virtual {p0, v4, v5}, Lcom/car/launchercommon/TwoWayGridView;->lookForSelectablePosition(IZ)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->checkFocus()V

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->checkSelectionChanged()V

    goto :goto_1
.end method

.method public setColumnWidth(I)V
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/car/launchercommon/TwoWayGridView;->mRequestedColumnWidth:I

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/car/launchercommon/TwoWayGridView;->mGravity:I

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/car/launchercommon/TwoWayGridView;->mRequestedHorizontalSpacing:I

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/car/launchercommon/TwoWayGridView;->mRequestedNumColumns:I

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setNumRows(I)V
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mRequestedNumRows:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/car/launchercommon/TwoWayGridView;->mRequestedNumRows:I

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setRowHeight(I)V
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mRequestedRowHeight:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/car/launchercommon/TwoWayGridView;->mRequestedRowHeight:I

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/car/launchercommon/TwoWayGridView;->setNextSelectedPositionInt(I)V

    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mLayoutMode:I

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->requestLayout()V

    return-void

    :cond_0
    iput p1, p0, Lcom/car/launchercommon/TwoWayGridView;->mResurrectToPosition:I

    goto :goto_0
.end method

.method setSelectionInt(I)V
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mGridBuilder:Lcom/car/launchercommon/TwoWayGridView$GridBuilder;

    invoke-virtual {v0, p1}, Lcom/car/launchercommon/TwoWayGridView$GridBuilder;->setSelectionInt(I)V

    return-void
.end method

.method public setStretchMode(I)V
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mStretchMode:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/car/launchercommon/TwoWayGridView;->mStretchMode:I

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/TwoWayGridView;->mRequestedVerticalSpacing:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/car/launchercommon/TwoWayGridView;->mRequestedVerticalSpacing:I

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayGridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method
