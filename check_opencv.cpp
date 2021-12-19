#include <iostream>
#include <opencv2/opencv.hpp>
#include <cmath>
#include <chrono>
#include <fstream>
#include <vector>


int main(int argc, char **argv) {
    using namespace cv;
    
    cv::String model = "../fdy.onnx";
    dnn::Net net = dnn::readNetFromONNX(model);
    return 0;
}
