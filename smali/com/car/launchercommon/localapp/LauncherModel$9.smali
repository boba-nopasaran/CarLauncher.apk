.class final Lcom/car/launchercommon/localapp/LauncherModel$9;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/launchercommon/localapp/LauncherModel;->getWidgetNameComparator()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/appwidget/AppWidgetProviderInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$collator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Ljava/text/Collator;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/localapp/LauncherModel$9;->val$collator:Ljava/text/Collator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Landroid/appwidget/AppWidgetProviderInfo;Landroid/appwidget/AppWidgetProviderInfo;)I
    .locals 3

    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel$9;->val$collator:Ljava/text/Collator;

    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/appwidget/AppWidgetProviderInfo;

    check-cast p2, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p0, p1, p2}, Lcom/car/launchercommon/localapp/LauncherModel$9;->compare(Landroid/appwidget/AppWidgetProviderInfo;Landroid/appwidget/AppWidgetProviderInfo;)I

    move-result v0

    return v0
.end method
