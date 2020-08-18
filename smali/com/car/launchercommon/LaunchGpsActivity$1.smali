.class Lcom/car/launchercommon/LaunchGpsActivity$1;
.super Ljava/lang/Object;
.source "LaunchGpsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/launchercommon/LaunchGpsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/launchercommon/LaunchGpsActivity;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/LaunchGpsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/LaunchGpsActivity$1;->this$0:Lcom/car/launchercommon/LaunchGpsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    iget-object v6, p0, Lcom/car/launchercommon/LaunchGpsActivity$1;->this$0:Lcom/car/launchercommon/LaunchGpsActivity;

    invoke-static {v6}, Lcom/car/launchercommon/LaunchGpsActivity;->access$100(Lcom/car/launchercommon/LaunchGpsActivity;)Lcom/car/launchercommon/LaunchGpsActivity$MyAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/car/launchercommon/LaunchGpsActivity$1;->this$0:Lcom/car/launchercommon/LaunchGpsActivity;

    invoke-static {v7}, Lcom/car/launchercommon/LaunchGpsActivity;->access$000(Lcom/car/launchercommon/LaunchGpsActivity;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/car/launchercommon/LaunchGpsActivity$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/car/launchercommon/LaunchGpsActivity$MapItem;

    if-eqz v4, :cond_0

    iget-object v7, p0, Lcom/car/launchercommon/LaunchGpsActivity$1;->this$0:Lcom/car/launchercommon/LaunchGpsActivity;

    iget-object v6, v4, Lcom/car/launchercommon/LaunchGpsActivity$MapItem;->launchIntent:Landroid/content/Intent;

    if-eqz v6, :cond_1

    iget-object v6, v4, Lcom/car/launchercommon/LaunchGpsActivity$MapItem;->launchIntent:Landroid/content/Intent;

    :goto_0
    invoke-static {v7, v6}, Lcom/car/launchercommon/Util;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v3, v4, Lcom/car/launchercommon/LaunchGpsActivity$MapItem;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/car/launchercommon/LaunchGpsActivity$1;->this$0:Lcom/car/launchercommon/LaunchGpsActivity;

    invoke-static {v6}, Lcom/car/launchercommon/LaunchGpsActivity;->access$200(Lcom/car/launchercommon/LaunchGpsActivity;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v6, "config_gps_default"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/always"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v6, p0, Lcom/car/launchercommon/LaunchGpsActivity$1;->this$0:Lcom/car/launchercommon/LaunchGpsActivity;

    invoke-static {v6, v5}, Lcom/car/launchercommon/LaunchGpsActivity;->setDefaultMap(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v6, p0, Lcom/car/launchercommon/LaunchGpsActivity$1;->this$0:Lcom/car/launchercommon/LaunchGpsActivity;

    invoke-virtual {v6}, Lcom/car/launchercommon/LaunchGpsActivity;->finish()V

    return-void

    :cond_1
    iget-object v6, v4, Lcom/car/launchercommon/LaunchGpsActivity$MapItem;->intent:Landroid/content/Intent;

    goto :goto_0
.end method
