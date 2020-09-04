# ! 编译前记得先 source /opt/fsl-imx-xwayland/5.4-zeus/environment-setup-aarch64-poky-linux
ARMNN_LIB = ${HOME}/Repo/armnn-sdk/arm64/lib
ARMNN_INC = ${HOME}/Repo/armnn-sdk/arm64/include

all: mnist_caffe mnist_tf

mnist_caffe: mnist_caffe.cpp mnist_loader.hpp
	# g++ -O3 -std=c++14 -I$(ARMNN_INC) mnist_caffe.cpp -o mnist_caffe -L$(ARMNN_LIB) -larmnn -larmnnCaffeParser
	${CXX} -O3 -std=c++14 -I$(ARMNN_INC) mnist_caffe.cpp -o mnist_caffe -L$(ARMNN_LIB) -larmnn -larmnnCaffeParser -lprotobuf

mnist_tf: mnist_tf.cpp mnist_loader.hpp
	# g++ -O3 -std=c++14 -I$(ARMNN_INC) mnist_tf.cpp -o mnist_tf -L$(ARMNN_LIB) -larmnn -larmnnTfParser -lpthread
	${CXX} -O3 -std=c++14 -I$(ARMNN_INC) mnist_tf.cpp -o mnist_tf -L$(ARMNN_LIB) -larmnn -larmnnTfParser -lpthread -lprotobuf

clean:
	-rm -f mnist_tf mnist_caffe

test: mnist_caffe mnist_tf
	LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:$(ARMNN_LIB) ./mnist_caffe
	LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:$(ARMNN_LIB) ./mnist_tf
