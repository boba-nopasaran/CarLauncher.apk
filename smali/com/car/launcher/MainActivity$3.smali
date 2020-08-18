.class Lcom/car/launcher/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/launcher/MainActivity;->initWeatherUI()V
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

    iput-object p1, p0, Lcom/car/launcher/MainActivity$3;->this$0:Lcom/car/launcher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/car/launcher/MainActivity$3;->this$0:Lcom/car/launcher/MainActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/car/launcher/MainActivity;->mForceRefresh:Z

    iget-object v0, p0, Lcom/car/launcher/MainActivity$3;->this$0:Lcom/car/launcher/MainActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.car.weather.refresh"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/car/launcher/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
