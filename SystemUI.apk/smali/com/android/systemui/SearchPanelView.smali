.class public Lcom/android/systemui/SearchPanelView;
.super Landroid/widget/FrameLayout;
.source "SearchPanelView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/tablet/StatusBarPanel;
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;
    }
.end annotation


# static fields
.field private static final ASSIST_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.systemui.action_assist_icon"

.field static final DEBUG:Z = false

.field private static final SEARCH_PANEL_HOLD_DURATION:I = 0x0

.field static final TAG:Ljava/lang/String; = "SearchPanelView"


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

.field private final mContext:Landroid/content/Context;

.field private mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

.field final mGlowPadViewListener:Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;

.field private final mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mSearchTargetsContainer:Landroid/view/View;

.field private mShowing:Z

.field private mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/SearchPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    new-instance v0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;-><init>(Lcom/android/systemui/SearchPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadViewListener:Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;

    .line 177
    new-instance v0, Lcom/android/systemui/SearchPanelView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/SearchPanelView$2;-><init>(Lcom/android/systemui/SearchPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 69
    iput-object p1, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SearchPanelView;)Lcom/android/systemui/statusbar/BaseStatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/SearchPanelView;)Lcom/android/internal/widget/multiwaveview/GlowPadView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/SearchPanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelView;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->startAssistActivity()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/SearchPanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelView;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->vibrate()V

    return-void
.end method

.method private createLayoutTransitioner()Landroid/animation/LayoutTransition;
    .locals 4

    .prologue
    .line 276
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 277
    .local v0, "transitioner":Landroid/animation/LayoutTransition;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 278
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 279
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 280
    return-object v0
.end method

.method private maybeSwapSearchIcon()V
    .locals 5

    .prologue
    .line 147
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 148
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 150
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const-string v3, "com.android.systemui.action_assist_icon"

    const v4, 0x10802d5

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 156
    .end local v0    # "component":Landroid/content/ComponentName;
    :cond_0
    return-void
.end method

.method private pointInside(IILandroid/view/View;)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "v"    # Landroid/view/View;

    .prologue
    .line 159
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 160
    .local v1, "l":I
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v2

    .line 161
    .local v2, "r":I
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 162
    .local v3, "t":I
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 163
    .local v0, "b":I
    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    if-lt p2, v3, :cond_0

    if-ge p2, v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private startAssistActivity()V
    .locals 7

    .prologue
    .line 74
    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapse(I)V

    .line 76
    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 77
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 79
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const v4, 0x7f040012

    const v5, 0x7f040013

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-static {v3, v4, v5, v6, p0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 82
    .local v2, "opts":Landroid/app/ActivityOptions;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    .end local v2    # "opts":Landroid/app/ActivityOptions;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "SearchPanelView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity not found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->onAnimationStarted()V

    goto :goto_0
.end method

.method private vibrate()V
    .locals 6

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 187
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_enabled"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 190
    .local v1, "res":Landroid/content/res/Resources;
    const-string v3, "vibrator"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 191
    .local v2, "vibrator":Landroid/os/Vibrator;
    const v3, 0x7f0b0003

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 193
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "vibrator":Landroid/os/Vibrator;
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 245
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 246
    .local v1, "y":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 247
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 249
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public hide(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapse(I)V

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelView;->setVisibility(I)V

    goto :goto_0
.end method

.method public isAssistantAvailable()Z
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInContentArea(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x1

    .line 167
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mSearchTargetsContainer:Landroid/view/View;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/SearchPanelView;->pointInside(IILandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/SearchPanelView;->pointInside(IILandroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/android/systemui/SearchPanelView;->mShowing:Z

    return v0
.end method

.method public onAnimationStarted()V
    .locals 3

    .prologue
    .line 127
    new-instance v0, Lcom/android/systemui/SearchPanelView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/SearchPanelView$1;-><init>(Lcom/android/systemui/SearchPanelView;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/SearchPanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 133
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 138
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    const v0, 0x7f0d0081

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mSearchTargetsContainer:Landroid/view/View;

    .line 140
    const v0, 0x7f0d00bc

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/StatusBarTouchProxy;

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    .line 142
    const v0, 0x7f0d0083

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .line 143
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadViewListener:Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 144
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 235
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 237
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/systemui/SearchPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    .line 262
    return-void
.end method

.method public setStatusBarView(Landroid/view/View;)V
    .locals 1
    .param p1, "statusBarView"    # Landroid/view/View;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recent/StatusBarTouchProxy;->setStatusBar(Landroid/view/View;)V

    .line 273
    :cond_0
    return-void
.end method

.method public show(ZZ)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v3, 0x1

    .line 196
    if-nez p1, :cond_0

    .line 197
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->createLayoutTransitioner()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 198
    .local v0, "transitioner":Landroid/animation/LayoutTransition;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mSearchTargetsContainer:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 200
    .end local v0    # "transitioner":Landroid/animation/LayoutTransition;
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/SearchPanelView;->mShowing:Z

    .line 201
    if-eqz p1, :cond_3

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->maybeSwapSearchIcon()V

    .line 203
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/SearchPanelView;->setVisibility(I)V

    .line 207
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->suspendAnimations()V

    .line 208
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->ping()V

    .line 209
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 210
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->vibrate()V

    .line 212
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/SearchPanelView;->setFocusable(Z)V

    .line 213
    invoke-virtual {p0, v3}, Lcom/android/systemui/SearchPanelView;->setFocusableInTouchMode(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->requestFocus()Z

    .line 218
    :goto_1
    return-void

    .line 197
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 216
    :cond_3
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/systemui/SearchPanelView;->setVisibility(I)V

    goto :goto_1
.end method