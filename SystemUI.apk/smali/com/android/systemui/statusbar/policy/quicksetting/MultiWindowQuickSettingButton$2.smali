.class Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$2;
.super Ljava/lang/Object;
.source "MultiWindowQuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->onDisplayTalkbackDisableAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 122
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->removeEnabledScreenReaderValue()V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;

    const/4 v1, 0x1

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->setMode(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->access$400(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;I)V

    .line 125
    return-void
.end method
