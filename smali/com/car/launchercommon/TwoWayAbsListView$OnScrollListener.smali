.class public interface abstract Lcom/car/launchercommon/TwoWayAbsListView$OnScrollListener;
.super Ljava/lang/Object;
.source "TwoWayAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/TwoWayAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnScrollListener"
.end annotation


# static fields
.field public static final SCROLL_STATE_FLING:I = 0x2

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_TOUCH_SCROLL:I = 0x1


# virtual methods
.method public abstract onScroll(Lcom/car/launchercommon/TwoWayAbsListView;III)V
.end method

.method public abstract onScrollStateChanged(Lcom/car/launchercommon/TwoWayAbsListView;I)V
.end method
