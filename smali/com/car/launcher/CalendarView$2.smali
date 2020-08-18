.class Lcom/car/launcher/CalendarView$2;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/launcher/CalendarView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/launcher/CalendarView;


# direct methods
.method constructor <init>(Lcom/car/launcher/CalendarView;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launcher/CalendarView$2;->this$0:Lcom/car/launcher/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "LC.CalendarView"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/launcher/CalendarView$2;->this$0:Lcom/car/launcher/CalendarView;

    invoke-static {v0}, Lcom/car/launcher/CalendarView;->access$100(Lcom/car/launcher/CalendarView;)V

    return-void
.end method
