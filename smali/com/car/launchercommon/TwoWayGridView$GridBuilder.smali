.class abstract Lcom/car/launchercommon/TwoWayGridView$GridBuilder;
.super Ljava/lang/Object;
.source "TwoWayGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/TwoWayGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "GridBuilder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/launchercommon/TwoWayGridView;


# direct methods
.method private constructor <init>(Lcom/car/launchercommon/TwoWayGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/TwoWayGridView$GridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/launchercommon/TwoWayGridView;Lcom/car/launchercommon/TwoWayGridView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/launchercommon/TwoWayGridView$GridBuilder;-><init>(Lcom/car/launchercommon/TwoWayGridView;)V

    return-void
.end method


# virtual methods
.method protected abstract arrowScroll(I)Z
.end method

.method protected abstract fillGap(Z)V
.end method

.method protected abstract isCandidateSelection(II)Z
.end method

.method protected abstract layoutChildren()V
.end method

.method protected abstract makeAndAddView(IIZIZI)Landroid/view/View;
.end method

.method protected abstract measure(II)V
.end method

.method protected abstract setSelectionInt(I)V
.end method
