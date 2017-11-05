.class Lcom/b16h22/statusbar/MultiPanelFlipper$1;
.super Landroid/content/BroadcastReceiver;
.source "MultiPanelFlipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b16h22/statusbar/MultiPanelFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/b16h22/statusbar/MultiPanelFlipper;


# direct methods
.method constructor <init>(Lcom/b16h22/statusbar/MultiPanelFlipper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/b16h22/statusbar/MultiPanelFlipper$1;->this$0:Lcom/b16h22/statusbar/MultiPanelFlipper;

    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/b16h22/statusbar/MultiPanelFlipper$1;->this$0:Lcom/b16h22/statusbar/MultiPanelFlipper;

    iget-object v0, v0, Lcom/b16h22/statusbar/MultiPanelFlipper;->VF:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 24
    iget-object v0, p0, Lcom/b16h22/statusbar/MultiPanelFlipper$1;->this$0:Lcom/b16h22/statusbar/MultiPanelFlipper;

    iget-object v0, v0, Lcom/b16h22/statusbar/MultiPanelFlipper;->VF:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/b16h22/statusbar/MultiPanelFlipper$1;->this$0:Lcom/b16h22/statusbar/MultiPanelFlipper;

    # invokes: Lcom/b16h22/statusbar/MultiPanelFlipper;->inFromLeftAnimation()Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/b16h22/statusbar/MultiPanelFlipper;->access$0(Lcom/b16h22/statusbar/MultiPanelFlipper;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 25
    iget-object v0, p0, Lcom/b16h22/statusbar/MultiPanelFlipper$1;->this$0:Lcom/b16h22/statusbar/MultiPanelFlipper;

    iget-object v0, v0, Lcom/b16h22/statusbar/MultiPanelFlipper;->VF:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/b16h22/statusbar/MultiPanelFlipper$1;->this$0:Lcom/b16h22/statusbar/MultiPanelFlipper;

    # invokes: Lcom/b16h22/statusbar/MultiPanelFlipper;->outToRightAnimation()Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/b16h22/statusbar/MultiPanelFlipper;->access$1(Lcom/b16h22/statusbar/MultiPanelFlipper;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 26
    return-void
.end method
