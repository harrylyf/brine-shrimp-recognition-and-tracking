# Brine Shrimp Recognition and Tracking using Yolo-v3

Project for Miller Lab at UNC-CH
Yufan Liu

## Usage

```
git clone https://github.com/harrylyf/brine-shrimp-recognition-and-tracking
cd brine-shrimp-recognition-and-tracking
cd darknet
make

```

- Detection

```
./darknet detect {cfg file} {model file(.weights)} {image_pwd} {-thresh 0.8}(optional)
```

Example:

```
./darknet detect data/yolov3.cfg yolov3_obj_400.weights test_img/2.jpg -thresh 0.8
```

