QT += core
QT -= gui

CONFIG += c++11

TARGET = MobileFaceNet
CONFIG += console
CONFIG -= app_bundle

TEMPLATE = app

SOURCES += main.cpp \
    src/layer/absval.cpp \
    src/layer/argmax.cpp \
    src/layer/batchnorm.cpp \
    src/layer/bias.cpp \
    src/layer/binaryop.cpp \
    src/layer/bnll.cpp \
    src/layer/clip.cpp \
    src/layer/concat.cpp \
    src/layer/convolution.cpp \
    src/layer/convolutiondepthwise.cpp \
    src/layer/crop.cpp \
    src/layer/deconvolution.cpp \
    src/layer/deconvolutiondepthwise.cpp \
    src/layer/detectionoutput.cpp \
    src/layer/dropout.cpp \
    src/layer/eltwise.cpp \
    src/layer/elu.cpp \
    src/layer/embed.cpp \
    src/layer/exp.cpp \
    src/layer/expanddims.cpp \
    src/layer/flatten.cpp \
    src/layer/innerproduct.cpp \
    src/layer/input.cpp \
    src/layer/instancenorm.cpp \
    src/layer/interp.cpp \
    src/layer/log.cpp \
    src/layer/lrn.cpp \
    src/layer/lstm.cpp \
    src/layer/memorydata.cpp \
    src/layer/mvn.cpp \
    src/layer/normalize.cpp \
    src/layer/padding.cpp \
    src/layer/permute.cpp \
    src/layer/pooling.cpp \
    src/layer/power.cpp \
    src/layer/prelu.cpp \
    src/layer/priorbox.cpp \
    src/layer/proposal.cpp \
    src/layer/reduction.cpp \
    src/layer/relu.cpp \
    src/layer/reorg.cpp \
    src/layer/reshape.cpp \
    src/layer/rnn.cpp \
    src/layer/roipooling.cpp \
    src/layer/scale.cpp \
    src/layer/shufflechannel.cpp \
    src/layer/sigmoid.cpp \
    src/layer/slice.cpp \
    src/layer/softmax.cpp \
    src/layer/split.cpp \
    src/layer/spp.cpp \
    src/layer/squeeze.cpp \
    src/layer/tanh.cpp \
    src/layer/threshold.cpp \
    src/layer/tile.cpp \
    src/layer/unaryop.cpp \
    src/layer/yolodetectionoutput.cpp \
    src/allocator.cpp \
    src/benchmark.cpp \
    src/blob.cpp \
    src/cpu.cpp \
    src/layer.cpp \
    src/mat.cpp \
    src/mat_pixel.cpp \
    src/modelbin.cpp \
    src/net.cpp \
    src/opencv.cpp \
    src/paramdict.cpp \
    src/layer/arm/absval_arm.cpp \
    src/layer/arm/batchnorm_arm.cpp \
    src/layer/arm/bias_arm.cpp \
    src/layer/arm/convolution_arm.cpp \
    src/layer/arm/convolutiondepthwise_arm.cpp \
    src/layer/arm/deconvolution_arm.cpp \
    src/layer/arm/deconvolutiondepthwise_arm.cpp \
    src/layer/arm/eltwise_arm.cpp \
    src/layer/arm/innerproduct_arm.cpp \
    src/layer/arm/lrn_arm.cpp \
    src/layer/arm/pooling_arm.cpp \
    src/layer/arm/prelu_arm.cpp \
    src/layer/arm/relu_arm.cpp \
    src/layer/arm/scale_arm.cpp \
    src/layer/arm/sigmoid_arm.cpp \
    src/layer/arm/softmax_arm.cpp

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

INCLUDEPATH += /usr/local/opencv-2.4.13 \
                /usr/local/opencv-2.4.13/include/opencv \
                /usr/local/opencv-2.4.13/include/opencv2

LIBS += /usr/local/opencv-2.4.13/lib/libopencv_*

INCLUDEPATH += src \
                src/layer

HEADERS += \
    src/layer/absval.h \
    src/layer/argmax.h \
    src/layer/batchnorm.h \
    src/layer/bias.h \
    src/layer/binaryop.h \
    src/layer/bnll.h \
    src/layer/clip.h \
    src/layer/concat.h \
    src/layer/convolution.h \
    src/layer/convolutiondepthwise.h \
    src/layer/crop.h \
    src/layer/deconvolution.h \
    src/layer/deconvolutiondepthwise.h \
    src/layer/detectionoutput.h \
    src/layer/dropout.h \
    src/layer/eltwise.h \
    src/layer/elu.h \
    src/layer/embed.h \
    src/layer/exp.h \
    src/layer/expanddims.h \
    src/layer/flatten.h \
    src/layer/innerproduct.h \
    src/layer/input.h \
    src/layer/instancenorm.h \
    src/layer/interp.h \
    src/layer/log.h \
    src/layer/lrn.h \
    src/layer/lstm.h \
    src/layer/memorydata.h \
    src/layer/mvn.h \
    src/layer/normalize.h \
    src/layer/padding.h \
    src/layer/permute.h \
    src/layer/pooling.h \
    src/layer/power.h \
    src/layer/prelu.h \
    src/layer/priorbox.h \
    src/layer/proposal.h \
    src/layer/reduction.h \
    src/layer/relu.h \
    src/layer/reorg.h \
    src/layer/reshape.h \
    src/layer/rnn.h \
    src/layer/roipooling.h \
    src/layer/scale.h \
    src/layer/shufflechannel.h \
    src/layer/sigmoid.h \
    src/layer/slice.h \
    src/layer/softmax.h \
    src/layer/split.h \
    src/layer/spp.h \
    src/layer/squeeze.h \
    src/layer/tanh.h \
    src/layer/threshold.h \
    src/layer/tile.h \
    src/layer/unaryop.h \
    src/layer/yolodetectionoutput.h \
    src/allocator.h \
    src/benchmark.h \
    src/blob.h \
    src/cpu.h \
    src/layer.h \
    src/layer_declaration.h \
    src/layer_registry.h \
    src/layer_type.h \
    src/layer_type_enum.h \
    src/mat.h \
    src/modelbin.h \
    src/net.h \
    src/opencv.h \
    src/paramdict.h \
    src/platform.h \
    src/layer/arm/absval_arm.h \
    src/layer/arm/batchnorm_arm.h \
    src/layer/arm/bias_arm.h \
    src/layer/arm/convolution_1x1.h \
    src/layer/arm/convolution_2x2.h \
    src/layer/arm/convolution_3x3.h \
    src/layer/arm/convolution_4x4.h \
    src/layer/arm/convolution_5x5.h \
    src/layer/arm/convolution_7x7.h \
    src/layer/arm/convolution_arm.h \
    src/layer/arm/convolutiondepthwise_3x3.h \
    src/layer/arm/convolutiondepthwise_arm.h \
    src/layer/arm/deconvolution_3x3.h \
    src/layer/arm/deconvolution_4x4.h \
    src/layer/arm/deconvolution_arm.h \
    src/layer/arm/deconvolutiondepthwise_arm.h \
    src/layer/arm/eltwise_arm.h \
    src/layer/arm/innerproduct_arm.h \
    src/layer/arm/lrn_arm.h \
    src/layer/arm/neon_mathfun.h \
    src/layer/arm/pooling_2x2.h \
    src/layer/arm/pooling_3x3.h \
    src/layer/arm/pooling_arm.h \
    src/layer/arm/prelu_arm.h \
    src/layer/arm/relu_arm.h \
    src/layer/arm/scale_arm.h \
    src/layer/arm/sigmoid_arm.h \
    src/layer/arm/softmax_arm.h



