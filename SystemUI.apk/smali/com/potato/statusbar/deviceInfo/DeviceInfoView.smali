.class public Lcom/potato/statusbar/deviceInfo/DeviceInfoView;
.super Lcom/potato/statusbar/deviceInfo/Information;
.source "DeviceInfoView.java"


# instance fields
.field enable:I

.field private mAttached:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field style:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/potato/statusbar/deviceInfo/Information;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Lcom/potato/statusbar/deviceInfo/DeviceInfoView$1;

    invoke-direct {v0, p0}, Lcom/potato/statusbar/deviceInfo/DeviceInfoView$1;-><init>(Lcom/potato/statusbar/deviceInfo/DeviceInfoView;)V

    iput-object v0, p0, Lcom/potato/statusbar/deviceInfo/DeviceInfoView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 19
    return-void
.end method

.method static synthetic access$0(Lcom/potato/statusbar/deviceInfo/DeviceInfoView;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/potato/statusbar/deviceInfo/DeviceInfoView;->updateView()V

    return-void
.end method

.method private updateView()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    invoke-virtual {p0}, Lcom/potato/statusbar/deviceInfo/DeviceInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "drawer"

    .line 55
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/potato/statusbar/deviceInfo/DeviceInfoView;->style:I

    .line 57
    invoke-virtual {p0}, Lcom/potato/statusbar/deviceInfo/DeviceInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dev_info"

    .line 57
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/potato/statusbar/deviceInfo/DeviceInfoView;->enable:I

    .line 60
    iget v0, p0, Lcom/potato/statusbar/deviceInfo/DeviceInfoView;->enable:I

    if-ne v0, v3, :cond_1

    .line 61
    iget v0, p0, Lcom/potato/statusbar/deviceInfo/DeviceInfoView;->style:I

    if-ne v0, v3, :cond_0

    .line 62
    invoke-virtual {p0, v2}, Lcom/potato/statusbar/deviceInfo/DeviceInfoView;->setVisibility(I)V

    .line 73
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p0, v4}, Lcom/potato/statusbar/deviceInfo/DeviceInfoView;->setVisibility(I)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p0, v4}, Lcom/potato/statusbar/deviceInfo/DeviceInfoView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 24
    invoke-super {p0}, Lcom/potato/statusbar/deviceInfo/Information;->onAttachedToWindow()V

    .line 25
    iget-boolean v1, p0, Lcom/potato/statusbar/deviceInfo/DeviceInfoView;->mAttached:Z

    if-nez v1, :cond_0

    .line 26
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/potato/statusbar/deviceInfo/DeviceInfoView;->mAttached:Z

    .line 27
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 28
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.potato.updateDrawerStyle"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    const-string v1, "com.potato.updateInfo"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/potato/statusbar/deviceInfo/DeviceInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/potato/statusbar/deviceInfo/DeviceInfoView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/potato/statusbar/deviceInfo/DeviceInfoView;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 33
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-direct {p0}, Lcom/potato/statusbar/deviceInfo/DeviceInfoView;->updateView()V

    .line 34
    return-void
.end method
