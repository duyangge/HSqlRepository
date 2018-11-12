package web.Intermediate;

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
