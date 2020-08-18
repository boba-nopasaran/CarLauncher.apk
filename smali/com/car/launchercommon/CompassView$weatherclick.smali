.class Lcom/car/launchercommon/CompassView$weatherclick;
.super Ljava/lang/Object;
.source "boba"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/launchercommon/CompassView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/launchercommon/CompassView;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/CompassView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/car/launchercommon/CompassView;

    iput-object p1, p0, Lcom/car/launchercommon/CompassView$weatherclick;->this$0:Lcom/car/launchercommon/CompassView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    iget-object v0, p0, Lcom/car/launchercommon/CompassView$weatherclick;->this$0:Lcom/car/launchercommon/CompassView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/CompassView;->getWeather(I)V

    return-void
.end method
