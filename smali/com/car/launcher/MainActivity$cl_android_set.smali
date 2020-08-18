.class Lcom/car/launcher/MainActivity$cl_android_set;
.super Ljava/lang/Object;
.source "boba"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/launcher/MainActivity;->adjustForLeftBarAndRightBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/launcher/MainActivity;


# direct methods
.method constructor <init>(Lcom/car/launcher/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launcher/MainActivity$cl_android_set;->this$0:Lcom/car/launcher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/car/launcher/MainActivity$cl_android_set;->this$0:Lcom/car/launcher/MainActivity;

    invoke-static {v0}, Lcom/car/launcher/StartsUtil;->startAndroidSettings(Landroid/content/Context;)V

    const v0, 1
	
	return v0
.end method
