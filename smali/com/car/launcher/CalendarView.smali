.class public Lcom/car/launcher/CalendarView;
.super Landroid/widget/TextView;
.source "CalendarView.java"


# static fields
.field private static final FIRST_SELF_REFRESH_TIME_INTERVA:I = 0xf618

.field private static final M12:Ljava/lang/String; = "h:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field private static final REFRESH_TIME_INTERVA:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "LC.CalendarView"


# instance fields
.field private final MSG_REFRESH_TIME:I

.field private final MSG_REFRESH_TIME_SELF:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCalendar:Ljava/util/Calendar;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mMontharray:[Ljava/lang/String;

.field private mWeekarray:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/launcher/CalendarView;->MSG_REFRESH_TIME:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/car/launcher/CalendarView;->MSG_REFRESH_TIME_SELF:I

    new-instance v0, Lcom/car/launcher/CalendarView$1;

    invoke-direct {v0, p0}, Lcom/car/launcher/CalendarView$1;-><init>(Lcom/car/launcher/CalendarView;)V

    iput-object v0, p0, Lcom/car/launcher/CalendarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/car/launcher/CalendarView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/car/launcher/CalendarView;->MSG_REFRESH_TIME:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/car/launcher/CalendarView;->MSG_REFRESH_TIME_SELF:I

    new-instance v0, Lcom/car/launcher/CalendarView$1;

    invoke-direct {v0, p0}, Lcom/car/launcher/CalendarView$1;-><init>(Lcom/car/launcher/CalendarView;)V

    iput-object v0, p0, Lcom/car/launcher/CalendarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/car/launcher/CalendarView;->init()V

    iget-object v0, p0, Lcom/car/launcher/CalendarView;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/launcher/CalendarView;->MSG_REFRESH_TIME:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/car/launcher/CalendarView;->MSG_REFRESH_TIME_SELF:I

    new-instance v0, Lcom/car/launcher/CalendarView$1;

    invoke-direct {v0, p0}, Lcom/car/launcher/CalendarView$1;-><init>(Lcom/car/launcher/CalendarView;)V

    iput-object v0, p0, Lcom/car/launcher/CalendarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/car/launcher/CalendarView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/car/launcher/CalendarView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/car/launcher/CalendarView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/launcher/CalendarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/launcher/CalendarView;->speechTime()V

    return-void
.end method

.method private speechTime()V
    .locals 1

    new-instance v0, Lcom/car/launcher/CalendarView$4;

    invoke-direct {v0, p0}, Lcom/car/launcher/CalendarView$4;-><init>(Lcom/car/launcher/CalendarView;)V

    invoke-virtual {v0}, Lcom/car/launcher/CalendarView$4;->start()V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/car/launcher/CalendarView;->updateClock()V

    return-void
.end method

.method init()V
    .locals 2

    invoke-virtual {p0}, Lcom/car/launcher/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/car/launcher/CalendarView;->mWeekarray:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/car/launcher/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/car/launcher/CalendarView;->mMontharray:[Ljava/lang/String;

    new-instance v0, Lcom/car/launcher/CalendarView$2;

    invoke-direct {v0, p0}, Lcom/car/launcher/CalendarView$2;-><init>(Lcom/car/launcher/CalendarView;)V

    invoke-virtual {p0, v0}, Lcom/car/launcher/CalendarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/car/launcher/CalendarView;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/car/launcher/CalendarView;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/car/launcher/CalendarView;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/car/launcher/CalendarView;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/car/launcher/CalendarView$3;

    invoke-direct {v0, p0}, Lcom/car/launcher/CalendarView$3;-><init>(Lcom/car/launcher/CalendarView;)V

    iput-object v0, p0, Lcom/car/launcher/CalendarView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    const-string v0, "LC.CalendarView"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/car/launcher/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/car/launcher/CalendarView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/car/launcher/CalendarView;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    const-string v0, "LC.CalendarView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/car/launcher/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/car/launcher/CalendarView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/car/launcher/CalendarView;->updateClock()V

    return-void
.end method

.method updateClock()V
    .locals 11

    const/4 v10, 0x5

    const/4 v9, 0x2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    iput-object v6, p0, Lcom/car/launcher/CalendarView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Lcom/car/launcher/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/car/launcher/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060012

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/car/launcher/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060013

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, " "

    if-nez v2, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/car/launcher/CalendarView;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_0
    iget-object v6, p0, Lcom/car/launcher/CalendarView;->mCalendar:Ljava/util/Calendar;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    invoke-virtual {p0}, Lcom/car/launcher/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "zh"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/car/launcher/CalendarView;->mMontharray:[Ljava/lang/String;

    iget-object v8, p0, Lcom/car/launcher/CalendarView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/car/launcher/CalendarView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/car/launcher/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060016

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/car/launcher/CalendarView;->mWeekarray:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/car/launcher/CalendarView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    move-object v3, v0

    goto/16 :goto_0

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/car/launcher/CalendarView;->mWeekarray:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/car/launcher/CalendarView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/car/launcher/CalendarView;->mMontharray:[Ljava/lang/String;

    iget-object v8, p0, Lcom/car/launcher/CalendarView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method
