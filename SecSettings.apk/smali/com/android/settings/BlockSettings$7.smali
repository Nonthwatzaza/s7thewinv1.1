.class Lcom/android/settings/BlockSettings$7;
.super Ljava/lang/Object;
.source "BlockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BlockSettings;->makeMessageBlockDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BlockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/BlockSettings;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/settings/BlockSettings$7;->this$0:Lcom/android/settings/BlockSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/settings/BlockSettings$7;->this$0:Lcom/android/settings/BlockSettings;

    # setter for: Lcom/android/settings/BlockSettings;->mListIndex:I
    invoke-static {v0, p2}, Lcom/android/settings/BlockSettings;->access$002(Lcom/android/settings/BlockSettings;I)I

    .line 313
    iget-object v0, p0, Lcom/android/settings/BlockSettings$7;->this$0:Lcom/android/settings/BlockSettings;

    iget-object v1, p0, Lcom/android/settings/BlockSettings$7;->this$0:Lcom/android/settings/BlockSettings;

    # getter for: Lcom/android/settings/BlockSettings;->mListIndex:I
    invoke-static {v1}, Lcom/android/settings/BlockSettings;->access$000(Lcom/android/settings/BlockSettings;)I

    move-result v1

    # invokes: Lcom/android/settings/BlockSettings;->setBlockMode(I)V
    invoke-static {v0, v1}, Lcom/android/settings/BlockSettings;->access$100(Lcom/android/settings/BlockSettings;I)V

    .line 314
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 315
    iget-object v0, p0, Lcom/android/settings/BlockSettings$7;->this$0:Lcom/android/settings/BlockSettings;

    # invokes: Lcom/android/settings/BlockSettings;->updateSummary()V
    invoke-static {v0}, Lcom/android/settings/BlockSettings;->access$200(Lcom/android/settings/BlockSettings;)V

    .line 316
    return-void
.end method
