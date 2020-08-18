.class public Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;
.super Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;
.source "BaiduASRDigitalDialog.java"

# interfaces
.implements Lcom/baidu/voicerecognition/android/NoProGuard;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation


# static fields
.field private static final ENGINE_TYPE_OFFLINE:I = 0x1

.field private static final ENGINE_TYPE_ONLINE:I = 0x0

.field private static final ERROR_NETWORK_UNUSABLE:I = 0x90000

.field private static final KEY_BTN_CANCEL:Ljava/lang/String; = "btn.cancel"

.field private static final KEY_BTN_DONE:Ljava/lang/String; = "btn.done"

.field private static final KEY_BTN_HELP:Ljava/lang/String; = "btn.help"

.field private static final KEY_BTN_RETRY:Ljava/lang/String; = "btn.retry"

.field private static final KEY_BTN_START:Ljava/lang/String; = "btn.start"

.field private static final KEY_TIPS_COPYRIGHT:Ljava/lang/String; = "tips.copyright"

.field private static final KEY_TIPS_ERROR_DECODER:Ljava/lang/String; = "tips.error.decoder"

.field private static final KEY_TIPS_ERROR_INTERNAL:Ljava/lang/String; = "tips.error.internal"

.field private static final KEY_TIPS_ERROR_NETWORK:Ljava/lang/String; = "tips.error.network"

.field private static final KEY_TIPS_ERROR_NETWORK_UNUSABLE:Ljava/lang/String; = "tips.error.network_unusable"

.field private static final KEY_TIPS_ERROR_SILENT:Ljava/lang/String; = "tips.error.silent"

.field private static final KEY_TIPS_ERROR_SPEECH_TOO_LONG:Ljava/lang/String; = "tips.error.speech_too_long"

.field private static final KEY_TIPS_ERROR_SPEECH_TOO_SHORT:Ljava/lang/String; = "tips.error.speech_too_short"

.field private static final KEY_TIPS_HELP_TITLE:Ljava/lang/String; = "tips.help.title"

.field private static final KEY_TIPS_PREFIX:Ljava/lang/String; = "tips.suggestion.prefix"

.field private static final KEY_TIPS_STATE_INITIALIZING:Ljava/lang/String; = "tips.state.initializing"

.field private static final KEY_TIPS_STATE_LISTENING:Ljava/lang/String; = "tips.state.listening"

.field private static final KEY_TIPS_STATE_READY:Ljava/lang/String; = "tips.state.ready"

.field private static final KEY_TIPS_STATE_RECOGNIZING:Ljava/lang/String; = "tips.state.recognizing"

.field private static final KEY_TIPS_STATE_WAIT:Ljava/lang/String; = "tips.state.wait"

.field private static final KEY_TIPS_WAITNET:Ljava/lang/String; = "tips.wait.net"

.field public static final PARAM_DIALOG_THEME:Ljava/lang/String; = "BaiduASRDigitalDialog_theme"

.field public static final PARAM_SHOW_HELP_ON_SILENT:Ljava/lang/String; = "BaiduASRDigitalDialog_showHelp"

.field public static final PARAM_SHOW_TIP:Ljava/lang/String; = "BaiduASRDigitalDialog_showTip"

.field public static final PARAM_SHOW_TIPS_ON_START:Ljava/lang/String; = "BaiduASRDigitalDialog_showTips"

.field public static final PARAM_TIPS:Ljava/lang/String; = "BaiduASRDigitalDialog_tips"

.field private static final TAG:Ljava/lang/String; = "BSDigitalDialog"

.field public static final THEME_BLUE_DEEPBG:I = 0x2000001

.field public static final THEME_BLUE_LIGHTBG:I = 0x1000001

.field public static final THEME_GREEN_DEEPBG:I = 0x2000003

.field public static final THEME_GREEN_LIGHTBG:I = 0x1000003

.field public static final THEME_ORANGE_DEEPBG:I = 0x2000004

.field public static final THEME_ORANGE_LIGHTBG:I = 0x1000004

.field public static final THEME_RED_DEEPBG:I = 0x2000002

.field public static final THEME_RED_LIGHTBG:I = 0x1000002

.field private static final mUrl:Ljava/lang/String; = "http://developer.baidu.com/static/community/servers/voice/sdk.html"


# instance fields
.field private final BAR_ONEND:I

.field private final BAR_ONFINISH:I

.field private SHOW_SUGGESTION_INTERVAL:J

.field barHandler:Landroid/os/Handler;

.field private delayTime:I

.field private mBg:Landroid/graphics/drawable/Drawable;

.field private mButtonBg:Landroid/graphics/drawable/StateListDrawable;

.field private mButtonColor:Landroid/content/res/ColorStateList;

.field private mButtonReverseColor:Landroid/content/res/ColorStateList;

.field private mCancelBtn:Landroid/widget/ImageButton;

.field private mCancelTextView:Landroid/widget/TextView;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mCompleteTextView:Landroid/widget/TextView;

.field private mContentRoot:Landroid/view/View;

.field private mCopyRightColor:I

.field private volatile mEngineType:I

.field private mErrorCode:I

.field private mErrorLayout:Landroid/view/View;

.field private mErrorRes:Ljava/lang/CharSequence;

.field private mErrorTipsColor:I

.field private mErrorTipsTextView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHelpBtn:Landroid/widget/ImageButton;

.field private mHelpButtonBg:Landroid/graphics/drawable/StateListDrawable;

.field private mHelpView:Landroid/view/View;

.field private mInputEdit:Landroid/widget/EditText;

.field private mLableRes:Ljava/util/ResourceBundle;

.field private mLeftButtonBg:Landroid/graphics/drawable/StateListDrawable;

.field private mLogoText1:Landroid/widget/TextView;

.field private mLogoText2:Landroid/widget/TextView;

.field private mMainLayout:Landroid/view/View;

.field mMessage:Landroid/os/Message;

.field private mPrefix:Ljava/lang/String;

.field private mRandom:Ljava/util/Random;

.field private mRecognizingView:Landroid/view/View;

.field private mRetryTextView:Landroid/widget/TextView;

.field private mRightButtonBg:Landroid/graphics/drawable/StateListDrawable;

.field private mSDKProgressBar:Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;

.field private mShowSuggestionTip:Ljava/lang/Runnable;

.field private mStateTipsColor:I

.field private mSuggestionTips:Landroid/widget/TextView;

.field private mSuggestionTips2:Landroid/widget/TextView;

.field private mTheme:I

.field private mTipsAdapter:Lcom/baidu/voicerecognition/android/ui/TipsAdapter;

.field private mTipsTextView:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mVoiceWaveView:Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;

.field private mWaitNetTextView:Landroid/widget/TextView;

.field private step:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mErrorRes:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mContentRoot:Landroid/view/View;

    iput v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->BAR_ONEND:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->BAR_ONFINISH:I

    iput v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->step:I

    iput v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->delayTime:I

    iput v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mEngineType:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mMessage:Landroid/os/Message;

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mButtonBg:Landroid/graphics/drawable/StateListDrawable;

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mLeftButtonBg:Landroid/graphics/drawable/StateListDrawable;

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mRightButtonBg:Landroid/graphics/drawable/StateListDrawable;

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mHelpButtonBg:Landroid/graphics/drawable/StateListDrawable;

    iput v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mCopyRightColor:I

    iput v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mStateTipsColor:I

    iput v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mErrorTipsColor:I

    iput v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTheme:I

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->SHOW_SUGGESTION_INTERVAL:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mRandom:Ljava/util/Random;

    new-instance v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$1;

    invoke-direct {v0, p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$1;-><init>(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)V

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mShowSuggestionTip:Ljava/lang/Runnable;

    new-instance v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$2;

    invoke-direct {v0, p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$2;-><init>(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)V

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;

    invoke-direct {v0, p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;-><init>(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)V

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->barHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->showSuggestionTips()V

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mCompleteTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)I
    .locals 1

    iget v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mEngineType:I

    return v0
.end method

.method static synthetic access$1100(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mWaitNetTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)I
    .locals 1

    iget v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mErrorCode:I

    return v0
.end method

.method static synthetic access$200(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)I
    .locals 1

    iget v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->step:I

    return v0
.end method

.method static synthetic access$302(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;I)I
    .locals 0

    iput p1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->step:I

    return p1
.end method

.method static synthetic access$400(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)I
    .locals 1

    iget v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->delayTime:I

    return v0
.end method

.method static synthetic access$402(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;I)I
    .locals 0

    iput p1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->delayTime:I

    return p1
.end method

.method static synthetic access$500(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mSDKProgressBar:Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mCancelTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->showSuggestions()V

    return-void
.end method

.method static synthetic access$800(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mInputEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTipsTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private adjustThemeColor()V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTheme:I

    sparse-switch v3, :sswitch_data_0

    :goto_0
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-static {v0, v4, v4, v4, v2}, Lcom/baidu/voicerecognition/android/ui/ColorFilterGenerator;->adjustColor(Landroid/graphics/ColorMatrix;FFFF)V

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iget-object v3, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v3, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mButtonBg:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/StateListDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v3, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mLeftButtonBg:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/StateListDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v3, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mRightButtonBg:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/StateListDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v3, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mSDKProgressBar:Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;

    invoke-virtual {v3, v1}, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->setHsvFilter(Landroid/graphics/ColorFilter;)V

    iget-object v3, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mVoiceWaveView:Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;

    invoke-virtual {v3, v1}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->setHsvFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :sswitch_0
    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const/4 v2, 0x0

    goto :goto_0

    :sswitch_2
    const/high16 v2, -0x3d280000    # -108.0f

    goto :goto_0

    :sswitch_3
    const/high16 v2, -0x3d260000    # -109.0f

    goto :goto_0

    :sswitch_4
    const/high16 v2, 0x43140000    # 148.0f

    goto :goto_0

    :sswitch_5
    const/high16 v2, 0x43170000    # 151.0f

    goto :goto_0

    :sswitch_6
    const/high16 v2, -0x3cce0000    # -178.0f

    goto :goto_0

    :sswitch_7
    const/high16 v2, -0x3cce0000    # -178.0f

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000001 -> :sswitch_0
        0x1000002 -> :sswitch_4
        0x1000003 -> :sswitch_2
        0x1000004 -> :sswitch_6
        0x2000001 -> :sswitch_1
        0x2000002 -> :sswitch_5
        0x2000003 -> :sswitch_3
        0x2000004 -> :sswitch_7
    .end sparse-switch
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mLableRes:Ljava/util/ResourceBundle;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mLableRes:Ljava/util/ResourceBundle;

    invoke-virtual {v2, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "BSDigitalDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get internationalization error key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initResources(I)V
    .locals 20

    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "bdspeech_btn_normal"

    const-string v15, "drawable"

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "bdspeech_btn_pressed"

    const-string v15, "drawable"

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "bdspeech_right_normal"

    const-string v15, "drawable"

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "bdspeech_right_pressed"

    const-string v15, "drawable"

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v1, 0x0

    const/4 v13, 0x3

    new-array v5, v13, [I

    const/4 v13, 0x3

    new-array v6, v13, [I

    invoke-static/range {p1 .. p1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialogTheme;->isDeepStyle(I)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "bdspeech_digital_deep_bg"

    const-string v15, "drawable"

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "bdspeech_left_deep_normal"

    const-string v15, "drawable"

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "bdspeech_left_deep_pressed"

    const-string v15, "drawable"

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "bdspeech_btn_recognizing_deep"

    const-string v15, "drawable"

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v13, 0x0

    const/4 v14, -0x1

    aput v14, v5, v13

    const/4 v13, 0x1

    const v14, -0xb2b2b3

    aput v14, v5, v13

    const/4 v13, 0x2

    const/4 v14, -0x1

    aput v14, v5, v13

    const/4 v13, 0x0

    const/4 v14, -0x1

    aput v14, v6, v13

    const/4 v13, 0x1

    const v14, -0xb2b2b3

    aput v14, v6, v13

    const/4 v13, 0x2

    const/4 v14, -0x1

    aput v14, v6, v13

    const v13, -0xa1a1a0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mCopyRightColor:I

    const v13, -0x39393a

    move-object/from16 v0, p0

    iput v13, v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mStateTipsColor:I

    const v13, -0x181819

    move-object/from16 v0, p0

    iput v13, v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mErrorTipsColor:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mHelpButtonBg:Landroid/graphics/drawable/StateListDrawable;

    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    const v16, 0x10100a7

    aput v16, v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const-string v17, "bdspeech_help_pressed_deep"

    const-string v18, "drawable"

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v16 .. v19}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mHelpButtonBg:Landroid/graphics/drawable/StateListDrawable;

    const/4 v14, 0x0

    new-array v14, v14, [I

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const-string v17, "bdspeech_help_deep"

    const-string v18, "drawable"

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v16 .. v19}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mButtonBg:Landroid/graphics/drawable/StateListDrawable;

    const/4 v14, 0x2

    new-array v14, v14, [I

    fill-array-data v14, :array_0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mButtonBg:Landroid/graphics/drawable/StateListDrawable;

    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    const v16, -0x101009e

    aput v16, v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mButtonBg:Landroid/graphics/drawable/StateListDrawable;

    const/4 v14, 0x0

    new-array v14, v14, [I

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mLeftButtonBg:Landroid/graphics/drawable/StateListDrawable;

    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    const v16, 0x10100a7

    aput v16, v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mLeftButtonBg:Landroid/graphics/drawable/StateListDrawable;

    const/4 v14, 0x0

    new-array v14, v14, [I

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mRightButtonBg:Landroid/graphics/drawable/StateListDrawable;

    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    const v16, 0x10100a7

    aput v16, v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mRightButtonBg:Landroid/graphics/drawable/StateListDrawable;

    const/4 v14, 0x0

    new-array v14, v14, [I

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v13, 0x3

    new-array v12, v13, [[I

    const/4 v13, 0x0

    const/4 v14, 0x2

    new-array v14, v14, [I

    fill-array-data v14, :array_1

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    const v16, -0x101009e

    aput v16, v14, v15

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x1

    new-array v14, v14, [I

    aput-object v14, v12, v13

    new-instance v13, Landroid/content/res/ColorStateList;

    invoke-direct {v13, v12, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mButtonColor:Landroid/content/res/ColorStateList;

    new-instance v13, Landroid/content/res/ColorStateList;

    invoke-direct {v13, v12, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mButtonReverseColor:Landroid/content/res/ColorStateList;

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "bdspeech_digital_bg"

    const-string v15, "drawable"

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "bdspeech_left_normal"

    const-string v15, "drawable"

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "bdspeech_left_pressed"

    const-string v15, "drawable"

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "bdspeech_btn_recognizing"

    const-string v15, "drawable"

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v13, 0x0

    const v14, -0xb8b8b9

    aput v14, v5, v13

    const/4 v13, 0x1

    const v14, -0x171718

    aput v14, v5, v13

    const/4 v13, 0x2

    const v14, -0xb8b8b9

    aput v14, v5, v13

    const/4 v13, 0x0

    const/4 v14, -0x1

    aput v14, v6, v13

    const/4 v13, 0x1

    const v14, -0x414142

    aput v14, v6, v13

    const/4 v13, 0x2

    const/4 v14, -0x1

    aput v14, v6, v13

    const v13, -0x282829

    move-object/from16 v0, p0

    iput v13, v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mCopyRightColor:I

    const v13, -0x969697

    move-object/from16 v0, p0

    iput v13, v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mStateTipsColor:I

    const v13, -0x959596

    move-object/from16 v0, p0

    iput v13, v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mErrorTipsColor:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mHelpButtonBg:Landroid/graphics/drawable/StateListDrawable;

    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    const v16, 0x10100a7

    aput v16, v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const-string v17, "bdspeech_help_pressed_light"

    const-string v18, "drawable"

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v16 .. v19}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mHelpButtonBg:Landroid/graphics/drawable/StateListDrawable;

    const/4 v14, 0x0

    new-array v14, v14, [I

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const-string v17, "bdspeech_help_light"

    const-string v18, "drawable"

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v16 .. v19}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method

.method private initView()V
    .locals 14

    const/4 v13, 0x6

    const/4 v12, 0x1

    const/4 v11, -0x1

    const/4 v10, 0x4

    const v9, 0x7f0c0087

    iget v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTheme:I

    invoke-direct {p0, v4}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->initResources(I)V

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "bdspeech_digital_layout"

    const-string v6, "layout"

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mContentRoot:Landroid/view/View;

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mContentRoot:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mContentRoot:Landroid/view/View;

    const-string v5, "bg_layout"

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mContentRoot:Landroid/view/View;

    const-string v5, "tips_text"

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTipsTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTipsTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mStateTipsColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mContentRoot:Landroid/view/View;

    const-string v5, "tips_wait_net"

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mWaitNetTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mWaitNetTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mWaitNetTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mStateTipsColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mContentRoot:Landroid/view/View;

    const-string v5, "logo_1"

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mLogoText1:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mContentRoot:Landroid/view/View;

    const-string v5, "logo_2"

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mLogoText2:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mLogoText1:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mLogoText2:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mLogoText1:Landroid/widget/TextView;

    iget v5, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mCopyRightColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mLogoText2:Landroid/widget/TextView;

    iget v5, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mCopyRightColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mContentRoot:Landroid/view/View;

    const-string v5, "suggestion_tips"

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mSuggestionTips:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mSuggestionTips:Landroid/widget/TextView;

    iget v5, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mCopyRightColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mContentRoot:Landroid/view/View;

    const-string v5, "suggestion_tips_2"

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mSuggestionTips2:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mSuggestionTips2:Landroid/widget/TextView;

    iget v5, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mCopyRightColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mContentRoot:Landroid/view/View;

    const-string v5, "progress"

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mSDKProgressBar:Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mSDKProgressBar:Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;

    invoke-virtual {v4, v10}, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->setVisibility(I)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mSDKProgressBar:Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;

    iget v5, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTheme:I

    invoke-virtual {v4, v5}, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->setTheme(I)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mContentRoot:Landroid/view/View;

    const-string v5, "speak_complete"

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mCompleteTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mCompleteTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mCompleteTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mButtonBg:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mCompleteTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mButtonReverseColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mContentRoot:Landroid/view/View;

    const-string v5, "cancel_text_btn"

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mCancelTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mCancelTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mCancelTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mLeftButtonBg:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mCancelTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mButtonColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mContentRoot:Landroid/view/View;

    const-string v5, "retry_text_btn"

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mRetryTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mRetryTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mRetryTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mRightButtonBg:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mRetryTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mButtonReverseColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mContentRoot:Landroid/view/View;

    const-string v5, "error_tips"

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mErrorTipsTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mErrorTipsTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mErrorTipsColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "bdspeech_close_v2"

    const-string v7, "drawable"

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mContentRoot:Landroid/view/View;

    const-string v5, "cancel_btn"

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mCancelBtn:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mCancelBtn:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mCancelBtn:Landroid/widget/ImageButton;

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mContentRoot:Landroid/view/View;

    const-string v5, "help_btn"

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mHelpBtn:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mHelpBtn:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mHelpBtn:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mHelpButtonBg:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mContentRoot:Landroid/view/View;

    const-string v5, "error_reflect"

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mErrorLayout:Landroid/view/View;

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mErrorLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mContentRoot:Landroid/view/View;

    const-string v5, "main_reflect"

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setId(I)V

    invoke-virtual {v1, v13, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0x8

    invoke-virtual {v1, v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mContentRoot:Landroid/view/View;

    const-string v5, "voicewave_view"

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mVoiceWaveView:Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mVoiceWaveView:Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;

    iget v5, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTheme:I

    invoke-virtual {v4, v5}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->setThemeStyle(I)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mContentRoot:Landroid/view/View;

    const-string v5, "main_reflect"

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mMainLayout:Landroid/view/View;

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mVoiceWaveView:Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;

    invoke-virtual {v4, v10}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->setVisibility(I)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mContentRoot:Landroid/view/View;

    const-string v5, "recognizing_reflect"

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mRecognizingView:Landroid/view/View;

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mContentRoot:Landroid/view/View;

    const-string v5, "help_reflect"

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mHelpView:Landroid/view/View;

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mHelpView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v13, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0x8

    invoke-virtual {v1, v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mContentRoot:Landroid/view/View;

    const-string v5, "help_title"

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTitle:Landroid/widget/TextView;

    iget v5, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mStateTipsColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mContentRoot:Landroid/view/View;

    const-string v5, "suggestions_list"

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    new-instance v4, Lcom/baidu/voicerecognition/android/ui/TipsAdapter;

    invoke-direct {v4, p0}, Lcom/baidu/voicerecognition/android/ui/TipsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTipsAdapter:Lcom/baidu/voicerecognition/android/ui/TipsAdapter;

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTipsAdapter:Lcom/baidu/voicerecognition/android/ui/TipsAdapter;

    invoke-virtual {v4, v12}, Lcom/baidu/voicerecognition/android/ui/TipsAdapter;->setNotifyOnChange(Z)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTipsAdapter:Lcom/baidu/voicerecognition/android/ui/TipsAdapter;

    iget v5, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mStateTipsColor:I

    invoke-virtual {v4, v5}, Lcom/baidu/voicerecognition/android/ui/TipsAdapter;->setTextColor(I)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTipsAdapter:Lcom/baidu/voicerecognition/android/ui/TipsAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mContentRoot:Landroid/view/View;

    const-string v5, "partial_text"

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mInputEdit:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mInputEdit:Landroid/widget/EditText;

    iget v5, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mStateTipsColor:I

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTextColor(I)V

    invoke-virtual {p0, v12}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->requestWindowFeature(I)Z

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->setContentView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mContentRoot:Landroid/view/View;

    invoke-virtual {p0, v4, v2}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->adjustThemeColor()V

    return-void
.end method

.method private loadI18N()V
    .locals 3

    :try_start_0
    const-string v1, "BaiduASRDigitalDialog"

    invoke-static {v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mLableRes:Ljava/util/ResourceBundle;

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mLogoText1:Landroid/widget/TextView;

    const-string v2, "tips.copyright"

    invoke-direct {p0, v2}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mLogoText2:Landroid/widget/TextView;

    const-string v2, "tips.copyright"

    invoke-direct {p0, v2}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mRetryTextView:Landroid/widget/TextView;

    const-string v2, "btn.retry"

    invoke-direct {p0, v2}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTitle:Landroid/widget/TextView;

    const-string v2, "tips.help.title"

    invoke-direct {p0, v2}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "tips.suggestion.prefix"

    invoke-direct {p0, v1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mPrefix:Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "BSDigitalDialog"

    const-string v2, "loadI18N error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private showSuggestionTips()V
    .locals 4

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTipsAdapter:Lcom/baidu/voicerecognition/android/ui/TipsAdapter;

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mRandom:Ljava/util/Random;

    iget-object v3, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTipsAdapter:Lcom/baidu/voicerecognition/android/ui/TipsAdapter;

    invoke-virtual {v3}, Lcom/baidu/voicerecognition/android/ui/TipsAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/voicerecognition/android/ui/TipsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mSuggestionTips:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mSuggestionTips:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mLogoText1:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private showSuggestions()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mErrorLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mMainLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mRecognizingView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mHelpView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mCompleteTextView:Landroid/widget/TextView;

    const-string v1, "btn.start"

    invoke-direct {p0, v1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mCompleteTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mHelpBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mShowSuggestionTip:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->cancleRecognition()V

    return-void
.end method

.method private startRecognizingAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mVoiceWaveView:Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;

    invoke-virtual {v0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->startRecognizingAnimation()V

    return-void
.end method

.method private stopRecognizingAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mVoiceWaveView:Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;

    invoke-virtual {v0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->resetAnimation()V

    return-void
.end method


# virtual methods
.method protected _onStart()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTipsAdapter:Lcom/baidu/voicerecognition/android/ui/TipsAdapter;

    invoke-virtual {v6}, Lcom/baidu/voicerecognition/android/ui/TipsAdapter;->clear()V

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getParams()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "BaiduASRDigitalDialog_tips"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_2

    iget-object v6, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTipsAdapter:Lcom/baidu/voicerecognition/android/ui/TipsAdapter;

    invoke-virtual {v6, v4}, Lcom/baidu/voicerecognition/android/ui/TipsAdapter;->addAll([Ljava/lang/Object;)V

    :cond_0
    const/4 v3, 0x0

    iget-object v6, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTipsAdapter:Lcom/baidu/voicerecognition/android/ui/TipsAdapter;

    invoke-virtual {v6}, Lcom/baidu/voicerecognition/android/ui/TipsAdapter;->getCount()I

    move-result v6

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mHelpBtn:Landroid/widget/ImageButton;

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getParams()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "BaiduASRDigitalDialog_showTips"

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->showSuggestions()V

    :cond_1
    return-void

    :cond_2
    move-object v0, v4

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    iget-object v6, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTipsAdapter:Lcom/baidu/voicerecognition/android/ui/TipsAdapter;

    invoke-virtual {v6, v5}, Lcom/baidu/voicerecognition/android/ui/TipsAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mHelpBtn:Landroid/widget/ImageButton;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onBeginningOfSpeech()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTipsTextView:Landroid/widget/TextView;

    const-string v1, "tips.state.listening"

    invoke-direct {p0, v1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mVoiceWaveView:Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;

    invoke-virtual {v0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->startRecordingAnimation()V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mShowSuggestionTip:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "BaiduASRDigitalDialog_theme"

    iget v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTheme:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTheme:I

    :cond_0
    invoke-direct {p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->initView()V

    invoke-direct {p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->loadI18N()V

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->startRecognition()V

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->_onStart()V

    return-void
.end method

.method protected onEndOfSpeech()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTipsTextView:Landroid/widget/TextView;

    const-string v1, "tips.state.recognizing"

    invoke-direct {p0, v1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mCompleteTextView:Landroid/widget/TextView;

    const-string v1, "tips.state.recognizing"

    invoke-direct {p0, v1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mSDKProgressBar:Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;

    invoke-virtual {v0, v2}, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->barHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mCompleteTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->startRecognizingAnimation()V

    return-void
.end method

.method protected onEvent(ILandroid/os/Bundle;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v1, "engine_type"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mEngineType:I

    invoke-virtual {p0, v0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->showEngineType(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method protected onFinish(II)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x4

    const/4 v8, 0x1

    iput p1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mErrorCode:I

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->barHandler:Landroid/os/Handler;

    invoke-virtual {v4, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->barHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mWaitNetTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->stopRecognizingAnimation()V

    if-eqz p1, :cond_2

    const-string v4, "BSDigitalDialog"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "BSDigitalDialog"

    const-string v5, "onError:errorType %1$d,errorCode %2$d "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->barHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mSuggestionTips2:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    packed-switch p1, :pswitch_data_0

    const-string v4, "tips.error.internal"

    invoke-direct {p0, v4}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mErrorRes:Ljava/lang/CharSequence;

    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mCancelTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    const-string v4, "btn.help"

    :goto_1
    invoke-direct {p0, v4}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mWaitNetTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mErrorTipsTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mErrorTipsTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mErrorRes:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mErrorLayout:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mMainLayout:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mHelpBtn:Landroid/widget/ImageButton;

    invoke-virtual {v4, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mShowSuggestionTip:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mVoiceWaveView:Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;

    invoke-virtual {v4, v9}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->setVisibility(I)V

    return-void

    :pswitch_0
    const-string v4, "\u6ca1\u6709\u5339\u914d\u7684\u8bc6\u522b\u7ed3\u679c"

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mErrorRes:Ljava/lang/CharSequence;

    goto :goto_0

    :pswitch_1
    const-string v4, "\u542f\u52a8\u5f55\u97f3\u5931\u8d25"

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mErrorRes:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTipsAdapter:Lcom/baidu/voicerecognition/android/ui/TipsAdapter;

    invoke-virtual {v4}, Lcom/baidu/voicerecognition/android/ui/TipsAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "BaiduASRDigitalDialog_showHelp"

    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "BaiduASRDigitalDialog_showTip"

    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTipsAdapter:Lcom/baidu/voicerecognition/android/ui/TipsAdapter;

    iget-object v5, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mRandom:Ljava/util/Random;

    iget-object v6, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTipsAdapter:Lcom/baidu/voicerecognition/android/ui/TipsAdapter;

    invoke-virtual {v6}, Lcom/baidu/voicerecognition/android/ui/TipsAdapter;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/baidu/voicerecognition/android/ui/TipsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mSuggestionTips2:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mPrefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mSuggestionTips2:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_2
    const-string v4, "tips.error.silent"

    invoke-direct {p0, v4}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mErrorRes:Ljava/lang/CharSequence;

    goto/16 :goto_0

    :pswitch_3
    new-instance v2, Landroid/text/SpannableString;

    const-string v4, "\u7f51\u7edc\u8d85\u65f6\uff0c\u518d\u8bd5\u4e00\u6b21"

    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$3;

    const-string v4, "#"

    invoke-direct {v1, p0, v4}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$3;-><init>(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;Ljava/lang/String;)V

    const/4 v4, 0x5

    const/16 v5, 0x9

    const/16 v6, 0x21

    invoke-virtual {v2, v1, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iput-object v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mErrorRes:Ljava/lang/CharSequence;

    goto/16 :goto_0

    :pswitch_4
    const/high16 v4, 0x90000

    if-ne p2, v4, :cond_4

    const-string v4, "tips.error.network_unusable"

    invoke-direct {p0, v4}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mErrorRes:Ljava/lang/CharSequence;

    goto/16 :goto_0

    :cond_4
    const-string v4, "tips.error.network"

    invoke-direct {p0, v4}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mErrorRes:Ljava/lang/CharSequence;

    goto/16 :goto_0

    :pswitch_5
    const-string v4, "\u5ba2\u6237\u7aef\u9519\u8bef"

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mErrorRes:Ljava/lang/CharSequence;

    goto/16 :goto_0

    :pswitch_6
    const-string v4, "\u6743\u9650\u4e0d\u8db3\uff0c\u8bf7\u68c0\u67e5\u8bbe\u7f6e"

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mErrorRes:Ljava/lang/CharSequence;

    goto/16 :goto_0

    :pswitch_7
    const-string v4, "\u5f15\u64ce\u5fd9"

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mErrorRes:Ljava/lang/CharSequence;

    goto/16 :goto_0

    :pswitch_8
    const-string v4, "tips.error.decoder"

    invoke-direct {p0, v4}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mErrorRes:Ljava/lang/CharSequence;

    goto/16 :goto_0

    :cond_5
    const-string v4, "btn.cancel"

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_8
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method protected onPartialResults(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const-string v1, "results_recognition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mInputEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mInputEdit:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mWaitNetTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTipsTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mInputEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mInputEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mInputEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    iput v3, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->delayTime:I

    :cond_1
    return-void
.end method

.method protected onPrepared()V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mVoiceWaveView:Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;

    invoke-virtual {v0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->startPreparingAnimation()V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mPrompt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTipsTextView:Landroid/widget/TextView;

    const-string v1, "tips.state.ready"

    invoke-direct {p0, v1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mCompleteTextView:Landroid/widget/TextView;

    const-string v1, "btn.done"

    invoke-direct {p0, v1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mCompleteTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mShowSuggestionTip:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "BaiduASRDigitalDialog_showTip"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTipsAdapter:Lcom/baidu/voicerecognition/android/ui/TipsAdapter;

    invoke-virtual {v0}, Lcom/baidu/voicerecognition/android/ui/TipsAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mShowSuggestionTip:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->SHOW_SUGGESTION_INTERVAL:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTipsTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mPrompt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onRecognitionStart()V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->barHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->barHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iput v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->step:I

    iput v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->delayTime:I

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mInputEdit:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mInputEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mVoiceWaveView:Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;

    invoke-virtual {v0, v2}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mVoiceWaveView:Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;

    invoke-virtual {v0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->startInitializingAnimation()V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTipsTextView:Landroid/widget/TextView;

    const-string v1, "tips.state.wait"

    invoke-direct {p0, v1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mErrorLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mMainLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mCompleteTextView:Landroid/widget/TextView;

    const-string v1, "tips.state.initializing"

    invoke-direct {p0, v1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mCompleteTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTipsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mSDKProgressBar:Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;

    invoke-virtual {v0, v3}, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mWaitNetTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mRecognizingView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mHelpView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mTipsAdapter:Lcom/baidu/voicerecognition/android/ui/TipsAdapter;

    invoke-virtual {v0}, Lcom/baidu/voicerecognition/android/ui/TipsAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mHelpBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mSuggestionTips:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mLogoText1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected onVolumeChanged(F)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mVoiceWaveView:Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;

    invoke-virtual {v0, p1}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->setCurrentDBLevelMeter(F)V

    return-void
.end method

.method protected showEngineType(I)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "\u5f53\u524d\u6b63\u5728\u4f7f\u7528\u79bb\u7ebf\u8bc6\u522b\u5f15\u64ce"

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mSuggestionTips:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mSuggestionTips:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mLogoText1:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mSuggestionTips:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mLogoText1:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
