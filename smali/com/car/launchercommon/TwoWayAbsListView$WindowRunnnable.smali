.class Lcom/car/launchercommon/TwoWayAbsListView$WindowRunnnable;
.super Ljava/lang/Object;
.source "TwoWayAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/TwoWayAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Lcom/car/launchercommon/TwoWayAbsListView;


# direct methods
.method private constructor <init>(Lcom/car/launchercommon/TwoWayAbsListView;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/TwoWayAbsListView$WindowRunnnable;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/launchercommon/TwoWayAbsListView;Lcom/car/launchercommon/TwoWayAbsListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/launchercommon/TwoWayAbsListView$WindowRunnnable;-><init>(Lcom/car/launchercommon/TwoWayAbsListView;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$WindowRunnnable;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-static {v0}, Lcom/car/launchercommon/TwoWayAbsListView;->access$200(Lcom/car/launchercommon/TwoWayAbsListView;)I

    move-result v0

    iput v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$WindowRunnnable;->mOriginalAttachCount:I

    return-void
.end method

.method public sameWindow()Z
    .locals 2

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$WindowRunnnable;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/car/launchercommon/TwoWayAbsListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$WindowRunnnable;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-static {v0}, Lcom/car/launchercommon/TwoWayAbsListView;->access$300(Lcom/car/launchercommon/TwoWayAbsListView;)I

    move-result v0

    iget v1, p0, Lcom/car/launchercommon/TwoWayAbsListView$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
