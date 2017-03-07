# LYSVerticalAlignedLabel
可以在垂直方向上设置顶部，中间，底部排列的UILabel

#属性
@property(nonatomic,assign)VerticalAlignDirection alignDirection;

#枚举
typedef NS_ENUM(NSUInteger,VerticalAlignDirection){
    Top,// 顶部排列
    Center,// 中间排列
    Bottom // 底部排列
};
