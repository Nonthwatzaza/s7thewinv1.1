.class Lcom/android/systemui/screenshot/GlobalScreenshot$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .locals 0

    .prologue
    .line 979
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$10;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 995
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$10;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 996
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 982
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$10;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 983
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$10;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 984
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$10;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$800(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 985
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$10;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$800(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 986
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$10;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$800(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 987
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$10;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$800(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$10;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPaddingScale:F
    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1300(Lcom/android/systemui/screenshot/GlobalScreenshot;)F

    move-result v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 988
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$10;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$800(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$10;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPaddingScale:F
    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1300(Lcom/android/systemui/screenshot/GlobalScreenshot;)F

    move-result v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 989
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$10;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$800(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 990
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$10;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 991
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$10;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 992
    return-void
.end method
