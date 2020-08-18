.class public Lcom/car/launchercommon/LaunchGpsActivity;
.super Landroid/app/Activity;
.source "LaunchGpsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/launchercommon/LaunchGpsActivity$MapItem;,
        Lcom/car/launchercommon/LaunchGpsActivity$ViewHolder;,
        Lcom/car/launchercommon/LaunchGpsActivity$MyAdapter;
    }
.end annotation


# static fields
.field private static final CONFIG:Ljava/lang/String; = "gps_config"

.field private static final CONFIG_GPS_DEFAULT:Ljava/lang/String; = "config_gps_default"

.field public static final RESET_MAPS:Ljava/lang/String; = "reset_maps"

.field private static final TAG:Ljava/lang/String; = "LC.LaunchGpsActivity"


# instance fields
.field private mAlwaysButton:Landroid/widget/Button;

.field private mDefaultComponent:Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private mMyAdapter:Lcom/car/launchercommon/LaunchGpsActivity$MyAdapter;

.field private mOnceButton:Landroid/widget/Button;

.field private mSelectIndex:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/car/launchercommon/LaunchGpsActivity;)I
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mSelectIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/car/launchercommon/LaunchGpsActivity;I)I
    .locals 0

    iput p1, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mSelectIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/car/launchercommon/LaunchGpsActivity;)Lcom/car/launchercommon/LaunchGpsActivity$MyAdapter;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mMyAdapter:Lcom/car/launchercommon/LaunchGpsActivity$MyAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/car/launchercommon/LaunchGpsActivity;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/car/launchercommon/LaunchGpsActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mDefaultComponent:Ljava/lang/String;

    return-object v0
.end method

.method private launchDefaultMaps()V
    .locals 10

    invoke-virtual {p0}, Lcom/car/launchercommon/LaunchGpsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v8, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mDefaultComponent:Ljava/lang/String;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    array-length v8, v7

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    const/4 v8, 0x0

    aget-object v5, v7, v8

    const/4 v8, 0x1

    aget-object v0, v7, v8

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {p0, v3}, Lcom/car/launchercommon/Util;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/car/launchercommon/LaunchGpsActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v8, 0x10200000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v8, 0x10000

    invoke-virtual {v4, v2, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {p0, v2}, Lcom/car/launchercommon/Util;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/car/launchercommon/LaunchGpsActivity;->finish()V

    goto :goto_0
.end method

.method public static setDefaultMap(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v1, "sys.default.map"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.set.navi.app"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "navi_app_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15

    const v0, 0x10302d2

    invoke-virtual {p0, v0}, Lcom/car/launchercommon/LaunchGpsActivity;->setTheme(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/car/launchercommon/LaunchGpsActivity;->requestWindowFeature(I)Z

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x10900ae

    invoke-virtual {p0, v0}, Lcom/car/launchercommon/LaunchGpsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/car/launchercommon/LaunchGpsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mSelectIndex:I

    const-string v0, "gps_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/car/launchercommon/LaunchGpsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "config_gps_default"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mDefaultComponent:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/car/launchercommon/LaunchGpsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "reset_maps"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mDefaultComponent:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mDefaultComponent:Ljava/lang/String;

    const-string v1, "/always"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/car/launchercommon/LaunchGpsActivity;->launchDefaultMaps()V

    :cond_0
    invoke-virtual {p0}, Lcom/car/launchercommon/LaunchGpsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040475

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    const-string v0, "LC.LaunchGpsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcom/car/launchercommon/LaunchGpsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x1020369

    invoke-virtual {p0, v0}, Lcom/car/launchercommon/LaunchGpsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/car/launchercommon/LaunchGpsActivity$MyAdapter;

    invoke-direct {v0, p0, p0}, Lcom/car/launchercommon/LaunchGpsActivity$MyAdapter;-><init>(Lcom/car/launchercommon/LaunchGpsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mMyAdapter:Lcom/car/launchercommon/LaunchGpsActivity$MyAdapter;

    iget-object v0, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mMyAdapter:Lcom/car/launchercommon/LaunchGpsActivity$MyAdapter;

    invoke-virtual {v0}, Lcom/car/launchercommon/LaunchGpsActivity$MyAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mSelectIndex:I

    iget-object v0, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mMyAdapter:Lcom/car/launchercommon/LaunchGpsActivity$MyAdapter;

    iget v1, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mSelectIndex:I

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/LaunchGpsActivity$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/car/launchercommon/LaunchGpsActivity$MapItem;

    if-eqz v11, :cond_1

    iget-object v0, v11, Lcom/car/launchercommon/LaunchGpsActivity$MapItem;->launchIntent:Landroid/content/Intent;

    if-eqz v0, :cond_4

    iget-object v0, v11, Lcom/car/launchercommon/LaunchGpsActivity$MapItem;->launchIntent:Landroid/content/Intent;

    :goto_0
    invoke-static {p0, v0}, Lcom/car/launchercommon/Util;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v10, v11, Lcom/car/launchercommon/LaunchGpsActivity$MapItem;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v0, "config_gps_default"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/once"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/car/launchercommon/LaunchGpsActivity;->setDefaultMap(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/car/launchercommon/LaunchGpsActivity;->finish()V

    :cond_2
    iget-object v0, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mMyAdapter:Lcom/car/launchercommon/LaunchGpsActivity$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x102035a

    invoke-virtual {p0, v0}, Lcom/car/launchercommon/LaunchGpsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v0, 0x102036b

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mAlwaysButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mAlwaysButton:Landroid/widget/Button;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v0, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mAlwaysButton:Landroid/widget/Button;

    new-instance v1, Lcom/car/launchercommon/LaunchGpsActivity$1;

    invoke-direct {v1, p0}, Lcom/car/launchercommon/LaunchGpsActivity$1;-><init>(Lcom/car/launchercommon/LaunchGpsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x102036a

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mOnceButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mOnceButton:Landroid/widget/Button;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v0, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mOnceButton:Landroid/widget/Button;

    new-instance v1, Lcom/car/launchercommon/LaunchGpsActivity$2;

    invoke-direct {v1, p0}, Lcom/car/launchercommon/LaunchGpsActivity$2;-><init>(Lcom/car/launchercommon/LaunchGpsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mSelectIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mSelectIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mSelectIndex:I

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/car/launchercommon/LaunchGpsActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, v11, Lcom/car/launchercommon/LaunchGpsActivity$MapItem;->intent:Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iput p3, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mSelectIndex:I

    iget-object v0, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/car/launchercommon/LaunchGpsActivity;->mSelectIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    :cond_0
    return-void
.end method
