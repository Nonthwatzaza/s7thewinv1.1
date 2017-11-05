.class Lcom/potato/statusbar/deviceInfo/DeviceInfoView$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/potato/statusbar/deviceInfo/DeviceInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/potato/statusbar/deviceInfo/DeviceInfoView;


# direct methods
.method constructor <init>(Lcom/potato/statusbar/deviceInfo/DeviceInfoView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/potato/statusbar/deviceInfo/DeviceInfoView$1;->this$0:Lcom/potato/statusbar/deviceInfo/DeviceInfoView;

    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.potato.updateDrawerStyle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    iget-object v1, p0, Lcom/potato/statusbar/deviceInfo/DeviceInfoView$1;->this$0:Lcom/potato/statusbar/deviceInfo/DeviceInfoView;

    iget-object v2, p0, Lcom/potato/statusbar/deviceInfo/DeviceInfoView$1;->this$0:Lcom/potato/statusbar/deviceInfo/DeviceInfoView;

    invoke-virtual {v2}, Lcom/potato/statusbar/deviceInfo/DeviceInfoView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 42
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "drawer"

    .line 41
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/potato/statusbar/deviceInfo/DeviceInfoView;->style:I

    .line 43
    iget-object v1, p0, Lcom/potato/statusbar/deviceInfo/DeviceInfoView$1;->this$0:Lcom/potato/statusbar/deviceInfo/DeviceInfoView;

    # invokes: Lcom/potato/statusbar/deviceInfo/DeviceInfoView;->updateView()V
    invoke-static {v1}, Lcom/potato/statusbar/deviceInfo/DeviceInfoView;->access$0(Lcom/potato/statusbar/deviceInfo/DeviceInfoView;)V

    .line 49
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/potato/statusbar/deviceInfo/DeviceInfoView$1;->this$0:Lcom/potato/statusbar/deviceInfo/DeviceInfoView;

    # invokes: Lcom/potato/statusbar/deviceInfo/DeviceInfoView;->updateView()V
    invoke-static {v1}, Lcom/potato/statusbar/deviceInfo/DeviceInfoView;->access$0(Lcom/potato/statusbar/deviceInfo/DeviceInfoView;)V

    .line 50
    return-void

    .line 44
    :cond_1
    const-string v1, "com.potato.updateInfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/potato/statusbar/deviceInfo/DeviceInfoView$1;->this$0:Lcom/potato/statusbar/deviceInfo/DeviceInfoView;

    iget-object v2, p0, Lcom/potato/statusbar/deviceInfo/DeviceInfoView$1;->this$0:Lcom/potato/statusbar/deviceInfo/DeviceInfoView;

    invoke-virtual {v2}, Lcom/potato/statusbar/deviceInfo/DeviceInfoView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dev_info"

    .line 45
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/potato/statusbar/deviceInfo/DeviceInfoView;->enable:I

    .line 47
    iget-object v1, p0, Lcom/potato/statusbar/deviceInfo/DeviceInfoView$1;->this$0:Lcom/potato/statusbar/deviceInfo/DeviceInfoView;

    # invokes: Lcom/potato/statusbar/deviceInfo/DeviceInfoView;->updateView()V
    invoke-static {v1}, Lcom/potato/statusbar/deviceInfo/DeviceInfoView;->access$0(Lcom/potato/statusbar/deviceInfo/DeviceInfoView;)V

    goto :goto_0
.end method
