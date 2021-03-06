.class Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ConfigChooser;
.super Ljava/lang/Object;
.source "SAGLSurface.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/samsunganimation/glsurface/SAGLSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigChooser"
.end annotation


# static fields
.field private static EGL_OPENGL_ES2_BIT:I

.field private static s_configAttribs2:[I


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v3, 0x5

    .line 240
    sput v4, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ConfigChooser;->EGL_OPENGL_ES2_BIT:I

    .line 242
    const/16 v0, 0xd

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 243
    const/16 v2, 0x3024

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v3, v0, v1

    const/4 v1, 0x2

    .line 244
    const/16 v2, 0x3023

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v5, v0, v1

    .line 245
    const/16 v1, 0x3022

    aput v1, v0, v4

    aput v3, v0, v3

    .line 246
    const/16 v1, 0x3025

    aput v1, v0, v5

    const/4 v1, 0x7

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 247
    const/16 v2, 0x3026

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 250
    const/16 v2, 0x3040

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ConfigChooser;->EGL_OPENGL_ES2_BIT:I

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 251
    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 241
    sput-object v0, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ConfigChooser;->s_configAttribs2:[I

    .line 224
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 1
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "a"    # I
    .param p5, "depth"    # I
    .param p6, "stencil"    # I

    .prologue
    .line 226
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 419
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ConfigChooser;->mValue:[I

    .line 227
    iput p1, p0, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ConfigChooser;->mRedSize:I

    .line 228
    iput p2, p0, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ConfigChooser;->mGreenSize:I

    .line 229
    iput p3, p0, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ConfigChooser;->mBlueSize:I

    .line 230
    iput p4, p0, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ConfigChooser;->mAlphaSize:I

    .line 231
    iput p5, p0, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ConfigChooser;->mDepthSize:I

    .line 232
    iput p6, p0, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ConfigChooser;->mStencilSize:I

    .line 233
    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4, "attribute"    # I
    .param p5, "defaultValue"    # I

    .prologue
    .line 312
    iget-object v0, p0, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ConfigChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ConfigChooser;->mValue:[I

    const/4 v1, 0x0

    aget p5, v0, v1

    .line 315
    .end local p5    # "defaultValue":I
    :cond_0
    return p5
.end method

.method private printConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 11
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 328
    const/16 v6, 0x21

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    .line 364
    .local v1, "attributes":[I
    const/16 v6, 0x21

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 365
    const-string v7, "EGL_BUFFER_SIZE"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    .line 366
    const-string v7, "EGL_ALPHA_SIZE"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    .line 367
    const-string v7, "EGL_BLUE_SIZE"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    .line 368
    const-string v7, "EGL_GREEN_SIZE"

    aput-object v7, v4, v6

    const/4 v6, 0x4

    .line 369
    const-string v7, "EGL_RED_SIZE"

    aput-object v7, v4, v6

    const/4 v6, 0x5

    .line 370
    const-string v7, "EGL_DEPTH_SIZE"

    aput-object v7, v4, v6

    const/4 v6, 0x6

    .line 371
    const-string v7, "EGL_STENCIL_SIZE"

    aput-object v7, v4, v6

    const/4 v6, 0x7

    .line 372
    const-string v7, "EGL_CONFIG_CAVEAT"

    aput-object v7, v4, v6

    const/16 v6, 0x8

    .line 373
    const-string v7, "EGL_CONFIG_ID"

    aput-object v7, v4, v6

    const/16 v6, 0x9

    .line 374
    const-string v7, "EGL_LEVEL"

    aput-object v7, v4, v6

    const/16 v6, 0xa

    .line 375
    const-string v7, "EGL_MAX_PBUFFER_HEIGHT"

    aput-object v7, v4, v6

    const/16 v6, 0xb

    .line 376
    const-string v7, "EGL_MAX_PBUFFER_PIXELS"

    aput-object v7, v4, v6

    const/16 v6, 0xc

    .line 377
    const-string v7, "EGL_MAX_PBUFFER_WIDTH"

    aput-object v7, v4, v6

    const/16 v6, 0xd

    .line 378
    const-string v7, "EGL_NATIVE_RENDERABLE"

    aput-object v7, v4, v6

    const/16 v6, 0xe

    .line 379
    const-string v7, "EGL_NATIVE_VISUAL_ID"

    aput-object v7, v4, v6

    const/16 v6, 0xf

    .line 380
    const-string v7, "EGL_NATIVE_VISUAL_TYPE"

    aput-object v7, v4, v6

    const/16 v6, 0x10

    .line 381
    const-string v7, "EGL_PRESERVED_RESOURCES"

    aput-object v7, v4, v6

    const/16 v6, 0x11

    .line 382
    const-string v7, "EGL_SAMPLES"

    aput-object v7, v4, v6

    const/16 v6, 0x12

    .line 383
    const-string v7, "EGL_SAMPLE_BUFFERS"

    aput-object v7, v4, v6

    const/16 v6, 0x13

    .line 384
    const-string v7, "EGL_SURFACE_TYPE"

    aput-object v7, v4, v6

    const/16 v6, 0x14

    .line 385
    const-string v7, "EGL_TRANSPARENT_TYPE"

    aput-object v7, v4, v6

    const/16 v6, 0x15

    .line 386
    const-string v7, "EGL_TRANSPARENT_RED_VALUE"

    aput-object v7, v4, v6

    const/16 v6, 0x16

    .line 387
    const-string v7, "EGL_TRANSPARENT_GREEN_VALUE"

    aput-object v7, v4, v6

    const/16 v6, 0x17

    .line 388
    const-string v7, "EGL_TRANSPARENT_BLUE_VALUE"

    aput-object v7, v4, v6

    const/16 v6, 0x18

    .line 389
    const-string v7, "EGL_BIND_TO_TEXTURE_RGB"

    aput-object v7, v4, v6

    const/16 v6, 0x19

    .line 390
    const-string v7, "EGL_BIND_TO_TEXTURE_RGBA"

    aput-object v7, v4, v6

    const/16 v6, 0x1a

    .line 391
    const-string v7, "EGL_MIN_SWAP_INTERVAL"

    aput-object v7, v4, v6

    const/16 v6, 0x1b

    .line 392
    const-string v7, "EGL_MAX_SWAP_INTERVAL"

    aput-object v7, v4, v6

    const/16 v6, 0x1c

    .line 393
    const-string v7, "EGL_LUMINANCE_SIZE"

    aput-object v7, v4, v6

    const/16 v6, 0x1d

    .line 394
    const-string v7, "EGL_ALPHA_MASK_SIZE"

    aput-object v7, v4, v6

    const/16 v6, 0x1e

    .line 395
    const-string v7, "EGL_COLOR_BUFFER_TYPE"

    aput-object v7, v4, v6

    const/16 v6, 0x1f

    .line 396
    const-string v7, "EGL_RENDERABLE_TYPE"

    aput-object v7, v4, v6

    const/16 v6, 0x20

    .line 397
    const-string v7, "EGL_CONFORMANT"

    aput-object v7, v4, v6

    .line 399
    .local v4, "names":[Ljava/lang/String;
    const/4 v6, 0x1

    new-array v5, v6, [I

    .line 400
    .local v5, "value":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v1

    if-lt v2, v6, :cond_0

    .line 410
    return-void

    .line 401
    :cond_0
    aget v0, v1, v2

    .line 402
    .local v0, "attribute":I
    aget-object v3, v4, v2

    .line 403
    .local v3, "name":Ljava/lang/String;
    invoke-interface {p1, p2, p3, v0, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 404
    # getter for: Lcom/sec/android/samsunganimation/glsurface/SAGLSurface;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface;->access$3()Ljava/lang/String;

    move-result-object v6

    const-string v7, "  %s: %d\n"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aget v10, v5, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 406
    :cond_1
    # getter for: Lcom/sec/android/samsunganimation/glsurface/SAGLSurface;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface;->access$3()Ljava/lang/String;

    move-result-object v6

    const-string v7, "  %s: failed\n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 328
    nop

    :array_0
    .array-data 4
        0x3020
        0x3021
        0x3022
        0x3023
        0x3024
        0x3025
        0x3026
        0x3027
        0x3028
        0x3029
        0x302a
        0x302b
        0x302c
        0x302d
        0x302e
        0x302f
        0x3030
        0x3031
        0x3032
        0x3033
        0x3034
        0x3037
        0x3036
        0x3035
        0x3039
        0x303a
        0x303b
        0x303c
        0x303d
        0x303e
        0x303f
        0x3040
        0x3042
    .end array-data
.end method

.method private printConfigs(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 8
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "configs"    # [Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 319
    array-length v1, p3

    .line 320
    .local v1, "numConfigs":I
    # getter for: Lcom/sec/android/samsunganimation/glsurface/SAGLSurface;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface;->access$3()Ljava/lang/String;

    move-result-object v2

    const-string v3, "%d configurations"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 325
    return-void

    .line 322
    :cond_0
    # getter for: Lcom/sec/android/samsunganimation/glsurface/SAGLSurface;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface;->access$3()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Configuration %d:\n"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    aget-object v2, p3, v0

    invoke-direct {p0, p1, p2, v2}, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ConfigChooser;->printConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .prologue
    const/4 v4, 0x0

    .line 258
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 259
    .local v5, "num_config":[I
    sget-object v2, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ConfigChooser;->s_configAttribs2:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 261
    aget v4, v5, v4

    .line 263
    .local v4, "numConfigs":I
    if-gtz v4, :cond_0

    .line 264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 270
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    sget-object v2, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ConfigChooser;->s_configAttribs2:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 277
    invoke-virtual {p0, p1, p2, v3}, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 17
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "configs"    # [Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 281
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v16, v0

    const/4 v3, 0x0

    move v15, v3

    :goto_0
    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    .line 308
    const/4 v6, 0x0

    :goto_1
    return-object v6

    .line 281
    :cond_0
    aget-object v6, p3, v15

    .line 283
    .local v6, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v7, 0x3025

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 282
    invoke-direct/range {v3 .. v8}, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    .line 285
    .local v11, "d":I
    const/16 v7, 0x3026

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 284
    invoke-direct/range {v3 .. v8}, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v14

    .line 288
    .local v14, "s":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ConfigChooser;->mDepthSize:I

    if-lt v11, v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ConfigChooser;->mStencilSize:I

    if-ge v14, v3, :cond_2

    .line 281
    :cond_1
    add-int/lit8 v3, v15, 0x1

    move v15, v3

    goto :goto_0

    .line 293
    :cond_2
    const/16 v7, 0x3024

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 292
    invoke-direct/range {v3 .. v8}, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v13

    .line 295
    .local v13, "r":I
    const/16 v7, 0x3023

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 294
    invoke-direct/range {v3 .. v8}, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    .line 297
    .local v12, "g":I
    const/16 v7, 0x3022

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 296
    invoke-direct/range {v3 .. v8}, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    .line 299
    .local v10, "b":I
    const/16 v7, 0x3021

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 298
    invoke-direct/range {v3 .. v8}, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    .line 301
    .local v9, "a":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ConfigChooser;->mRedSize:I

    if-ne v13, v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ConfigChooser;->mGreenSize:I

    if-ne v12, v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ConfigChooser;->mBlueSize:I

    if-ne v10, v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ConfigChooser;->mAlphaSize:I

    if-ne v9, v3, :cond_1

    .line 302
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ConfigChooser;->mStencilSize:I

    if-ne v14, v3, :cond_1

    .line 303
    # getter for: Lcom/sec/android/samsunganimation/glsurface/SAGLSurface;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface;->access$3()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Final Choose Config]R:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", G:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", B:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", A:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v6}, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ConfigChooser;->printConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V

    goto/16 :goto_1
.end method
