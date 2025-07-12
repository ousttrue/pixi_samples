https://pixi.sh/dev/tutorials/ros2/

- [Build a C++ node](https://pixi.sh/dev/tutorials/ros2/#build-a-c-node)

- [ROS2プログラミング入門 #2 Hello world](https://zenn.dev/uchidaryo/articles/ros2-programming-2)

- https://github.com/ms-iot/ROSOnWindows/issues/310

MSVC で Debug ビルドすると実行時にクラッシュする。
`--cmake-args -DCMAKE_BUILD_TYPE=RelWithDebInfo` するべし。

pixi は rdep を代替するものらしい。
pixi が colcon を呼ぶ。
