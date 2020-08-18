.class public Lcom/car/launcher/TimeView;
.super Landroid/widget/TextView;
.source "TimeView.java"


# static fields
.field private static final FIRST_SELF_REFRESH_TIME_INTERVA:I = 0xf618

.field private static final M12:Ljava/lang/String; = "h:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field private static final REFRESH_TIME_INTERVA:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "LC.TimeView"


# instance fields
.field private final MSG_REFRESH_TIME:I

.field private final MSG_REFRESH_TIME_SELF:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/launcher/TimeView;->MSG_REFRESH_TIME:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/car/launcher/TimeView;->MSG_REFRESH_TIME_SELF:I

    new-instance v0, Lcom/car/launcher/TimeView$1;

    invoke-direct {v0, p0}, Lcom/car/launcher/TimeView$1;-><init>(Lcom/car/launcher/TimeView;)V

    iput-object v0, p0, Lcom/car/launcher/TimeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/car/launcher/TimeView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/launcher/TimeView;->MSG_REFRESH_TIME:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/car/launcher/TimeView;->MSG_REFRESH_TIME_SELF:I

    new-instance v0, Lcom/car/launcher/TimeView$1;

    invoke-direct {v0, p0}, Lcom/car/launcher/TimeView$1;-><init>(Lcom/car/launcher/TimeView;)V

    iput-object v0, p0, Lcom/car/launcher/TimeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/car/launcher/TimeView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/car/launcher/TimeView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/car/launcher/TimeView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/launcher/TimeView;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/car/launcher/TimeView;->updateClock()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/car/launcher/TimeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/launcher/TimeView;->speechTime()V

    return-void
.end method

.method private speechTime()V
    .locals 1

    new-instance v0, Lcom/car/launcher/TimeView$3;

    invoke-direct {v0, p0}, Lcom/car/launcher/TimeView$3;-><init>(Lcom/car/launcher/TimeView;)V

    invoke-virtual {v0}, Lcom/car/launcher/TimeView$3;->start()V

    return-void
.end method

.method private updateClock()Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/car/launcher/TimeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v3, "kk:mm"

    :goto_0
    invoke-static {v3, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/car/launcher/TimeView;->setText(Ljava/lang/CharSequence;)V

    return-object v2

    :cond_0
    const-string v3, "h:mm"

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    invoke-direct {p0}, Lcom/car/launcher/TimeView;->updateClock()Ljava/lang/String;

    return-void
.end method

.method init()V
    .locals 4

    new-instance v0, Lcom/car/launcher/TimeView$2;

    invoke-direct {v0, p0}, Lcom/car/launcher/TimeView$2;-><init>(Lcom/car/launcher/TimeView;)V

    invoke-virtual {p0, v0}, Lcom/car/launcher/TimeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/car/launcher/TimeView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/car/launcher/TimeView$4;

    invoke-direct {v1, p0}, Lcom/car/launcher/TimeView$4;-><init>(Lcom/car/launcher/TimeView;)V

    iput-object v1, p0, Lcom/car/launcher/TimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/car/launcher/TimeView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/car/launcher/TimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/car/launcher/TimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/car/launcher/TimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    invoke-direct {p0}, Lcom/car/launcher/TimeView;->updateClock()Ljava/lang/String;

    return-void
.end method
