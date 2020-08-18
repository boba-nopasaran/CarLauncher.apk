.class Lcom/car/launchercommon/LaunchGpsActivity$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "LaunchGpsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/LaunchGpsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAdapter"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mIconSize:I

.field mInflater:Landroid/view/LayoutInflater;

.field mListMapItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/launchercommon/LaunchGpsActivity$MapItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/car/launchercommon/LaunchGpsActivity;


# direct methods
.method public constructor <init>(Lcom/car/launchercommon/LaunchGpsActivity;Landroid/content/Context;)V
    .locals 32

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/launchercommon/LaunchGpsActivity$MyAdapter;->this$0:Lcom/car/launchercommon/LaunchGpsActivity;

    invoke-direct/range {p0 .. p0}, Landroid/widget/BaseAdapter;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/launchercommon/LaunchGpsActivity$MyAdapter;->mContext:Landroid/content/Context;

    invoke-static/range {p2 .. p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/launchercommon/LaunchGpsActivity$MyAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/launchercommon/LaunchGpsActivity$MyAdapter;->mListMapItems:Ljava/util/ArrayList;

    const-string v29, "activity"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/LaunchGpsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/car/launchercommon/LaunchGpsActivity$MyAdapter;->mIconSize:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/LaunchGpsActivity$MyAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/LaunchGpsActivity$MyAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/car/common/CarUtil;->getGpsApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v26

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    new-instance v29, Landroid/content/ComponentName;

    const-string v30, "com.navngo.igo.javaclient"

    const-string v31, "com.navngo.igo.javaclient.MainActivity"

    invoke-direct/range {v29 .. v31}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v29, 0x10000

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v10, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v29

    if-eqz v29, :cond_0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    new-instance v29, Landroid/content/ComponentName;

    const-string v30, "com.navitel"

    const-string v31, "com.navitel.Navitel"

    invoke-direct/range {v29 .. v31}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v29, 0x10000

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v12, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v21

    if-eqz v21, :cond_1

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v29

    if-eqz v29, :cond_1

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    new-instance v29, Landroid/content/ComponentName;

    const-string v30, "com.navitel"

    const-string v31, "com.navitel.content.activity.Prepare"

    invoke-direct/range {v29 .. v31}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v29, 0x10000

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v22

    if-eqz v22, :cond_2

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v29

    if-eqz v29, :cond_2

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    new-instance v29, Landroid/content/ComponentName;

    const-string v30, "com.navitelnavigator"

    const-string v31, "com.navitelnavigator.Navitel"

    invoke-direct/range {v29 .. v31}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v29, 0x10000

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v23

    if-eqz v23, :cond_3

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v29

    if-eqz v29, :cond_3

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    new-instance v29, Landroid/content/ComponentName;

    const-string v30, "com.tencent.wecarnavi"

    const-string v31, "com.tencent.wecarnavi.auto.LauncherActivity"

    invoke-direct/range {v29 .. v31}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v29, 0x10000

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v11, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v20

    if-eqz v20, :cond_4

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v29

    if-eqz v29, :cond_4

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    const-string v29, "cn.jyuntech.map"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/car/launchercommon/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    new-instance v29, Landroid/content/ComponentName;

    const-string v30, "cn.jyuntech.map"

    const-string v31, "cn.jyuntech.logo.MainActivity"

    invoke-direct/range {v29 .. v31}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v29, 0x10000

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v15, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v28

    if-eqz v28, :cond_5

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v29

    if-eqz v29, :cond_5

    if-nez v3, :cond_5

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    new-instance v29, Landroid/content/ComponentName;

    const-string v30, "com.chartcross.gpstestplus"

    const-string v31, "com.chartcross.gpstestplus.GPSTestPlus"

    invoke-direct/range {v29 .. v31}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v29, 0x10000

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v9, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v27

    if-eqz v27, :cond_6

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v29

    if-eqz v29, :cond_6

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    new-instance v29, Landroid/content/ComponentName;

    const-string v30, "com.car.gpstest"

    const-string v31, "com.car.gpstest.YgpsActivity"

    invoke-direct/range {v29 .. v31}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v29, 0x10000

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v9, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v29

    if-eqz v29, :cond_7

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    if-eqz v26, :cond_9

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v29

    if-eqz v29, :cond_9

    const/4 v7, 0x0

    :goto_0
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v7, v0, :cond_9

    move-object/from16 v0, v26

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    new-instance v17, Lcom/car/launchercommon/LaunchGpsActivity$MapItem;

    invoke-direct/range {v17 .. v17}, Lcom/car/launchercommon/LaunchGpsActivity$MapItem;-><init>()V

    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/car/launchercommon/LaunchGpsActivity;->access$300(Lcom/car/launchercommon/LaunchGpsActivity;)Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_8

    invoke-static/range {p1 .. p1}, Lcom/car/launchercommon/LaunchGpsActivity;->access$300(Lcom/car/launchercommon/LaunchGpsActivity;)Ljava/lang/String;

    move-result-object v29

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "/"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_8

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/car/launchercommon/LaunchGpsActivity;->access$002(Lcom/car/launchercommon/LaunchGpsActivity;I)I

    :cond_8
    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v0, v25

    invoke-direct {v5, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v25}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v18

    const/high16 v29, 0x10200000

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v29, 0x10200000

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/car/launchercommon/LaunchGpsActivity$MapItem;->intent:Landroid/content/Intent;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/car/launchercommon/LaunchGpsActivity$MapItem;->launchIntent:Landroid/content/Intent;

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/car/launchercommon/LaunchGpsActivity$MapItem;->name:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/car/launchercommon/LaunchGpsActivity$MapItem;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/LaunchGpsActivity$MyAdapter;->mListMapItems:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private final bindView(Landroid/view/View;Lcom/car/launchercommon/LaunchGpsActivity$MapItem;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/launchercommon/LaunchGpsActivity$ViewHolder;

    iget-object v1, v0, Lcom/car/launchercommon/LaunchGpsActivity$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/car/launchercommon/LaunchGpsActivity$MapItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/car/launchercommon/LaunchGpsActivity$ViewHolder;->text2:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/car/launchercommon/LaunchGpsActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p2, Lcom/car/launchercommon/LaunchGpsActivity$MapItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/LaunchGpsActivity$MyAdapter;->mListMapItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/LaunchGpsActivity$MyAdapter;->mListMapItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/LaunchGpsActivity$MyAdapter;->mListMapItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/LaunchGpsActivity$MyAdapter;->mListMapItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/LaunchGpsActivity$MyAdapter;->mListMapItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/LaunchGpsActivity$MyAdapter;->mListMapItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    iget-object v4, p0, Lcom/car/launchercommon/LaunchGpsActivity$MyAdapter;->mListMapItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/launchercommon/LaunchGpsActivity$MapItem;

    if-nez p2, :cond_0

    iget-object v4, p0, Lcom/car/launchercommon/LaunchGpsActivity$MyAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x10900ac

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    new-instance v0, Lcom/car/launchercommon/LaunchGpsActivity$ViewHolder;

    invoke-direct {v0, v3}, Lcom/car/launchercommon/LaunchGpsActivity$ViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/car/launchercommon/LaunchGpsActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v4, p0, Lcom/car/launchercommon/LaunchGpsActivity$MyAdapter;->mIconSize:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    invoke-direct {p0, v3, v1}, Lcom/car/launchercommon/LaunchGpsActivity$MyAdapter;->bindView(Landroid/view/View;Lcom/car/launchercommon/LaunchGpsActivity$MapItem;)V

    return-object v3

    :cond_0
    move-object v3, p2

    goto :goto_0
.end method
