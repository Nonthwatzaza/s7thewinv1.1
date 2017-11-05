.class public Lcom/potato/statusbar/deviceInfo/Information$MemInfo;
.super Landroid/widget/TextView;
.source "Information.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/potato/statusbar/deviceInfo/Information;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MemInfo"
.end annotation


# instance fields
.field private mAttached:Z

.field mColor:I

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field ninja:Lcom/potato/statusbar/deviceInfo/NinjaMoves;

.field final synthetic this$0:Lcom/potato/statusbar/deviceInfo/Information;


# direct methods
.method public constructor <init>(Lcom/potato/statusbar/deviceInfo/Information;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2, "arg0"    # Landroid/content/Context;
    .param p3, "arg1"    # Landroid/util/AttributeSet;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/potato/statusbar/deviceInfo/Information$MemInfo;->this$0:Lcom/potato/statusbar/deviceInfo/Information;

    .line 120
    invoke-direct {p0, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    new-instance v0, Lcom/potato/statusbar/deviceInfo/NinjaMoves;

    invoke-direct {v0}, Lcom/potato/statusbar/deviceInfo/NinjaMoves;-><init>()V

    iput-object v0, p0, Lcom/potato/statusbar/deviceInfo/Information$MemInfo;->ninja:Lcom/potato/statusbar/deviceInfo/NinjaMoves;

    .line 139
    new-instance v0, Lcom/potato/statusbar/deviceInfo/Information$MemInfo$1;

    invoke-direct {v0, p0}, Lcom/potato/statusbar/deviceInfo/Information$MemInfo$1;-><init>(Lcom/potato/statusbar/deviceInfo/Information$MemInfo;)V

    iput-object v0, p0, Lcom/potato/statusbar/deviceInfo/Information$MemInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/potato/statusbar/deviceInfo/Information$MemInfo;->ninja:Lcom/potato/statusbar/deviceInfo/NinjaMoves;

    invoke-virtual {v1}, Lcom/potato/statusbar/deviceInfo/NinjaMoves;->getMemAvail()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " MB / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/potato/statusbar/deviceInfo/Information$MemInfo;->ninja:Lcom/potato/statusbar/deviceInfo/NinjaMoves;

    invoke-virtual {v1}, Lcom/potato/statusbar/deviceInfo/NinjaMoves;->getMemTotal()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/potato/statusbar/deviceInfo/Information$MemInfo;->setText(Ljava/lang/CharSequence;)V

    .line 122
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 127
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 128
    iget-boolean v1, p0, Lcom/potato/statusbar/deviceInfo/Information$MemInfo;->mAttached:Z

    if-nez v1, :cond_0

    .line 129
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/potato/statusbar/deviceInfo/Information$MemInfo;->mAttached:Z

    .line 130
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 132
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.potato.updateInfo"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/potato/statusbar/deviceInfo/Information$MemInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/potato/statusbar/deviceInfo/Information$MemInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/potato/statusbar/deviceInfo/Information$MemInfo;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 136
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/potato/statusbar/deviceInfo/Information$MemInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v4}, Lcom/potato/statusbar/deviceInfo/Information$MemInfo;->setDown(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    return-void
.end method

.method public setDown(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/util/AttributeSet;

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/potato/statusbar/deviceInfo/Information$MemInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dev_color"

    const/4 v2, 0x0

    .line 154
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/potato/statusbar/deviceInfo/Information$MemInfo;->mColor:I

    .line 159
    return-void
.end method
