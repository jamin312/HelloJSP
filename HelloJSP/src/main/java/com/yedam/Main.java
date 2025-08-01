package com.yedam;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

interface Controller {
	public void exe();
}

class Sample implements Controller {
	@Override
	public void exe() {
		System.out.println("Sample 클래스");
	}
}

public class Main {
	public static void main(String[] args) {
		ArrayList<Book> list = new ArrayList<>();
		Book book = list.get(0);

		// <키,값>
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("홍길동", 80);
		map.put("박길동", 78);

		Integer result = map.get("홍길동"); // value 반환
		System.out.println(result);

		Map<String, Controller> controls = new HashMap<>();
		controls.put("abc.do", new Sample()); // 인스턴스
		controls.put("ddc.do", new Controller() {
			@Override
			public void exe() {
				System.out.println("Test입니다");
			}
		});

		Controller val = controls.get("Test");
		val.exe();

	} // end main
} // end Main