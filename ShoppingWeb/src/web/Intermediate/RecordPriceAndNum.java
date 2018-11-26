package web.Intermediate;

/**
 * @author 黄信胜
 * @date 2018年11月20日下午8:39:56
 * @version 版本号
 */
public class RecordPriceAndNum {
		private static Double SumPrice=0.00;
		private static Integer SumNum=0;
		public static Double getSumPrice() {
			return SumPrice;
		}
		public static void setSumPrice(Double sumPrice) {
			SumPrice = sumPrice;
		}
		public static Integer getSumNum() {
			return SumNum;
		}
		public static void setSumNum(Integer sumNum) {
			SumNum = sumNum;
		}
}
