#include <stdio.h>
#include <algorithm>
#include <vector>
#include <time.h>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>

#include <QDebug>
#include <QFileInfo>
#include <QDir>
#include <QString>
#include <QStringList>
#include <QTime>

#include "src/net.h"

static int detect_squeezenet(ncnn::Extractor ex, const cv::Mat& src)
{
    ncnn::Mat input = ncnn::Mat::from_pixels_resize(src.data, ncnn::Mat::PIXEL_BGR, src.cols, src.rows, 112, 112);
    ncnn::Mat out;
    ex.input("data", input);
    ex.extract("fc1", out);

    for (int i = 0; i < 128; i++) {
        printf("%.4f  ", ((float*)out.data)[i]);
        if ((i+1) % 6 == 0)
            printf("\n");
    }
    printf("\n");
    return 0;
}

int main()
{
    // load Model
    ncnn::Net MobileFaceNet;
    MobileFaceNet.load_param("src/mobilefacenet.param");
    MobileFaceNet.load_model("src/mobilefacenet.bin");



    ncnn::Mat in;
    ncnn::Mat out;

    // load imgs
    QString filePath = QString("/home/zhangwenqing/hannibal/zju/FaceVerification/data/lfw-112X96");
    QDir dir(filePath);
    dir.setFilter(QDir::NoDotAndDotDot | QDir::AllDirs);
    QFileInfoList list = dir.entryInfoList();

    QTime timer1,timer2,timer3;
    timer1.start();

    int sum1 = 0;
    int sum2 = 0;

    int nFrames = 0;
    int cnt = list.size();
    for (int i = 0; i < 20; i++) {
        QFileInfoList list_image;

        QDir dir_img(list.at(i).absoluteFilePath());
        dir_img.setFilter(QDir::NoDotAndDotDot | QDir::Files);
        list_image = dir_img.entryInfoList();


        int cnt_img = list_image.size();

        for (int j = 0; j < cnt_img; j++) {
            cv::Mat input = cv::imread(list_image.at(j).absoluteFilePath().toStdString(), CV_LOAD_IMAGE_COLOR);

            in = ncnn::Mat::from_pixels_resize(input.data, ncnn::Mat::PIXEL_BGR, input.cols, input.rows, 112, 112);

            timer2.start();
            ncnn::Extractor ex = MobileFaceNet.create_extractor();
            ex.set_light_mode(true);
            sum1 += timer2.elapsed();

            timer3.start();
            ex.input("data", in);
            ex.extract("fc1", out);
            sum2 += timer3.elapsed();


//            if (i % 3 == 0) {
//                for (int i = 0; i < 128; i++) {
//                    printf("%.4f  ", ((float*)out.data)[i]);
//                    if ((i+1) % 6 == 0)
//                        printf("\n");
//                }
//                printf("\n");
//            }

            // qDebug() << list_image.at(j).absoluteFilePath().toStdString().c_str();
            nFrames++;
        }
    }

    float total_time = timer1.elapsed();
    printf("Total:%d\n", nFrames);
    printf("TotalTime1:%f\n", sum1/1000.0);
    printf("TotalTime2:%f\n", sum2/1000.0);
    printf("FPS:%f\n", nFrames / (total_time/1000.0));

//    cv::Mat input = cv::imread("src/img3.jpg");
//    if (input.empty()) {
//        printf("fail to load image\n");
//        exit(1);
//    }

//    detect_squeezenet(ex, input);

    MobileFaceNet.clear();
    return 0;
}
