#include <NetworkManager.h>
#include <csignal>
#include <iostream>
#include <opencv2/opencv.hpp>

bool reg = 0;

void error_handle(int error_id, std::string message);

Net::NetworkManager net("127.0.0.1", "test", 25562, 25564, error_handle);

void sigint_handler(int sig) { exit(1); }

void  drawline(cv::Mat a,const cv::RotatedRect &rotatedrect)
{
    cv::Point2f p[4];
    rotatedrect.points(p);
    for(int i=0;i<4;i++)
    {
        line(a,p[i],p[(i+1)%4],cv::Scalar(0,255,255),4,8,0);
    }

}
float compare(float a,float b,int c)
{
    if(a>=b&&c==1)return a;
    if(a>=b&&c==0)return b;
    if(a<b&&c==1)return b;
    if(a<b&&c==0)return a;
}

std::vector<cv::RotatedRect> searching(cv::Mat img,cv::Mat aft)
{
    std::vector<cv::RotatedRect> recs;
    std::vector<std::vector<cv::Point>> contours;
    std::vector<cv::Point> contour;
    cv::RotatedRect rec;
    cv::threshold(aft, aft, 100, 255, cv::THRESH_BINARY);
    cv::Mat element = cv::getStructuringElement(cv::MORPH_ELLIPSE, cv::Size(3, 3));
    cv::dilate(aft,aft,element,cv::Point(-1,-1),3);
    cv::findContours(aft, contours, cv::RETR_EXTERNAL, cv::CHAIN_APPROX_SIMPLE);
    for (int i = 0; i < contours.size(); i++)
        {
            contour = contours.at(i);
            if (cv::arcLength(contour, true) < 10 || cv::arcLength(contour, true) > 500)continue;
            rec = cv::minAreaRect(contour);
            if((compare(rec.size.height,rec.size.width,0)/compare(rec.size.height,rec.size.width,1))>0.8)continue;
            if(rec.size.area()/cv::contourArea(contour)<1.5)continue;
            drawline(img, rec);
            recs.push_back(rec);
        }
    return recs;
}


int main() {
    signal(SIGINT, sigint_handler);
    reg = net.registerUser(0);
    while (!reg) {
        std::cout << "Register failed, retrying..." << std::endl;
        reg = net.registerUser(0);
    }
    std::cout << "Register success" << std::endl;
    float yaw =10;
    float pitch = -12;
    int n;
    net.sendControlMessage(Net::SendStruct(yaw, pitch, 0, 20.0, 0, 0.0, 0.0, -1, -1));
    while (true) {
        while (!reg) {
            std::cout << "Register failed, retrying..." << std::endl;
            reg = net.registerUser(0);
        }
        cv::Mat img;
        cv::Mat aft;
        std::vector<cv::Mat> channels;
        img = net.getNewestRecvMessage().img;
        if (!img.empty()) {
            cv::split(img, channels);
            aft = channels.at(2) - channels.at(1);
            std::vector<cv::RotatedRect> recs(searching(img,aft));
            for(int i=0;i<recs.size();i++)
            {
                drawline(img, recs.at(i));
            }
            int y=img.rows;
            int x=img.cols;
            cv::imshow("aft", aft);
            cv::imshow("img", img);
            cv::waitKey(100);
        } 
        else {
            std::cout << "Get an empty image" << std::endl;
            cv::waitKey(100);
        }
        /*
        Code Here! Just define yaw ,pitch ,beat ... which in SendStruct's elements  and will be sent to us. 
        */
    }
    return 0;
}

void error_handle(int error_id, std::string message) {
    if (error_id == 1) {
        reg = 0;
    }
    std::cout << "Error: " << error_id << " " << message << std::endl;
 }