package RCMS.util;

import java.util.ArrayList;
import java.util.List;

public class LoginUtils {
	private static List<String> acessLists = new ArrayList<String>();
	static {
		acessLists.add("messageServlet");
		acessLists.add("bookServlet");
		acessLists.add("cartServlet");
		//acessLists.add("mianServlet");
		acessLists.add("tradeServlet");
		acessLists.add("uploadServlet");
		acessLists.add("userServlet");
	}

	public static List<String> getAcessLists() {
		return acessLists;
	}
}
