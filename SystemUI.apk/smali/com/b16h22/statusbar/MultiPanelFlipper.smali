.class public Lcom/b16h22/statusbar/MultiPanelFlipper;
.super Landroid/widget/ViewFlipper;
.source "MultiPanelFlipper.java"


# instance fields
.field VF:Landroid/widget/ViewFlipper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const v3, 0x7f0d014c

    invoke-virtual {p0, v3}, Lcom/b16h22/statusbar/MultiPanelFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ViewFlipper;

    iput-object v3, p0, Lcom/b16h22/statusbar/MultiPanelFlipper;->VF:Landroid/widget/ViewFlipper;

    .line 20
    new-instance v0, Lcom/b16h22/statusbar/MultiPanelFlipper$1;

    invoke-direct {v0, p0}, Lcom/b16h22/statusbar/MultiPanelFlipper$1;-><init>(Lcom/b16h22/statusbar/MultiPanelFlipper;)V

    .line 29
    .local v0, "mReceiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Lcom/b16h22/statusbar/MultiPanelFlipper$2;

    invoke-direct {v1, p0}, Lcom/b16h22/statusbar/MultiPanelFlipper$2;-><init>(Lcom/b16h22/statusbar/MultiPanelFlipper;)V

    .line 38
    .local v1, "mReceiver1":Landroid/content/BroadcastReceiver;
    new-instance v2, Lcom/b16h22/statusbar/MultiPanelFlipper$3;

    invoke-direct {v2, p0}, Lcom/b16h22/statusbar/MultiPanelFlipper$3;-><init>(Lcom/b16h22/statusbar/MultiPanelFlipper;)V

    .line 47
    .local v2, "mReceiver2":Landroid/content/BroadcastReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.b16h22.statusbar.FLIP_TO_NOTIF"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.b16h22.statusbar.FLIP_TO_TOGGLES"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 49
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.b16h22.statusbar.FLIP_TO_SLIDERS"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/b16h22/statusbar/MultiPanelFlipper;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/b16h22/statusbar/MultiPanelFlipper;->inFromLeftAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/b16h22/statusbar/MultiPanelFlipper;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/b16h22/statusbar/MultiPanelFlipper;->outToRightAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private inFromLeftAnimation()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 78
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 79
    const/high16 v2, -0x40800000    # -1.0f

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    .line 78
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 83
    .local v0, "inFromLeft":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 84
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 85
    return-object v0
.end method

.method private inFromRightAnimation()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 56
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 57
    const/high16 v2, 0x3f800000    # 1.0f

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    .line 56
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 61
    .local v0, "inFromRight":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 62
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 63
    return-object v0
.end method

.method private outToLeftAnimation()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 67
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 69
    const/high16 v4, -0x40800000    # -1.0f

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    .line 67
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 72
    .local v0, "outtoLeft":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 73
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 74
    return-object v0
.end method

.method private outToRightAnimation()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 89
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 91
    const/high16 v4, 0x3f800000    # 1.0f

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    .line 89
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 94
    .local v0, "outtoRight":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 95
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 96
    return-object v0
.end method
