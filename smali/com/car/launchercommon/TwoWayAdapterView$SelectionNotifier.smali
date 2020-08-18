.class Lcom/car/launchercommon/TwoWayAdapterView$SelectionNotifier;
.super Landroid/os/Handler;
.source "TwoWayAdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/TwoWayAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/launchercommon/TwoWayAdapterView;


# direct methods
.method private constructor <init>(Lcom/car/launchercommon/TwoWayAdapterView;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/TwoWayAdapterView$SelectionNotifier;->this$0:Lcom/car/launchercommon/TwoWayAdapterView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/launchercommon/TwoWayAdapterView;Lcom/car/launchercommon/TwoWayAdapterView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/launchercommon/TwoWayAdapterView$SelectionNotifier;-><init>(Lcom/car/launchercommon/TwoWayAdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAdapterView$SelectionNotifier;->this$0:Lcom/car/launchercommon/TwoWayAdapterView;

    iget-boolean v0, v0, Lcom/car/launchercommon/TwoWayAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/car/launchercommon/TwoWayAdapterView$SelectionNotifier;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAdapterView$SelectionNotifier;->this$0:Lcom/car/launchercommon/TwoWayAdapterView;

    invoke-static {v0}, Lcom/car/launchercommon/TwoWayAdapterView;->access$200(Lcom/car/launchercommon/TwoWayAdapterView;)V

    goto :goto_0
.end method
