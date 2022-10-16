# Code Anatomy

## XML 

The hash tree is one element of xml storage. The component and layout should be considered together. The panel is used to group the component elements. 使用单例模式，测试配置属性与界面组件配套，类和实例组成映射关系，从测试元素中提取测试类和界面类，测试节点元素中拿到测试元素和面板元素，面板元素是整体用户界面的组成部分。从缓存中拿到界面组件元素，

## RPC

The node RPC server is started in one method. The RPC environment is configured before starting RPC server. The rpc configuration is prepared for rpc server settings. The routes are registered into http server mux. The node also starts the grpc server if it is enabled in the configuration file.

