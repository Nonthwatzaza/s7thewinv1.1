.class public Lcom/b16h22/statusbar/MultiPanelButtons;
.super Landroid/widget/LinearLayout;
.source "MultiPanelButtons.java"


# instance fields
.field message:Ljava/lang/String;

.field notif:Landroid/widget/TextView;

.field slider:Landroid/widget/TextView;

.field toggle:Landroid/widget/TextView;

.field view1:Landroid/view/View;

.field view2:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct/range {p0 .. p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->notif:Landroid/widget/TextView;

    .line 31
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->toggle:Landroid/widget/TextView;

    .line 32
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->slider:Landroid/widget/TextView;

    .line 33
    iget-object v12, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->notif:Landroid/widget/TextView;

    const v13, 0x7f02000b

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 34
    iget-object v12, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->toggle:Landroid/widget/TextView;

    const v13, 0x7f02000b

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 35
    iget-object v12, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->slider:Landroid/widget/TextView;

    const v13, 0x7f02000b

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 36
    invoke-virtual {p0}, Lcom/b16h22/statusbar/MultiPanelButtons;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v8, v12, Landroid/util/DisplayMetrics;->density:F

    .line 37
    .local v8, "scale":F
    const/high16 v12, 0x41000000    # 8.0f

    mul-float/2addr v12, v8

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v7, v12

    .line 38
    .local v7, "pixels":I
    iget-object v12, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->notif:Landroid/widget/TextView;

    const/16 v13, 0x11

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 39
    iget-object v12, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->toggle:Landroid/widget/TextView;

    const/16 v13, 0x11

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 40
    iget-object v12, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->slider:Landroid/widget/TextView;

    const/16 v13, 0x11

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 41
    iget-object v12, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->notif:Landroid/widget/TextView;

    const-string v13, "Notif"

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v12, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->toggle:Landroid/widget/TextView;

    const-string v13, "Setting"

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v12, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->slider:Landroid/widget/TextView;

    const-string v13, "Toogle"

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    new-instance v12, Landroid/view/View;

    invoke-direct {v12, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->view1:Landroid/view/View;

    .line 45
    new-instance v12, Landroid/view/View;

    invoke-direct {v12, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->view2:Landroid/view/View;

    .line 46
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, 0x1

    const/4 v13, -0x1

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    .local v11, "view":Landroid/widget/LinearLayout$LayoutParams;
    iput v7, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 48
    iput v7, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 49
    iget-object v12, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->view1:Landroid/view/View;

    invoke-virtual {v12, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object v12, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->view2:Landroid/view/View;

    invoke-virtual {v12, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    iget-object v12, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->view1:Landroid/view/View;

    const-string v13, "#ffffffff"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundColor(I)V

    .line 52
    iget-object v12, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->view2:Landroid/view/View;

    const-string v13, "#ffffffff"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundColor(I)V

    .line 53
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, 0x0

    const/4 v13, -0x1

    invoke-direct {v10, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 54
    .local v10, "text":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v12, 0x3f800000    # 1.0f

    iput v12, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 55
    const/16 v12, 0x11

    iput v12, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 56
    iget-object v12, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->notif:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    iget-object v12, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->toggle:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v12, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->slider:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iget-object v12, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->notif:Landroid/widget/TextView;

    invoke-virtual {p0, v12}, Lcom/b16h22/statusbar/MultiPanelButtons;->addView(Landroid/view/View;)V

    .line 60
    iget-object v12, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->view1:Landroid/view/View;

    invoke-virtual {p0, v12}, Lcom/b16h22/statusbar/MultiPanelButtons;->addView(Landroid/view/View;)V

    .line 61
    iget-object v12, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->toggle:Landroid/widget/TextView;

    invoke-virtual {p0, v12}, Lcom/b16h22/statusbar/MultiPanelButtons;->addView(Landroid/view/View;)V

    .line 62
    iget-object v12, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->view2:Landroid/view/View;

    invoke-virtual {p0, v12}, Lcom/b16h22/statusbar/MultiPanelButtons;->addView(Landroid/view/View;)V

    .line 63
    iget-object v12, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->slider:Landroid/widget/TextView;

    invoke-virtual {p0, v12}, Lcom/b16h22/statusbar/MultiPanelButtons;->addView(Landroid/view/View;)V

    .line 64
    const/high16 v12, 0x41f00000    # 30.0f

    mul-float/2addr v12, v8

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v1, v12

    .line 65
    .local v1, "height":I
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    invoke-direct {v2, v12, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 66
    .local v2, "layout":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v2}, Lcom/b16h22/statusbar/MultiPanelButtons;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    const-string v12, "EvoPrefsFile"

    const/4 v13, 0x0

    invoke-virtual {p1, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 69
    .local v9, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v12, "type"

    const-string v13, "phablet"

    invoke-interface {v9, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "layoutType":Ljava/lang/String;
    const-string v12, "tablet"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 71
    const-string v12, "SliderVisibility"

    const/4 v13, 0x0

    invoke-interface {v9, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 72
    .local v0, "SliderVisibility":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_2

    .line 73
    invoke-virtual {p0}, Lcom/b16h22/statusbar/MultiPanelButtons;->unhideSlider()V

    .line 78
    :goto_0
    invoke-virtual {p0}, Lcom/b16h22/statusbar/MultiPanelButtons;->hide()V

    .line 80
    .end local v0    # "SliderVisibility":Ljava/lang/Boolean;
    :cond_0
    const-string v12, "normal"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 81
    const-string v12, "SliderVisibility"

    const/4 v13, 0x0

    invoke-interface {v9, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 82
    .restart local v0    # "SliderVisibility":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_3

    .line 83
    invoke-virtual {p0}, Lcom/b16h22/statusbar/MultiPanelButtons;->unhideSlider()V

    .line 88
    :goto_1
    invoke-virtual {p0}, Lcom/b16h22/statusbar/MultiPanelButtons;->hide()V

    .line 101
    .end local v0    # "SliderVisibility":Ljava/lang/Boolean;
    :cond_1
    :goto_2
    iget-object v12, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->notif:Landroid/widget/TextView;

    new-instance v13, Lcom/b16h22/statusbar/MultiPanelButtons$1;

    invoke-direct {v13, p0, p1}, Lcom/b16h22/statusbar/MultiPanelButtons$1;-><init>(Lcom/b16h22/statusbar/MultiPanelButtons;Landroid/content/Context;)V

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v12, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->toggle:Landroid/widget/TextView;

    new-instance v13, Lcom/b16h22/statusbar/MultiPanelButtons$2;

    invoke-direct {v13, p0, p1}, Lcom/b16h22/statusbar/MultiPanelButtons$2;-><init>(Lcom/b16h22/statusbar/MultiPanelButtons;Landroid/content/Context;)V

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v12, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->slider:Landroid/widget/TextView;

    new-instance v13, Lcom/b16h22/statusbar/MultiPanelButtons$3;

    invoke-direct {v13, p0, p1}, Lcom/b16h22/statusbar/MultiPanelButtons$3;-><init>(Lcom/b16h22/statusbar/MultiPanelButtons;Landroid/content/Context;)V

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    new-instance v4, Lcom/b16h22/statusbar/MultiPanelButtons$4;

    invoke-direct {v4, p0}, Lcom/b16h22/statusbar/MultiPanelButtons$4;-><init>(Lcom/b16h22/statusbar/MultiPanelButtons;)V

    .line 154
    .local v4, "mReceiver":Landroid/content/BroadcastReceiver;
    new-instance v6, Lcom/b16h22/statusbar/MultiPanelButtons$5;

    invoke-direct {v6, p0}, Lcom/b16h22/statusbar/MultiPanelButtons$5;-><init>(Lcom/b16h22/statusbar/MultiPanelButtons;)V

    .line 162
    .local v6, "mReceiverUnhide":Landroid/content/BroadcastReceiver;
    new-instance v5, Lcom/b16h22/statusbar/MultiPanelButtons$6;

    invoke-direct {v5, p0, v9}, Lcom/b16h22/statusbar/MultiPanelButtons$6;-><init>(Lcom/b16h22/statusbar/MultiPanelButtons;Landroid/content/SharedPreferences;)V

    .line 187
    .local v5, "mReceiverLayout":Landroid/content/BroadcastReceiver;
    new-instance v12, Landroid/content/IntentFilter;

    const-string v13, "com.b16h22.statusbar.HIDE_SLIDER"

    invoke-direct {v12, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 188
    new-instance v12, Landroid/content/IntentFilter;

    const-string v13, "com.b16h22.statusbar.UNHIDE_SLIDER"

    invoke-direct {v12, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 189
    new-instance v12, Landroid/content/IntentFilter;

    const-string v13, "com.b16h22.statusbar.CHANGE_LAYOUT"

    invoke-direct {v12, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    return-void

    .line 76
    .end local v4    # "mReceiver":Landroid/content/BroadcastReceiver;
    .end local v5    # "mReceiverLayout":Landroid/content/BroadcastReceiver;
    .end local v6    # "mReceiverUnhide":Landroid/content/BroadcastReceiver;
    .restart local v0    # "SliderVisibility":Ljava/lang/Boolean;
    :cond_2
    invoke-virtual {p0}, Lcom/b16h22/statusbar/MultiPanelButtons;->hideSlider()V

    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {p0}, Lcom/b16h22/statusbar/MultiPanelButtons;->hideSlider()V

    goto :goto_1

    .line 90
    .end local v0    # "SliderVisibility":Ljava/lang/Boolean;
    :cond_4
    const-string v12, "phablet"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/b16h22/statusbar/MultiPanelButtons;->unhide()V

    .line 92
    const-string v12, "SliderVisibility"

    const/4 v13, 0x0

    invoke-interface {v9, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 93
    .restart local v0    # "SliderVisibility":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_5

    .line 94
    invoke-virtual {p0}, Lcom/b16h22/statusbar/MultiPanelButtons;->unhideSlider()V

    goto :goto_2

    .line 97
    :cond_5
    invoke-virtual {p0}, Lcom/b16h22/statusbar/MultiPanelButtons;->hideSlider()V

    goto :goto_2
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 213
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/b16h22/statusbar/MultiPanelButtons;->setVisibility(I)V

    .line 214
    return-void
.end method

.method public hideSlider()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 193
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 194
    .local v0, "text":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3fc00000    # 1.5f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 195
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 196
    iget-object v1, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->notif:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    iget-object v1, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->toggle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    iget-object v1, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->slider:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v1, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->view2:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 200
    return-void
.end method

.method public unhide()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/b16h22/statusbar/MultiPanelButtons;->setVisibility(I)V

    .line 218
    return-void
.end method

.method public unhideSlider()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 203
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 204
    .local v0, "text":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 205
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 206
    iget-object v1, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->notif:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v1, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->toggle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iget-object v1, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->slider:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    iget-object v1, p0, Lcom/b16h22/statusbar/MultiPanelButtons;->view2:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 210
    return-void
.end method
