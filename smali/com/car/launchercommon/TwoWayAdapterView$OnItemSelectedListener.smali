.class public interface abstract Lcom/car/launchercommon/TwoWayAdapterView$OnItemSelectedListener;
.super Ljava/lang/Object;
.source "TwoWayAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/TwoWayAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnItemSelectedListener"
.end annotation


# virtual methods
.method public abstract onItemSelected(Lcom/car/launchercommon/TwoWayAdapterView;Landroid/view/View;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/car/launchercommon/TwoWayAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation
.end method

.method public abstract onNothingSelected(Lcom/car/launchercommon/TwoWayAdapterView;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/car/launchercommon/TwoWayAdapterView",
            "<*>;)V"
        }
    .end annotation
.end method
